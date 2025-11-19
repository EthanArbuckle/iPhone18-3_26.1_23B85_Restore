void *sub_1AF42C43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D014();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 8);
    v7 = sub_1AF0D7FBC(v6);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C520(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44389C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42C624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D8B0();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  for (i = v1 - 1; ; --i)
  {
    v6 = *(v4 + 64);
    v7 = *(v4 + 96);
    v21 = *(v4 + 80);
    v22 = v7;
    v23 = *(v4 + 112);
    v8 = *(v4 + 16);
    v20[0] = *v4;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v20[1] = v8;
    v20[2] = v9;
    v20[3] = v10;
    v20[4] = v6;
    v28 = v6;
    v29 = v21;
    v26 = v9;
    v27 = v10;
    v24 = v20[0];
    v25 = v8;
    v11 = sub_1AF419A14(&v24);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v12 = v3[6] + 96 * v11;
    v13 = v27;
    *(v12 + 32) = v26;
    *(v12 + 48) = v13;
    v14 = v29;
    *(v12 + 64) = v28;
    *(v12 + 80) = v14;
    v15 = v25;
    *v12 = v24;
    *(v12 + 16) = v15;
    v16 = v3[7] + 24 * v11;
    v17 = v23;
    *v16 = v22;
    *(v16 + 16) = v17;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF0D8094(v20, v19, &unk_1EB638320, &type metadata for RenderVariantDescriptor, &type metadata for RenderStates, sub_1AF0D8108);
    v4 += 120;
  }

  sub_1AF0D8094(v20, v19, &unk_1EB638320, &type metadata for RenderVariantDescriptor, &type metadata for RenderStates, sub_1AF0D8108);
  return v3;
}

void *sub_1AF42C7DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443314();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 5);
    v6 = *(v4 - 4);
    v7 = *(v4 - 3);
    v13 = *(v4 - 1);
    v8 = *v4;
    v4 += 6;

    swift_unknownObjectRetain();
    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[7] + 32 * v9;
    *v11 = v7;
    *(v11 + 8) = v13;
    *(v11 + 24) = v8;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42C914(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443A6C();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v12 = *v4;
    v13 = *(v4 - 1);
    v10 = v4[2];
    v11 = v4[1];
    v5 = *(v4 + 48);
    v6 = *(v4 - 32);
    v7 = sub_1AF41AABC(v6, sub_1AFBF62E0, sub_1AF41B530);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    v8 = v3[7] + 80 * v7;
    *v8 = v13;
    *(v8 + 16) = v12;
    *(v8 + 32) = v11;
    *(v8 + 48) = v10;
    *(v8 + 64) = v5;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF42CA3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for PropertyDescription();
  v4 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E6158], v3, MEMORY[0x1E69E6168]);
  v5 = sub_1AF420554(0, v2, 0, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v8 = *(i - 1);
      v10 = *i;
      v11 = *(v5 + 2);
      v12 = *(v5 + 3);
      swift_bridgeObjectRetain_n();

      if (v11 >= v12 >> 1)
      {
        v5 = sub_1AF420554(v12 > 1, v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v13 = &v5[16 * v11];
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
      v17 = v16;
      v18 = v4[2] + ((v16 & 1) == 0);
      if (v4[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF844B24();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = v15;

        *(v4[7] + 8 * v20) = v10;

        goto LABEL_4;
      }

LABEL_3:
      v4[(v15 >> 6) + 8] |= 1 << v15;
      v7 = (v4[6] + 16 * v15);
      *v7 = v9;
      v7[1] = v8;
      *(v4[7] + 8 * v15) = v10;
      ++v4[2];
LABEL_4:
      if (!--v2)
      {
        return v4;
      }
    }

    sub_1AF82CE44(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF41A54C(v9, v8, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v4;
}

void *sub_1AF42CC94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D850();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v13 = v4[2];
    v14 = v4[3];
    v15 = *(v4 + 64);
    v7 = *v4;
    v6 = v4[1];
    v4 += 6;
    v11 = v7;
    v12 = v6;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = v3[7] + 80 * v8;
    *(v9 + 64) = v15;
    *(v9 + 32) = v13;
    *(v9 + 48) = v14;
    *v9 = v11;
    *(v9 + 16) = v12;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42CD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4437DC();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *v4;

    v8 = *(v4 - 1);
    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 16 * v9);
    *v11 = v8;
    v11[1] = v7;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42CEB4(uint64_t a1)
{
  sub_1AF442A88(0, &qword_1EB634060, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v20 - v6);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB633B90, type metadata accessor for GraphScriptingConfig.ScriptInfo, sub_1AF4499B0);
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);
  do
  {
    sub_1AF449A04(v11, v7, &qword_1EB634060, type metadata accessor for GraphScriptingConfig.ScriptInfo, &type metadata for GraphScriptingConfig.EvaluationMode, sub_1AF442A88);
    v13 = *v7;
    v21 = *(v7 + 4);
    v14 = v21;
    v15 = sub_1AF419B74(v13 | (v21 << 32));
    *(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = v9[6] + 8 * v15;
    *v16 = v13;
    *(v16 + 4) = v14;
    v17 = v9[7];
    v18 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
    sub_1AF445CBC(v7 + v10, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);
  return v9;
}

void *sub_1AF42D0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638600, type metadata accessor for BufferSlice);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42D1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43FB88();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);

    v7 = *v4;
    v8 = v4[1];
    v4 += 3;
    v13 = v7;
    v14 = v8;

    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 32 * v9);
    *v11 = v13;
    v11[1] = v14;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB6385F0, type metadata accessor for VFXREBindingMeshData, sub_1AF443A18);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = sub_1AF419BF8(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449950();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 92);
  do
  {
    v5 = *(v4 - 60);
    v6 = *(v4 - 52);
    v7 = *(v4 - 44);
    v8 = *(v4 - 36);
    v9 = *(v4 - 28);
    v10 = *(v4 - 20);
    v11 = *(v4 - 12);
    v12 = *(v4 - 1);
    v13 = *v4;
    v4 += 64;

    v14 = v7;

    v15 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = (v3[6] + 16 * v15);
    *v16 = v5;
    v16[1] = v6;
    v17 = v3[7] + 48 * v15;
    *v17 = v14;
    *(v17 + 8) = v8;
    *(v17 + 16) = v9;
    *(v17 + 24) = v10;
    *(v17 + 32) = v11;
    *(v17 + 40) = v12;
    *(v17 + 44) = v13;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42D60C(uint64_t a1, void (*a2)(void), void (*a3)(__int128 *, uint64_t *))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 32);

  for (i = v3 - 1; ; --i)
  {
    v9 = v7[4];
    v22 = v7[3];
    v23 = v9;
    v10 = v7[2];
    v20 = v7[1];
    v21 = v10;
    v19 = *v7;
    v11 = *(&v23 + 1);
    v12 = *(v7 + 61);
    v26 = v10;
    v27[0] = v22;
    *(v27 + 13) = v12;
    v24 = v19;
    v25 = v20;
    a3(&v19, &v18);
    v13 = sub_1AF419C3C(&v24);
    *(v6 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v6[6] + 72 * v13;
    v15 = v27[0];
    *(v14 + 32) = v26;
    *(v14 + 48) = v15;
    *(v14 + 61) = *(v27 + 13);
    v16 = v25;
    *v14 = v24;
    *(v14 + 16) = v16;
    *(v6[7] + 8 * v13) = v11;
    ++v6[2];
    if (!i)
    {
      break;
    }

    v7 += 5;
  }

  return v6;
}

void *sub_1AF42D750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4469DC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 4);
    v13 = v4[2];
    *v14 = v4[3];
    *&v14[9] = *(v4 + 57);
    v7 = *v4;
    v6 = v4[1];
    v4 += 6;
    v11 = v7;
    v12 = v6;
    v8 = sub_1AF0DB464(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v5;
    v9 = (v3[7] + 80 * v8);
    *(v9 + 57) = *&v14[9];
    v9[2] = v13;
    v9[3] = *v14;
    *v9 = v11;
    v9[1] = v12;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42D848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44377C();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void sub_1AF42D984(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, _OWORD *a3@<X8>)
{
  *&v24 = a1;
  a2(&v14, &v24);

  v30 = v21;
  v31 = v22;
  v32 = v23;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v24 = v15;
  v25 = v16;
  if (sub_1AF44812C(&v24) != 1)
  {
    v12[6] = v30;
    v12[7] = v31;
    v13 = v32;
    v12[2] = v26;
    v12[3] = v27;
    v12[4] = v28;
    v12[5] = v29;
    v12[0] = v24;
    v12[1] = v25;
    if (sub_1AF448140(v12) != 1)
    {
      nullsub_106();
      v5 = v4[5];
      a3[4] = v4[4];
      a3[5] = v5;
      v6 = v4[7];
      a3[6] = v4[6];
      a3[7] = v6;
      v7 = v4[1];
      *a3 = *v4;
      a3[1] = v7;
      v8 = v4[3];
      a3[2] = v4[2];
      a3[3] = v8;
      return;
    }

    nullsub_106();
  }

  v14 = 0;
  *&v15 = 0xE000000000000000;
  sub_1AFDFE218();
  v9 = sub_1AF9703D8();
  v11 = v10;

  v14 = v9;
  *&v15 = v11;
  MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF28020);
  sub_1AFDFE518();
  __break(1u);
}

__n128 sub_1AF42DB20(void *a1, unsigned int a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v10 = [swift_unknownObjectRetain() contents];
  v11 = a1;
  v12 = &v10[a2 + a3];
  *v12 = a4;
  v12[1] = a5;
  result = a7;
  v12[2] = a6;
  v12[3] = a7;
  return result;
}

__n128 sub_1AF42DBB0(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  v9 = a1;
  v10 = &v8[a2 + a3];
  v11 = *(a4 + 16);
  *v10 = *a4;
  *(v10 + 1) = v11;
  result = *(a4 + 32);
  *(v10 + 2) = result;
  return result;
}

id sub_1AF42DC3C(void *a1, unsigned int a2, uint64_t a3, double a4, double a5)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v10 = [swift_unknownObjectRetain() contents];
  result = a1;
  v12 = &v10[a2 + a3];
  *v12 = a4;
  v12[1] = a5;
  return result;
}

id sub_1AF42DCC0(void *a1, unsigned int a2, uint64_t a3, double a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[a2 + a3] = a4;
  return result;
}

id sub_1AF42DD3C(void *a1, unsigned int a2, uint64_t a3, float a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[a2 + a3] = a4;
  return result;
}

id sub_1AF42DDB8(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[a2 + a3] = a4;
  return result;
}

id sub_1AF42DE34(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  *&v8[a2 + a3] = a4;
  return result;
}

id sub_1AF42DEB0(void *a1, unsigned int a2, uint64_t a3, char a4)
{
  [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  v8 = [swift_unknownObjectRetain() contents];
  result = a1;
  v8[a2 + a3] = a4;
  return result;
}

uint64_t sub_1AF42DF2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder);
  if (v8 >> 61 == 6)
  {
    v9 = __ROR8__(v8 + 0x3FFFFFFFFFFFFFF0, 3);
    if (v9 <= 4)
    {
      if (!v9)
      {
        sub_1AF0D5A54(v7 + 8, &v61);
        swift_dynamicCast();
        v23 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 1;
        *(v11 + 32) = v23;
        v12 = sub_1AF448858;
        goto LABEL_25;
      }

      if (v9 == 4)
      {
        sub_1AF0D5A54(v7 + 8, &v61);
        swift_dynamicCast();
        v13 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 4;
        *(v11 + 32) = v13;
        v12 = sub_1AF448838;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v9)
      {
        case 5:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v21 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 4;
          *(v11 + 32) = v21;
          v12 = sub_1AF449CC4;
          goto LABEL_25;
        case 6:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v22 = *&v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 8;
          *(v11 + 32) = v22;
          v12 = sub_1AF44882C;
          goto LABEL_25;
        case 9:
          sub_1AF0D5A54(v7 + 8, &v61);
          swift_dynamicCast();
          v10 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 4;
          *(v11 + 32) = v10;
          v12 = sub_1AF448820;
          goto LABEL_25;
      }
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C420;
  sub_1AF442064(v8);
  sub_1AF442064(v8);
  v15 = sub_1AF90F890(v14 | 0x2000000000000000, v8);

  sub_1AF445BE4(v8);
  if (v15)
  {
    sub_1AF445BE4(v8);
    sub_1AF0D5A54(v7 + 8, &v61);
    sub_1AF445B28(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    swift_dynamicCast();
    v16 = *&v65[0];
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = 8;
    *(v11 + 32) = v16;
    v12 = sub_1AF448814;
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE4C430;
    sub_1AF442064(v8);
    v18 = sub_1AF90F890(v17 | 0x2000000000000000, v8);

    sub_1AF445BE4(v8);
    if (v18)
    {
      sub_1AF445BE4(v8);
      sub_1AF0D5A54(v7 + 8, &v61);
      sub_1AF445B28(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      swift_dynamicCast();
      v57 = v65[0];
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      *(v11 + 24) = 16;
      *(v11 + 32) = v57;
      v12 = sub_1AF4487F4;
    }

    else
    {
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AFE4C440;
      sub_1AF442064(v8);
      v20 = sub_1AF90F890(v19 | 0x2000000000000000, v8);

      sub_1AF445BE4(v8);
      if (v20)
      {
        sub_1AF445BE4(v8);
        sub_1AF0D5A54(v7 + 8, &v61);
        sub_1AF445B28(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        swift_dynamicCast();
        v58 = v65[0];
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = 16;
        *(v11 + 32) = v58;
        v12 = sub_1AF449CC0;
      }

      else
      {
        v24 = swift_allocObject();
        *(v24 + 16) = 2;
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1AFE4C420;
        *(v24 + 24) = v25 | 0x2000000000000000;
        sub_1AF442064(v8);
        v26 = sub_1AF90F890(v24 | 0x2000000000000000, v8);

        sub_1AF445BE4(v8);
        if (v26)
        {
          sub_1AF445BE4(v8);
          sub_1AF0D5A54(v7 + 8, &v61);
          type metadata accessor for simd_float2x2(0);
          swift_dynamicCast();
          v27 = v65[0];
          v11 = swift_allocObject();
          *(v11 + 16) = a3;
          *(v11 + 24) = 16;
          *(v11 + 32) = v27;
          v12 = sub_1AF4487E8;
        }

        else
        {
          v28 = swift_allocObject();
          *(v28 + 16) = 3;
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1AFE4C430;
          *(v28 + 24) = v29 | 0x2000000000000000;
          sub_1AF442064(v8);
          v30 = sub_1AF90F890(v28 | 0x2000000000000000, v8);

          sub_1AF445BE4(v8);
          if (v30)
          {
            sub_1AF445BE4(v8);
            sub_1AF0D5A54(v7 + 8, v65);
            type metadata accessor for simd_float3x3(0);
            swift_dynamicCast();
            v55 = v62;
            v59 = v61;
            v53 = v63;
            v11 = swift_allocObject();
            *(v11 + 16) = a3;
            *(v11 + 24) = 48;
            *(v11 + 32) = v59;
            *(v11 + 48) = v55;
            *(v11 + 64) = v53;
            v12 = sub_1AF4487B0;
          }

          else
          {
            v31 = swift_allocObject();
            *(v31 + 16) = 4;
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_1AFE4C440;
            *(v31 + 24) = v32 | 0x2000000000000000;
            v33 = sub_1AF90F890(v31 | 0x2000000000000000, v8);

            sub_1AF445BE4(v8);
            if ((v33 & 1) == 0)
            {
              return 0;
            }

            sub_1AF0D5A54(v7 + 8, v65);
            type metadata accessor for simd_float4x4(0);
            swift_dynamicCast();
            v56 = v62;
            v60 = v61;
            v52 = v64;
            v54 = v63;
            v11 = swift_allocObject();
            *(v11 + 16) = a3;
            *(v11 + 24) = 64;
            *(v11 + 32) = v60;
            *(v11 + 48) = v56;
            *(v11 + 64) = v54;
            *(v11 + 80) = v52;
            v12 = sub_1AF4487A0;
          }
        }
      }
    }
  }

LABEL_25:
  v34 = v12;
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = *a4;
  v37 = v61;
  v39 = sub_1AF0D3F10(a2);
  v40 = v38;
  v41 = v37[2] + ((v38 & 1) == 0);
  if (v37[3] >= v41)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a4 = v37;
      if (v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_1AF844CC0();
      v37 = v61;
      *a4 = v61;
      if (v40)
      {
        goto LABEL_32;
      }
    }

LABEL_31:
    sub_1AF85B950(v39, a2, MEMORY[0x1E69E7CC0], v37);
    goto LABEL_32;
  }

  sub_1AF82D0E8(v41, isUniquelyReferenced_nonNull_native);
  v37 = v61;
  v42 = sub_1AF0D3F10(a2);
  if ((v40 & 1) != (v43 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v39 = v42;
  *a4 = v37;
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_32:
  v44 = v37[7];
  v45 = *(v44 + 8 * v39);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + 8 * v39) = v45;
  if ((v46 & 1) == 0)
  {
    v45 = sub_1AF4221FC(0, v45[2] + 1, 1, v45, &unk_1EB638D00, sub_1AF4489BC);
    *(v44 + 8 * v39) = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    *(v44 + 8 * v39) = sub_1AF4221FC(v47 > 1, v48 + 1, 1, v45, &unk_1EB638D00, sub_1AF4489BC);
  }

  v49 = *(v44 + 8 * v39);
  *(v49 + 16) = v48 + 1;
  v50 = v49 + 16 * v48;
  *(v50 + 32) = sub_1AF449D18;
  *(v50 + 40) = v35;
  return 1;
}

void *sub_1AF42E9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446A3C();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *v4;

    v10 = *(v4 - 2);
    v11 = *(v4 - 1);
    v6 = *(v4 - 2);

    v7 = sub_1AF419CA8(v10, *(&v10 + 1), v6, *(&v11 + 1));
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = (v3[6] + 32 * v7);
    *v8 = v10;
    v8[1] = v11;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 5;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF42EABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43A480();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 4 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF42EBA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446910();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v4 += 40;

    v10 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v3[6] + 16 * v10);
    *v11 = v5;
    v11[1] = v6;
    v12 = v3[7] + 24 * v10;
    *v12 = v7;
    *(v12 + 8) = v8;
    *(v12 + 16) = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF42ECDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 16);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 24);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 32);
  v9 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 40);
  v10 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 48);
  v11 = *(a1 + OBJC_IVAR____TtC3VFX19_StaticECSValueNode_entityKeyPath + 50);
  v12 = swift_allocObject();
  *(v12 + 16) = *v4;
  *(v12 + 24) = v6;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  *(v12 + 64) = v10;
  *(v12 + 66) = v11;

  if (sub_1AFADB4E4(v8, 0))
  {
    v13 = MEMORY[0x1E69E6270];
  }

  else
  {
    v13 = *(v12 + 48);
  }

  v14 = sub_1AF87136C(v13);
  sub_1AF448864();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = xmmword_1AFE4C450;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  *(v17 + 32) = v12 | 0x2000000000000000;
  *(v17 + 40) = 1;
  *(v17 + 48) = xmmword_1AFE4C460;
  *(v17 + 64) = 1;
  *(v17 + 72) = a3;
  *(v17 + 80) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AF4488E0;
  *(v18 + 24) = v17;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a4;
  v22 = sub_1AF0D3F10(a2);
  v23 = v21;
  v24 = v20[2] + ((v21 & 1) == 0);
  if (v20[3] >= v24)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a4 = v20;
      if (v21)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1AF844CC0();
      *a4 = v20;
      if (v23)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    sub_1AF85B950(v22, a2, MEMORY[0x1E69E7CC0], v20);
    goto LABEL_11;
  }

  sub_1AF82D0E8(v24, isUniquelyReferenced_nonNull_native);
  v25 = sub_1AF0D3F10(a2);
  if ((v23 & 1) != (v26 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v22 = v25;
  *a4 = v20;
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  v27 = v20[7];
  v28 = *(v27 + 8 * v22);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 8 * v22) = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_1AF4221FC(0, v28[2] + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
    *(v27 + 8 * v22) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    *(v27 + 8 * v22) = sub_1AF4221FC(v30 > 1, v31 + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
  }

  v32 = *(v27 + 8 * v22);
  *(v32 + 16) = v31 + 1;
  v33 = v32 + 16 * v31;
  *(v33 + 32) = sub_1AF449D18;
  *(v33 + 40) = v18;
  return 1;
}

uint64_t sub_1AF42F054(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1AF9C0F60();
  if (!v5[2])
  {

    sub_1AFDFE518();
    __break(1u);
    goto LABEL_21;
  }

  v6 = v5[4];
  v7 = *(v5 + 40);
  v8 = v5[6];
  v9 = v5[7];
  v10 = *(v5 + 64);
  sub_1AF443EE0(v6);
  sub_1AF444224(v8);

  sub_1AFA9EF20(v6);
  if (sub_1AFADB4E4(v11, 0))
  {
    if ((v7 & 2) != 0)
    {
      v12 = MEMORY[0x1E69E6878];
    }

    else
    {
      v12 = MEMORY[0x1E69E6270];
    }
  }

  else
  {
    sub_1AFA9EF20(v6);
  }

  v13 = sub_1AF87136C(v12);
  sub_1AF448864();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = xmmword_1AFE4C450;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  *(v16 + 32) = v6;
  *(v16 + 40) = v7;
  *(v16 + 48) = v8;
  *(v16 + 56) = v9;
  *(v16 + 64) = v10;
  *(v16 + 72) = a3;
  *(v16 + 80) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1AF449D90;
  *(v17 + 24) = v16;
  sub_1AF443EE0(v6);
  sub_1AF444224(v8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a4;
  v20 = sub_1AF0D3F10(a2);
  v22 = v21;
  v23 = v19[2] + ((v21 & 1) == 0);
  if (v19[3] >= v23)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF844CC0();
    }

    v26 = a2;
    goto LABEL_13;
  }

  sub_1AF82D0E8(v23, isUniquelyReferenced_nonNull_native);
  v24 = sub_1AF0D3F10(a2);
  if ((v22 & 1) != (v25 & 1))
  {
LABEL_21:
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v20 = v24;
  v26 = a2;
LABEL_13:
  *a4 = v19;
  if ((v22 & 1) == 0)
  {
    sub_1AF85B950(v20, v26, MEMORY[0x1E69E7CC0], v19);
  }

  v27 = v19[7];
  v28 = *(v27 + 8 * v20);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 8 * v20) = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_1AF4221FC(0, v28[2] + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
    *(v27 + 8 * v20) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    *(v27 + 8 * v20) = sub_1AF4221FC(v30 > 1, v31 + 1, 1, v28, &unk_1EB638D00, sub_1AF4489BC);
  }

  sub_1AF443F24(v6);
  sub_1AF444AF4(v8);

  v32 = *(v27 + 8 * v20);
  *(v32 + 16) = v31 + 1;
  v33 = v32 + 16 * v31;
  *(v33 + 32) = sub_1AF449D18;
  *(v33 + 40) = v17;
  return 1;
}

