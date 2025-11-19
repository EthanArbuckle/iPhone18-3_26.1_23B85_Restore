uint64_t VoiceQueryCriteria.hashValue.getter()
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)();
  return sub_1A957D548();
}

uint64_t VoiceQueryCriteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v31 - v7;
  v34 = sub_1A937829C(&qword_1EB387218, &qword_1A958BF38);
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v34, v11);
  v13 = &v31 - v12;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v15 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  sub_1A93780F4(a1, v19);
  sub_1A942C2EC();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(v35);
  }

  v32 = v8;
  v21 = v18;
  v22 = v33;
  v36 = 0;
  sub_1A942C430();
  v23 = v34;
  sub_1A957D238();
  *v21 = v37;
  v36 = 1;
  sub_1A957D238();
  v21[1] = v37;
  sub_1A957B308();
  LOBYTE(v37) = 2;
  sub_1A942C3E8(&qword_1EB386360, MEMORY[0x1E6969770]);
  v24 = v32;
  sub_1A957D1B8();
  sub_1A93A7460(v24, v21 + *(Criteria + 24), &qword_1EB386988, &qword_1A9587830);
  LOBYTE(v37) = 3;
  v25 = sub_1A957D198();
  v32 = v26;
  v27 = v25;
  (*(v9 + 8))(v13, v23);
  v28 = (v21 + *(Criteria + 28));
  v29 = v32;
  *v28 = v27;
  v28[1] = v29;
  sub_1A9390AA4(v21, v22);
  sub_1A9378138(v35);
  return sub_1A9391040(v21);
}

uint64_t sub_1A94147F0()
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)();
  return sub_1A957D548();
}

uint64_t sub_1A9414834()
{
  sub_1A957D4F8();
  VoiceQueryCriteria.hash(into:)();
  return sub_1A957D548();
}

uint64_t VoiceSource.voicesStream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v22 = a2;
  v24 = a3;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = Criteria - 8;
  v5 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v21 - v13;
  v15 = *(v4 + 32);
  v16 = sub_1A957B308();
  (*(*(v16 - 8) + 56))(&v8[v15], 1, 1, v16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v17 = v27;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A957CE08();
  v18 = v26;
  *v8 = v17;
  *(v8 + 1) = v18;
  v19 = &v8[*(v4 + 36)];
  *v19 = 0;
  *(v19 + 1) = 0;
  (*(v22 + 40))(v8, v23);
  sub_1A9391040(v8);
  sub_1A937829C(&qword_1EB387228, &qword_1A958BF50);
  sub_1A957B958();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1A9414B30(uint64_t a1, void *a2)
{
  *(v2 + 576) = a1;
  *(v2 + 584) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A9414B58, 0, 0);
}

unint64_t sub_1A9414B58()
{
  v1 = *(v0 + 584);
  result = sub_1A93EE428(MEMORY[0x1E69E7CC0]);
  v3 = result;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (*(v0 + 584) + 32);
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      memcpy((v0 + 16), v6, 0x118uLL);
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);
      v11 = sub_1A957C1A8();
      v13 = v12;
      sub_1A937B3DC(v0 + 16, v0 + 296);
      sub_1A937B3DC(v0 + 16, v0 + 296);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1A937A490(v11, v13);
      v16 = v3[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v3[3] < v19)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v25 = result;
      sub_1A93ED3EC();
      result = v25;
      if (v20)
      {
LABEL_3:
        v7 = result;

        v8 = (v3[7] + 280 * v7);
        memcpy((v0 + 296), v8, 0x118uLL);
        memcpy(v8, (v0 + 16), 0x118uLL);
        sub_1A937B48C(v0 + 296);
        result = sub_1A937B48C(v0 + 16);
        goto LABEL_4;
      }

LABEL_12:
      v3[(result >> 6) + 8] |= 1 << result;
      v22 = (v3[6] + 16 * result);
      *v22 = v11;
      v22[1] = v13;
      memcpy((v3[7] + 280 * result), (v0 + 16), 0x118uLL);
      result = sub_1A937B48C(v0 + 16);
      v23 = v3[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v3[2] = v24;
LABEL_4:
      ++v5;
      v6 += 280;
      if (v4 == v5)
      {
        goto LABEL_16;
      }
    }

    sub_1A93EBE70(v19, isUniquelyReferenced_nonNull_native);
    result = sub_1A937A490(v11, v13);
    if ((v20 & 1) != (v21 & 1))
    {

      return sub_1A957D438();
    }

LABEL_11:
    if (v20)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_16:
  **(v0 + 576) = v3;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t VoiceSource.voices.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387230, &qword_1A958BF58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  VoiceSource.voicesStream.getter(a1, a2, &v11 - v8);
  sub_1A957B948();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1A9414EE0()
{
  v0 = type metadata accessor for VoiceResolver(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = VoiceResolver.init()();
  qword_1EB390CF8 = result;
  return result;
}

uint64_t VoiceResolver.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return VoiceResolver.init()();
}

uint64_t static VoiceResolver.shared.getter()
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceResolver.shared.setter(uint64_t a1)
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = a1;
}

uint64_t (*static VoiceResolver.shared.modify())()
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A94151E4@<X0>(void *a1@<X8>)
{
  if (qword_1EB390CF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB390CF8;
}

uint64_t sub_1A9415264(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB390CF0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB390CF8 = v1;
}

unint64_t VoiceResolver.sortMode.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = v2;
  return sub_1A942C5FC(v2);
}

uint64_t sub_1A941531C()
{
  v1 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v15 - v5;
  v7 = sub_1A937829C(&qword_1EB387240, &qword_1A958BF68);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v15 - v12;
  (*(*v0 + 328))(v11);
  sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
  sub_1A957B958();
  (*(v2 + 8))(v6, v1);
  sub_1A957B948();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1A9415514(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A9415538, 0, 0);
}

uint64_t sub_1A9415538()
{
  **(v0 + 16) = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94155A4()
{
  v1 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v9 - v6;
  (*(*v0 + 336))(v5);
  sub_1A957B948();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1A94156BC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
  v8 = sub_1A957C5A8();
  v2[15] = v8;
  v2[16] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A9415820, v8, v7);
}

uint64_t sub_1A9415820()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v0[17] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A9391BAC(v2 + v3, v1, &qword_1EB386988, &qword_1A9587830);
  v4 = sub_1A957B308();
  v0[18] = v4;
  v5 = *(v4 - 8);
  v0[19] = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[14];
  if (v6 == 1)
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = sub_1A937B960(v0[14], &qword_1EB386988, &qword_1A9587830);
    (*(*v9 + 336))(v10);
    v11 = *(MEMORY[0x1E6988278] + 4);
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_1A9415A40;
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[8];

    return MEMORY[0x1EEDE9B80](v15, v14);
  }

  else
  {
    (*(v5 + 32))(v0[8], v0[14], v4);
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A9415A40()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 128);
  v7 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A9415BC4, v7, v6);
}

uint64_t sub_1A9415BC4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[9];
  (*(v2 + 16))(v4, v0[8], v1);
  (*(v2 + 56))(v4, 0, 1, v1);
  swift_beginAccess();
  sub_1A942C62C(v4, v5 + v3);
  swift_endAccess();
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A9415E34(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A957B308();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v2[6] = _Block_copy(a1);

  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1A9415F54;

  return sub_1A94156BC(v7);
}

uint64_t sub_1A9415F54()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v10 = *v0;

  v7 = sub_1A957B1D8();
  (*(v4 + 8))(v3, v5);
  (v2)[2](v2, v7);

  _Block_release(v2);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1A941610C()
{
  v1[4] = v0;
  v2 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
  v6 = sub_1A957C5A8();
  v1[8] = v6;
  v1[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A941622C, v6, v5);
}

uint64_t sub_1A941622C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v0[10] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v3 = (v1 + v2);
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
    v6 = *v3;

    v8 = sub_1A94165A8(v7, v4);
    v9 = v0[7];

    v10 = v0[1];

    return v10(v8);
  }

  else
  {
    v12 = v0[7];
    (*(*v1 + 328))();
    v13 = *(MEMORY[0x1E6988278] + 4);
    v14 = swift_task_alloc();
    v0[11] = v14;
    *v14 = v0;
    v14[1] = sub_1A9416374;
    v15 = v0[7];
    v16 = v0[5];

    return MEMORY[0x1EEDE9B80](v0 + 2, v16);
  }
}

uint64_t sub_1A9416374()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 72);
  v7 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A94164F8, v7, v6);
}

uint64_t sub_1A94164F8()
{
  v1 = v0[3];
  v2 = (v0[4] + v0[10]);
  v3 = v0[2];
  v4 = *v2;
  v5 = v2[1];
  *v2 = v3;
  v2[1] = v1;

  sub_1A942C69C(v4);
  v6 = sub_1A94165A8(v1, v3);
  v7 = v0[7];

  v8 = v0[1];

  return v8(v6);
}

uint64_t sub_1A94165A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v29 - v17;
  v19 = 0;
  v30 = a1;
  v31 = a2;
  v22 = *(a1 + 56);
  v21 = a1 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v29[2] = v5 + 32;
  v29[3] = v5 + 16;
  v29[1] = v5 + 8;
  if ((v24 & v20) != 0)
  {
    do
    {
      v27 = v19;
LABEL_9:
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      (*(v5 + 16))(v18, *(v30 + 48) + *(v5 + 72) * (v28 | (v27 << 6)), v4);
      (*(v5 + 32))(v10, v18, v4);
      sub_1A94265A0(v14, v10);
      result = (*(v5 + 8))(v14, v4);
    }

    while (v25);
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return v31;
    }

    v25 = *(v21 + 8 * v27);
    ++v19;
    if (v25)
    {
      v19 = v27;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94167C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v23 - v13;
  v15 = *(v3 + 16);
  v16 = sub_1A957C688();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v3;
  sub_1A9391BAC(v14, v11, &qword_1EB388000, &qword_1A9587710);
  v19 = (*(v17 + 48))(v11, 1, v16);

  if (v19 == 1)
  {
    sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v17 + 8))(v11, v16);
  }

  v20 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1A958BFA8;
  *(v21 + 24) = v18;
  v23[0] = 6;
  v23[1] = 0;
  v23[2] = v15;
  v23[3] = v20;

  swift_task_create();
  sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A9416A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *(*a4 + 248);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1A9416BA4;

  return v9();
}

uint64_t sub_1A9416BA4(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9416CA4, 0, 0);
}

uint64_t sub_1A9416CA4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A9416EC4()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9416FD4;

  return v6();
}

uint64_t sub_1A9416FD4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A94170D4, 0, 0);
}

uint64_t sub_1A94170D4()
{
  v1 = sub_1A9417154(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A9417154(uint64_t a1)
{
  v38 = sub_1A957B308();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v7, 0);
    v41 = v42;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1A957CE18();
    v11 = result;
    v12 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v3;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v11, v38);
      v40 = sub_1A957B1A8();
      v18 = v17;
      result = (*(v3 + 8))(v15, v16);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1A93ABB68((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v34;
      v23 = *(v34 + 8 * v14);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        v3 = v33;
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1A932D0A4(v11, v39, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1A932D0A4(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v32)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A941745C()
{
  v2 = sub_1A957B308();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[4] = v5;
  v6 = *(*v0 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v1[5] = v8;
  *v8 = v1;
  v8[1] = sub_1A94175DC;

  return v10(v5);
}

uint64_t sub_1A94175DC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94176D8, 0, 0);
}

uint64_t sub_1A94176D8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A957B1A8();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_1A94178F4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v5 = sub_1A957B308();
  v2[3] = v5;
  v6 = *(v5 - 8);
  v2[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[5] = v8;
  v2[6] = _Block_copy(a1);
  v9 = *(*a2 + 200);

  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v2[7] = v11;
  *v11 = v2;
  v11[1] = sub_1A9417A94;

  return v13(v8);
}

uint64_t sub_1A9417A94()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9417B90, 0, 0);
}

uint64_t sub_1A9417B90()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_1A957B1A8();

  (*(v4 + 8))(v2, v3);
  v6 = sub_1A957C0C8();

  (v1)[2](v1, v6);

  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t VoiceResolver.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for VoiceDatabaseClient();
  v4 = sub_1A938983C();
  v13[3] = v3;
  v13[4] = &protocol witness table for VoiceDatabaseClient;
  v13[0] = VoiceDatabaseClient.__allocating_init(readOnly:)(v4 & 1);
  v12 = *sub_1A9493C84();
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9587160;
  *(v5 + 32) = *sub_1A9493D5C();
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v10 = 1;
  v11[0] = v11[1];
  v6 = (*(v2 + 344))(v13, &v12, v11, &v10);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 52);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1A9417ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_1A937829C(&qword_1EB3869A8, &qword_1A9587928);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941803C, 0, 0);
}

uint64_t sub_1A941803C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  sub_1A957BA68();
  sub_1A957C6F8();
  swift_beginAccess();
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1A941814C;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v8);
}

uint64_t sub_1A941814C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9418248, 0, 0);
}

uint64_t sub_1A9418248()
{
  if ((*(v0 + 160) & 1) != 0 || (v1 = *(v0 + 64), Strong = swift_weakLoadStrong(), (*(v0 + 136) = Strong) == 0))
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);
    v9 = *(v0 + 72);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    (*(v7 + 8))(v6, v8);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v3 = *Strong + 304;
    *(v0 + 144) = *v3;
    *(v0 + 152) = v3 & 0xFFFFFFFFFFFFLL | 0xA7B5000000000000;
    type metadata accessor for VoiceResolver(0);
    sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
    v5 = sub_1A957C5A8();

    return MEMORY[0x1EEE6DFA0](sub_1A94183DC, v5, v4);
  }
}

uint64_t sub_1A94183DC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 72);
  (*(v0 + 144))();
  v4 = sub_1A957B308();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A942C62C(v3, v2 + v5);
  swift_endAccess();
  v6 = (v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales);
  v7 = *(v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales);
  v8 = *(v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_1A942C69C(v7);
  (*(*v2 + 400))(MEMORY[0x1E69E7CC8]);

  return MEMORY[0x1EEE6DFA0](sub_1A941851C, 0, 0);
}

uint64_t sub_1A941851C()
{
  v1 = v0[17];

  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1A941814C;
  v4 = v0[12];
  v5 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v5);
}

uint64_t sub_1A94185CC()
{
  v1 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v9 - v4;
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  swift_beginAccess();
  sub_1A942C62C(v5, v0 + v7);
  return swift_endAccess();
}

uint64_t VoiceResolver.__allocating_init(voiceSource:requiredTraits:sortMode:)(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *a3;
  sub_1A9379534(a1, v13);
  v12 = v6;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v10 = v7;
  v11[0] = v11[1];
  v8 = (*(v4 + 344))(v13, &v12, v11, &v10);
  sub_1A9378138(a1);
  return v8;
}

uint64_t sub_1A94187CC()
{
  v1[4] = v0;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v1[5] = Criteria;
  v3 = *(*(Criteria - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94188C8, 0, 0);
}

uint64_t sub_1A94188C8()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v4[3].i64[0];
  v6 = v4[3].i64[1];
  sub_1A93780F4(&v4[1].i64[1], v5);
  v7 = *(v3 + 24);
  v8 = sub_1A957B308();
  (*(*(v8 - 8) + 56))(&v2->i8[v7], 1, 1, v8);
  *v2 = vextq_s8(v4[4], v4[4], 8uLL);
  v9 = (v2->i64 + *(v3 + 28));
  *v9 = 0;
  v9[1] = 0;
  (*(v6 + 32))(v2, v5, v6);
  sub_1A9391040(v2);
  v10 = *(MEMORY[0x1E6988278] + 4);
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1A9418A2C;
  v12 = v0[9];
  v13 = v0[7];

  return MEMORY[0x1EEDE9B80](v0 + 2, v13);
}

uint64_t sub_1A9418A2C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A9418B84, 0, 0);
}

uint64_t sub_1A9418B84()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_1A9418C04()
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v2 = Criteria - 8;
  v3 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[3].i64[0];
  v8 = v0[3].i64[1];
  sub_1A93780F4(&v0[1].i64[1], v7);
  v9 = *(v2 + 32);
  v10 = sub_1A957B308();
  (*(*(v10 - 8) + 56))(&v6->i8[v9], 1, 1, v10);
  *v6 = vextq_s8(v0[4], v0[4], 8uLL);
  v11 = (v6->i64 + *(v2 + 36));
  *v11 = 0;
  v11[1] = 0;
  (*(v8 + 32))(v6, v7, v8);
  return sub_1A9391040(v6);
}

uint64_t sub_1A9418D28()
{
  v1 = *v0;
  v2 = sub_1A937829C(&qword_1EB387238, &qword_1A958BF60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v11 - v7;
  (*(v1 + 328))(v6);
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v1;
  sub_1A957B308();

  sub_1A957B958();

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1A9418EA0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 56) = a1;
  v6 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9418F4C, 0, 0);
}

