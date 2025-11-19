uint64_t sub_1A9388EE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v17 = v6 - 48;
    v5 -= 48;
    v18 = v12;
    do
    {
      v19 = v5 + 48;
      v20 = *(v18 - 6);
      v18 -= 48;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          v23 = *v17;
          v24 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v24;
          *v5 = v23;
        }

        if (v12 <= v4 || (v6 -= 48, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v19 != v12)
      {
        v21 = *v18;
        v22 = *(v18 + 2);
        *(v5 + 1) = *(v18 + 1);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v25 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v26 = (v25 >> 3) + (v25 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v26])
  {
    memmove(v6, v4, 48 * v26);
  }

  return 1;
}

char *sub_1A9389130(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386950, &unk_1A9587700);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A9389234(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386948, &qword_1A95876F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9389354(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386930, &qword_1A95876E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386938, &qword_1A95876F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A938949C(void *result)
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

  result = sub_1A9389354(result, v11, 1, v3);
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

  sub_1A937829C(&qword_1EB386938, &qword_1A95876F0);
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

char *sub_1A93895E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386948, &qword_1A95876F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A9389700()
{
  result = qword_1EB386940;
  if (!qword_1EB386940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386940);
  }

  return result;
}

uint64_t sub_1A9389758()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB38DF58);
  sub_1A937731C(v0, qword_1EB38DF58);
  return sub_1A957BC78();
}

unint64_t sub_1A93897DC()
{
  type metadata accessor for VoiceDatabaseClient();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  result = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v0 + 136) = result;
  *(v0 + 144) = 0;
  *(v0 + 152) = 2;
  *(v0 + 112) = 1;
  qword_1EB391D28 = v0;
  return result;
}

uint64_t VoiceDatabaseClient.__allocating_init(readOnly:)(char a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v2 + 144) = 0;
  *(v2 + 152) = 2;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t static VoiceDatabaseClient.shared.getter()
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceDatabaseClient.shared.setter(uint64_t a1)
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB391D28 = a1;
}

uint64_t (*static VoiceDatabaseClient.shared.modify())()
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A9389A20@<X0>(void *a1@<X8>)
{
  if (qword_1EB391D20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB391D28;
}

uint64_t sub_1A9389AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB391D20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB391D28 = v1;
}

uint64_t VoiceDatabaseClient.init(readOnly:)(char a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = sub_1A939056C(MEMORY[0x1E69E7CC0]);
  *(v1 + 144) = 0;
  *(v1 + 152) = 2;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1A9389B74()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = *(v0 + 112);
    type metadata accessor for VoiceDatabase();
    v7 = v2;
    v3 = sub_1A93DA58C();
    v4 = v0;
    v1 = VoiceDatabase.__allocating_init(additionalLoaders:context:)(v3, &v7);
    v5 = *(v0 + 120);
    *(v4 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1A9389BF8(uint64_t a1)
{
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t (*sub_1A9389C08(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9389B74();
  return sub_1A9389C50;
}

uint64_t sub_1A9389C50(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
}

uint64_t sub_1A9389C60()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for VoiceDatabaseXPC.Client();
    v1 = VoiceDatabaseXPC.Client.__allocating_init()();
    v3 = *(v0 + 128);
    *(v2 + 128) = v1;
  }

  return v1;
}

uint64_t sub_1A9389CC8(uint64_t a1)
{
  v2 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t (*sub_1A9389CD8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9389C60();
  return sub_1A9389D20;
}

uint64_t sub_1A9389D20(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 128);
  *(v1 + 128) = v2;
}

uint64_t sub_1A9389D30()
{
  v1 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v6 = &v13 - v5;
  if (!*(v0 + 144))
  {
    v7 = sub_1A957C688();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v9 = sub_1A9391AAC(&qword_1EB3862B0, v8, type metadata accessor for VoiceDatabaseClient);
    v10 = swift_allocObject();
    v10[2] = v0;
    v10[3] = v9;
    v10[4] = v0;
    swift_retain_n();
    v11 = sub_1A938A404(0, 0, v6, &unk_1A9587720, v10);
    v12 = *(v0 + 144);
    *(v0 + 144) = v11;
  }

  return result;
}

uint64_t sub_1A9389E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v9 = sub_1A937829C(&qword_1EB3869A8, &qword_1A9587928);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9389FCC, a4, 0);
}

uint64_t sub_1A9389FCC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = sub_1A93DA21C();
  v8 = *v7;
  v9 = v7[1];

  sub_1A957BA78();

  sub_1A957C6E8();
  v10 = *(v5 + 8);
  v10(v2, v4);
  sub_1A957C6F8();
  v10(v3, v4);
  v0[13] = sub_1A9391AAC(&qword_1EB3862B0, v11, type metadata accessor for VoiceDatabaseClient);
  swift_beginAccess();
  v12 = v0[13];
  v13 = v0[5];
  v14 = *(MEMORY[0x1E69E8678] + 4);
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_1A938A164;
  v16 = v0[12];
  v17 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 15, v13, v12, v17);
}

uint64_t sub_1A938A164()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A938A274, v2, 0);
}

uint64_t sub_1A938A274()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 64);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v5 + 136);
    *(v5 + 136) = MEMORY[0x1E69E7CC8];

    if ((TTSIsBaseSystem() & 1) == 0)
    {
      v7 = [objc_opt_self() defaultCenter];
      [v7 postNotificationName:*MEMORY[0x1E6958350] object:0];
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 40);
    v10 = *(MEMORY[0x1E69E8678] + 4);
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_1A938A164;
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);

    return MEMORY[0x1EEE6D9C8](v0 + 120, v9, v8, v13);
  }
}

uint64_t sub_1A938A404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1A9391BAC(a3, v28 - v12, &qword_1EB388000, &qword_1A9587710);
  v14 = sub_1A957C688();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1A937B960(v13, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1A957C5A8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1A957C1C8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1A938A738(char a1)
{
  result = swift_beginAccess();
  *(v1 + 152) = a1;
  return result;
}

uint64_t sub_1A938A7C8()
{
  v1[2] = v0;
  v2 = sub_1A957BC88();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938A894, v0, 0);
}

uint64_t sub_1A938A894()
{
  v1 = (*(**(v0 + 16) + 248))();
  if (v1 == 2)
  {
    v2 = (*(**(v0 + 16) + 168))();
    *(v0 + 56) = v2;
    v3 = *(*v2 + 168);
    v11 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_1A938AA5C;

    return v11();
  }

  else
  {
    v7 = v1;
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);

    v10 = *(v0 + 8);

    return v10(v7 & 1);
  }
}

uint64_t sub_1A938AA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1A938AD24;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_1A938AB84;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A938AB84()
{
  (*(**(v0 + 16) + 256))(1);
  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1A937731C(v2, qword_1EB38DF58);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1A957BC68();
  v6 = sub_1A957CA68();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A9324000, v5, v6, "VoiceDB service reachable", v11, 2u);
    MEMORY[0x1AC587CD0](v11, -1, -1);
  }

  (*(v10 + 8))(v8, v9);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14(1);
}

uint64_t sub_1A938AD24()
{
  v1 = v0[7];
  v2 = v0[2];

  (*(*v2 + 256))(0);
  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1A937731C(v6, qword_1EB38DF58);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_1A957BC68();
  v10 = sub_1A957CA68();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1A9324000, v9, v10, "VoiceDB service not reachable %@", v13, 0xCu);
    sub_1A937B960(v14, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v18 = v0[5];
  v17 = v0[6];

  v19 = v0[1];

  return v19(0);
}

uint64_t sub_1A938AF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1A938AFE4;

  return sub_1A938A7C8();
}

uint64_t sub_1A938AFE4(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *v1;

  if (a1)
  {
    v14 = (v3[3] + *v3[3]);
    v6 = *(v3[3] + 4);
    v7 = swift_task_alloc();
    v3[8] = v7;
    *v7 = v5;
    v7[1] = sub_1A938B224;
    v8 = v3[4];
  }

  else
  {
    v14 = (v3[5] + *v3[5]);
    v9 = *(v3[5] + 4);
    v10 = swift_task_alloc();
    v3[9] = v10;
    *v10 = v5;
    v10[1] = sub_1A938B318;
    v11 = v3[6];
  }

  v12 = v3[2];

  return v14(v12);
}

uint64_t sub_1A938B224()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A938B318()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A938B40C(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v4 = *(*(sub_1A937829C(&unk_1EB387B80, qword_1A9587740) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v5 = sub_1A957AFD8();
  v3[41] = v5;
  v6 = *(v5 - 8);
  v3[42] = v6;
  v7 = *(v6 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938B508, v2, 0);
}

uint64_t sub_1A938B508()
{
  v1 = *(v0 + 304);
  v2 = (*(**(v0 + 312) + 144))();
  *(v0 + 352) = v2;
  memcpy((v0 + 16), v1, 0x118uLL);
  v7 = (*v2 + 480);
  v8 = (*v7 + **v7);
  v3 = (*v7)[1];
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_1A938B680;
  v5 = *(v0 + 320);

  return v8(v5, v0 + 16);
}

uint64_t sub_1A938B680()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 352);
  v8 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = sub_1A938B96C;
  }

  else
  {
    v6 = sub_1A938B7BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A938B7BC()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A937B960(v3, &unk_1EB387B80, qword_1A9587740);
  }

  else
  {
    v4 = *(v2 + 32);
    v4(v0[43], v3, v1);
    v5 = [objc_opt_self() defaultManager];
    sub_1A957AFA8();
    v6 = sub_1A957C0C8();

    v7 = [v5 fileExistsAtPath_];

    v8 = v0[43];
    if (v7)
    {
      v4(v0[37], v0[43], v0[41]);
      v9 = 0;
      goto LABEL_7;
    }

    (*(v0[42] + 8))(v0[43], v0[41]);
  }

  v9 = 1;
LABEL_7:
  v10 = v0[43];
  v11 = v0[40];
  (*(v0[42] + 56))(v0[37], v9, 1, v0[41]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A938B96C()
{
  v1 = v0[43];
  v2 = v0[40];

  v3 = v0[1];
  v4 = v0[46];

  return v3();
}

uint64_t sub_1A938B9DC(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BA04, v2, 0);
}

uint64_t sub_1A938BA04()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 48) = v1;
  v2 = *(*v1 + 160);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1A938BB50;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  return v9(v7, v5, v6);
}

uint64_t sub_1A938BB50()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1A938BC8C, v4, 0);
  }

  else
  {
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1A938BC8C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1A938BCF0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BD18, v1, 0);
}

uint64_t sub_1A938BD18()
{
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 40) = v1;
  v2 = *(*v1 + 184);
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A938BE60;
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v8(v6, v5);
}

uint64_t sub_1A938BE60()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1A9391C20, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1A938BF9C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A938BFC4, v1, 0);
}

uint64_t sub_1A938BFC4()
{
  v1 = (*(**(v0 + 16) + 168))();
  *(v0 + 40) = v1;
  v2 = *(*v1 + 176);
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A938C10C;
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v8(v6, v5);
}

uint64_t sub_1A938C10C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[2];

    return MEMORY[0x1EEE6DFA0](sub_1A938C248, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1A938C248()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1A938C2AC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A938C2CC, v1, 0);
}

uint64_t sub_1A938C2CC()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 136);
  if (*(v2 + 16))
  {
    v3 = v0[8];

    v4 = sub_1A938FB7C(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      v7 = v0[1];

      return v7(v6);
    }
  }

  v9 = *(*v0[9] + 328);
  v14 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1A938C48C;
  v12 = v0[8];
  v13 = v0[9];

  return v14(v12);
}

uint64_t sub_1A938C48C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A938C5A4, v3, 0);
}

uint64_t sub_1A938C5A4(uint64_t a1)
{
  v2 = v1[11];
  if (*(v2 + 16) <= 2uLL)
  {
    v3 = v1[8];
    v4 = v1[9];
    swift_beginAccess();

    v5 = *(v4 + 136);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 136);
    *(v4 + 136) = 0x8000000000000000;
    sub_1A9390124(v2, v3, isUniquelyReferenced_nonNull_native);
    *(v4 + 136) = v10;
    a1 = swift_endAccess();
  }

  (*(*v1[9] + 240))(a1);
  v7 = v1[11];
  v8 = v1[1];

  return v8(v7);
}

uint64_t sub_1A938C6A4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A957BC88();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938C764, v1, 0);
}

uint64_t sub_1A938C764()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v10 = (*v2 + 280);
  v11 = (*v10 + **v10);
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  *v6 = v0;
  v6[1] = sub_1A938C918;
  v8 = v0[4];

  return (v11)(v0 + 2, &unk_1A9587778, v3, &unk_1A9587788, v4, v7);
}

uint64_t sub_1A938C918()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[4];
    v5 = sub_1A938CAB0;
  }

  else
  {
    v7 = v2[8];
    v6 = v2[9];
    v8 = v2[4];

    v5 = sub_1A938CA48;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A938CA48()
{
  v1 = v0[2];
  v2 = v0[7];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1A938CAB0()
{
  v2 = v0[8];
  v1 = v0[9];

  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = sub_1A937731C(v6, qword_1EB38DF58);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_1A957BC68();
  v10 = sub_1A957CA78();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[11];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1A9324000, v9, v10, "Error fetching voices: %@. Using fallback voices.", v13, 0xCu);
    sub_1A937B960(v14, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  else
  {
  }

  v17 = v0[4];
  v18 = (*(v0[6] + 8))(v0[7], v0[5]);
  v19 = (*(*v17 + 144))(v18);
  v0[12] = v19;
  v24 = (*v19 + 424);
  v25 = (*v24 + **v24);
  v20 = (*v24)[1];
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_1A938CD98;
  v22 = v0[3];

  return v25(v22);
}

uint64_t sub_1A938CD98(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v9 = *v1;

  v6 = *(v3 + 56);

  v7 = *(v9 + 8);

  return v7(a1);
}

uint64_t sub_1A938CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938CEF4, a2, 0);
}

uint64_t sub_1A938CEF4()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 40) = v1;
  v2 = *(*v1 + 200);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A938D03C;
  v5 = *(v0 + 32);

  return v7(v5);
}

uint64_t sub_1A938D03C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1A9391C20;
  }

  else
  {
    v9 = v4[5];
    v10 = v4[3];

    v4[8] = a1;
    v8 = sub_1A9391C14;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A938D17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938D19C, a2, 0);
}

uint64_t sub_1A938D19C()
{
  v1 = (*(**(v0 + 24) + 144))();
  *(v0 + 40) = v1;
  v6 = (*v1 + 392);
  v7 = (*v6 + **v6);
  v2 = (*v6)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1A938D2F8;
  v4 = *(v0 + 32);

  return v7(v4);
}

uint64_t sub_1A938D2F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_1A9391C20;
  }

  else
  {
    v9 = v4[5];
    v10 = v4[3];

    v4[8] = a1;
    v8 = sub_1A938D438;
    v7 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1A938D45C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1A957BC88();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938D51C, v1, 0);
}

uint64_t sub_1A938D51C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v10 = (*v2 + 280);
  v11 = (*v10 + **v10);
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = sub_1A937829C(&qword_1EB386968, &qword_1A95877C8);
  *v6 = v0;
  v6[1] = sub_1A938D6D0;
  v8 = v0[5];

  return (v11)(v0 + 2, &unk_1A95877B0, v3, &unk_1A95877C0, v4, v7);
}

uint64_t sub_1A938D6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = sub_1A938D86C;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[5];

    v5 = sub_1A938D800;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A938D800()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[8];

  v4 = v0[1];

  return v4(v2, v1);
}

uint64_t sub_1A938D86C()
{
  v2 = v0[9];
  v1 = v0[10];

  if (qword_1EB38DF50 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = sub_1A937731C(v6, qword_1EB38DF58);
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_1A957BC68();
  v10 = sub_1A957CA78();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[12];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1A9324000, v9, v10, "Error fetching locales: %@. Using fallback locales.", v13, 0xCu);
    sub_1A937B960(v14, &qword_1EB386960, &unk_1A9587798);
    MEMORY[0x1AC587CD0](v14, -1, -1);
    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  else
  {
  }

  v17 = v0[5];
  v18 = (*(v0[7] + 8))(v0[8], v0[6]);
  v19 = (*(*v17 + 144))(v18);
  v0[13] = v19;
  v24 = (*v19 + 416);
  v25 = (*v24 + **v24);
  v20 = (*v24)[1];
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_1A938DB54;
  v22 = v0[4];

  return v25(v22);
}

uint64_t sub_1A938DB54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 112);
  v7 = *(*v2 + 104);
  v11 = *v2;

  v8 = *(v5 + 64);

  v9 = *(v11 + 8);

  return v9(a1, a2);
}

uint64_t sub_1A938DCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938DCC0, a2, 0);
}

uint64_t sub_1A938DCC0()
{
  v1 = (*(**(v0 + 24) + 168))();
  *(v0 + 40) = v1;
  v2 = *(*v1 + 192);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1A938DE08;
  v5 = *(v0 + 32);

  return v7(v5);
}

uint64_t sub_1A938DE08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = v6[3];
    v10 = sub_1A9391C20;
  }

  else
  {
    v11 = v6[5];
    v12 = v6[3];

    v6[8] = a2;
    v6[9] = a1;
    v10 = sub_1A9391C24;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1A938DF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A938DF74, a2, 0);
}

uint64_t sub_1A938DF74()
{
  v1 = (*(**(v0 + 24) + 144))();
  *(v0 + 40) = v1;
  v6 = (*v1 + 400);
  v7 = (*v6 + **v6);
  v2 = (*v6)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1A938E0D0;
  v4 = *(v0 + 32);

  return v7(v4);
}