uint64_t sub_1AF42F404(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v358 = *MEMORY[0x1E69E9840];
  sub_1AF9A64C8(&v267);
  v4 = v268;
  v318 = v268;
  v317 = v267;
  v5 = MEMORY[0x1E69E62F8];
  sub_1AF444058(&v317, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
  v316 = v269;
  sub_1AF444058(&v316, &unk_1EB638968, &type metadata for TypeConstraint, v5, sub_1AF449B08);
  v315 = v270;
  sub_1AF44943C(&v315, sub_1AF445C2C);
  v314 = v271;
  sub_1AF44943C(&v314, sub_1AF445C2C);
  v313 = v272;
  sub_1AF444058(&v313, &unk_1EB638978, &type metadata for AnyValue, v5, sub_1AF449B08);
  v6 = *(v4 + 16);
  sub_1AF444058(&v318, &unk_1EB638968, &type metadata for TypeConstraint, v5, sub_1AF449B08);
  if (v6 > 8)
  {
    sub_1AF3C5A5C(a1, 0, 1, 0xD000000000000010, 0x80000001AFF28320);
    swift_willThrow();
    return v5;
  }

  v260 = v2;
  v263 = a1;
  v7 = (a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  if (!v8)
  {
    return 0;
  }

  v9 = v7[2];
  v10 = v7[3];
  v11 = v7[1];
  v12 = MEMORY[0x1E69E7CC8];
  v266 = MEMORY[0x1E69E7CC8];
  v13 = 1 << *(v8 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v8 + 64);
  v250 = v11;
  v245 = v9;
  v253 = v10;
  sub_1AF448520(v8);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v264 = MEMORY[0x1E69E7CC0];
  v265 = v12;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_10:
      v19 = (v18 << 9) | (8 * __clz(__rbit64(v15)));
      v20 = *(*(v8 + 48) + v19);
      Buffer = RGBuilderCreateBuffer(*(v260 + 80), "Metal script buffer", *(*(v8 + 56) + v19), 0);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v264;
        v23 = v265;
      }

      else
      {
        v22 = sub_1AF42145C(0, *(v264 + 2) + 1, 1, v264);
        v23 = v265;
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v35 = sub_1AF42145C(v24 > 1, v25 + 1, 1, v22);
        v23 = v265;
        v22 = v35;
      }

      *(v22 + 2) = v25 + 1;
      v264 = v22;
      v26 = &v22[16 * v25];
      *(v26 + 4) = v20;
      *(v26 + 5) = Buffer;
      v27 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v27;
      v29 = sub_1AF0D3F10(v20);
      v31 = v30;
      v32 = v27[2] + ((v30 & 1) == 0);
      if (v27[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v29;
          sub_1AF845728();
          v29 = v36;
        }
      }

      else
      {
        sub_1AF82E2B4(v32, isUniquelyReferenced_nonNull_native);
        v29 = sub_1AF0D3F10(v20);
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_197:
          sub_1AFDFF1A8();
          __break(1u);
LABEL_198:
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
          v319 = v31;
          sub_1AFDFE458();
LABEL_199:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }

      v15 &= v15 - 1;
      v34 = aBlock;
      if (v31)
      {
        *(*(aBlock + 56) + 8 * v29) = Buffer;
        v17 = v18;
        v265 = v34;
        if (!v15)
        {
          break;
        }
      }

      else
      {
        *(aBlock + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v34[6] + 8 * v29) = v20;
        *(v34[7] + 8 * v29) = Buffer;
        ++v34[2];
        v17 = v18;
        v265 = v34;
        if (!v15)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      break;
    }

    v15 = *(v8 + 8 * v17++ + 72);
    if (v15)
    {
      goto LABEL_10;
    }
  }

  v38 = (*(*v263 + 328))(v37);
  sub_1AFDFF288();
  v39 = sub_1AF6ADC50(v38);
  MEMORY[0x1B271ACB0](v39);
  v40 = sub_1AFDFF2F8();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](19);
  v41 = sub_1AFDFF2F8();
  v42 = *(v263[3] + 16);
  v249 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes;

  v5 = MEMORY[0x1E69E7CC0];
  v256 = v42;
  if (v42)
  {
    v244 = v40;
    v44 = 0;
    v45 = 0;
    v248 = v43 + 32;
    v246 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v45)
      {
        v261 = v5;
        v262 = *(v248 + 8 * v45);
        sub_1AF442064(v262);

        v59 = sub_1AF3C3AA4(v58);

        sub_1AF3C3AA4(v60);

        v257 = v45;
        if (v45 < *(v59 + 16) && (v61 = *(v59 + v44 + 40)) != 0)
        {
          *&aBlock = *(v59 + v44 + 32);
          *(&aBlock + 1) = v61;
          v319 = 35;
          v320 = 0xE100000000000000;
          sub_1AF4486E4();
          v62 = sub_1AFDFDE98();
          v63 = *(v62 + 40);
          v258 = *(v62 + 32);

          v64 = v63;
        }

        else
        {
          v258 = 0;
          v64 = 0xE000000000000000;
        }

        swift_arrayDestroy();

        v65 = v262;
        v66 = v263[2] + v44;
        v67 = *(v66 + 32);
        v5 = *(v66 + 40);
        if (v262 >> 61 == 1)
        {
          goto LABEL_58;
        }

        if (v262 >> 61 != 6)
        {
          goto LABEL_181;
        }

        if (v262 > 0xC00000000000003FLL)
        {
          if (v262 <= 0xC0000000000000C7)
          {
            if (v262 != 0xC000000000000040)
            {
              v68 = 88;
              goto LABEL_57;
            }

LABEL_58:
            v254 = v64;
            sub_1AF8D12D8(v258, v64, v250, v253, v345);
            if (!v348)
            {

LABEL_176:

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD00000000000001DLL;
              *(&aBlock + 1) = 0x80000001AFF28120;
              v213 = v258;
              v214 = v64;
              goto LABEL_177;
            }

            if (!v265[2] || (v69 = v346, v70 = v347, v71 = v349, v72 = sub_1AF0D3F10(v346), (v73 & 1) == 0))
            {

              sub_1AF44943C(v345, sub_1AF448580);

              v65 = v262;
              goto LABEL_176;
            }

            v251 = *(v265[7] + 8 * v72);
            type metadata accessor for ConstantNode(0);
            v74 = swift_dynamicCastClass();
            if (v74)
            {
              v75 = v74;
              swift_retain_n();
              sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
              v76 = sub_1AF42DF2C(v75, v69, v70, &v266);

              sub_1AF44943C(v345, sub_1AF448580);
LABEL_69:
              v5 = v261;
              if ((v76 & 1) == 0)
              {
                goto LABEL_190;
              }

LABEL_70:

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v5 = sub_1AF42135C(0, *(v5 + 16) + 1, 1, v5);
              }

              v82 = *(v5 + 16);
              v81 = *(v5 + 24);
              if (v82 >= v81 >> 1)
              {
                v5 = sub_1AF42135C(v81 > 1, v82 + 1, 1, v5);
              }

              sub_1AF445BE4(v262);

              sub_1AF44943C(v345, sub_1AF448580);
              *(v5 + 16) = v82 + 1;
              v83 = v5 + 32 * v82;
              *(v83 + 32) = v69;
              *(v83 + 40) = 0;
              *(v83 + 48) = v251;
              *(v83 + 56) = v71;
              v45 = v257;
              goto LABEL_40;
            }

            if (*v67 == _TtC3VFX15GetECSValueNode && v67)
            {
              swift_retain_n();
              sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
              v77 = sub_1AF42ECDC(v67, v69, v70, &v266);
LABEL_68:
              v76 = v77;
              sub_1AF44943C(v345, sub_1AF448580);

              goto LABEL_69;
            }

            v78 = *v67;
            type metadata accessor for GetWorldValueNode(0);
            v79 = swift_dynamicCastClass();
            if (v79)
            {
              v80 = v79;
              swift_retain_n();
              sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
              v77 = sub_1AF42F054(v80, v69, v70, &v266);
              goto LABEL_68;
            }

            if (v78 == _TtC3VFX21ResolveResolutionNode && v67)
            {
              v130 = *(v260 + 72);
              swift_retain_n();
              sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
              v131 = sub_1AF9A2C3C(v130);
              if (v133)
              {

                sub_1AF44943C(v345, sub_1AF448580);
LABEL_190:

LABEL_191:

                v5 = v262;

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1AFDFE218();

                *&aBlock = 0xD000000000000019;
                *(&aBlock + 1) = 0x80000001AFF28150;
                MEMORY[0x1B2718AE0](v258, v254);

                sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

                swift_willThrow();
                sub_1AF44943C(v345, sub_1AF448580);

                v215 = v262;
LABEL_178:
                sub_1AF445BE4(v215);
LABEL_179:

                return v5;
              }

              v134 = v131;
              v135 = v132;
              v136 = swift_allocObject();
              v136[2] = v70;
              v136[3] = 16;
              v136[4] = v134;
              v136[5] = v135;
              v137 = swift_allocObject();
              *(v137 + 16) = sub_1AF4486D8;
              *(v137 + 24) = v136;
              v242 = v137;

              v138 = v266;
              v139 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = v138;
              v140 = sub_1AF0D3F10(v69);
              v31 = v141;
              v142 = v138[2] + ((v141 & 1) == 0);
              if (v138[3] >= v142)
              {
                v144 = MEMORY[0x1E69E7CC0];
                if (v139)
                {
                  goto LABEL_144;
                }

                v210 = v140;
                sub_1AF844CC0();
                v140 = v210;
                v144 = MEMORY[0x1E69E7CC0];
                v138 = aBlock;
                v266 = aBlock;
                if ((v31 & 1) == 0)
                {
LABEL_145:
                  v138[(v140 >> 6) + 8] |= 1 << v140;
                  *(v138[6] + 8 * v140) = v69;
                  *(v138[7] + 8 * v140) = v144;
                  ++v138[2];
                }
              }

              else
              {
                sub_1AF82D0E8(v142, v139);
                v138 = aBlock;
                v140 = sub_1AF0D3F10(v69);
                v144 = MEMORY[0x1E69E7CC0];
                if ((v31 & 1) != (v143 & 1))
                {
                  goto LABEL_197;
                }

LABEL_144:
                v266 = v138;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_145;
                }
              }

              v194 = (v138[7] + 8 * v140);
              v195 = *v194;
              v196 = swift_isUniquelyReferenced_nonNull_native();
              *v194 = v195;
              if ((v196 & 1) == 0)
              {
                v195 = sub_1AF4221FC(0, v195[2] + 1, 1, v195, &unk_1EB638D00, sub_1AF4489BC);
                *v194 = v195;
              }

              v198 = v195[2];
              v197 = v195[3];
              v199 = v198 + 1;
              if (v198 >= v197 >> 1)
              {
                *v194 = sub_1AF4221FC(v197 > 1, v198 + 1, 1, v195, &unk_1EB638D00, sub_1AF4489BC);
              }

              sub_1AF44943C(v345, sub_1AF448580);
              v200 = sub_1AF449D18;
LABEL_167:
              v207 = v200;

              v208 = *v194;
              v208[2] = v199;
              v209 = &v208[2 * v198];
              v209[4] = v207;
              v209[5] = v242;
              v5 = v261;
              goto LABEL_70;
            }

            if (v78 == _TtC3VFX17ViewConstantsNode && v67)
            {
              Strong = swift_unknownObjectUnownedLoadStrong();
              swift_retain_n();
              sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
              v240 = sub_1AF12E2AC(Strong);

              v31 = *(*(v67 + 32) + 8 * v5 + 32);
              sub_1AF448650(*(v67 + 24));
              sub_1AF442064(v31);

              sub_1AF90E730(v31);
              if (!v164)
              {
                goto LABEL_198;
              }

              v165 = v164;
              sub_1AF445BE4(v31);
              v166 = sub_1AF87136C(v165);
              v167 = swift_allocObject();
              v167[2] = v70;
              v167[3] = v166;
              v167[4] = v5;
              v167[5] = v240;
              v168 = swift_allocObject();
              *(v168 + 16) = sub_1AF4486CC;
              *(v168 + 24) = v167;
              v242 = v168;
              swift_unknownObjectRetain();

              v169 = v266;
              v170 = swift_isUniquelyReferenced_nonNull_native();
              *&aBlock = v169;
              v171 = sub_1AF0D3F10(v69);
              v31 = v172;
              v173 = v169[2] + ((v172 & 1) == 0);
              if (v169[3] >= v173)
              {
                v175 = MEMORY[0x1E69E7CC0];
                if (v170)
                {
                  goto LABEL_152;
                }

                v211 = v171;
                sub_1AF844CC0();
                v171 = v211;
                v175 = MEMORY[0x1E69E7CC0];
                v169 = aBlock;
                v266 = aBlock;
                if ((v31 & 1) == 0)
                {
LABEL_153:
                  v169[(v171 >> 6) + 8] |= 1 << v171;
                  *(v169[6] + 8 * v171) = v69;
                  *(v169[7] + 8 * v171) = v175;
                  ++v169[2];
                }
              }

              else
              {
                sub_1AF82D0E8(v173, v170);
                v169 = aBlock;
                v171 = sub_1AF0D3F10(v69);
                v175 = MEMORY[0x1E69E7CC0];
                if ((v31 & 1) != (v174 & 1))
                {
                  goto LABEL_197;
                }

LABEL_152:
                v266 = v169;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_153;
                }
              }

              v194 = (v169[7] + 8 * v171);
              v201 = *v194;
              v202 = swift_isUniquelyReferenced_nonNull_native();
              *v194 = v201;
              if ((v202 & 1) == 0)
              {
                v201 = sub_1AF4221FC(0, v201[2] + 1, 1, v201, &unk_1EB638D00, sub_1AF4489BC);
                *v194 = v201;
              }

              v198 = v201[2];
              v203 = v201[3];
              v199 = v198 + 1;
              if (v198 >= v203 >> 1)
              {
                *v194 = sub_1AF4221FC(v203 > 1, v198 + 1, 1, v201, &unk_1EB638D00, sub_1AF4489BC);
              }

              sub_1AF44943C(v345, sub_1AF448580);

              swift_unknownObjectRelease();
              v200 = sub_1AF449D18;
              goto LABEL_167;
            }

            if (v78 != _TtC3VFX18FrameConstantsNode || !v67)
            {

              goto LABEL_191;
            }

            v181 = swift_unknownObjectUnownedLoadStrong();
            swift_retain_n();
            sub_1AF4495B8(v345, &aBlock, sub_1AF448580);
            v241 = sub_1AF12E2AC(v181);

            v31 = *(*(v67 + 32) + 8 * v5 + 32);
            sub_1AF448650(*(v67 + 24));
            sub_1AF442064(v31);

            sub_1AF90E730(v31);
            if (!v182)
            {
              goto LABEL_198;
            }

            v183 = v182;
            sub_1AF445BE4(v31);
            v184 = sub_1AF87136C(v183);
            v185 = swift_allocObject();
            v185[2] = v70;
            v185[3] = v184;
            v185[4] = v5;
            v185[5] = v241;
            v186 = swift_allocObject();
            *(v186 + 16) = sub_1AF448690;
            *(v186 + 24) = v185;
            v242 = v186;
            swift_unknownObjectRetain();

            v187 = v266;
            v188 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v187;
            v189 = sub_1AF0D3F10(v69);
            v31 = v190;
            v191 = v187[2] + ((v190 & 1) == 0);
            if (v187[3] >= v191)
            {
              v193 = MEMORY[0x1E69E7CC0];
              if (v188)
              {
                goto LABEL_160;
              }

              v212 = v189;
              sub_1AF844CC0();
              v189 = v212;
              v193 = MEMORY[0x1E69E7CC0];
              v187 = aBlock;
              v266 = aBlock;
              if ((v31 & 1) == 0)
              {
LABEL_161:
                v187[(v189 >> 6) + 8] |= 1 << v189;
                *(v187[6] + 8 * v189) = v69;
                *(v187[7] + 8 * v189) = v193;
                ++v187[2];
              }
            }

            else
            {
              sub_1AF82D0E8(v191, v188);
              v187 = aBlock;
              v189 = sub_1AF0D3F10(v69);
              v193 = MEMORY[0x1E69E7CC0];
              if ((v31 & 1) != (v192 & 1))
              {
                goto LABEL_197;
              }

LABEL_160:
              v266 = v187;
              if ((v31 & 1) == 0)
              {
                goto LABEL_161;
              }
            }

            v194 = (v187[7] + 8 * v189);
            v204 = *v194;
            v205 = swift_isUniquelyReferenced_nonNull_native();
            *v194 = v204;
            if ((v205 & 1) == 0)
            {
              v204 = sub_1AF4221FC(0, v204[2] + 1, 1, v204, &unk_1EB638D00, sub_1AF4489BC);
              *v194 = v204;
            }

            v198 = v204[2];
            v206 = v204[3];
            v199 = v198 + 1;
            if (v198 >= v206 >> 1)
            {
              *v194 = sub_1AF4221FC(v206 > 1, v198 + 1, 1, v204, &unk_1EB638D00, sub_1AF4489BC);
            }

            sub_1AF44943C(v345, sub_1AF448580);

            swift_unknownObjectRelease();
            v200 = sub_1AF44869C;
            goto LABEL_167;
          }

          if (v262 == 0xC0000000000000D0)
          {
            v110 = v64;
            v111 = swift_retain_n();
            sub_1AF42D984(v111, a2, &v350);

            v325 = v354;
            v326 = v355;
            v327 = v356;
            v328 = v357;
            aBlock = v350;
            v322 = v351;
            v323 = v352;
            v324 = v353;
            v112 = (&aBlock + v5);
            v113 = *v112;
            v114 = v112[1];
            if (RGResourceIsNull(v114))
            {
              goto LABEL_199;
            }

            if (RGPassIsNull(v113))
            {
              goto LABEL_199;
            }

            v325 = v354;
            v326 = v355;
            v327 = v356;
            v328 = v357;
            aBlock = v350;
            v322 = v351;
            v323 = v352;
            v324 = v353;
            v115 = *v112;
            if (RGResourceIsNull(v112[1]) || RGPassIsNull(v115))
            {
              goto LABEL_199;
            }

            sub_1AF8D12D8(v258, v110, v250, v253, v333);

            if (!v337)
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000020;
              *(&aBlock + 1) = 0x80000001AFF281B0;
              sub_1AF9A64C8(v281);
              v306 = v282;
              v5 = sub_1AF970A64(v257, v282);
              v218 = v217;
              v305 = v281[0];
              v219 = MEMORY[0x1E69E62F8];
              sub_1AF444058(&v305, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
              v304 = v281[1];
              sub_1AF444058(&v304, &unk_1EB638968, &type metadata for TypeConstraint, v219, sub_1AF449B08);
              v303 = v281[2];
              sub_1AF444058(&v303, &unk_1EB638968, &type metadata for TypeConstraint, v219, sub_1AF449B08);
              sub_1AF44943C(&v306, sub_1AF445C2C);
              v302 = v283;
              sub_1AF44943C(&v302, sub_1AF445C2C);
              v301 = v284;
              sub_1AF444058(&v301, &unk_1EB638978, &type metadata for AnyValue, v219, sub_1AF449B08);
              MEMORY[0x1B2718AE0](v5, v218);

              MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
              v221 = *(&aBlock + 1);
              v220 = aBlock;
              v222 = v263;
              v223 = v257;
              goto LABEL_186;
            }

            v116 = v336;
            v117 = v338;
            if ((v335 & 1) == 0)
            {
              v118 = v334;
              TextureReferenceDescriptor = RGResourceGetTextureReferenceDescriptor(v114);
              TextureType = RGTextureReferenceDescriptorGetTextureType(TextureReferenceDescriptor);
              if (TextureType)
              {
                v121 = *TextureType;
                v122 = sub_1AF1F1FF4(*TextureType);
                if (v122 != sub_1AF1F1FF4(v118))
                {

                  *&aBlock = 0;
                  *(&aBlock + 1) = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0x657420646E756F42, 0xEF20206572757478);
                  v230 = sub_1AF4676EC(v121);
                  MEMORY[0x1B2718AE0](v230);

                  MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF28260);
                  v231 = sub_1AF4676EC(v118);
                  MEMORY[0x1B2718AE0](v231);

                  MEMORY[0x1B2718AE0](0x706E6920726F6620, 0xEB00000000207475);
                  sub_1AF9A64C8(v277);
                  v300 = v278;
                  v5 = sub_1AF970A64(v257, v278);
                  v233 = v232;
                  v299 = v277[0];
                  v234 = MEMORY[0x1E69E62F8];
                  sub_1AF444058(&v299, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
                  v298 = v277[1];
                  sub_1AF444058(&v298, &unk_1EB638968, &type metadata for TypeConstraint, v234, sub_1AF449B08);
                  v297 = v277[2];
                  sub_1AF444058(&v297, &unk_1EB638968, &type metadata for TypeConstraint, v234, sub_1AF449B08);
                  sub_1AF44943C(&v300, sub_1AF445C2C);
                  v296 = v279;
                  sub_1AF44943C(&v296, sub_1AF445C2C);
                  v295 = v280;
                  sub_1AF444058(&v295, &unk_1EB638978, &type metadata for AnyValue, v234, sub_1AF449B08);
                  MEMORY[0x1B2718AE0](v5, v233);

                  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
                  sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

                  swift_willThrow();

                  sub_1AF44943C(v333, sub_1AF448580);
                  goto LABEL_179;
                }
              }

              if (((v118 - 4) & 0xFFFFFFFFFFFFFFFBLL) != 0)
              {
                RGResourceGetTextureReferenceDescriptor(v114);
                RGTextureReferenceDescriptorCopy();
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v246 = sub_1AF42124C(0, *(v246 + 2) + 1, 1, v246);
            }

            v124 = *(v246 + 2);
            v123 = *(v246 + 3);
            if (v124 >= v123 >> 1)
            {
              v246 = sub_1AF42124C(v123 > 1, v124 + 1, 1, v246);
            }

            *(v246 + 2) = v124 + 1;
            *&v246[8 * v124 + 32] = v115;
            v125 = v261;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v125 = sub_1AF42135C(0, *(v261 + 2) + 1, 1, v261);
            }

            v45 = v257;
            v127 = *(v125 + 2);
            v126 = *(v125 + 3);
            v128 = v125;
            if (v127 >= v126 >> 1)
            {
              v128 = sub_1AF42135C(v126 > 1, v127 + 1, 1, v125);
            }

            sub_1AF44943C(v333, sub_1AF448580);

            *(v128 + 2) = v127 + 1;
            v129 = &v128[32 * v127];
            v5 = v128;
            *(v129 + 4) = v116;
            *(v129 + 5) = 0;
            *(v129 + 6) = v114;
            v129[56] = v117;
          }

          else
          {
            if (v262 != 0xC0000000000000C8)
            {
LABEL_181:

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000012;
              *(&aBlock + 1) = 0x80000001AFF28100;
              v213 = sub_1AF90D394(v262);
LABEL_177:
              MEMORY[0x1B2718AE0](v213, v214);

              sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();

              v215 = v65;
              goto LABEL_178;
            }

            v84 = v64;
            v85 = *(v67 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);

            if (!v85)
            {

              sub_1AF9A6150();
            }

            Texture = RGBuilderCreateTexture(*(v260 + 80), "metal script output", v85);
            v87 = v258;
            if (sub_1AFDFD188())
            {
              sub_1AFDFD048();
              v88 = sub_1AF8083E0();
              v90 = v89;
              v92 = v91;
              v94 = v93;

              v87 = MEMORY[0x1B27189E0](v88, v90, v92, v94);
              v84 = v95;
            }

            v45 = v257;
            sub_1AF8D11AC(v87, v84, v245, v253, v329);

            if (v331)
            {
              v96 = v330;
              v97 = v332;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v261 = sub_1AF42135C(0, *(v261 + 2) + 1, 1, v261);
              }

              v99 = *(v261 + 2);
              v98 = *(v261 + 3);
              if (v99 >= v98 >> 1)
              {
                v261 = sub_1AF42135C(v98 > 1, v99 + 1, 1, v261);
              }

              sub_1AF44943C(v329, sub_1AF448580);

              *(v261 + 2) = v99 + 1;
              v100 = &v261[32 * v99];
              *(v100 + 4) = v96;
              *(v100 + 5) = 0;
              *(v100 + 6) = Texture;
              v100[56] = v97;
              v5 = v261;
              v45 = v257;
            }

            else
            {
              if (v244 != v41)
              {

                *&aBlock = 0;
                *(&aBlock + 1) = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF282A0);
                sub_1AF9A64C8(v273);
                v294 = v274;
                v5 = sub_1AF970A64(v257, v274);
                v228 = v227;
                v293 = v273[0];
                v229 = MEMORY[0x1E69E62F8];
                sub_1AF444058(&v293, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
                v292 = v273[1];
                sub_1AF444058(&v292, &unk_1EB638968, &type metadata for TypeConstraint, v229, sub_1AF449B08);
                v291 = v273[2];
                sub_1AF444058(&v291, &unk_1EB638968, &type metadata for TypeConstraint, v229, sub_1AF449B08);
                sub_1AF44943C(&v294, sub_1AF445C2C);
                v290 = v275;
                sub_1AF44943C(&v290, sub_1AF445C2C);
                v289 = v276;
                sub_1AF444058(&v289, &unk_1EB638978, &type metadata for AnyValue, v229, sub_1AF449B08);
                MEMORY[0x1B2718AE0](v5, v228);

                MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
                sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

                swift_willThrow();

                return v5;
              }

              v176 = v261;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v176 = sub_1AF42135C(0, *(v261 + 2) + 1, 1, v261);
              }

              v178 = *(v176 + 2);
              v177 = *(v176 + 3);
              v179 = v176;
              if (v178 >= v177 >> 1)
              {
                v179 = sub_1AF42135C(v177 > 1, v178 + 1, 1, v176);
              }

              *(v179 + 2) = v178 + 1;
              v180 = &v179[32 * v178];
              v5 = v179;
              *(v180 + 4) = 0;
              *(v180 + 5) = 0;
              *(v180 + 6) = Texture;
              v180[56] = 3;
            }
          }
        }

        else
        {
          if (v262 > 0xC00000000000002FLL)
          {
            if (v262 != 0xC000000000000030)
            {
              v68 = 56;
              goto LABEL_57;
            }

            goto LABEL_58;
          }

          if (v262 != 0xC000000000000000)
          {
            v68 = 16;
LABEL_57:
            if (v262 != (v68 & 0xFFFFFFFFFFFFLL | 0xC000000000000000))
            {
              goto LABEL_181;
            }

            goto LABEL_58;
          }

          v101 = v64;
          v102 = *(v263 + v249);

          sub_1AF3C3AA4(v103);

          sub_1AF3C3AA4(v104);

          v45 = v257;
          v105 = *(v102 + 8 * v257 + 32);
          sub_1AF4410A8(v105);

          if (v105 >> 61 != 4)
          {

            sub_1AF441114(v105);
            v5 = v261;
            goto LABEL_185;
          }

          v106 = *((v105 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_1AF442064(v106);
          sub_1AF441114(v105);
          v5 = v261;
          if (v106 >> 61)
          {

            sub_1AF445BE4(v106);
LABEL_185:

            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1AFDFE218();

            *&aBlock = 0xD000000000000015;
            *(&aBlock + 1) = 0x80000001AFF28190;
            v224 = sub_1AF90D394(0xC000000000000000);
            MEMORY[0x1B2718AE0](v224);

            v221 = *(&aBlock + 1);
            v220 = aBlock;
            v222 = v263;
            v223 = v257;
LABEL_186:
            sub_1AF3C5A5C(v222, v223, 0, v220, v221);

            swift_willThrow();
LABEL_187:

            return v5;
          }

          v107 = *(v106 + 16);
          sub_1AF442064(v107);
          sub_1AF445BE4(v106);
          v108 = sub_1AF90F890(v107, 0xC0000000000000C8);
          if (v108)
          {
            v109 = RGResourceIdentifierFinalColor(v108);
            RGTextureReferenceDescriptorCreate(v109, 1.0);
          }

          if (sub_1AF90F890(v107, 0xC0000000000000D0))
          {
            sub_1AF8D12D8(v258, v101, v250, v253, v339);

            if (!v343)
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              v235 = v107;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000020;
              *(&aBlock + 1) = 0x80000001AFF281B0;
              sub_1AF9A64C8(v285);
              v312 = v286;
              v5 = sub_1AF970A64(v257, v286);
              v237 = v236;
              v311 = v285[0];
              v238 = MEMORY[0x1E69E62F8];
              sub_1AF444058(&v311, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
              v310 = v285[1];
              sub_1AF444058(&v310, &unk_1EB638968, &type metadata for TypeConstraint, v238, sub_1AF449B08);
              v309 = v285[2];
              sub_1AF444058(&v309, &unk_1EB638968, &type metadata for TypeConstraint, v238, sub_1AF449B08);
              sub_1AF44943C(&v312, sub_1AF445C2C);
              v308 = v287;
              sub_1AF44943C(&v308, sub_1AF445C2C);
              v307 = v288;
              sub_1AF444058(&v307, &unk_1EB638978, &type metadata for AnyValue, v238, sub_1AF449B08);
              MEMORY[0x1B2718AE0](v5, v237);

              MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF281E0);
              sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();
              v226 = v235;
LABEL_195:
              sub_1AF445BE4(v226);
              goto LABEL_187;
            }

            v259 = v107;
            if ((v341 & 1) != 0 || (v145 = v340, ((v340 - 4) & 0xFFFFFFFFFFFFFFFBLL) == 0))
            {

              *&aBlock = 0;
              *(&aBlock + 1) = 0xE000000000000000;
              sub_1AFDFE218();

              *&aBlock = 0xD000000000000018;
              *(&aBlock + 1) = 0x80000001AFF28200;
              v225 = sub_1AF90D394(0xC000000000000000);
              MEMORY[0x1B2718AE0](v225);

              sub_1AF3C5A5C(v263, v257, 0, aBlock, *(&aBlock + 1));

              swift_willThrow();
              sub_1AF44943C(v339, sub_1AF448580);
              v226 = v107;
              goto LABEL_195;
            }

            v252 = v342;
            v255 = v344;
            v146 = swift_unknownObjectUnownedLoadStrong();
            v147 = sub_1AF12E2AC(v146);

            v148 = [v147 resourceManager];
            swift_unknownObjectRelease();
            v243 = v148;
            v149 = [v148 defaultTextureForTextureType_];
            CFXTextureDescriptorFromMTLTexture(v149, v150, v151, v152, &aBlock);
            v153 = v322;
            LOBYTE(v148) = BYTE2(v322);
            v154 = *(&aBlock + 4);
            v155 = HIDWORD(aBlock);
            v156 = aBlock;
            v239 = *(v260 + 80);
            v157 = swift_allocObject();
            *(v157 + 16) = v149;
            *&v323 = sub_1AF0FBA6C;
            *(&v323 + 1) = v157;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v322 = sub_1AF419890;
            *(&v322 + 1) = &unk_1F250E2A8;
            v158 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            *(&aBlock + 4) = v154;
            LODWORD(aBlock) = v156;
            HIDWORD(aBlock) = v155;
            BYTE2(v322) = v148;
            LOWORD(v322) = v153;
            ExternalTexture = RGBuilderCreateExternalTexture(v239, "DefaultTexture", &aBlock, v158, 0);
            _Block_release(v158);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v261 = sub_1AF42135C(0, *(v261 + 2) + 1, 1, v261);
            }

            v45 = v257;
            v161 = *(v261 + 2);
            v160 = *(v261 + 3);
            if (v161 >= v160 >> 1)
            {
              v261 = sub_1AF42135C(v160 > 1, v161 + 1, 1, v261);
            }

            sub_1AF445BE4(v259);
            swift_unknownObjectRelease();
            sub_1AF44943C(v339, sub_1AF448580);

            v5 = v261;
            *(v261 + 2) = v161 + 1;
            v162 = &v261[32 * v161];
            *(v162 + 4) = v252;
            *(v162 + 5) = 0;
            *(v162 + 6) = ExternalTexture;
            v162[56] = v255;
          }

          else
          {
            sub_1AF445BE4(v107);
          }
        }
      }