uint64_t sub_1A9418F4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v7 = sub_1A94165A8(v6, v2);
  v0[5] = sub_1A937829C(&qword_1EB386EA0, qword_1A9589F08);
  v8 = sub_1A93B744C(&qword_1ED96FEA0, &qword_1EB386EA0, qword_1A9589F08);
  v0[2] = v7;
  v0[6] = v8;
  v9 = v5[6];
  v10 = v5[7];
  sub_1A93780F4(v5 + 3, v9);
  v11 = (*(v10 + 16))(v9, v10);
  sub_1A9419174(v0 + 2, v5 + 3, v11, v3);

  sub_1A9378138(v0 + 2);
  v12 = sub_1A957B308();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  v15 = v14(v3, 1, v12);
  v16 = v0[10];
  if (v15 == 1)
  {
    v17 = v0[7];
    sub_1A957B1B8();
    if (v14(v16, 1, v12) != 1)
    {
      sub_1A937B960(v0[10], &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    (*(v13 + 32))(v0[7], v0[10], v12);
  }

  v18 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A9419174@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = sub_1A957B2E8();
  v103 = *(v98 - 8);
  v10 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v98, v11);
  v97 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v96 = &v85 - v16;
  v17 = sub_1A957B308();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v91 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v92 = &v85 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v94 = &v85 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v85 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  v100 = (&v85 - v34);
  v36 = a1[3];
  v35 = a1[4];
  v37 = sub_1A93780F4(a1, v36);
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37, v37);
  (*(v40 + 16))(&v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v35 + 8);
  v42 = sub_1A957C3F8();
  if (!v42[2])
  {
    (*(v18 + 56))(a4, 1, 1, v17);
  }

  v87 = 0;
  v88 = v5;
  v93 = a3;
  v89 = a4;
  v43 = a2[3];
  v44 = a2[4];
  sub_1A93780F4(a2, v43);
  v45 = (*(v44 + 8))(v43, v44);
  v46 = *(v45 + 16);
  v90 = v42;
  if (v46)
  {
    v105 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v46, 0);
    v47 = v105;
    v104 = v45;
    v48 = (v45 + 40);
    do
    {
      v49 = *(v48 - 1);
      v50 = *v48;

      sub_1A957B1B8();
      v105 = v47;
      v52 = v47[2];
      v51 = v47[3];
      if (v52 >= v51 >> 1)
      {
        sub_1A93ABB88(v51 > 1, v52 + 1, 1);
        v47 = v105;
      }

      v47[2] = v52 + 1;
      (*(v18 + 32))(v47 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v52, v32, v17);
      v48 += 2;
      --v46;
    }

    while (v46);

    v42 = v90;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v106[0] = v47;
  v53 = v47[2];
  v99 = v18;
  v54 = v100;
  v95 = v53;
  if (v53)
  {
    v86 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v55 = v47 + v86;
    v56 = (v103 + 8);
    v103 = v18 + 8;
    v104 = v18 + 16;

    v57 = 0;
    while (v57 < v47[2])
    {
      v102 = *(v18 + 72);
      v101 = *(v18 + 16);
      v101(v54, &v55[v102 * v57], v17);
      v58 = v97;
      sub_1A957B2F8();
      v59 = v96;
      sub_1A957B2B8();
      (*v56)(v58, v98);
      v46 = sub_1A957B188();
      v60 = v17;
      v61 = *(v46 - 1);
      if ((*(v61 + 48))(v59, 1, v46) == 1)
      {
        (*v103)(v54, v60);
        sub_1A937B960(v59, &qword_1EB386A68, &qword_1A9587F40);
        v17 = v60;
      }

      else
      {
        v62 = Locale.LanguageCode.isMacroLanguage.getter();
        v63 = v54;
        v64 = *v103;
        (*v103)(v63, v60);
        (*(v61 + 8))(v59, v46);
        v17 = v60;
        v46 = v94;
        if (v62)
        {

          v65 = v47[2];
          if (v65)
          {
            v105 = MEMORY[0x1E69E7CC0];
            sub_1A93ABB88(0, v65, 0);
            v66 = v105;
            v100 = (v99 + 32);
            v67 = v86;
            do
            {
              v68 = v92;
              v101(v92, v55, v17);
              Locale.withTTSLanguageDisambiguation(overrides:)(v93, v46);
              v64(v68, v17);
              v105 = v66;
              v69 = v17;
              v71 = v66[2];
              v70 = v66[3];
              v72 = v71 + 1;
              if (v71 >= v70 >> 1)
              {
                sub_1A93ABB88(v70 > 1, v71 + 1, 1);
                v72 = v71 + 1;
                v66 = v105;
              }

              v66[2] = v72;
              v73 = v102;
              (*v100)(v66 + v67 + v71 * v102, v46, v69);
              v55 += v73;
              --v65;
              v17 = v69;
            }

            while (v65);
          }

          else
          {

            v66 = MEMORY[0x1E69E7CC0];
          }

          v74 = v17;
          v106[0] = v66;
          v75 = 1;
          goto LABEL_27;
        }
      }

      ++v57;
      v18 = v99;
      v54 = v100;
      if (v95 == v57)
      {
        v74 = v17;

        v75 = 0;
LABEL_27:
        v42 = v90;
        v76 = v91;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v74 = v17;
  v75 = 0;
  v76 = v91;
LABEL_28:
  v105 = v42;
  v77 = v93;

  v46 = v87;
  sub_1A943159C(&v105, v106, v88, v77);
  v78 = v89;
  if (v46)
  {
    goto LABEL_39;
  }

  v79 = v105;
  if (!v105[2])
  {
    v83 = 1;
LABEL_35:

    (*(v99 + 56))(v78, v83, 1, v74);
  }

  v80 = v99;
  v46 = (v99 + 16);
  v81 = *(v99 + 16);
  v82 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v81(v76, v105 + v82, v74);
  if (v75)
  {

    Locale.withTTSLanguageDisambiguation(overrides:)(v77, v78);
    (*(v80 + 8))(v76, v74);
    (*(v80 + 56))(v78, 0, 1, v74);
  }

  (*(v80 + 8))(v76, v74);
  if (*(v79 + 2))
  {
    v81(v78, &v79[v82], v74);
    v83 = 0;
    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  __break(1u);
  return result;
}

char *VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v35 - v16;
  v18 = *(v4 + 48);
  v19 = *(v4 + 52);
  v20 = swift_allocObject();
  v21 = *a2;
  v22 = *a3;
  v23 = *a4;
  type metadata accessor for TTSExecutor();
  *(v20 + 2) = TTSExecutor.__allocating_init()();
  v24 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v25 = sub_1A957B308();
  (*(*(v25 - 8) + 56))(&v20[v24], 1, 1, v25);
  v26 = &v20[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v20[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask] = 0;
  *&v20[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask] = 0;
  v27 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  *&v20[v27] = sub_1A942C838(MEMORY[0x1E69E7CC0]);
  sub_1A9379534(a1, (v20 + 24));
  *(v20 + 8) = v21;
  *(v20 + 9) = v22;
  *(v20 + 10) = v23;
  v28 = *(v20 + 2);
  v29 = sub_1A957C688();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v17, 1, 1, v29);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_1A9391BAC(v17, v14, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v27) = (*(v30 + 48))(v14, 1, v29);

  if (v27 == 1)
  {
    sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v30 + 8))(v14, v29);
  }

  v32 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_1A958BFF8;
  *(v33 + 24) = v31;
  swift_unknownObjectRetain();
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  v35[0] = 6;
  v35[1] = 0;
  v35[2] = v28;
  v35[3] = v32;
  swift_task_create();
  sub_1A937B960(v17, &qword_1EB388000, &qword_1A9587710);

  sub_1A9378138(a1);
  return v20;
}

char *VoiceResolver.init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v10 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v33 - v17;
  v19 = *a2;
  v20 = *a3;
  v21 = *a4;
  type metadata accessor for TTSExecutor();
  *(v5 + 2) = TTSExecutor.__allocating_init()();
  v22 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v23 = sub_1A957B308();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = &v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask] = 0;
  *&v5[OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask] = 0;
  v25 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  *&v5[v25] = sub_1A942C838(MEMORY[0x1E69E7CC0]);
  sub_1A9379534(a1, (v5 + 24));
  *(v5 + 8) = v19;
  *(v5 + 9) = v20;
  *(v5 + 10) = v21;
  v26 = *(v5 + 2);
  v27 = sub_1A957C688();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v18, 1, 1, v27);
  v29 = swift_allocObject();
  swift_weakInit();
  sub_1A9391BAC(v18, v15, &qword_1EB388000, &qword_1A9587710);
  LODWORD(v25) = (*(v28 + 48))(v15, 1, v27);

  if (v25 == 1)
  {
    sub_1A937B960(v15, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v28 + 8))(v15, v27);
  }

  v30 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v31 = swift_allocObject();
  *(v31 + 16) = &unk_1A958C018;
  *(v31 + 24) = v29;
  swift_unknownObjectRetain();
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  v33[0] = 6;
  v33[1] = 0;
  v33[2] = v26;
  v33[3] = v30;
  swift_task_create();
  sub_1A937B960(v18, &qword_1EB388000, &qword_1A9587710);

  sub_1A9378138(a1);
  return v5;
}

uint64_t sub_1A941A184(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941A220, 0, 0);
}

uint64_t sub_1A941A220()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for VoiceResolver(0);
    sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
    v4 = sub_1A957C5A8();

    return MEMORY[0x1EEE6DFA0](sub_1A941A344, v4, v3);
  }

  else
  {
    v5 = *(v0 + 56);
    **(v0 + 40) = 1;

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A941A344()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_1A938A404(0, 0, v1, &unk_1A958C760, v5);
  (*(*v2 + 280))(v6);

  return MEMORY[0x1EEE6DFA0](sub_1A941A498, 0, 0);
}

uint64_t sub_1A941A498()
{
  v1 = *(v0 + 56);
  **(v0 + 40) = *(v0 + 64) == 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A941A508@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = Criteria - 8;
  v5 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v21 - v13;
  v15 = v2[3].i64[0];
  v16 = v2[3].i64[1];
  sub_1A93780F4(&v2[1].i64[1], v15);
  v17 = *(v4 + 32);
  v18 = sub_1A957B308();
  (*(*(v18 - 8) + 56))(&v8->i8[v17], 1, 1, v18);
  *v8 = vextq_s8(v2[4], v2[4], 8uLL);
  v19 = (v8->i64 + *(v4 + 36));
  *v19 = 0;
  v19[1] = 0;
  (*(v16 + 40))(v8, v15, v16);
  sub_1A9391040(v8);

  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A957B958();

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1A941A724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941A7C0, 0, 0);
}

uint64_t sub_1A941A7C0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1A957B308();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v1 + 80);
  v0[2] = v4;
  sub_1A942C5FC(v4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1A941A8AC;
  v7 = v0[4];
  v6 = v0[5];

  return sub_1A941FCF8(v6, v0 + 2);
}

uint64_t sub_1A941A8AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 56) = a1;

  sub_1A942CD04(*(v2 + 16));
  sub_1A937B960(v4, &qword_1EB386988, &qword_1A9587830);

  return MEMORY[0x1EEE6DFA0](sub_1A941AA00, 0, 0);
}

uint64_t sub_1A941AA00()
{
  v1 = *(v0 + 40);
  **(v0 + 24) = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void *VoiceResolver.deinit()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_languageChangeTask;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);

    sub_1A957C748();
  }

  v3 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceCacheTask;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    v4 = *(v0 + v3);

    sub_1A957C748();
  }

  v5 = v0[2];

  sub_1A9378138(v0 + 3);
  sub_1A942CD04(v0[10]);
  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale, &qword_1EB386988, &qword_1A9587830);
  v6 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales + 8);
  sub_1A942C69C(*(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales));
  v7 = *(v0 + v1);

  v8 = *(v0 + v3);

  v9 = *(v0 + OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache);

  return v0;
}

uint64_t VoiceResolver.__deallocating_deinit()
{
  VoiceResolver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A941AC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = v3;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4[112] = Criteria;
  v6 = *(*(Criteria - 8) + 64) + 15;
  v4[113] = swift_task_alloc();
  v7 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v4[114] = v7;
  v8 = *(v7 - 8);
  v4[115] = v8;
  v9 = *(v8 + 64) + 15;
  v4[116] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941AD10, 0, 0);
}

uint64_t sub_1A941AD10()
{
  v17 = v0[116];
  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v3[3].i64[0];
  v7 = v3[3].i64[1];
  sub_1A93780F4(&v3[1].i64[1], v6);
  v8 = *(v2 + 24);
  v9 = sub_1A957B308();
  (*(*(v9 - 8) + 56))(&v1->i8[v8], 1, 1, v9);
  *v1 = vextq_s8(v3[4], v3[4], 8uLL);
  v10 = (v1->i64 + *(v2 + 28));
  *v10 = v5;
  v10[1] = v4;
  v11 = *(v7 + 40);

  v11(v1, v6, v7);
  sub_1A9391040(v1);
  v12 = *(MEMORY[0x1E6988278] + 4);
  v13 = swift_task_alloc();
  v0[117] = v13;
  *v13 = v0;
  v13[1] = sub_1A941AE94;
  v14 = v0[116];
  v15 = v0[114];

  return MEMORY[0x1EEDE9B80](v0 + 107, v15);
}

uint64_t sub_1A941AE94()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 928);
  v3 = *(*v0 + 920);
  v4 = *(*v0 + 912);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A941AFEC, 0, 0);
}

uint64_t sub_1A941AFEC()
{
  v1 = v0[107];
  v2 = v0[108];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23(v2);
  }

  else
  {
    v3 = v0[107];

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v4 = v0[116];
  v5 = v0[113];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A941B258(int a1, void *aBlock, uint64_t a3)
{
  v3[107] = a3;
  v3[108] = _Block_copy(aBlock);
  v4 = sub_1A957C0F8();
  v6 = v5;
  v3[109] = v5;

  v7 = swift_task_alloc();
  v3[110] = v7;
  *v7 = v3;
  v7[1] = sub_1A941B334;

  return sub_1A941AC08((v3 + 72), v4, v6);
}

uint64_t sub_1A941B334()
{
  v13 = v0;
  v13 = *v0;
  v1 = v13;
  v2 = v13[110];
  v3 = v13[109];
  v4 = v13[107];
  v5 = *v0;
  v13 = *v0;

  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v6 = 0;
  }

  else
  {
    memcpy(v12, v1 + 2, sizeof(v12));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v7);
    v6 = v8;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v9 = v1[108];
  (v9)[2](v9, v6);

  _Block_release(v9);
  v10 = *(v5 + 8);

  return v10();
}

uint64_t sub_1A941B510(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1A941B560(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1A941B614()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1A941B65C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_voiceResolutionCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A941B714(uint64_t a1, uint64_t a2)
{
  v3[394] = v2;
  v3[393] = a2;
  v3[392] = a1;
  v4 = sub_1A957B308();
  v3[395] = v4;
  v5 = *(v4 - 8);
  v3[396] = v5;
  v6 = *(v5 + 64) + 15;
  v3[397] = swift_task_alloc();
  v7 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v3[398] = swift_task_alloc();
  v8 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[399] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  v3[400] = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
  v10 = sub_1A957C5A8();
  v3[401] = v10;
  v3[402] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A941B8A8, v10, v9);
}

uint64_t sub_1A941B8A8()
{
  v1 = v0[394];
  v2 = (*(*v1 + 392))();
  if (*(v2 + 16) && (v3 = sub_1A9425364(v0[393]), (v4 & 1) != 0))
  {
    v5 = v0[392];
    memcpy(v0 + 317, (*(v2 + 56) + 280 * v3), 0x118uLL);
    sub_1A937B3DC((v0 + 317), (v0 + 352));

    memcpy(v0 + 282, v0 + 317, 0x118uLL);
    nullsub_23(v0 + 282);
    memcpy(v5, v0 + 282, 0x118uLL);
    v6 = v0[399];
    v7 = v0[398];
    v8 = v0[397];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[394];

    if ((*(*v11 + 368))(v12))
    {
    }

    else
    {
      v13 = v0[400];
      v14 = v0[399];
      v15 = v0[394];
      v16 = sub_1A957C688();
      (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v13;
      v17[4] = v15;
      swift_retain_n();
      v18 = sub_1A938A404(0, 0, v14, &unk_1A958C058, v17);
      (*(*v15 + 376))(v18);
    }

    v19 = v0[398];
    v20 = v0[396];
    v21 = v0[395];
    v22 = v0[394];
    v23 = v0[393];
    v24 = *(v20 + 16);
    v0[403] = v24;
    v0[404] = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v24(v19, v23, v21);
    (*(v20 + 56))(v19, 0, 1, v21);
    v25 = *(v22 + 80);
    v0[391] = v25;
    sub_1A942C5FC(v25);
    v26 = swift_task_alloc();
    v0[405] = v26;
    *v26 = v0;
    v26[1] = sub_1A941BBD8;
    v27 = v0[398];
    v28 = v0[394];

    return sub_1A941FCF8(v27, v0 + 391);
  }
}

uint64_t sub_1A941BBD8(unint64_t a1)
{
  v2 = *v1;
  v3 = (*v1)[405];
  v4 = (*v1)[398];
  v8 = *v1;
  (*v1)[406] = a1;

  sub_1A942CD04(v2[391]);
  sub_1A937B960(v4, &qword_1EB386988, &qword_1A9587830);
  v5 = v2[402];
  v6 = v2[401];

  return MEMORY[0x1EEE6DFA0](sub_1A941BD4C, v6, v5);
}

uint64_t sub_1A941BD4C()
{
  v23 = v0;
  v1 = *(v0 + 3248);
  if (*(v1 + 16))
  {
    memcpy((v0 + 856), (v1 + 32), 0x118uLL);
    memmove((v0 + 576), (v1 + 32), 0x118uLL);
    nullsub_23(v0 + 576);
    sub_1A937B3DC(v0 + 856, v0 + 1136);

    memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  }

  else
  {
    v3 = *(v0 + 3248);

    v2.n128_f64[0] = sub_1A93847E0(v0 + 296);
  }

  v4 = *(v0 + 3232);
  v5 = *(v0 + 3152);
  (*(v0 + 3224))(*(v0 + 3176), *(v0 + 3144), *(v0 + 3160), v2);
  v6 = *(*v5 + 408);
  sub_1A9391BAC(v0 + 296, v0 + 1696, &unk_1EB387BC0, &qword_1A9587E30);
  v7 = v6(v0 + 3096);
  v9 = v8;
  memcpy((v0 + 1416), (v0 + 296), 0x118uLL);
  v10 = sub_1A932D058(v0 + 1416);
  v11 = *(v0 + 3176);
  v12 = *(v0 + 3168);
  v13 = *(v0 + 3160);
  if (v10 == 1)
  {
    sub_1A94255D8(*(v0 + 3176), __src);
    (*(v12 + 8))(v11, v13);
    memcpy((v0 + 1976), __src, 0x118uLL);
    sub_1A937B960(v0 + 1976, &unk_1EB387BC0, &qword_1A9587E30);
  }

  else
  {
    memcpy((v0 + 16), (v0 + 296), 0x118uLL);
    v14 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = *v9;
    sub_1A9426068((v0 + 16), v11, isUniquelyReferenced_nonNull_native);
    (*(v12 + 8))(v11, v13);
    *v9 = __src[0];
  }

  v16 = *(v0 + 3136);
  v7(v0 + 3096, 0);
  memcpy(v16, (v0 + 296), 0x118uLL);
  v17 = *(v0 + 3192);
  v18 = *(v0 + 3184);
  v19 = *(v0 + 3176);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A941BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4[12] = Criteria;
  v7 = *(*(Criteria - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = sub_1A937829C(&qword_1EB387298, &qword_1A958C750);
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  type metadata accessor for VoiceResolver(0);
  v4[20] = sub_1A942C3E8(&qword_1ED96FD78, type metadata accessor for VoiceResolver);
  v15 = sub_1A957C5A8();
  v4[21] = v15;
  v4[22] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1A941C1C4, v15, v14);
}

uint64_t sub_1A941C1C4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v24 = v0[14];
  v25 = v0[19];
  v4 = v0[12];
  v21 = v4;
  v5 = v0[10];
  v22 = v5[7];
  v23 = v5[6];
  sub_1A93780F4(v5 + 3, v23);
  v6 = *(v4 + 24);
  v7 = sub_1A957B308();
  v0[23] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[24] = v9;
  v0[25] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(&v3[v6], 1, 1, v7);
  v0[6] = MEMORY[0x1E69E7CC0];
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B744C(&qword_1ED96FEB8, &unk_1EB388360, qword_1A958B690);
  sub_1A957CE08();
  v10 = v0[5];
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A957CE08();
  v11 = v0[7];
  *v3 = v10;
  *(v3 + 1) = v11;
  v12 = &v3[*(v21 + 28)];
  *v12 = 0;
  *(v12 + 1) = 0;
  (*(v22 + 40))(v3, v23);
  sub_1A9391040(v3);
  sub_1A957B918();
  (*(v2 + 8))(v1, v24);
  v13 = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedLocales;
  v0[26] = OBJC_IVAR____TtC12TextToSpeech13VoiceResolver_cachedSystemLocale;
  v0[27] = v13;
  v14 = v0[20];
  v15 = v0[10];
  v16 = *(MEMORY[0x1E69E8678] + 4);
  v17 = swift_task_alloc();
  v0[28] = v17;
  *v17 = v0;
  v17[1] = sub_1A941C44C;
  v18 = v0[19];
  v19 = v0[17];

  return MEMORY[0x1EEE6D9C8](v0 + 9, v15, v14, v19);
}

uint64_t sub_1A941C44C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1A941C56C, v4, v3);
}