uint64_t sub_1A938E0D0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = v6[3];
    v10 = sub_1A9391C20;
  }

  else
  {
    v11 = v6[5];
    v12 = v6[3];

    v6[8] = a2;
    v6[9] = a1;
    v10 = sub_1A938E21C;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1A938E244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v33 = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = *(Criteria - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Criteria - 8, v6);
  v32[1] = v7;
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v32 - v17;
  v19 = sub_1A937829C(&qword_1EB386978, &qword_1A95877D8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v35 = v32 - v22;
  v23 = sub_1A93DA21C();
  v24 = *v23;
  v25 = v23[1];

  sub_1A957BA78();

  sub_1A957C6E8();
  v26 = *(v10 + 8);
  v32[2] = v10 + 8;
  v34 = v26;
  v26(v15, v9);
  sub_1A9390AA4(a1, v8);
  v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v36;
  sub_1A9390B08(v8, v28 + v27);

  sub_1A937829C(&qword_1EB386958, &qword_1A9587790);
  sub_1A957C6D8();

  v34(v18, v9);
  sub_1A9390AA4(v33, v8);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  sub_1A9390B08(v8, v30 + v27);

  return sub_1A957B938();
}

uint64_t sub_1A938E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *(*a3 + 320);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938E6B8;

  return v10(a4);
}

uint64_t sub_1A938E6B8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9391C18, 0, 0);
}

uint64_t sub_1A938E7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *(*a2 + 320);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1A938E8EC;

  return v9(a3);
}

uint64_t sub_1A938E8EC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A938E9EC, 0, 0);
}

uint64_t sub_1A938EA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v33 = a1;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v4 = *(Criteria - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](Criteria - 8, v6);
  v32[1] = v7;
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386970, &qword_1A95877D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v32 - v17;
  v19 = sub_1A937829C(&qword_1EB386980, &qword_1A9587800);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v35 = v32 - v22;
  v23 = sub_1A93DA21C();
  v24 = *v23;
  v25 = v23[1];

  sub_1A957BA78();

  sub_1A957C6E8();
  v26 = *(v10 + 8);
  v32[2] = v10 + 8;
  v34 = v26;
  v26(v15, v9);
  sub_1A9390AA4(a1, v8);
  v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 16) = v36;
  sub_1A9390B08(v8, v28 + v27);

  sub_1A937829C(&qword_1EB386968, &qword_1A95877C8);
  sub_1A957C6D8();

  v34(v18, v9);
  sub_1A9390AA4(v33, v8);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  sub_1A9390B08(v8, v30 + v27);

  return sub_1A957B938();
}

uint64_t sub_1A938ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = *(*a3 + 336);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1A938EE80;

  return v10(a4);
}

uint64_t sub_1A938EE80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A9391C1C, 0, 0);
}

uint64_t sub_1A938EF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *(*a2 + 336);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1A938F0B4;

  return v9(a3);
}

uint64_t sub_1A938F0B4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A938F1B4, 0, 0);
}

uint64_t sub_1A938F1D8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 physicalMemory];

  if (v1 > 0x147D35700)
  {
    return -1;
  }

  else
  {
    return 150000000;
  }
}

uint64_t sub_1A938F248()
{
  v0 = *(**sub_1A94CF400() + 424);

  v2 = v0(v1);

  return v2;
}

void *VoiceDatabaseClient.deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoiceDatabaseClient.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t VoiceDatabaseClient.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v4[111] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v4[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A938F5B0, v3, 0);
}

uint64_t sub_1A938F5B0()
{
  v18 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = sub_1A957B308();
  v7 = (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_1A9431DA8(&v16, v7);
  sub_1A9431DA8(&v17, v8);

  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(v5, v4, v2, &v16, &v17, v1);
  v14 = (*v3 + 320);
  v15 = (*v14 + **v14);
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  v0[113] = v10;
  *v10 = v0;
  v10[1] = sub_1A938F778;
  v11 = v0[112];
  v12 = v0[110];

  return v15(v11);
}

uint64_t sub_1A938F778(uint64_t a1)
{
  v2 = *(*v1 + 904);
  v3 = *(*v1 + 896);
  v4 = *(*v1 + 880);
  v6 = *v1;
  *(*v1 + 912) = a1;

  sub_1A9391040(v3);

  return MEMORY[0x1EEE6DFA0](sub_1A938F8AC, v4, 0);
}

uint64_t sub_1A938F8AC()
{
  v1 = v0[114];
  v2 = v0[107];
  if (*(v1 + 16))
  {
    memcpy(v0 + 2, (v1 + 32), 0x118uLL);
    sub_1A937B3DC((v0 + 2), (v0 + 37));

    memcpy(v2, v0 + 2, 0x118uLL);
    nullsub_23(v2);
  }

  else
  {
    v3 = v0[114];

    sub_1A93847E0((v0 + 72));
    memcpy(v2, v0 + 72, 0x118uLL);
  }

  v4 = v0[112];
  v5 = v0[111];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A938F98C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A938FA84;

  return v7(a1);
}

uint64_t sub_1A938FA84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1A938FB7C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for VoiceQueryCriteria(0);
  sub_1A9391AAC(&qword_1EB386998, 255, type metadata accessor for VoiceQueryCriteria);
  v5 = sub_1A957C058();

  return sub_1A938FC18(a1, v5);
}

unint64_t sub_1A938FC18(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v5 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1A9390AA4(*(v2 + 48) + v13 * v11, v9);
      sub_1A9391AAC(&qword_1EB3869A0, 255, type metadata accessor for VoiceQueryCriteria);
      v14 = sub_1A957C098();
      sub_1A9391040(v9);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1A938FDA8(uint64_t a1, int a2)
{
  v3 = v2;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v47 = *(Criteria - 8);
  v48 = Criteria;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](Criteria, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
  v49 = a2;
  result = sub_1A957D118();
  v14 = v11;
  v15 = result;
  if (*(v11 + 16))
  {
    v45 = v3;
    v46 = v11;
    v16 = 0;
    v17 = (v11 + 64);
    v18 = 1 << *(v11 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v11 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v47 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v49)
      {
        sub_1A9390B08(v29, v10);
        v30 = *(v14 + 56);
        v31 = v10;
        v32 = *(v30 + 8 * v27);
      }

      else
      {
        sub_1A9390AA4(v29, v10);
        v33 = *(v14 + 56);
        v31 = v10;
        v32 = *(v33 + 8 * v27);
      }

      v34 = *(v15 + 40);
      sub_1A9391AAC(&qword_1EB386998, 255, type metadata accessor for VoiceQueryCriteria);
      v35 = v31;
      result = sub_1A957C058();
      v36 = -1 << *(v15 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1A9390B08(v35, *(v15 + 48) + v28 * v23);
      *(*(v15 + 56) + 8 * v23) = v32;
      v10 = v35;
      ++*(v15 + 16);
      v14 = v46;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v14 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_1A9390124(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v9 = *(*(Criteria - 8) + 64);
  MEMORY[0x1EEE9AC00](Criteria, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1A938FB7C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1A9390354();
      goto LABEL_7;
    }

    sub_1A938FDA8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1A938FB7C(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A9390AA4(a2, v12);
      return sub_1A93902B4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1A93902B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  result = sub_1A9390B08(a2, v8 + *(*(Criteria - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
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

void *sub_1A9390354()
{
  v1 = v0;
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v26 = *(Criteria - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](Criteria - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
  v7 = *v0;
  v8 = sub_1A957D108();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v26 + 72) * v22;
        sub_1A9390AA4(*(v7 + 48) + v23, v6);
        v24 = *(*(v7 + 56) + 8 * v22);
        sub_1A9390B08(v6, *(v9 + 48) + v23);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

unint64_t sub_1A939056C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3869B0, qword_1A9587930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A937829C(&qword_1EB386990, &qword_1A9587908);
    v9 = sub_1A957D128();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v11, v7, &qword_1EB3869B0, qword_1A9587930);
      result = sub_1A938FB7C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      Criteria = type metadata accessor for VoiceQueryCriteria(0);
      result = sub_1A9390B08(v7, v16 + *(*(Criteria - 8) + 72) * v15);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
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

uint64_t sub_1A9390760()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A9389E88(v3, v4, v5, v2);
}

uint64_t sub_1A93907F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938CED4(a1, v5, v4);
}

uint64_t sub_1A93908A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938D17C(a1, v5, v4);
}

uint64_t sub_1A939094C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938DCA0(a1, v5, v4);
}

uint64_t sub_1A93909F8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938DF54(a1, v5, v4);
}

uint64_t sub_1A9390AA4(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 16))(a2, a1, Criteria);
  return a2;
}

uint64_t sub_1A9390B08(uint64_t a1, uint64_t a2)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 32))(a2, a1, Criteria);
  return a2;
}

uint64_t sub_1A9390B6C(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A93836DC;

  return sub_1A938E584(a1, v7, v6, v1 + v5);
}

uint64_t sub_1A9390C50(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A938E7B8(a1, v6, v1 + v5);
}

uint64_t sub_1A9390D34(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A93836DC;

  return sub_1A938ED4C(a1, v7, v6, v1 + v5);
}

uint64_t sub_1A9390E18()
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  v2 = *(*(Criteria - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(Criteria - 8) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(Criteria + 24);
  v8 = sub_1A957B308();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v6 + *(Criteria + 28) + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A9390F5C(uint64_t a1)
{
  v4 = *(type metadata accessor for VoiceQueryCriteria(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A938EF80(a1, v6, v1 + v5);
}

uint64_t sub_1A9391040(uint64_t a1)
{
  Criteria = type metadata accessor for VoiceQueryCriteria(0);
  (*(*(Criteria - 8) + 8))(a1, Criteria);
  return a1;
}

uint64_t dispatch thunk of VoiceDatabaseClient.url(forVoice:)(uint64_t a1, uint64_t a2)
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

uint64_t dispatch thunk of VoiceDatabaseClient.download(voice:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 296);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VoiceDatabaseClient.purge(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.cancelDownload(voice:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9382328;

  return v8(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.voices(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93916A8;

  return v8(a1);
}

uint64_t sub_1A93916A8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of VoiceDatabaseClient.locales(forQuery:)(uint64_t a1)
{
  v4 = *(*v1 + 336);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93918CC;

  return v8(a1);
}

uint64_t sub_1A93918CC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1A9391AAC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1A9391AF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A938F98C(a1, v5);
}

uint64_t sub_1A9391BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A9391CA4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A957BC88();
  sub_1A9377618(v3, a2);
  sub_1A937731C(v3, a2);
  return sub_1A957BC78();
}

uint64_t sub_1A9391D40()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3A7BA8);
  sub_1A937731C(v0, qword_1EB3A7BA8);
  return sub_1A957BC78();
}

uint64_t CoreSynthesizer.Voice.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v13 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v14 = *(v0 + 56);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 88);
  v10 = *(v0 + 104);
  v11 = *(v0 + 96);
  v9 = *(v0 + 112);
  v12 = *(v0 + 120);
  sub_1A957CF08();
  v47 = 0;
  v48 = 0xE000000000000000;
  MEMORY[0x1AC585140](0x6E5B206563696F56, 0xED0000203A656D61);
  MEMORY[0x1AC585140](v3, v4);
  MEMORY[0x1AC585140](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x1AC585140](v1, v2);
  MEMORY[0x1AC585140](0x203A65707974202CLL, 0xE800000000000000);
  *&v26 = v7;
  *(&v26 + 1) = v11;
  v27 = v10;
  v28 = v9;
  LOBYTE(v29) = v12;
  sub_1A957D058();
  MEMORY[0x1AC585140](0xD000000000000011, 0x80000001A95C0B80);
  v25[0] = v1;
  v25[1] = v2;
  v26 = *(v0 + 16);
  v27 = *(v0 + 32);
  v28 = v3;
  v30 = *(v0 + 56);
  v29 = v4;
  v31 = v6;
  v32 = v5;
  v33 = v7;
  v34 = v11;
  v35 = v10;
  v36 = v9;
  v37 = v12;
  *&v46[15] = *(v0 + 264);
  v44 = *(v0 + 217);
  v45 = *(v0 + 233);
  *v46 = *(v0 + 249);
  v40 = *(v0 + 153);
  v41 = *(v0 + 169);
  v42 = *(v0 + 185);
  v43 = *(v0 + 201);
  v38 = *(v0 + 121);
  v39 = *(v0 + 137);
  CoreSynthesizer.Voice.primaryLocales.getter(v24);
  sub_1A937829C(&qword_1EB3869B8, &qword_1A9587970);
  sub_1A957D058();
  sub_1A9378138(v24);
  MEMORY[0x1AC585140](0xD000000000000013, 0x80000001A95C0BA0);
  *&v23[15] = *(v0 + 264);
  v21 = *(v0 + 217);
  v22 = *(v0 + 233);
  *v23 = *(v0 + 249);
  v17 = *(v0 + 153);
  v18 = *(v0 + 169);
  v19 = *(v0 + 185);
  v20 = *(v0 + 201);
  v15 = *(v0 + 121);
  v16 = *(v0 + 137);
  CoreSynthesizer.Voice.secondaryLocales.getter(v25);
  sub_1A957D058();
  sub_1A9378138(v25);
  MEMORY[0x1AC585140](93, 0xE100000000000000);
  return v47;
}

uint64_t CoreSynthesizer.Utterance.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1A957CF08();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1AC585140](0xD000000000000010, 0x80000001A95C0BC0);
  MEMORY[0x1AC585140](*v0, *(v0 + 8));
  MEMORY[0x1AC585140](0x3A6563696F76202CLL, 0xE900000000000020);
  memcpy(__dst, (v0 + 32), sizeof(__dst));
  if (sub_1A932D058(__dst) == 1)
  {
    v1 = 0xE500000000000000;
    v2 = 0x3E6C696E3CLL;
  }

  else
  {
    memcpy(v8, __dst, sizeof(v8));
    v2 = CoreSynthesizer.Voice.description.getter();
    v1 = v3;
  }

  MEMORY[0x1AC585140](v2, v1);

  MEMORY[0x1AC585140](0x69726F697270202CLL, 0xEC000000203A7974);
  v8[0] = *(v0 + 368);
  v4 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v4);

  MEMORY[0x1AC585140](0x697661686562202CLL, 0xEC000000203A726FLL);
  LOBYTE(v8[0]) = *(v0 + 16);
  v5 = sub_1A957C198();
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](0x6865426F7369202CLL, 0xEF203A726F697661);
  LOBYTE(v8[0]) = *(v0 + 17);
  v6 = sub_1A957C198();
  MEMORY[0x1AC585140](v6);

  MEMORY[0x1AC585140](8285, 0xE200000000000000);
  return v9;
}

BOOL TTSAudioFormat.isEqual(_:)(uint64_t a1)
{
  sub_1A9392954(a1, &v17);
  if (!v19)
  {
    sub_1A93929C4(&v17);
    return 0;
  }

  type metadata accessor for TTSAudioFormat();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v21;
  v3 = [v21 channelLayoutTag];
  if (v3 != [v1 channelLayoutTag])
  {

    return 0;
  }

  [v2 streamDescription];
  v4 = v17;
  v5 = v19;
  v6 = HIDWORD(v19);
  v7 = v20;
  v16 = v18;
  [v1 streamDescription];
  v8 = v17;
  v15 = v18;
  v9 = v19;
  v10 = HIDWORD(v19);
  v11 = v20;

  result = 0;
  if (v6 == v10 && (~vaddvq_s32(vandq_s8(vceqq_s32(v16, v15), xmmword_1A9587A00)) & 0xF) == 0 && v5 == v9 && v4 == v8)
  {
    return v7 == v11;
  }

  return result;
}

uint64_t sub_1A9392954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3869D0, &qword_1A9587A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93929C4(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3869D0, &qword_1A9587A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for TTSAudioFormat()
{
  result = qword_1EB391F60[0];
  if (!qword_1EB391F60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB391F60);
  }

  return result;
}

void __swiftcall TTSAudioFormat.init()(TTSAudioFormat *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

__n128 sub_1A9392BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A9392C0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9392C2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

void type metadata accessor for AudioStreamBasicDescription()
{
  if (!qword_1EB3869D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3869D8);
    }
  }
}

uint64_t _s12TextToSpeech15FormattedStreamC11EscapeStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A9392D78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1A957D4F8();
  a4(v6);
  return sub_1A957D548();
}

uint64_t sub_1A9392DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1A9392E64(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

char *FormattedStream.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = *v5;
  *(v5 + 2) = 0;
  (*(*(*(v6 + 80) - 8) + 32))(&v5[*(v6 + 104)], a1);
  return v5;
}

char *FormattedStream.init(_:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 2) = 0;
  (*(*(*(v2 + 80) - 8) + 32))(&v1[*(v2 + 104)], a1);
  return v1;
}

uint64_t sub_1A9392FB4()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t sub_1A9392FF8()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = __OFSUB__(v2, 4);
  v4 = v2 - 4;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v4;
  }

  return result;
}

uint64_t sub_1A939303C()
{
  (*(*v0 + 112))();
  v1 = sub_1A957C378();
  (*(*v0 + 208))(v1);
}

uint64_t sub_1A93930C8(void (*a1)(uint64_t))
{
  v3 = (*(*v1 + 168))();
  a1(v3);
  v4 = *(*v1 + 176);

  return v4();
}

uint64_t sub_1A9393158(uint64_t a1, unint64_t a2)
{
  (*(*v2 + 184))();
  v6 = *(*v2 + 208);
  v6(a1, a2);

  return v6(10, 0xE100000000000000);
}

uint64_t sub_1A9393208()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  sub_1A957D068();
  return swift_endAccess();
}

uint64_t sub_1A93932B0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3)
  {
    if (*a3 == 1)
    {

      v6 = a1;
    }

    else
    {
      sub_1A93820F4();
      v6 = sub_1A957CD08();
      a2 = v9;
    }
  }

  else
  {
    sub_1A93820F4();
    sub_1A957CD08();
    v7 = sub_1A957CD08();
    a2 = v8;

    v6 = v7;
  }

  (*(*v3 + 208))(v6, a2);
}