LABEL_40:
      ++v45;
      v44 += 16;
      if (v256 == v45)
      {
        goto LABEL_29;
      }
    }
  }

  v246 = MEMORY[0x1E69E7CC0];
LABEL_29:

  if (*(v264 + 2))
  {
    v46 = v5;
    v47 = *(v260 + 80);
    v48 = v266;
    v49 = swift_allocObject();
    *(v49 + 16) = v264;
    *(v49 + 24) = v48;
    *&v323 = sub_1AF448798;
    *(&v323 + 1) = v49;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v322 = sub_1AF874D7C;
    *(&v322 + 1) = &unk_1F250E2F8;
    v50 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();

    CustomPass = RGBuilderCreateCustomPass(v47, "Load data", v50);
    _Block_release(v50);

    v52 = *(v264 + 2);
    v53 = v246;
    if (v52)
    {
      v54 = (v264 + 40);
      do
      {
        v55 = *v54;
        v54 += 2;
        RGPassWritesTo(CustomPass, v55);
        --v52;
      }

      while (v52);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1AF42124C(0, *(v246 + 2) + 1, 1, v246);
    }

    v57 = *(v53 + 2);
    v56 = *(v53 + 3);
    if (v57 >= v56 >> 1)
    {
      v53 = sub_1AF42124C(v56 > 1, v57 + 1, 1, v53);
    }

    *(v53 + 2) = v57 + 1;
    *&v53[8 * v57 + 32] = CustomPass;
    v5 = v46;
  }

  else
  {
  }

  return v5;
}

void *sub_1AF432414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445010();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF0D8094(v4, &v15, &qword_1EB638830, MEMORY[0x1E69E6158], &_s8MetadataVN, sub_1AF0D8108);
    v5 = v15;
    v6 = v16;
    v7 = sub_1AF41A54C(v15, v16, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = (v3[6] + 16 * v7);
    *v8 = v5;
    v8[1] = v6;
    v9 = v3[7] + 88 * v7;
    v10 = v18;
    *v9 = v17;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    *(v9 + 80) = v22;
    *(v9 + 48) = v12;
    *(v9 + 64) = v13;
    *(v9 + 16) = v10;
    *(v9 + 32) = v11;
    ++v3[2];
    v4 += 104;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &unk_1EB63F530, sub_1AF444CB4);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;

    v10 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v3[6] + 16 * v10);
    *v11 = v5;
    v11[1] = v6;
    v12 = (v3[7] + 24 * v10);
    *v12 = v8;
    v12[1] = v7;
    v12[2] = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444C24();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v8 = *v4;
    v7 = v4[1];
    v9 = v4[3];
    v10 = v4[5];
    v16 = v4[4];
    v17 = v4[2];
    v11 = v4[6];

    v12 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = (v3[6] + 16 * v12);
    *v13 = v5;
    v13[1] = v6;
    v14 = (v3[7] + 56 * v12);
    *v14 = v8;
    v14[1] = v7;
    v14[2] = v17;
    v14[3] = v9;
    v14[4] = v16;
    v14[5] = v10;
    v14[6] = v11;
    ++v3[2];
    v4 += 9;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43D0F8();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v8 = *(v4 - 1);
    v7 = *v4;

    v9 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v5;
    v10[1] = v6;
    v11 = (v3[7] + 16 * v9);
    *v11 = v8;
    v11[1] = v7;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44519C();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v8 = *v4;
    v5 = *(v4 - 8);

    v6 = sub_1AF41A220(v5);
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    *(v3[6] + v6) = v5;
    *(v3[7] + 16 * v6) = v8;
    ++v3[2];
    v4 = (v4 + 24);
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF432BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B748();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 36);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 12);
    v7 = sub_1AF0DB464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 4 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1AF432C94(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v873 = *MEMORY[0x1E69E9840];
  type metadata accessor for ConstantNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for WorldObjectNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for WorldAssetNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  v11 = *v8;
  _ZF = *v8 == _TtC3VFX15GetECSValueNode || *v8 == _TtC3VFX21TextureDescriptorNode;
  if (_ZF && v8)
  {
    goto LABEL_20;
  }

  type metadata accessor for GetWorldValueNode(0);
  v13 = swift_dynamicCastClass();
  v14 = v11 != _TtC3VFX21ResolveResolutionNode || v8 == 0;
  v15 = v14;
  if (v13)
  {
    goto LABEL_20;
  }

  if (!v15)
  {
    goto LABEL_20;
  }

  type metadata accessor for _ArrayNode(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_20;
  }

  type metadata accessor for EnumConstantNode(0);
  v20 = swift_dynamicCastClass();
  v21 = v11 != _TtC3VFX17ViewConstantsNode;
  v22 = v11 != _TtC3VFX18FrameConstantsNode;
  if (!v8)
  {
    v21 = 1;
    v22 = 1;
  }

  if (v20 || !v21 || !v22)
  {
LABEL_20:
    sub_1AF44844C(&v864);
LABEL_21:
    v16 = v871;
    *(v10 + 96) = v870;
    *(v10 + 112) = v16;
    *(v10 + 128) = v872;
    v17 = v867;
    *(v10 + 32) = v866;
    *(v10 + 48) = v17;
    v18 = v869;
    *(v10 + 64) = v868;
    *(v10 + 80) = v18;
    v19 = v865;
    *v10 = v864;
    *(v10 + 16) = v19;
    return;
  }

  v550 = v2;
  if (v11 == _TtC3VFX15CopyTextureNode && v8)
  {
    v23 = v8[2];
    isa = v23[1].isa;
    *&v849 = v23->info;
    swift_retain_n();
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) == 1)
    {
LABEL_33:
      *aBlock = 0;
      *&aBlock[8] = 0xE000000000000000;
      sub_1AFDFE218();

      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v8)[3].info)(v567, v25);
      v674 = v568;
      v26 = sub_1AF970A64(0, v568);
      v28 = v27;
      v673 = v567[0];
      v29 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v673, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v672 = v567[1];
      sub_1AF444058(&v672, &unk_1EB638968, &type metadata for TypeConstraint, v29, sub_1AF449B08);
      v671 = v567[2];
      sub_1AF444058(&v671, &unk_1EB638968, &type metadata for TypeConstraint, v29, sub_1AF449B08);
      sub_1AF44943C(&v674, sub_1AF445C2C);
      v670 = v569;
      sub_1AF44943C(&v670, sub_1AF445C2C);
      v669 = v570;
      v30 = &v669;
LABEL_34:
      sub_1AF444058(v30, &unk_1EB638978, &type metadata for AnyValue, v29, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v26, v28);

      v31 = 0xD000000000000018;
      v32 = 0x80000001AFF27C70;
LABEL_35:
      MEMORY[0x1B2718AE0](v31, v32);
      v34 = *&aBlock[8];
      v33 = *aBlock;
LABEL_36:
      v35 = v8;
      v36 = 0;