uint64_t sub_1A941C56C()
{
  if (v0[9])
  {
    v1 = v0[26];
    v3 = v0[24];
    v2 = v0[25];
    v4 = v0[23];
    v6 = v0[10];
    v5 = v0[11];
    v7 = (v6 + v0[27]);

    v3(v5, 1, 1, v4);
    swift_beginAccess();
    sub_1A942C62C(v5, v6 + v1);
    swift_endAccess();
    v8 = *v7;
    v9 = v7[1];
    *v7 = 0;
    v7[1] = 0;
    sub_1A942C69C(v8);
    (*(*v6 + 400))(MEMORY[0x1E69E7CC8]);
    v10 = v0[20];
    v11 = v0[10];
    v12 = *(MEMORY[0x1E69E8678] + 4);
    v13 = swift_task_alloc();
    v0[28] = v13;
    *v13 = v0;
    v13[1] = sub_1A941C44C;
    v14 = v0[19];
    v15 = v0[17];

    return MEMORY[0x1EEE6D9C8](v0 + 9, v11, v10, v15);
  }

  else
  {
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[11];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A941C8F0(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[107] = a3;
  v5 = sub_1A957B308();
  v3[108] = v5;
  v6 = *(v5 - 8);
  v3[109] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[110] = v8;
  v3[111] = _Block_copy(a2);
  sub_1A957B1F8();

  v9 = swift_task_alloc();
  v3[112] = v9;
  *v9 = v3;
  v9[1] = sub_1A941CA24;

  return sub_1A941B714((v3 + 72), v8);
}

uint64_t sub_1A941CA24()
{
  v16 = v0;
  v16 = *v0;
  v1 = v16;
  v2 = v16[112];
  v3 = v16[110];
  v4 = v16[109];
  v5 = v16[108];
  v6 = v16[107];
  v7 = *v0;
  v16 = *v0;

  (*(v4 + 8))(v3, v5);
  memcpy(v1 + 37, v1 + 72, 0x118uLL);
  memcpy(v1 + 2, v1 + 72, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v8 = 0;
  }

  else
  {
    memcpy(v15, v1 + 2, sizeof(v15));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v9);
    v8 = v10;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v11 = v1[111];
  v12 = v1[110];
  (v11)[2](v11, v8);

  _Block_release(v11);

  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1A941CC40(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941CCDC, 0, 0);
}

uint64_t sub_1A941CCDC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = *(v2 + 80);
  v0[2] = v6;
  sub_1A942C5FC(v6);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1A941CE10;
  v9 = v0[4];
  v8 = v0[5];

  return sub_1A941FCF8(v8, v0 + 2);
}

uint64_t sub_1A941CE10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;

  sub_1A942CD04(*(v3 + 16));
  sub_1A937B960(v5, &qword_1EB386988, &qword_1A9587830);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_1A941CF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957B308();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A941D028, 0, 0);
}

uint64_t sub_1A941D028()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  sub_1A957B1B8();
  v11 = (*v2 + 416);
  v12 = (*v11 + **v11);
  v5 = (*v11)[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1A941D190;
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[2];

  return v12(v9, v7);
}

uint64_t sub_1A941D190()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A941D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v26 - v16;
  v18 = *(v5 + 16);
  v19 = sub_1A957C688();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v17, 1, 1, v19);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v22 = v27;
  v21[4] = v5;
  v21[5] = v22;
  v21[6] = a2;
  sub_1A9391BAC(v17, v14, &qword_1EB388000, &qword_1A9587710);
  LODWORD(a3) = (*(v20 + 48))(v14, 1, v19);

  if (a3 == 1)
  {
    sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v20 + 8))(v14, v19);
  }

  v23 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_1A958C088;
  *(v24 + 24) = v21;
  v28 = 6;
  v29 = 0;
  v30 = v18;
  v31 = v23;

  swift_task_create();
  sub_1A937B960(v17, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A941D5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[73] = a3;
  v6[72] = a2;
  v9 = *(*a4 + 432);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v6[74] = v11;
  *v11 = v6;
  v11[1] = sub_1A941D710;

  return (v13)(v6 + 37, a5, a6);
}

uint64_t sub_1A941D710()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9431DA0, 0, 0);
}

void sub_1A941D9D8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  memcpy(v10, __src, sizeof(v10));
  if (sub_1A932D058(v10) == 1)
  {
    sub_1A9391BAC(__dst, v7, &unk_1EB387BC0, &qword_1A9587E30);
    v4 = 0;
  }

  else
  {
    sub_1A9391BAC(__dst, v7, &unk_1EB387BC0, &qword_1A9587E30);
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v5);
    v4 = v6;
    memcpy(v7, __srca, sizeof(v7));
    sub_1A937B48C(v7);
  }

  (*(a2 + 16))(a2, v4);
}

uint64_t sub_1A941DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v31 = a2;
  v32 = a3;
  v12 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v29 - v19;
  v30 = *(v7 + 16);
  v21 = sub_1A957C688();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v20, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = v7;
  v23[5] = a1;
  v24 = v32;
  v23[6] = v31;
  v23[7] = v24;
  v23[8] = a4;
  sub_1A9391BAC(v20, v17, &qword_1EB388000, &qword_1A9587710);
  LODWORD(a1) = (*(v22 + 48))(v17, 1, v21);
  v25 = v30;

  if (a1 == 1)
  {
    sub_1A937B960(v17, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v22 + 8))(v17, v21);
  }

  v26 = sub_1A942C3E8(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v27 = swift_allocObject();
  *(v27 + 16) = &unk_1A958C0A0;
  *(v27 + 24) = v23;
  v33 = 6;
  v34 = 0;
  v35 = v25;
  v36 = v26;

  swift_task_create();
  sub_1A937B960(v20, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A941DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[73] = a3;
  v8[72] = a2;
  v13 = *(*a4 + 456);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v8[74] = v15;
  *v15 = v8;
  v15[1] = sub_1A941DF14;

  return (v17)(v8 + 37, a5, a6, a7, a8);
}

uint64_t sub_1A941DF14()
{
  v1 = *(*v0 + 592);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A941E010, 0, 0);
}

uint64_t sub_1A941E010()
{
  v6 = v0;
  v1 = v0[73];
  v2 = v0[72];
  memcpy(v5, v0 + 37, sizeof(v5));
  v2(v5);
  memcpy(v0 + 2, v5, 0x118uLL);
  sub_1A937B960((v0 + 2), &unk_1EB387BC0, &qword_1A9587E30);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A941E2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[145] = v5;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  v10 = sub_1A957B308();
  v6[146] = v10;
  v11 = *(v10 - 8);
  v6[147] = v11;
  v12 = *(v11 + 64) + 15;
  v6[148] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[149] = v13;
  if (a3)
  {
    v14 = *(*v5 + 360);
    v30 = v14 + *v14;
    v15 = v14[1];
    v16 = swift_task_alloc();
    v6[153] = v16;
    *v16 = v6;
    v16[1] = sub_1A941EA94;
    v17 = v6 + 72;
    v18 = a2;
    v19 = a3;
    v20 = v30;

    return v20(v17, v18, v19);
  }

  if (a5)
  {
    v22 = *(*v5 + 432);
    v31 = v22 + *v22;
    v23 = v22[1];
    v24 = swift_task_alloc();
    v6[156] = v24;
    *v24 = v6;
    v24[1] = sub_1A941F330;
    v25 = v6[145];
    v18 = v6[143];
    v17 = v6[142];
    v19 = a5;
    v20 = v31;

    return v20(v17, v18, v19);
  }

  v26 = *(*v5 + 200);
  v32 = (v26 + *v26);
  v27 = v26[1];
  v28 = v13;
  v29 = swift_task_alloc();
  v6[150] = v29;
  *v29 = v6;
  v29[1] = sub_1A941E690;

  return v32(v28);
}

uint64_t sub_1A941E690()
{
  v1 = *(*v0 + 1200);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A941E78C, 0, 0);
}

uint64_t sub_1A941E78C()
{
  v1 = v0[149];
  v2 = v0[145];
  v3 = sub_1A957B1A8();
  v5 = v4;
  v0[151] = v4;
  v12 = (*v2 + 456);
  v13 = (*v12 + **v12);
  v6 = (*v12)[1];
  v7 = swift_task_alloc();
  v0[152] = v7;
  *v7 = v0;
  v7[1] = sub_1A941E8F4;
  v8 = v0[145];
  v9 = v0[143];
  v10 = v0[142];

  return (v13)(v10, v9, 0, v3, v5);
}

uint64_t sub_1A941E8F4()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A941EA0C, 0, 0);
}

uint64_t sub_1A941EA0C()
{
  (*(v0[147] + 8))(v0[149], v0[146]);
  v1 = v0[149];
  v2 = v0[148];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A941EA94()
{
  v1 = *(*v0 + 1224);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A941EB90, 0, 0);
}

uint64_t sub_1A941EB90()
{
  v35 = v0;
  v1 = *(v0 + 1152);
  memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  memcpy((v0 + 16), (v0 + 296), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    if (v1)
    {
      v2 = *(v0 + 1152);
      v3 = *(**(v0 + 1160) + 432);
      v32 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      *(v0 + 1248) = v5;
      *v5 = v0;
      v6 = sub_1A941F330;
LABEL_14:
      v5[1] = v6;
      v29 = *(v0 + 1160);
      v30 = *(v0 + 1144);
      v31 = *(v0 + 1136);

      return v32(v31, v30, v2);
    }

    v21 = *(**(v0 + 1160) + 456);
    v33 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 1240) = v23;
    *v23 = v0;
    v23[1] = sub_1A941F204;
    v24 = *(v0 + 1160);
    v25 = *(v0 + 1144);
    v26 = *(v0 + 1136);

    return v33(v26);
  }

  else
  {
    if (v1)
    {
      v7 = *(v0 + 1192);
      v8 = *(v0 + 1184);
      v9 = *(v0 + 1176);
      v10 = *(v0 + 1168);
      v11 = *(v0 + 1160);
      v2 = *(v0 + 1152);
      v12 = *(v0 + 1144);
      memcpy(__dst, (v0 + 16), sizeof(__dst));
      sub_1A9391BAC(v0 + 296, v0 + 856, &unk_1EB387BC0, &qword_1A9587E30);

      sub_1A957B1B8();
      v13 = v11[6];
      v14 = v11[7];
      sub_1A93780F4(v11 + 3, v13);
      v15 = (*(v14 + 16))(v13, v14);
      Locale.withTTSLanguageDisambiguation(overrides:)(v15, v7);

      v16 = *(v9 + 8);
      v16(v8, v10);
      LOBYTE(v12) = CoreSynthesizer.Voice.speaksLanguage(locale:)();
      v16(v7, v10);
      if ((v12 & 1) == 0)
      {
        v27 = *(**(v0 + 1160) + 432);
        v32 = (v27 + *v27);
        v28 = v27[1];
        v5 = swift_task_alloc();
        *(v0 + 1232) = v5;
        *v5 = v0;
        v6 = sub_1A941F06C;
        goto LABEL_14;
      }

      sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
    }

    memcpy(*(v0 + 1136), (v0 + 296), 0x118uLL);
    v17 = *(v0 + 1192);
    v18 = *(v0 + 1184);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1A941F06C()
{
  v1 = *(*v0 + 1232);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A941F168, 0, 0);
}

uint64_t sub_1A941F168()
{
  sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  v1 = v0[149];
  v2 = v0[148];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A941F204()
{
  v1 = *v0;
  v2 = *(*v0 + 1240);
  v7 = *v0;

  v3 = *(v1 + 1192);
  v4 = *(v1 + 1184);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A941F330()
{
  v1 = *v0;
  v2 = *(*v0 + 1248);
  v7 = *v0;

  v3 = *(v1 + 1192);
  v4 = *(v1 + 1184);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A941F45C(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v3[145] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A941F510, 0, 0);
}

uint64_t sub_1A941F510()
{
  v1 = v0[145];
  CoreSynthesizer.Voice.primaryLocale.getter(v1);
  v2 = sub_1A957B308();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A958BF10;
  *(v3 + 32) = *sub_1A9493C9C();
  *(v3 + 65) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 88) = *sub_1A9493C3C();
  *(v3 + 121) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 144) = *sub_1A9493C54();
  *(v3 + 177) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 200) = 1;
  *(v3 + 240) = 0;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 248) = -64;
  v0[142] = v3;
  v4 = swift_task_alloc();
  v0[146] = v4;
  *v4 = v0;
  v4[1] = sub_1A941F6A0;
  v5 = v0[145];
  v6 = v0[144];

  return sub_1A941FCF8(v5, v0 + 142);
}

uint64_t sub_1A941F6A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v4 = *(*v1 + 1160);
  v6 = *v1;
  *(*v1 + 1176) = a1;

  sub_1A942CD04(*(v2 + 1136));
  sub_1A937B960(v4, &qword_1EB386988, &qword_1A9587830);

  return MEMORY[0x1EEE6DFA0](sub_1A941F7F4, 0, 0);
}

uint64_t sub_1A941F7F4()
{
  v1 = v0[147];
  v2 = v0[143];
  if (*(v1 + 16))
  {
    memcpy(v0 + 37, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 37), (v0 + 72));

    memcpy(v2, v0 + 37, 0x118uLL);
    nullsub_23(v2);
  }

  else
  {
    v3 = v0[147];

    sub_1A93847E0((v0 + 107));
    memcpy(v2, v0 + 107, 0x118uLL);
  }

  v4 = v0[145];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A941FA54(void *a1, void *aBlock, uint64_t a3)
{
  v3[177] = a3;
  v3[178] = _Block_copy(aBlock);
  v5 = a1;

  static CoreSynthesizer.Voice._unconditionallyBridgeFromObjectiveC(_:)(a1, v3 + 142);

  v6 = swift_task_alloc();
  v3[179] = v6;
  *v6 = v3;
  v6[1] = sub_1A941FB2C;

  return sub_1A941F45C((v3 + 107), v3 + 142);
}

uint64_t sub_1A941FB2C()
{
  v12 = v0;
  v12 = *v0;
  v1 = v12;
  v2 = v12[179];
  v3 = v12[177];
  v4 = *v0;
  v12 = *v0;

  memcpy(v1 + 72, v1 + 142, 0x118uLL);
  sub_1A937B48C((v1 + 72));
  memcpy(v1 + 37, v1 + 107, 0x118uLL);
  memcpy(v1 + 2, v1 + 107, 0x118uLL);
  if (sub_1A932D058((v1 + 2)) == 1)
  {
    v5 = 0;
  }

  else
  {
    memcpy(__dst, v1 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v6);
    v5 = v7;
    sub_1A937B960((v1 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v8 = v1[178];
  (v8)[2](v8, v5);

  _Block_release(v8);
  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_1A941FCF8(uint64_t a1, void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  v5 = sub_1A937829C(&qword_1EB387248, &qword_1A958BF80);
  v3[145] = v5;
  v6 = *(v5 - 8);
  v3[146] = v6;
  v7 = *(v6 + 64) + 15;
  v3[147] = swift_task_alloc();
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v3[148] = Criteria;
  v9 = *(*(Criteria - 8) + 64) + 15;
  v3[149] = swift_task_alloc();
  v10 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v3[150] = v10;
  v11 = *(v10 - 8);
  v3[151] = v11;
  v12 = *(v11 + 64) + 15;
  v3[152] = swift_task_alloc();
  v13 = sub_1A957B2E8();
  v3[153] = v13;
  v14 = *(v13 - 8);
  v3[154] = v14;
  v15 = *(v14 + 64) + 15;
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v16 = *(*(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8) + 64) + 15;
  v3[157] = swift_task_alloc();
  v3[158] = swift_task_alloc();
  v17 = sub_1A957B188();
  v3[159] = v17;
  v18 = *(v17 - 8);
  v3[160] = v18;
  v19 = *(v18 + 64) + 15;
  v3[161] = swift_task_alloc();
  v3[162] = swift_task_alloc();
  v20 = sub_1A957B308();
  v3[163] = v20;
  v21 = *(v20 - 8);
  v3[164] = v21;
  v22 = *(v21 + 64) + 15;
  v3[165] = swift_task_alloc();
  v3[166] = swift_task_alloc();
  v3[167] = swift_task_alloc();
  v23 = *(*(sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740) - 8) + 64) + 15;
  v3[168] = swift_task_alloc();
  v24 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v3[169] = swift_task_alloc();
  v3[170] = swift_task_alloc();
  v3[171] = swift_task_alloc();
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v3[177] = swift_task_alloc();
  v3[178] = swift_task_alloc();
  v3[179] = swift_task_alloc();
  v3[180] = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A94200DC, 0, 0);
}

uint64_t sub_1A94200DC()
{
  v1 = v0[179];
  v2 = v0[164];
  v3 = v0[163];
  sub_1A9391BAC(v0[143], v1, &qword_1EB386988, &qword_1A9587830);
  v4 = *(v2 + 48);
  v0[181] = v4;
  v0[182] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3))
  {
    v5 = v0[168];
    v6 = sub_1A957B218();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = v0[168];
    v8 = v0[167];
    v9 = v0[164];
    v10 = v0[163];
    (*(v9 + 16))(v8, v0[179], v10);
    sub_1A957B248();
    (*(v9 + 8))(v8, v10);
    v11 = sub_1A957B218();
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) != 1)
    {
      v21 = v0[168];
      v22 = &qword_1EB386AF0;
      v23 = &unk_1A958C740;
      goto LABEL_9;
    }
  }

  v12 = v0[179];
  v13 = v0[163];
  sub_1A937B960(v0[168], &qword_1EB386AF0, &unk_1A958C740);
  if (v4(v12, 1, v13))
  {
    (*(v0[160] + 56))(v0[158], 1, 1, v0[159]);
LABEL_7:
    v21 = v0[158];
    v22 = &qword_1EB386A68;
    v23 = &qword_1A9587F40;
LABEL_9:
    sub_1A937B960(v21, v22, v23);
    v24 = v0[175];
    v25 = v0[163];
    sub_1A9391BAC(v0[143], v24, &qword_1EB386988, &qword_1A9587830);
    if (v4(v24, 1, v25) == 1)
    {
      sub_1A937B960(v0[175], &qword_1EB386988, &qword_1A9587830);
      v26 = 1;
    }

    else
    {
      v27 = v0[176];
      v28 = v0[175];
      v29 = v0[164];
      v30 = v0[163];
      v31 = v0[144];
      v32 = v31[6];
      v33 = v31[7];
      sub_1A93780F4(v31 + 3, v32);
      v34 = (*(v33 + 16))(v32, v33);
      Locale.withTTSLanguageDisambiguation(overrides:)(v34, v27);

      (*(v29 + 8))(v28, v30);
      v26 = 0;
    }

    (*(v0[164] + 56))(v0[176], v26, 1, v0[163]);
    v35 = v0[179];
    v36 = v0[152];
    v37 = v0[149];
    v38 = v0[148];
    v39 = v0[144];
    sub_1A942C62C(v0[176], v35);
    v40 = v39[3].i64[0];
    v41 = v39[3].i64[1];
    sub_1A93780F4(&v39[1].i64[1], v40);
    sub_1A9391BAC(v35, v37->i64 + *(v38 + 24), &qword_1EB386988, &qword_1A9587830);
    *v37 = vextq_s8(v39[4], v39[4], 8uLL);
    v42 = (v37->i64 + *(v38 + 28));
    *v42 = 0;
    v42[1] = 0;
    (*(v41 + 40))(v37, v40, v41);
    sub_1A9391040(v37);
    v43 = *(MEMORY[0x1E6988278] + 4);
    v44 = swift_task_alloc();
    v0[184] = v44;
    *v44 = v0;
    v44[1] = sub_1A9420990;
    v45 = v0[152];
    v46 = v0[150];

    return MEMORY[0x1EEDE9B80](v0 + 142, v46);
  }

  v14 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[160];
  v18 = v0[158];
  v19 = v0[156];
  v20 = v0[154];
  v52 = v0[153];
  v53 = v0[159];
  (*(v15 + 16))(v14, v0[179], v16);
  sub_1A957B2F8();
  (*(v15 + 8))(v14, v16);
  sub_1A957B2B8();
  (*(v20 + 8))(v19, v52);
  if ((*(v17 + 48))(v18, 1, v53) == 1)
  {
    goto LABEL_7;
  }

  (*(v0[160] + 32))(v0[162], v0[158], v0[159]);
  v47 = swift_task_alloc();
  v0[183] = v47;
  *v47 = v0;
  v47[1] = sub_1A9420650;
  v48 = v0[177];
  v49 = v0[162];
  v50 = v0[144];

  return sub_1A9423148(v48, v49);
}