uint64_t sub_1A9393468(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!*a3)
  {
    v4 = 60;
    v5 = 0xE100000000000000;
    goto LABEL_5;
  }

  if (*a3 == 1)
  {
    v4 = 12092;
    v5 = 0xE200000000000000;
LABEL_5:
    v9 = v4;
    v10 = v5;
    MEMORY[0x1AC585140]();
    v6 = 62;
    v7 = 0xE100000000000000;
    goto LABEL_7;
  }

  v9 = 60;
  v10 = 0xE100000000000000;
  MEMORY[0x1AC585140]();
  v6 = 15919;
  v7 = 0xE200000000000000;
LABEL_7:
  MEMORY[0x1AC585140](v6, v7);
  (*(*v3 + 208))(v9, v10);
}

uint64_t sub_1A9393540(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 2)
  {
    v7 = 8739;
  }

  else
  {
    v7 = 34;
  }

  if (v6 == 2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v6 == 2)
  {
    v9 = 8994;
  }

  else
  {
    v9 = 34;
  }

  v10 = *(*v3 + 208);
  v10(v7, v8);

  v12 = v6;
  (*(*v3 + 216))(a1, a2, &v12);
  v10(v9, v8);
}

uint64_t sub_1A9393638(uint64_t a1, unint64_t a2)
{
  v18 = *(*v2 + 200);
  v18(572662307, 0xE400000000000000);
  v23[0] = 10;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v19 = sub_1A9393C7C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A9394148, v21, a1, a2, v5);
  v6 = *(v19 + 16);
  if (v6)
  {
    v20 = *(*v2 + 184);
    v7 = *(*v2 + 208);
    v8 = (v19 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v20(v13);
      v14 = MEMORY[0x1AC585090](v9, v10, v11, v12);
      v16 = v15;

      v7(v14, v16);

      v7(10, 0xE100000000000000);
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  return (v18)(589439522, 0xE400000000000000);
}

uint64_t sub_1A93937E0(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v26 = *(a3 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = v25 - v16;
  v18 = *a2;
  if (sub_1A957C978() == 1)
  {
    result = sub_1A957C9C8();
    if (v29)
    {
      v27 = v18;
      (*(*v4 + 232))(v28, v29, &v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v25[0] = v13;
    v20 = *(*v4 + 208);
    v20(91, 0xE100000000000000);
    (*(v26 + 16))(v10, a1, a3);
    sub_1A957C3C8();
    swift_getAssociatedConformanceWitness();
    sub_1A957CCB8();
    if (v29)
    {
      v21 = v28;
      v22 = *v4;
      LOBYTE(v28) = v18;
      (*(v22 + 232))(v21, v29, &v28);

      sub_1A957CCB8();
      v23 = v29;
      if (v29)
      {
        v24 = v28;
        do
        {
          v20(8236, 0xE200000000000000);
          LOBYTE(v28) = v18;
          (*(*v4 + 232))(v24, v23, &v28);

          sub_1A957CCB8();
          v24 = v28;
          v23 = v29;
        }

        while (v29);
      }
    }

    (*(v25[0] + 8))(v17, AssociatedTypeWitness);
    return (v20)(93, 0xE100000000000000);
  }

  return result;
}

uint64_t FormattedStream.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1A9393C7C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A957C3B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A939403C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1A939403C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1A957C388();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1A957C248();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1A957C248();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1A957C3B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1A939403C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A957C3B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A939403C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A939403C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A957C248();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A939403C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3869E0, &unk_1A958EA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A9394148(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A957D3E8() & 1;
  }
}

uint64_t sub_1A93941DC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s7ProsodyV17RelativePitchUnitOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7ProsodyV17RelativePitchUnitOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void __swiftcall CoreSynthesizer.Voice._bridgeToObjectiveC()(TTSSpeechVoice *__return_ptr retstr)
{
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for TTSAXResource(0);
  memcpy(__src, v1, sizeof(__src));
  sub_1A937B3DC(__dst, v3);
  v2 = sub_1A9384878(__src);
  [v2 speechVoice];
}

uint64_t static CoreSynthesizer.Voice._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  return sub_1A937822C(v8, &v6);
}

uint64_t static CoreSynthesizer.Voice._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  sub_1A937822C(v8, &v6);
  return 1;
}

uint64_t static CoreSynthesizer.Voice._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (v4 = OBJC_IVAR___TTSAXResource_voice, swift_beginAccess(), memcpy(__dst, (a1 + v4), sizeof(__dst)), memmove(__src, (a1 + v4), 0x118uLL), sub_1A932D058(__src) == 1))
  {
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    memcpy(a2, __src, 0x118uLL);
    memcpy(v7, __dst, sizeof(v7));
    return sub_1A937B3DC(v7, v6);
  }

  return result;
}

id sub_1A9394940()
{
  memcpy(__dst, v0, sizeof(__dst));
  type metadata accessor for TTSAXResource(0);
  memcpy(__src, v0, sizeof(__src));
  sub_1A937B3DC(__dst, v4);
  v1 = sub_1A9384878(__src);
  v2 = [v1 speechVoice];

  return v2;
}

uint64_t sub_1A93949D4(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  return sub_1A937822C(v8, &v6);
}

uint64_t sub_1A9394A68(uint64_t a1, void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  sub_1A9384810(__dst);
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v8, (a1 + v4), sizeof(v8));
  memmove(a2, (a1 + v4), 0x118uLL);
  sub_1A937822C(v8, &v6);
  return 1;
}

uint64_t sub_1A9394B00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!a1 || (v4 = OBJC_IVAR___TTSAXResource_voice, swift_beginAccess(), memcpy(__dst, (a1 + v4), sizeof(__dst)), memmove(__src, (a1 + v4), 0x118uLL), sub_1A932D058(__src) == 1))
  {
    result = sub_1A957D0A8();
    __break(1u);
  }

  else
  {
    memcpy(a2, __src, 0x118uLL);
    memcpy(v7, __dst, sizeof(v7));
    return sub_1A937B3DC(v7, v6);
  }

  return result;
}

uint64_t sub_1A9394C18()
{
  if (!*(v0 + 48))
  {
    return 3;
  }

  if (*(v0 + 48) == 1)
  {
    return 9;
  }

  v2 = *v0;
  v3 = v0[3];
  v4 = v0[4] | v0[5];
  v5 = v0[2] | v0[1];
  if (!(v4 | *v0 | v3 | v5))
  {
    return 7;
  }

  v6 = v4 | v3 | v5;
  if (v2 == 1 && !v6)
  {
    return 4;
  }

  if (v2 == 2 && !v6)
  {
    return 10;
  }

  if (v2 == 3 && !v6)
  {
    return 9;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 4;
  }

  if (v7)
  {
    return 9;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1A9394CB8()
{
  if (*(v0 + 48))
  {
    return 2;
  }

  else
  {
    return qword_1A9587C50[*v0];
  }
}

uint64_t sub_1A9394D1C()
{
  v0 = sub_1A957C218();
  v1 = sub_1A957C218();
  v3 = v2;

  MEMORY[0x1AC585140](v1, v3);

  v4 = sub_1A957C218();
  v6 = v5;

  MEMORY[0x1AC585140](v4, v6);

  v7 = sub_1A957C218();
  v9 = v8;

  MEMORY[0x1AC585140](v7, v9);

  return v0;
}

int *Optional<A>.auParamValue.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v6, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v15, a1);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v4 + 8))(v8, a1);
    result = sub_1A94623BC();
    v17 = *result;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    (*(a2 + 8))(v9, a2);
    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

int *sub_1A939515C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = sub_1A957CC58();
  result = Optional<A>.auParamValue.getter(v7, v6);
  *a3 = v9;
  return result;
}

uint64_t sub_1A93951A4(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = sub_1A957CC58();
  return Optional<A>.auParamValue.setter(v7, v5, v6);
}

uint64_t Optional<A>.auParamValue.setter(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  (*(*(a1 - 8) + 8))(v4, a1);
  v8 = *sub_1A94623BC();
  v9 = *(a1 + 16);
  if (v8 == a3)
  {
    v10 = 1;
  }

  else
  {
    (*(a2 + 32))(v9, a2, a3, v8);
    v10 = 0;
  }

  v11 = *(*(v9 - 8) + 56);

  return v11(v4, v10, 1, v9);
}

uint64_t (*Optional<A>.auParamValue.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  Optional<A>.auParamValue.getter(a2, a3);
  *(a1 + 24) = v5;
  return sub_1A9395330;
}

uint64_t Optional<A>.init(auVal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = *sub_1A94623BC();
  if (v8 == a4)
  {
    v9 = 1;
  }

  else
  {
    (*(a2 + 32))(a1, a2, a4, v8);
    v9 = 0;
  }

  v10 = *(*(a1 - 8) + 56);

  return v10(a3, v9, 1, a1);
}

uint64_t (*sub_1A939542C(uint64_t a1, uint64_t a2, uint64_t a3))(float *a1)
{
  *a1 = v3;
  *(a1 + 8) = a2;
  v6 = *(a3 - 8);
  *(a1 + 16) = v6;
  Optional<A>.auParamValue.getter(a2, v6);
  *(a1 + 24) = v7;
  return sub_1A9395484;
}