LABEL_37:
      sub_1AF3C5A5C(v35, v36, 0, v33, v34);

      swift_willThrow();
      goto LABEL_204;
    }

    v855 = *&v827[96];
    v856 = *&v827[112];
    v857 = v827[128];
    v851 = *&v827[32];
    v852 = *&v827[48];
    v854 = *&v827[80];
    v853 = *&v827[64];
    v850 = *&v827[16];
    v849 = *v827;
    if (sub_1AF448140(&v849) == 1)
    {
      nullsub_106();
      goto LABEL_33;
    }

    nullsub_106();
    v80 = v79;
    if (sub_1AF3C567C(isa))
    {
      *&v838 = 0;
      *(&v838 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v838 = 0x207475706E49;
      *(&v838 + 1) = 0xE600000000000000;
      ((*v8)[3].info)(v563, v81);
      v668 = v564;
      v82 = sub_1AF970A64(0, v564);
      v84 = v83;
      v667 = v563[0];
      v85 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v667, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v666 = v563[1];
      sub_1AF444058(&v666, &unk_1EB638968, &type metadata for TypeConstraint, v85, sub_1AF449B08);
      v665 = v563[2];
      sub_1AF444058(&v665, &unk_1EB638968, &type metadata for TypeConstraint, v85, sub_1AF449B08);
      sub_1AF44943C(&v668, sub_1AF445C2C);
      v664 = v565;
      sub_1AF44943C(&v664, sub_1AF445C2C);
      v663 = v566;
      sub_1AF444058(&v663, &unk_1EB638978, &type metadata for AnyValue, v85, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v82, v84);

      MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
      v34 = *(&v838 + 1);
      v33 = v838;
      goto LABEL_36;
    }

    v842 = v80[4];
    v843 = v80[5];
    v844 = v80[6];
    v845 = v80[7];
    v838 = *v80;
    v839 = v80[1];
    v840 = v80[2];
    v841 = v80[3];
    v134 = &v838 + isa;
    v135 = *v134;
    v136 = *(v134 + 1);
    if (RGResourceIsNull(v136) || RGPassIsNull(v135))
    {
      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v137 = *(v2 + 72);
    v541 = *(v2 + 80);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v139 = sub_1AF9A2B58();
    if (!v139)
    {
      v139 = RGNullTextureReferenceDescriptor();
    }

    sub_1AF24EDE8(v541, v137, "Convert texture", v135, v136, v139, &v818);

    goto LABEL_130;
  }

  if (v11 == _TtC3VFX15RenderWorldNode && v8)
  {
    v37 = v8[2];
    superclass = v37[4].superclass;
    *&v849 = v37[4].isa;
    swift_retain_n();
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) == 1)
    {
LABEL_44:
      v532 = 0;
      v529 = 1;
LABEL_45:
      v534 = sub_1AF9A2DFC();
      if (!v534)
      {
        v534 = RGNullTextureReferenceDescriptor();
      }

      v39 = v8[2];
      vtable = v39[4].vtable;
      *&v838 = v39[4].cache;
      swift_retain_n();
      v6(aBlock, &v838);

      v855 = *&aBlock[104];
      v856 = *&aBlock[120];
      v857 = v848;
      v851 = *&aBlock[40];
      v852 = *&aBlock[56];
      v854 = *&aBlock[88];
      v853 = *&aBlock[72];
      v850 = *&aBlock[24];
      v849 = *&aBlock[8];
      if (sub_1AF44812C(&v849) == 1)
      {
        goto LABEL_50;
      }

      v844 = v855;
      v845 = v856;
      v846 = v857;
      v840 = v851;
      v841 = v852;
      v843 = v854;
      v842 = v853;
      v839 = v850;
      v838 = v849;
      if (sub_1AF448140(&v838) == 1)
      {
        nullsub_106();
LABEL_50:
        v522 = 0;
        v520 = 1;
LABEL_51:
        *&v818 = MEMORY[0x1E69E7CC0];
        v41 = swift_dynamicCastClass();

        if (!v41)
        {
          v42 = sub_1AF3C67D8();
          if (!v42)
          {
LABEL_156:
            v121 = 0xD000000000000014;
            v122 = 0x80000001AFF27ED0;
            v123 = v8;
            v124 = 11;
            goto LABEL_157;
          }

          v43 = *(v42 + 2);
          if (v43)
          {
            v44 = v42 + 36;
            while (*(v44 - 1) != -1 || *v44 != 0)
            {
              v44 += 2;
              if (!--v43)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_156;
          }

LABEL_60:
          sub_1AF48FED4(v42);
        }

        *&v46 = sub_1AF9A113C();
        v47 = 0;
        v48 = 0uLL;
        while (1)
        {
          v562 = v46;
          if (*(&v562 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) >= 0.0)
          {
            v561 = v48;
            *(&v561 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) = 0;
            v48 = v561;
          }

          else
          {
            v560 = v48;
            *(&v560 & 0xFFFFFFFFFFFFFFF3 | (4 * (v47 & 3))) = -1;
            v48 = v560;
          }

          if (v47 == 3)
          {
            break;
          }

          ++v47;
        }

        v525 = v48;
        *&v59 = sub_1AF9A113C();
        v60 = 0;
        v61 = 0uLL;
        while (1)
        {
          v559 = v59;
          if (*(&v559 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) <= 1.0)
          {
            v558 = v61;
            *(&v558 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) = 0;
            v61 = v558;
          }

          else
          {
            v557 = v61;
            *(&v557 & 0xFFFFFFFFFFFFFFF3 | (4 * (v60 & 3))) = -1;
            v61 = v557;
          }

          if (v60 == 3)
          {
            break;
          }

          ++v60;
        }

        if (vminvq_s32(vorrq_s8(v61, v525)) < 0)
        {

          v121 = 0xD000000000000058;
          v122 = 0x80000001AFF27EF0;
          v123 = v8;
          v124 = 3;
LABEL_157:
          sub_1AF3C5A5C(v123, v124, 0, v121, v122);
          swift_willThrow();

LABEL_203:

          goto LABEL_204;
        }

        *&v816 = RGNullPass();
        v526 = sub_1AF3C5CF0(0, v8);
        v519 = sub_1AF3C5CF0(1, v8);
        v518 = sub_1AF3C5CF0(2, v8);
        v62 = sub_1AF3C5CF0(3, v8);

        v63 = sub_1AF9A25A8(1, 0);

        if (v63)
        {
          v64 = v63;
          MEMORY[0x1B2718E00]();
          if (*((v550[17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v550[17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
        }

        v65 = v550[9];
        v66 = v550[10];
        v67 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C2C58(v65, v67, v63, v526, v519, v518, v62, &v829, v532, v529, v522, v520, v534, &v816, v66);

        if (RGPassIsNull(v816))
        {
        }

        else
        {
          v142 = v816;
          v143 = v818;
          v144 = v550[16];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v146 = v550 + 16;
          v550[16] = v144;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v144 = sub_1AF4216A8(0, v144[2] + 1, 1, v144);
            v550[16] = v144;
          }

          v147 = v144[2];
          sub_1AFCEF59C(v147);

          v148 = *v146;
          *(v148 + 16) = v147 + 1;
          v149 = v148 + 16 * v147;
          *(v149 + 32) = v142;
          *(v149 + 40) = v143;
          *v146 = v148;
        }

        v842 = v833;
        v843 = v834;
        v844 = v835;
        v845 = v836;
        v838 = v829;
        v839 = v830;
        v840 = v831;
        v841 = v832;
        sub_1AF448404(&v838);
        *&aBlock[96] = v844;
        *&aBlock[112] = v845;
        aBlock[128] = v846;
        *&aBlock[32] = v840;
        *&aBlock[48] = v841;
        *&aBlock[80] = v843;
        *&aBlock[64] = v842;
        v150 = v839;
        v151 = v838;
        goto LABEL_165;
      }

      nullsub_106();
      v110 = v109[5];
      *&v862[25] = v109[4];
      *&v862[27] = v110;
      v111 = v109[7];
      *&v862[29] = v109[6];
      *&v862[31] = v111;
      v112 = v109[1];
      *&v862[17] = *v109;
      *&v862[19] = v112;
      v113 = v109[3];
      *&v862[21] = v109[2];
      *&v862[23] = v113;
      if (sub_1AF3C567C(vtable) == 1)
      {
        sub_1AF3C654C(vtable);
        v522 = v114;
        v115 = RGContextResolveTextureDescriptor(*(v2 + 72), v114);
        if (v115)
        {
          v829 = *v115;
          *&v830 = *(v115 + 16);
          IsNull = RGTextureReferenceDescriptorIsNull(v534);
          if ((IsNull & 1) != 0 || (v117 = *(v2 + 72), LOBYTE(v816) = 0, IsNull = RGContextTryResolveTextureDescriptor(v117, v534, &v816, &v818), (v816 & 1) == 0))
          {
            v187 = RGResourceIdentifierFinalColor(IsNull);
            RGTextureReferenceDescriptorCreate(v187, 1.0);
          }

          v816 = v818;
          v817 = v819;
          v118 = sub_1AF448440(&v816);
          v816 = v829;
          v817 = v830;
          v119 = sub_1AF445CA8(&v816);
          v816 = v818;
          v817 = v819;
          if (v119 != sub_1AF445CA8(&v816) || (v816 = v829, v817 = v830, v120 = sub_1AF445CB0(&v816), v816 = v818, v817 = v819, v120 != sub_1AF445CB0(&v816)))
          {
            v195 = "ure that only has 1 sample";
            v168 = 0xD000000000000042;
LABEL_199:
            v169 = v195 | 0x8000000000000000;
            v170 = v8;
            v171 = 9;
            goto LABEL_200;
          }

          if (v118 >= 2)
          {
            v818 = v829;
            *&v819 = v830;
            if (sub_1AF448440(&v818) <= 1)
            {
              v195 = "e of output texture size";
              v168 = 0xD00000000000003ALL;
              goto LABEL_199;
            }
          }
        }

        v520 = 0;
        goto LABEL_51;
      }

      *&v829 = 0x207475706E49;
      *(&v829 + 1) = 0xE600000000000000;
      ((*v8)[3].info)(v575);
      v680 = v576;
      v172 = sub_1AF970A64(9, v576);
      v174 = v173;
      v679 = v575[0];
      v175 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v679, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v678 = v575[1];
      sub_1AF444058(&v678, &unk_1EB638968, &type metadata for TypeConstraint, v175, sub_1AF449B08);
      v677 = v575[2];
      sub_1AF444058(&v677, &unk_1EB638968, &type metadata for TypeConstraint, v175, sub_1AF449B08);
      sub_1AF44943C(&v680, sub_1AF445C2C);
      v676 = v577;
      sub_1AF44943C(&v676, sub_1AF445C2C);
      v675 = v578;
      sub_1AF444058(&v675, &unk_1EB638978, &type metadata for AnyValue, v175, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v172, v174);

      MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27CB0);
      v177 = *(&v829 + 1);
      v176 = v829;
      v178 = v8;
      v179 = 9;
LABEL_195:
      sub_1AF3C5A5C(v178, v179, 0, v176, v177);

LABEL_202:
      swift_willThrow();
      goto LABEL_203;
    }

    v855 = *&v827[96];
    v856 = *&v827[112];
    v857 = v827[128];
    v851 = *&v827[32];
    v852 = *&v827[48];
    v854 = *&v827[80];
    v853 = *&v827[64];
    v850 = *&v827[16];
    v849 = *v827;
    if (sub_1AF448140(&v849) == 1)
    {
      nullsub_106();
      goto LABEL_44;
    }

    nullsub_106();
    v97 = v96[5];
    *&v862[41] = v96[4];
    *&v862[43] = v97;
    v98 = v96[7];
    *&v862[45] = v96[6];
    *&v862[47] = v98;
    v99 = v96[1];
    *&v862[33] = *v96;
    *&v862[35] = v99;
    v100 = v96[3];
    *&v862[37] = v96[2];
    *&v862[39] = v100;
    if (!sub_1AF3C567C(superclass))
    {
      sub_1AF3C654C(superclass);
      v532 = v180;
      v529 = 0;
      goto LABEL_45;
    }

    *&v838 = 0x207475706E49;
    *(&v838 + 1) = 0xE600000000000000;
    ((*v8)[3].info)(v571);
    v686 = v572;
    v101 = sub_1AF970A64(8, v572);
    v103 = v102;
    v685 = v571[0];
    v104 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v685, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v684 = v571[1];
    sub_1AF444058(&v684, &unk_1EB638968, &type metadata for TypeConstraint, v104, sub_1AF449B08);
    v683 = v571[2];
    sub_1AF444058(&v683, &unk_1EB638968, &type metadata for TypeConstraint, v104, sub_1AF449B08);
    sub_1AF44943C(&v686, sub_1AF445C2C);
    v682 = v573;
    sub_1AF44943C(&v682, sub_1AF445C2C);
    v681 = v574;
    sub_1AF444058(&v681, &unk_1EB638978, &type metadata for AnyValue, v104, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v101, v103);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF27C70);
    v106 = *(&v838 + 1);
    v105 = v838;
    v107 = v8;
    v108 = 8;
LABEL_113:
    sub_1AF3C5A5C(v107, v108, 0, v105, v106);

    swift_willThrow();
LABEL_204:

    return;
  }

  if (v11 == _TtC3VFX11PresentNode && v8)
  {
    v49 = sub_1AF9A2EE0();
    if (v50)
    {
      v51 = v49;
      v52 = v50;
      v53 = *(v2 + 104);

      v54 = sub_1AF70265C(v51, v52, v53);

      if (v54)
      {

        v55 = "Presented attachment is already presented elsewhere";
LABEL_72:
        v56 = (v55 - 32);
        v57 = 33;
LABEL_73:
        v58 = v57 | 0xD000000000000012;
LABEL_74:
        sub_1AF3C5A5C(v8, 0, 1, v58, v56 | 0x8000000000000000);
LABEL_124:
        swift_willThrow();
        return;
      }

      sub_1AF0D2164(aBlock, v51, v52);

      v152 = sub_1AF3C694C(v51, v52);

      v153 = v8[2][1].isa;

      sub_1AF42D984(v154, v6, v858);
      v155 = *(v2 + 80);
      v156 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v153);
      sub_1AF24F600(v157, v155, v152, 0, 0, v827);

LABEL_164:
      sub_1AF448404(v827);
      *&aBlock[96] = *&v827[96];
      *&aBlock[112] = *&v827[112];
      aBlock[128] = v827[128];
      *&aBlock[32] = *&v827[32];
      *&aBlock[48] = *&v827[48];
      *&aBlock[80] = *&v827[80];
      *&aBlock[64] = *&v827[64];
      v150 = *&v827[16];
      v151 = *v827;
LABEL_165:
      *&aBlock[16] = v150;
      *aBlock = v151;
      nullsub_106();
      v870 = *&aBlock[96];
      v871 = *&aBlock[112];
      v188 = aBlock[128];
LABEL_166:
      v872 = v188;
      v866 = *&aBlock[32];
      v867 = *&aBlock[48];
      v868 = *&aBlock[64];
      v869 = *&aBlock[80];
      v140 = *&aBlock[16];
      v141 = *aBlock;
      goto LABEL_167;
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v579, v49);
    v692 = v580;
    v125 = sub_1AF970A64(1, v580);
    v127 = v126;
    v691 = v579[0];
    v128 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v691, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v690 = v579[1];
    sub_1AF444058(&v690, &unk_1EB638968, &type metadata for TypeConstraint, v128, sub_1AF449B08);
    v689 = v579[2];
    sub_1AF444058(&v689, &unk_1EB638968, &type metadata for TypeConstraint, v128, sub_1AF449B08);
    sub_1AF44943C(&v692, sub_1AF445C2C);
    v688 = v581;
    sub_1AF44943C(&v688, sub_1AF445C2C);
    v687 = v582;
    sub_1AF444058(&v687, &unk_1EB638978, &type metadata for AnyValue, v128, sub_1AF449B08);
    MEMORY[0x1B2718AE0](v125, v127);

    MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF27E60);
    v130 = *&aBlock[8];
    v129 = *aBlock;
    v131 = v8;
    v132 = 1;
    v133 = 0;
LABEL_123:
    sub_1AF3C5A5C(v131, v132, v133, v129, v130);

    goto LABEL_124;
  }

  if (v11 == _TtC3VFX18PublishTextureNode && v8)
  {
    v68 = v8[2];
    p_isa = &v68[1].superclass->isa;
    cache = v68[1].cache;
    swift_retain_n();
    swift_retain_n();
    v70 = sub_1AF9A178C(1, 0);
    if (v71)
    {
      v72 = 0xFFFFFFFFLL;
    }

    else
    {
      v72 = v70;
    }

    if (v71)
    {
      v73 = 0;
    }

    else
    {
      v73 = HIDWORD(v70);
    }

    v533 = v73;
    v535 = v72;
    v530 = v72 | (v73 << 32);
    if (!sub_1AF65A128(v530))
    {
      v168 = 0xD000000000000015;
      v169 = 0x80000001AFF27D60;
      v170 = v8;
      v171 = 0;
LABEL_200:
      v210 = 0;
      goto LABEL_201;
    }

    if (*p_isa == _TtC3VFX22RenderGraphTextureNode)
    {

      v74 = sub_1AF9A178C(1, 0);
      v76 = v75;

      if (v76)
      {
        v74 = 0xFFFFFFFFLL;
      }

      if (!sub_1AF65A128(v74))
      {
        v77 = "published elsewhere";
        v78 = 0xD000000000000015;
        goto LABEL_176;
      }

      if (sub_1AF67CACC(&type metadata for RenderGraphTextureTarget, &off_1F2546338, v74))
      {
        v77 = "Invalid texture input";
        v78 = 0xD00000000000001DLL;
LABEL_176:
        sub_1AF3C5A5C(v8, 1, 0, v78, v77 | 0x8000000000000000);
        swift_willThrow();

        return;
      }
    }

    if (v535 == -1 && !v533 || (, v202 = sub_1AF3C98DC(v530), , (v202 & 0xFF00) == 0x200))
    {
      v523 = 0;
    }

    else
    {
      v523 = (v202 >> 8) & 1;
    }

    sub_1AF42D984(v203, v6, v859);

    v204 = sub_1AF9A2FEC();
    if (!v205)
    {
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v8)[3].info)(v583, v204);
      v698 = v584;
      v211 = sub_1AF970A64(1, v584);
      v213 = v212;
      v697 = v583[0];
      v214 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v697, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v696 = v583[1];
      sub_1AF444058(&v696, &unk_1EB638968, &type metadata for TypeConstraint, v214, sub_1AF449B08);
      v695 = v583[2];
      sub_1AF444058(&v695, &unk_1EB638968, &type metadata for TypeConstraint, v214, sub_1AF449B08);
      sub_1AF44943C(&v698, sub_1AF445C2C);
      v694 = v585;
      sub_1AF44943C(&v694, sub_1AF445C2C);
      v693 = v586;
      sub_1AF444058(&v693, &unk_1EB638978, &type metadata for AnyValue, v214, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v211, v213);

      MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF27D80);
      v177 = *&aBlock[8];
      v176 = *aBlock;
      v178 = v8;
      v179 = 1;
      goto LABEL_195;
    }

    v206 = v204;
    v207 = v205;
    v208 = v550[13];

    v209 = sub_1AF70265C(v206, v207, v208);

    if (v209)
    {

      v168 = 0xD000000000000033;
      v169 = 0x80000001AFF27DE0;
      v170 = v8;
      v171 = 0;
      v210 = 1;
LABEL_201:
      sub_1AF3C5A5C(v170, v171, v210, v168, v169);
      goto LABEL_202;
    }

    sub_1AF0D2164(aBlock, v206, v207);

    v521 = sub_1AF3C694C(v206, v207);

    v215 = v550[10];
    v216 = swift_unknownObjectUnownedLoadStrong();
    sub_1AF3C654C(cache);
    v218 = v217;
    v219 = swift_allocObject();

    swift_weakInit();

    v220 = swift_allocObject();
    *(v220 + 16) = v523;
    *(v220 + 24) = v219;
    *(v220 + 32) = v535;
    *(v220 + 36) = v533;
    *&aBlock[32] = sub_1AF448434;
    *&aBlock[40] = v220;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1AF3C6CA0;
    *&aBlock[24] = &unk_1F250E168;
    v221 = _Block_copy(aBlock);

    sub_1AF24F600(v218, v215, v521, v523, v221, v815);
    _Block_release(v221);

    v222 = sub_1AF3C654C(0);
    sub_1AF3C654C(0);
    v224 = v223;
    v225 = swift_isUniquelyReferenced_nonNull_native();
    *aBlock = v550[15];
    v550[15] = 0x8000000000000000;
    sub_1AF8520E0(v222, v224, v530, v225);

    v550[15] = *aBlock;

    *&v827[64] = v815[4];
    *&v827[80] = v815[5];
    *&v827[96] = v815[6];
    *&v827[112] = v815[7];
    *v827 = v815[0];
    *&v827[16] = v815[1];
    v226 = v815[2];
    v227 = v815[3];