uint64_t sub_1A9420650()
{
  v1 = *(*v0 + 1464);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A942074C, 0, 0);
}

uint64_t sub_1A942074C()
{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[177];
  v4 = v0[163];
  (*(v0[160] + 8))(v0[162], v0[159]);
  if (v2(v3, 1, v4) == 1)
  {
    v5 = v0[182];
    v6 = v0[181];
    v7 = v0[177];
    v8 = v0[163];
    sub_1A9391BAC(v0[179], v0[178], &qword_1EB386988, &qword_1A9587830);
    if (v6(v7, 1, v8) != 1)
    {
      sub_1A937B960(v0[177], &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v9 = v0[178];
    v10 = v0[164];
    v11 = v0[163];
    (*(v10 + 32))(v9, v0[177], v11);
    (*(v10 + 56))(v9, 0, 1, v11);
  }

  v12 = v0[179];
  v13 = v0[152];
  v14 = v0[149];
  v15 = v0[148];
  v16 = v0[144];
  sub_1A942C62C(v0[178], v12);
  v17 = v16[3].i64[0];
  v18 = v16[3].i64[1];
  sub_1A93780F4(&v16[1].i64[1], v17);
  sub_1A9391BAC(v12, v14->i64 + *(v15 + 24), &qword_1EB386988, &qword_1A9587830);
  *v14 = vextq_s8(v16[4], v16[4], 8uLL);
  v19 = (v14->i64 + *(v15 + 28));
  *v19 = 0;
  v19[1] = 0;
  (*(v18 + 40))(v14, v17, v18);
  sub_1A9391040(v14);
  v20 = *(MEMORY[0x1E6988278] + 4);
  v21 = swift_task_alloc();
  v0[184] = v21;
  *v21 = v0;
  v21[1] = sub_1A9420990;
  v22 = v0[152];
  v23 = v0[150];

  return MEMORY[0x1EEDE9B80](v0 + 142, v23);
}

uint64_t sub_1A9420990()
{
  v1 = *(*v0 + 1472);
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1208);
  v4 = *(*v0 + 1200);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A9420AE8, 0, 0);
}

uint64_t sub_1A9420AE8()
{
  v90 = v0;
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[179];
  v4 = v0[174];
  v5 = v0[163];
  v6 = v0[142];
  v0[185] = v6;
  sub_1A9391BAC(v3, v4, &qword_1EB386988, &qword_1A9587830);
  v7 = v2(v4, 1, v5);
  v8 = v0[174];
  if (v7 == 1)
  {
    sub_1A937B960(v0[174], &qword_1EB386988, &qword_1A9587830);
  }

  else
  {
    v9 = v0[166];
    v10 = v0[164];
    v11 = v0[163];
    v12 = v0[160];
    v13 = v0[159];
    v14 = v0[157];
    v15 = v0[155];
    v16 = v0[154];
    v17 = v0[153];
    v18 = *(v10 + 32);
    v0[186] = v18;
    v0[187] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v18(v9, v8, v11);
    sub_1A957B2F8();
    sub_1A957B2B8();
    (*(v16 + 8))(v15, v17);
    if ((*(v12 + 48))(v14, 1, v13) == 1)
    {
      v19 = v0[157];
      (*(v0[164] + 8))(v0[166], v0[163]);
      sub_1A937B960(v19, &qword_1EB386A68, &qword_1A9587F40);
    }

    else
    {
      (*(v0[160] + 32))(v0[161], v0[157], v0[159]);
      v20 = MEMORY[0x1E69E7CD0];
      v88 = MEMORY[0x1E69E7CD0];
      v21 = *(v6 + 16);
      if (v21)
      {
        v22 = 0;
        v23 = (v6 + 32);
        v24 = v21 - 1;
        while (1)
        {
          memcpy(v0 + 2, v23, 0x118uLL);
          memcpy(__dst, v23, 0x118uLL);
          sub_1A937B3DC((v0 + 2), (v0 + 37));
          sub_1A9421D68(&v88, __dst);
          memcpy(v0 + 107, __dst, 0x118uLL);
          sub_1A937B48C((v0 + 107));
          if (v24 == v22)
          {
            break;
          }

          ++v22;
          v23 += 280;
          if (v22 >= *(v6 + 16))
          {
            __break(1u);
            break;
          }
        }

        v20 = v88;
      }

      v0[188] = 0;
      v25 = v0[166];
      v26 = sub_1A957B1A8();
      v28 = sub_1A93A8204(v26, v27, v20);

      if ((v28 & 1) == 0)
      {
        v54 = swift_task_alloc();
        v0[189] = v54;
        *v54 = v0;
        v54[1] = sub_1A942123C;
        v55 = v0[172];
        v56 = v0[161];
        v57 = v0[144];

        return sub_1A9423148(v55, v56);
      }

      v29 = v0[166];
      v30 = v0[164];
      v31 = v0[163];
      (*(v0[160] + 8))(v0[161], v0[159]);
      (*(v30 + 8))(v29, v31);
    }
  }

  v0[190] = 0;
  v32 = v0[182];
  v33 = v0[181];
  v34 = v0[171];
  v35 = v0[163];
  sub_1A9391BAC(v0[179], v34, &qword_1EB386988, &qword_1A9587830);
  LODWORD(v35) = v33(v34, 1, v35);
  v36 = sub_1A937B960(v34, &qword_1EB386988, &qword_1A9587830);
  if (v35 == 1)
  {
    v37 = v0[147];
    (*(*v0[144] + 336))(v36);
    v38 = *(MEMORY[0x1E6988270] + 4);
    v39 = swift_task_alloc();
    v0[191] = v39;
    *v39 = v0;
    v39[1] = sub_1A94218A4;
    v40 = v0[170];
    v41 = v0[147];
    v42 = v0[145];

    return MEMORY[0x1EEDE9B70](v40, v42);
  }

  v43 = v0[182];
  v44 = v0[181];
  v45 = v0[169];
  v46 = v0[163];
  sub_1A9391BAC(v0[179], v45, &qword_1EB386988, &qword_1A9587830);
  if (v44(v45, 1, v46) == 1)
  {
    v47 = v0[185];
    v48 = v0[169];

    sub_1A937B960(v48, &qword_1EB386988, &qword_1A9587830);
    v87 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v62 = v0[178];
    v63 = v0[177];
    v64 = v0[176];
    v65 = v0[175];
    v66 = v0[174];
    v67 = v0[173];
    v68 = v0[172];
    v69 = v0[171];
    v72 = v0[170];
    v73 = v0[169];
    v74 = v0[168];
    v75 = v0[167];
    v76 = v0[166];
    v77 = v0[165];
    v78 = v0[162];
    v79 = v0[161];
    v80 = v0[158];
    v81 = v0[157];
    v82 = v0[156];
    v83 = v0[155];
    v84 = v0[152];
    v85 = v0[149];
    v86 = v0[147];
    sub_1A937B960(v0[179], &qword_1EB386988, &qword_1A9587830);

    v70 = v0[1];

    return v70(v87);
  }

  v49 = v0[190];
  v50 = v0[185];
  v51 = v0[180];
  v52 = v0[165];
  (*(v0[164] + 32))(v52, v0[169], v0[163]);
  v53 = swift_task_alloc();
  *(v53 + 16) = v52;
  *(v53 + 24) = v51;
  __dst[0] = v50;

  sub_1A942778C(sub_1A9431BC8, v53);
  if (!v49)
  {
    v58 = v0[185];
    v59 = v0[165];
    v60 = v0[164];
    v61 = v0[163];

    v87 = __dst[0];

    (*(v60 + 8))(v59, v61);
    goto LABEL_27;
  }
}

uint64_t sub_1A942123C()
{
  v1 = *(*v0 + 1512);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9421338, 0, 0);
}

uint64_t sub_1A9421338()
{
  v1 = *(v0 + 1456);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1376);
  v4 = *(v0 + 1328);
  v5 = *(v0 + 1312);
  v6 = *(v0 + 1304);
  (*(*(v0 + 1280) + 8))(*(v0 + 1288), *(v0 + 1272));
  (*(v5 + 8))(v4, v6);
  v7 = v2(v3, 1, v6);
  v8 = *(v0 + 1384);
  v9 = *(v0 + 1376);
  if (v7 == 1)
  {
    v10 = *(v0 + 1456);
    v11 = *(v0 + 1448);
    v12 = *(v0 + 1304);
    sub_1A9391BAC(*(v0 + 1432), *(v0 + 1384), &qword_1EB386988, &qword_1A9587830);
    if (v11(v9, 1, v12) != 1)
    {
      sub_1A937B960(*(v0 + 1376), &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v13 = *(v0 + 1496);
    v14 = *(v0 + 1312);
    v15 = *(v0 + 1304);
    (*(v0 + 1488))(*(v0 + 1384), *(v0 + 1376), v15);
    (*(v14 + 56))(v8, 0, 1, v15);
  }

  sub_1A942C62C(*(v0 + 1384), *(v0 + 1432));
  *(v0 + 1520) = *(v0 + 1504);
  v16 = *(v0 + 1456);
  v17 = *(v0 + 1448);
  v18 = *(v0 + 1368);
  v19 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v18, &qword_1EB386988, &qword_1A9587830);
  LODWORD(v19) = v17(v18, 1, v19);
  v20 = sub_1A937B960(v18, &qword_1EB386988, &qword_1A9587830);
  if (v19 == 1)
  {
    v21 = *(v0 + 1176);
    (*(**(v0 + 1152) + 336))(v20);
    v22 = *(MEMORY[0x1E6988270] + 4);
    v23 = swift_task_alloc();
    *(v0 + 1528) = v23;
    *v23 = v0;
    v23[1] = sub_1A94218A4;
    v24 = *(v0 + 1360);
    v25 = *(v0 + 1176);
    v26 = *(v0 + 1160);

    return MEMORY[0x1EEDE9B70](v24, v26);
  }

  v27 = *(v0 + 1456);
  v28 = *(v0 + 1448);
  v29 = *(v0 + 1352);
  v30 = *(v0 + 1304);
  sub_1A9391BAC(*(v0 + 1432), v29, &qword_1EB386988, &qword_1A9587830);
  if (v28(v29, 1, v30) == 1)
  {
    v31 = *(v0 + 1480);
    v32 = *(v0 + 1352);

    sub_1A937B960(v32, &qword_1EB386988, &qword_1A9587830);
    v67 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v42 = *(v0 + 1424);
    v43 = *(v0 + 1416);
    v44 = *(v0 + 1408);
    v45 = *(v0 + 1400);
    v46 = *(v0 + 1392);
    v47 = *(v0 + 1384);
    v48 = *(v0 + 1376);
    v49 = *(v0 + 1368);
    v52 = *(v0 + 1360);
    v53 = *(v0 + 1352);
    v54 = *(v0 + 1344);
    v55 = *(v0 + 1336);
    v56 = *(v0 + 1328);
    v57 = *(v0 + 1320);
    v58 = *(v0 + 1296);
    v59 = *(v0 + 1288);
    v60 = *(v0 + 1264);
    v61 = *(v0 + 1256);
    v62 = *(v0 + 1248);
    v63 = *(v0 + 1240);
    v64 = *(v0 + 1216);
    v65 = *(v0 + 1192);
    v66 = *(v0 + 1176);
    sub_1A937B960(*(v0 + 1432), &qword_1EB386988, &qword_1A9587830);

    v50 = *(v0 + 8);

    return v50(v67);
  }

  v33 = *(v0 + 1520);
  v34 = *(v0 + 1480);
  v35 = *(v0 + 1440);
  v36 = *(v0 + 1320);
  (*(*(v0 + 1312) + 32))(v36, *(v0 + 1352), *(v0 + 1304));
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  v68 = v34;

  sub_1A942778C(sub_1A9431BC8, v37);
  if (!v33)
  {
    v38 = *(v0 + 1480);
    v39 = *(v0 + 1320);
    v40 = *(v0 + 1312);
    v41 = *(v0 + 1304);

    v67 = v68;

    (*(v40 + 8))(v39, v41);
    goto LABEL_16;
  }
}

uint64_t sub_1A94218A4()
{
  v1 = *(*v0 + 1528);
  v2 = *(*v0 + 1176);
  v3 = *(*v0 + 1168);
  v4 = *(*v0 + 1160);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94219FC, 0, 0);
}

uint64_t sub_1A94219FC()
{
  v1 = v0[179];
  v2 = v0[170];
  (*(v0[164] + 56))(v2, 0, 1, v0[163]);
  sub_1A942C62C(v2, v1);
  v3 = v0[182];
  v4 = v0[181];
  v5 = v0[169];
  v6 = v0[163];
  sub_1A9391BAC(v0[179], v5, &qword_1EB386988, &qword_1A9587830);
  if (v4(v5, 1, v6) == 1)
  {
    v7 = v0[185];
    v8 = v0[169];

    sub_1A937B960(v8, &qword_1EB386988, &qword_1A9587830);
    v43 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v19 = v0[178];
    v20 = v0[177];
    v21 = v0[176];
    v22 = v0[175];
    v23 = v0[174];
    v24 = v0[173];
    v25 = v0[172];
    v26 = v0[171];
    v28 = v0[170];
    v29 = v0[169];
    v30 = v0[168];
    v31 = v0[167];
    v32 = v0[166];
    v33 = v0[165];
    v34 = v0[162];
    v35 = v0[161];
    v36 = v0[158];
    v37 = v0[157];
    v38 = v0[156];
    v39 = v0[155];
    v40 = v0[152];
    v41 = v0[149];
    v42 = v0[147];
    sub_1A937B960(v0[179], &qword_1EB386988, &qword_1A9587830);

    v27 = v0[1];

    return v27(v43);
  }

  v9 = v0[190];
  v10 = v0[185];
  v11 = v0[180];
  v12 = v0[165];
  (*(v0[164] + 32))(v12, v0[169], v0[163]);
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v44 = v10;

  sub_1A942778C(sub_1A9431BC8, v13);
  if (!v9)
  {
    v15 = v0[185];
    v16 = v0[165];
    v17 = v0[164];
    v18 = v0[163];

    v43 = v44;

    (*(v17 + 8))(v16, v18);
    goto LABEL_8;
  }
}

uint64_t sub_1A9421D68(uint64_t a1, const void *a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v51, a2, sizeof(v51));
  memcpy(v50, a2, sizeof(v50));
  CoreSynthesizer.Voice.primaryLocales.getter(v47);
  v10 = v48;
  v11 = v49;
  v12 = sub_1A93780F4(v47, v48);
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v12);
  (*(v15 + 16))(v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v11 + 8);
  v17 = sub_1A957C598();
  CoreSynthesizer.Voice.secondaryLocales.getter(v44);
  v18 = v45;
  v19 = v46;
  v20 = sub_1A93780F4(v44, v45);
  v21 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v20);
  (*(v23 + 16))(v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v19 + 8);
  v25 = sub_1A957C598();
  v43 = v17;
  sub_1A942AF14(v25);
  v26 = v43;
  sub_1A9378138(v44);
  sub_1A9378138(v47);
  v27 = *(v26 + 16);
  if (v27)
  {
    v29 = *(v5 + 16);
    v28 = v5 + 16;
    v30 = *(v28 + 64);
    v40[1] = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v41 = *(v28 + 56);
    v42 = v29;
    v32 = v4;
    v33 = (v28 - 8);
    do
    {
      v42(v9, v31, v32);
      v34 = sub_1A957B1A8();
      v35 = a1;
      v37 = v36;
      (*v33)(v9, v32);
      v38 = v37;
      a1 = v35;
      sub_1A93AB260(v50, v34, v38);

      v31 += v41;
      --v27;
    }

    while (v27);
  }
}