float sub_1A93954C8@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1A93954D4(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t (*Float.auParamValue.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9398248;
}

float (*sub_1A9395524(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9395550;
}

float sub_1A9395550(uint64_t a1)
{
  result = *(a1 + 8);
  **a1 = result;
  return result;
}

float Bool.auParamValue.getter(char a1)
{
  result = 0.0;
  if (a1)
  {
    return 1.0;
  }

  return result;
}

_BYTE *sub_1A9395588@<X0>(_BYTE *result@<X0>, float *a2@<X8>)
{
  v2 = 0.0;
  if (*result)
  {
    v2 = 1.0;
  }

  *a2 = v2;
  return result;
}

uint64_t (*Bool.auParamValue.modify(uint64_t a1))()
{
  *a1 = v1;
  v2 = 0.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *(a1 + 8) = v2;
  return sub_1A939824C;
}

float sub_1A9395604()
{
  result = 0.0;
  if (*v0)
  {
    return 1.0;
  }

  return result;
}

uint64_t (*sub_1A939562C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = 0.0;
  if (*v1)
  {
    v2 = 1.0;
  }

  *(a1 + 8) = v2;
  return sub_1A9395668;
}

Swift::Int __swiftcall Int.init(auVal:)(Swift::Float auVal)
{
  if ((LODWORD(auVal) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (auVal <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (auVal < 9.2234e18)
  {
    return auVal;
  }

LABEL_7:
  __break(1u);
  return result;
}

float sub_1A93956E0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float *sub_1A93956F0(float *result, void *a2)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.2234e18)
  {
    *a2 = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Int.auParamValue.setter(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    *v1 = a1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*Int.auParamValue.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9398250;
}

void sub_1A93957C8(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.2234e18)
  {
    *v1 = a1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t (*sub_1A9395814(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_1A9395844;
}

uint64_t sub_1A9395848(uint64_t result, char a2)
{
  v2 = *(result + 8);
  v3 = (LODWORD(v2) & 0x7FFFFFFFu) <= 0x7F7FFFFF;
  if (a2)
  {
    if ((*(result + 8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v2 <= -9.2234e18)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v3 = v2 <= 9.2234e18;
    if (v2 < 9.2234e18)
    {
LABEL_11:
      **result = v2;
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  if (v2 <= -9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 < 9.2234e18)
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1A93958D4(void *a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.2234e18)
  {
    *a1 = a2;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A9395920@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

void sub_1A93959EC(char a1)
{
  v3 = swift_beginAccess();
  v1[16] = a1;
  v4 = (*(*v1 + 176))(v3);
  if (v4)
  {
    v5 = v4;
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x70))();
  }
}

uint64_t (*sub_1A9395A90(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9398254;
}

uint64_t sub_1A9395AE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

id sub_1A9395B84()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_1A9395BC8(void *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v1[3] = a1;
  v4 = a1;

  v5 = (*(*v1 + 176))();
  if (v5)
  {
    v6 = v5;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x70))();
  }
}

uint64_t (*sub_1A9395C88(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A9395CDC;
}

void sub_1A9395CE0(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 176))(v4);
    if (v5)
    {
      v6 = v5;
      (*((*MEMORY[0x1E69E7D40] & *v5) + 0x70))();
    }
  }
}

void sub_1A9395DD8(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A9395E24(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A9395EB4;
}

void sub_1A9395EB4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A9395F30(char a1, void *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v11 = a3[3];
  v12 = a3[4];
  v13 = sub_1A9396054(a3, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_1A93977B0(a1, a2, v16, a4, a5, v5, v11, v12);

  sub_1A9378138(a3);
  return v18;
}

uint64_t sub_1A9396054(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t AUParamWrapper.deinit()
{
  sub_1A9378138((v0 + 32));
  sub_1A937B960(v0 + 72, &qword_1EB3869E8, &qword_1A9587C80);
  MEMORY[0x1AC587DA0](v0 + 120);
  return v0;
}

uint64_t AUParamWrapper.__deallocating_deinit()
{
  sub_1A9378138((v0 + 32));
  sub_1A937B960(v0 + 72, &qword_1EB3869E8, &qword_1A9587C80);
  MEMORY[0x1AC587DA0](v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t AUParamValue.wrapper.getter()
{
  sub_1A93977A8();
}

uint64_t AUParamValue.wrapper.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t AUParamValue.init(param:defaultValue:internalOnly:featureFlag:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v26 = a6;
  v27 = a7;
  v25 = a3;
  v11 = *(a5 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v24[-v17];
  v19 = type metadata accessor for AUParamWrapper();
  v20 = v11[2];
  v20(v18, a2, a5);
  sub_1A9391BAC(a4, v28, &qword_1EB3869E8, &qword_1A9587C80);
  v20(v15, v18, a5);
  v21 = sub_1A93977B0(1, a1, v15, v28, v25, v19, a5, v26);

  sub_1A937B960(a4, &qword_1EB3869E8, &qword_1A9587C80);
  v22 = v11[1];
  v22(a2, a5);
  result = (v22)(v18, a5);
  *v27 = v21;
  return result;
}

uint64_t AUParamValue.wrappedValue.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = (*(**v1 + 152))();
  [v4 value];
  v6 = v5;

  return (*(*(a1 + 24) + 32))(v3, v6);
}

uint64_t sub_1A9396424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 8);
  v8 = *a1;
  v6 = type metadata accessor for AUParamValue();
  return AUParamValue.wrappedValue.getter(v6);
}

void sub_1A9396470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for AUParamValue();
  sub_1A9397904(a1, v7);
}

uint64_t AUParamValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1A9397904(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AUParamValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  AUParamValue.wrappedValue.getter(a2);
  return sub_1A939663C;
}

void sub_1A939663C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1A9397904(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1A9397904((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A9396728()
{
  sub_1A93977A8();
}

id TTSMagicFirstPartyAudioUnit.__allocating_init(componentDescription:options:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v5 = [objc_allocWithZone(v4) initWithComponentDescription:v10 options:a4 error:v12];
  if (v5)
  {
    v6 = v12[0];
  }

  else
  {
    v7 = v12[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void *TTSMagicFirstPartyAudioUnit.init(componentDescription:options:)(unint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  *&v4[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams] = 0;
  v21[0] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  v19[0] = v8;
  v19[1] = v9;
  v19[2] = v7;
  v19[3] = v10;
  v19[4] = a3;
  v11 = objc_msgSendSuper2(&v20, sel_initWithComponentDescription_options_error_, v19, a4, v21);
  v12 = v11;
  if (v11)
  {
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
    v14 = v21[0];
    v15 = v12;
    v13();
  }

  else
  {
    v16 = v21[0];
    sub_1A957AEF8();

    swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1A9396A00()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams;
  if (*&v0[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams])
  {
    v2 = *&v0[OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams];
  }

  else
  {
    v2 = sub_1A9396A68(v0);
    v3 = *&v0[v1];
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1A9396A68(void *a1)
{
  v17 = sub_1A957D578();
  v16 = *(v17 - 8);
  v2 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v17, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  *&v25 = a1;
  v6 = a1;
  sub_1A957D558();
  v7 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v15 = v5;
  sub_1A957D568();
  sub_1A957D048();

  sub_1A957D138();
  if (v27)
  {
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = v25;
      sub_1A93981D4(&v26, &v24);
      sub_1A9391BAC(&v23, v19, &qword_1EB386A00, &qword_1A9587E18);

      sub_1A937829C(&qword_1EB386A08, &qword_1A9587E20);
      if (swift_dynamicCast())
      {
        v9 = *(&v21 + 1);
        v8 = v22;
        sub_1A93780F4(&v20, *(&v21 + 1));
        v10 = (*(v8 + 8))(v9, v8);
        sub_1A9378138(&v20);
        if (*(v10 + 112) != 1 || (TTSIsInternalBuild() & 1) != 0)
        {
          sub_1A9391BAC(v10 + 72, &v20, &qword_1EB3869E8, &qword_1A9587C80);
          if (!*(&v21 + 1))
          {
            sub_1A937B960(&v20, &qword_1EB3869E8, &qword_1A9587C80);
LABEL_13:

            MEMORY[0x1AC585360](v12);
            if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1A957C4F8();
            }

            sub_1A957C538();

            sub_1A937B960(&v23, &qword_1EB386A00, &qword_1A9587E18);
            v18 = v28;
            goto LABEL_9;
          }

          sub_1A932D070(&v20, v19);
          v11 = sub_1A957B698();
          sub_1A9378138(v19);
          if (v11)
          {
            goto LABEL_13;
          }
        }

        sub_1A937B960(&v23, &qword_1EB386A00, &qword_1A9587E18);
      }

      else
      {
        sub_1A937B960(&v23, &qword_1EB386A00, &qword_1A9587E18);
        v20 = 0u;
        v21 = 0u;
        v22 = 0;
        sub_1A937B960(&v20, &qword_1EB386A10, &qword_1A9587E28);
      }

LABEL_9:
      sub_1A957D138();
      if (!v27)
      {
        goto LABEL_17;
      }
    }
  }

  v18 = v7;
LABEL_17:
  (*(v16 + 8))(v15, v17);

  return v18;
}

uint64_t sub_1A9396DFC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams) = a1;
}

uint64_t (*sub_1A9396E14(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A9396A00();
  return sub_1A9396E5C;
}

uint64_t sub_1A9396E5C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech27TTSMagicFirstPartyAudioUnit____lazy_storage___allValueParams) = v2;
}

void sub_1A9396E74()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = v2;
  v17 = MEMORY[0x1E69E7CC0];
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_20:
    v5 = sub_1A957CE48();
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC585DE0](v7, v3);
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v3 + 8 * v7 + 32);

        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      if ((*(*v8 + 128))())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    v9 = *(*v8 + 184);
    v10 = v1;
    v11 = v9(v1);
    (*(*v8 + 152))(v11);

    MEMORY[0x1AC585360](v12);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A957C4F8();
    }

    sub_1A957C538();
  }

  while (v6 != v5);
LABEL_21:

  v14 = objc_opt_self();
  sub_1A9387478(0, &qword_1ED96FCD0, 0x1E698D848);
  v15 = sub_1A957C4B8();

  v16 = [v14 createTreeWithChildren_];

  [v1 setParameterTree_];
}

id TTSMagicFirstPartyAudioUnit.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSMagicFirstPartyAudioUnit();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A93971E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
  v39 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A939748C(uint64_t result, uint64_t a2)
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
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
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

id sub_1A939763C()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
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

        result = v20;
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

uint64_t sub_1A93977B0(char a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21[3] = a7;
  v21[4] = a8;
  v15 = sub_1A93981E4(v21);
  (*(*(a7 - 8) + 32))(v15, a3, a7);
  type metadata accessor for AUParamWrapper();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1A9379534(v21, v16 + 32);
  v17 = *(a8 + 8);
  v18 = a2;
  v17(a7, a8);
  [v18 setValue_];
  v19 = *(a4 + 16);
  *(v16 + 72) = *a4;
  *(v16 + 88) = v19;
  *(v16 + 104) = *(a4 + 32);
  *(v16 + 112) = a5;
  sub_1A9378138(v21);
  return v16;
}

void sub_1A9397904(uint64_t a1, uint64_t a2)
{
  v4 = (*(**v2 + 152))();
  (*(*(a2 + 24) + 8))(*(a2 + 16));
  [v4 setValue_];
}

unint64_t sub_1A93979C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB3869F8, &qword_1A9587E10);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1A937A490(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A9397ACC()
{
  v1 = sub_1A93979C8(MEMORY[0x1E69E7CC0]);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v46 = i;
    v47 = v3 & 0xFFFFFFFFFFFFFF8;
    v44 = v3;
    v45 = v3 & 0xC000000000000001;
    while (v6)
    {
      v7 = MEMORY[0x1AC585DE0](v5, v3);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

LABEL_12:
      v9 = v7[7];
      v10 = v7[8];
      sub_1A93780F4(v7 + 4, v9);
      v11 = (*(v10 + 8))(v9, v10);
      if (v11 != *sub_1A94623BC())
      {
        v12 = (*(*v7 + 152))();
        v13 = [v12 identifier];

        v14 = sub_1A957C0F8();
        v16 = v15;

        v17 = v7[7];
        v18 = v7[8];
        sub_1A93780F4(v7 + 4, v17);
        v19 = (*(v18 + 8))(v17, v18);
        v20 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        *&v21 = v19;
        v22 = [v20 initWithFloat_];
        if (!v22)
        {
          v32 = sub_1A937A490(v14, v16);
          v34 = v33;

          v6 = v45;
          if (v34)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1A939763C();
            }

            v35 = *(v1[6] + 16 * v32 + 8);

            sub_1A939748C(v32, v1);
          }

          i = v46;
          goto LABEL_5;
        }

        v23 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_1A937A490(v14, v16);
        v27 = v1[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_32;
        }

        v3 = v26;
        if (v1[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_24;
          }

          v39 = v25;
          sub_1A939763C();
          v25 = v39;
          if ((v3 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          v36 = v25;

          v37 = v1[7];
          v38 = *(v37 + 8 * v36);
          *(v37 + 8 * v36) = v23;
        }

        else
        {
          sub_1A93971E8(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_1A937A490(v14, v16);
          if ((v3 & 1) != (v31 & 1))
          {
            result = sub_1A957D438();
            __break(1u);
            return result;
          }

LABEL_24:
          if (v3)
          {
            goto LABEL_25;
          }

LABEL_27:
          v1[(v25 >> 6) + 8] |= 1 << v25;
          v40 = (v1[6] + 16 * v25);
          *v40 = v14;
          v40[1] = v16;
          *(v1[7] + 8 * v25) = v23;

          v41 = v1[2];
          v29 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v29)
          {
            goto LABEL_33;
          }

          v1[2] = v42;
        }

        v3 = v44;
        v6 = v45;
        i = v46;
        goto LABEL_5;
      }

LABEL_5:
      ++v5;
      if (v8 == i)
      {
        goto LABEL_35;
      }
    }

    if (v5 >= *(v47 + 16))
    {
      goto LABEL_31;
    }

    v7 = *(v3 + 8 * v5 + 32);

    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return v1;
}

uint64_t sub_1A9397FFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *initializeBufferWithCopyOfBuffer for VoiceDatabase.Trigger(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for VoiceDatabase.Trigger(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for VoiceDatabase.Trigger(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for VoiceDatabase.Trigger(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VoiceDatabase.Trigger(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *sub_1A93981D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1A93981E4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SpeechSlicer.slices.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SpeechSlicer.init(mutableSpeech:synthesizer:utteranceVoice:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[210] = a4;
  v4[209] = a3;
  v4[208] = a2;
  v4[207] = a1;
  v5 = type metadata accessor for SpeechSlicer.Slice(0);
  v4[211] = v5;
  v6 = *(v5 - 8);
  v4[212] = v6;
  v7 = *(v6 + 64) + 15;
  v4[213] = swift_task_alloc();
  v8 = sub_1A957B8C8();
  v4[214] = v8;
  v9 = *(v8 - 8);
  v4[215] = v9;
  v10 = *(v9 + 64) + 15;
  v4[216] = swift_task_alloc();
  v11 = *(*(sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40) - 8) + 64) + 15;
  v4[217] = swift_task_alloc();
  v4[218] = swift_task_alloc();
  v12 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v4[219] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v4[220] = swift_task_alloc();
  v4[221] = swift_task_alloc();
  v14 = *(*(sub_1A937829C(&qword_1EB386A20, &qword_1A9587E48) - 8) + 64) + 15;
  v4[222] = swift_task_alloc();
  v4[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9398498, 0, 0);
}

uint64_t sub_1A9398498()
{
  v1 = v0[210];
  v2 = v0[209];
  v3 = MEMORY[0x1E69E7CC0];
  v0[3] = MEMORY[0x1E69E7CC0];
  v0[4] = v3;
  v4 = MEMORY[0x1E69E7CD0];
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v3;
  sub_1A93847E0((v0 + 78));
  v0[2] = v2;
  memcpy(v0 + 43, v0 + 78, 0x118uLL);
  v5 = v2;
  sub_1A937B960((v0 + 43), &unk_1EB387BC0, &qword_1A9587E30);
  v6 = memcpy(v0 + 8, v1, 0x118uLL);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x318))(v6);
  v7 = v0[170];
  sub_1A937B960((v0 + 167), &qword_1EB386A28, &qword_1A9587E50);
  if (v7)
  {
    sub_1A937829C(&qword_1EB386A50, &qword_1A9587E88);
    v8 = *(type metadata accessor for SpeechSlicer.VoiceQuery(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A9587160;
    v12 = (v11 + v10);
    *v12 = 0x746C7561666564;
    v12[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v0[3] = v11;
  }

  v13 = swift_task_alloc();
  v0[224] = v13;
  *v13 = v0;
  v13[1] = sub_1A93986F0;
  v14 = v0[208];

  return TTSMarkupAsyncVisitor.visit(_:)(v14, &type metadata for SpeechSlicer, &protocol witness table for SpeechSlicer);
}

uint64_t sub_1A93986F0()
{
  v1 = *v0;
  v2 = *(*v0 + 1792);
  v5 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 1800) = v3;
  *v3 = v5;
  v3[1] = sub_1A939881C;

  return sub_1A9399B8C();
}

uint64_t sub_1A939881C()
{
  v1 = *(*v0 + 1800);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9398918, 0, 0);
}

void sub_1A9398918()
{
  v1 = 0;
  v61 = (v0 + 1288);
  v59 = (v0 + 1536);
  v2 = *(v0 + 56);
  *(v0 + 1808) = v2;
  v3 = *(v2 + 16);
  for (*(v0 + 1816) = v3; ; v3 = *(v0 + 1816))
  {
    *(v0 + 1824) = MEMORY[0x1E69E7CC0];
    if (v1 == v3)
    {
      v4 = *(v0 + 1776);
      v5 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
      v6 = *(v0 + 1816);
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      v7 = *(v0 + 1808);
      if (v1 >= *(v7 + 16))
      {
        goto LABEL_28;
      }

      v8 = *(v0 + 1776);
      v9 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      v10 = *(v9 - 8);
      sub_1A9391BAC(v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v1, v8, &qword_1EB386A30, &unk_1A9587E60);
      v6 = v1 + 1;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    *(v0 + 1832) = v6;
    v11 = *(v0 + 1784);
    sub_1A93A7460(*(v0 + 1776), v11, &qword_1EB386A20, &qword_1A9587E48);
    v12 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
    {
      break;
    }

    v13 = *(v0 + 1784);
    v14 = *(v0 + 1664);
    v15 = *(v13 + *(v12 + 48));
    sub_1A93A3870(v13, *(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    v16 = v14[3];
    v17 = v14[4];
    sub_1A93780F4(v14, v16);
    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    sub_1A94468E0(sub_1A939A474, v18, v16, v17, (v0 + 1416));

    if (*(v0 + 1440))
    {
      v30 = *(v0 + 1760);
      v31 = *(v0 + 1752);
      v32 = *(v0 + 1768);
      sub_1A932D070((v0 + 1416), v0 + 1376);
      sub_1A93A5764(v32, v30, type metadata accessor for SpeechSlicer.Slice.SliceType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v34 = *(v0 + 1760);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A93A5704(*(v0 + 1760), type metadata accessor for SpeechSlicer.Slice.SliceType);
      }

      else
      {
        v35 = *(v0 + 1744);
        v36 = *(v0 + 1736);
        v37 = *(v0 + 1720);
        v38 = *(v0 + 1712);
        memcpy((v0 + 904), *(v0 + 1760), 0x118uLL);
        sub_1A937B48C(v0 + 904);
        v39 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        sub_1A93A7460(v34 + *(v39 + 64), v35, &qword_1EB386A18, &qword_1A9587E40);
        sub_1A9391BAC(v35, v36, &qword_1EB386A18, &qword_1A9587E40);
        if ((*(v37 + 48))(v36, 1, v38) == 1)
        {
          v40 = *(v0 + 1736);
          sub_1A937B960(*(v0 + 1744), &qword_1EB386A18, &qword_1A9587E40);
          sub_1A937B960(v40, &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1736), *(v0 + 1712));
          sub_1A9379534(v0 + 1376, v0 + 1496);
          sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
          if (swift_dynamicCast())
          {
            v41 = *(v0 + 1320);
            *(v0 + 1256) = *(v0 + 1304);
            *(v0 + 1272) = v41;
            v60 = v0 + 1240;
            *(v0 + 1240) = *v61;
            if (*(v0 + 1272))
            {
              v42 = *(v0 + 1728);
              sub_1A9379534(v0 + 1248, v0 + 1616);
              v43 = *(v0 + 1640);
              v44 = *(v0 + 1648);
              sub_1A93780F4((v0 + 1616), v43);
              v45 = v0 + 1536;
              TTSMarkupSpeech.selectionProsody(_:)(v43, v44, v59);
              sub_1A9378138((v0 + 1616));
            }

            else
            {
              v45 = v0 + 1536;
              *(v0 + 1568) = 0;
              *v59 = 0u;
              *(v0 + 1552) = 0u;
            }

            v47 = *(v0 + 1744);
            v48 = *(v0 + 1728);
            v49 = *(v0 + 1720);
            v50 = *(v0 + 1712);
            sub_1A93A38D8(v45, v0 + 1248);
            *(v0 + 1600) = &type metadata for TTSMarkup.SpeechDocument;
            *(v0 + 1608) = &protocol witness table for TTSMarkup.SpeechDocument;
            v51 = swift_allocObject();
            *(v0 + 1576) = v51;
            sub_1A93A3948(v60, v51 + 16);
            (*(v49 + 8))(v48, v50);
            sub_1A937B960(v47, &qword_1EB386A18, &qword_1A9587E40);
            sub_1A9378138((v0 + 1376));
            sub_1A932D070((v0 + 1576), v0 + 1376);
            sub_1A9377B5C(v60);
          }

          else
          {
            v46 = *(v0 + 1744);
            (*(*(v0 + 1720) + 8))(*(v0 + 1728), *(v0 + 1712));
            sub_1A937B960(v46, &qword_1EB386A18, &qword_1A9587E40);
            *v61 = 0u;
            *(v0 + 1304) = 0u;
            *(v0 + 1320) = 0u;
            sub_1A937B960(v61, &qword_1EB386A48, &qword_1A9587E80);
          }
        }

        v52 = *(v0 + 1760);
        v53 = *(v39 + 48);
        v54 = sub_1A957B308();
        (*(*(v54 - 8) + 8))(v52 + v53, v54);
      }

      v55 = *(v0 + 1768);
      v56 = *(v0 + 1704);
      v57 = *(v0 + 1688);
      sub_1A9379534(v0 + 1376, v0 + 1456);
      sub_1A93A5764(v55, v56 + *(v57 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
      sub_1A9379534(v0 + 1456, v56 + 16);
      *(v0 + 1184) = 0;
      *(v0 + 1192) = 0xE000000000000000;
      *(v0 + 1200) = 0u;
      *(v0 + 1216) = 0u;
      *(v0 + 1232) = 0;
      v58 = swift_task_alloc();
      *(v0 + 1840) = v58;
      *v58 = v0;
      v58[1] = sub_1A9399128;

      TTSMarkupAsyncVisitor.visit(_:)(v56 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
      return;
    }

    sub_1A93A5704(*(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A937B960(v0 + 1416, &qword_1EB3868E8, &unk_1A958F280);
    v1 = *(v0 + 1832);
  }

  v19 = *(v0 + 1784);
  v20 = *(v0 + 1776);
  v21 = *(v0 + 1768);
  v22 = *(v0 + 1760);
  v23 = *(v0 + 1744);
  v24 = *(v0 + 1736);
  v25 = *(v0 + 1728);
  v26 = *(v0 + 1704);
  v27 = *(v0 + 1656);

  v28 = *(v0 + 32);

  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  memcpy(v27, (v0 + 16), 0x148uLL);

  v29 = *(v0 + 8);

  v29();
}

uint64_t sub_1A9399128()
{
  v1 = *(*v0 + 1840);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9399224, 0, 0);
}

uint64_t sub_1A9399224()
{
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1192);

  sub_1A93A150C(v0 + 1184);
  sub_1A9378138((v0 + 1456));
  *v2 = v3;
  v2[1] = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 1824);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_32:
    v6 = sub_1A93A3A50(0, v6[2] + 1, 1, v6, &qword_1EB386AE0, &qword_1A95884F8, type metadata accessor for SpeechSlicer.Slice);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1A93A3A50(v7 > 1, v8 + 1, 1, v6, &qword_1EB386AE0, &qword_1A95884F8, type metadata accessor for SpeechSlicer.Slice);
  }

  v70 = (v0 + 1288);
  v68 = (v0 + 1536);
  v9 = *(v0 + 1768);
  v10 = *(v0 + 1704);
  v11 = *(v0 + 1696);
  sub_1A9378138((v0 + 1376));
  sub_1A93A5704(v9, type metadata accessor for SpeechSlicer.Slice.SliceType);
  v6[2] = v8 + 1;
  sub_1A93A3870(v10, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8, type metadata accessor for SpeechSlicer.Slice);
  while (1)
  {
    v12 = *(v0 + 1832);
    *(v0 + 1824) = v6;
    if (v12 == *(v0 + 1816))
    {
      v13 = *(v0 + 1776);
      v14 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      v15 = *(v0 + 1816);
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v16 = *(v0 + 1808);
      if (v12 >= *(v16 + 16))
      {
        goto LABEL_31;
      }

      v17 = *(v0 + 1776);
      v18 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
      v19 = *(v18 - 8);
      sub_1A9391BAC(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v12, v17, &qword_1EB386A30, &unk_1A9587E60);
      v15 = v12 + 1;
      (*(v19 + 56))(v17, 0, 1, v18);
    }

    *(v0 + 1832) = v15;
    v20 = *(v0 + 1784);
    sub_1A93A7460(*(v0 + 1776), v20, &qword_1EB386A20, &qword_1A9587E48);
    v21 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      break;
    }

    v22 = *(v0 + 1784);
    v23 = *(v0 + 1664);
    v24 = *(v22 + *(v21 + 48));
    sub_1A93A3870(v22, *(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    v25 = v23[3];
    v26 = v23[4];
    sub_1A93780F4(v23, v25);
    v27 = swift_task_alloc();
    *(v27 + 16) = v24;
    sub_1A94468E0(sub_1A939A474, v27, v25, v26, (v0 + 1416));

    if (*(v0 + 1440))
    {
      v39 = *(v0 + 1760);
      v40 = *(v0 + 1752);
      v41 = *(v0 + 1768);
      sub_1A932D070((v0 + 1416), v0 + 1376);
      sub_1A93A5764(v41, v39, type metadata accessor for SpeechSlicer.Slice.SliceType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v43 = *(v0 + 1760);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1A93A5704(*(v0 + 1760), type metadata accessor for SpeechSlicer.Slice.SliceType);
      }

      else
      {
        v44 = *(v0 + 1744);
        v45 = *(v0 + 1736);
        v46 = *(v0 + 1720);
        v47 = *(v0 + 1712);
        memcpy((v0 + 904), *(v0 + 1760), 0x118uLL);
        sub_1A937B48C(v0 + 904);
        v48 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
        sub_1A93A7460(v43 + *(v48 + 64), v44, &qword_1EB386A18, &qword_1A9587E40);
        sub_1A9391BAC(v44, v45, &qword_1EB386A18, &qword_1A9587E40);
        if ((*(v46 + 48))(v45, 1, v47) == 1)
        {
          v49 = *(v0 + 1736);
          sub_1A937B960(*(v0 + 1744), &qword_1EB386A18, &qword_1A9587E40);
          sub_1A937B960(v49, &qword_1EB386A18, &qword_1A9587E40);
        }

        else
        {
          (*(*(v0 + 1720) + 32))(*(v0 + 1728), *(v0 + 1736), *(v0 + 1712));
          sub_1A9379534(v0 + 1376, v0 + 1496);
          sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
          if (swift_dynamicCast())
          {
            v50 = *(v0 + 1320);
            *(v0 + 1256) = *(v0 + 1304);
            *(v0 + 1272) = v50;
            v69 = v0 + 1240;
            *(v0 + 1240) = *v70;
            if (*(v0 + 1272))
            {
              v51 = *(v0 + 1728);
              sub_1A9379534(v0 + 1248, v0 + 1616);
              v52 = *(v0 + 1640);
              v53 = *(v0 + 1648);
              sub_1A93780F4((v0 + 1616), v52);
              v54 = v0 + 1536;
              TTSMarkupSpeech.selectionProsody(_:)(v52, v53, v68);
              sub_1A9378138((v0 + 1616));
            }

            else
            {
              v54 = v0 + 1536;
              *(v0 + 1568) = 0;
              *v68 = 0u;
              *(v0 + 1552) = 0u;
            }

            v56 = *(v0 + 1744);
            v57 = *(v0 + 1728);
            v58 = *(v0 + 1720);
            v59 = *(v0 + 1712);
            sub_1A93A38D8(v54, v0 + 1248);
            *(v0 + 1600) = &type metadata for TTSMarkup.SpeechDocument;
            *(v0 + 1608) = &protocol witness table for TTSMarkup.SpeechDocument;
            v60 = swift_allocObject();
            *(v0 + 1576) = v60;
            sub_1A93A3948(v69, v60 + 16);
            (*(v58 + 8))(v57, v59);
            sub_1A937B960(v56, &qword_1EB386A18, &qword_1A9587E40);
            sub_1A9378138((v0 + 1376));
            sub_1A932D070((v0 + 1576), v0 + 1376);
            sub_1A9377B5C(v69);
          }

          else
          {
            v55 = *(v0 + 1744);
            (*(*(v0 + 1720) + 8))(*(v0 + 1728), *(v0 + 1712));
            sub_1A937B960(v55, &qword_1EB386A18, &qword_1A9587E40);
            *v70 = 0u;
            *(v0 + 1304) = 0u;
            *(v0 + 1320) = 0u;
            sub_1A937B960(v70, &qword_1EB386A48, &qword_1A9587E80);
          }
        }

        v61 = *(v0 + 1760);
        v62 = *(v48 + 48);
        v63 = sub_1A957B308();
        (*(*(v63 - 8) + 8))(v61 + v62, v63);
      }

      v64 = *(v0 + 1768);
      v65 = *(v0 + 1704);
      v66 = *(v0 + 1688);
      sub_1A9379534(v0 + 1376, v0 + 1456);
      sub_1A93A5764(v64, v65 + *(v66 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
      sub_1A9379534(v0 + 1456, v65 + 16);
      *(v0 + 1184) = 0;
      *(v0 + 1192) = 0xE000000000000000;
      *(v0 + 1200) = 0u;
      *(v0 + 1216) = 0u;
      *(v0 + 1232) = 0;
      v67 = swift_task_alloc();
      *(v0 + 1840) = v67;
      *v67 = v0;
      v67[1] = sub_1A9399128;

      return TTSMarkupAsyncVisitor.visit(_:)(v65 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
    }

    sub_1A93A5704(*(v0 + 1768), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A937B960(v0 + 1416, &qword_1EB3868E8, &unk_1A958F280);
  }

  v28 = *(v0 + 1784);
  v29 = *(v0 + 1776);
  v30 = *(v0 + 1768);
  v31 = *(v0 + 1760);
  v32 = *(v0 + 1744);
  v33 = *(v0 + 1736);
  v34 = *(v0 + 1728);
  v71 = *(v0 + 1704);
  v35 = *(v0 + 1656);

  v36 = *(v0 + 32);

  *(v0 + 32) = v6;
  memcpy(v35, (v0 + 16), 0x148uLL);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1A9399B8C()
{
  v1[142] = v0;
  v2 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
  v1[143] = v2;
  v3 = *(v2 - 8);
  v1[144] = v3;
  v4 = *(v3 + 64) + 15;
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SpeechSlicer.Slice.SliceType(0) - 8) + 64) + 15;
  v1[147] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9399C90, 0, 0);
}

uint64_t sub_1A9399C90()
{
  v1 = v0[142];
  v2 = *(v1 + 32);
  v0[148] = v2;
  if (*(v2 + 16))
  {
    v3 = *(v1 + 24);
    v4 = *v1;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x300))();
    v0[149] = v6;
    v7 = (*((*v5 & *v4) + 0x198))();
    v0[150] = v7;
    memcpy(v0 + 37, (v1 + 48), 0x118uLL);
    memcpy(v0 + 72, (v1 + 48), 0x118uLL);
    sub_1A9391BAC((v0 + 37), (v0 + 107), &unk_1EB387BC0, &qword_1A9587E30);
    v8 = swift_task_alloc();
    v0[151] = v8;
    *v8 = v0;
    v8[1] = sub_1A9399E80;
    v9 = v0[147];

    return sub_1A939BE6C(v9, v6, v7, v0 + 72, v3);
  }

  else
  {
    v11 = v0[147];
    v12 = v0[146];
    v13 = v0[145];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A9399E80()
{
  v1 = *v0;
  v2 = *(*v0 + 1208);
  v3 = *(*v0 + 1200);
  v4 = *(*v0 + 1192);
  v6 = *v0;

  memcpy((v1 + 16), (v1 + 576), 0x118uLL);
  sub_1A937B960(v1 + 16, &unk_1EB387BC0, &qword_1A9587E30);

  return MEMORY[0x1EEE6DFA0](sub_1A9399FE4, 0, 0);
}

uint64_t sub_1A9399FE4()
{
  v1 = v0[142];
  v2 = *(v1 + 40);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v0[147];
  v5 = v0[146];
  v6 = v0[144];
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 72);
  sub_1A9391BAC(v2 + v7 + v8 * (v3 - 1), v5, &qword_1EB386A30, &unk_1A9587E60);
  if ((_s12TextToSpeech0C6SlicerV5SliceV0E4TypeO2eeoiySbAG_AGtFZ_0(v5, v4) & 1) == 0)
  {
    sub_1A937B960(v0[146], &qword_1EB386A30, &unk_1A9587E60);
LABEL_8:
    v15 = v0[148];
    v16 = v0[145];
    v17 = *(v0[143] + 48);
    sub_1A93A5764(v0[147], v16, type metadata accessor for SpeechSlicer.Slice.SliceType);
    *(v16 + v17) = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1A93A3680(0, v2[2] + 1, 1, v2);
    }

    v19 = v2[2];
    v18 = v2[3];
    if (v19 >= v18 >> 1)
    {
      v2 = sub_1A93A3680(v18 > 1, v19 + 1, 1, v2);
    }

    v20 = v0[145];
    v21 = v0[144];
    sub_1A93A5704(v0[147], type metadata accessor for SpeechSlicer.Slice.SliceType);
    v2[2] = v19 + 1;
    sub_1A93A7460(v20, v2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, &qword_1EB386A30, &unk_1A9587E60);
    goto LABEL_13;
  }

  v9 = v0[148];
  v10 = v2[2];

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = sub_1A93A56A4(v2);
  v2 = result;
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v10 > v2[2])
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = v0[147];
  v13 = v0[146];
  v14 = v2 + v7 + (v10 - 1) * v8 + *(v0[143] + 48);
  sub_1A939EF64(v0[148]);
  sub_1A937B960(v13, &qword_1EB386A30, &unk_1A9587E60);
  sub_1A93A5704(v12, type metadata accessor for SpeechSlicer.Slice.SliceType);
LABEL_13:
  v22 = v0[148];
  v23 = v0[142];
  *(v1 + 40) = v2;

  *(v23 + 32) = MEMORY[0x1E69E7CD0];
  v24 = v0[147];
  v25 = v0[146];
  v26 = v0[145];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1A939A298(void *a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v20 - v7;
  v9 = sub_1A957B0B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  sub_1A93780F4(a1, v15);
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, v15, *(v16 + 8));

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A937B960(v8, &qword_1EB386A58, &unk_1A9587E90);
    v18 = 0;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v18 = sub_1A939A838(v14, a2);
    (*(v10 + 8))(v14, v9);
  }

  return v18 & 1;
}

uint64_t sub_1A939A47C@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v3 = sub_1A93A39FC();
  return SpeechContext.subscript.getter(&type metadata for IdentifierContextKey, &type metadata for IdentifierContextKey, v3, a1);
}

uint64_t sub_1A939A4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v3 = sub_1A93A39FC();
  return SpeechContext.subscript.getter(&type metadata for IdentifierContextKey, &type metadata for IdentifierContextKey, v3, a2);
}

uint64_t sub_1A939A51C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1A9391BAC(a1, &v12 - v9, &qword_1EB386A58, &unk_1A9587E90);
  sub_1A9391BAC(v10, v7, &qword_1EB386A58, &unk_1A9587E90);
  sub_1A93A39FC();
  SpeechContext.subscript.setter(v7, &type metadata for IdentifierContextKey);
  return sub_1A937B960(v10, &qword_1EB386A58, &unk_1A9587E90);
}

uint64_t sub_1A939A620(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A957B188();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]), v10 = sub_1A957C058(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610]);
      v18 = sub_1A957C098();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1A939A838(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A957B0B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v9 = *(a2 + 40), sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]), v10 = sub_1A957C058(), v11 = -1 << *(a2 + 32), v12 = v10 & ~v11, v21 = a2 + 56, ((*(a2 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
  {
    v20 = a2;
    v13 = ~v11;
    v14 = v4 + 16;
    v15 = *(v4 + 16);
    v16 = *(v14 + 56);
    v17 = (v14 - 8);
    do
    {
      v15(v8, *(v20 + 48) + v16 * v12, v3);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8]);
      v18 = sub_1A957C098();
      (*v17)(v8, v3);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1A939AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A939AA74, 0, 0);
}

uint64_t sub_1A939AA74()
{
  v1 = *(v0 + 72);
  sub_1A9379534(*(v0 + 80), v1 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1A939AB44;

  return TTSMarkupAsyncVisitor.visit(_:)(v1 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
}

uint64_t sub_1A939AB44()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939AC40, 0, 0);
}

uint64_t sub_1A939AC40()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = v0[3];

  sub_1A93A150C((v0 + 2));
  sub_1A9378138(v1);
  *v3 = v4;
  v3[1] = v5;
  v6 = type metadata accessor for SpeechSlicer.Slice(0);
  sub_1A93A3870(v2, v3 + *(v6 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
  v7 = v0[1];

  return v7();
}

uint64_t SpeechSlicer.visit(_:)(uint64_t a1)
{
  v2[178] = v1;
  v2[177] = a1;
  v3 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v2[179] = v3;
  v4 = *(v3 - 8);
  v2[180] = v4;
  v5 = *(v4 + 64) + 15;
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939ADD4, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939BA98, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_1A957B0B8();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939F8AC, 0, 0);
}

uint64_t sub_1A939ADD4()
{
  v1 = *(v0 + 1416);
  v2 = v1[11];
  if (v2)
  {
    v3 = *(v0 + 1456);
    v4 = *(v0 + 1432);
    v5 = *(v0 + 1424);
    *v3 = v1[10];
    v3[1] = v2;
    swift_storeEnumTagMultiPayload();
    v6 = *(v5 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A93A3A50(0, v6[2] + 1, 1, v6, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1A93A3A50(v7 > 1, v8 + 1, 1, v6, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v9 = *(v0 + 1456);
    v10 = *(v0 + 1440);
    v6[2] = v8 + 1;
    v11 = *(v10 + 80);
    *(v0 + 1520) = v11;
    v12 = *(v10 + 72);
    *(v0 + 1464) = v12;
    sub_1A93A3870(v9, v6 + ((v11 + 32) & ~v11) + v12 * v8, type metadata accessor for SpeechSlicer.VoiceQuery);
    *(v5 + 8) = v6;
    v13 = swift_task_alloc();
    *(v0 + 1472) = v13;
    *v13 = v0;
    v13[1] = sub_1A939B128;
    v14 = *(v0 + 1424);
    v15 = *(v0 + 1416);

    return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v15, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Voice, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Voice);
  }

  else
  {
    v17 = (*((*MEMORY[0x1E69E7D40] & ***(v0 + 1424)) + 0x198))();
    *(v0 + 1480) = v17;
    v18 = v1[1];
    v19 = v1[2];
    v22 = (*v17 + 360);
    v23 = (*v22 + **v22);
    v20 = (*v22)[1];
    v21 = swift_task_alloc();
    *(v0 + 1488) = v21;
    *v21 = v0;
    v21[1] = sub_1A939B318;

    return v23(v0 + 576, v18, v19);
  }
}

uint64_t sub_1A939B128()
{
  v1 = *(*v0 + 1472);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939B224, 0, 0);
}

uint64_t sub_1A939B224()
{
  v1 = *(*(v0 + 1424) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(*(v0 + 1424) + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v1[2];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = *(v0 + 1424);
  v6 = v4 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 1520) + 32) & ~*(v0 + 1520)) + *(v0 + 1464) * (v4 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v6;
  *(v5 + 8) = v1;
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A939B318()
{
  v1 = *(*v0 + 1488);
  v2 = *(*v0 + 1480);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939B430, 0, 0);
}

uint64_t sub_1A939B430()
{
  memcpy((v0 + 296), (v0 + 576), 0x118uLL);
  memcpy((v0 + 16), (v0 + 576), 0x118uLL);
  if (sub_1A932D058(v0 + 16) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 1512) = v1;
    *v1 = v0;
    v2 = sub_1A939B8AC;
  }

  else
  {
    v3 = *(v0 + 1432);
    v4 = *(v0 + 1424);
    memcpy(*(v0 + 1448), (v0 + 16), 0x118uLL);
    swift_storeEnumTagMultiPayload();
    v5 = *(v4 + 8);
    memcpy((v0 + 856), (v0 + 296), 0x118uLL);
    sub_1A937B3DC(v0 + 856, v0 + 1136);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1A93A3A50(0, v5[2] + 1, 1, v5, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1A93A3A50(v6 > 1, v7 + 1, 1, v5, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
    }

    v8 = *(v0 + 1448);
    v9 = *(v0 + 1440);
    v5[2] = v7 + 1;
    v10 = *(v9 + 80);
    *(v0 + 1524) = v10;
    v11 = *(v9 + 72);
    *(v0 + 1496) = v11;
    sub_1A93A3870(v8, v5 + ((v10 + 32) & ~v10) + v11 * v7, type metadata accessor for SpeechSlicer.VoiceQuery);
    *(v4 + 8) = v5;
    v1 = swift_task_alloc();
    *(v0 + 1504) = v1;
    *v1 = v0;
    v2 = sub_1A939B6A4;
  }

  v1[1] = v2;
  v12 = *(v0 + 1424);
  v13 = *(v0 + 1416);

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v13, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Voice, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Voice);
}

uint64_t sub_1A939B6A4()
{
  v1 = *(*v0 + 1504);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939B7A0, 0, 0);
}

uint64_t sub_1A939B7A0()
{
  v1 = *(*(v0 + 1424) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(*(v0 + 1424) + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v1[2];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = *(v0 + 1424);
  v6 = v4 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 1524) + 32) & ~*(v0 + 1524)) + *(v0 + 1496) * (v4 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v6;
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  *(v5 + 8) = v1;
  v7 = *(v0 + 1456);
  v8 = *(v0 + 1448);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A939B8AC()
{
  v1 = *v0;
  v2 = *(*v0 + 1512);
  v7 = *v0;

  v3 = *(v1 + 1456);
  v4 = *(v1 + 1448);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A939BA98()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);

  sub_1A957B1B8();
  swift_storeEnumTagMultiPayload();
  v7 = *(v3 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1A93A3A50(0, v7[2] + 1, 1, v7, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1A93A3A50(v8 > 1, v9 + 1, 1, v7, &qword_1EB386A50, &qword_1A9587E88, type metadata accessor for SpeechSlicer.VoiceQuery);
  }

  v11 = *(v0 + 40);
  v10 = *(v0 + 48);
  v7[2] = v9 + 1;
  v12 = *(v11 + 80);
  *(v0 + 72) = v12;
  v13 = *(v11 + 72);
  *(v0 + 56) = v13;
  sub_1A93A3870(v10, v7 + ((v12 + 32) & ~v12) + v13 * v9, type metadata accessor for SpeechSlicer.VoiceQuery);
  *(v3 + 8) = v7;
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_1A939BC88;
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(v15, &type metadata for SpeechSlicer, &type metadata for TTSMarkup.Language, &protocol witness table for SpeechSlicer, &protocol witness table for TTSMarkup.Language);
}

uint64_t sub_1A939BC88()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939BD84, 0, 0);
}

uint64_t sub_1A939BD84()
{
  v1 = *(*(v0 + 24) + 8);
  if (!v1[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1A93A56B8(v1);
    v1 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v2 = *(*(v0 + 24) + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v1[2];
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = v4 - 1;
  sub_1A93A5704(v1 + ((*(v0 + 72) + 32) & ~*(v0 + 72)) + *(v0 + 56) * (v4 - 1), type metadata accessor for SpeechSlicer.VoiceQuery);
  v1[2] = v7;
  *(v6 + 8) = v1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A939BE6C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v5[810] = a5;
  v5[809] = a3;
  v5[808] = a2;
  v5[807] = a1;
  v7 = sub_1A957B308();
  v5[811] = v7;
  v8 = *(v7 - 8);
  v5[812] = v8;
  v9 = *(v8 + 64) + 15;
  v5[813] = swift_task_alloc();
  v5[814] = swift_task_alloc();
  v10 = *(*(sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40) - 8) + 64) + 15;
  v5[815] = swift_task_alloc();
  v11 = sub_1A957B8C8();
  v5[816] = v11;
  v12 = *(v11 - 8);
  v5[817] = v12;
  v13 = *(v12 + 64) + 15;
  v5[818] = swift_task_alloc();
  v14 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v5[819] = v14;
  v15 = *(v14 - 8);
  v5[820] = v15;
  v16 = *(v15 + 64) + 15;
  v5[821] = swift_task_alloc();
  v17 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v5[822] = swift_task_alloc();
  v5[823] = swift_task_alloc();
  v5[824] = swift_task_alloc();
  v5[825] = swift_task_alloc();
  memcpy(v5 + 2, a4, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A939C0A4, 0, 0);
}

uint64_t sub_1A939C0A4()
{
  v105 = v0;
  v1 = *(v0 + 6480);
  v100 = *(*(v0 + 6496) + 56);
  v100(*(v0 + 6600), 1, 1, *(v0 + 6488));
  v2 = *(v1 + 16);
  if (!v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

  v3 = 0;
  v99 = *(v0 + 6568);
  v4 = *(v0 + 6560);
  v5 = *(v4 + 72);
  v6 = (*(v0 + 6496) + 32);
  v7 = -v2;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = *(v0 + 6480) + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v97 = v9;
  while (2)
  {
    v101 = 0;
    v10 = 0;
    v98 = v8;
    *(v0 + 6608) = v8;
    v11 = v9 + v5 * v3++;
    while (1)
    {
      v15 = *(v0 + 6552);
      sub_1A93A5764(v11, *(v0 + 6568), type metadata accessor for SpeechSlicer.VoiceQuery);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        break;
      }

      v12 = *(v0 + 6600);
      v13 = *(v0 + 6568);
      v14 = *(v0 + 6488);
      sub_1A937B960(v12, &qword_1EB386988, &qword_1A9587830);
      (*v6)(v12, v13, v14);
      v100(v12, 0, 1, v14);
LABEL_5:
      ++v3;
      v11 += v5;
      if (v7 + v3 == 1)
      {
        if (!v10)
        {
          v8 = v98;
          goto LABEL_24;
        }

        v8 = v98;
        if (!*(*(v0 + 6464) + 16))
        {

          goto LABEL_24;
        }

        v24 = sub_1A937A490(v101, v10);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_24;
        }

        v27 = *(*(*(v0 + 6464) + 56) + 8 * v24);
        *(v0 + 6616) = v27;

        v28 = swift_task_alloc();
        *(v0 + 6624) = v28;
        *v28 = v0;
        v28[1] = sub_1A939CC48;
        v29 = *(v0 + 6600);
        v30 = *(v0 + 6520);

        return sub_1A940E980(v30, v29, v27);
      }
    }

    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v0 + 6568);

      v101 = *v17;
      v10 = *(v99 + 8);
      goto LABEL_5;
    }

    v18 = *(v0 + 6568);

    memcpy(__dst, v18, sizeof(__dst));
    v19 = v98;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1A93A3558(0, *(v98 + 16) + 1, 1, v98);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = v19;
    if (v21 >= v20 >> 1)
    {
      v22 = sub_1A93A3558((v20 > 1), v21 + 1, 1, v19);
    }

    *(v22 + 2) = v21 + 1;
    v23 = &v22[280 * v21];
    v8 = v22;
    memcpy(v23 + 32, __dst, 0x118uLL);
    v9 = v97;
    if (v7 + v3)
    {
      continue;
    }

    break;
  }

LABEL_24:
  *(v0 + 6664) = v8;
  v32 = *(v0 + 6584);
  v33 = *(v0 + 6496);
  v34 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v32, &qword_1EB386988, &qword_1A9587830);
  v35 = *(v33 + 48);
  *(v0 + 6672) = v35;
  *(v0 + 6680) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v36 = v35(v32, 1, v34);
  v37 = *(v0 + 6584);
  if (v36 == 1)
  {
    sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
    v38 = *(v0 + 6664);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = *(v0 + 6600);
      v41 = *(v0 + 6536);
      v42 = *(v0 + 6528);
      v43 = *(v0 + 6456);
      memcpy((v0 + 296), (v38 + 280 * v39 - 248), 0x118uLL);
      sub_1A937B3DC(v0 + 296, v0 + 576);

      v44 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v45 = *(v44 + 48);
      v46 = *(v44 + 64);
      memcpy(v43, (v0 + 296), 0x118uLL);
      memcpy(__dst, (v0 + 296), sizeof(__dst));
      sub_1A937B3DC(v0 + 296, v0 + 856);
      CoreSynthesizer.Voice.primaryLocale.getter(&v43[v45]);
      sub_1A937B960(v40, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B48C(v0 + 296);
      (*(v41 + 56))(&v43[v46], 1, 1, v42);
      type metadata accessor for SpeechSlicer.Slice.SliceType(0);
      goto LABEL_46;
    }

    memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
    if (sub_1A932D058(v0 + 1136) == 1)
    {
      v60 = *(**(v0 + 6472) + 200);
      v102 = (v60 + *v60);
      v61 = v60[1];
      v62 = swift_task_alloc();
      *(v0 + 6696) = v62;
      *v62 = v0;
      v62[1] = sub_1A939EA9C;
      v63 = *(v0 + 6504);
      v64 = *(v0 + 6472);

      return v102(v63);
    }

    v65 = *(v0 + 6680);
    v66 = *(v0 + 6672);
    v67 = *(v0 + 6664);
    v68 = *(v0 + 6600);
    v69 = *(v0 + 6576);
    v70 = *(v0 + 6488);
    v71 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v72 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v73 = *(v72 + 48);
    memcpy(v71, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v68, v69, &qword_1EB386988, &qword_1A9587830);
    if (v66(v69, 1, v70) == 1)
    {
      v74 = *(v0 + 6680);
      v75 = *(v0 + 6672);
      v76 = *(v0 + 6600);
      v77 = *(v0 + 6576);
      v78 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v71[v73]);
      sub_1A937B960(v76, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v75(v77, 1, v78) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v84 = *(v0 + 6576);
      v85 = *(v0 + 6496);
      v86 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v85 + 32))(&v71[v73], v84, v86);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v72 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_46:
    swift_storeEnumTagMultiPayload();
LABEL_47:
    v87 = *(v0 + 6600);
    v88 = *(v0 + 6592);
    v89 = *(v0 + 6584);
    v90 = *(v0 + 6576);
    v91 = *(v0 + 6568);
    v92 = *(v0 + 6544);
    v93 = *(v0 + 6520);
    v94 = *(v0 + 6512);
    v95 = *(v0 + 6504);

    v96 = *(v0 + 8);

    return v96();
  }

  v47 = *(v0 + 6512);
  (*(*(v0 + 6496) + 32))(v47, *(v0 + 6584), *(v0 + 6488));
  *(swift_task_alloc() + 16) = v47;
  sub_1A93A2E00(sub_1A93A57CC, v8, (v0 + 3376));

  memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
  if (sub_1A932D058(v0 + 3096) != 1)
  {
    v49 = *(v0 + 6536);
    v50 = *(v0 + 6528);
    v51 = *(v0 + 6512);
    v52 = *(v0 + 6496);
    v53 = *(v0 + 6488);
    v54 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v59 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v56 = *(v59 + 48);
    v57 = *(v59 + 64);
    v58 = (v0 + 3096);
    goto LABEL_32;
  }

  memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 3656) != 1)
  {
    v48 = *(v0 + 6512);
    memcpy(__dst, (v0 + 3656), sizeof(__dst));
    memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 4496, v0 + 4776);
    if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
    {
      v49 = *(v0 + 6536);
      v50 = *(v0 + 6528);
      v51 = *(v0 + 6512);
      v52 = *(v0 + 6496);
      v53 = *(v0 + 6488);
      v54 = *(v0 + 6456);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

      v55 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
      v56 = *(v55 + 48);
      v57 = *(v55 + 64);
      v58 = (v0 + 3656);
LABEL_32:
      memcpy(v54, v58, 0x118uLL);
      (*(v52 + 16))(&v54[v56], v51, v53);
      (*(v49 + 56))(&v54[v57], 1, 1, v50);
      type metadata accessor for SpeechSlicer.Slice.SliceType(0);
      swift_storeEnumTagMultiPayload();
      (*(v52 + 8))(v51, v53);
      goto LABEL_47;
    }

    sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
  }

  v79 = *(**(v0 + 6472) + 416);
  v103 = (v79 + *v79);
  v80 = v79[1];
  v81 = swift_task_alloc();
  *(v0 + 6688) = v81;
  *v81 = v0;
  v81[1] = sub_1A939E3B8;
  v82 = *(v0 + 6512);
  v83 = *(v0 + 6472);

  return v103(v0 + 4216, v82);
}

uint64_t sub_1A939CC48()
{
  v1 = *(*v0 + 6624);
  v2 = *(*v0 + 6616);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939CD60, 0, 0);
}