LABEL_197:
    *&v827[32] = v226;
    *&v827[48] = v227;
    goto LABEL_164;
  }

  if (v11 == _TtC3VFX18LinearizeDepthNode && v8)
  {
    v86 = v8[2][1].cache;
    v87 = swift_retain_n();
    sub_1AF42D984(v87, v6, v860);
    v88 = sub_1AF3C654C(v86);
    v90 = v89;

    v91 = sub_1AF9A25A8(1, 0);

    if (v91)
    {
      v92 = v91;
      MEMORY[0x1B2718E00]();
      if (*((v550[17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v550[17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v93 = v550[10];
      v94 = swift_unknownObjectUnownedLoadStrong();
      v95 = [v92 nodeRef];
    }

    else
    {
      v93 = v550[10];
      v94 = swift_unknownObjectUnownedLoadStrong();
      v92 = 0;
      v95 = 0;
    }

    sub_1AF24F104(v90, v93, v94, v95, v88, v827);

    goto LABEL_164;
  }

  if (v11 == _TtC3VFX8BlurNode && v8)
  {
    v158 = v8[2];
    info = v158->info;
    v160 = v158[1].isa;
    v161 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v161, sub_1AF9A9560);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = info;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) == 1)
    {
      goto LABEL_144;
    }

    v855 = *&v827[96];
    v856 = *&v827[112];
    v857 = v827[128];
    v851 = *&v827[32];
    v852 = *&v827[48];
    v854 = *&v827[80];
    v853 = *&v827[64];
    v850 = *&v827[16];
    v849 = *v827;
    if (sub_1AF448140(&v849) == 1)
    {
      v162.n128_f64[0] = nullsub_106();
LABEL_144:
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v8)[3].info)(v587, v162);
      v704 = v588;
      v163 = sub_1AF970A64(0, v588);
      v165 = v164;
      v703 = v587[0];
      v166 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v703, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v702 = v587[1];
      sub_1AF444058(&v702, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
      v701 = v587[2];
      sub_1AF444058(&v701, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
      sub_1AF44943C(&v704, sub_1AF445C2C);
      v700 = v589;
      sub_1AF44943C(&v700, sub_1AF445C2C);
      v699 = v590;
      v167 = &v699;
LABEL_272:
      sub_1AF444058(v167, &unk_1EB638978, &type metadata for AnyValue, v166, sub_1AF449B08);
      MEMORY[0x1B2718AE0](v163, v165);

      v32 = 0x80000001AFF27C90;
      v31 = 0xD000000000000012;
      goto LABEL_35;
    }

    nullsub_106();
    v235 = v234[5];
    *&v862[57] = v234[4];
    *&v862[59] = v235;
    v236 = v234[7];
    *&v862[61] = v234[6];
    *&v862[63] = v236;
    v237 = v234[1];
    *&v862[49] = *v234;
    *&v862[51] = v237;
    v238 = v234[3];
    *&v862[53] = v234[2];
    *&v862[55] = v238;
    v542 = *(v2 + 80);
    v239 = swift_unknownObjectUnownedLoadStrong();
    v551 = sub_1AF3C654C(v160);
    v241 = v240;

    v242 = sub_1AF9A8804();

    if (v242 == 4)
    {
      v243 = 1;
    }

    else
    {
      v243 = v242;
    }

    v244 = sub_1AF9A1EB8(1, 0);

    v245 = *&v244;
    if ((v244 & 0x100000000) != 0)
    {
      v245 = 0.0;
    }

    if (v245 < 0.0)
    {
      v246 = 0.0;
    }

    else
    {
      v246 = v245;
    }

    __asm { FMOV            V2.4S, #1.0 }

    sub_1AF24F264(v542, v239, v241, v551, 4, v243, 0, &v818, 0, 0, _Q2, v246, 0.0, 0.0, 0.0, 0.0, 0, 0);
LABEL_260:

    goto LABEL_131;
  }

  if (v11 == _TtC3VFX13LaplacianNode && v8)
  {
    v181 = v8[2];
    v182 = v181->info;
    v183 = v181[1].isa;
    v184 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v184, sub_1AF9A8E74);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = v182;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v258 = v257[5];
        *&v862[73] = v257[4];
        *&v862[75] = v258;
        v259 = v257[7];
        *&v862[77] = v257[6];
        *&v862[79] = v259;
        v260 = v257[1];
        *&v862[65] = *v257;
        *&v862[67] = v260;
        v261 = v257[3];
        *&v862[69] = v257[2];
        *&v862[71] = v261;
        v543 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        v552 = sub_1AF3C654C(v183);
        v263 = v262;

        v264 = sub_1AF9A8804();

        if (v264 == 4)
        {
          v265 = 1;
        }

        else
        {
          v265 = v264;
        }

        v266 = sub_1AF9A1EB8(1, 0);

        v267 = *&v266;
        if ((v266 & 0x100000000) != 0)
        {
          v267 = 0.0;
        }

        if (v267 < 0.0)
        {
          v268 = 0.0;
        }

        else
        {
          v268 = v267;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v543, v239, v263, v552, 1, v265, 0, &v818, 0, 0, _Q2, 0.0, v268, 0.0, 0.0, 0.0, 0, 0);
        goto LABEL_260;
      }

      v185.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v591, v185);
    v710 = v592;
    v163 = sub_1AF970A64(0, v592);
    v165 = v186;
    v709 = v591[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v709, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v708 = v591[1];
    sub_1AF444058(&v708, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v707 = v591[2];
    sub_1AF444058(&v707, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v710, sub_1AF445C2C);
    v706 = v593;
    sub_1AF44943C(&v706, sub_1AF445C2C);
    v705 = v594;
    v167 = &v705;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX7BoxNode && v8)
  {
    v189 = v8[2];
    v190 = v189->info;
    v191 = v189[1].isa;
    v192 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v192, sub_1AF9A9544);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = v190;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v275 = v274[5];
        *&v862[89] = v274[4];
        *&v862[91] = v275;
        v276 = v274[7];
        *&v862[93] = v274[6];
        *&v862[95] = v276;
        v277 = v274[1];
        *&v862[81] = *v274;
        *&v862[83] = v277;
        v278 = v274[3];
        *&v862[85] = v274[2];
        *&v862[87] = v278;
        v544 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        v553 = sub_1AF3C654C(v191);
        v280 = v279;
        v281 = sub_1AF3C2C04();

        v282 = sub_1AF9A2230(1, 0);

        if ((v282 & 0x100000000) != 0)
        {
          v282 = 0;
        }

        else
        {
          v282 = v282;
        }

        v283 = sub_1AF9A2230(1, 0);

        v284 = v283;
        if ((v283 & 0x100000000) != 0)
        {
          v284 = 0;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v544, v239, v280, v553, 2, v281, v282 | 1, &v818, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, v284 | 1, 0);
        goto LABEL_260;
      }

      v193.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v595, v193);
    v716 = v596;
    v163 = sub_1AF970A64(0, v596);
    v165 = v194;
    v715 = v595[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v715, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v714 = v595[1];
    sub_1AF444058(&v714, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v713 = v595[2];
    sub_1AF444058(&v713, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v716, sub_1AF445C2C);
    v712 = v597;
    sub_1AF44943C(&v712, sub_1AF445C2C);
    v711 = v598;
    v167 = &v711;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX8TentNode && v8)
  {
    v196 = v8[2];
    v197 = v196->info;
    v198 = v196[1].isa;
    v199 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v199, sub_1AF9A977C);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = v197;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v293 = v292[5];
        *&v862[105] = v292[4];
        *&v862[107] = v293;
        v294 = v292[7];
        *&v862[109] = v292[6];
        *&v862[111] = v294;
        v295 = v292[1];
        *&v862[97] = *v292;
        *&v862[99] = v295;
        v296 = v292[3];
        *&v862[101] = v292[2];
        *&v862[103] = v296;
        v545 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        v554 = sub_1AF3C654C(v198);
        v298 = v297;
        v299 = sub_1AF3C2C04();

        v300 = sub_1AF9A2230(1, 0);

        if ((v300 & 0x100000000) != 0)
        {
          v300 = 0;
        }

        else
        {
          v300 = v300;
        }

        v301 = sub_1AF9A2230(1, 0);

        v302 = v301;
        if ((v301 & 0x100000000) != 0)
        {
          v302 = 0;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v545, v239, v298, v554, 3, v299, v300 | 1, &v818, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, v302 | 1, 0);
        goto LABEL_260;
      }

      v200.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v599, v200);
    v722 = v600;
    v163 = sub_1AF970A64(0, v600);
    v165 = v201;
    v721 = v599[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v721, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v720 = v599[1];
    sub_1AF444058(&v720, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v719 = v599[2];
    sub_1AF444058(&v719, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v722, sub_1AF445C2C);
    v718 = v601;
    sub_1AF44943C(&v718, sub_1AF445C2C);
    v717 = v602;
    v167 = &v717;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX9SobelNode && v8)
  {
    v228 = v8[2];
    v229 = v228->info;
    v230 = v228[1].isa;
    v231 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v231, sub_1AF9A9DB4);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = v229;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v309 = v308[5];
        *&v862[121] = v308[4];
        *&v862[123] = v309;
        v310 = v308[7];
        *&v862[125] = v308[6];
        *&v862[127] = v310;
        v311 = v308[1];
        *&v862[113] = *v308;
        *&v862[115] = v311;
        v312 = v308[3];
        *&v862[117] = v308[2];
        *&v862[119] = v312;
        v313 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        v314 = sub_1AF3C654C(v230);
        v316 = v315;
        v317 = sub_1AF3C2C04();
        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v313, v239, v316, v314, 5, v317, 0, &v818, 0, 0, _Q2, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0);
        goto LABEL_260;
      }

      v232.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v603, v232);
    v728 = v604;
    v163 = sub_1AF970A64(0, v604);
    v165 = v233;
    v727 = v603[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v727, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v726 = v603[1];
    sub_1AF444058(&v726, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v725 = v603[2];
    sub_1AF444058(&v725, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v728, sub_1AF445C2C);
    v724 = v605;
    sub_1AF44943C(&v724, sub_1AF445C2C);
    v723 = v606;
    v167 = &v723;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX9CannyNode && v8)
  {
    v251 = v8[2];
    v252 = v251->info;
    v253 = v251[1].isa;
    v254 = *(v2 + 24);
    swift_retain_n();
    sub_1AF3C6D00(v254, sub_1AF9A99C8);
    if (v4)
    {
      goto LABEL_204;
    }

    *&v849 = v252;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v322 = v321[5];
        *&v862[137] = v321[4];
        *&v862[139] = v322;
        v323 = v321[7];
        *&v862[141] = v321[6];
        *&v862[143] = v323;
        v324 = v321[1];
        *&v862[129] = *v321;
        *&v862[131] = v324;
        v325 = v321[3];
        *&v862[133] = v321[2];
        *&v862[135] = v325;
        v546 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        v555 = sub_1AF3C654C(v253);
        v327 = v326;
        v328 = sub_1AF3C2C04();

        v329 = sub_1AF9A1EB8(1, 0);

        if ((v329 & 0x100000000) != 0)
        {
          v330 = 0.4;
        }

        else
        {
          v330 = *&v329;
        }

        v331 = sub_1AF9A1EB8(1, 0);

        if ((v331 & 0x100000000) != 0)
        {
          v332 = 0.2;
        }

        else
        {
          v332 = *&v331;
        }

        __asm { FMOV            V2.4S, #1.0 }

        sub_1AF24F264(v546, v239, v327, v555, 6, v328, 0, &v818, 0, 0, _Q2, 0.0, 0.0, 0.0, v330, v332, 0, 0);
        goto LABEL_260;
      }

      v255.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v607, v255);
    v734 = v608;
    v163 = sub_1AF970A64(0, v608);
    v165 = v256;
    v733 = v607[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v733, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v732 = v607[1];
    sub_1AF444058(&v732, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v731 = v607[2];
    sub_1AF444058(&v731, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v734, sub_1AF445C2C);
    v730 = v609;
    sub_1AF44943C(&v730, sub_1AF445C2C);
    v729 = v610;
    v167 = &v729;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX17SDFGenerationNode && v8)
  {
    v270 = v8[2];
    v271 = v270->info;
    v272 = v270[1].isa;
    swift_retain_n();
    if (sub_1AF3C567C(v272))
    {
      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v8)[3].info)(v615);
      v746 = v616;
      v26 = sub_1AF970A64(0, v616);
      v28 = v273;
      v745 = v615[0];
      v29 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v745, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v744 = v615[1];
      sub_1AF444058(&v744, &unk_1EB638968, &type metadata for TypeConstraint, v29, sub_1AF449B08);
      v743 = v615[2];
      sub_1AF444058(&v743, &unk_1EB638968, &type metadata for TypeConstraint, v29, sub_1AF449B08);
      sub_1AF44943C(&v746, sub_1AF445C2C);
      v742 = v617;
      sub_1AF44943C(&v742, sub_1AF445C2C);
      v741 = v618;
      v30 = &v741;
      goto LABEL_34;
    }

    *&v849 = v271;
    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v337 = v336[5];
        *&v862[153] = v336[4];
        *&v862[155] = v337;
        v338 = v336[7];
        *&v862[157] = v336[6];
        *&v862[159] = v338;
        v339 = v336[1];
        *&v862[145] = *v336;
        *&v862[147] = v339;
        v340 = v336[3];
        *&v862[149] = v336[2];
        *&v862[151] = v340;
        v342 = *(v2 + 72);
        v341 = *(v2 + 80);
        v239 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C654C(v272);
        v344 = v343;

        v345 = sub_1AF4197D8();

        v346 = sub_1AF3DADCC();

        sub_1AF24FB0C(v341, v342, v239, v344, v346, &v818, v345);
        goto LABEL_260;
      }

      v306.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v611, v306);
    v740 = v612;
    v163 = sub_1AF970A64(0, v612);
    v165 = v307;
    v739 = v611[0];
    v166 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v739, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v738 = v611[1];
    sub_1AF444058(&v738, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    v737 = v611[2];
    sub_1AF444058(&v737, &unk_1EB638968, &type metadata for TypeConstraint, v166, sub_1AF449B08);
    sub_1AF44943C(&v740, sub_1AF445C2C);
    v736 = v613;
    sub_1AF44943C(&v736, sub_1AF445C2C);
    v735 = v614;
    v167 = &v735;
    goto LABEL_272;
  }

  if (v11 == _TtC3VFX11AreaMinNode && v8)
  {
    sub_1AF3C7160(*(v2 + 24), sub_1AF9A8C70);
    if (!v3)
    {
      *&v849 = v8[2]->info;

      v6(aBlock, &v849);

      *&v827[96] = *&aBlock[104];
      *&v827[112] = *&aBlock[120];
      v827[128] = v848;
      *&v827[32] = *&aBlock[40];
      *&v827[48] = *&aBlock[56];
      *&v827[80] = *&aBlock[88];
      *&v827[64] = *&aBlock[72];
      *&v827[16] = *&aBlock[24];
      *v827 = *&aBlock[8];
      if (sub_1AF44812C(v827) == 1)
      {
LABEL_253:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v619, v286);
        v752 = v620;
        v287 = sub_1AF970A64(0, v620);
        v289 = v288;
        v751 = v619[0];
        v290 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v751, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v750 = v619[1];
        sub_1AF444058(&v750, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
        v749 = v619[2];
        sub_1AF444058(&v749, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
        sub_1AF44943C(&v752, sub_1AF445C2C);
        v748 = v621;
        sub_1AF44943C(&v748, sub_1AF445C2C);
        v747 = v622;
        v291 = &v747;
LABEL_295:
        sub_1AF444058(v291, &unk_1EB638978, &type metadata for AnyValue, v290, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v287, v289);

        MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF27C90);
        sub_1AF3C5A5C(v8, 0, 0, *aBlock, *&aBlock[8]);

        swift_willThrow();

        return;
      }

      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) == 1)
      {
        v286.n128_f64[0] = nullsub_106();
        goto LABEL_253;
      }

      nullsub_106();
      v357 = v356[5];
      *&v862[169] = v356[4];
      *&v862[171] = v357;
      v358 = v356[7];
      *&v862[173] = v356[6];
      *&v862[175] = v358;
      v359 = v356[1];
      *&v862[161] = *v356;
      *&v862[163] = v359;
      v360 = v356[3];
      *&v862[165] = v356[2];
      *&v862[167] = v360;
      v547 = *(v2 + 80);
      v361 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v8[2][1].isa);
      v363 = v362;

      v364 = sub_1AF9A2230(1, 0);

      v365 = sub_1AF9A2230(1, 0);

      if ((v364 & 0x100000000) != 0)
      {
        v366 = 0;
      }

      else
      {
        v366 = v364;
      }

      if ((v365 & 0x100000000) != 0)
      {
        v367 = 0;
      }

      else
      {
        v367 = v365;
      }

      sub_1AF24F318(v547, v361, "AreaMin", v363, 1, v366, v367, &v818, 0);