uint64_t sub_1A94220A0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v8 = sub_1A957B308();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v72 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v75 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v74 = &v72 - v20;
  v22 = *a1;
  v21 = a1[1];
  memcpy(v98, a1 + 2, sizeof(v98));
  v24 = *a2;
  v23 = a2[1];
  memcpy(v99, a2 + 2, sizeof(v99));
  v83 = v22;
  v95 = v22;
  v100 = v21;
  v96 = v21;
  v79 = a1;
  memcpy(v97, a1 + 2, sizeof(v97));
  CoreSynthesizer.Voice.primaryLocales.getter(&v86);
  v25 = v88;
  sub_1A93780F4(&v86, *(&v87 + 1));
  v85 = a3;
  v26 = *(v25 + 8);
  v27 = sub_1A957C428();
  v81 = v23;
  v82 = v24;
  *&v93 = v24;
  *(&v93 + 1) = v23;
  memcpy(v94, a2 + 2, sizeof(v94));
  CoreSynthesizer.Voice.primaryLocales.getter(v90);
  v28 = v92;
  sub_1A93780F4(v90, v91);
  v80 = a3;
  v84 = a3;
  v29 = *(v28 + 8);
  LODWORD(a1) = sub_1A957C428();
  sub_1A9378138(v90);
  sub_1A9378138(&v86);
  if (((v27 ^ a1) & 1) == 0)
  {
    v95 = v83;
    v96 = v100;
    v30 = v79;
    memcpy(v97, (v79 + 16), sizeof(v97));
    CoreSynthesizer.Voice.primaryLocales.getter(&v86);
    v31 = v88;
    v32 = sub_1A93780F4(&v86, *(&v87 + 1));
    MEMORY[0x1EEE9AC00](v32, v33);
    v34 = v80;
    *(&v72 - 2) = v80;
    v35 = *(v31 + 8);
    v27 = sub_1A957C428();
    *&v93 = v82;
    *(&v93 + 1) = v81;
    memcpy(v94, a2 + 2, sizeof(v94));
    CoreSynthesizer.Voice.primaryLocales.getter(v90);
    v36 = v92;
    v37 = sub_1A93780F4(v90, v91);
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v72 - 2) = v34;
    v39 = *(v36 + 8);
    v40 = sub_1A957C428();
    sub_1A9378138(v90);
    sub_1A9378138(&v86);
    if (((v27 ^ v40) & 1) == 0)
    {
      v80 = v4;
      v95 = v78;
      result = sub_1A9422ACC();
      v42 = result;
      v43 = (result + 80);
      v44 = -*(result + 16);
      v45 = -1;
      do
      {
        if (v44 + v45 == -1)
        {

          v95 = v83;
          v96 = v100;
          memcpy(v97, (v30 + 16), sizeof(v97));
          v49 = v74;
          CoreSynthesizer.Voice.primaryLocale.getter(v74);
          v79 = sub_1A957B118();
          v51 = v50;
          v52 = v77;
          v53 = *(v76 + 8);
          v53(v49, v77);
          v54 = v81;
          *&v93 = v82;
          *(&v93 + 1) = v81;
          memcpy(v94, v99, sizeof(v94));
          v55 = v75;
          CoreSynthesizer.Voice.primaryLocale.getter(v75);
          v56 = sub_1A957B118();
          v58 = v57;
          v59 = v55;
          v60 = v53;
          v53(v59, v52);
          if (v79 == v56 && v51 == v58)
          {
          }

          else
          {
            v61 = sub_1A957D3E8();

            if ((v61 & 1) == 0)
            {
              v95 = v83;
              v96 = v100;
              memcpy(v97, v98, sizeof(v97));
              v63 = v54;
              v64 = v72;
              CoreSynthesizer.Voice.primaryLocale.getter(v72);
              v65 = sub_1A957B118();
              v67 = v66;
              v60(v64, v52);
              *&v86 = v65;
              *(&v86 + 1) = v67;
              *&v93 = v82;
              *(&v93 + 1) = v63;
              memcpy(v94, v99, sizeof(v94));
              v68 = v73;
              CoreSynthesizer.Voice.primaryLocale.getter(v73);
              v69 = sub_1A957B118();
              v71 = v70;
              v60(v68, v52);
              v90[0] = v69;
              v90[1] = v71;
              sub_1A93820F4();
              v48 = sub_1A957CD18();

              goto LABEL_14;
            }
          }

          v95 = v83;
          v96 = v100;
          *&v93 = v82;
          *(&v93 + 1) = v54;
          sub_1A93820F4();
          v62 = sub_1A957CD18() == -1;
          goto LABEL_15;
        }

        if (++v45 >= *(v42 + 16))
        {
          __break(1u);
          return result;
        }

        v46 = v43 + 56;
        v47 = *v43;
        v86 = *(v43 - 3);
        v87 = *(v43 - 2);
        v88 = *(v43 - 1);
        v89 = v47;
        v95 = v83;
        v96 = v100;
        memcpy(v97, (v30 + 16), sizeof(v97));
        *&v93 = v82;
        *(&v93 + 1) = v81;
        memcpy(v94, a2 + 2, sizeof(v94));
        result = sub_1A9422C00(&v95, &v93);
        v43 = v46;
      }

      while (!result);
      v48 = result;
LABEL_14:

      v62 = v48 == -1;
LABEL_15:
      LOBYTE(v27) = v62;
    }
  }

  return v27 & 1;
}

uint64_t sub_1A9422794(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A9422ACC()
{
  if (*v0 >= 2uLL)
  {
    if (*v0 != 2)
    {
    }

    sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A958BF20;
    *(v1 + 32) = *sub_1A9493C6C();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 65) = 0u;
    v2 = sub_1A9493C9C();
  }

  else
  {
    sub_1A937829C(&qword_1EB387258, &qword_1A958C0C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A958BF20;
    *(v1 + 32) = *sub_1A9493C9C();
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 65) = 0u;
    v2 = sub_1A9493CB4();
  }

  *(v1 + 88) = *v2;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 121) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = -64;
  v3 = sub_1A9493C54();
  result = v1;
  *(v1 + 200) = *v3;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 233) = 0u;
  *(v1 + 256) = 1;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0;
  *(v1 + 304) = -64;
  return result;
}