uint64_t sub_1A939CD60()
{
  v85 = v0;
  v1 = *(v0 + 6536);
  v2 = *(v0 + 6528);
  v3 = *(v0 + 6520);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1A937B960(v3, &qword_1EB386A18, &qword_1A9587E40);
  }

  else
  {
    v4 = *(v0 + 6544);
    v5 = *(v1 + 32);
    *(v0 + 6632) = v5;
    *(v0 + 6640) = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v5(v4, v3, v2);
    v6 = sub_1A957B8B8();
    *(v0 + 6648) = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = *(**(v0 + 6472) + 360);
      v81 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 6656) = v12;
      *v12 = v0;
      v12[1] = sub_1A939D7CC;
      v13 = *(v0 + 6472);

      return v81(v0 + 5616, v8, v9);
    }

    (*(*(v0 + 6536) + 8))(*(v0 + 6544), *(v0 + 6528));
  }

  v15 = *(v0 + 6608);
  *(v0 + 6664) = v15;
  v16 = *(v0 + 6584);
  v17 = *(v0 + 6496);
  v18 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v16, &qword_1EB386988, &qword_1A9587830);
  v19 = *(v17 + 48);
  *(v0 + 6672) = v19;
  *(v0 + 6680) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v20 = v19(v16, 1, v18);
  v21 = *(v0 + 6584);
  if (v20 != 1)
  {
    v31 = *(v0 + 6512);
    (*(*(v0 + 6496) + 32))(v31, *(v0 + 6584), *(v0 + 6488));
    *(swift_task_alloc() + 16) = v31;
    sub_1A93A2E00(sub_1A93A57CC, v15, (v0 + 3376));

    memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
    if (sub_1A932D058(v0 + 3096) == 1)
    {
      memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
      if (sub_1A932D058(v0 + 3656) != 1)
      {
        v32 = *(v0 + 6512);
        memcpy(__dst, (v0 + 3656), sizeof(__dst));
        memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 4496, v0 + 4776);
        if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
        {
          v33 = *(v0 + 6536);
          v34 = *(v0 + 6528);
          v35 = *(v0 + 6512);
          v36 = *(v0 + 6496);
          v37 = *(v0 + 6488);
          v38 = *(v0 + 6456);
          sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

          v39 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          v40 = *(v39 + 48);
          v41 = *(v39 + 64);
          v42 = (v0 + 3656);
LABEL_16:
          memcpy(v38, v42, 0x118uLL);
          (*(v36 + 16))(&v38[v40], v35, v37);
          (*(v33 + 56))(&v38[v41], 1, 1, v34);
          type metadata accessor for SpeechSlicer.Slice.SliceType(0);
          swift_storeEnumTagMultiPayload();
          (*(v36 + 8))(v35, v37);
LABEL_31:
          v71 = *(v0 + 6600);
          v72 = *(v0 + 6592);
          v73 = *(v0 + 6584);
          v74 = *(v0 + 6576);
          v75 = *(v0 + 6568);
          v76 = *(v0 + 6544);
          v77 = *(v0 + 6520);
          v78 = *(v0 + 6512);
          v79 = *(v0 + 6504);

          v80 = *(v0 + 8);

          return v80();
        }

        sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      }

      v63 = *(**(v0 + 6472) + 416);
      v83 = (v63 + *v63);
      v64 = v63[1];
      v65 = swift_task_alloc();
      *(v0 + 6688) = v65;
      *v65 = v0;
      v65[1] = sub_1A939E3B8;
      v66 = *(v0 + 6512);
      v67 = *(v0 + 6472);

      return v83(v0 + 4216, v66);
    }

    v33 = *(v0 + 6536);
    v34 = *(v0 + 6528);
    v35 = *(v0 + 6512);
    v36 = *(v0 + 6496);
    v37 = *(v0 + 6488);
    v38 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v43 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v40 = *(v43 + 48);
    v41 = *(v43 + 64);
    v42 = (v0 + 3096);
    goto LABEL_16;
  }

  sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
  v22 = *(v0 + 6664);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v0 + 6600);
    v25 = *(v0 + 6536);
    v26 = *(v0 + 6528);
    v27 = *(v0 + 6456);
    memcpy((v0 + 296), (v22 + 280 * v23 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v28 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v29 = *(v28 + 48);
    v30 = *(v28 + 64);
    memcpy(v27, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v27[v29]);
    sub_1A937B960(v24, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v25 + 56))(&v27[v30], 1, 1, v26);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    goto LABEL_31;
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v49 = *(v0 + 6680);
    v50 = *(v0 + 6672);
    v51 = *(v0 + 6664);
    v52 = *(v0 + 6600);
    v53 = *(v0 + 6576);
    v54 = *(v0 + 6488);
    v55 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v56 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v57 = *(v56 + 48);
    memcpy(v55, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v52, v53, &qword_1EB386988, &qword_1A9587830);
    if (v50(v53, 1, v54) == 1)
    {
      v58 = *(v0 + 6680);
      v59 = *(v0 + 6672);
      v60 = *(v0 + 6600);
      v61 = *(v0 + 6576);
      v62 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v55[v57]);
      sub_1A937B960(v60, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v59(v61, 1, v62) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v68 = *(v0 + 6576);
      v69 = *(v0 + 6496);
      v70 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v69 + 32))(&v55[v57], v68, v70);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v56 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_30;
  }

  v44 = *(**(v0 + 6472) + 200);
  v82 = (v44 + *v44);
  v45 = v44[1];
  v46 = swift_task_alloc();
  *(v0 + 6696) = v46;
  *v46 = v0;
  v46[1] = sub_1A939EA9C;
  v47 = *(v0 + 6504);
  v48 = *(v0 + 6472);

  return v82(v47);
}