LABEL_319:

      goto LABEL_131;
    }

    return;
  }

  if (v11 != _TtC3VFX11AreaMaxNode || !v8)
  {
    if (v11 == _TtC3VFX10DilateNode && v8)
    {
      sub_1AF3C7F8C(*(v2 + 24), sub_1AF9A8C38);
      if (v3)
      {
        return;
      }

      *&v849 = v8[2]->info;

      v6(aBlock, &v849);

      *&v827[96] = *&aBlock[104];
      *&v827[112] = *&aBlock[120];
      v827[128] = v848;
      *&v827[32] = *&aBlock[40];
      *&v827[48] = *&aBlock[56];
      *&v827[80] = *&aBlock[88];
      *&v827[64] = *&aBlock[72];
      *&v827[16] = *&aBlock[24];
      *v827 = *&aBlock[8];
      if (sub_1AF44812C(v827) == 1)
      {
LABEL_280:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v627, v319);
        v764 = v628;
        v287 = sub_1AF970A64(0, v628);
        v289 = v320;
        v763 = v627[0];
        v290 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v763, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v762 = v627[1];
        sub_1AF444058(&v762, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
        v761 = v627[2];
        sub_1AF444058(&v761, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
        sub_1AF44943C(&v764, sub_1AF445C2C);
        v760 = v629;
        sub_1AF44943C(&v760, sub_1AF445C2C);
        v759 = v630;
        v291 = &v759;
        goto LABEL_295;
      }

      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) == 1)
      {
        v319.n128_f64[0] = nullsub_106();
        goto LABEL_280;
      }

      nullsub_106();
      v394 = v393[5];
      *&v862[201] = v393[4];
      *&v862[203] = v394;
      v395 = v393[7];
      *&v862[205] = v393[6];
      *&v862[207] = v395;
      v396 = v393[1];
      *&v862[193] = *v393;
      *&v862[195] = v396;
      v397 = v393[3];
      *&v862[197] = v393[2];
      *&v862[199] = v397;
      v536 = sub_1AF9A3064() + 32;
      v539 = *(v2 + 80);
      v398 = swift_unknownObjectUnownedLoadStrong();
      sub_1AF3C654C(v8[2][1].isa);
      v556 = v399;

      v400 = sub_1AF9A8AD0();
      v402 = v401;

      if (v402)
      {
      }

      else
      {
        v400 = 0;
      }

      sub_1AF9A8AD0();
      v425 = v424;
      v427 = v426;

      if (v427)
      {
      }

      else
      {
        v425 = 0;
      }

      sub_1AF24F318(v539, v398, "Dilate", v556, 2, v400, v425, &v818, v536);

      v833 = v822;
      v834 = v823;
      v835 = v824;
      v836 = v825;
      v829 = v818;
      v830 = v819;
      v831 = v820;
      v832 = v821;
      sub_1AF448404(&v829);
      v844 = v835;
      v845 = v836;
      v846 = v837;
      v840 = v831;
      v841 = v832;
      v843 = v834;
      v842 = v833;
      v839 = v830;
      v838 = v829;
      nullsub_106();
LABEL_353:

      goto LABEL_132;
    }

    if (v11 == _TtC3VFX9ErodeNode && v8)
    {
      sub_1AF3C7F8C(*(v2 + 24), sub_1AF9A9C04);
      if (v3)
      {
        return;
      }

      *&v849 = v8[2]->info;

      v6(aBlock, &v849);

      *&v827[96] = *&aBlock[104];
      *&v827[112] = *&aBlock[120];
      v827[128] = v848;
      *&v827[32] = *&aBlock[40];
      *&v827[48] = *&aBlock[56];
      *&v827[80] = *&aBlock[88];
      *&v827[64] = *&aBlock[72];
      *&v827[16] = *&aBlock[24];
      *v827 = *&aBlock[8];
      if (sub_1AF44812C(v827) != 1)
      {
        v855 = *&v827[96];
        v856 = *&v827[112];
        v857 = v827[128];
        v851 = *&v827[32];
        v852 = *&v827[48];
        v854 = *&v827[80];
        v853 = *&v827[64];
        v850 = *&v827[16];
        v849 = *v827;
        if (sub_1AF448140(&v849) != 1)
        {
          nullsub_106();
          v414 = v413[5];
          v863[4] = v413[4];
          v863[5] = v414;
          v415 = v413[7];
          v863[6] = v413[6];
          v863[7] = v415;
          v416 = v413[1];
          v863[0] = *v413;
          v863[1] = v416;
          v417 = v413[3];
          v863[2] = v413[2];
          v863[3] = v417;
          v418 = sub_1AF9AAD58();
          sub_1AF3C8DE4(v418 + 32, v2, v863, v8, &v838);

          goto LABEL_353;
        }

        v334.n128_f64[0] = nullsub_106();
      }

      *aBlock = 0x207475706E49;
      *&aBlock[8] = 0xE600000000000000;
      ((*v8)[3].info)(v631, v334);
      v770 = v632;
      v287 = sub_1AF970A64(0, v632);
      v289 = v335;
      v769 = v631[0];
      v290 = MEMORY[0x1E69E62F8];
      sub_1AF444058(&v769, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
      v768 = v631[1];
      sub_1AF444058(&v768, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
      v767 = v631[2];
      sub_1AF444058(&v767, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
      sub_1AF44943C(&v770, sub_1AF445C2C);
      v766 = v633;
      sub_1AF44943C(&v766, sub_1AF445C2C);
      v765 = v634;
      v291 = &v765;
      goto LABEL_295;
    }

    if (v11 == _TtC3VFX9BloomNode && v8)
    {
      v347 = v8[2];
      v348 = v347[1].superclass;
      v349 = v347[1].cache;
      swift_retain_n();
      if (sub_1AF3C567C(v349))
      {
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v639);
        v782 = v640;
        v350 = sub_1AF970A64(1, v640);
        v352 = v351;
        v781 = v639[0];
        v353 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v781, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v780 = v639[1];
        sub_1AF444058(&v780, &unk_1EB638968, &type metadata for TypeConstraint, v353, sub_1AF449B08);
        v779 = v639[2];
        sub_1AF444058(&v779, &unk_1EB638968, &type metadata for TypeConstraint, v353, sub_1AF449B08);
        sub_1AF44943C(&v782, sub_1AF445C2C);
        v778 = v641;
        sub_1AF44943C(&v778, sub_1AF445C2C);
        v777 = v642;
        sub_1AF444058(&v777, &unk_1EB638978, &type metadata for AnyValue, v353, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v350, v352);

        v354 = 0xD000000000000018;
        v355 = 0x80000001AFF27C70;
      }

      else
      {
        *&v849 = v348;
        v6(aBlock, &v849);

        *&v827[96] = *&aBlock[104];
        *&v827[112] = *&aBlock[120];
        v827[128] = v848;
        *&v827[32] = *&aBlock[40];
        *&v827[48] = *&aBlock[56];
        *&v827[80] = *&aBlock[88];
        *&v827[64] = *&aBlock[72];
        *&v827[16] = *&aBlock[24];
        *v827 = *&aBlock[8];
        if (sub_1AF44812C(v827) != 1)
        {
          v855 = *&v827[96];
          v856 = *&v827[112];
          v857 = v827[128];
          v851 = *&v827[32];
          v852 = *&v827[48];
          v854 = *&v827[80];
          v853 = *&v827[64];
          v850 = *&v827[16];
          v849 = *v827;
          if (sub_1AF448140(&v849) != 1)
          {
            nullsub_106();
            v446 = v445[5];
            v863[12] = v445[4];
            v863[13] = v446;
            v447 = v445[7];
            v863[14] = v445[6];
            v863[15] = v447;
            v448 = v445[1];
            v863[8] = *v445;
            v863[9] = v448;
            v449 = v445[3];
            v863[10] = v445[2];
            v863[11] = v449;

            v450 = sub_1AF9A25A8(1, 0);

            if (v450)
            {
              v451 = v450;
              MEMORY[0x1B2718E00]();
              sub_1AFCEF5B4(*((*(v2 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10));
              sub_1AFDFD4B8();
            }

            v452 = *(v2 + 72);
            v549 = *(v2 + 80);
            v453 = swift_unknownObjectUnownedLoadStrong();
            v454 = sub_1AF3C654C(v349);
            v456 = v455;
            if (v450)
            {
              Strong = [v450 nodeRef];
            }

            else
            {
              Strong = 0;
            }

            sub_1AF24F37C(v549, v452, v453, Strong, v456, v454, &v818);

LABEL_130:
LABEL_131:
            v833 = v822;
            v834 = v823;
            v835 = v824;
            v836 = v825;
            v829 = v818;
            v830 = v819;
            v831 = v820;
            v832 = v821;
            sub_1AF448404(&v829);
            v844 = v835;
            v845 = v836;
            v846 = v837;
            v840 = v831;
            v841 = v832;
            v843 = v834;
            v842 = v833;
            v839 = v830;
            v838 = v829;
            nullsub_106();
LABEL_132:
            v870 = v844;
            v871 = v845;
            v872 = v846;
            v866 = v840;
            v867 = v841;
            v868 = v842;
            v869 = v843;
            v140 = v839;
            v141 = v838;
LABEL_167:
            v864 = v141;
            v865 = v140;
            goto LABEL_21;
          }

          v403.n128_f64[0] = nullsub_106();
        }

        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v635, v403);
        v776 = v636;
        v404 = sub_1AF970A64(1, v636);
        v406 = v405;
        v775 = v635[0];
        v407 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v775, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v774 = v635[1];
        sub_1AF444058(&v774, &unk_1EB638968, &type metadata for TypeConstraint, v407, sub_1AF449B08);
        v773 = v635[2];
        sub_1AF444058(&v773, &unk_1EB638968, &type metadata for TypeConstraint, v407, sub_1AF449B08);
        sub_1AF44943C(&v776, sub_1AF445C2C);
        v772 = v637;
        sub_1AF44943C(&v772, sub_1AF445C2C);
        v771 = v638;
        sub_1AF444058(&v771, &unk_1EB638978, &type metadata for AnyValue, v407, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v404, v406);

        v355 = 0x80000001AFF27C90;
        v354 = 0xD000000000000012;
      }

      MEMORY[0x1B2718AE0](v354, v355);
      v34 = *&aBlock[8];
      v33 = *aBlock;
      v35 = v8;
      v36 = 1;
      goto LABEL_37;
    }

    if (v11 == _TtC3VFX16CameraEffectNode && v8)
    {
      v368 = v8[2];
      v369 = v368[1].superclass;
      v370 = v368[1].cache;
      swift_retain_n();
      if (sub_1AF3C567C(v370))
      {
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v659);
        v812 = v660;
        v371 = sub_1AF970A64(1, v660);
        v373 = v372;
        v811 = v659[0];
        v374 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v811, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v810 = v659[1];
        sub_1AF444058(&v810, &unk_1EB638968, &type metadata for TypeConstraint, v374, sub_1AF449B08);
        v809 = v659[2];
        sub_1AF444058(&v809, &unk_1EB638968, &type metadata for TypeConstraint, v374, sub_1AF449B08);
        sub_1AF44943C(&v812, sub_1AF445C2C);
        v808 = v661;
        sub_1AF44943C(&v808, sub_1AF445C2C);
        v807 = v662;
        sub_1AF444058(&v807, &unk_1EB638978, &type metadata for AnyValue, v374, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v371, v373);

        v375 = 0xD000000000000018;
        v376 = 0x80000001AFF27C70;
LABEL_346:
        MEMORY[0x1B2718AE0](v375, v376);
        v106 = *&aBlock[8];
        v105 = *aBlock;
        v107 = v8;
        v108 = 1;
        goto LABEL_113;
      }

      *v827 = v369;
      v6(aBlock, v827);

      v855 = *&aBlock[104];
      v856 = *&aBlock[120];
      v857 = v848;
      v851 = *&aBlock[40];
      v852 = *&aBlock[56];
      v854 = *&aBlock[88];
      v853 = *&aBlock[72];
      v850 = *&aBlock[24];
      v849 = *&aBlock[8];
      if (sub_1AF44812C(&v849) == 1)
      {
LABEL_345:
        *aBlock = 0x207475706E49;
        *&aBlock[8] = 0xE600000000000000;
        ((*v8)[3].info)(v655, v419);
        v806 = v656;
        v420 = sub_1AF970A64(1, v656);
        v422 = v421;
        v805 = v655[0];
        v423 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v805, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v804 = v655[1];
        sub_1AF444058(&v804, &unk_1EB638968, &type metadata for TypeConstraint, v423, sub_1AF449B08);
        v803 = v655[2];
        sub_1AF444058(&v803, &unk_1EB638968, &type metadata for TypeConstraint, v423, sub_1AF449B08);
        sub_1AF44943C(&v806, sub_1AF445C2C);
        v802 = v657;
        sub_1AF44943C(&v802, sub_1AF445C2C);
        v801 = v658;
        sub_1AF444058(&v801, &unk_1EB638978, &type metadata for AnyValue, v423, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v420, v422);

        v376 = 0x80000001AFF27C90;
        v375 = 0xD000000000000012;
        goto LABEL_346;
      }

      v844 = v855;
      v845 = v856;
      v846 = v857;
      v840 = v851;
      v841 = v852;
      v843 = v854;
      v842 = v853;
      v839 = v850;
      v838 = v849;
      if (sub_1AF448140(&v838) == 1)
      {
        v419.n128_f64[0] = nullsub_106();
        goto LABEL_345;
      }

      nullsub_106();
      v459 = v458[5];
      v863[28] = v458[4];
      v863[29] = v459;
      v460 = v458[7];
      v863[30] = v458[6];
      v863[31] = v460;
      v461 = v458[1];
      v863[24] = *v458;
      v863[25] = v461;
      v462 = v458[3];
      v863[26] = v458[2];
      v863[27] = v462;
      v463 = v8[2];
      v464 = v463[1].vtable;
      v524 = v463[1].info;
      swift_retain_n();
      v528 = sub_1AF3C654C(v370);
      v531 = v465;
      RGNullPass();
      v537 = RGNullResource();
      if (swift_dynamicCastClass())
      {
LABEL_377:

        v466 = sub_1AF9A25A8(1, 0);

        if (v466)
        {
          v467 = v466;
          MEMORY[0x1B2718E00]();
          sub_1AFCEF5B4(*((v550[17] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1AFDFD4B8();
          v469 = v550[9];
          v468 = v550[10];
          v470 = swift_unknownObjectUnownedLoadStrong();
          v471 = [v467 nodeRef];
        }

        else
        {
          v469 = v550[9];
          v468 = v550[10];
          v470 = swift_unknownObjectUnownedLoadStrong();
          v467 = 0;
          v471 = 0;
        }

        sub_1AF24F40C(v468, v469, v470, v471, v531, v528, v537, &v818);

        v833 = v822;
        v834 = v823;
        v835 = v824;
        v836 = v825;
        v829 = v818;
        v830 = v819;
        v831 = v820;
        v832 = v821;
        sub_1AF448404(&v829);
        *&v827[96] = v835;
        *&v827[112] = v836;
        v827[128] = v837;
        *&v827[32] = v831;
        *&v827[48] = v832;
        *&v827[80] = v834;
        *&v827[64] = v833;
        *&v827[16] = v830;
        *v827 = v829;
        nullsub_106();
        v870 = *&v827[96];
        v871 = *&v827[112];
        v872 = v827[128];
        v866 = *&v827[32];
        v867 = *&v827[48];
        v868 = *&v827[64];
        v869 = *&v827[80];
        v140 = *&v827[16];
        v141 = *v827;
        goto LABEL_167;
      }

      if (sub_1AF3C567C(v524) == 1)
      {
        *&v818 = v464;
        v6(v827, &v818);

        v835 = *&v827[104];
        v836 = *&v827[120];
        v837 = v828;
        v831 = *&v827[40];
        v832 = *&v827[56];
        v834 = *&v827[88];
        v833 = *&v827[72];
        v830 = *&v827[24];
        v829 = *&v827[8];
        if (sub_1AF44812C(&v829) != 1)
        {
          v824 = v835;
          v825 = v836;
          v826 = v837;
          v820 = v831;
          v821 = v832;
          v823 = v834;
          v822 = v833;
          v819 = v830;
          v818 = v829;
          if (sub_1AF448140(&v818) != 1)
          {
            nullsub_106();
            v503 = v502[5];
            v863[20] = v502[4];
            v863[21] = v503;
            v504 = v502[7];
            v863[22] = v502[6];
            v863[23] = v504;
            v505 = v502[1];
            v863[16] = *v502;
            v863[17] = v505;
            v506 = v502[3];
            v863[18] = v502[2];
            v863[19] = v506;
            sub_1AF3C654C(v524);
            v537 = v507;
            v508 = RGContextResolveTextureDescriptor(v550[9], v507);
            if (!v508)
            {
              goto LABEL_377;
            }

            v816 = *v508;
            v817 = *(v508 + 16);
            v509 = RGContextResolveTextureDescriptor(v550[9], v531);
            if (!v509)
            {
              goto LABEL_377;
            }

            v510 = v509;
            v813 = *v509;
            v814 = *(v509 + 16);
            v511 = sub_1AF445CA8(&v813);
            v813 = v816;
            v814 = v817;
            if (v511 == sub_1AF445CA8(&v813))
            {
              v813 = *v510;
              v814 = *(v510 + 16);
              v512 = sub_1AF445CB0(&v813);
              v813 = v816;
              v814 = v817;
              if (v512 == sub_1AF445CB0(&v813))
              {
                goto LABEL_377;
              }
            }

            *&v813 = 0;
            *(&v813 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            v513 = MEMORY[0x1B2718AE0](0x207475706E49, 0xE600000000000000);
            ((*v8)[3].info)(v643, v513);
            v788 = v644;
            v514 = sub_1AF970A64(2, v644);
            v516 = v515;
            v787 = v643[0];
            v517 = MEMORY[0x1E69E62F8];
            sub_1AF444058(&v787, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
            v786 = v643[1];
            sub_1AF444058(&v786, &unk_1EB638968, &type metadata for TypeConstraint, v517, sub_1AF449B08);
            v785 = v643[2];
            sub_1AF444058(&v785, &unk_1EB638968, &type metadata for TypeConstraint, v517, sub_1AF449B08);
            sub_1AF44943C(&v788, sub_1AF445C2C);
            v784 = v645;
            sub_1AF44943C(&v784, sub_1AF445C2C);
            v783 = v646;
            sub_1AF444058(&v783, &unk_1EB638978, &type metadata for AnyValue, v517, sub_1AF449B08);
            MEMORY[0x1B2718AE0](v514, v516);

            MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF27CE0);
            v497 = *(&v813 + 1);
            v496 = v813;
LABEL_397:
            sub_1AF3C5A5C(v8, 2, 0, v496, v497);

            swift_willThrow();

            goto LABEL_204;
          }

          v472.n128_f64[0] = nullsub_106();
        }

        *v827 = 0x207475706E49;
        *&v827[8] = 0xE600000000000000;
        ((*v8)[3].info)(v647, v472);
        v794 = v648;
        v473 = sub_1AF970A64(2, v648);
        v475 = v474;
        v793 = v647[0];
        v476 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v793, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v792 = v647[1];
        sub_1AF444058(&v792, &unk_1EB638968, &type metadata for TypeConstraint, v476, sub_1AF449B08);
        v791 = v647[2];
        sub_1AF444058(&v791, &unk_1EB638968, &type metadata for TypeConstraint, v476, sub_1AF449B08);
        sub_1AF44943C(&v794, sub_1AF445C2C);
        v790 = v649;
        sub_1AF44943C(&v790, sub_1AF445C2C);
        v789 = v650;
        sub_1AF444058(&v789, &unk_1EB638978, &type metadata for AnyValue, v476, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v473, v475);

        v477 = 0x80000001AFF27C90;
        v478 = 0xD000000000000012;
      }

      else
      {
        *v827 = 0x207475706E49;
        *&v827[8] = 0xE600000000000000;
        ((*v8)[3].info)(v651);
        v800 = v652;
        v492 = sub_1AF970A64(2, v652);
        v494 = v493;
        v799 = v651[0];
        v495 = MEMORY[0x1E69E62F8];
        sub_1AF444058(&v799, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
        v798 = v651[1];
        sub_1AF444058(&v798, &unk_1EB638968, &type metadata for TypeConstraint, v495, sub_1AF449B08);
        v797 = v651[2];
        sub_1AF444058(&v797, &unk_1EB638968, &type metadata for TypeConstraint, v495, sub_1AF449B08);
        sub_1AF44943C(&v800, sub_1AF445C2C);
        v796 = v653;
        sub_1AF44943C(&v796, sub_1AF445C2C);
        v795 = v654;
        sub_1AF444058(&v795, &unk_1EB638978, &type metadata for AnyValue, v495, sub_1AF449B08);
        MEMORY[0x1B2718AE0](v492, v494);

        v478 = 0xD000000000000018;
        v477 = 0x80000001AFF27CB0;
      }

      MEMORY[0x1B2718AE0](v478, v477);
      v497 = *&v827[8];
      v496 = *v827;
      goto LABEL_397;
    }

    if (v11 == _TtC3VFX17ComputeShaderNode && v8)
    {
      if (sub_1AF9A6924())
      {
        v388 = sub_1AF9A6B38();
        v390 = v389;
        v391 = sub_1AF42F404(v8, v6);
        if (v3)
        {
          return;
        }

        if (v391)
        {
          sub_1AF874DF4(v388, v390, v391, v392, *(v2 + 80), v861);

          if (sub_1AF448418(v861) == 1)
          {
            v56 = " full screen quad pass";
            v58 = 0xD000000000000022;
            goto LABEL_74;
          }

          *&v827[64] = v861[4];
          *&v827[80] = v861[5];
          *&v827[96] = v861[6];
          *&v827[112] = v861[7];
          *v827 = v861[0];
          *&v827[16] = v861[1];
          v226 = v861[2];
          v227 = v861[3];
          goto LABEL_197;
        }

        goto LABEL_382;
      }
    }

    else
    {
      if (v11 != _TtC3VFX18FullscreenQuadNode || !v8)
      {
        if (v11 == _TtC3VFX22RenderGraphTextureNode && v8)
        {
          v428 = *(v2 + 48);

          v429 = sub_1AF9A178C(1, 0);
          v431 = v430;

          if (v431)
          {
            v432 = 0xFFFFFFFFLL;
          }

          else
          {
            v432 = v429;
          }

          if (sub_1AF65A128(v432))
          {

            v433 = sub_1AF9A178C(1, 0);
            v435 = v434;

            if (v435)
            {
              v436 = 0xFFFFFFFFLL;
            }

            else
            {
              v436 = v433;
            }

            if ((sub_1AF3C98DC(v436) & 0xFF00) != 0x200)
            {

              sub_1AF9A178C(1, 0);

              v540 = sub_1AF9A9F5C();
              v480 = v479;

              v481 = sub_1AF9A178C(1, 0);
              v483 = v482;

              if (v483)
              {
                v484 = 0xFFFFFFFFLL;
              }

              else
              {
                v484 = v481;
              }

              v485 = sub_1AF6ABEF0(v484);
              v538 = v486;

              sub_1AFCEF4E0();
              v487 = *(*(v2 + 112) + 16);
              sub_1AFCEF584(v487);
              v488 = *(v2 + 112);
              *(v488 + 16) = v487 + 1;
              v489 = (v488 + 40 * v487);
              v489[4] = v8;
              v489[5] = v540;
              v489[6] = v480;
              v489[7] = v485;
              v489[8] = v538;
              *(v2 + 112) = v488;
              v490 = sub_1AFDFCEC8();

              v491 = RGResourceIdentifierMake(v490);

              RGTextureReferenceDescriptorCreate(v491, 1.0);
            }

            LOBYTE(v829) = 0;

            v437 = sub_1AF9A178C(1, 0);
            v439 = v438;

            if (v439)
            {
              v440 = 0xFFFFFFFFLL;
            }

            else
            {
              v440 = v437;
            }

            v441 = sub_1AF8D93C8(v440, &v829, v428, *(v2 + 56));
            if (v441)
            {
              if ((v829 & 1) == 0)
              {
                CFXTextureDescriptorFromMTLTexture(v441, v442, v443, v444, &v838);
                v498 = *(v2 + 80);
                v499 = swift_allocObject();
                swift_weakInit();
                v500 = swift_allocObject();
                *(v500 + 16) = v499;
                *(v500 + 24) = v8;
                *&aBlock[32] = sub_1AF4483E4;
                *&aBlock[40] = v500;
                *aBlock = MEMORY[0x1E69E9820];
                *&aBlock[8] = 1107296256;
                *&aBlock[16] = sub_1AF419890;
                *&aBlock[24] = &unk_1F24E5E70;
                v501 = _Block_copy(aBlock);

                *aBlock = v838;
                *&aBlock[16] = v839;
                RGBuilderCreateExternalTexture(v498, "TextureAsset", aBlock, v501, 0);
                _Block_release(v501);

                *aBlock = v838;
                *&aBlock[16] = v839;
                RGTextureReferenceDescriptorCreate();
              }

              swift_unknownObjectRelease();
            }

            v56 = "Texture unavailable";
            v58 = 0xD000000000000020;
          }

          else
          {

            v56 = "Invalid render graph node: ";
            v58 = 0xD000000000000013;
          }

          goto LABEL_74;
        }

        *aBlock = 0xD00000000000001BLL;
        *&aBlock[8] = 0x80000001AFF27AE0;
        v457 = (v11[3].superclass)();
        MEMORY[0x1B2718AE0](v457);

        v130 = 0x80000001AFF27AE0;
        v129 = 0xD00000000000001BLL;
        v131 = v8;
        v132 = 0;
        v133 = 1;
        goto LABEL_123;
      }

      if (sub_1AF9A6924())
      {
        v408 = sub_1AF9A6B38();
        v410 = v409;
        v411 = sub_1AF42F404(v8, v6);
        if (v3)
        {
          return;
        }

        if (v411)
        {
          sub_1AF875510(v408, v410, v411, v412, *(v2 + 80), v862);

          if (sub_1AF448418(v862) != 1)
          {
            *&v827[64] = *&v862[8];
            *&v827[80] = *&v862[10];
            *&v827[96] = *&v862[12];
            *&v827[112] = *&v862[14];
            *v827 = *v862;
            *&v827[16] = *&v862[2];
            *&v827[32] = *&v862[4];
            *&v827[48] = *&v862[6];
            sub_1AF448404(v827);
            *&aBlock[96] = *&v827[96];
            *&aBlock[112] = *&v827[112];
            aBlock[128] = v827[128];
            *&aBlock[32] = *&v827[32];
            *&aBlock[48] = *&v827[48];
            *&aBlock[80] = *&v827[80];
            *&aBlock[64] = *&v827[64];
            *&aBlock[16] = *&v827[16];
            *aBlock = *v827;
            nullsub_106();
            v870 = *&aBlock[96];
            v871 = *&aBlock[112];
            v188 = aBlock[128];
            goto LABEL_166;
          }

          v56 = "om metal reflection";
          v58 = 0xD000000000000026;
          goto LABEL_74;
        }

LABEL_382:
        v55 = "Unable to extract script data from metal reflection";
        goto LABEL_72;
      }
    }

    v56 = "TextureAssetCopy";
    v57 = 36;
    goto LABEL_73;
  }

  sub_1AF3C7160(*(v2 + 24), sub_1AF9A8C54);
  if (!v3)
  {
    *&v849 = v8[2]->info;

    v6(aBlock, &v849);

    *&v827[96] = *&aBlock[104];
    *&v827[112] = *&aBlock[120];
    v827[128] = v848;
    *&v827[32] = *&aBlock[40];
    *&v827[48] = *&aBlock[56];
    *&v827[80] = *&aBlock[88];
    *&v827[64] = *&aBlock[72];
    *&v827[16] = *&aBlock[24];
    *v827 = *&aBlock[8];
    if (sub_1AF44812C(v827) != 1)
    {
      v855 = *&v827[96];
      v856 = *&v827[112];
      v857 = v827[128];
      v851 = *&v827[32];
      v852 = *&v827[48];
      v854 = *&v827[80];
      v853 = *&v827[64];
      v850 = *&v827[16];
      v849 = *v827;
      if (sub_1AF448140(&v849) != 1)
      {
        nullsub_106();
        v378 = v377[5];
        *&v862[185] = v377[4];
        *&v862[187] = v378;
        v379 = v377[7];
        *&v862[189] = v377[6];
        *&v862[191] = v379;
        v380 = v377[1];
        *&v862[177] = *v377;
        *&v862[179] = v380;
        v381 = v377[3];
        *&v862[181] = v377[2];
        *&v862[183] = v381;
        v548 = *(v2 + 80);
        v361 = swift_unknownObjectUnownedLoadStrong();
        sub_1AF3C654C(v8[2][1].isa);
        v383 = v382;

        v384 = sub_1AF9A2230(1, 0);

        v385 = sub_1AF9A2230(1, 0);

        if ((v384 & 0x100000000) != 0)
        {
          v386 = 0;
        }

        else
        {
          v386 = v384;
        }

        if ((v385 & 0x100000000) != 0)
        {
          v387 = 0;
        }

        else
        {
          v387 = v385;
        }

        sub_1AF24F318(v548, v361, "AreaMax", v383, 0, v386, v387, &v818, 0);
        goto LABEL_319;
      }

      v304.n128_f64[0] = nullsub_106();
    }

    *aBlock = 0x207475706E49;
    *&aBlock[8] = 0xE600000000000000;
    ((*v8)[3].info)(v623, v304);
    v758 = v624;
    v287 = sub_1AF970A64(0, v624);
    v289 = v305;
    v757 = v623[0];
    v290 = MEMORY[0x1E69E62F8];
    sub_1AF444058(&v757, &unk_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AF449B08);
    v756 = v623[1];
    sub_1AF444058(&v756, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
    v755 = v623[2];
    sub_1AF444058(&v755, &unk_1EB638968, &type metadata for TypeConstraint, v290, sub_1AF449B08);
    sub_1AF44943C(&v758, sub_1AF445C2C);
    v754 = v625;
    sub_1AF44943C(&v754, sub_1AF445C2C);
    v753 = v626;
    v291 = &v753;
    goto LABEL_295;
  }
}

id sub_1AF43943C(uint64_t a1, char a2)
{
  v5 = CFXMTLCreateSystemDefaultDevice();
  v6 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  v7 = RGContextResolveTextureDescriptor(*(v2 + 72), a1);
  if (v7)
  {
    v26 = *v7;
    v27 = *(v7 + 16);
    v28 = *v7;
    v29 = *(v7 + 16);
    v8 = sub_1AF445CA8(&v28);
    v9 = v8 / sub_1AF445CB0(&v26);
    if (a2 == 1)
    {
LABEL_3:
      v10 = 55;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 1.0;
    if (a2 == 1)
    {
      goto LABEL_3;
    }
  }

  v10 = 115;
LABEL_6:
  [v6 setPixelFormat_];
  [v6 setWidth_];
  v11 = (256.0 / v9);
  if (v11 >= 256)
  {
    v11 = 256;
  }

  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  [v6 setHeight_];
  [v6 setStorageMode_];
  [v6 setUsage_];
  if (a2 == 1)
  {
    [v6 setStorageMode_];
    [v6 setUsage_];
  }

  v13 = [v5 newTextureWithDescriptor_];
  v14 = [*(v2 + 40) commandBuffer];
  v15 = sub_1AFDFCEC8();
  [v14 setLabel_];

  v16 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript_];

  [v18 setTexture_];
  v19 = [v16 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  [v20 setLoadAction_];
  v21 = [v16 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  [v22 setClearColor_];
  v23 = [v16 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  [v24 setStoreAction_];
  [objc_msgSend(v14 renderCommandEncoderWithDescriptor_];
  [v14 commit];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_1AF439808(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF448148();
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    v7 = a1 + 32;
    v8 = MEMORY[0x1E69E5FE0];
    while (1)
    {
      v16 = *(v7 + 112);
      *&v46[96] = *(v7 + 96);
      *&v46[112] = v16;
      *&v46[128] = *(v7 + 128);
      v46[144] = *(v7 + 144);
      v17 = *(v7 + 48);
      *&v46[32] = *(v7 + 32);
      *&v46[48] = v17;
      v18 = *(v7 + 80);
      *&v46[64] = *(v7 + 64);
      *&v46[80] = v18;
      v19 = *(v7 + 16);
      *v46 = *v7;
      *&v46[16] = v19;
      sub_1AF449A04(v46, v44, &unk_1EB638CB8, sub_1AF448148, v8, sub_1AF442A88);
      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = sub_1AF422330(v20 > 1, v21 + 1, 1, v6, &qword_1EB630978, v8);
      }

      v22 = *v46;
      *(v6 + 2) = v21 + 1;
      *&v6[8 * v21 + 32] = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = sub_1AF0D3F10(v22);
      v26 = v25;
      v27 = v5[2] + ((v25 & 1) == 0);
      if (v5[3] < v27)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v42 = v24;
      sub_1AF845B40();
      v24 = v42;
      if (v26)
      {
LABEL_12:
        v29 = (v5[7] + 144 * v24);
        v44[0] = *v29;
        v30 = v29[4];
        v32 = v29[1];
        v31 = v29[2];
        v44[3] = v29[3];
        v44[4] = v30;
        v44[1] = v32;
        v44[2] = v31;
        v34 = v29[6];
        v33 = v29[7];
        v35 = v29[5];
        *(v45 + 9) = *(v29 + 121);
        v44[6] = v34;
        v45[0] = v33;
        v44[5] = v35;
        *v29 = *&v46[8];
        v36 = *&v46[24];
        v37 = *&v46[40];
        v38 = *&v46[72];
        v29[3] = *&v46[56];
        v29[4] = v38;
        v29[1] = v36;
        v29[2] = v37;
        v39 = *&v46[88];
        v40 = *&v46[104];
        v41 = *&v46[120];
        *(v29 + 121) = *&v46[129];
        v29[6] = v40;
        v29[7] = v41;
        v29[5] = v39;
        sub_1AF44943C(v44, sub_1AF448148);
        goto LABEL_4;
      }

LABEL_3:
      v5[(v24 >> 6) + 8] |= 1 << v24;
      *(v5[6] + 8 * v24) = v22;
      v9 = (v5[7] + 144 * v24);
      *v9 = *&v46[8];
      v10 = *&v46[40];
      v11 = *&v46[72];
      v12 = *&v46[24];
      v9[3] = *&v46[56];
      v9[4] = v11;
      v9[1] = v12;
      v9[2] = v10;
      v13 = *&v46[88];
      v14 = *&v46[104];
      v15 = *&v46[120];
      *(v9 + 121) = *&v46[129];
      v9[6] = v14;
      v9[7] = v15;
      v9[5] = v13;
      ++v5[2];
LABEL_4:
      v7 += 152;
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82EA24(v27, isUniquelyReferenced_nonNull_native);
    v24 = sub_1AF0D3F10(v22);
    if ((v26 & 1) != (v28 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v26)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

uint64_t sub_1AF439B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 24)
    {
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1AF422330(v12 > 1, v13 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF0D3F10(v10);
      v17 = v16;
      v18 = v5[2] + ((v16 & 1) == 0);
      if (v5[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF845D54();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = v5[7] + 12 * v15;
        *v20 = v9;
        *(v20 + 8) = v11;
        goto LABEL_4;
      }

LABEL_3:
      v5[(v15 >> 6) + 8] |= 1 << v15;
      *(v5[6] + 8 * v15) = v10;
      v8 = v5[7] + 12 * v15;
      *v8 = v9;
      *(v8 + 8) = v11;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82EDB8(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF0D3F10(v10);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF439D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF448C14(0, &unk_1EB63F670, &unk_1EB638D40, &unk_1EB63F680, sub_1AF448BAC);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AF439EA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 8);
  return v2(&v4);
}

uint64_t sub_1AF439ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AF439F2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AF43A038()
{
  if (!qword_1ED726930)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726930);
    }
  }
}

unint64_t sub_1AF43A0C8()
{
  result = qword_1ED72F9B0;
  if (!qword_1ED72F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F9B0);
  }

  return result;
}

void sub_1AF43A11C()
{
  if (!qword_1EB633A38)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633A38);
    }
  }
}

void sub_1AF43A1C0()
{
  if (!qword_1EB633A30)
  {
    sub_1AF445B28(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633A30);
    }
  }
}

void sub_1AF43A260()
{
  if (!qword_1EB638168)
  {
    sub_1AF43A378(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638168);
    }
  }
}

void sub_1AF43A2F4()
{
  if (!qword_1ED726968)
  {
    sub_1AF43A378(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726968);
    }
  }
}

void sub_1AF43A378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AF43A3CC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AF4498F4(255, a3);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF43A424()
{
  if (!qword_1ED723060)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723060);
    }
  }
}

void sub_1AF43A480()
{
  if (!qword_1ED726B00)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726B00);
    }
  }
}