uint64_t sub_1A9422C00(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  v8 = *(a1 + 96);
  v7 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a2 + 8);
  v12 = *(a2 + 9);
  v14 = *(a2 + 10);
  v13 = *(a2 + 11);
  v16 = *(a2 + 12);
  v15 = *(a2 + 13);
  v17 = *(a2 + 14);
  v18 = *v2;
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v21 = *(v2 + 48);
  v22 = v21 >> 6;
  v23 = *(a2 + 120);
  if (v21 >> 6 > 1)
  {
    v28 = *(a1 + 40);
    v27 = *(a1 + 48);
    v29 = *(a1 + 56);
    v31 = *(a2 + 5);
    v30 = *(a2 + 6);
    v32 = *(a2 + 56);
    if (v22 == 2)
    {
      v33 = *(a1 + 16);
      v82 = *a1;
      v83 = v33;
      v84.i64[0] = *(a1 + 32);
      v84.i64[1] = v28;
      v85 = v27;
      v86 = v29;
      *v87 = *(a1 + 57);
      *&v87[3] = *(a1 + 60);
      v88 = v4;
      v89 = v3;
      v90 = v6;
      v91 = v5;
      v92 = v8;
      v93 = v7;
      v94 = v9;
      v95 = v10;
      *(v104 + 15) = *(a1 + 264);
      v104[0] = *(a1 + 249);
      v103 = *(a1 + 233);
      v102 = *(a1 + 217);
      v101 = *(a1 + 201);
      v100 = *(a1 + 185);
      v99 = *(a1 + 169);
      v98 = *(a1 + 153);
      v97 = *(a1 + 137);
      v96 = *(a1 + 121);
      v34 = a2[1];
      v58 = *a2;
      v59 = v34;
      v60 = *(a2 + 4);
      v61 = v31;
      v62 = v30;
      v63 = v32;
      *v64 = *(a2 + 57);
      *&v64[3] = *(a2 + 15);
      v65 = v11;
      v66 = v12;
      v67 = v14;
      v68 = v13;
      v69 = v16;
      v70 = v15;
      v71 = v17;
      v72 = v23;
      *(v81 + 15) = *(a2 + 264);
      v81[0] = *(a2 + 249);
      v80 = *(a2 + 233);
      v79 = *(a2 + 217);
      v78 = *(a2 + 201);
      v77 = *(a2 + 185);
      v76 = *(a2 + 169);
      v75 = *(a2 + 153);
      v74 = *(a2 + 137);
      v73 = *(a2 + 121);
      return (v18.i64[0])(&v82, &v58);
    }

    else
    {
      v18.i64[1] = *(v2 + 24);
      v38 = vorrq_s8(v20, v18);
      if (*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | v19 | (*(v2 + 24) >> 64) || v21 != 192)
      {
        v82.i64[0] = *(a1 + 40);
        v82.i64[1] = v27;
        *&v58 = v31;
        *(&v58 + 1) = v30;
        sub_1A93820F4();
        return sub_1A957CD18();
      }

      else
      {
        v56 = *(a1 + 56);
        v39 = *(a2 + 56);
        sub_1A93B1148();
        sub_1A957C438();
        sub_1A957C438();
        if (*&v82 == v58)
        {

          return 0;
        }

        else
        {
          v42 = sub_1A957D3E8();

          if (v42)
          {
            return 0;
          }

          else
          {
            v82.i8[0] = v29;
            v43 = CoreSynthesizer.Voice.Quality.rawValue.getter();
            v45 = v44;
            LOBYTE(v58) = v39;
            if (CoreSynthesizer.Voice.Quality.rawValue.getter() == v43 && v46 == v45)
            {

              return 1;
            }

            else
            {
              v47 = sub_1A957D3E8();

              if (v47)
              {
                return -1;
              }

              else
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v52 = *v2;
    if (v22)
    {
      v50 = *(a2 + 13);
      v51 = *(a2 + 14);
      v36 = v21 & 0x3F;
      v82 = *v2;
      v83 = v19;
      v48 = v19;
      v49 = v20;
      v84 = v20;
      LOBYTE(v85) = v21 & 0x3F;
      *&v58 = v3;
      *(&v58 + 1) = v6;
      *&v59 = v5;
      *(&v59 + 1) = v8;
      v60 = v7;
      v61 = v9;
      LOBYTE(v62) = v10;
      sub_1A93B17E8();
      sub_1A957C438();
      sub_1A957C438();
      if (v55 == v53 && v57 == v54)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_1A957D3E8();
      }

      v82 = v52;
      v83 = v48;
      v84 = v49;
      LOBYTE(v85) = v36;
      *&v58 = v12;
      *(&v58 + 1) = v14;
      *&v59 = v13;
      *(&v59 + 1) = v16;
      v60 = v15;
      v61 = v51;
      LOBYTE(v62) = v23;
      sub_1A957C438();
      sub_1A957C438();
      if (v55 == v53 && v57 == v54)
      {
        v40 = 1;
      }

      else
      {
        v40 = sub_1A957D3E8();
      }

      v25 = v37 ^ v40;
      v26 = (v37 & 1) == 0;
    }

    else
    {
      sub_1A9387410();
      v24 = sub_1A957CD88();
      v82.i64[0] = v52.i64[0];
      *&v58 = v11;
      v25 = v24 ^ sub_1A957CD88();
      v26 = (v24 & 1) == 0;
    }

    v41 = -1;
    if (v26)
    {
      v41 = 1;
    }

    if (v25)
    {
      return v41;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A9423148(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = *v2;
  v4 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = *(*(sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_1A957B2E8();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v9 = sub_1A957B188();
  v3[18] = v9;
  v10 = *(v9 - 8);
  v3[19] = v10;
  v11 = *(v10 + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = sub_1A957B308();
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94233A4, 0, 0);
}

uint64_t sub_1A94233A4()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if ((Locale.LanguageCode.isMacroLanguage.getter() & 1) == 0)
  {
LABEL_14:
    *(v1 + 248) = 0;
    v36 = *(**(v1 + 72) + 232);
    v52 = (v36 + *v36);
    v37 = v36[1];
    v38 = swift_task_alloc();
    *(v1 + 256) = v38;
    *v38 = v1;
    v38[1] = sub_1A9423AFC;
    v39 = *(v1 + 72);

    return v52();
  }

  v3 = *(v0 + 72);
  v4 = v3[6];
  v5 = v3[7];
  v48 = v3;
  sub_1A93780F4(v3 + 3, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v1 + 176);
    v53 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v7, 0);
    v9 = v53;
    v45 = (v8 + 8);
    v46 = v8;
    v10 = (v6 + 40);
    do
    {
      v12 = *(v1 + 192);
      v11 = *(v1 + 200);
      v50 = *(v1 + 168);
      v13 = v1;
      v14 = *(v10 - 1);
      v15 = *v10;
      swift_bridgeObjectRetain_n();
      sub_1A957B1B8();
      v17 = v48[6];
      v16 = v48[7];
      sub_1A93780F4(v48 + 3, v17);
      v18 = (*(v16 + 16))(v17, v16);
      Locale.withTTSLanguageDisambiguation(overrides:)(v18, v11);

      (*v45)(v12, v50);
      v20 = *(v53 + 16);
      v19 = *(v53 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A93ABB88(v19 > 1, v20 + 1, 1);
      }

      v21 = *(v13 + 200);
      v22 = *(v13 + 168);
      *(v53 + 16) = v20 + 1;
      (*(v46 + 32))(v53 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v20, v21, v22);
      v10 += 2;
      --v7;
      v1 = v13;
    }

    while (v7);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v1 + 64);
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  v25 = sub_1A9424688(sub_1A942E60C, v24, v9);

  if (!*(v25 + 16))
  {

    goto LABEL_14;
  }

  v26 = *(v1 + 208);
  v27 = *(v1 + 216);
  v28 = *(v1 + 176);
  v29 = *(v1 + 184);
  v30 = *(v1 + 168);
  v31 = *(v1 + 152);
  v32 = *(v1 + 128);
  v33 = *(v1 + 136);
  v49 = *(v1 + 120);
  v51 = *(v1 + 144);
  v47 = *(v1 + 112);
  (*(v28 + 16))(v26, v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v30);

  (*(v28 + 32))(v27, v26, v30);
  Locale.withTTSLanguageDisambiguation(overrides:)(0, v29);
  sub_1A957B2F8();
  v34 = *(v28 + 8);
  *(v1 + 224) = v34;
  *(v1 + 232) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v29, v30);
  sub_1A957B2B8();
  (*(v32 + 8))(v33, v49);
  if ((*(v31 + 48))(v47, 1, v51) == 1)
  {
    v35 = *(v1 + 112);
    v34(*(v1 + 216), *(v1 + 168));
    sub_1A937B960(v35, &qword_1EB386A68, &qword_1A9587F40);
    goto LABEL_14;
  }

  (*(*(v1 + 152) + 32))(*(v1 + 160), *(v1 + 112), *(v1 + 144));
  v41 = swift_task_alloc();
  *(v1 + 240) = v41;
  *v41 = v1;
  v41[1] = sub_1A94238E8;
  v42 = *(v1 + 160);
  v43 = *(v1 + 72);
  v44 = *(v1 + 56);

  return sub_1A9423148(v44, v42);
}

uint64_t sub_1A94238E8()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94239E4, 0, 0);
}

uint64_t sub_1A94239E4()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[21];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2(v3, v4);
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v17 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1A9423AFC(uint64_t a1)
{
  v2 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9423BFC, 0, 0);
}

uint64_t sub_1A9423BFC()
{
  v55 = v0;
  v1 = v0[8];
  v52 = *(v0[22] + 56);
  v52(v0[13], 1, 1, v0[21]);
  v2 = *sub_1A93A7EF0();

  v3 = sub_1A957B148();
  if (*(v2 + 16))
  {
    v5 = sub_1A937A490(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = v0[21];
      v10 = v0[12];
      v9 = v0[13];
      v11 = (*(v2 + 56) + 16 * v5);
      v12 = *v11;
      v13 = v11[1];

      sub_1A957B1B8();
      v52(v10, 0, 1, v8);
      sub_1A942C62C(v10, v9);
      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_6:
  v14 = v0[33];
  v15 = v0[31];
  v16 = v0[8];
  v17 = Locale.LanguageCode.childLanguages.getter();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v19 = sub_1A942B040(sub_1A942E5DC, v18, v14);

  v20 = *(v19 + 16);
  if (v20)
  {
    v51 = v15;
    v21 = v0[22];
    v22 = sub_1A9427810(v20, 0);
    v23 = sub_1A942BBF8(&v54, &v22[(*(v21 + 80) + 32) & ~*(v21 + 80)], v20, v19);

    result = sub_1A932D088();
    if (v23 != v20)
    {
      __break(1u);
      return result;
    }

    v15 = v51;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v25 = v0[13];
  v54 = v22;
  sub_1A94276D4(&v54, v25);
  if (v15)
  {
  }

  else
  {
    v26 = v0[21];
    v27 = v0[22];
    v29 = v0[10];
    v28 = v0[11];
    v30 = v0[9];

    v31 = v54;
    v0[5] = sub_1A937829C(&qword_1EB387268, &unk_1A9591CB0);
    v0[6] = sub_1A93B744C(&qword_1EB386450, &qword_1EB387268, &unk_1A9591CB0);
    v0[2] = v31;
    v32 = v30[6];
    v33 = v30[7];
    sub_1A93780F4(v30 + 3, v32);
    v34 = (*(v33 + 16))(v32, v33);
    sub_1A9419174(v0 + 2, v30 + 3, v34, v28);

    sub_1A9378138(v0 + 2);
    if ((*(v27 + 48))(v28, 1, v26) == 1)
    {
      v35 = v0[13];
      v36 = v0[7];
      sub_1A937B960(v0[11], &qword_1EB386988, &qword_1A9587830);
      sub_1A93A7460(v35, v36, &qword_1EB386988, &qword_1A9587830);
    }

    else
    {
      v37 = v0[21];
      v38 = v0[13];
      v39 = v0[7];
      (*(v0[22] + 32))(v39, v0[11], v37);
      v52(v39, 0, 1, v37);
      sub_1A937B960(v38, &qword_1EB386988, &qword_1A9587830);
    }

    v41 = v0[26];
    v40 = v0[27];
    v43 = v0[24];
    v42 = v0[25];
    v44 = v0[23];
    v45 = v0[20];
    v46 = v0[17];
    v48 = v0[13];
    v47 = v0[14];
    v49 = v0[12];
    v53 = v0[11];

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_1A9424088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v59 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62, v10);
  v66 = &v57 - v11;
  v12 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v57 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v67 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v57 - v24;
  v26 = sub_1A957B2E8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v57 - v34;
  v63 = a2;
  v36 = Locale.LanguageCode.childLanguages.getter();
  v64 = a1;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v37 = *(v27 + 8);
  v37(v35, v26);
  v38 = *(v5 + 48);
  v68 = v4;
  v61 = v38;
  result = (v38)(v25, 1, v4);
  if (result != 1)
  {
    v40 = sub_1A939A620(v25, v36);

    v41 = *(v5 + 8);
    v41(v25, v68);
    if (v40)
    {
LABEL_3:
      v42 = 1;
      return v42 & 1;
    }

    v57 = v41;
    v58 = v5;
    v43 = v67;
    v44 = v68;
    (*(v5 + 16))(v67, v63, v68);
    (*(v5 + 56))(v43, 0, 1, v44);
    sub_1A957B2F8();
    v45 = v65;
    sub_1A957B2B8();
    v37(v32, v26);
    v46 = *(v62 + 48);
    v47 = v66;
    sub_1A9391BAC(v43, v66, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A9391BAC(v45, v47 + v46, &qword_1EB386A68, &qword_1A9587F40);
    v48 = v61;
    v49 = v61(v47, 1, v44);
    v50 = v58;
    if (v49 == 1)
    {
      sub_1A937B960(v45, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v43, &qword_1EB386A68, &qword_1A9587F40);
      if (v48(v47 + v46, 1, v68) == 1)
      {
        sub_1A937B960(v47, &qword_1EB386A68, &qword_1A9587F40);
        goto LABEL_3;
      }
    }

    else
    {
      v51 = v60;
      sub_1A9391BAC(v47, v60, &qword_1EB386A68, &qword_1A9587F40);
      if (v48(v47 + v46, 1, v68) != 1)
      {
        v52 = v47 + v46;
        v53 = v59;
        v54 = v68;
        (*(v50 + 32))(v59, v52, v68);
        sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610]);
        v42 = sub_1A957C098();
        v55 = v53;
        v56 = v57;
        v57(v55, v54);
        sub_1A937B960(v45, &qword_1EB386A68, &qword_1A9587F40);
        sub_1A937B960(v67, &qword_1EB386A68, &qword_1A9587F40);
        v56(v51, v54);
        sub_1A937B960(v47, &qword_1EB386A68, &qword_1A9587F40);
        return v42 & 1;
      }

      sub_1A937B960(v45, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v67, &qword_1EB386A68, &qword_1A9587F40);
      v57(v51, v68);
    }

    sub_1A937B960(v47, &qword_1EB386B70, &unk_1A95888A0);
    v42 = 0;
    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9424688(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v42 = sub_1A957B308();
  v7 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v42, v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x1E69E7CC0];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A93ABB88(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1A93ABB88(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_1A9424958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v56 = a2;
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v48 - v13;
  v15 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v54 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v57 = &v48 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v48 - v28;
  v30 = sub_1A957B2E8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v51 = &v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v48 - v37;
  v55 = a1;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v39 = *(v31 + 8);
  v52 = v31 + 8;
  v53 = v30;
  v50 = v39;
  v39(v38, v30);
  (*(v5 + 16))(v26, v56, v4);
  (*(v5 + 56))(v26, 0, 1, v4);
  v40 = *(v10 + 56);
  sub_1A9391BAC(v29, v14, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A9391BAC(v26, &v14[v40], &qword_1EB386A68, &qword_1A9587F40);
  v41 = *(v5 + 48);
  if (v41(v14, 1, v4) == 1)
  {
    sub_1A937B960(v26, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
    if (v41(&v14[v40], 1, v4) == 1)
    {
      sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
LABEL_10:
      v45 = 1;
      return v45 & 1;
    }

    goto LABEL_6;
  }

  sub_1A9391BAC(v14, v57, &qword_1EB386A68, &qword_1A9587F40);
  if (v41(&v14[v40], 1, v4) == 1)
  {
    sub_1A937B960(v26, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
    (*(v5 + 8))(v57, v4);
LABEL_6:
    sub_1A937B960(v14, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_7;
  }

  v46 = v48;
  (*(v5 + 32))(v48, &v14[v40], v4);
  sub_1A942C3E8(&qword_1EB386490, MEMORY[0x1E6969610]);
  LODWORD(v56) = sub_1A957C098();
  v47 = *(v5 + 8);
  v47(v46, v4);
  sub_1A937B960(v26, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v29, &qword_1EB386A68, &qword_1A9587F40);
  v47(v57, v4);
  sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
  if (v56)
  {
    goto LABEL_10;
  }

LABEL_7:
  v42 = v51;
  sub_1A957B2F8();
  v43 = v54;
  sub_1A957B2B8();
  v50(v42, v53);
  result = (v41)(v43, 1, v4);
  if (result != 1)
  {
    v45 = sub_1A939A620(v43, v49);
    (*(v5 + 8))(v43, v4);
    return v45 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_1A9424F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = a1;
  v12 = sub_1A957B118();
  v14 = v13;
  v15 = *(v7 + 48);
  if (v15(a3, 1, v6))
  {
  }

  else
  {
    v33[0] = a2;
    (*(v7 + 16))(v11, a3, v6);
    v23 = sub_1A957B118();
    v25 = v24;
    (*(v7 + 8))(v11, v6);
    if (v12 == v23 && v14 == v25)
    {

      return 1;
    }

    v27 = sub_1A957D3E8();

    if (v27)
    {
      return 1;
    }
  }

  v16 = sub_1A957B118();
  v18 = v17;
  if (v15(a3, 1, v6))
  {

LABEL_5:
    v33[4] = sub_1A957B118();
    v33[5] = v19;
    v33[2] = sub_1A957B118();
    v33[3] = v20;
    sub_1A93820F4();
    v21 = sub_1A957CCE8();

    return v21 == -1;
  }

  (*(v7 + 16))(v11, a3, v6);
  v28 = sub_1A957B118();
  v30 = v29;
  (*(v7 + 8))(v11, v6);
  if (v16 == v28 && v18 == v30)
  {

    return 0;
  }

  else
  {
    v32 = sub_1A957D3E8();

    result = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return result;
}

BOOL sub_1A9425200()
{
  v0 = sub_1A937829C(&qword_1EB387280, &qword_1A958C648);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v8 - v3;
  sub_1A957B138();
  v5 = sub_1A957B128();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) == 1;
  sub_1A937B960(v4, &qword_1EB387280, &qword_1A958C648);
  return v6;
}

uint64_t sub_1A94252F0()
{
  v0 = type metadata accessor for VoiceResolver(0);
  v1 = sub_1A942C3E8(&qword_1ED96FD70, type metadata accessor for VoiceResolver);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

unint64_t sub_1A9425364(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1A957B308();
  v5 = MEMORY[0x1E6969770];
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
  v6 = sub_1A957C058();
  return sub_1A9425438(a1, v6, MEMORY[0x1E6969770], &unk_1ED970210, v5, MEMORY[0x1E6969788]);
}

unint64_t sub_1A9425438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8);
      sub_1A942C3E8(v25, v26);
      v21 = sub_1A957C098();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

void *sub_1A94255D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1A9425364(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    __src[0] = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A9426300();
      v11 = __src[0];
    }

    v12 = *(v11 + 48);
    v13 = sub_1A957B308();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    memmove(a2, (*(v11 + 56) + 280 * v8), 0x118uLL);
    sub_1A9425D70(v8, v11);
    *v3 = v11;
    return nullsub_23(a2);
  }

  else
  {
    sub_1A93847E0(__src);
    return memcpy(a2, __src, 0x118uLL);
  }
}

uint64_t sub_1A94256D4(uint64_t a1, int a2)
{
  v3 = v2;
  v69 = sub_1A957B308();
  v6 = *(v69 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v69, v8);
  v68 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v71 = a2;
  result = sub_1A957D118();
  v13 = result;
  if (*(v10 + 16))
  {
    v65[0] = v3;
    v14 = 0;
    v70 = v10;
    v17 = *(v10 + 64);
    v16 = (v10 + 64);
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v15;
    v21 = (v18 + 63) >> 6;
    v65[1] = v6 + 16;
    v66 = result;
    v72 = (v6 + 32);
    v22 = result + 64;
    v67 = v6;
    while (v20)
    {
      v34 = __clz(__rbit64(v20));
      v35 = (v20 - 1) & v20;
LABEL_17:
      v38 = v34 | (v14 << 6);
      v103 = v35;
      v39 = v70;
      v40 = *(v70 + 48);
      v102 = *(v6 + 72);
      v41 = v40 + v102 * v38;
      v42 = v68;
      if (v71)
      {
        (*(v6 + 32))(v68, v41, v69);
        v43 = *(v39 + 56) + 280 * v38;
        v44 = *v43;
        v75 = *(v43 + 8);
        v45 = *(v43 + 24);
        v76 = *(v43 + 32);
        v77 = v44;
        v46 = *(v43 + 48);
        v81 = *(v43 + 40);
        v78 = v46;
        v79 = v45;
        v80 = *(v43 + 56);
        v82 = *(v43 + 57);
        v47 = *(v43 + 64);
        v85 = *(v43 + 80);
        v83 = v47;
        v48 = *(v43 + 96);
        v87 = *(v43 + 104);
        v88 = v48;
        v86 = *(v43 + 112);
        v84 = *(v43 + 120);
        v49 = *(v43 + 128);
        v89 = *(v43 + 136);
        v50 = *(v43 + 152);
        v93 = *(v43 + 144);
        v90 = v50;
        v91 = v49;
        v92 = *(v43 + 160);
        v51 = *(v43 + 176);
        LODWORD(v49) = *(v43 + 184);
        v94 = *(v43 + 188);
        v73 = *(v43 + 192);
        v74 = v49;
        v95 = *(v43 + 193);
        v52 = *(v43 + 216);
        v98 = *(v43 + 200);
        v99 = v52;
        v53 = *(v43 + 248);
        v96 = *(v43 + 232);
        v97 = v53;
        v54 = *(v43 + 264);
        v100 = *(v43 + 272);
        v101 = v54;
      }

      else
      {
        (*(v6 + 16))(v68, v41, v69);
        memcpy(v112, (*(v39 + 56) + 280 * v38), 0x118uLL);
        v100 = *&v112[17];
        v101 = *(&v112[16] + 1);
        v98 = *(&v112[12] + 8);
        v99 = *(&v112[13] + 8);
        v96 = *(&v112[14] + 8);
        v97 = *(&v112[15] + 8);
        v95 = BYTE1(v112[12]);
        v94 = HIDWORD(v112[11]);
        v73 = LOBYTE(v112[12]);
        v74 = BYTE8(v112[11]);
        v92 = v112[10];
        v51 = *&v112[11];
        v90 = *(&v112[9] + 1);
        v93 = *&v112[9];
        v91 = *&v112[8];
        v88 = *&v112[6];
        v89 = *(&v112[8] + 1);
        v86 = *&v112[7];
        v87 = *(&v112[6] + 1);
        v84 = BYTE8(v112[7]);
        v85 = v112[5];
        v83 = v112[4];
        v82 = BYTE9(v112[3]);
        v80 = BYTE8(v112[3]);
        v81 = *(&v112[2] + 1);
        v78 = *&v112[3];
        v79 = *(&v112[1] + 1);
        v76 = *&v112[2];
        v77 = *&v112[0];
        v75 = *(v112 + 8);
        sub_1A937B3DC(v112, &v110);
      }

      v13 = v66;
      v55 = *(v66 + 40);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
      result = sub_1A957C058();
      v56 = -1 << *(v13 + 32);
      v57 = result & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*(v22 + 8 * (v57 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        v6 = v67;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *(v22 + 8 * v58);
          if (v62 != -1)
          {
            v23 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v57) & ~*(v22 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
      v6 = v67;
LABEL_9:
      v109 = v74;
      v106 = v73;
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v72)(*(v13 + 48) + v102 * v23, v42);
      v24 = *(v13 + 56) + 280 * v23;
      *v24 = v77;
      *(v24 + 8) = v75;
      v25 = v76;
      *(v24 + 24) = v79;
      *(v24 + 32) = v25;
      v26 = v78;
      *(v24 + 40) = v81;
      *(v24 + 48) = v26;
      *(v24 + 56) = v80;
      *(v24 + 57) = v82;
      *(v24 + 62) = v111;
      *(v24 + 58) = v110;
      v27 = v85;
      *(v24 + 64) = v83;
      *(v24 + 80) = v27;
      v28 = v87;
      *(v24 + 96) = v88;
      *(v24 + 104) = v28;
      *(v24 + 112) = v86;
      *(v24 + 120) = v84;
      *(v24 + 121) = v112[0];
      *(v24 + 124) = *(v112 + 3);
      v29 = v89;
      *(v24 + 128) = v91;
      *(v24 + 136) = v29;
      v30 = v90;
      *(v24 + 144) = v93;
      *(v24 + 152) = v30;
      *(v24 + 160) = v92;
      *(v24 + 176) = v51;
      *(v24 + 184) = v109;
      *(v24 + 185) = v107;
      *(v24 + 187) = v108;
      *(v24 + 188) = v94;
      *(v24 + 192) = v106;
      *(v24 + 193) = v95;
      *(v24 + 198) = v105;
      *(v24 + 194) = v104;
      v31 = v98;
      *(v24 + 216) = v99;
      *(v24 + 200) = v31;
      v32 = v96;
      *(v24 + 248) = v97;
      *(v24 + 232) = v32;
      v33 = v100;
      *(v24 + 264) = v101;
      *(v24 + 272) = v33;
      ++*(v13 + 16);
      v20 = v103;
    }

    v36 = v14;
    while (1)
    {
      v14 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v14 >= v21)
      {
        break;
      }

      v37 = v16[v14];
      ++v36;
      if (v37)
      {
        v34 = __clz(__rbit64(v37));
        v35 = (v37 - 1) & v37;
        goto LABEL_17;
      }
    }

    if ((v71 & 1) == 0)
    {

      v3 = v65[0];
      goto LABEL_37;
    }

    v63 = v70;
    v64 = 1 << *(v70 + 32);
    v3 = v65[0];
    if (v64 >= 64)
    {
      bzero(v16, ((v64 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v64;
    }

    *(v63 + 16) = 0;
  }

LABEL_37:
  *v3 = v13;
  return result;
}

char *sub_1A9425D70(int64_t a1, uint64_t a2)
{
  v41 = sub_1A957B308();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v41, v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1A957CE28();
    v14 = v12;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v38 = (v13 + 1) & v12;
    v39 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = a2 + 64;
    v42 = v14;
    v18 = v41;
    do
    {
      v19 = v17;
      v20 = v17 * v11;
      v21 = *(a2 + 48) + v17 * v11;
      v22 = v40;
      v23 = v15;
      v39(v40, v21, v18);
      v24 = *(a2 + 40);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
      v25 = sub_1A957C058();
      result = (*v36)(v22, v18);
      v26 = v42;
      v27 = v25 & v42;
      if (a1 >= v38)
      {
        if (v27 >= v38 && a1 >= v27)
        {
LABEL_15:
          v15 = v23;
          v17 = v19;
          if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v42;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
              v26 = v42;
            }
          }

          v30 = *(a2 + 56);
          result = (v30 + 280 * a1);
          v31 = (v30 + 280 * v11);
          if (a1 != v11 || result >= v31 + 280)
          {
            result = memmove(result, v31, 0x118uLL);
            v26 = v42;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v38 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v15 = v23;
      v9 = v37;
      v17 = v19;
LABEL_4:
      v11 = (v11 + 1) & v26;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1A9426068(const void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1A9425364(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1A9426300();
      goto LABEL_7;
    }

    sub_1A94256D4(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_1A9425364(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_1A9426238(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7] + 280 * v16;

  return sub_1A93F0618(a1, v23);
}

void *sub_1A9426238(unint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A957B308();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = memcpy((a4[7] + 280 * a1), a3, 0x118uLL);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1A9426300()
{
  v1 = v0;
  v29 = sub_1A957B308();
  v32 = *(v29 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29, v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB387290, &qword_1A958C738);
  v5 = *v0;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27[0] = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v30 = v5;
    v31 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v22 = v29;
        v21 = v30;
        v23 = v32;
        v24 = *(v32 + 72) * v20;
        v25 = v28;
        (*(v32 + 16))(v28, *(v30 + 48) + v24, v29);
        v20 *= 280;
        memcpy(v35, (*(v21 + 56) + v20), 0x118uLL);
        v26 = v31;
        (*(v23 + 32))(*(v31 + 48) + v24, v25, v22);
        memcpy((*(v26 + 56) + v20), v35, 0x118uLL);
        result = sub_1A937B3DC(v35, &v34);
        v15 = v33;
      }

      while (v33);
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

        v1 = v27[0];
        v7 = v31;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v33 = (v19 - 1) & v19;
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

uint64_t sub_1A94265A0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
  v37 = a2;
  v14 = sub_1A957C058();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770]);
      v24 = sub_1A957C098();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1A9426BDC(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1A9426880(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1A957B308();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  result = sub_1A957CEA8();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
      result = sub_1A957C058();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1A9426BDC(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9426880(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1A9426E80();
      goto LABEL_12;
    }

    sub_1A94270B8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
  v16 = sub_1A957C058();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1A942C3E8(&unk_1ED970210, MEMORY[0x1E6969770]);
      v24 = sub_1A957C098();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A9426E80()
{
  v1 = v0;
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  v8 = *v0;
  v9 = sub_1A957CE98();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_1A94270B8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1A957B308();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  v11 = sub_1A957CEA8();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
      result = sub_1A957C058();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

size_t sub_1A94273D4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v10 = *(sub_1A957B308() - 8);
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
  v15 = *(sub_1A957B308() - 8);
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

char *sub_1A94275AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[280 * v8])
    {
      memmove(v12, v13, 280 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94276D4(void **a1, uint64_t a2)
{
  v4 = *(sub_1A957B308() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1A942BE9C(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_1A942790C(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_1A942778C(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1A942BEB0(v5);
  }

  v7 = *(v5 + 2);
  result = sub_1A9427A44(a1, a2);
  *v2 = v5;
  return result;
}

size_t sub_1A9427810(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v4 = *(sub_1A957B308() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A942790C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = sub_1A957D388();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A957B308();
        v8 = sub_1A957C518();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_1A957B308() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1A9428260(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1A9427B4C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1A9427A44(uint64_t (*a1)(_BYTE *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1A957D388();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1A957C518();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1A9429370(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1A9428094(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1A9427B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v80 = a5;
  v9 = sub_1A957B308();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v74 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v70 = &v63 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v77 = &v63 - v20;
  result = MEMORY[0x1EEE9AC00](v19, v21);
  v86 = &v63 - v23;
  v65 = a2;
  if (a3 != a2)
  {
    v26 = *(v10 + 16);
    v24 = v10 + 16;
    v25 = v26;
    v27 = *a4;
    v28 = *(v24 + 56);
    v78 = (v24 - 8);
    v79 = (v24 + 32);
    v29 = v27 + v28 * (a3 - 1);
    v71 = -v28;
    v72 = (v24 + 16);
    v30 = a1 - a3;
    v73 = v27;
    v64 = v28;
    v31 = v27 + v28 * a3;
    v75 = v26;
    v76 = v24;
    while (2)
    {
      v68 = v29;
      v69 = a3;
      v66 = v31;
      v67 = v30;
      v32 = v77;
      while (1)
      {
        v81 = v30;
        v25(v86, v31, v9);
        v25(v32, v29, v9);
        v33 = sub_1A957B118();
        v35 = v34;
        v36 = v80;
        v37 = *v79;
        if ((*v79)(v80, 1, v9))
        {
          break;
        }

        v42 = v36;
        v43 = v70;
        v25(v70, v42, v9);
        v44 = sub_1A957B118();
        v45 = *v78;
        v46 = v43;
        v48 = v47;
        (*v78)(v46, v9);
        if (v33 == v44 && v35 == v48)
        {
        }

        else
        {
          v60 = sub_1A957D3E8();

          if ((v60 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        v32 = v77;
        v45(v77, v9);
        result = (v45)(v86, v9);
        v25 = v75;
        if (!v73)
        {
LABEL_25:
          __break(1u);
          return result;
        }

LABEL_23:
        v61 = *v72;
        v62 = v74;
        (*v72)(v74, v31, v9);
        swift_arrayInitWithTakeFrontToBack();
        result = (v61)(v29, v62, v9);
        v29 += v71;
        v31 += v71;
        v30 = v81 + 1;
        if (v81 == -1)
        {
          goto LABEL_6;
        }
      }

LABEL_10:
      v32 = v77;
      v38 = sub_1A957B118();
      v40 = v39;
      v41 = v80;
      if (v37(v80, 1, v9))
      {
      }

      else
      {
        v49 = v70;
        v75(v70, v41, v9);
        v50 = sub_1A957B118();
        v52 = v51;
        v53 = *v78;
        (*v78)(v49, v9);
        if (v38 == v50 && v40 == v52)
        {

          v32 = v77;
LABEL_5:
          v53(v32, v9);
          result = (v53)(v86, v9);
          v25 = v75;
LABEL_6:
          a3 = v69 + 1;
          v29 = v68 + v64;
          v30 = v67 - 1;
          v31 = v66 + v64;
          if (v69 + 1 == v65)
          {
            return result;
          }

          continue;
        }

        v54 = sub_1A957D3E8();

        v32 = v77;
        if (v54)
        {
          goto LABEL_5;
        }
      }

      break;
    }

    v55 = v86;
    v84 = sub_1A957B118();
    v85 = v56;
    v82 = sub_1A957B118();
    v83 = v57;
    sub_1A93820F4();
    v58 = sub_1A957CCE8();

    v59 = *v78;
    (*v78)(v32, v9);
    result = (v59)(v55, v9);
    v25 = v75;
    if (v58 != -1)
    {
      goto LABEL_6;
    }

    if (!v73)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1A9428094(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 280 * a3 - 280;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    v22 = v9;
    while (1)
    {
      memcpy(__dst, (v9 + 280), sizeof(__dst));
      memcpy(v19, (v9 + 280), sizeof(v19));
      memcpy(v21, v9, 0x118uLL);
      memcpy(__src, v9, sizeof(__src));
      sub_1A937B3DC(__dst, v17);
      sub_1A937B3DC(v21, v17);
      v12 = a4(v19, __src);
      if (v5)
      {
        memcpy(v16, __src, sizeof(v16));
        sub_1A937B48C(v16);
        memcpy(v17, v19, sizeof(v17));
        return sub_1A937B48C(v17);
      }

      v13 = v12;
      memcpy(v16, __src, sizeof(v16));
      sub_1A937B48C(v16);
      memcpy(v17, v19, sizeof(v17));
      result = sub_1A937B48C(v17);
      if ((v13 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 = v22 + 280;
        --v10;
        if (v7 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      memcpy(v15, (v9 + 280), sizeof(v15));
      memcpy((v9 + 280), v9, 0x118uLL);
      result = memcpy(v9, v15, 0x118uLL);
      if (!v11)
      {
        goto LABEL_3;
      }

      v9 -= 280;
      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9428260(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v199 = a1;
  v10 = sub_1A957B308();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v201 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v218 = &v195 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v227 = &v195 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v225 = &v195 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v214 = &v195 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v212 = &v195 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v195 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  result = MEMORY[0x1EEE9AC00](v35, v36);
  v209 = a3;
  v41 = a3[1];
  v224 = a5;
  v208 = v40;
  if (v41 < 1)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_131:
    v42 = *v199;
    if (!*v199)
    {
      goto LABEL_172;
    }

    a4 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v208;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_166;
    }

    result = a4;
LABEL_134:
    v189 = v6;
    v232 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v190 = v224;
      while (*v209)
      {
        v191 = *(result + 16 * a4);
        v192 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_1A9429C00(&(*v209)[*(v43 + 72) * v191], &(*v209)[*(v43 + 72) * *(result + 16 * (a4 - 1) + 32)], &(*v209)[*(v43 + 72) * v6], v42, v190);
        if (v189)
        {
        }

        if (v6 < v191)
        {
          goto LABEL_159;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v192 = sub_1A938911C(v192);
        }

        if (a4 - 2 >= *(v192 + 2))
        {
          goto LABEL_160;
        }

        v193 = &v192[16 * a4];
        *v193 = v191;
        *(v193 + 1) = v6;
        v232 = v192;
        sub_1A93CE710(a4 - 1);
        result = v232;
        a4 = *(v232 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_170;
    }
  }

  v196 = &v195 - v38;
  v195 = v39;
  v42 = 0;
  v43 = v40 + 16;
  v221 = (v40 + 8);
  v222 = (v40 + 48);
  v219 = (v40 + 32);
  v44 = MEMORY[0x1E69E7CC0];
  v226 = v10;
  v198 = a4;
  v210 = v33;
  v215 = v40 + 16;
  while (1)
  {
    v203 = v42;
    v45 = v42 + 1;
    v202 = v44;
    if ((v42 + 1) >= v41)
    {
      v89 = v42 + 1;
      goto LABEL_42;
    }

    v211 = v41;
    v46 = *v209;
    v47 = *(v208 + 72);
    v48 = *(v208 + 16);
    v49 = v196;
    v223 = &(*v209)[v47 * v45];
    v48(v196);
    v216 = v46;
    v50 = &v46[v47 * v203];
    v51 = v203;
    v52 = v195;
    v217 = v48;
    (v48)(v195, v50, v10);
    v53 = v224;
    LODWORD(v213) = sub_1A9424F14(v49, v52, v224);
    if (v6)
    {
      v194 = *v221;
      (*v221)(v52, v10);
      v194(v196, v10);
    }

    v197 = 0;
    v54 = *v221;
    (*v221)(v52, v10);
    v220 = v54;
    result = (v54)(v196, v10);
    v55 = v51 + 2;
    v56 = v216 + v47 * (v51 + 2);
    v57 = v47;
    v216 = v47;
    v42 = v223;
    do
    {
      if (v211 == v55)
      {
        v89 = v211;
        goto LABEL_28;
      }

      v63 = v217;
      (v217)(v33, v56, v10);
      v223 = v42;
      v63(v212, v42, v10);
      v64 = v53;
      v65 = sub_1A957B118();
      v66 = v10;
      v68 = v67;
      v69 = *v222;
      if ((*v222)(v64, 1, v66))
      {
      }

      else
      {
        v78 = v64;
        v79 = v214;
        v63(v214, v78, v66);
        v80 = sub_1A957B118();
        v82 = v81;
        v220(v79, v66);
        if (v65 == v80 && v68 == v82)
        {

LABEL_8:
          v58 = 1;
          v59 = v212;
          v33 = v210;
          v43 = v215;
          v60 = v223;
          goto LABEL_9;
        }

        v83 = sub_1A957D3E8();

        if (v83)
        {
          goto LABEL_8;
        }
      }

      v70 = sub_1A957B118();
      v72 = v71;
      v73 = v224;
      v74 = v226;
      if (v69(v224, 1, v226))
      {

        v59 = v212;
        v33 = v210;
        v43 = v215;
        v60 = v223;
LABEL_15:
        v230 = sub_1A957B118();
        v231 = v75;
        v228 = sub_1A957B118();
        v229 = v76;
        sub_1A93820F4();
        v77 = sub_1A957CCE8();

        v58 = v77 == -1;
        goto LABEL_9;
      }

      v84 = v214;
      (v217)(v214, v73, v74);
      v85 = sub_1A957B118();
      v87 = v86;
      v220(v84, v74);
      v60 = v223;
      if (v70 == v85 && v72 == v87)
      {

        v58 = 0;
        v59 = v212;
        v33 = v210;
        v43 = v215;
      }

      else
      {
        v88 = sub_1A957D3E8();

        v58 = 0;
        v59 = v212;
        v33 = v210;
        v43 = v215;
        if ((v88 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_9:
      v61 = v59;
      v10 = v226;
      v62 = v220;
      v220(v61, v226);
      result = (v62)(v33, v10);
      ++v55;
      v57 = v216;
      v56 += v216;
      v42 = v60 + v216;
      v53 = v224;
    }

    while (((v213 ^ v58) & 1) == 0);
    v89 = v55 - 1;
LABEL_28:
    v6 = v197;
    v90 = v202;
    a4 = v198;
    if (v213)
    {
      if (v89 >= v203)
      {
        if (v203 < v89)
        {
          v91 = v57 * (v89 - 1);
          v92 = v89 * v57;
          v211 = v89;
          v42 = v203;
          v93 = v89;
          v94 = v203;
          v95 = v203 * v57;
          do
          {
            if (v94 != --v93)
            {
              v97 = *v209;
              if (!*v209)
              {
                goto LABEL_169;
              }

              v42 = &v97[v95];
              v98 = *v219;
              (*v219)(v201, &v97[v95], v226, v90);
              if (v95 < v91 || v42 >= &v97[v92])
              {
                v96 = v226;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v96 = v226;
                if (v95 != v91)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = v98(&v97[v91], v201, v96);
              v90 = v202;
              v10 = v96;
              v43 = v215;
              v57 = v216;
            }

            ++v94;
            v91 -= v57;
            v92 -= v57;
            v95 += v57;
          }

          while (v94 < v93);
          v6 = v197;
          a4 = v198;
          v33 = v210;
          v89 = v211;
        }

        goto LABEL_42;
      }

LABEL_165:
      __break(1u);
LABEL_166:
      result = sub_1A938911C(a4);
      goto LABEL_134;
    }

LABEL_42:
    v99 = v209[1];
    if (v89 >= v99)
    {
      goto LABEL_51;
    }

    if (__OFSUB__(v89, v203))
    {
      goto LABEL_162;
    }

    if (v89 - v203 >= a4)
    {
      goto LABEL_51;
    }

    if (__OFADD__(v203, a4))
    {
      goto LABEL_163;
    }

    if ((v203 + a4) >= v99)
    {
      v100 = v209[1];
    }

    else
    {
      v100 = v203 + a4;
    }

    if (v100 < v203)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (v89 == v100)
    {
LABEL_51:
      v101 = v89;
      goto LABEL_52;
    }

    v197 = v6;
    v148 = *v209;
    v149 = *(v208 + 72);
    v150 = *(v208 + 16);
    v151 = &(*v209)[v149 * (v89 - 1)];
    v216 = -v149;
    v152 = v203 - v89;
    v217 = v148;
    v200 = v149;
    v153 = &v148[v89 * v149];
    v220 = v150;
    v204 = v100;
LABEL_108:
    v211 = v89;
    v205 = v153;
    v206 = v152;
    v154 = v152;
    v207 = v151;
    v155 = v151;
LABEL_109:
    v223 = v154;
    (v150)(v225, v153, v10);
    (v150)(v227, v155, v10);
    v156 = sub_1A957B118();
    v158 = v157;
    v159 = *v222;
    v160 = v224;
    if ((*v222)(v224, 1, v10))
    {

      goto LABEL_111;
    }

    v166 = v160;
    v167 = v214;
    (v150)(v214, v166, v10);
    v168 = sub_1A957B118();
    v170 = v169;
    v213 = *v221;
    v213(v167, v10);
    if (v156 == v168 && v158 == v170)
    {

      v43 = v215;
      goto LABEL_122;
    }

    v183 = sub_1A957D3E8();

    v43 = v215;
    if (v183)
    {
LABEL_122:
      v10 = v226;
      v184 = v213;
      v213(v227, v226);
      result = (v184)(v225, v10);
      goto LABEL_123;
    }

LABEL_111:
    v161 = sub_1A957B118();
    v163 = v162;
    v164 = v224;
    v165 = v226;
    if (v159(v224, 1, v226))
    {

      goto LABEL_119;
    }

    v171 = v214;
    (v220)(v214, v164, v165);
    v172 = sub_1A957B118();
    a4 = v173;
    v174 = v165;
    v175 = *v221;
    (*v221)(v171, v174);
    if (v161 != v172 || v163 != a4)
    {
      break;
    }

    v43 = v215;
LABEL_105:
    v10 = v226;
    v175(v227, v226);
    v175(v225, v10);
LABEL_106:
    v150 = v220;
LABEL_107:
    v89 = v211 + 1;
    v151 = v207 + v200;
    v152 = v206 - 1;
    v153 = &v205[v200];
    v101 = v204;
    if (v211 + 1 != v204)
    {
      goto LABEL_108;
    }

    v6 = v197;
    v33 = v210;
LABEL_52:
    v42 = v224;
    if (v101 < v203)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v44 = v202;
    }

    else
    {
      result = sub_1A9389130(0, *(v202 + 2) + 1, 1, v202);
      v44 = result;
    }

    v103 = *(v44 + 2);
    v102 = *(v44 + 3);
    a4 = v103 + 1;
    if (v103 >= v102 >> 1)
    {
      result = sub_1A9389130((v102 > 1), v103 + 1, 1, v44);
      v44 = result;
    }

    *(v44 + 2) = a4;
    v104 = &v44[16 * v103];
    *(v104 + 4) = v203;
    *(v104 + 5) = v101;
    v223 = *v199;
    if (!v223)
    {
      goto LABEL_171;
    }

    v204 = v101;
    if (v103)
    {
      while (1)
      {
        v105 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v106 = *(v44 + 4);
          v107 = *(v44 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_72:
          if (v109)
          {
            goto LABEL_150;
          }

          v122 = &v44[16 * a4];
          v124 = *v122;
          v123 = *(v122 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_153;
          }

          v128 = &v44[16 * v105 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v116 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v116)
          {
            goto LABEL_156;
          }

          if (__OFADD__(v126, v131))
          {
            goto LABEL_157;
          }

          if (v126 + v131 >= v108)
          {
            if (v108 < v131)
            {
              v105 = a4 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v132 = &v44[16 * a4];
        v134 = *v132;
        v133 = *(v132 + 1);
        v116 = __OFSUB__(v133, v134);
        v126 = v133 - v134;
        v127 = v116;
LABEL_86:
        if (v127)
        {
          goto LABEL_152;
        }

        v135 = &v44[16 * v105];
        v137 = *(v135 + 4);
        v136 = *(v135 + 5);
        v116 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v116)
        {
          goto LABEL_155;
        }

        if (v138 < v126)
        {
          goto LABEL_3;
        }

LABEL_93:
        v143 = v105 - 1;
        if (v105 - 1 >= a4)
        {
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
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v209)
        {
          goto LABEL_168;
        }

        v144 = v44;
        a4 = *&v44[16 * v143 + 32];
        v145 = *&v44[16 * v105 + 40];
        sub_1A9429C00(&(*v209)[*(v208 + 72) * a4], &(*v209)[*(v208 + 72) * *&v44[16 * v105 + 32]], &(*v209)[*(v208 + 72) * v145], v223, v42);
        if (v6)
        {
        }

        if (v145 < a4)
        {
          goto LABEL_146;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v146 = v144;
        }

        else
        {
          v146 = sub_1A938911C(v144);
        }

        v10 = v226;
        if (v143 >= *(v146 + 2))
        {
          goto LABEL_147;
        }

        v147 = &v146[16 * v143];
        *(v147 + 4) = a4;
        *(v147 + 5) = v145;
        v232 = v146;
        result = sub_1A93CE710(v105);
        v44 = v232;
        a4 = *(v232 + 16);
        v33 = v210;
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v110 = &v44[16 * a4 + 32];
      v111 = *(v110 - 64);
      v112 = *(v110 - 56);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_148;
      }

      v115 = *(v110 - 48);
      v114 = *(v110 - 40);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_149;
      }

      v117 = &v44[16 * a4];
      v119 = *v117;
      v118 = *(v117 + 1);
      v116 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v116)
      {
        goto LABEL_151;
      }

      v116 = __OFADD__(v108, v120);
      v121 = v108 + v120;
      if (v116)
      {
        goto LABEL_154;
      }

      if (v121 >= v113)
      {
        v139 = &v44[16 * v105 + 32];
        v141 = *v139;
        v140 = *(v139 + 1);
        v116 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v116)
        {
          goto LABEL_158;
        }

        if (v108 < v142)
        {
          v105 = a4 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v41 = v209[1];
    v42 = v204;
    a4 = v198;
    if (v204 >= v41)
    {
      goto LABEL_131;
    }
  }

  v176 = sub_1A957D3E8();

  v43 = v215;
  if (v176)
  {
    goto LABEL_105;
  }

LABEL_119:
  v177 = v225;
  v230 = sub_1A957B118();
  v231 = v178;
  v179 = v227;
  v228 = sub_1A957B118();
  v229 = v180;
  sub_1A93820F4();
  a4 = sub_1A957CCE8();

  v181 = *v221;
  v182 = v179;
  v10 = v226;
  (*v221)(v182, v226);
  result = (v181)(v177, v10);
  if (a4 != -1)
  {
    goto LABEL_106;
  }

LABEL_123:
  v185 = v223;
  if (v217)
  {
    v186 = v218;
    a4 = *v219;
    (*v219)(v218, v153, v10);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v155, v186, v10);
    v155 += v216;
    v153 += v216;
    v187 = __CFADD__(v185, 1);
    v154 = v185 + 1;
    v150 = v220;
    if (v187)
    {
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_1A9429370(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(_BYTE *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v7 = *v87;
    if (*v87)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_95;
    }

    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      ++v8;
    }

    else
    {
      v12 = *a3;
      v13 = (*a3 + 280 * v11);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(v100, v13, sizeof(v100));
      memcpy(v102, (v12 + 280 * v10), 0x118uLL);
      memcpy(__src, (v12 + 280 * v10), sizeof(__src));
      sub_1A937B3DC(__dst, v98);
      sub_1A937B3DC(v102, v98);
      v14 = a4(v100, __src);
      if (v6)
      {
LABEL_104:
        memcpy(v97, __src, sizeof(v97));
        sub_1A937B48C(v97);
        memcpy(v98, v100, sizeof(v98));
        sub_1A937B48C(v98);
      }

      v15 = v10;
      v16 = v14;
      memcpy(v97, __src, sizeof(v97));
      sub_1A937B48C(v97);
      memcpy(v98, v100, sizeof(v98));
      result = sub_1A937B48C(v98);
      v17 = v15 + 2;
      if (v15 + 2 >= v7)
      {
        v18 = v15;
        v8 = v15 + 2;
        if ((v16 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v18 = v15;
        v19 = v12 + 280 * v15 + 280;
        do
        {
          v8 = v17;
          memcpy(v95, (v19 + 280), sizeof(v95));
          memcpy(v94, (v19 + 280), sizeof(v94));
          memcpy(v96, v19, sizeof(v96));
          memcpy(v93, v19, sizeof(v93));
          sub_1A937B3DC(v95, v92);
          sub_1A937B3DC(v96, v92);
          v20 = a4(v94, v93);
          memcpy(v91, v93, sizeof(v91));
          sub_1A937B48C(v91);
          memcpy(v92, v94, sizeof(v92));
          result = sub_1A937B48C(v92);
          if ((v16 ^ v20))
          {
            v11 = v8 - 1;
            if ((v16 & 1) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_14;
          }

          v17 = v8 + 1;
          v19 += 280;
        }

        while (v7 != v8 + 1);
        v11 = v8;
        v8 = v7;
        if ((v16 & 1) == 0)
        {
LABEL_23:
          v10 = v18;
          goto LABEL_24;
        }
      }

LABEL_14:
      if (v8 < v18)
      {
        goto LABEL_127;
      }

      v10 = v18;
      if (v18 <= v11)
      {
        v21 = 280 * v8 - 280;
        v7 = 280 * v18;
        v22 = v8;
        v83 = v10;
        do
        {
          if (v10 != --v22)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            memcpy(v96, (v23 + v7), sizeof(v96));
            memmove((v23 + v7), (v23 + v21), 0x118uLL);
            result = memcpy((v23 + v21), v96, 0x118uLL);
          }

          ++v10;
          v21 -= 280;
          v7 += 280;
        }

        while (v10 < v22);
        v10 = v83;
      }
    }

LABEL_24:
    v24 = a3[1];
    if (v8 >= v24)
    {
      goto LABEL_136;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_123;
    }

    if (v8 - v10 >= a6)
    {
      goto LABEL_136;
    }

    v25 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v10)
    {
      goto LABEL_126;
    }

    if (v8 == v25)
    {
LABEL_136:
      if (v8 < v10)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v72 = *a3;
      v73 = *a3 + 280 * v8 - 280;
      v82 = v25;
      v84 = v10;
      v7 = v10 - v8 + 1;
      do
      {
        v85 = v7;
        v74 = v73;
        for (i = v73; ; i -= 280)
        {
          memcpy(__dst, (i + 280), sizeof(__dst));
          memcpy(v100, (i + 280), sizeof(v100));
          memcpy(v102, i, 0x118uLL);
          memcpy(__src, i, sizeof(__src));
          sub_1A937B3DC(__dst, v98);
          sub_1A937B3DC(v102, v98);
          v76 = a4(v100, __src);
          if (v6)
          {
            goto LABEL_104;
          }

          v77 = v76;
          memcpy(v97, __src, sizeof(v97));
          sub_1A937B48C(v97);
          memcpy(v98, v100, sizeof(v98));
          result = sub_1A937B48C(v98);
          if ((v77 & 1) == 0)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_129;
          }

          memcpy(v96, (i + 280), sizeof(v96));
          memcpy((i + 280), i, 0x118uLL);
          memcpy(i, v96, 0x118uLL);
          if (!v7)
          {
            break;
          }

          ++v7;
        }

        ++v8;
        v73 = v74 + 280;
        v7 = v85 - 1;
      }

      while (v8 != v82);
      v8 = v82;
      v10 = v84;
      if (v82 < v84)
      {
        goto LABEL_122;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v27 = *(v9 + 2);
    v26 = *(v9 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_1A9389130((v26 > 1), v27 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v28;
    v29 = &v9[16 * v27];
    *(v29 + 4) = v10;
    *(v29 + 5) = v8;
    v30 = *v87;
    if (!*v87)
    {
      goto LABEL_132;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v9[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_109;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_110;
      }

      v43 = &v9[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_112;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_115;
      }

      if (v47 >= v39)
      {
        v65 = &v9[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_121;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v28 == 3)
    {
      v32 = *(v9 + 4);
      v33 = *(v9 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_52:
      if (v35)
      {
        goto LABEL_111;
      }

      v48 = &v9[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_114;
      }

      v54 = &v9[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_117;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_118;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v58 = &v9[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_66:
    if (v53)
    {
      goto LABEL_113;
    }

    v61 = &v9[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_116;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_73:
    v7 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_128;
    }

    v69 = *&v9[16 * v7 + 32];
    v70 = *&v9[16 * v31 + 40];
    sub_1A942A750((*a3 + 280 * v69), (*a3 + 280 * *&v9[16 * v31 + 32]), (*a3 + 280 * v70), v30, a4, a5);
    if (v6)
    {
    }

    if (v70 < v69)
    {
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1A938911C(v9);
    }

    if (v7 >= *(v9 + 2))
    {
      goto LABEL_108;
    }

    v71 = &v9[16 * v7];
    *(v71 + 4) = v69;
    *(v71 + 5) = v70;
    v103 = v9;
    result = sub_1A93CE710(v31);
    v9 = v103;
    v28 = *(v103 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_123:
  __break(1u);
LABEL_124:
  result = sub_1A938911C(v9);
  v9 = result;
LABEL_95:
  v103 = v9;
  v78 = *(v9 + 2);
  if (v78 < 2)
  {
  }

  while (*a3)
  {
    v79 = *&v9[16 * v78];
    v80 = *&v9[16 * v78 + 24];
    sub_1A942A750((*a3 + 280 * v79), (*a3 + 280 * *&v9[16 * v78 + 16]), (*a3 + 280 * v80), v7, a4, a5);
    if (v6)
    {
    }

    if (v80 < v79)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1A938911C(v9);
    }

    if (v78 - 2 >= *(v9 + 2))
    {
      goto LABEL_120;
    }

    v81 = &v9[16 * v78];
    *v81 = v79;
    *(v81 + 1) = v80;
    v103 = v9;
    result = sub_1A93CE710(v78 - 1);
    v9 = v103;
    v78 = *(v103 + 2);
    if (v78 <= 1)
    {
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1A9429C00(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, uint64_t a5)
{
  v126 = a5;
  v127 = a3;
  v128 = a1;
  v129 = sub_1A957B308();
  v7 = *(v129 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v129, v9);
  v118 = (v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v114 = v110 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v117 = v110 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v125 = v110 - v20;
  result = MEMORY[0x1EEE9AC00](v19, v21);
  v122 = v110 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  v26 = a2 - v128;
  if (a2 - v128 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_94;
  }

  v27 = &v127[-a2];
  if (&v127[-a2] == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_95;
  }

  v136 = v128;
  v135 = a4;
  if (v26 / v25 < v27 / v25)
  {
    v28 = v26 / v25 * v25;
    if (a4 < v128 || v128 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v128)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v116 = (a4 + v28);
    v134 = a4 + v28;
    if (v28 < 1 || a2 >= v127)
    {
      goto LABEL_92;
    }

    v33 = *(v7 + 16);
    v31 = (v7 + 16);
    v32 = v33;
    v120 = (v31 - 1);
    v121 = (v31 + 4);
    v118 = v33;
    v119 = v31;
    v115 = v25;
    while (1)
    {
      v124 = a2;
      v34 = v129;
      v32(v122, a2, v129);
      v123 = a4;
      v32(v125, a4, v34);
      v35 = sub_1A957B118();
      v37 = v36;
      v38 = *v121;
      v39 = v126;
      if ((*v121)(v126, 1, v34))
      {
      }

      else
      {
        v52 = v117;
        v53 = v129;
        v32(v117, v39, v129);
        v54 = sub_1A957B118();
        v56 = v55;
        v57 = *v120;
        (*v120)(v52, v53);
        if (v35 == v54 && v37 == v56)
        {

LABEL_34:
          v65 = v129;
          v57(v125, v129);
          v57(v122, v65);
          a4 = v123;
          a2 = v124;
          v51 = v115;
          goto LABEL_35;
        }

        v64 = sub_1A957D3E8();

        if (v64)
        {
          goto LABEL_34;
        }
      }

      v40 = sub_1A957B118();
      v42 = v41;
      v43 = v126;
      if (v38(v126, 1, v129))
      {

        a2 = v124;
      }

      else
      {
        v58 = v117;
        v59 = v129;
        v118(v117, v43, v129);
        v60 = sub_1A957B118();
        v62 = v61;
        v63 = *v120;
        (*v120)(v58, v59);
        if (v40 == v60 && v42 == v62)
        {

          a2 = v124;
LABEL_42:
          v67 = v129;
          v63(v125, v129);
          v63(v122, v67);
          a4 = v123;
          v51 = v115;
LABEL_43:
          if (v128 < a4 || v128 >= v51 + a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v128 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v135 = v51 + a4;
          a4 += v51;
          goto LABEL_49;
        }

        v66 = sub_1A957D3E8();

        a2 = v124;
        if (v66)
        {
          goto LABEL_42;
        }
      }

      v44 = v129;
      v45 = v122;
      v132 = sub_1A957B118();
      v133 = v46;
      v47 = v125;
      v130 = sub_1A957B118();
      v131 = v48;
      sub_1A93820F4();
      v49 = sub_1A957CCE8();

      v50 = *v120;
      (*v120)(v47, v44);
      v50(v45, v44);
      a4 = v123;
      v51 = v115;
      if (v49 != -1)
      {
        goto LABEL_43;
      }

LABEL_35:
      if (v128 < a2 || v128 >= v51 + a2)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v128 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v51;
LABEL_49:
      v128 += v51;
      v136 = v128;
      v32 = v118;
      if (a4 >= v116 || a2 >= v127)
      {
        goto LABEL_92;
      }
    }
  }

  v29 = v27 / v25 * v25;
  if (a4 < a2 || a2 + v29 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v68 = a4 + v29;
  if (v29 < 1)
  {
    goto LABEL_91;
  }

  v69 = -v25;
  v70 = (v7 + 16);
  v119 = (v7 + 48);
  v115 = (v7 + 8);
  v112 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v71 = v68;
  v72 = v118;
  v122 = v69;
  v123 = a4;
  v116 = v70;
  while (2)
  {
    while (2)
    {
      v110[0] = v68;
      v73 = a2;
      v74 = a2 + v69;
      v75 = v114;
      v124 = v74;
      v113 = v73;
      while (1)
      {
        if (v73 <= v128)
        {
          v136 = v73;
          v134 = v110[0];
          goto LABEL_92;
        }

        v120 = v127;
        v111 = v68;
        v121 = v71;
        v76 = &v71[v69];
        v77 = *v116;
        v125 = v76;
        v78 = v129;
        v77(v75);
        (v77)(v72, v74, v78);
        v79 = sub_1A957B118();
        v81 = v80;
        v82 = *v119;
        v83 = v126;
        if ((*v119)(v126, 1, v78))
        {
        }

        else
        {
          v96 = v117;
          v97 = v129;
          (v77)(v117, v83, v129);
          v98 = sub_1A957B118();
          v127 = v99;
          v95 = *v115;
          (*v115)(v96, v97);
          if (v79 == v98 && v81 == v127)
          {

            v94 = 1;
LABEL_70:
            v88 = v123;
            v93 = v118;
LABEL_73:
            v89 = v114;
            goto LABEL_74;
          }

          v105 = sub_1A957D3E8();

          v93 = v118;
          if (v105)
          {
            v94 = 1;
            v88 = v123;
            goto LABEL_73;
          }
        }

        v84 = sub_1A957B118();
        v86 = v85;
        v87 = v126;
        if (v82(v126, 1, v129))
        {

          v88 = v123;
          v89 = v114;
LABEL_63:
          v132 = sub_1A957B118();
          v133 = v90;
          v130 = sub_1A957B118();
          v131 = v91;
          sub_1A93820F4();
          v92 = sub_1A957CCE8();

          v93 = v118;

          v94 = v92 == -1;
          v95 = *v115;
          goto LABEL_74;
        }

        v100 = v117;
        v101 = v129;
        (v77)(v117, v87, v129);
        v102 = sub_1A957B118();
        v104 = v103;
        v95 = *v115;
        (*v115)(v100, v101);
        if (v84 == v102 && v86 == v104)
        {

          v94 = 0;
          goto LABEL_70;
        }

        v109 = sub_1A957D3E8();

        v94 = 0;
        v88 = v123;
        v93 = v118;
        v89 = v114;
        if ((v109 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_74:
        v106 = v120;
        v127 = &v122[v120];
        v72 = v93;
        v107 = v93;
        v108 = v129;
        v95(v107, v129);
        v95(v89, v108);
        v71 = v121;
        v73 = v113;
        if (v94)
        {
          break;
        }

        v75 = v89;
        v74 = v124;
        v68 = v125;
        if (v106 < v121 || v127 >= v121)
        {
          swift_arrayInitWithTakeFrontToBack();
          v69 = v122;
        }

        else
        {
          v69 = v122;
          if (v106 != v121)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v71 = v68;
        if (v125 <= v88)
        {
          a2 = v73;
          goto LABEL_91;
        }
      }

      a2 = v124;
      if (v106 >= v113 && v127 < v113)
      {
        v68 = v111;
        v69 = v122;
        if (v106 != v113)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        if (v71 <= v88)
        {
          goto LABEL_91;
        }

        continue;
      }

      break;
    }

    swift_arrayInitWithTakeFrontToBack();
    v68 = v111;
    v69 = v122;
    if (v71 > v88)
    {
      continue;
    }

    break;
  }

LABEL_91:
  v136 = a2;
  v134 = v68;
LABEL_92:
  sub_1A942AC58(&v136, &v135, &v134);
  return 1;
}

uint64_t sub_1A942A750(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v43 = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 280;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 280;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[280 * v12] <= a4)
    {
      memmove(a4, __dst, 280 * v12);
    }

    v15 = (v7 + 280 * v12);
    if (v11 < 280)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_48;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      memcpy(__dsta, v9, sizeof(__dsta));
      memmove(v40, v9, 0x118uLL);
      memcpy(v42, v7, 0x118uLL);
      memmove(__srca, v7, 0x118uLL);
      sub_1A937B3DC(__dsta, v38);
      sub_1A937B3DC(v42, v38);
      v18 = a5(v40, __srca);
      if (v6)
      {
        memcpy(v37, __srca, sizeof(v37));
        sub_1A937B48C(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1A937B48C(v38);
        v30 = &v15[-v7] / 280;
        if (v10 < v7 || v10 >= v7 + 280 * v30 || v10 != v7)
        {
          v29 = 280 * v30;
          v27 = v10;
          goto LABEL_52;
        }

        return 1;
      }

      v19 = v18;
      memcpy(v37, __srca, sizeof(v37));
      sub_1A937B48C(v37);
      memcpy(v38, v40, sizeof(v38));
      sub_1A937B48C(v38);
      if (v19)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 280;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 280;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 280;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v10, v16, 0x118uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[280 * v14] <= a4)
  {
    memmove(a4, __src, 280 * v14);
  }

  v15 = (v7 + 280 * v14);
  if (v13 >= 280 && v9 > v10)
  {
    v20 = -v7;
    v35 = v7;
    v33 = -v7;
    while (2)
    {
      v34 = v9;
      v9 -= 280;
      v21 = &v15[v20];
      v8 -= 280;
      v22 = v15;
      while (1)
      {
        v15 = v22;
        v22 -= 280;
        memcpy(__dsta, v22, sizeof(__dsta));
        memmove(v40, v22, 0x118uLL);
        memcpy(v42, v9, 0x118uLL);
        memcpy(__srca, v9, sizeof(__srca));
        sub_1A937B3DC(__dsta, v38);
        sub_1A937B3DC(v42, v38);
        v23 = a5(v40, __srca);
        if (v6)
        {
          memcpy(v37, __srca, sizeof(v37));
          sub_1A937B48C(v37);
          memcpy(v38, v40, sizeof(v38));
          sub_1A937B48C(v38);
          v26 = v21 / 280;
          v27 = v34;
          v28 = v35;
          if (v34 < v35 || v34 >= &v35[280 * v26] || v34 != v35)
          {
            v29 = 280 * v26;
            goto LABEL_53;
          }

          return 1;
        }

        v24 = v23;
        memcpy(v37, __srca, sizeof(v37));
        sub_1A937B48C(v37);
        memcpy(v38, v40, sizeof(v38));
        sub_1A937B48C(v38);
        v25 = v8 + 280;
        if (v24)
        {
          break;
        }

        if (v25 < v15 || v8 >= v15 || v25 != v15)
        {
          memmove(v8, v22, 0x118uLL);
        }

        v21 -= 280;
        v8 -= 280;
        if (v22 <= v35)
        {
          v15 = v22;
          v9 = v34;
          v7 = v35;
          goto LABEL_48;
        }
      }

      if (v25 < v34 || v8 >= v34)
      {
        memmove(v8, v9, 0x118uLL);
        v7 = v35;
        v20 = v33;
      }

      else
      {
        v7 = v35;
        v20 = v33;
        if (v25 != v34)
        {
          memmove(v8, v9, 0x118uLL);
        }
      }

      if (v15 > v7 && v9 > v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_48:
  v31 = &v15[-v7] / 280;
  if (v9 < v7 || v9 >= v7 + 280 * v31 || v9 != v7)
  {
    v29 = 280 * v31;
    v27 = v9;
LABEL_52:
    v28 = v7;
LABEL_53:
    memmove(v27, v28, v29);
  }

  return 1;
}

uint64_t sub_1A942AC58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1A957B308();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1A942AD3C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v10 = *(sub_1A957B308() - 8);
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
  v15 = *(sub_1A957B308() - 8);
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

uint64_t sub_1A942AF14(uint64_t result)
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

  v3 = sub_1A942AD3C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  result = sub_1A957B308();
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

uint64_t sub_1A942B040(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a1;
  v52 = *MEMORY[0x1E69E9840];
  v6 = sub_1A957B308();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a3 + 32);
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v40 = v13;
    v46 = v12;
    v47 = v10;
    v51 = v4;
    v42 = &v39;
    MEMORY[0x1EEE9AC00](v10, v14);
    v41 = &v39 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v41, v15);
    v16 = 0;
    v49 = a3;
    v18 = *(a3 + 56);
    a3 += 56;
    v17 = v18;
    v19 = 1 << *(a3 - 24);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v17;
    v12 = ((v19 + 63) >> 6);
    v43 = 0;
    v44 = v7 + 2;
    v45 = (v7 + 1);
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v50 = (v21 - 1) & v21;
LABEL_12:
      v13 = v22 | (v16 << 6);
      v25 = *(v49 + 48) + v7[9] * v13;
      v4 = v7;
      v26 = v7[2];
      v27 = v46;
      v28 = v47;
      v26(v46, v25, v47);
      v29 = v51;
      v30 = v48(v27);
      v51 = v29;
      if (v29)
      {
        (*v45)(v27, v28);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v31 = v30;
      v10 = (*v45)(v27, v28);
      v7 = v4;
      v21 = v50;
      if (v31)
      {
        *&v41[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1A942B6C8(v41, v40, v43, v49);
          goto LABEL_18;
        }
      }
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_17;
      }

      v24 = *(a3 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v35 = v10;
    v36 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v36;
    v10 = v35;
  }

  v37 = swift_slowAlloc();
  v38 = sub_1A942B638(v37, v13, a3, v48);

  result = MEMORY[0x1AC587CD0](v37, -1, -1);
  if (!v4)
  {
    result = v38;
  }

LABEL_18:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A942B3D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_1A957B308();
  v6 = *(*(v40 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v40, v7);
  v38 = a3;
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v35 = v9 + 16;
  v36 = v9;
  v33 = 0;
  v34 = (v9 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v20 = v19 | (v11 << 6);
    v21 = v40;
    v22 = v39;
LABEL_11:
    (*(v36 + 16))(v22, *(v38 + 48) + *(v36 + 72) * v20, v21);
    v25 = v37(v22);
    v26 = v22;
    if (v4)
    {
      return (*v34)(v22, v21);
    }

    v27 = v25;
    result = (*v34)(v26, v21);
    if (v27)
    {
      *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v38;

        return sub_1A942B6C8(v32, v31, v33, v29);
      }
    }
  }

  v23 = v11;
  v21 = v40;
  v22 = v39;
  while (1)
  {
    v11 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v24 = *(v13 + 8 * v11);
    ++v23;
    if (v24)
    {
      v17 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v11 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A942B638(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1A942B3D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A942B6C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1A957B308();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB387288, &qword_1A958C650);
  result = sub_1A957CEB8();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1A942C3E8(&qword_1ED970220, MEMORY[0x1E6969770]);
    result = sub_1A957C058();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A942B9F0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A942BAE4;

  return v6(v2 + 32);
}

uint64_t sub_1A942BAE4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A942BBF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_1A957B308();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}