uint64_t sub_1A939D7CC()
{
  v1 = *(*v0 + 6656);
  v2 = *(*v0 + 6648);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939D8E4, 0, 0);
}

uint64_t sub_1A939D8E4()
{
  v91 = v0;
  memcpy((v0 + 5336), (v0 + 5616), 0x118uLL);
  memcpy((v0 + 5056), (v0 + 5616), 0x118uLL);
  if (sub_1A932D058(v0 + 5056) != 1)
  {
    v17 = *(v0 + 6608);
    v18 = *(v0 + 6600);
    v19 = *(v0 + 6592);
    v20 = *(v0 + 6496);
    v21 = *(v0 + 6488);
    v22 = *(v0 + 6456);

    v23 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v24 = *(v23 + 48);
    memcpy(v22, (v0 + 5056), 0x118uLL);
    sub_1A9391BAC(v18, v19, &qword_1EB386988, &qword_1A9587830);
    v25 = *(v20 + 48);
    v26 = v25(v19, 1, v21);
    v27 = *(v0 + 6600);
    v28 = *(v0 + 6592);
    if (v26 == 1)
    {
      v87 = *(v0 + 6488);
      memcpy(__dst, (v0 + 5056), sizeof(__dst));
      memcpy((v0 + 5896), (v0 + 5336), 0x118uLL);
      sub_1A937B3DC(v0 + 5896, v0 + 6176);
      CoreSynthesizer.Voice.primaryLocale.getter(&v22[v24]);
      sub_1A937B960(v27, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 5336, &unk_1EB387BC0, &qword_1A9587E30);
      if (v25(v28, 1, v87) != 1)
      {
        sub_1A937B960(*(v0 + 6592), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v41 = *(v0 + 6496);
      v42 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v41 + 32))(&v22[v24], v28, v42);
    }

    v43 = *(v0 + 6640);
    v44 = *(v0 + 6536);
    v45 = *(v0 + 6528);
    v46 = *(v0 + 6456);
    v47 = *(v23 + 64);
    (*(v0 + 6632))(v46 + v47, *(v0 + 6544), v45);
    (*(v44 + 56))(v46 + v47, 0, 1, v45);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  (*(*(v0 + 6536) + 8))(*(v0 + 6544), *(v0 + 6528));
  v1 = *(v0 + 6608);
  *(v0 + 6664) = v1;
  v2 = *(v0 + 6584);
  v3 = *(v0 + 6496);
  v4 = *(v0 + 6488);
  sub_1A9391BAC(*(v0 + 6600), v2, &qword_1EB386988, &qword_1A9587830);
  v5 = *(v3 + 48);
  *(v0 + 6672) = v5;
  *(v0 + 6680) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v2, 1, v4);
  v7 = *(v0 + 6584);
  if (v6 != 1)
  {
    v29 = *(v0 + 6512);
    (*(*(v0 + 6496) + 32))(v29, *(v0 + 6584), *(v0 + 6488));
    *(swift_task_alloc() + 16) = v29;
    sub_1A93A2E00(sub_1A93A57CC, v1, (v0 + 3376));

    memcpy((v0 + 3096), (v0 + 3376), 0x118uLL);
    if (sub_1A932D058(v0 + 3096) == 1)
    {
      memcpy((v0 + 3656), (v0 + 16), 0x118uLL);
      if (sub_1A932D058(v0 + 3656) != 1)
      {
        v30 = *(v0 + 6512);
        memcpy(__dst, (v0 + 3656), sizeof(__dst));
        memcpy((v0 + 4496), (v0 + 16), 0x118uLL);
        sub_1A937B3DC(v0 + 4496, v0 + 4776);
        if (CoreSynthesizer.Voice.speaksLanguage(locale:)())
        {
          v31 = *(v0 + 6536);
          v32 = *(v0 + 6528);
          v33 = *(v0 + 6512);
          v34 = *(v0 + 6496);
          v35 = *(v0 + 6488);
          v36 = *(v0 + 6456);
          sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

          v37 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
          v38 = *(v37 + 48);
          v39 = *(v37 + 64);
          v40 = (v0 + 3656);
LABEL_19:
          memcpy(v36, v40, 0x118uLL);
          (*(v34 + 16))(&v36[v38], v33, v35);
          (*(v31 + 56))(&v36[v39], 1, 1, v32);
          type metadata accessor for SpeechSlicer.Slice.SliceType(0);
          swift_storeEnumTagMultiPayload();
          (*(v34 + 8))(v33, v35);
          goto LABEL_15;
        }

        sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      }

      v79 = *(**(v0 + 6472) + 416);
      v89 = (v79 + *v79);
      v80 = v79[1];
      v81 = swift_task_alloc();
      *(v0 + 6688) = v81;
      *v81 = v0;
      v81[1] = sub_1A939E3B8;
      v82 = *(v0 + 6512);
      v83 = *(v0 + 6472);

      return v89(v0 + 4216, v82);
    }

    v31 = *(v0 + 6536);
    v32 = *(v0 + 6528);
    v33 = *(v0 + 6512);
    v34 = *(v0 + 6496);
    v35 = *(v0 + 6488);
    v36 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v59 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v38 = *(v59 + 48);
    v39 = *(v59 + 64);
    v40 = (v0 + 3096);
    goto LABEL_19;
  }

  sub_1A937B960(*(v0 + 6584), &qword_1EB386988, &qword_1A9587830);
  v8 = *(v0 + 6664);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v0 + 6600);
    v11 = *(v0 + 6536);
    v12 = *(v0 + 6528);
    v13 = *(v0 + 6456);
    memcpy((v0 + 296), (v8 + 280 * v9 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v14 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v15 = *(v14 + 48);
    v16 = *(v14 + 64);
    memcpy(v13, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v13[v15]);
    sub_1A937B960(v10, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v11 + 56))(&v13[v16], 1, 1, v12);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
LABEL_15:
    v48 = *(v0 + 6600);
    v49 = *(v0 + 6592);
    v50 = *(v0 + 6584);
    v51 = *(v0 + 6576);
    v52 = *(v0 + 6568);
    v53 = *(v0 + 6544);
    v54 = *(v0 + 6520);
    v55 = *(v0 + 6512);
    v56 = *(v0 + 6504);

    v57 = *(v0 + 8);

    return v57();
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v65 = *(v0 + 6680);
    v66 = *(v0 + 6672);
    v67 = *(v0 + 6664);
    v68 = *(v0 + 6600);
    v69 = *(v0 + 6576);
    v70 = *(v0 + 6488);
    v71 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v72 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v73 = *(v72 + 48);
    memcpy(v71, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v68, v69, &qword_1EB386988, &qword_1A9587830);
    if (v66(v69, 1, v70) == 1)
    {
      v74 = *(v0 + 6680);
      v75 = *(v0 + 6672);
      v76 = *(v0 + 6600);
      v77 = *(v0 + 6576);
      v78 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v71[v73]);
      sub_1A937B960(v76, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v75(v77, 1, v78) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v84 = *(v0 + 6576);
      v85 = *(v0 + 6496);
      v86 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v85 + 32))(&v71[v73], v84, v86);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v72 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  v60 = *(**(v0 + 6472) + 200);
  v88 = (v60 + *v60);
  v61 = v60[1];
  v62 = swift_task_alloc();
  *(v0 + 6696) = v62;
  *v62 = v0;
  v62[1] = sub_1A939EA9C;
  v63 = *(v0 + 6504);
  v64 = *(v0 + 6472);

  return v88(v63);
}