void sub_1AF43A4E0()
{
  if (!qword_1EB633190)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633190);
    }
  }
}

void sub_1AF43A570()
{
  if (!qword_1ED72D5A0)
  {
    sub_1AF449B08(255, qword_1ED72D5B0, MEMORY[0x1E69E6530], type metadata accessor for UnsafeArray);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72D5A0);
    }
  }
}

uint64_t sub_1AF43A5EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1AF43A634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1ED726B30, sub_1AF445EE0);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *v4;
    v10 = *(v4 - 1);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    v8 = v3[7] + 24 * v7;
    *v8 = v10;
    *(v8 + 16) = v6;
    ++v3[2];
    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43A744(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CA0];
  sub_1AF43CC28(0, &qword_1ED726B48, MEMORY[0x1E69E6D30]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445E74();
  v10 = sub_1AFDFE5C8();
  v11 = *(v4 + 48);
  v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v13 = *(v5 + 72);

  do
  {
    sub_1AF447AA4(v12, v8, &qword_1ED726B48, MEMORY[0x1E69E6D30], v2 + 8, sub_1AF43CC28);
    v14 = sub_1AF419DC8(v8);
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = v2;
    v16 = v10[6];
    v17 = sub_1AFDFE488();
    v18 = *(v17 - 8);
    v19 = v16 + *(v18 + 72) * v14;
    v2 = v15;
    (*(v18 + 32))(v19, v8, v17);
    sub_1AF0DB6BC(&v8[v11], (v10[7] + 32 * v14));
    ++v10[2];
    v12 += v13;
    --v9;
  }

  while (v9);

  return v10;
}

uint64_t sub_1AF43A958(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);

      if (v11 >= v10 >> 1)
      {
        v6 = sub_1AF422330(v10 > 1, v11 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AF0D3F10(v9);
      v15 = v14;
      v16 = v5[2] + ((v14 & 1) == 0);
      if (v5[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v18 = v13;
      sub_1AF849C40();
      v13 = v18;
      if (v15)
      {
LABEL_12:
        *(v5[7] + 8 * v13) = v8;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v13 >> 6) + 8] |= 1 << v13;
      *(v5[6] + 8 * v13) = v9;
      *(v5[7] + 8 * v13) = v8;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF836304(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(v9);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

uint64_t sub_1AF43AB80(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 48); ; i += 3)
    {
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      v13 = *(v6 + 2);
      v12 = *(v6 + 3);

      if (v13 >= v12 >> 1)
      {
        v6 = sub_1AF422330(v12 > 1, v13 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v13 + 1;
      *&v6[8 * v13 + 32] = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_1AF0D3F10(v10);
      v17 = v16;
      v18 = v5[2] + ((v16 & 1) == 0);
      if (v5[3] < v18)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v21 = v15;
      sub_1AF846294();
      v15 = v21;
      if (v17)
      {
LABEL_12:
        v20 = (v5[7] + 16 * v15);
        *v20 = v9;
        v20[1] = v11;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v15 >> 6) + 8] |= 1 << v15;
      *(v5[6] + 8 * v15) = v10;
      v8 = (v5[7] + 16 * v15);
      *v8 = v9;
      v8[1] = v11;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF82F63C(v18, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AF0D3F10(v10);
    if ((v17 & 1) != (v19 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

void *sub_1AF43ADB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447EC4();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43AE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447B18();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  v5 = MEMORY[0x1E69E76D8];
  do
  {
    sub_1AF0D8094(v4, &v9, &unk_1EB638C48, v5, &type metadata for ShaderCache.ShaderCacheWeakReference, sub_1AF0D8108);
    v6 = v9;
    v7 = sub_1AF0D3F10(v9);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v6;
    sub_1AF0D5D54(&v10, v3[7] + 8 * v7);
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43AFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4476E8();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 5);
    v6 = *(v4 - 4);
    v7 = *(v4 - 3);
    v8 = *(v4 - 2);
    v9 = *(v4 - 1);
    v10 = *v4;
    v11 = sub_1AF0D3F10(v5);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v5;
    v12 = (v3[7] + 40 * v11);
    *v12 = v6;
    v12[1] = v7;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    ++v3[2];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v4 += 6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43B0A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447618();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 4);
    v7 = *(v4 - 3);
    v6 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    *&v14 = *(v4 - 5);
    *(&v14 + 1) = v5;
    *&v15 = v7;
    *(&v15 + 1) = v6;
    v16 = v8;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v10 = sub_1AF419E2C(&v14);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = v3[6] + 40 * v10;
    v12 = v15;
    *v11 = v14;
    *(v11 + 16) = v12;
    *(v11 + 32) = v16;
    *(v3[7] + 8 * v10) = v9;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638780, type metadata accessor for XcodeInfo, sub_1AF444A40);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);

  do
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = v4[1];

    v8 = sub_1AF419FCC(v5 | (v7 << 8));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 2 * v8);
    *v9 = v5;
    v9[1] = v7;
    *(v3[7] + 8 * v8) = v6;
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B324(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43B44C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B6E8();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);

    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43B558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43B630();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = *(v4 - 2);
    v8 = sub_1AF41A9B4(v7);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v7;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v5;
    ++v3[2];

    v4 += 3;
    --v1;
  }

  while (v1);
  return v3;
}

void sub_1AF43B630()
{
  if (!qword_1EB638180)
  {
    sub_1AF43B694();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638180);
    }
  }
}

unint64_t sub_1AF43B694()
{
  result = qword_1ED7271A0;
  if (!qword_1ED7271A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7271A0);
  }

  return result;
}

void sub_1AF43B6E8()
{
  if (!qword_1EB638190)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638190);
    }
  }
}

void sub_1AF43B748()
{
  if (!qword_1ED726AC0)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726AC0);
    }
  }
}

void *sub_1AF43B7D4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];
    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF43B8F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4460CC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v9 = sub_1AF0D3F10(v5);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v5;
    v10 = (v3[7] + 24 * v9);
    *v10 = v6;
    v10[1] = v7;
    v10[2] = v8;
    ++v3[2];

    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43B9E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446040();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 2);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF0DB464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 4 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43BAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446324();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 3);
    v6 = *v4;
    v10 = *(v4 - 1);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    v8 = v3[7] + 24 * v7;
    *v8 = v10;
    *(v8 + 16) = v6;
    ++v3[2];

    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43BBB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43BDD0();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 1);

    v7 = sub_1AF41A464(v6);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43BC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &unk_1EB6381A0, &unk_1EB63F590, 0x1E6974B98, &qword_1EB6381B0);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A464(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

uint64_t sub_1AF43BD80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF0D4478(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF43BDD0()
{
  if (!qword_1EB6381B8)
  {
    sub_1AF0D4478(255, &unk_1EB63F590);
    type metadata accessor for SkeletonAnimation();
    sub_1AF43BD80(&qword_1EB6381B0, &unk_1EB63F590);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6381B8);
    }
  }
}

void *sub_1AF43BE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638900, type metadata accessor for vfx_vertex_attribute);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43BFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CABC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF41A4B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];

    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &unk_1EB63F3B0, &qword_1ED72E050, &off_1E7A77B30, &qword_1EB638270);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A630(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CDE8(0, &qword_1EB638258, &qword_1ED72E0B0, &off_1E7A77B00, &unk_1EB638260);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    v7 = sub_1AF41A5E0(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CD30();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    sub_1AF43C9F0(v5, v6);
    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E6969048], sub_1AF41D8D4);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43C398(uint64_t a1)
{
  sub_1AF43CC28(0, &qword_1EB638238, MEMORY[0x1E6968FB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CC94();
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v11, v7, &qword_1EB638238, MEMORY[0x1E6968FB0], &type metadata for Entity, sub_1AF43CC28);
    v13 = sub_1AF41A390(v7);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v9[6];
    v15 = sub_1AFDFC128();
    (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v7, v15);
    *(v9[7] + 8 * v13) = *&v7[v10];
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF43C5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43CB58();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF419D60(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    v10 = v6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43C954();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    v7 = sub_1AF419D60(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43C758(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v5 += 16;
    v8 = sub_1AF419D60(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + v8) = v7;
    ++v4[2];
    --v2;
  }

  while (v2);
  return v4;
}

void sub_1AF43C81C()
{
  if (!qword_1EB6381C8)
  {
    type metadata accessor for VFXWrapMode(255);
    sub_1AF43A5EC(&qword_1EB6381D0, type metadata accessor for VFXWrapMode);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6381C8);
    }
  }
}

void sub_1AF43C8B8()
{
  if (!qword_1EB6381D8)
  {
    type metadata accessor for VFXFilterMode(255);
    sub_1AF43A5EC(&qword_1EB6381E0, type metadata accessor for VFXFilterMode);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6381D8);
    }
  }
}

void sub_1AF43C954()
{
  if (!qword_1EB6381E8)
  {
    type metadata accessor for VFXFilterMode(255);
    sub_1AF43A5EC(&qword_1EB6381E0, type metadata accessor for VFXFilterMode);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6381E8);
    }
  }
}

uint64_t sub_1AF43C9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1AF43CA44()
{
  if (!qword_1EB638208)
  {
    sub_1AF0D4478(255, &qword_1EB638210);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638208);
    }
  }
}

void sub_1AF43CABC()
{
  if (!qword_1EB630C10)
  {
    type metadata accessor for VertexLayoutDescriptor();
    sub_1AF43A5EC(&qword_1EB6315C0, type metadata accessor for VertexLayoutDescriptor);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630C10);
    }
  }
}

void sub_1AF43CB58()
{
  if (!qword_1EB638218)
  {
    type metadata accessor for vfx_vertex_attribute(255);
    sub_1AF43CC28(255, &qword_1EB638220, type metadata accessor for VFXMeshSourceSemantic);
    sub_1AF43A5EC(&unk_1EB638228, type metadata accessor for vfx_vertex_attribute);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638218);
    }
  }
}

void sub_1AF43CC28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1AF43CC94()
{
  if (!qword_1EB638240)
  {
    sub_1AFDFC128();
    sub_1AF43A5EC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638240);
    }
  }
}

void sub_1AF43CD30()
{
  if (!qword_1EB63F3C0)
  {
    sub_1AF43CD94();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F3C0);
    }
  }
}

unint64_t sub_1AF43CD94()
{
  result = qword_1EB638250;
  if (!qword_1EB638250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB638250);
  }

  return result;
}

void sub_1AF43CDE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3);
    sub_1AF43BD80(a5, a3);
    v8 = sub_1AFDFE5D8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF43CE7C()
{
  if (!qword_1EB638278)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    sub_1AF43A5EC(&qword_1EB638280, type metadata accessor for VFXWorldLoaderOption);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638278);
    }
  }
}

void sub_1AF43CF1C()
{
  if (!qword_1EB638290)
  {
    sub_1AF445B28(255, &qword_1EB638298, sub_1AF43CFC0, &type metadata for VertexLayout, MEMORY[0x1E69E64E8]);
    sub_1AF43B694();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638290);
    }
  }
}

unint64_t sub_1AF43CFC0()
{
  result = qword_1EB6382A0;
  if (!qword_1EB6382A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6382A0);
  }

  return result;
}

void sub_1AF43D014()
{
  if (!qword_1EB6331E8)
  {
    sub_1AF449B08(255, &qword_1EB6332D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E62F8]);
    sub_1AF43D0A4();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6331E8);
    }
  }
}

unint64_t sub_1AF43D0A4()
{
  result = qword_1EB6339B8;
  if (!qword_1EB6339B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6339B8);
  }

  return result;
}

void sub_1AF43D0F8()
{
  if (!qword_1EB633B70)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633B70);
    }
  }
}

void sub_1AF43D154()
{
  if (!qword_1ED72C1B8)
  {
    sub_1AF43A3CC(255, &qword_1ED72C1B0, &qword_1ED72C1D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED72C1B8);
    }
  }
}

void *sub_1AF43D1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44674C();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF4495B8(v4, &v8, sub_1AF4467E4);
    v5 = v8;
    v6 = sub_1AF0D3F10(v8);
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    *(v3[6] + 8 * v6) = v5;
    sub_1AF0D6E5C(&v9, v3[7] + 8 * v6);
    ++v3[2];
    v4 += 16;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43D308(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v8 = sub_1AFDFE5C8();
  v9 = a1 + 32;

  v10 = MEMORY[0x1E69E7CA0];
  do
  {
    sub_1AF447AA4(v9, &v14, a3, a4, v10 + 8, sub_1AF43CC28);
    v11 = v14;
    v12 = sub_1AF0D58C0(v14);
    *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v8[6] + 8 * v12) = v11;
    sub_1AF0DB6BC(&v15, (v8[7] + 32 * v12));
    ++v8[2];
    v9 += 40;
    --v4;
  }

  while (v4);

  return v8;
}

void sub_1AF43D430()
{
  if (!qword_1EB6382A8)
  {
    type metadata accessor for Key(255);
    sub_1AF43A5EC(&qword_1EB637E40, type metadata accessor for Key);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6382A8);
    }
  }
}

void sub_1AF43D4D0()
{
  if (!qword_1EB63F5E0)
  {
    sub_1AF449B08(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF43D560();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F5E0);
    }
  }
}

unint64_t sub_1AF43D560()
{
  result = qword_1EB6382C8;
  if (!qword_1EB6382C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6382C8);
  }

  return result;
}

void sub_1AF43D5CC()
{
  if (!qword_1EB6382D0)
  {
    sub_1AF449B08(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6382D0);
    }
  }
}

void sub_1AF43D658()
{
  if (!qword_1EB63F5F0)
  {
    sub_1AF449B08(255, &qword_1EB6382E0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    sub_1AF43D560();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F5F0);
    }
  }
}

void sub_1AF43D704()
{
  if (!qword_1EB6382E8)
  {
    sub_1AF449B08(255, &qword_1EB6382E0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB6382E8);
    }
  }
}

void sub_1AF43D850()
{
  if (!qword_1EB638310)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638310);
    }
  }
}

void sub_1AF43D8B0()
{
  if (!qword_1ED723070)
  {
    sub_1AF43D914();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723070);
    }
  }
}

unint64_t sub_1AF43D914()
{
  result = qword_1ED7249A0;
  if (!qword_1ED7249A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7249A0);
  }

  return result;
}

void sub_1AF43D998()
{
  if (!qword_1EB630DF8)
  {
    sub_1AF43D914();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630DF8);
    }
  }
}

uint64_t sub_1AF43D9FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AF446CC4(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AF43DA80()
{
  if (!qword_1ED722F48)
  {
    sub_1AF4485F8(255, &qword_1ED7256D0);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722F48);
    }
  }
}

void sub_1AF43DAF8()
{
  if (!qword_1ED721E78)
  {
    sub_1AF449B08(255, &unk_1ED7225E0, &type metadata for ManagedBufferSlice, MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED721E78);
    }
  }
}

void sub_1AF43DB74()
{
  if (!qword_1EB638328)
  {
    type metadata accessor for Option(255);
    sub_1AF43A5EC(&qword_1EB637E30, type metadata accessor for Option);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638328);
    }
  }
}

void *sub_1AF43DC2C(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = sub_1AF0D3F10(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + 8 * v8) = v7;
    ++v4[2];

    v5 += 2;
    --v2;
  }

  while (v2);
  return v4;
}

void *sub_1AF43DD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449A78();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 8);

    v7 = sub_1AF41AABC(v6, sub_1AF95C4DC, sub_1AF41E4A0);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v6;
    *(v3[7] + 8 * v7) = v5;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43DE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44383C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v4 += 48;
    v9 = sub_1AF0D3F10(v5);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v5;
    v10 = v3[7] + 32 * v9;
    *v10 = v6;
    *(v10 + 8) = v7;
    *(v10 + 16) = v8;
    ++v3[2];
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43DEFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445284();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 8);
    v7 = *v4;
    v8 = v4[1];
    v10 = v4[2];
    v9 = v4[3];
    v11 = *(v4 + 32);
    v13 = v4[5];
    v12 = v4[6];
    *&v19 = *(v4 - 3);
    *(&v19 + 1) = v5;
    LOBYTE(v20) = v6;
    *(&v20 + 1) = v7;
    v21 = v8;

    v14 = sub_1AF41AB58(&v19);
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    v15 = v3[6] + 40 * v14;
    v16 = v20;
    *v15 = v19;
    *(v15 + 16) = v16;
    *(v15 + 32) = v21;
    v17 = v3[7] + 40 * v14;
    *v17 = v10;
    *(v17 + 8) = v9;
    *(v17 + 16) = v11;
    *(v17 + 24) = v13;
    *(v17 + 32) = v12;
    ++v3[2];
    v4 += 10;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43E03C(uint64_t a1)
{
  sub_1AF445908();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44933C(0, &unk_1EB632910, MEMORY[0x1E69E6EC8]);
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v19 = *(v4 + 72);
  v20 = v10;

  do
  {
    sub_1AF4495B8(v11, v7, sub_1AF445908);
    v12 = sub_1AF419940(v7);
    *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = v9[6];
    v14 = sub_1AFDFC318();
    v15 = *(v14 - 8);
    v16 = *(v15 + 32);
    v17 = *(v15 + 72) * v12;
    v16(v13 + v17, v7, v14);
    v16(v9[7] + v17, &v7[v20], v14);
    ++v9[2];
    v11 += v19;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF43E270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446DE8();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF0D8094(v4, &v16, &unk_1EB638AD0, &type metadata for ScriptCompilerSystem.CompilationHandle, &type metadata for CompilationStatus, sub_1AF0D8108);
    v5 = v16;
    v7 = v17;
    v6 = v18;
    v8 = sub_1AF41ACD4(v16, v17 | (v18 << 32));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = v3[6] + 16 * v8;
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 12) = v6;
    v10 = (v3[7] + 96 * v8);
    v11 = v20;
    *v10 = v19;
    v10[1] = v11;
    v12 = v21;
    v13 = v22;
    v14 = v23[0];
    *(v10 + 73) = *(v23 + 9);
    v10[3] = v13;
    v10[4] = v14;
    v10[2] = v12;
    ++v3[2];
    v4 += 112;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446D30();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;
  do
  {
    sub_1AF0D8094(v4, &v14, &unk_1EB638AC0, &type metadata for ScriptCompilerSystem.CompilationHandle, &_s18CachedBuildResultsV6ResultON, sub_1AF0D8108);
    v5 = v14;
    v6 = v15;
    v7 = v16;
    v8 = sub_1AF41ACD4(v14, v15 | (v16 << 32));
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = v3[6] + 16 * v8;
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 12) = v7;
    v10 = (v3[7] + 48 * v8);
    v11 = *(v18 + 9);
    v12 = v18[0];
    *v10 = v17;
    v10[1] = v12;
    *(v10 + 25) = v11;
    ++v3[2];
    v4 += 64;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E500(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43E638(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 40);
  do
  {
    v6 = *v5;
    v7 = *(v5 - 1);

    v8 = sub_1AF0D58C0(v7);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v7;
    *(v4[7] + 8 * v8) = v6;
    ++v4[2];
    v5 += 2;
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43E718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443DB4(0, &unk_1EB63F3F0, sub_1AF43B694);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF41A9B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v8 = v6;
    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43E818(uint64_t a1)
{
  sub_1AF442A88(0, &unk_1EB638450, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v20 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF442D14(0, &qword_1EB63F400, MEMORY[0x1E69E6EC8]);
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF449A04(v11, v7, &unk_1EB638450, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair, sub_1AF442A88);
    v13 = *v7;
    v14 = *(v7 + 1);
    v15 = sub_1AF41AD6C(*v7, v14);
    *(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = (v9[6] + 16 * v15);
    *v16 = v13;
    v16[1] = v14;
    v17 = v9[7];
    v18 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam();
    sub_1AF445CBC(&v7[v10], v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF43EA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446BB0();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v4 - 6);
    v9 = *(v4 - 5);
    v10 = sub_1AF41AE38(v8 | (v9 << 32), v5);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = v3[6] + 16 * v10;
    *v11 = v8;
    *(v11 + 4) = v9;
    *(v11 + 8) = v5;
    v12 = (v3[7] + 16 * v10);
    *v12 = v6;
    v12[1] = v7;
    ++v3[2];
    sub_1AF446C68(v6, v7);
    v4 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43EB7C(uint64_t a1)
{
  sub_1AF43CC28(0, &qword_1ED72DF48, MEMORY[0x1E6968FB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443C88();
  v9 = sub_1AFDFE5C8();
  v10 = &v7[*(v3 + 48)];
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF447AA4(v11, v7, &qword_1ED72DF48, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1AF43CC28);
    v13 = sub_1AF41A390(v7);
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v14 = v9[6];
    v15 = sub_1AFDFC128();
    (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v7, v15);
    v16 = (v9[7] + 16 * v13);
    v17 = *(v10 + 1);
    *v16 = *v10;
    v16[1] = v17;
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1AF43ED8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF445DFC();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v8 = v6;
    v4 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43EE68(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v4[6] + 16 * v9);
    *v10 = v6;
    v10[1] = v7;
    *(v4[7] + 8 * v9) = v8;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF43EF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638A68, sub_1AF445888, sub_1AF446970);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 72);
  do
  {
    v5 = *(v4 - 3);
    v13 = *(v4 - 5);
    v14 = v5;
    v6 = *v4;
    v15 = *(v4 - 1);
    sub_1AF444F60(&v13, v12);
    v7 = sub_1AF41A308(&v13);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = v3[6] + 40 * v7;
    v9 = v15;
    v10 = v14;
    *v8 = v13;
    *(v8 + 16) = v10;
    *(v8 + 32) = v9;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 6;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44745C();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F1BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4474BC();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF0D8094(v4, v10, &unk_1EB638B68, &type metadata for GraphScheduling, &type metadata for VFXObjectScriptsDiff.Diff, sub_1AF0D8108);
    v5 = sub_1AF41AED0(v10);
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    sub_1AF4473A0(v10, v3[6] + 48 * v5);
    v6 = v3[7] + 40 * v5;
    v7 = v11;
    v8 = v12;
    *(v6 + 32) = v13;
    *v6 = v7;
    *(v6 + 16) = v8;
    ++v3[2];
    v4 += 88;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447218();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  do
  {
    sub_1AF4495B8(v4, v7, sub_1AF447308);
    v5 = sub_1AF41AED0(v7);
    *(v3 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v5;
    sub_1AF4473A0(v7, v3[6] + 48 * v5);
    *(v3[7] + 8 * v5) = v8;
    ++v3[2];
    v4 += 56;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443998(0, &qword_1EB638B00, sub_1AF446FD4, sub_1AF444B6C);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 64);
  do
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 24);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = *v4;
    v4 += 5;
    sub_1AF443EE0(v5);

    v10 = sub_1AF41AF3C(v5);
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v3[6] + 8 * v10) = v5;
    v11 = v3[7] + 32 * v10;
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F52C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &unk_1EB63F420, sub_1AF446F40);
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF0D3F10(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];

    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF446EB4();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 32);
  for (i = v1 - 1; ; --i)
  {
    v6 = v4[5];
    *&v21[64] = v4[4];
    *&v21[80] = v6;
    v7 = v4[7];
    *&v21[96] = v4[6];
    *&v21[112] = v7;
    v8 = v4[1];
    *v21 = *v4;
    *&v21[16] = v8;
    v9 = v4[3];
    *&v21[32] = v4[2];
    *&v21[48] = v9;
    v10 = *v21;
    v11 = sub_1AF0D3F10(*v21);
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v10;
    v12 = v3[7] + 120 * v11;
    v13 = *&v21[24];
    v14 = *&v21[56];
    v15 = *&v21[8];
    *(v12 + 32) = *&v21[40];
    *(v12 + 48) = v14;
    *v12 = v15;
    *(v12 + 16) = v13;
    v16 = *&v21[72];
    v17 = *&v21[88];
    v18 = *&v21[104];
    *(v12 + 112) = *&v21[120];
    *(v12 + 80) = v17;
    *(v12 + 96) = v18;
    *(v12 + 64) = v16;
    ++v3[2];
    if (!i)
    {
      break;
    }

    sub_1AF4495B8(v21, v20, sub_1AF444180);
    v4 += 8;
  }

  sub_1AF4495B8(v21, v20, sub_1AF444180);
  return v3;
}

void *sub_1AF43F7C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF447520();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 = (v4 + 24);
    v7 = sub_1AF41A9B4(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 16 * v7) = v6;
    ++v3[2];
    v8 = v6;
    --v1;
  }

  while (v1);
  return v3;
}

void *sub_1AF43F8B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4427B0();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  v5 = MEMORY[0x1E69E7CA0];
  v6 = MEMORY[0x1E69E69B8];
  do
  {
    sub_1AF0D8094(v4, v12, &unk_1EB63F360, v6, v5 + 8, sub_1AF0D8108);
    v7 = sub_1AF41AFA8(v12);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    v8 = v3[6] + 40 * v7;
    v9 = v13;
    v10 = v12[1];
    *v8 = v12[0];
    *(v8 + 16) = v10;
    *(v8 + 32) = v9;
    sub_1AF0DB6BC(&v14, (v3[7] + 32 * v7));
    ++v3[2];
    v4 += 72;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF43F9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF43FACC();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *v4;
    v6 = *(v4 - 1);
    v7 = v5;
    v8 = sub_1AF0D58C0(v6);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v6;
    *(v3[7] + 8 * v8) = v7;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void sub_1AF43FACC()
{
  if (!qword_1EB638330)
  {
    type metadata accessor for Option(255);
    sub_1AF0D4478(255, &qword_1ED721F80);
    sub_1AF43A5EC(&qword_1EB637E30, type metadata accessor for Option);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638330);
    }
  }
}

void sub_1AF43FB88()
{
  if (!qword_1EB630B80)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630B80);
    }
  }
}

void sub_1AF43FBE8()
{
  if (!qword_1EB630998)
  {
    sub_1AF0D8108(255, &qword_1EB631350);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630998);
    }
  }
}

void sub_1AF43FC58()
{
  if (!qword_1EB638338)
  {
    sub_1AF447DFC(255, &qword_1ED723190);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638338);
    }
  }
}

void sub_1AF43FD00()
{
  if (!qword_1EB632B10)
  {
    sub_1AF449890(255, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632B10);
    }
  }
}

unint64_t sub_1AF43FD98()
{
  result = qword_1ED726830;
  if (!qword_1ED726830)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED726830);
  }

  return result;
}

void *sub_1AF43FDE8(uint64_t a1)
{
  sub_1AF444878();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44490C();
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);
  do
  {
    sub_1AF4495B8(v11, v7, sub_1AF444878);
    v13 = *v7;
    v21 = *(v7 + 4);
    v14 = v21;
    v15 = sub_1AF41A190(v13 | (v21 << 32));
    *(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = v9[6] + 8 * v15;
    *v16 = v13;
    *(v16 + 4) = v14;
    v17 = v9[7];
    v18 = sub_1AFDFC128();
    (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v7 + v10, v18);
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);
  return v9;
}

void *sub_1AF43FFB8(uint64_t a1)
{
  sub_1AF442A88(0, &qword_1ED722048, MEMORY[0x1E6968FB0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v20 - v6);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF449BDC(0, &qword_1EB638990, MEMORY[0x1E6968FB0]);
  v9 = sub_1AFDFE5C8();
  v10 = *(v3 + 48);
  v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v12 = *(v4 + 72);

  do
  {
    sub_1AF449A04(v11, v7, &qword_1ED722048, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6158], sub_1AF442A88);
    v13 = *v7;
    v14 = v7[1];
    v15 = sub_1AF41A54C(*v7, v14, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
    v16 = (v9[6] + 16 * v15);
    *v16 = v13;
    v16[1] = v14;
    v17 = v9[7];
    v18 = sub_1AFDFC128();
    (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v7 + v10, v18);
    ++v9[2];
    v11 += v12;
    --v8;
  }

  while (v8);

  return v9;
}

void sub_1AF440250()
{
  if (!qword_1EB638350)
  {
    type metadata accessor for LoadingOption(255);
    sub_1AF43A5EC(&qword_1EB637E10, type metadata accessor for LoadingOption);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638350);
    }
  }
}

void sub_1AF44034C()
{
  if (!qword_1EB630BF8)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630BF8);
    }
  }
}

void sub_1AF4403D8()
{
  if (!qword_1EB638370)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638370);
    }
  }
}

void *sub_1AF440490(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1AFDFE5C8();
  v7 = (a1 + 40);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = a3(v8);
    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v6[6] + 8 * v10) = v8;
    *(v6[7] + 8 * v10) = v9;
    ++v6[2];

    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

void *sub_1AF440564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444BC0();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 16;
    sub_1AF443EE0(v5);
    v7 = sub_1AF41AF3C(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + v7) = v6;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444B08();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    sub_1AF443EE0(v5);
    v7 = sub_1AF41AF3C(v5);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF44070C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF444A94();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 80);
  do
  {
    v5 = *(v4 - 6);
    v6 = *(v4 - 5);
    v7 = *(v4 - 4);
    v8 = *(v4 - 24);
    v9 = *(v4 - 2);
    v10 = *(v4 - 1);
    v11 = *v4;
    v4 += 56;

    sub_1AF443EE0(v7);
    sub_1AF444224(v9);
    v12 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v13 = (v3[6] + 16 * v12);
    *v13 = v5;
    v13[1] = v6;
    v14 = v3[7] + 40 * v12;
    *v14 = v7;
    *(v14 + 8) = v8;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    *(v14 + 32) = v11;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF44274C();
  v3 = sub_1AFDFE5C8();
  v4 = a1 + 32;

  v5 = MEMORY[0x1E69E7CA0];
  v6 = MEMORY[0x1E69E6158];
  do
  {
    sub_1AF0D8094(v4, &v12, &qword_1ED7232A0, v6, v5 + 8, sub_1AF0D8108);
    v7 = v12;
    v8 = v13;
    v9 = sub_1AF41A54C(v12, v13, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v10 = (v3[6] + 16 * v9);
    *v10 = v7;
    v10[1] = v8;
    sub_1AF0DB6BC(&v14, (v3[7] + 32 * v9));
    ++v3[2];
    v4 += 48;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF4409B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443DB4(0, &qword_1EB6386A0, sub_1AF443AFC);
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 40);
  do
  {
    v5 = *(v4 - 8);
    v6 = *v4;
    v7 = sub_1AF41AABC(v5, sub_1AFBF62E0, sub_1AF41B530);
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + v7) = v5;
    *(v3[7] + 8 * v7) = v6;
    ++v3[2];
    v4 += 2;
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF443D54();
  v3 = sub_1AFDFE5C8();

  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 24;

    v8 = sub_1AF41A54C(v5, v6, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    v9 = (v3[6] + 16 * v8);
    *v9 = v5;
    v9[1] = v6;
    *(v3[7] + v8) = v7;
    ++v3[2];
    --v1;
  }

  while (v1);

  return v3;
}

void *sub_1AF440BF4(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();
  v5 = (a1 + 40);
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = sub_1AF41A9B4(v6);
    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v4[6] + 8 * v8) = v6;
    *(v4[7] + 8 * v8) = v7;
    ++v4[2];

    v5 += 2;
    --v2;
  }

  while (v2);
  return v4;
}

void *sub_1AF440CD8(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v4 = sub_1AFDFE5C8();

  v5 = (a1 + 48);
  do
  {
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 3;

    v9 = v8;
    v10 = sub_1AF41A54C(v6, v7, MEMORY[0x1E69E60C8], sub_1AF41B38C);
    *(v4 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v11 = (v4[6] + 16 * v10);
    *v11 = v6;
    v11[1] = v7;
    *(v4[7] + 8 * v10) = v9;
    ++v4[2];
    --v2;
  }

  while (v2);

  return v4;
}

void *sub_1AF440DE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AF4462C4();
  v3 = sub_1AFDFE5C8();
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 3;
    v8 = sub_1AF0D3F10(v5);
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v5;
    v9 = (v3[7] + 16 * v8);
    *v9 = v6;
    v9[1] = v7;
    ++v3[2];
    sub_1AF43C9F0(v6, v7);
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1AF440EB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E5FE0];
  v4 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6530], MEMORY[0x1E69E5FE8]);
  v5 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;
      v10 = *(v5 + 2);
      v9 = *(v5 + 3);
      if (v10 >= v9 >> 1)
      {
        v5 = sub_1AF422330(v9 > 1, v10 + 1, 1, v5, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v5 + 2) = v10 + 1;
      *&v5[8 * v10 + 32] = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = sub_1AF0D3F10(v8);
      v14 = v13;
      v15 = v4[2] + ((v13 & 1) == 0);
      if (v4[3] < v15)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v17 = v12;
      sub_1AF84E5F8();
      v12 = v17;
      if (v14)
      {
LABEL_12:
        *(v4[7] + 8 * v12) = v7;
        goto LABEL_4;
      }

LABEL_3:
      v4[(v12 >> 6) + 8] |= 1 << v12;
      *(v4[6] + 8 * v12) = v8;
      *(v4[7] + 8 * v12) = v7;
      ++v4[2];
LABEL_4:
      if (!--v2)
      {
        return v4;
      }
    }

    sub_1AF83EEF4(v15, isUniquelyReferenced_nonNull_native);
    v12 = sub_1AF0D3F10(v8);
    if ((v14 & 1) != (v16 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v4;
}

unint64_t sub_1AF4410A8(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

unint64_t sub_1AF4410E4(unint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = (result >> 59) & 2 | (result >> 2) & 1;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    result &= 0xEFFFFFFFFFFFFFFBLL;
  }

  return a2(result);
}

unint64_t sub_1AF441114(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

void *sub_1AF441150(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AF441194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AF441230()
{
  sub_1AF4410E4(*(v0 + 24), sub_1AF441114);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AF441284(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF44131C(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

uint64_t sub_1AF441394(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(void))
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  v9 = MEMORY[0x1E69E5FE0];
  v10 = MEMORY[0x1B2718660](v7, MEMORY[0x1E69E5FE0], v8, MEMORY[0x1E69E5FE8]);
  v11 = sub_1AF422330(0, v7, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v9);
  if (!v7)
  {
    return v10;
  }

  v24 = a4;
  for (i = (a1 + 40); ; i += 2)
  {
    v14 = *(i - 1);
    v13 = *i;
    v15 = *(v11 + 2);
    v16 = *(v11 + 3);

    if (v15 >= v16 >> 1)
    {
      v11 = sub_1AF422330(v16 > 1, v15 + 1, 1, v11, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    *(v11 + 2) = v15 + 1;
    *&v11[8 * v15 + 32] = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1AF0D3F10(v14);
    v20 = v18;
    if (v10[3] < (v10[2] + ((v18 & 1) == 0)))
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v24();
      if (v20)
      {
LABEL_13:
        *(v10[7] + 8 * v19) = v13;

        goto LABEL_4;
      }
    }

LABEL_3:
    v10[(v19 >> 6) + 8] |= 1 << v19;
    *(v10[6] + 8 * v19) = v14;
    *(v10[7] + 8 * v19) = v13;
    ++v10[2];
LABEL_4:
    if (!--v7)
    {
      return v10;
    }
  }

  a3();
  v21 = sub_1AF0D3F10(v14);
  if ((v20 & 1) == (v22 & 1))
  {
    v19 = v21;
    if (v20)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF4415B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v8 = *i;
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);

      if (v11 >= v10 >> 1)
      {
        v6 = sub_1AF422330(v10 > 1, v11 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1AF0D3F10(v9);
      v15 = v14;
      v16 = v5[2] + ((v14 & 1) == 0);
      if (v5[3] < v16)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v18 = v13;
      sub_1AF84CDCC();
      v13 = v18;
      if (v15)
      {
LABEL_12:
        *(v5[7] + 8 * v13) = v8;

        goto LABEL_4;
      }

LABEL_3:
      v5[(v13 >> 6) + 8] |= 1 << v13;
      *(v5[6] + 8 * v13) = v9;
      *(v5[7] + 8 * v13) = v8;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF83C0B0(v16, isUniquelyReferenced_nonNull_native);
    v13 = sub_1AF0D3F10(v9);
    if ((v15 & 1) != (v17 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}

uint64_t sub_1AF4417E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1E69E5FE0];
  v5 = MEMORY[0x1B2718660](v2, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);
  v6 = sub_1AF422330(0, v2, 0, MEMORY[0x1E69E7CC0], &qword_1EB630978, v3);
  if (v2)
  {
    for (i = (a1 + 32); ; i += 8)
    {
      v15 = i[5];
      v45[4] = i[4];
      v45[5] = v15;
      v16 = i[7];
      v45[6] = i[6];
      v45[7] = v16;
      v17 = i[1];
      v45[0] = *i;
      v45[1] = v17;
      v18 = i[3];
      v45[2] = i[2];
      v45[3] = v18;
      sub_1AF4495B8(v45, v43, sub_1AF444180);
      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = sub_1AF422330(v19 > 1, v20 + 1, 1, v6, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      }

      v21 = *&v45[0];
      *(v6 + 2) = v20 + 1;
      *&v6[8 * v20 + 32] = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_1AF0D3F10(v21);
      v25 = v24;
      v26 = v5[2] + ((v24 & 1) == 0);
      if (v5[3] < v26)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v41 = v23;
      sub_1AF84CF84();
      v23 = v41;
      if (v25)
      {
LABEL_12:
        v28 = v5[7] + 120 * v23;
        v29 = *(v28 + 48);
        v31 = *v28;
        v30 = *(v28 + 16);
        v43[2] = *(v28 + 32);
        v43[3] = v29;
        v43[0] = v31;
        v43[1] = v30;
        v33 = *(v28 + 80);
        v32 = *(v28 + 96);
        v34 = *(v28 + 64);
        v44 = *(v28 + 112);
        v43[5] = v33;
        v43[6] = v32;
        v43[4] = v34;
        v35 = *(v45 + 8);
        v36 = *(&v45[1] + 8);
        v37 = *(&v45[3] + 8);
        *(v28 + 32) = *(&v45[2] + 8);
        *(v28 + 48) = v37;
        *v28 = v35;
        *(v28 + 16) = v36;
        v38 = *(&v45[4] + 8);
        v39 = *(&v45[5] + 8);
        v40 = *(&v45[6] + 8);
        *(v28 + 112) = *(&v45[7] + 1);
        *(v28 + 80) = v39;
        *(v28 + 96) = v40;
        *(v28 + 64) = v38;
        sub_1AF444058(v43, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        goto LABEL_4;
      }

LABEL_3:
      v5[(v23 >> 6) + 8] |= 1 << v23;
      *(v5[6] + 8 * v23) = v21;
      v8 = v5[7] + 120 * v23;
      v9 = *(&v45[1] + 8);
      v10 = *(&v45[3] + 8);
      v11 = *(v45 + 8);
      *(v8 + 32) = *(&v45[2] + 8);
      *(v8 + 48) = v10;
      *v8 = v11;
      *(v8 + 16) = v9;
      v12 = *(&v45[4] + 8);
      v13 = *(&v45[5] + 8);
      v14 = *(&v45[6] + 8);
      *(v8 + 112) = *(&v45[7] + 1);
      *(v8 + 80) = v13;
      *(v8 + 96) = v14;
      *(v8 + 64) = v12;
      ++v5[2];
LABEL_4:
      if (!--v2)
      {
        return v5;
      }
    }

    sub_1AF83C350(v26, isUniquelyReferenced_nonNull_native);
    v23 = sub_1AF0D3F10(v21);
    if ((v25 & 1) != (v27 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_11:
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_3;
  }

  return v5;
}