uint64_t sub_1A939E3B8()
{
  v1 = *(*v0 + 6688);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939E4B4, 0, 0);
}

uint64_t sub_1A939E4B4()
{
  v55 = v0;
  memcpy((v0 + 3936), (v0 + 4216), 0x118uLL);
  if (sub_1A932D058(v0 + 3936) != 1)
  {
    v10 = *(v0 + 6664);
    v11 = *(v0 + 6536);
    v12 = *(v0 + 6528);
    v13 = *(v0 + 6512);
    v14 = *(v0 + 6496);
    v15 = *(v0 + 6488);
    v16 = *(v0 + 6456);
    sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);

    v17 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v18 = *(v17 + 48);
    v19 = *(v17 + 64);
    memcpy(v16, (v0 + 3936), 0x118uLL);
    (*(v14 + 16))(&v16[v18], v13, v15);
    (*(v11 + 56))(&v16[v19], 1, 1, v12);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    swift_storeEnumTagMultiPayload();
    (*(v14 + 8))(v13, v15);
LABEL_15:
    v43 = *(v0 + 6600);
    v44 = *(v0 + 6592);
    v45 = *(v0 + 6584);
    v46 = *(v0 + 6576);
    v47 = *(v0 + 6568);
    v48 = *(v0 + 6544);
    v49 = *(v0 + 6520);
    v50 = *(v0 + 6512);
    v51 = *(v0 + 6504);

    v52 = *(v0 + 8);

    return v52();
  }

  (*(*(v0 + 6496) + 8))(*(v0 + 6512), *(v0 + 6488));
  v1 = *(v0 + 6664);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 6600);
    v4 = *(v0 + 6536);
    v5 = *(v0 + 6528);
    v6 = *(v0 + 6456);
    memcpy((v0 + 296), (v1 + 280 * v2 - 248), 0x118uLL);
    sub_1A937B3DC(v0 + 296, v0 + 576);

    v7 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v8 = *(v7 + 48);
    v9 = *(v7 + 64);
    memcpy(v6, (v0 + 296), 0x118uLL);
    memcpy(__dst, (v0 + 296), sizeof(__dst));
    sub_1A937B3DC(v0 + 296, v0 + 856);
    CoreSynthesizer.Voice.primaryLocale.getter(&v6[v8]);
    sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);
    sub_1A937B48C(v0 + 296);
    (*(v4 + 56))(&v6[v9], 1, 1, v5);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  memcpy((v0 + 1136), (v0 + 16), 0x118uLL);
  if (sub_1A932D058(v0 + 1136) != 1)
  {
    v26 = *(v0 + 6680);
    v27 = *(v0 + 6672);
    v28 = *(v0 + 6664);
    v29 = *(v0 + 6600);
    v30 = *(v0 + 6576);
    v31 = *(v0 + 6488);
    v32 = *(v0 + 6456);
    memcpy((v0 + 1976), (v0 + 16), 0x118uLL);
    sub_1A937B3DC(v0 + 1976, v0 + 2256);

    v33 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v34 = *(v33 + 48);
    memcpy(v32, (v0 + 1136), 0x118uLL);
    sub_1A9391BAC(v29, v30, &qword_1EB386988, &qword_1A9587830);
    if (v27(v30, 1, v31) == 1)
    {
      v35 = *(v0 + 6680);
      v36 = *(v0 + 6672);
      v37 = *(v0 + 6600);
      v38 = *(v0 + 6576);
      v39 = *(v0 + 6488);
      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      memcpy((v0 + 2536), (v0 + 16), 0x118uLL);
      sub_1A937B3DC(v0 + 2536, v0 + 2816);
      CoreSynthesizer.Voice.primaryLocale.getter(&v32[v34]);
      sub_1A937B960(v37, &qword_1EB386988, &qword_1A9587830);
      sub_1A937B960(v0 + 16, &unk_1EB387BC0, &qword_1A9587E30);
      if (v36(v38, 1, v39) != 1)
      {
        sub_1A937B960(*(v0 + 6576), &qword_1EB386988, &qword_1A9587830);
      }
    }

    else
    {
      v40 = *(v0 + 6576);
      v41 = *(v0 + 6496);
      v42 = *(v0 + 6488);
      sub_1A937B960(*(v0 + 6600), &qword_1EB386988, &qword_1A9587830);
      (*(v41 + 32))(&v32[v34], v40, v42);
    }

    (*(*(v0 + 6536) + 56))(*(v0 + 6456) + *(v33 + 64), 1, 1, *(v0 + 6528));
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    goto LABEL_14;
  }

  v20 = *(**(v0 + 6472) + 200);
  v53 = (v20 + *v20);
  v21 = v20[1];
  v22 = swift_task_alloc();
  *(v0 + 6696) = v22;
  *v22 = v0;
  v22[1] = sub_1A939EA9C;
  v23 = *(v0 + 6504);
  v24 = *(v0 + 6472);

  return v53(v23);
}

uint64_t sub_1A939EA9C()
{
  v1 = *v0;
  v2 = *(*v0 + 6696);
  v3 = *(*v0 + 6472);
  v4 = *v0;

  v10 = (*v3 + 416);
  v11 = (*v10 + **v10);
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  v1[838] = v6;
  *v6 = v4;
  v6[1] = sub_1A939EC9C;
  v7 = v1[813];
  v8 = v1[809];

  return (v11)(v1 + 212, v7);
}

uint64_t sub_1A939EC9C()
{
  v1 = *(*v0 + 6704);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939ED98, 0, 0);
}

uint64_t sub_1A939ED98()
{
  memcpy(v0 + 177, v0 + 212, 0x118uLL);
  result = sub_1A932D058((v0 + 177));
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[833];
    v3 = v0[825];
    v4 = v0[817];
    v22 = v0[816];
    v5 = v0[813];
    v6 = v0[812];
    v7 = v0[811];
    v8 = v0[807];
    v9 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v10 = *(v9 + 48);
    v11 = *(v9 + 64);
    sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);

    memcpy(v8, v0 + 177, 0x118uLL);
    (*(v6 + 32))(&v8[v10], v5, v7);
    (*(v4 + 56))(&v8[v11], 1, 1, v22);
    type metadata accessor for SpeechSlicer.Slice.SliceType(0);
    swift_storeEnumTagMultiPayload();
    v12 = v0[825];
    v13 = v0[824];
    v14 = v0[823];
    v15 = v0[822];
    v16 = v0[821];
    v17 = v0[818];
    v18 = v0[815];
    v19 = v0[814];
    v20 = v0[813];

    v21 = v0[1];

    return v21();
  }

  return result;
}

uint64_t sub_1A939EF64(uint64_t a1)
{
  v2 = sub_1A957B0B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v27 - v11;
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v27 - v15;
  v17 = 0;
  v28 = a1;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v3 + 32;
  v27[2] = v3 + 16;
  v27[0] = v3 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v3 + 16))(v16, *(v28 + 48) + *(v3 + 72) * (v26 | (v25 << 6)), v2);
      (*(v3 + 32))(v8, v16, v2);
      sub_1A93A3C2C(v12, v8);
      result = (*(v3 + 8))(v12, v2);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SpeechSlicer.visitLeaf<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_1A937829C(&qword_1EB386A58, &unk_1A9587E90) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1A957B0B8();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A939F288, 0, 0);
}

uint64_t sub_1A939F288()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  sub_1A957B0A8();
  KeyPath = swift_getKeyPath();
  v8 = *(v3 + 16);
  v0[12] = v8;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  TTSMarkupSpeech.subscript.setter(v4, KeyPath, v6, *(v5 + 8));
  if ((*(v5 + 16))(v6, v5))
  {
    if (sub_1A93A2F24(*(v0[5] + 8), *(v0[5] + 24)))
    {

      return MEMORY[0x1EEE6DFA0](sub_1A939F608, 0, 0);
    }

    else
    {
      v21 = swift_task_alloc();
      v0[14] = v21;
      *v21 = v0;
      v21[1] = sub_1A939F50C;
      v22 = v0[5];

      return sub_1A9399B8C();
    }
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    v14 = v0[5];
    v8(v11, v9, v13);
    sub_1A93A3C2C(v10, v11);
    v15 = *(v12 + 8);
    v15(v10, v13);
    v15(v9, v13);
    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];
    v19 = v0[6];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1A939F50C()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939F608, 0, 0);
}

uint64_t sub_1A939F608()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  (*(v0 + 96))(v4, v2, v6);
  sub_1A93A3C2C(v3, v4);
  v8 = *(v5 + 8);
  v8(v3, v6);
  v8(v2, v6);
  v9 = *(v7 + 8);
  v10 = *(v7 + 24);

  *(v7 + 24) = v9;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1A939F8AC()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[13] = v2;
  v3 = v0[12];
  if (v2)
  {
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];
    v0[14] = *(v1 + 8);

    sub_1A957B0A8();
    KeyPath = swift_getKeyPath();
    v8 = *(v5 + 16);
    v0[15] = v8;
    v0[16] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v6, v3, v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    TTSMarkupSpeech.subscript.setter(v6, KeyPath, &type metadata for TTSMarkup.Audio, &protocol witness table for TTSMarkup.Audio);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1A939FA54;
    v10 = v0[3];

    return sub_1A9399B8C();
  }

  else
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1A939FA54()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A939FB50, 0, 0);
}

uint64_t sub_1A939FB50()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[3];
  v27 = v0[16];
  v28 = v0[4];
  *v7 = v0[14];
  v7[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_1A937829C(&qword_1EB386A60, &qword_1A9587EF8);
  v10 = *(v4 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A9587160;
  v1(v12 + v11, v3, v5);
  v13 = sub_1A93A72C4(v12);
  swift_setDeallocating();
  v14 = *(v4 + 8);
  v14(v12 + v11, v5);
  swift_deallocClassInstance();
  v15 = *(v28 + 48);
  sub_1A93A3870(v7, v8, type metadata accessor for SpeechSlicer.Slice.SliceType);
  *(v8 + v15) = v13;
  v16 = *(v9 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1A93A3680(0, v16[2] + 1, 1, v16);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1A93A3680(v17 > 1, v18 + 1, 1, v16);
  }

  v20 = v0[5];
  v19 = v0[6];
  v14(v0[12], v0[10]);
  v16[2] = v18 + 1;
  sub_1A93A7460(v19, v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18, &qword_1EB386A30, &unk_1A9587E60);
  *(v9 + 40) = v16;
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[9];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1A939FD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A939FF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A004C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A02F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A03A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A0434(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return SpeechSlicer.visit(_:)(a1);
}

uint64_t sub_1A93A04C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A9382328;

  return TTSMarkupAsyncVisitor.visitContainer<A>(_:)(a1, a4, a2, a5, a3);
}

uint64_t sub_1A93A0900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return SpeechSlicer.visitLeaf<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A93A09AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A93A09D0, 0, 0);
}

uint64_t sub_1A93A09D0()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v0[11] = *v2;
  v0[12] = *(v2 + 8);
  v5 = *(v1 + 8);
  v0[13] = v5;
  v6 = (*(v5 + 48))(v3);
  MEMORY[0x1AC585140](v6);

  v0[14] = *v2;
  v0[15] = *(v2 + 8);
  sub_1A937B960(v2 + 16, &qword_1EB3868E8, &unk_1A958F280);
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A93A0B00;
  v8 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v10 = v0[8];

  return TTSMarkupAsyncVisitor.visitChildren<A>(_:)(v11, &type metadata for SSMLBreadCrumber, v10, &off_1F1CF1800, v8);
}

uint64_t sub_1A93A0B00()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93A0BFC, 0, 0);
}

uint64_t *sub_1A93A0BFC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v7 = *(v0 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v8 = *(v0 + 88) & 0xFFFFFFFFFFFFLL;
  }

  sub_1A937B960((v4 + 2), &qword_1EB3868E8, &unk_1A958F280);
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[6] = 0;
  v9 = *v4;
  v10 = v4[1];
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  v12 = (*(v3 + 56))(v6, v3);
  MEMORY[0x1AC585140](v12);

  v14 = *v4;
  v13 = v4[1];
  if ((v13 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  result = swift_getKeyPath();
  if (v11 >= v7 && v15 >= v8)
  {
    v18 = *(v0 + 120);
    v20 = *(v0 + 96);
    v19 = *(v0 + 104);
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v23 = *(v0 + 112);
    }

    v24 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v24 = *(v0 + 88);
    }

    v25 = ((v18 >> 60) & ((*(v0 + 112) & 0x800000000000000) == 0)) == 0;
    v26 = 7;
    if (v25)
    {
      v27 = 7;
    }

    else
    {
      v27 = 11;
    }

    v28 = v27 | (v23 << 16);
    if (((v10 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v29 = 11;
    }

    else
    {
      v29 = 7;
    }

    if (((v20 >> 60) & ((*(v0 + 88) & 0x800000000000000) == 0)) != 0)
    {
      v30 = 11;
    }

    else
    {
      v30 = 7;
    }

    v31 = v30 | (v24 << 16);
    if (((v13 >> 60) & ((v14 & 0x800000000000000) == 0)) != 0)
    {
      v26 = 11;
    }

    *(v0 + 16) = v31;
    *(v0 + 24) = v26 | (v15 << 16);
    *(v0 + 32) = v28;
    *(v0 + 40) = v29 | (v11 << 16);
    *(v0 + 48) = 0;
    TTSMarkupSpeech.subscript.setter(v0 + 16, result, v21, v19);
    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A93A0DE8@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v3 = sub_1A93A74C8();
  return SpeechContext.subscript.getter(&type metadata for BreadCrumbContextKey, &type metadata for BreadCrumbContextKey, v3, a1);
}

double sub_1A93A0E38@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v3 = sub_1A93A74C8();
  SpeechContext.subscript.getter(&type metadata for BreadCrumbContextKey, &type metadata for BreadCrumbContextKey, v3, v8);
  v4 = v9;
  result = *v8;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1A93A0E98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  sub_1A93A74C8();
  return SpeechContext.subscript.setter(v4, &type metadata for BreadCrumbContextKey);
}

uint64_t sub_1A93A0EEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  sub_1A93A74C8();
  return SpeechContext.subscript.setter(v4, &type metadata for BreadCrumbContextKey);
}

uint64_t sub_1A93A0F34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1A93A0F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[37] = a3;
  v4[38] = v3;
  v4[35] = a1;
  v4[36] = a2;
  v5 = *(a2 - 8);
  v4[39] = v5;
  v6 = *(v5 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A93A0FF8, 0, 0);
}

uint64_t sub_1A93A0FF8()
{
  v1 = *(v0 + 304);
  sub_1A9391BAC(v1 + 16, v0 + 56, &qword_1EB3868E8, &unk_1A958F280);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v5 = *(v0 + 280);
    v4 = *(v0 + 288);
    sub_1A932D070((v0 + 56), v0 + 16);
    (*(v3 + 16))(v2, v5, v4);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 216);
      v8 = *(v0 + 232);
      v7 = *(v0 + 240);

      sub_1A9379534(v0 + 16, v0 + 136);
      sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
      if (swift_dynamicCast())
      {
        v9 = *(v0 + 304);
        v10 = *(v0 + 248);
        v11 = *(v0 + 264);
        v12 = *(v0 + 272);

        MEMORY[0x1AC585140](32, 0xE100000000000000);
      }
    }

    sub_1A9378138((v0 + 16));
  }

  else
  {
    sub_1A937B960(v0 + 56, &qword_1EB3868E8, &unk_1A958F280);
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 280);
  v15 = *v13;
  v16 = v13[1];
  if ((v16 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v17 = *v13 & 0xFFFFFFFFFFFFLL;
  }

  v18 = *(*(v0 + 296) + 8);
  v19 = (*(v18 + 64))(*(v0 + 288), v18);
  MEMORY[0x1AC585140](v19);

  v21 = *v13;
  v22 = v13[1];
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 < v17)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v0 + 312);
    v24 = *(v0 + 320);
    v26 = *(v0 + 280);
    v27 = *(v0 + 288);
    if (((v16 >> 60) & ((v15 & 0x800000000000000) == 0)) != 0)
    {
      v28 = 11;
    }

    else
    {
      v28 = 7;
    }

    v29 = v28 | (v17 << 16);
    if (((v22 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 11;
    }

    else
    {
      v30 = 7;
    }

    v31 = v30 | (v23 << 16);
    KeyPath = swift_getKeyPath();
    *(v0 + 176) = v29;
    *(v0 + 184) = v31;
    *(v0 + 192) = v29;
    *(v0 + 200) = v31;
    *(v0 + 208) = 0;
    TTSMarkupSpeech.subscript.setter(v0 + 176, KeyPath, v27, v18);
    *(v0 + 120) = v27;
    *(v0 + 128) = v18;
    v33 = sub_1A93981E4((v0 + 96));
    (*(v25 + 16))(v33, v26, v27);
    sub_1A93A38D8(v0 + 96, v1 + 16);

    v34 = *(v0 + 8);

    return v34();
  }

  return result;
}

uint64_t sub_1A93A12C8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1A93A138C;
  v2 = *(v0 + 72);

  return TTSMarkupAsyncVisitor.visit(_:)(v2, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
}

uint64_t sub_1A93A138C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93A1488, 0, 0);
}

uint64_t sub_1A93A1488()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_1A93A150C((v0 + 2));
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_1A93A153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A15EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A169C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkupAsyncVisitor.visit(_:)(a1, a2, a3);
}

uint64_t sub_1A93A174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93A09AC(a1, a2, a3);
}

uint64_t sub_1A93A17F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A93A0F40(a1, a2, a3);
}

BOOL CoreSynthesizer.Voice.speaksLanguage(locale:)()
{
  v1 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = v27 - v4;
  v6 = sub_1A957B2E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A957B188();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v30, v0, sizeof(v30));
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v7 + 8))(v11, v6);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_1A937B960(v5, &qword_1EB386A68, &qword_1A9587F40);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v17, v5, v12);
    memcpy(v29, v30, sizeof(v29));
    CoreSynthesizer.Voice.primaryLocales.getter(v28);
    v19 = v28[4];
    sub_1A93780F4(v28, v28[3]);
    v27[2] = MEMORY[0x1E69E7CD0];
    sub_1A937829C(&qword_1EB386A70, &qword_1A9587F48);
    v20 = *(v19 + 8);
    sub_1A957C408();
    v21 = v27[3];
    sub_1A9378138(v28);
    LOBYTE(v19) = Locale.LanguageCode.isMacroLanguage.getter();
    v22 = sub_1A939A620(v17, v21);
    v18 = v22;
    if (v19)
    {
      if (v22)
      {
        (*(v13 + 8))(v17, v12);

        return 1;
      }

      else
      {
        v23 = Locale.LanguageCode.childLanguages.getter();
        v24 = sub_1A93A5804(v21, v23);

        (*(v13 + 8))(v17, v12);
        v25 = *(v24 + 16);

        return v25 != 0;
      }
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }
  }

  return v18;
}

uint64_t sub_1A93A1C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a3;
  v31[1] = a2;
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v31 - v7;
  v9 = sub_1A957B2E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A957B188();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v31[0] = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = v31 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v31 - v26;
  v33 = *a1;

  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v10 + 8))(v14, v9);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    result = sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    (*(v16 + 32))(v27, v8, v15);
    v29 = v31[0];
    (*(v16 + 16))(v31[0], v27, v15);
    sub_1A93A3F0C(v24, v29);
    v30 = *(v16 + 8);
    v30(v24, v15);
    result = (v30)(v27, v15);
  }

  *v32 = v33;
  return result;
}

uint64_t sub_1A93A1F04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A957B0B8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_1A93A1F70@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1A93A1FF0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v5[197] = v4;
  v5[196] = a4;
  v5[195] = a3;
  v5[194] = a1;
  memcpy(v5 + 84, a2, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1A93A206C, 0, 0);
}

uint64_t sub_1A93A206C()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1552);
  v8 = *(v0 + 1560);
  *(v0 + 1536) = v8;
  v3 = sub_1A93981E4((v0 + 1512));
  (*(*(v8 - 8) + 16))(v3, v1);
  memcpy((v0 + 952), (v0 + 672), 0x118uLL);
  v4 = v2;
  sub_1A9391BAC(v0 + 672, v0 + 1232, &unk_1EB387BC0, &qword_1A9587E30);
  v5 = swift_task_alloc();
  *(v0 + 1584) = v5;
  *v5 = v0;
  v5[1] = sub_1A93A2198;
  v6 = *(v0 + 1552);

  return SpeechSlicer.init(mutableSpeech:synthesizer:utteranceVoice:)(v0 + 16, v0 + 1512, v6, v0 + 952);
}

uint64_t sub_1A93A2198()
{
  v2 = *(*v1 + 1584);
  v5 = *v1;
  *(*v1 + 1592) = v0;

  if (v0)
  {
    v3 = sub_1A93A2338;
  }

  else
  {
    v3 = sub_1A93A22AC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93A22AC()
{
  memcpy(v0 + 43, v0 + 2, 0x148uLL);
  v1 = v0[45];

  sub_1A93A751C((v0 + 43));
  sub_1A9378138(v0 + 189);
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1A93A2338()
{
  sub_1A9378138(v0 + 189);
  v1 = v0[1];
  v2 = v0[199];

  return v1();
}

uint64_t sub_1A93A239C()
{
  v1 = v0;
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A93A5764(v1, v12, type metadata accessor for SpeechSlicer.VoiceQuery);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v12;
      v15 = v12[1];
      MEMORY[0x1AC5863C0](1);
      sub_1A957C228();
    }

    else
    {
      memcpy(v18, v12, sizeof(v18));
      MEMORY[0x1AC5863C0](2);
      memcpy(v17, v18, sizeof(v17));
      sub_1A937B438();
      sub_1A957C068();
      return sub_1A937B48C(v18);
    }
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x1AC5863C0](0);
    sub_1A93A7604(&qword_1ED970220, MEMORY[0x1E6969770]);
    sub_1A957C068();
    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1A93A25F8()
{
  sub_1A957D4F8();
  sub_1A93A239C();
  return sub_1A957D548();
}

uint64_t sub_1A93A263C()
{
  sub_1A957D4F8();
  sub_1A93A239C();
  return sub_1A957D548();
}

uint64_t SpeechSlicer.Slice.ssml.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SpeechSlicer.Slice.type.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SpeechSlicer.Slice(0) + 24);

  return sub_1A93A754C(a1, v3);
}

uint64_t sub_1A93A278C(_OWORD *a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1A93780F4(v1 + 2, v3);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(v4 + 88))(v7, *v1, v1[1], v3, v4);
}

uint64_t sub_1A93A2800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a1;
  v7[25] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1A93A2828, 0, 0);
}

uint64_t sub_1A93A2828()
{
  v1 = *(v0 + 232);
  v3 = v1[5];
  v2 = v1[6];
  v13 = *(v0 + 200);
  v14 = *(v0 + 216);
  sub_1A93780F4(v1 + 2, v3);
  v4 = swift_task_alloc();
  *(v4 + 16) = v14;
  *(v4 + 32) = v13;
  TTSMarkupSpeech.transformed(_:)(sub_1A93A75B0, v4, v3, v2, (v0 + 112));

  if (*(v0 + 136))
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 192);
    sub_1A932D070((v0 + 112), v0 + 72);
    sub_1A9379534(v0 + 72, v0 + 152);
    v7 = type metadata accessor for SpeechSlicer.Slice(0);
    sub_1A93A5764(v5 + *(v7 + 24), v6 + *(v7 + 24), type metadata accessor for SpeechSlicer.Slice.SliceType);
    sub_1A9379534(v0 + 152, v6 + 16);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0;
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1A93A2A40;

    return TTSMarkupAsyncVisitor.visit(_:)(v6 + 16, &type metadata for SSMLBreadCrumber, &off_1F1CF1800);
  }

  else
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 192);
    sub_1A937B960(v0 + 112, &qword_1EB3868E8, &unk_1A958F280);
    sub_1A93A5764(v10, v11, type metadata accessor for SpeechSlicer.Slice);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1A93A2A40()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A93A2B3C, 0, 0);
}

uint64_t sub_1A93A2B3C()
{
  v1 = v0[24];
  v2 = v0[2];
  v3 = v0[3];

  sub_1A93A150C((v0 + 2));
  sub_1A9378138(v0 + 19);
  *v1 = v2;
  v1[1] = v3;
  sub_1A9378138(v0 + 9);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1A93A2BD0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1A957CC58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v24[-v13 - 8];
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v24[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1A9379534(a1, v24);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v20 = swift_dynamicCast();
  v21 = *(v15 + 56);
  if (v20)
  {
    v21(v14, 0, 1, a3);
    (*(v15 + 32))(v19, v14, a3);
    a2(v19);
    return (*(v15 + 8))(v19, a3);
  }

  else
  {
    v21(v14, 1, 1, a3);
    (*(v9 + 8))(v14, v8);
    return sub_1A9379534(a1, a4);
  }
}

void *sub_1A93A2E00@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 280 * v5 - 248);
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_1A937B3DC(__dst, v11);
      v8 = a1(__src);
      if (v3)
      {
        memcpy(v11, __src, sizeof(v11));
        return sub_1A937B48C(v11);
      }

      if (v8)
      {
        break;
      }

      --v5;
      memcpy(v11, __src, sizeof(v11));
      sub_1A937B48C(v11);
      v7 -= 280;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    memcpy(v11, __src, sizeof(v11));
    nullsub_23(v11);
    v9 = v11;
  }

  else
  {
LABEL_6:
    sub_1A93847E0(__dst);
    v9 = __dst;
  }

  return memcpy(a3, v9, 0x118uLL);
}

uint64_t sub_1A93A2F24(uint64_t a1, uint64_t a2)
{
  v64 = sub_1A957B308();
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v64, v6);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A937829C(&qword_1EB386A98, &unk_1A95884C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v54 - v11;
  v67 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v13 = *(*(v67 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v67, v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = MEMORY[0x1EEE9AC00](&v54 - v19, v20);
  v68 = &v54 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v29 = &v54 - v26;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v59 = v24;
  v60 = v28;
  v61 = v27;
  v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v55 = v8;
  v56 = (v4 + 32);
  v57 = v12;
  v58 = (v4 + 8);
  v65 = *(v25 + 72);
  v66 = &v54 - v26;
  while (1)
  {
    sub_1A93A5764(v32, v29, type metadata accessor for SpeechSlicer.VoiceQuery);
    v35 = v68;
    sub_1A93A5764(v33, v68, type metadata accessor for SpeechSlicer.VoiceQuery);
    v36 = &v12[*(v8 + 48)];
    sub_1A93A5764(v29, v12, type metadata accessor for SpeechSlicer.VoiceQuery);
    sub_1A93A5764(v35, v36, type metadata accessor for SpeechSlicer.VoiceQuery);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v44 = v59;
      sub_1A93A5764(v12, v59, type metadata accessor for SpeechSlicer.VoiceQuery);
      if (swift_getEnumCaseMultiPayload())
      {
        (*v58)(v44, v64);
        goto LABEL_27;
      }

      v45 = v8;
      v46 = v63;
      v47 = v36;
      v48 = v64;
      (*v56)(v63, v47, v64);
      v62 = MEMORY[0x1AC5840A0](v44, v46);
      v49 = *v58;
      v50 = v46;
      v8 = v45;
      v12 = v57;
      (*v58)(v50, v48);
      v49(v44, v48);
      sub_1A93A5704(v12, type metadata accessor for SpeechSlicer.VoiceQuery);
      v29 = v66;
      if ((v62 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v51 = v61;
    sub_1A93A5764(v12, v61, type metadata accessor for SpeechSlicer.VoiceQuery);
    memcpy(v72, v51, 0x118uLL);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A937B48C(v72);
      goto LABEL_27;
    }

    memcpy(v71, v36, sizeof(v71));
    memcpy(v70, v51, sizeof(v70));
    memcpy(v69, v36, sizeof(v69));
    v52 = static CoreSynthesizer.Voice.== infix(_:_:)(v70, v69);
    sub_1A937B48C(v71);
    sub_1A937B48C(v72);
    sub_1A93A5704(v12, type metadata accessor for SpeechSlicer.VoiceQuery);
    v29 = v66;
    if ((v52 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_7:
    sub_1A93A5704(v68, type metadata accessor for SpeechSlicer.VoiceQuery);
    sub_1A93A5704(v29, type metadata accessor for SpeechSlicer.VoiceQuery);
    v33 += v65;
    v32 += v65;
    if (!--v30)
    {
      return 1;
    }
  }

  v38 = v60;
  sub_1A93A5764(v12, v60, type metadata accessor for SpeechSlicer.VoiceQuery);
  v39 = *v38;
  v40 = v38[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (v39 == *v36 && v40 == *(v36 + 1))
    {
      v34 = *(v36 + 1);
    }

    else
    {
      v42 = *(v36 + 1);
      v43 = sub_1A957D3E8();

      if ((v43 & 1) == 0)
      {
        sub_1A93A5704(v12, type metadata accessor for SpeechSlicer.VoiceQuery);
        v29 = v66;
        goto LABEL_28;
      }
    }

    sub_1A93A5704(v12, type metadata accessor for SpeechSlicer.VoiceQuery);
    v8 = v55;
    v29 = v66;
    goto LABEL_7;
  }

LABEL_27:
  v29 = v66;
  sub_1A937B960(v12, &qword_1EB386A98, &unk_1A95884C0);
LABEL_28:
  sub_1A93A5704(v68, type metadata accessor for SpeechSlicer.VoiceQuery);
  sub_1A93A5704(v29, type metadata accessor for SpeechSlicer.VoiceQuery);
  return 0;
}