unint64_t sub_1AF6576B0()
{
  result = qword_1ED727198;
  if (!qword_1ED727198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED727198);
  }

  return result;
}

uint64_t sub_1AF65773C(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1AF441150(a1, v3);
  v5 = sub_1AF6950A0(v3, v4);
  v6 = a1[3];
  v7 = a1[4];
  sub_1AF441150(a1, v6);
  if (sub_1AF69504C(2000, v6, v7))
  {
LABEL_2:
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF388();
    if (!v1)
    {
      sub_1AF448018(&v31, v33);
      v8 = sub_1AFDFEAE8();
      sub_1AF448018(&v31, v33);
      v9 = sub_1AFDFEAE8();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v31);
      goto LABEL_11;
    }

LABEL_9:

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF69504C(2008, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (v1)
    {
      goto LABEL_9;
    }

    sub_1AF441150(&v31, v33);
    v12 = sub_1AFDFEEB8();
    v8 = v12;
    v9 = HIDWORD(v12);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v31);
  }

  else
  {
    if (*(v5 + 85) != 1)
    {
      goto LABEL_2;
    }

    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (v1)
    {
      goto LABEL_9;
    }

    sub_1AF441150(&v31, v33);
    v8 = sub_1AFDFEE98();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v31);
    v9 = 0xFFFFFFFFLL;
  }

LABEL_11:
  if (*(v5 + 85) == 1)
  {
    if (v8 == -1)
    {
    }

    else
    {
      v14 = a1[3];
      v15 = a1[4];
      sub_1AF441150(a1, v14);
      v16 = *(sub_1AF6950A0(v14, v15) + 120);

      if (*(v16 + 16))
      {
        v17 = sub_1AF449D3C(v8 | (v9 << 32));
        if (v18)
        {
          v19 = (*(v16 + 56) + 8 * v17);
          v8 = *v19;
          v9 = v19[1];

          goto LABEL_16;
        }
      }

      v20 = a1[3];
      v21 = a1[4];
      sub_1AF441150(a1, v20);
      v22 = *(sub_1AF6950A0(v20, v21) + 56);

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v23 = 0xE000000000000000;
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1AFDFE218();
      if (v22)
      {
        v24 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](8285, 0xE200000000000000);
        v25 = 91;
        v23 = 0xE100000000000000;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x1B2718AE0](v25, v23);

      MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF2DEF0);
      v26 = sub_1AF656F38();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v28 = v31;
      v27 = v32;
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v30 = v29;
        swift_once();
        v29 = v30;
      }

      v31 = 0;
      sub_1AF0D4F18(v29, &v31, v28, v27);
    }

    v9 = 0;
    v8 = -1;
    goto LABEL_27;
  }

LABEL_16:

LABEL_27:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8 | (v9 << 32);
}

uint64_t sub_1AF657C34()
{
  v1 = v0[2];
  v2 = *(*(v1 + 32) + 16);
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];

    sub_1AFC05CE4(0, v2, 0);
    v3 = 32;
    v4 = v34;
    do
    {
      v5 = sub_1AFDFF4B8();
      v35 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1AFC05CE4(v7 > 1, v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v4 = v35;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v12 = *(v1 + 40);
  if (*(v12 + 16))
  {
    v33 = v0[12];
    v13 = v0[14];
    v14 = *(v13 + 16);
    v15 = (v13 + 32);

    v16 = 0;
    v17 = v14 + 1;
    v18 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v19 = *(v12 + 32 + 16 * v16++);
    v20 = v17;
    v21 = v15;
    while (--v20)
    {
      v22 = v21 + 5;
      v23 = *v21;
      v21 += 5;
      if (v23 == v19)
      {
        v24 = sub_1AF641FC8(v33 + *(v22 - 2), 0, v19);
        v26 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1AF420554(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        if (v28 >= v27 >> 1)
        {
          v18 = sub_1AF420554(v27 > 1, v28 + 1, 1, v18);
        }

        *(v18 + 2) = v28 + 1;
        v29 = &v18[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v26;
        if (v16 == *(v12 + 16))
        {

          goto LABEL_19;
        }

        goto LABEL_9;
      }
    }

    sub_1AFDFE218();

    v32 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v32);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2E0F0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_19:
    sub_1AF48FAF8(v18);
    sub_1AF629AE4();
    sub_1AF488088();
    v30 = sub_1AFDFCD98();

    return v30;
  }

  return result;
}

BOOL sub_1AF657F68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 128);
  if (*(v3 + 16) && (v5 = sub_1AF449CB8(a1), (v6 & 1) != 0))
  {
    return *(*(v2 + 24) + 16 * *(*(v3 + 56) + 8 * v5) + 32) == a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AF657FCC(uint64_t *a1)
{
  if (v1[8] == a1[8])
  {
    v2 = v1[5];
    v3 = a1[5];
    v4 = *(v2 + 16);
    if (v4 == *(v3 + 16))
    {
      if (v4)
      {
        v5 = v2 == v3;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return sub_1AF64FEF0(v1[4], a1[4]);
      }

      v6 = (v3 + 56);
      for (i = (v2 + 56); *(i - 3) == *(v6 - 3) && *i == *v6; i += 5)
      {
        v6 += 5;
        if (!--v4)
        {
          return sub_1AF64FEF0(v1[4], a1[4]);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AF65804C()
{
  if (qword_1ED725C98 != -1)
  {
    swift_once();
  }

  type metadata accessor for EntityClass();
  swift_allocObject();

  v1 = sub_1AF6586B4(v0, -2, MEMORY[0x1E69E7CC0]);

  qword_1ED73B5C0 = v1;
  return result;
}

uint64_t sub_1AF6580E0(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 128);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = sub_1AF449CB8(&type metadata for ClassSettings);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (*(*(v2 + 24) + 16 * *(*(v3 + 56) + 8 * v5) + 32) != &type metadata for ClassSettings)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_1AF441194(i, v11);
    sub_1AF5C5358(0, &qword_1ED72C1D0);
    if (swift_dynamicCast())
    {
      break;
    }

    if (!--v8)
    {
      return 0;
    }
  }

  return v10;
}

uint64_t sub_1AF6581D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    while (sub_1AF640E28(*(v4 - 8)))
    {
      v4 += 16;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_14;
  }

LABEL_5:
  v18[2] = MEMORY[0x1B27191B0](*(*(v1 + 32) + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v5 = *(v1 + 32);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = v5 + 40;
    while (1)
    {
      v8 = *(v7 - 8);
      v9 = *(*v7 + 8);
      v10 = *(v9 + 24);
      v11 = v10(v8, v9);
      if ((sub_1AF70D168(v18, v11) & 1) == 0)
      {
        break;
      }

      v7 += 16;
      if (!--v6)
      {
        goto LABEL_9;
      }
    }

    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1AFDFE218();
    v13 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v13);

    MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF2E090);
    v10(v8, v9);
    v14 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v14);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    sub_1AF47BC54();

    v15 = sub_1AFDFE338();
    v17 = v16;

    MEMORY[0x1B2718AE0](v15, v17);

LABEL_14:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

LABEL_9:
}

uint64_t sub_1AF658454()
{
  v1 = v0[9];
  v2 = v0[7];
  v12 = v0[8];
  v13 = v1;
  v3 = v0[9];
  v4 = v0[11];
  v14 = v0[10];
  v15 = v4;
  v5 = v0[7];
  v11[0] = v0[6];
  v11[1] = v5;
  v19 = v12;
  v20 = v3;
  v6 = v0[11];
  v21 = v14;
  v22 = v6;
  v17 = v11[0];
  v18 = v2;
  sub_1AF63529C(v11, v16);
  sub_1AF6277C4();
  v16[2] = v19;
  v16[3] = v20;
  v16[4] = v21;
  v16[5] = v22;
  v16[0] = v17;
  v16[1] = v18;
  sub_1AF6352F8(v16);
  if (qword_1ED72B7B8 != -1)
  {
    swift_once();
  }

  vfx_counters.add(_:_:)(dword_1ED73B700, -1);

  v7 = v0[9];
  v19 = v0[8];
  v20 = v7;
  v8 = v0[11];
  v21 = v0[10];
  v22 = v8;
  v9 = v0[7];
  v17 = v0[6];
  v18 = v9;
  sub_1AF6352F8(&v17);
  return swift_deallocClassInstance();
}

uint64_t sub_1AF6585AC()
{
  sub_1AFDFE218();

  strcpy(v3, "<EntityClass[");
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](8285, 0xE200000000000000);
  v1 = sub_1AF657C34();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_1AF6586B4(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  *(v3 + 208) = sub_1AF658B30(&type metadata for AnonymousEntity);

  v8 = sub_1AF6580E0(a3);
  if (v9)
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 104);
    v42 = *(a1 + 88);
    v43 = v11;
    LOBYTE(v44) = *(a1 + 120);
    v40 = *(a1 + 56);
    v41 = v10;
    memmove((v3 + 24), (a1 + 56), 0x41uLL);
    sub_1AF5DD36C(&v40, v46);
  }

  else
  {
    v12 = v8;

    v14 = sub_1AF3C3FEC(v13);

    sub_1AF64F3CC(v14, v12, 0, (*(v4 + 208) & 1) == 0, &v40);
    v15 = v40;
    *(v4 + 40) = v41;
    v16 = v43;
    *(v4 + 56) = v42;
    *(v4 + 72) = v16;
    *(v4 + 88) = v44;
    *(v4 + 24) = v15;
  }

  *(v4 + 204) = a2;
  v17 = *(a1 + 32);
  v18 = *(v17 + 16);
  if (!v18)
  {
    if (*(v4 + 208) == 1)
    {
      LOBYTE(v19) = 0;
      *(v4 + 212) = 0;
      goto LABEL_18;
    }

    LOBYTE(v19) = 0;
    v20 = 0;
    goto LABEL_17;
  }

  v39 = a3;

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v17 + 40;
  do
  {
    v23 = *(v22 - 8);
    v24 = *(*v22 + 8);
    v25 = (*(v24 + 48))(v23, v24);
    v20 |= v25;
    v21 |= v25;
    v19 |= (*(v24 + 64))(v23, v24);
    v22 += 16;
    --v18;
  }

  while (v18);

  a3 = v39;
  if (*(v4 + 208) != 1)
  {
LABEL_17:
    *(v4 + 212) = v20 & 1;
    *(v4 + 213) = sub_1AF658B30(&type metadata for PropagateDirtiness);
    goto LABEL_18;
  }

  *(v4 + 212) = 0;
  if (v21)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v40 = 0;
    *(&v40 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000057, 0x80000001AFF2DFF0);
    v46[0] = a1;
    type metadata accessor for EntityFamily();
    sub_1AFDFE458();
    v26 = v40;
    v27 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v38 = v27;
      swift_once();
      v27 = v38;
    }

    *&v40 = 0;
    sub_1AF0D4F18(v27, &v40, v26, *(&v26 + 1));
  }

LABEL_18:
  *(v4 + 200) = v19 & 1;
  *(v4 + 209) = sub_1AF658B30(&type metadata for Tombstone);
  *(v4 + 210) = sub_1AF658B30(&type metadata for UnstableOrdering);
  *(v4 + 211) = sub_1AF658B30(&type metadata for MonoChunk);

  sub_1AF6273C4(v28, &v40);
  v29 = v43;
  *(v4 + 128) = v42;
  *(v4 + 144) = v29;
  v30 = v45;
  *(v4 + 160) = v44;
  *(v4 + 176) = v30;
  v31 = v41;
  *(v4 + 96) = v40;
  *(v4 + 112) = v31;
  v32 = *(a3 + 16);
  if (v32)
  {
    v33 = 0;
    v34 = a3 + 32;
    do
    {
      sub_1AF441194(v34, v46);
      v35 = v47;
      v36 = v48;
      sub_1AF441150(v46, v47);
      v33 ^= (*(v36 + 16))(v35, v36);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      v34 += 40;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = 0;
  }

  *(v4 + 192) = v33;
  sub_1AF6581D0();
  if (qword_1ED72B7B8 != -1)
  {
    swift_once();
  }

  vfx_counters.add(_:_:)(dword_1ED73B700, 1);
  return v4;
}

BOOL sub_1AF658B30(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 128);
  if (*(v3 + 16) && (v5 = sub_1AF449CB8(a1), (v6 & 1) != 0))
  {
    return *(*(v2 + 24) + 16 * *(*(v3 + 56) + 8 * v5) + 32) == a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF658B94()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for NullEntityComponent;
  *(v0 + 40) = &off_1F2532748;
  type metadata accessor for EntityFamily();
  v1 = swift_allocObject();
  result = sub_1AF658C18(-1, v0, MEMORY[0x1E69E7CC0]);
  qword_1ED73B5B0 = v1;
  return result;
}

uint64_t sub_1AF658C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = sub_1AF42EABC(MEMORY[0x1E69E7CC0]);
  *(v4 + 128) = sub_1AF42EB7C(v8);
  *(v4 + 136) = a1;
  v9 = v4 + 128;
  v10 = *(a2 + 16);
  v11 = *(a3 + 16) + v10;
  if (v11 < 1)
  {

    v12 = MEMORY[0x1E69E7CC0];
    v13 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_1AF624D60(0, &qword_1ED7270C0, &qword_1ED7270D0);

    v12 = sub_1AFDFD488();
    *(v12 + 16) = v11;
    v13 = *(a2 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = (v12 + 40);
  v15 = a2 + 40;
  do
  {
    v16 = *(*v15 + 8);
    *(v14 - 1) = *(v15 - 8);
    *v14 = v16;
    v14 += 2;
    v15 += 16;
    --v13;
  }

  while (v13);
LABEL_7:
  v17 = *(a3 + 16);
  if (v17)
  {
    v18 = (v12 + 16 * v10 + 40);
    v19 = a3 + 40;
    do
    {
      v20 = *(*v19 + 8);
      *(v18 - 1) = *(v19 - 8);
      *v18 = v20;
      v18 += 2;
      v19 += 16;
      --v17;
    }

    while (v17);
  }

  *(v12 + 16) = v11;

  *(v4 + 24) = v12;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v68 = a2;
  if (v10)
  {
    *&v69[0] = v8;

    sub_1AFC06FFC(0, v10, 0);
    v21 = v8;
    v22 = a2 + 40;
    do
    {
      v23 = *(v22 - 8);
      v24 = *(*v22 + 8);
      v25 = (*(v24 + 24))(v23, v24);
      *&v69[0] = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        v66 = v25;
        v30 = v4;
        v31 = v26;
        sub_1AFC06FFC(v27 > 1, v28 + 1, 1);
        v26 = v31;
        v4 = v30;
        v25 = v66;
        v21 = *&v69[0];
      }

      *(v21 + 16) = v28 + 1;
      v29 = (v21 + 32 * v28);
      v29[4] = v23;
      v29[5] = v24;
      v29[6] = v25;
      v29[7] = v26;
      v22 += 16;
      --v10;
    }

    while (v10);
    v12 = *(v4 + 24);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 48) = v21;
  v32 = *(v12 + 16);
  if (v32)
  {

    v33 = 0;
    v34 = 32;
    do
    {
      v33 ^= sub_1AFDFD7D8();
      v34 += 16;
      --v32;
    }

    while (v32);
  }

  else
  {
    v33 = 0;
  }

  *(v4 + 144) = v33;
  sub_1AF6594C8();
  sub_1AFDFCC58();
  v35 = *(v4 + 24);
  if (*(v35 + 16))
  {
    v67 = v4;

    v36 = 0;
    v37 = (v35 + 40);
    while (1)
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69[0] = *v9;
      v41 = *&v69[0];
      *v9 = 0x8000000000000000;
      v42 = sub_1AF449CB8(v38);
      v44 = v43;
      v45 = *(v41 + 16) + ((v43 & 1) == 0);
      if (*(v41 + 24) < v45)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_31;
      }

      v48 = v42;
      sub_1AF8452A4();
      v42 = v48;
      v47 = *&v69[0];
      if (v44)
      {
LABEL_32:
        *(v47[7] + 8 * v42) = v36;
        goto LABEL_35;
      }

LABEL_34:
      v47[(v42 >> 6) + 8] |= 1 << v42;
      *(v47[6] + 8 * v42) = v38;
      *(v47[7] + 8 * v42) = v36;
      ++v47[2];
LABEL_35:
      *v9 = v47;

      if (!sub_1AF640D84(v38, v39))
      {
        goto LABEL_26;
      }

      v49 = (*(v39 + 24))(v38, v39);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *&v69[0] = *v9;
      v51 = *&v69[0];
      *v9 = 0x8000000000000000;
      v52 = sub_1AF449CB8(v49);
      v54 = v53;
      v55 = *(v51 + 16) + ((v53 & 1) == 0);
      if (*(v51 + 24) < v55)
      {
        sub_1AF82D8C0(v55, v50);
        v52 = sub_1AF449CB8(v49);
        if ((v54 & 1) != (v56 & 1))
        {
LABEL_52:
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_40:
        v57 = *&v69[0];
        if (v54)
        {
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      if (v50)
      {
        goto LABEL_40;
      }

      v58 = v52;
      sub_1AF8452A4();
      v52 = v58;
      v57 = *&v69[0];
      if (v54)
      {
LABEL_41:
        *(v57[7] + 8 * v52) = v36;
        goto LABEL_25;
      }

LABEL_24:
      v57[(v52 >> 6) + 8] |= 1 << v52;
      *(v57[6] + 8 * v52) = v49;
      *(v57[7] + 8 * v52) = v36;
      ++v57[2];
LABEL_25:
      *v9 = v57;

LABEL_26:
      ++v36;
      v37 += 2;
      if (v36 == *(v35 + 16))
      {

        v4 = v67;
        goto LABEL_45;
      }
    }

    sub_1AF82D8C0(v45, isUniquelyReferenced_nonNull_native);
    v42 = sub_1AF449CB8(v38);
    if ((v44 & 1) != (v46 & 1))
    {
      goto LABEL_52;
    }

LABEL_31:
    v47 = *&v69[0];
    if (v44)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

LABEL_45:
  if (*(*v9 + 16))
  {
    sub_1AF449CB8(&type metadata for AnonymousEntity);
    if (v59)
    {
      v60 = 0x10000;
    }

    else
    {
      v60 = 0x4000;
    }

    v61 = v59 ^ 1;
  }

  else
  {
    v61 = 1;
    v60 = 0x4000;
  }

  v62 = sub_1AF3C3FEC(v68);

  sub_1AF64F3CC(v62, v60, 0, v61 & 1, v69);
  v63 = v69[0];
  *(v4 + 72) = v69[1];
  v64 = v69[3];
  *(v4 + 88) = v69[2];
  *(v4 + 104) = v64;
  *(v4 + 120) = v70;
  *(v4 + 56) = v63;
  return v4;
}

uint64_t sub_1AF6591BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result && a2)
  {
    v4 = (result + 8);
    while (1)
    {
      v5 = v4 - 1;
      v6 = *(v4 - 1);
      if (v6 == a3 || v4[1] == a3)
      {
        break;
      }

      v4 += 4;
      if (v5 + 4 == (result + 32 * a2))
      {
        goto LABEL_9;
      }
    }

    v8 = *v4;
    *a4 = v6;
    a4[1] = v8;
  }

  else
  {
LABEL_9:
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t sub_1AF659208()
{

  return v0;
}

uint64_t sub_1AF65927C()
{
  sub_1AF659208();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF6592D4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v17[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v2, 0);
    v3 = v17[0];
    v4 = v1 + 32;
    do
    {
      v5 = sub_1AFDFF4B8();
      v17[0] = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1AFC05CE4(v7 > 1, v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17[0];
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1AF629AE4();
  sub_1AF488088();
  v12 = sub_1AFDFCD98();
  v14 = v13;

  sub_1AFDFE218();

  strcpy(v17, "<EntityFamily[");
  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](8285, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v12, v14);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return v17[0];
}

void sub_1AF6594C8()
{
  if (!qword_1ED726CD0)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726CD0);
    }
  }
}

uint64_t sub_1AF659524(uint64_t *a1)
{
  sub_1AF0D5A54(a1, &v68);
  if (swift_dynamicCast())
  {
    v2 = v74;
LABEL_8:
    v11 = &v68;
LABEL_9:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
    return v2;
  }

  v3 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
    v4 = v74;
    sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AFE431C0;
    v6 = MEMORY[0x1E69E64A8];
    *(v5 + 56) = v3;
    *(v5 + 64) = v6;
    *(v5 + 32) = v4;
LABEL_7:
    v2 = sub_1AFDFCF38();
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E69E63B0];
  if (swift_dynamicCast())
  {
    v8 = v74;
    sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AFE431C0;
    v10 = MEMORY[0x1E69E6438];
    *(v9 + 56) = v7;
    *(v9 + 64) = v10;
    *(v9 + 32) = v8;
    goto LABEL_7;
  }

  sub_1AF659F8C(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  if (swift_dynamicCast())
  {
    v61 = v74;
    sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE4C620;
    v14 = MEMORY[0x1E69E64A8];
    *(v13 + 56) = v3;
    *(v13 + 64) = v14;
    *(v13 + 32) = v61;
    *(v13 + 96) = v3;
    *(v13 + 104) = v14;
    *(v13 + 72) = HIDWORD(v61);
    goto LABEL_7;
  }

  sub_1AF659F8C(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  if (swift_dynamicCast())
  {
    v62 = v74;
    sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE4C680;
    v16 = MEMORY[0x1E69E64A8];
    *(v15 + 56) = v3;
    *(v15 + 64) = v16;
    *(v15 + 32) = v62;
    *(v15 + 72) = DWORD1(v62);
    *(v15 + 96) = v3;
    *(v15 + 104) = v16;
    *(v15 + 136) = v3;
    *(v15 + 144) = v16;
    *(v15 + 112) = DWORD2(v62);
    goto LABEL_7;
  }

  sub_1AF659F8C(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v18 = v17;
  if (swift_dynamicCast())
  {
    v63 = v74;
    sub_1AF5FD6BC(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE4C6B0;
    v20 = MEMORY[0x1E69E64A8];
    *(v19 + 56) = v3;
    *(v19 + 64) = v20;
    *(v19 + 32) = v63;
    *(v19 + 96) = v3;
    *(v19 + 104) = v20;
    *(v19 + 72) = DWORD1(v63);
    *(v19 + 112) = DWORD2(v63);
    *(v19 + 136) = v3;
    *(v19 + 144) = v20;
    *(v19 + 176) = v3;
    *(v19 + 184) = v20;
    *(v19 + 152) = HIDWORD(v63);
    goto LABEL_7;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v58 = v74;
    v59 = v75[0];
    v60 = v75[1];
    v64 = v75[2];
    v65 = 40;
    v66 = 0xE100000000000000;
    v73 = v18;
    v71 = swift_allocObject();
    *(v71 + 16) = v58;
    v21 = sub_1AF659524(&v71);
    v23 = v22;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
    MEMORY[0x1B2718AE0](v21, v23);

    MEMORY[0x1B2718AE0](2108457, 0xE300000000000000);
    v25 = v65;
    v24 = v66;
    v65 = 40;
    v66 = 0xE100000000000000;
    v73 = v18;
    v71 = swift_allocObject();
    *(v71 + 16) = v59;
    v26 = sub_1AF659524(&v71);
    v28 = v27;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
    MEMORY[0x1B2718AE0](v26, v28);

    MEMORY[0x1B2718AE0](2108457, 0xE300000000000000);
    v71 = v25;
    v72 = v24;

    MEMORY[0x1B2718AE0](v65, v66);

    v30 = v71;
    v29 = v72;
    v65 = 40;
    v66 = 0xE100000000000000;
    v73 = v18;
    v71 = swift_allocObject();
    *(v71 + 16) = v60;
    v31 = sub_1AF659524(&v71);
    v33 = v32;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
    MEMORY[0x1B2718AE0](v31, v33);

    MEMORY[0x1B2718AE0](2108457, 0xE300000000000000);
    v71 = v30;
    v72 = v29;

    MEMORY[0x1B2718AE0](v65, v66);

    v35 = v71;
    v34 = v72;
    v65 = 40;
    v66 = 0xE100000000000000;
    v73 = v18;
    v71 = swift_allocObject();
    *(v71 + 16) = v64;
    v36 = sub_1AF659524(&v71);
    v38 = v37;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
    MEMORY[0x1B2718AE0](v36, v38);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v71 = v35;
    v72 = v34;

    MEMORY[0x1B2718AE0](v65, v66);

    v2 = v71;
    goto LABEL_8;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v68);
  sub_1AF0D5A54(a1, &v71);
  sub_1AF5C5358(0, &qword_1EB63D210);
  if (swift_dynamicCast())
  {
    sub_1AF0FBA54(&v68, &v74);
    sub_1AF441150(&v74, *(&v75[0] + 1));
    v2 = sub_1AFDFEA08();
    v11 = &v74;
    goto LABEL_9;
  }

  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_1AF659FF0(&v68);
  v39 = sub_1AF874898(a1);
  if (!v39)
  {
LABEL_38:
    *&v74 = 0;
    *(&v74 + 1) = 0xE000000000000000;
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFEDD8();
    return v74;
  }

  v40 = v39;
  v41 = *(v39 + 16);
  if (!v41)
  {
LABEL_37:

    goto LABEL_38;
  }

  if (v41 != 1)
  {
    v42 = *(v39 + 16);
LABEL_29:
    v43 = v40 + 32;
    while (1)
    {
      sub_1AF65A078(v43, &v74);
      sub_1AF0D5A54(v75, &v71);
      sub_1AF441150(&v71, v73);
      DynamicType = swift_getDynamicType();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v71);
      sub_1AF65A078(v40 + 32, &v68);
      sub_1AF65A0D4(&v74);
      sub_1AF0D5A54(&v69, &v65);
      sub_1AF65A0D4(&v68);
      sub_1AF441150(&v65, v67);
      v45 = swift_getDynamicType();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v65);
      if (DynamicType != v45)
      {
        goto LABEL_37;
      }

      v43 += 48;
      if (!--v42)
      {
        goto LABEL_32;
      }
    }
  }

  sub_1AF65A078(v39 + 32, &v74);
  if (v74 != __PAIR128__(0xE600000000000000, 0x65756C61765FLL) && (sub_1AFDFEE28() & 1) == 0)
  {

    v2 = sub_1AF659524(v75);
    sub_1AF65A0D4(&v74);
    return v2;
  }

  sub_1AF65A0D4(&v74);
  v42 = *(v40 + 16);
  if (v42)
  {
    goto LABEL_29;
  }

LABEL_32:
  *&v68 = 40;
  *(&v68 + 1) = 0xE100000000000000;
  v71 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v41, 0);
  v46 = v71;
  v47 = v40 + 32;
  do
  {
    sub_1AF65A078(v47, &v74);
    v48 = sub_1AF659524(v75);
    v50 = v49;
    sub_1AF65A0D4(&v74);
    v71 = v46;
    v52 = *(v46 + 16);
    v51 = *(v46 + 24);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      sub_1AFC05CE4(v51 > 1, v52 + 1, 1);
      v53 = v52 + 1;
      v46 = v71;
    }

    *(v46 + 16) = v53;
    v54 = v46 + 16 * v52;
    *(v54 + 32) = v48;
    *(v54 + 40) = v50;
    v47 += 48;
    --v41;
  }

  while (v41);

  *&v74 = v46;
  sub_1AF629AE4();
  sub_1AF488088();
  v55 = sub_1AFDFCD98();
  v57 = v56;

  MEMORY[0x1B2718AE0](v55, v57);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v2 = sub_1AFDFCF38();

  return v2;
}

void sub_1AF659F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF659FF0(uint64_t a1)
{
  sub_1AF5FD6BC(0, &qword_1EB63D218, &qword_1EB63D210, MEMORY[0x1E69E6F68], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1AF65A128(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = *(*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4 + 8);
      return v5 == 0xFFFFFFFF || v6 == v5;
    }
  }

  return result;
}

uint64_t sub_1AF65A18C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 16 * v6);
    swift_unknownObjectRetain();
    v8 = a1(&v10);
    swift_unknownObjectRelease();
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1AF65A24C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = a3 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1AF441194(v6, v14);
      v8 = a1(v14);
      if (v3)
      {
        break;
      }

      if (v8)
      {
        sub_1AF0FBA54(v14, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AFC07050(0, *(v7 + 16) + 1, 1);
          v7 = v15;
        }

        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AFC07050(v10 > 1, v11 + 1, 1);
          v7 = v15;
        }

        *(v7 + 16) = v11 + 1;
        sub_1AF0FBA54(v13, v7 + 40 * v11 + 32);
      }

      else
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
      }

      v6 += 40;
      if (!--v4)
      {
        goto LABEL_14;
      }
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:

  return v7;
}

uint64_t sub_1AF65A3A8(uint64_t result)
{
  if (result)
  {
    v2 = *(*v1 + 16);
    if (v2 >= result)
    {
      v3 = result;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }

    if (result <= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    return sub_1AF64BE20(0, v5);
  }

  return result;
}

uint64_t sub_1AF65A3D8(char a1, void (*a2)(void, void), uint64_t (*a3)(void, void))
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      a2(0, *(v7 + 16));
    }

    else
    {
      v10 = a3(0, *(v7 + 24) >> 1);

      *v3 = v10;
    }

    v11 = v3 + 1;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v11;
    if (v12)
    {
      return sub_1AF62487C(0, *(v13 + 16));
    }

    else
    {
      v14 = sub_1AFC855D4(0, *(v13 + 24) >> 1);

      *v11 = v14;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    *v3 = MEMORY[0x1E69E7CC0];

    v3[1] = v8;
  }

  return result;
}

unint64_t sub_1AF65A4B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v79 = a3;
  v81 = v7 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  v82 = a7;
  os_unfair_lock_lock(*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v12 = *(*(v7 + 88) + 8 * a1 + 32);
  v13 = *(v12 + 16);
  v14 = *(v13 + 32);
  v15 = *(v13 + 144);
  v16 = *(v12 + 192);

  if (a2)
  {
    v15 ^= sub_1AFDFD7D8();
  }

  if (a4)
  {
    v15 ^= sub_1AFDFD7D8();
  }

  v83 = v7;
  v80 = a6;
  sub_1AF67235C(a6, &v94, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  if (*(&v95 + 1))
  {
    sub_1AF0FBA54(&v94, &v100);
    sub_1AF441150(&v100, *(&v101 + 1));
    swift_getDynamicType();
    v15 ^= sub_1AFDFD7D8();
    v18 = *(&v101 + 1);
    v17 = v102;
    sub_1AF441150(&v100, *(&v101 + 1));
    v16 ^= (*(v17 + 16))(v18, v17);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v100);
  }

  else
  {
    sub_1AF672430(&v94, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  }

  sub_1AF67235C(v82, &v94, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  if (*(&v95 + 1))
  {
    sub_1AF0FBA54(&v94, &v100);
    sub_1AF441150(&v100, *(&v101 + 1));
    swift_getDynamicType();
    v15 ^= sub_1AFDFD7D8();
    v19 = *(&v101 + 1);
    v20 = v102;
    sub_1AF441150(&v100, *(&v101 + 1));
    v16 ^= (*(v20 + 16))(v19, v20);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v100);
  }

  else
  {
    sub_1AF672430(&v94, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  }

  v21 = v83;
  v22 = *(v83 + 80);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v22 + 32;
    while (*(*(v25 + 8 * v24) + 144) != v15)
    {
      if (v23 == ++v24)
      {
        goto LABEL_18;
      }
    }

    v26 = sub_1AF65D418(v16, v24);
    if ((v26 & 0x100000000) == 0)
    {
      v27 = v26;
LABEL_69:

      goto LABEL_70;
    }
  }

LABEL_18:
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC07070(0, *(v14 + 2) + 1, 1);
      v14 = v106;
    }

    v30 = *(v14 + 2);
    v29 = *(v14 + 3);
    if (v30 >= v29 >> 1)
    {
      sub_1AFC07070(v29 > 1, v30 + 1, 1);
      v14 = v106;
    }

    *(v14 + 2) = v30 + 1;
    v31 = &v14[16 * v30];
    v32 = v79;
    *(v31 + 4) = a2;
    *(v31 + 5) = v32;
  }

  if (a4)
  {
    v33 = *(v14 + 2);
    if (v33)
    {
      v34 = 0;
      v35 = 32;
      while (*&v14[v35] != a4)
      {
        ++v34;
        v35 += 16;
        if (v33 == v34)
        {
          v34 = *(v14 + 2);
          goto LABEL_35;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1AF62479C(v14);
      }

      v33 = *(v14 + 2);
      if (v33 - 1 == v34)
      {
        v33 = v34 + 1;
      }

      else
      {
        v72 = v34 + 3;
        v73 = v14 + 32;
        do
        {
          if (*&v14[16 * v72] != a4)
          {
            if (v72 - 2 != v34)
            {
              v75 = *&v73[16 * v34];
              *&v73[16 * v34] = *&v14[16 * v72];
              *&v14[16 * v72] = v75;
              v33 = *(v14 + 2);
            }

            ++v34;
          }

          v74 = v72++ - 1;
        }

        while (v74 != v33);
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_35:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v106 = v14;
    if (v36)
    {
      if (v34 <= *(v14 + 3) >> 1)
      {
LABEL_44:
        sub_1AF64BEEC(v34, v33, 0);
        v14 = v106;
        v21 = v83;
        goto LABEL_45;
      }

      if (v33 <= v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v33;
      }
    }

    else if (v33 <= v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    sub_1AFC07070(v36, v37, 1);
    goto LABEL_44;
  }

LABEL_45:
  v38 = *(v12 + 144);
  v39 = *(v12 + 112);
  v96 = *(v12 + 128);
  v97 = v38;
  v40 = *(v12 + 144);
  v41 = *(v12 + 176);
  v98 = *(v12 + 160);
  v99 = v41;
  v42 = *(v12 + 112);
  v94 = *(v12 + 96);
  v95 = v42;
  v89 = v96;
  v90 = v40;
  v43 = *(v12 + 176);
  v91 = v98;
  v92 = v43;
  v87 = v94;
  v88 = v39;
  sub_1AF63529C(&v94, &v100);
  v44 = sub_1AF627868();
  v102 = v89;
  v103 = v90;
  v104 = v91;
  v105 = v92;
  v100 = v87;
  v101 = v88;
  sub_1AF6352F8(&v100);
  v93 = v44;
  sub_1AF67235C(v80, &v84, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  if (v85)
  {
    v45 = sub_1AF0FBA54(&v84, &v87);
    MEMORY[0x1EEE9AC00](v45, v46);
    v77 = &v87;

    v47 = sub_1AF65A24C(sub_1AF66FFFC, &v76, v44);

    sub_1AF441194(&v87, &v84);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v47;
    if ((v48 & 1) == 0)
    {
      v47 = sub_1AF420E70(0, v47[2] + 1, 1, v47);
      v93 = v47;
    }

    v50 = v47[2];
    v49 = v47[3];
    if (v50 >= v49 >> 1)
    {
      v47 = sub_1AF420E70(v49 > 1, v50 + 1, 1, v47);
      v93 = v47;
    }

    v51 = v85;
    v52 = v86;
    v53 = sub_1AF448018(&v84, v85);
    MEMORY[0x1EEE9AC00](v53, v53);
    v55 = &v78 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55);
    sub_1AF66E44C(v50, v55, &v93, v51, v52);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v84);
    v93 = v47;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v87);
    v44 = v47;
    v21 = v83;
  }

  else
  {
    sub_1AF672430(&v84, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  }

  sub_1AF67235C(v82, &v84, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  if (v85)
  {
    v57 = sub_1AF0FBA54(&v84, &v87);
    MEMORY[0x1EEE9AC00](v57, v58);
    v77 = &v87;
    v59 = sub_1AF66DCEC(sub_1AF66FFA4);
    v44 = v93;
    v60 = v93[2];
    v61 = swift_isUniquelyReferenced_nonNull_native();
    if (!v61 || v59 > v44[3] >> 1)
    {
      if (v60 <= v59)
      {
        v62 = v59;
      }

      else
      {
        v62 = v60;
      }

      v44 = sub_1AF420E70(v61, v62, 1, v44);
      v93 = v44;
    }

    sub_1AF64BF58(v59, v60, 0);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v87);
  }

  else
  {
    sub_1AF672430(&v84, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720]);
  }

  v63 = sub_1AF66EDB4(v14, v44, MEMORY[0x1E69E7D48]);
  v65 = v64;

  v66 = *(v21 + 80);
  v67 = *(v66 + 16);
  if (!v67)
  {
    goto LABEL_68;
  }

  v68 = 0;
  v69 = v66 + 32;
  while (*(*(v69 + 8 * v68) + 144) != v63)
  {
    if (v67 == ++v68)
    {
      goto LABEL_68;
    }
  }

  v70 = sub_1AF65D418(v65, v68);
  if ((v70 & 0x100000000) != 0)
  {
LABEL_68:
    v27 = sub_1AF65D480(v63, v65, v14, v44);

    goto LABEL_69;
  }

  v27 = v70;

LABEL_70:

  os_unfair_lock_unlock(*(v81 + 24));
  return v27;
}

uint64_t sub_1AF65ADEC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 == 0xFFFFFFFF || v6[2] == v5)
      {
        return *v6;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF65AE88(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 == 0xFFFFFFFF || v6[2] == v5)
      {
        return *(*(*(v1 + 144) + 8 * *v6 + 32) + 120);
      }
    }
  }

  return result;
}

uint64_t sub_1AF65AF08(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v6 = sub_1AF66EC18(a1);

  v7 = sub_1AF66EDB4(v6, a2, MEMORY[0x1E69E7CF8]);
  v9 = v8;

  v10 = *(v2 + 80);
  v11 = *(v10 + 16);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = 0;
  v13 = v10 + 32;
  while (*(*(v13 + 8 * v12) + 144) != v7)
  {
    if (v11 == ++v12)
    {
      goto LABEL_8;
    }
  }

  v14 = sub_1AF65D418(v9, v12);
  if ((v14 & 0x100000000) != 0)
  {
LABEL_8:
    v15 = sub_1AF65D480(v7, v9, v6, a2);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(v2 + 88) + 8 * v15 + 32);
  v17 = *(v5 + 24);

  os_unfair_lock_unlock(v17);
  return v16;
}

unint64_t sub_1AF65B02C(unint64_t result, uint64_t a2)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0)
  {
    v3 = v2;
    v37 = (v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v36 = result;
    if (result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) && (HIDWORD(result) == 0xFFFFFFFF || *(*v37 + 12 * result + 8) == HIDWORD(result)))
    {
      if (*(*(a2 + 24) + 16))
      {
        v5 = result;
        result = sub_1AF449D3C(result);
        if (v6)
        {
          return result;
        }
      }

      else
      {
        v5 = result;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = *(a2 + 24);
      *(a2 + 24) = 0x8000000000000000;
      sub_1AF85462C(0xFFFFFFFFLL, v5, isUniquelyReferenced_nonNull_native);
      *(a2 + 24) = v40[0];

      v8 = *(a2 + 16);
      type metadata accessor for CollectReferencesContext();
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E7CC0];
      *(v9 + 24) = 1;
      *(v9 + 32) = v10;
      *(v9 + 16) = v8;
      v35 = sub_1AF682350(v5);
      v11 = *(v35 + 16);
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = *(v35 + 32 + 16 * v12++);
          v14 = (*v37 + 12 * v36);
          v15 = *v14;
          v16 = *(v14 + 2);
          v17 = *(*(v3 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48) + 16;
          v19 = v13;
          do
          {
            v20 = *(v18 + 16);
            v18 += 40;
          }

          while (v20 != v13);
          v23 = v18 - 8;
          v21 = *(v18 - 8);
          v22 = *(v23 + 8);
          if (v21 <= 1)
          {
            v21 = 1;
          }

          v24 = *(v17 + 128) + v22 + v21 * v16;
          *&v39[3] = v13;
          v38 = *(&v13 + 1);
          v25 = sub_1AF585714(v39);
          v26 = *(v38 + 8);
          sub_1AF641154(v24, v19, v25);
          sub_1AF0FBA54(v39, v40);
          v27 = v41;
          v28 = v42;
          sub_1AF448018(v40, v41);
          v29 = *(v26 + 96);
          v30 = *(v28 + 8);

          v29(v31, &off_1F2531FD0, v27, v30);

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
        }

        while (v12 != v11);
      }

      v32 = *(v9 + 32);
      v33 = *(v32 + 16);
      if (v33)
      {

        v34 = 32;
        do
        {
          sub_1AF65B02C(*(v32 + v34), a2);
          v34 += 8;
          --v33;
        }

        while (v33);
      }

      else
      {
      }
    }
  }

  return result;
}

unint64_t sub_1AF65B2E4()
{
  v1 = v0 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  ++*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
  v2 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
  v3 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);
  if (v3 == -1)
  {
    v4 = (v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v5 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
    v7 = 2 * *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
    *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity) = v7;
    v8 = swift_slowAlloc();
    *v4 = v8;
    v4[1] = v7;
    if (v8 != v6 || v8 >= &v6[12 * v5])
    {
      memmove(v8, v6, 12 * v5);
    }

    if (v6)
    {
      MEMORY[0x1B271DEA0](v6, -1, -1);
    }

    sub_1AF65BAAC(v5);
    v3 = *(v0 + v2);
  }

  v10 = (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v3);
  *(v0 + v2) = *v10;
  v11 = v10[2];
  os_unfair_lock_unlock(*(v1 + 24));
  return v3 | (v11 << 32);
}

unint64_t sub_1AF65B3FC(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries), HIDWORD(a1) != 0xFFFFFFFF) && *(v6 + 12 * a1 + 8) != HIDWORD(a1))
  {
    sub_1AFDFE218();

    v3 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v3);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v4 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v4);

    return 0xD000000000000010;
  }

  else
  {
    v7 = *(*(v1 + 88) + 8 * *(v6 + 12 * a1 + 6) + 32);

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E710);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x203A797469746E45, 0xE800000000000000);
    v8 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](0x3D65706F637320, 0xE700000000000000);
    sub_1AF65CCB0(a1);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x3D797472696420, 0xE700000000000000);
    v9 = sub_1AF679254(a1);
    v10 = (v9 & 1) == 0;
    if (v9)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    MEMORY[0x1B2718AE0](v11, v12);

    MEMORY[0x1B2718AE0](0x3D65766974636120, 0xE800000000000000);
    v13 = sub_1AF65AE88(a1);
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 1702195828;
    }

    else
    {
      v15 = 0x65736C6166;
    }

    if (v14)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    MEMORY[0x1B2718AE0](v15, v16);

    MEMORY[0x1B2718AE0](0x6F7473626D6F7420, 0xEC0000003D64656ELL);
    v17 = sub_1AF67CACC(&type metadata for Tombstone, &off_1F2532360, a1);
    v18 = !v17;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    MEMORY[0x1B2718AE0](v19, v20);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x203A7373616C43, 0xE700000000000000);
    type metadata accessor for EntityClass();
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x6E6F706D6F43204CLL, 0xED00003A73746E65);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v21 = *(*(v7 + 16) + 32);
    v22 = *(v21 + 16);
    if (v22)
    {

      v23 = (v21 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = sub_1AF6824B0(v24, *v23, a1);
        v26 = sub_1AF641FC8(v25, 0, v24);
        MEMORY[0x1B2718AE0](v26);

        MEMORY[0x1B2718AE0](2121760, 0xE300000000000000);

        MEMORY[0x1B2718AE0](0, 0xE000000000000000);

        MEMORY[0x1B2718AE0](10, 0xE100000000000000);
        v23 += 2;
        --v22;
      }

      while (v22);
    }

    return 0;
  }
}

uint64_t sub_1AF65B990()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1AF65BAAC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCapacity);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  if (v2 - 1 != result)
  {
    v4 = OBJC_IVAR____TtC3VFX13EntityManager_generationSalt;
    v5 = result + 1;
    do
    {
      v6 = *(v1 + v4);
      v7 = (v3 + 12 * (v5 - 1));
      *v7 = v5;
      v7[1] = -1;
      v7[2] = v6;
      ++v5;
    }

    while (v2 != v5);
  }

  v8 = v3 + 12 * v2;
  v9 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
  *(v8 - 12) = -1;
  *(v8 - 4) = v9;
  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex) = result;
  return result;
}

uint64_t sub_1AF65BB30(char a1)
{
  sub_1AF65BC48(a1);
  v3 = (v1 + 80);
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF626F38(0, *(v5 + 16));
      goto LABEL_7;
    }

    *v3 = sub_1AFC892CC(0, *(v5 + 24) >> 1);
  }

  else
  {
    *v3 = MEMORY[0x1E69E7CC0];
  }

LABEL_7:
  v6 = *(v1 + 88);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      if (*(v6 + v8))
      {
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }

  return sub_1AF65A3D8(a1 & 1, sub_1AF626F0C, sub_1AFC8569C);
}

uint64_t sub_1AF65BC48(char a1)
{
  v2 = v1;
  v4 = *(v1 + 144);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      v7 = *(v4 + v6);
      if (v7)
      {
        sub_1AF38C670(*(v4 + v6));
        sub_1AF38C680(v7);
      }

      v6 += 8;
      --v5;
    }

    while (v5);
  }

  sub_1AF65A3D8(a1 & 1, sub_1AF624850, sub_1AFC8567C);
  v8 = (v1 + 104);
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1AF64BDF4(0, *(v10 + 16));
      goto LABEL_13;
    }

    *v8 = sub_1AFC85598(0, *(v10 + 24) >> 1);
  }

  else
  {
    *v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_13:
  v13 = *(v2 + 160);
  v11 = (v2 + 160);
  v12 = v13;
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 32;
    do
    {
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *v11 = v12;
      if ((v16 & 1) == 0)
      {
        v12 = sub_1AFC0D954(v12);
        *v11 = v12;
      }

      vfx_deallocate_memory_entry(&v12[v15]);
      v12 = *v11;
      v15 += 24;
      --v14;
    }

    while (v14);
  }

  if (a1)
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v11;
    if (v17)
    {
      return sub_1AF64BE20(0, *(v18 + 2));
    }

    *v11 = sub_1AFC854E4(0, *(v18 + 3) >> 1);
  }

  else
  {
    *v11 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1AF65BE2C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v2)
  {
    *(v2 + 120) = 1;
    v3 = *(v2 + 16);
    v4 = *(v3 + 16);

    [v4 lock];
    *(v3 + 24) = 1;
    [*(v3 + 16) signal];
    [*(v3 + 16) unlock];
  }

  if (qword_1ED72C938 != -1)
  {
    swift_once();
  }

  [qword_1ED73B7F8 lock];
  if (qword_1ED72C930 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B7F0;
  v6 = *(qword_1ED73B7F0 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = 5;
    while (1)
    {
      sub_1AF67235C(&v5[v8 - 1], &v28, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
      Strong = swift_weakLoadStrong();
      sub_1AF672430(&v28, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
      if (!Strong)
      {
        break;
      }

      ++v7;
      ++v8;
      if (v6 == v7)
      {
        v10 = v5[2];
        v7 = v10;
        goto LABEL_22;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AFC0D968(v5);
    }

    v10 = v7 + 1;
    if (v5[2] - 1 != v7)
    {
      v11 = v5 + 4;
      v12 = &v5[v8];
      do
      {
        sub_1AF67235C(v12, &v28, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
        v13 = swift_weakLoadStrong();
        sub_1AF672430(&v28, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
        if (v13)
        {

          if (v10 != v7)
          {
            sub_1AF67235C(&v11[v7], &v28, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
            sub_1AF67248C(v12, &v11[v7]);
            sub_1AF672520(&v28, v12);
          }

          ++v7;
        }

        ++v10;
        v12 += 8;
      }

      while (v10 != v5[2]);
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v5;
  if (!isUniquelyReferenced_nonNull_native || v7 > v5[3] >> 1)
  {
    if (v10 <= v7)
    {
      v15 = v7;
    }

    else
    {
      v15 = v10;
    }

    v5 = sub_1AF4202A0(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    v28 = v5;
  }

  sub_1AF64BC94(v7, v10, 0);
  qword_1ED73B7F0 = v5;

  [qword_1ED73B7F8 unlock];
  sub_1AF65BC48(0);
  v16 = MEMORY[0x1E69E7CC0];
  *(v1 + 80) = MEMORY[0x1E69E7CC0];

  v17 = *(v1 + 88);
  v18 = *(v17 + 16);
  if (v18)
  {

    v19 = 32;
    do
    {
      if (*(v17 + v19))
      {
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  *(v1 + 88) = v16;

  *(v1 + 96) = v16;

  v20 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  if (v20)
  {
    MEMORY[0x1B271DEA0](v20, -1, -1);
  }

  v21 = (v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v22 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v22)
  {
    v23 = v21[1];
    if (v23)
    {
      v24 = 8 * v23;
      do
      {
        v22 += 8;

        v24 -= 8;
      }

      while (v24);
    }
  }

  if (*v21)
  {
    MEMORY[0x1B271DEA0](*v21, -1, -1);
  }

  MEMORY[0x1B271DEA0](*(v1 + 136), -1, -1);
  MEMORY[0x1B271DEA0](*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24), -1, -1);
  MEMORY[0x1B271DEA0](*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock + 24), -1, -1);
  MEMORY[0x1B271DEA0](*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24), -1, -1);

  sub_1AF0FBDE0(v1 + 64);

  v25 = OBJC_IVAR____TtC3VFX13EntityManager_signpostID;
  v26 = sub_1AFDFC4F8();
  (*(*(v26 - 8) + 8))(v1 + v25, v26);

  sub_1AF0FB8EC(*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn));

  sub_1AF67856C(v1 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig, type metadata accessor for ScriptingConfiguration);
  MEMORY[0x1B271E060](v1 + OBJC_IVAR____TtC3VFX13EntityManager_world);

  return v1;
}

uint64_t sub_1AF65C4F8()
{
  sub_1AF65BE2C();

  return swift_deallocClassInstance();
}

void sub_1AF65C550()
{
  if (*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 36), 1);
  }

  v1 = v0 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 88);
  *(v1 + 68) = v2;
  *(v1 + 83) = 0;
  ++*v1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = CACurrentMediaTime();
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
}

uint64_t sub_1AF65C5D4(char a1)
{
  v2 = v1;
  sub_1AF65C550();
  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) = 0;
  if (a1)
  {
    sub_1AF65BB30(1);
    ++*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
    sub_1AF65BAAC(0);
    *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex) = 0;
    if (*(*(v1 + 216) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v1 + 216);
      *(v1 + 216) = 0x8000000000000000;
      sub_1AF678244();
      sub_1AFDFE4B8();
      *(v1 + 216) = v17;
    }
  }

  if ((a1 & 8) != 0)
  {
    if (*(v1 + 72))
    {

      v4 = sub_1AF6DBB94();
      type metadata accessor for SceneComponentStorage();
      swift_allocObject();
      v5 = sub_1AF6D26FC(v4);
    }

    else
    {
      type metadata accessor for SceneComponentStorage();
      swift_allocObject();
      v5 = sub_1AF6D25F0();
    }

    *(v2 + 184) = v5;
  }

  if ((a1 & 2) != 0)
  {
    type metadata accessor for WorkerComponentStorage();
    v6 = swift_allocObject();
    sub_1AF64F3CC(MEMORY[0x1E69E7CC0], 0, 256, 0, (v6 + 2));
    v6[11] = 0;
    v7 = swift_slowAlloc();
    v6[12] = v7;
    v6[13] = v7 + 4096;
    v6[14] = 4096;
    *(v2 + 176) = v6;
  }

  type metadata accessor for Scheduler();
  swift_allocObject();
  v8 = sub_1AF6D6B60();
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_scheduler;
  *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) = v8;

  *(*(v2 + v9) + 24) = v2;
  v10 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 48) = sub_1AF43B8F8(MEMORY[0x1E69E7CC0]);

  *(v10 + 56) = sub_1AF43B9E8(v11);

  v13 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v13)
  {
    v14 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v14)
    {
      v15 = 8 * v14;
      do
      {
        v16 = *v13;
        result = *(*v13 + 88);
        if (*(result + 16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v18 = *(v16 + 88);
          *(v16 + 88) = 0x8000000000000000;
          sub_1AF678194();
          sub_1AFDFE098();
          *(v16 + 88) = v18;
        }

        ++v13;
        v15 -= 8;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t sub_1AF65C88C(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    result = sub_1AF422C28(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_1AF65C8F0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1AFDFE108();
LABEL_9:
    result = sub_1AFDFE268();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1AF65C98C(unint64_t a1)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v2 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v2[2] == HIDWORD(a1))
    {
      return *v2;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF65CA4C(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 4294967294;
  }

  result = 4294967294;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4;
      if (v5 == 0xFFFFFFFF || *(v6 + 8) == v5)
      {
        return *(v6 + 6);
      }
    }
  }

  return result;
}

unint64_t sub_1AF65CABC(unint64_t result, char a2)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result;
    if (HIDWORD(result) == 0xFFFFFFFF || *(v3 + 8) == HIDWORD(result))
    {
      v4 = *(v3 + 4);
      v5 = result;

      sub_1AF62FD38(a2 & 1, v4, 0);

      return sub_1AF678B44(v5);
    }
  }

  return result;
}

unint64_t sub_1AF65CBC8(unint64_t result, char a2)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v4 = *(*(v2 + 144) + 8 * *v3 + 32);
      v5 = *(v4 + 344);
      v6 = result;

      os_unfair_lock_lock(v5);
      sub_1AF65CABC(v6, a2 & 1);
      os_unfair_lock_unlock(*(v4 + 344));
    }
  }

  return result;
}

unint64_t sub_1AF65CCB0(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
LABEL_2:
    v2 = 0;
    v3 = 1;
    return v2 | (v3 << 32);
  }

  v2 = 0;
  v3 = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = *(*(v1 + 144) + 8 * *v5 + 32);
      v2 = *(v6 + 28);
      v3 = *(v6 + 32);
      return v2 | (v3 << 32);
    }

    goto LABEL_2;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_1AF65CD48(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v6[2] == HIDWORD(result))
    {
      v7 = *(v6 + 2);
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      if (*(v8 + 232) <= v7 && *(v8 + 240) > v7)
      {
        v10 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v11 = *(v8 + 344);

        os_unfair_lock_lock(v11);
        ecs_stack_allocator_push_snapshot(*(v10 + 32));

        sub_1AF68295C(v10, v8, v7, a3, a4, a5 & 1);

        if (!v5)
        {
          ecs_stack_allocator_pop_snapshot(*(v10 + 32));
        }

        os_unfair_lock_unlock(*(v8 + 344));
      }
    }
  }

  return result;
}

unint64_t sub_1AF65CE88(unint64_t result, uint64_t a2)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v4 = *(v3 + 2);
      v5 = *(*(a2 + 144) + 8 * *v3 + 32);
      if (*(v5 + 232) <= v4 && *(v5 + 240) > v4)
      {
        v7 = **(a2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v8 = *(v5 + 344);

        os_unfair_lock_lock(v8);
        ecs_stack_allocator_push_snapshot(*(v7 + 32));

        sub_1AF65CFA0(v7, v5, v4);

        if (!v2)
        {
          ecs_stack_allocator_pop_snapshot(*(v7 + 32));
        }

        os_unfair_lock_unlock(*(v5 + 344));
      }
    }
  }

  return result;
}

char *sub_1AF65CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 232);
  if (*(a2 + 256) <= a3 && v5 > a3)
  {
    return sub_1AF62D29C(a2);
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v48 = 5;
  v9 = (a1 + 104);
  v8 = *(a1 + 104);
  v10 = *(v8 + 16);
  if (!v10)
  {
LABEL_36:
    v24 = *(a2 + 240) - v5;
    v25 = ecs_stack_allocator_allocate(*(a1 + 32), 8 * v24, 8);
    *v25 = a3;
    sub_1AF63515C(v46, v40);
    *v42 = v25;
    *&v42[8] = v24;
    *&v42[16] = 1;
    v26 = *(a1 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 104) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1AF420EA0(0, v26[2] + 1, 1, v26);
      *v9 = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1AF420EA0(v28 > 1, v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    v30 = &v26[9 * v29];
    *(v30 + 2) = v40[0];
    v31 = v40[1];
    v32 = v41;
    v33 = *v42;
    v30[12] = *&v42[16];
    *(v30 + 4) = v32;
    *(v30 + 5) = v33;
    *(v30 + 3) = v31;
    *v9 = v26;
    goto LABEL_41;
  }

  v11 = 0;
  v12 = v8 + 32;
  while (1)
  {
    sub_1AF678488(v12, v45, sub_1AF43A540);
    sub_1AF63515C(v45, v40);
    sub_1AF63515C(v46, v42);
    if (BYTE8(v41) <= 2u)
    {
      if (!BYTE8(v41))
      {
        sub_1AF63515C(v40, v39);
        if (v44)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if (BYTE8(v41) == 1)
      {
        sub_1AF63515C(v40, v39);
        if (v44 != 1)
        {
          goto LABEL_9;
        }

LABEL_22:
        v15 = *&v39[0];
        v16 = *v42;
        sub_1AF635250(v40);
        sub_1AF67856C(v45, sub_1AF43A540);
        if (v15 == v16)
        {
          goto LABEL_32;
        }

        goto LABEL_10;
      }

      sub_1AF63515C(v40, v39);
      if (v44 != 2)
      {
LABEL_8:
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
LABEL_9:
        sub_1AF67856C(v40, sub_1AF635194);
        sub_1AF67856C(v45, sub_1AF43A540);
        goto LABEL_10;
      }

      goto LABEL_27;
    }

    if (BYTE8(v41) == 3)
    {
      sub_1AF63515C(v40, v39);
      if (v44 != 3)
      {
        goto LABEL_8;
      }

LABEL_27:
      sub_1AF0FBA54(v39, v36);
      sub_1AF0FBA54(v42, v35);
      v17 = v37;
      v18 = v38;
      sub_1AF441150(v36, v37);
      LOBYTE(v17) = sub_1AF640C98(v35, v17, v18);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v35);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
      sub_1AF635250(v40);
      sub_1AF67856C(v45, sub_1AF43A540);
      if (v17)
      {
        goto LABEL_32;
      }

      goto LABEL_10;
    }

    if (BYTE8(v41) != 4)
    {
      break;
    }

    sub_1AF63515C(v40, v39);
    if (v44 != 4)
    {
      goto LABEL_9;
    }

    v13 = LOBYTE(v39[0]);
    v14 = v42[0];
    sub_1AF635250(v40);
    sub_1AF67856C(v45, sub_1AF43A540);
    if (v13 == v14)
    {
      goto LABEL_32;
    }

LABEL_10:
    ++v11;
    v12 += 72;
    if (v10 == v11)
    {
      v5 = *(a2 + 232);
      v9 = (a1 + 104);
      goto LABEL_36;
    }
  }

  if (v44 != 5)
  {
    goto LABEL_9;
  }

  v19 = vorrq_s8(*&v42[8], v43);
  if (*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *v42)
  {
    goto LABEL_9;
  }

  sub_1AF635250(v40);
  sub_1AF67856C(v45, sub_1AF43A540);
LABEL_32:
  v21 = sub_1AFBFCA08(v40);
  v22 = *(v20 + 48);
  if (v22)
  {
    v23 = *(v20 + 64);
    *(v22 + 8 * v23) = a3;
    *(v20 + 64) = v23 + 1;
  }

  (v21)(v40, 0);
LABEL_41:
  sub_1AF635250(v46);
  return sub_1AF62D29C(a2);
}

unint64_t sub_1AF65D418(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + 80) + 8 * a2 + 32) + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = sub_1AF449CB8(a1);
  if ((v6 & 1) == 0)
  {
    v4 = 0;
LABEL_5:
    v7 = 1;
    return v4 | (v7 << 32);
  }

  v7 = 0;
  v4 = *(*(v3 + 56) + 4 * v5);
  return v4 | (v7 << 32);
}

unint64_t sub_1AF65D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = (v4 + 80);
  v9 = *(v4 + 80);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 32);
    v13 = v11;
    while (1)
    {
      v14 = *v12;
      if (*(*v12 + 144) == a1)
      {
        break;
      }

      ++v12;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = *(a4 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1AFC0701C(0, v15, 0);
      v16 = v52;
      v49 = v6;
      v17 = v6 + 32;
      do
      {
        sub_1AF441194(v17, v51);
        sub_1AF441150(v51, v51[3]);
        DynamicType = swift_getDynamicType();
        v19 = v51[4];
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
        v52 = v16;
        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1AFC0701C(v20 > 1, v21 + 1, 1);
          v16 = v52;
        }

        *(v16 + 16) = v21 + 1;
        v22 = v16 + 16 * v21;
        *(v22 + 32) = DynamicType;
        *(v22 + 40) = v19;
        v17 += 40;
        --v15;
      }

      while (v15);
      v8 = a2;
      v6 = v49;
      v7 = a3;
    }

    type metadata accessor for EntityFamily();
    swift_allocObject();

    sub_1AF658C18(v11, v7, v16);

    sub_1AFDFE328();
    sub_1AFDFE398();
    sub_1AFDFE3A8();
    sub_1AFDFE348();

    v14 = *(*v10 + 8 * v11 + 32);
  }

  v23 = sub_1AF624654();
  if ((v23 & 0x100000000) != 0)
  {
    v30 = *(*(v5 + 88) + 16);
    v24 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *(v14 + 16);
    *(v14 + 16) = 0x8000000000000000;
    sub_1AF851CE4(v30, v8, isUniquelyReferenced_nonNull_native);
    *(v14 + 16) = v51[0];

    type metadata accessor for EntityClass();
    swift_allocObject();

    v50 = sub_1AF6586B4(v14, v30, v6);

    v32 = *(v5 + 104);
    if (v30 >= *(v32 + 2))
    {
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 104) = v32;
        if ((v43 & 1) == 0)
        {
          v32 = sub_1AF420180(0, *(v32 + 2) + 1, 1, v32);
          *(v5 + 104) = v32;
        }

        v45 = *(v32 + 2);
        v44 = *(v32 + 3);
        if (v45 >= v44 >> 1)
        {
          v32 = sub_1AF420180(v44 > 1, v45 + 1, 1, v32);
        }

        *(v32 + 2) = v45 + 1;
        v46 = &v32[40 * v45];
        *(v46 + 4) = v42;
        *(v46 + 5) = 0;
        *(v46 + 6) = v42;
        v46[56] = 0;
        *(v46 + 60) = 0xFFFFFFFF00000000;
        *(v46 + 17) = -1;
        *(v5 + 104) = v32;
      }

      while (v30 > v45);
    }

    v33 = *(v5 + 88);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 88) = v33;
    if ((v34 & 1) == 0)
    {
      sub_1AFC05F38(0, *(v33 + 16) + 1, 1);
      v33 = *(v5 + 88);
    }

    v25 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v25 >= v35 >> 1)
    {
      sub_1AFC05F38(v35 > 1, v25 + 1, 1);
    }

    v29 = *(v5 + 88);
    *(v29 + 16) = v25 + 1;
  }

  else
  {
    v24 = v23;
    v25 = v23;
    LOBYTE(v51[0]) = 0;
    sub_1AF824494(v23, v8);
    type metadata accessor for EntityClass();
    swift_allocObject();

    v50 = sub_1AF6586B4(v14, v24, v6);

    v26 = *(v5 + 104);
    if (v25 >= *(v26 + 2))
    {
      v37 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = swift_isUniquelyReferenced_nonNull_native();
        *(v5 + 104) = v26;
        if ((v38 & 1) == 0)
        {
          v26 = sub_1AF420180(0, *(v26 + 2) + 1, 1, v26);
          *(v5 + 104) = v26;
        }

        v40 = *(v26 + 2);
        v39 = *(v26 + 3);
        if (v40 >= v39 >> 1)
        {
          v26 = sub_1AF420180(v39 > 1, v40 + 1, 1, v26);
        }

        *(v26 + 2) = v40 + 1;
        v41 = &v26[40 * v40];
        *(v41 + 4) = v37;
        *(v41 + 5) = 0;
        *(v41 + 6) = v37;
        v41[56] = 0;
        *(v41 + 60) = 0xFFFFFFFF00000000;
        *(v41 + 17) = -1;
        *(v5 + 104) = v26;
      }

      while (v25 > v40);
    }

    v27 = *(v5 + 88);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 88) = v27;
    if ((v28 & 1) == 0)
    {
      *(v5 + 88) = sub_1AF624774(v27);
    }

    v29 = *(v5 + 88);
  }

  *(v29 + 8 * v25 + 32) = v50;
  *(v5 + 88) = v29;
  return v24;
}

uint64_t sub_1AF65D974(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = *(*v2 + 16);
    while (*v7 != result)
    {
      v7 += 2;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AF422C28(0, v6 + 1, 1, v5);
      v5 = result;
    }

    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1AF422C28(v9 > 1, v10 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v10 + 1;
    v11 = v5 + 16 * v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = a2;
    *v2 = v5;
  }

  return result;
}

BOOL sub_1AF65DA3C(void *a1, void *a2)
{
  sub_1AF441150(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  sub_1AF441150(a1, a1[3]);
  return DynamicType != swift_getDynamicType();
}

void sub_1AF65DAB0()
{
  sub_1AF65DCF4(0);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v2)
    {
      v3 = v1 + 8 * v2;
      v4 = MEMORY[0x1E69E7CC0];
      v5 = MEMORY[0x1E69E6888];
      do
      {
        v6 = *(*v1 + 40);
        v7 = *(v6 + 40);
        v8 = *(v7 + 16);
        if (v8)
        {

          v9 = 32;
          do
          {
            v10 = *(v7 + v9);
            if (v10)
            {
              MEMORY[0x1B271DEA0](v10, -1, -1);
            }

            v9 += 16;
            --v8;
          }

          while (v8);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = *(v6 + 40);
        if (isUniquelyReferenced_nonNull_native)
        {
          v13 = *(v12 + 2);
          v14 = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 40) = v12;
          if ((v14 & 1) == 0)
          {
            v12 = sub_1AF420660(0, v13, 1, v12);
            *(v6 + 40) = v12;
          }

          if (v13)
          {
            v15 = *(v12 + 2) - v13;
            memmove(v12 + 32, &v12[16 * v13 + 32], 16 * v15);
            *(v12 + 2) = v15;
          }

          *(v6 + 40) = v12;
        }

        else
        {
          v16 = v4;
          if (*(v12 + 3) >= 2uLL)
          {
            sub_1AF6782C4(0, &unk_1EB630940, v5, MEMORY[0x1E69E6F90]);
            v16 = swift_allocObject();
            v17 = j__malloc_size_0(v16);
            v18 = v17 - 32;
            if (v17 < 32)
            {
              v18 = v17 - 17;
            }

            v16[2] = 0;
            v16[3] = 2 * (v18 >> 4);
          }

          *(v6 + 40) = v16;
        }

        v1 += 8;
        *(v6 + 32) = 0;
      }

      while (v1 != v3);
    }
  }

  sub_1AF678C34();
  v19 = *(v0 + 136);
  os_unfair_lock_lock(v19);
  v20 = *(v0 + 88);
  v21 = *(v20 + 16);
  if (v21)
  {

    for (i = 0; i != v21; ++i)
    {
      if (*(v20 + 8 * i + 32))
      {
        sub_1AF6232D0(i);
      }
    }
  }

  os_unfair_lock_unlock(v19);
}

void sub_1AF65DCF4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
    v4 = *(v1 + 168);
    v5 = *(v4 + 2);
    v6 = (v1 + 160);
    v7 = *(v2[20] + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2[21] = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1AFC0DA1C(v4);
    }

    *&v4[8 * (v3 % v5) + 32] = v7;
    v2[21] = v4;
    v9 = *(v4 + 2);
    if (v9)
    {
      v10 = *(v4 + 4);
      v11 = v9 - 1;
      if (v9 != 1)
      {
        if (v9 <= 4)
        {
          v12 = 1;
          goto LABEL_11;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v13 = vdupq_n_s64(v10);
        v14 = (v4 + 56);
        v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
        v16 = v13;
        do
        {
          v13 = vbslq_s8(vcgtq_s64(v13, v14[-1]), v14[-1], v13);
          v16 = vbslq_s8(vcgtq_s64(v16, *v14), *v14, v16);
          v14 += 2;
          v15 -= 4;
        }

        while (v15);
        v17 = vbslq_s8(vcgtq_s64(v16, v13), v13, v16);
        v18 = vextq_s8(v17, v17, 8uLL).u64[0];
        v10 = vbsl_s8(vcgtd_s64(v18, v17.i64[0]), *v17.i8, v18);
        if (v11 != (v11 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_11:
          v19 = v9 - v12;
          v20 = &v4[8 * v12 + 32];
          do
          {
            v22 = *v20;
            v20 += 8;
            v21 = v22;
            if (v22 < v10)
            {
              v10 = v21;
            }

            --v19;
          }

          while (v19);
        }
      }

      v23 = v10 - 3;
      if (v10 > 3)
      {
        v24 = 32;
        v25 = v10 - 3;
        do
        {
          v26 = *v6;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          *v6 = v26;
          if ((v27 & 1) == 0)
          {
            v26 = sub_1AFC0D954(v26);
            *v6 = v26;
          }

          vfx_deallocate_memory_entry(&v26[v24]);
          v24 += 24;
          --v25;
        }

        while (v25);
        sub_1AF65A3A8(v23);
      }
    }
  }

  sub_1AF65DF0C();
  sub_1AF65DF74();
  v2[24] = 0;
  v28 = v2[17];
  os_unfair_lock_lock(v28);
  v29 = v2[11];
  v30 = *(v29 + 16);
  if (v30)
  {

    for (i = 0; i != v30; ++i)
    {
      if (*(v29 + 8 * i + 32))
      {
        sub_1AF623C24(i);
      }
    }
  }

  os_unfair_lock_unlock(v28);
}

double sub_1AF65DF0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v2)
    {
      v3 = 8 * v2;
      do
      {
        v4 = *v1++;
        sub_1AF6300CC((v4 + 96));
        result = 0.0;
        *(v4 + 152) = 0u;
        *(v4 + 136) = 0u;
        *(v4 + 120) = 0u;
        v3 -= 8;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_1AF65DF74()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocksLock);
  os_unfair_lock_lock(v2[3]);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks);
  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_nextFrameBlocks) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock(v2[3]);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v7 = v3 + 32;
    v8 = 8 * *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    v9 = v6 + v8;
    if (v6)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = v10;
    v49 = v11;
    v46 = v4;
    v47 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v44 = 8 * *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    v45 = v7;
    do
    {
      v48 = *(v7 + 16 * v5);

      if ((v49 & 1) == 0)
      {
        v13 = v8;
        v14 = v6;
        do
        {
          v15 = *v14++;
          v12 = ecs_stack_allocator_push_snapshot(*(v15 + 32));
          v13 -= 8;
        }

        while (v13);
      }

      v16 = v1[28];
      v1[28] = v16 + 1;
      if (!v16)
      {
        v17 = sub_1AF65DF0C();
        sub_1AF65DF74(v17);
        v1[24] = 0;
        v18 = v1[17];
        os_unfair_lock_lock(v18);
        v19 = v1[11];
        v20 = *(v19 + 16);
        if (v20)
        {

          for (i = 0; i != v20; ++i)
          {
            if (*(v19 + 8 * i + 32))
            {
              sub_1AF623C24(i);
            }
          }

          v6 = v47;
        }

        os_unfair_lock_unlock(v18);
        if ((v49 & 1) == 0)
        {
          v29 = v6;
          do
          {
            v30 = *(*v29 + 40);
            v31 = *(v30 + 40);
            v32 = *(v31 + 16);
            if (v32)
            {

              v33 = 32;
              do
              {
                v34 = *(v31 + v33);
                if (v34)
                {
                  MEMORY[0x1B271DEA0](v34, -1, -1);
                }

                v33 += 16;
                --v32;
              }

              while (v32);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v36 = *(v30 + 40);
            if (isUniquelyReferenced_nonNull_native)
            {
              v37 = *(v36 + 2);
              v38 = swift_isUniquelyReferenced_nonNull_native();
              *(v30 + 40) = v36;
              if ((v38 & 1) == 0)
              {
                v36 = sub_1AF420660(0, v37, 1, v36);
                *(v30 + 40) = v36;
              }

              if (v37)
              {
                v39 = *(v36 + 2) - v37;
                memmove(v36 + 32, &v36[16 * v37 + 32], 16 * v39);
                *(v36 + 2) = v39;
              }

              *(v30 + 40) = v36;
            }

            else
            {
              v40 = MEMORY[0x1E69E7CC0];
              if (*(v36 + 3) >= 2uLL)
              {
                sub_1AF6782C4(0, &unk_1EB630940, MEMORY[0x1E69E6888], MEMORY[0x1E69E6F90]);
                v40 = swift_allocObject();
                v41 = j__malloc_size_0(v40);
                v42 = v41 - 32;
                if (v41 < 32)
                {
                  v42 = v41 - 17;
                }

                v40[2] = 0;
                v40[3] = 2 * (v42 >> 4);
              }

              *(v30 + 40) = v40;
            }

            v29 += 8;
            *(v30 + 32) = 0;
          }

          while (v29 != v9);
        }

        sub_1AF678C34();
        v22 = v1[17];
        os_unfair_lock_lock(v22);
        v23 = v1[11];
        v24 = *(v23 + 16);
        if (v24)
        {

          for (j = 0; j != v24; ++j)
          {
            if (*(v23 + 8 * j + 32))
            {
              sub_1AF6232D0(j);
            }
          }

          v6 = v47;
        }

        os_unfair_lock_unlock(v22);
        v7 = v45;
        v4 = v46;
        v8 = v44;
      }

      v48(v12);

      if (v1[28] == 1)
      {
        sub_1AF65DCF4(1);
      }

      if ((v49 & 1) == 0)
      {
        v26 = v8;
        v27 = v6;
        do
        {
          v28 = *v27++;
          ecs_stack_allocator_pop_snapshot(*(v28 + 32));
          v26 -= 8;
        }

        while (v26);
      }

      ++v5;
      --v1[28];
    }

    while (v5 != v4);
  }
}

void sub_1AF65E37C()
{
  if (*(v0 + 224) == 1)
  {
    sub_1AF65DCF4(1);
  }

  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v2)
    {
      v3 = 8 * v2;
      do
      {
        v4 = *v1++;
        ecs_stack_allocator_pop_snapshot(*(v4 + 32));
        v3 -= 8;
      }

      while (v3);
    }
  }

  --*(v0 + 224);
}

void sub_1AF65E3F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v2)
    {
      v3 = 8 * v2;
      do
      {
        v4 = *v1++;
        ecs_stack_allocator_push_snapshot(*(v4 + 32));
        v3 -= 8;
      }

      while (v3);
    }
  }

  v5 = *(v0 + 224);
  *(v0 + 224) = v5 + 1;
  if (!v5)
  {

    sub_1AF65DAB0();
  }
}

uint64_t sub_1AF65E47C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_activeStatesPerEffects;
  if (*(*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_activeStatesPerEffects) + 16))
  {
    result = sub_1AF449CBC(a2);
    if (v8)
    {
      return result;
    }
  }

  sub_1AF6B06C0(v2, a1, 0x200000000, &v60);
  v53 = v60;
  if (!v60)
  {
    v12 = MEMORY[0x1E69E7CC8];
LABEL_40:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v3 + v6);
    *(v3 + v6) = 0x8000000000000000;
    sub_1AF8551C0(v12, v4, isUniquelyReferenced_nonNull_native);
    *(v3 + v6) = v59;
  }

  v52 = v63;
  v57 = v66;
  v68 = v61;
  v69 = v62;
  v48 = v6;
  v49 = v2;
  v47 = v4;
  if (v67 < 1 || !v64)
  {
    v12 = MEMORY[0x1E69E7CC8];
LABEL_38:
    sub_1AF67001C(&v60, &qword_1ED725EA0, &type metadata for QueryResult);
    v6 = v48;
    v3 = v49;
    v4 = v47;
    goto LABEL_40;
  }

  v9 = 0;
  v10 = 0;
  v11 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v12 = MEMORY[0x1E69E7CC8];
  v56 = *(v66 + 32);
  v50 = v11;
  v51 = v64;
  while (1)
  {
    v54 = v10;
    v55 = v9;
    v13 = (v52 + 48 * v9);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v13 + 2);
    v17 = *(v13 + 4);
    v18 = *(v13 + 5);
    if (v11)
    {
      v19 = *(v18 + 376);

      os_unfair_lock_lock(v19);
      os_unfair_lock_lock(*(v18 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v56);
    v20 = *(v57 + 64);
    v73[0] = *(v57 + 48);
    v73[1] = v20;
    v74 = *(v57 + 80);
    v21 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
    *(v57 + 48) = ecs_stack_allocator_allocate(*(v57 + 32), 48 * v21, 8);
    *(v57 + 56) = v21;
    *(v57 + 72) = 0;
    *(v57 + 80) = 0;
    *(v57 + 64) = 0;
    v58 = v18;
    if (!v16)
    {
      break;
    }

    if (v17)
    {
      while (1)
      {
        v24 = *v16++;
        v23 = v24;

        if (*(v18 + 184))
        {
          goto LABEL_42;
        }

        v26 = *(*(v18 + 168) + 4 * v23);
        v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

        v28 = *(v18 + 120);
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = sub_1AF449D3C(v26 | (v27 << 32));
        v32 = v31;
        if (v12[3] >= (v12[2] + ((v31 & 1) == 0)))
        {
          if ((v29 & 1) == 0)
          {
            v34 = v30;
            sub_1AF84A0B4();
            v30 = v34;
          }
        }

        else
        {
          sub_1AF836AAC(v12[2] + ((v31 & 1) == 0), v29);
          v30 = sub_1AF449D3C(v26 | (v27 << 32));
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_43;
          }
        }

        v18 = v58;
        if (v32)
        {
          *(v12[7] + v30) = v28;
          if (!--v17)
          {
            break;
          }
        }

        else
        {
          v12[(v30 >> 6) + 8] |= 1 << v30;
          v22 = (v12[6] + 8 * v30);
          *v22 = v26;
          v22[1] = v27;
          *(v12[7] + v30) = v28;
          ++v12[2];
          if (!--v17)
          {
            break;
          }
        }
      }
    }

LABEL_25:
    v10 = v54;
    v70 = v53;
    v71 = v68;
    v72 = v69;
    sub_1AF630994(v57, &v70, v73);
    sub_1AF62D29C(v18);
    ecs_stack_allocator_pop_snapshot(v56);
    v11 = v50;
    if (v50)
    {
      os_unfair_lock_unlock(*(v18 + 344));
      os_unfair_lock_unlock(*(v18 + 376));
    }

    v9 = v55 + 1;
    if (v55 + 1 == v51)
    {
      goto LABEL_38;
    }
  }

  if (v15 == v14)
  {
    goto LABEL_25;
  }

  while (1)
  {

    if (*(v18 + 184))
    {
      break;
    }

    v37 = *(*(v18 + 168) + 4 * v15);
    v38 = *(*(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v37 + 8);

    v39 = *(v18 + 120);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_1AF449D3C(v37 | (v38 << 32));
    v43 = v42;
    if (v12[3] >= (v12[2] + ((v42 & 1) == 0)))
    {
      if ((v40 & 1) == 0)
      {
        v45 = v41;
        sub_1AF84A0B4();
        v41 = v45;
      }
    }

    else
    {
      sub_1AF836AAC(v12[2] + ((v42 & 1) == 0), v40);
      v41 = sub_1AF449D3C(v37 | (v38 << 32));
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_43;
      }
    }

    v18 = v58;
    if (v43)
    {
      *(v12[7] + v41) = v39;
    }

    else
    {
      v12[(v41 >> 6) + 8] |= 1 << v41;
      v35 = (v12[6] + 8 * v41);
      *v35 = v37;
      v35[1] = v38;
      *(v12[7] + v41) = v39;
      ++v12[2];
    }

    if (v14 == ++v15)
    {
      goto LABEL_25;
    }
  }

LABEL_42:
  sub_1AFDFE518();
  __break(1u);
LABEL_43:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF65E9B8(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_activeStatesPerEffects;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_activeStatesPerEffects);
  if (*(v4 + 16))
  {
    v5 = result;
    result = sub_1AF449CBC(result);
    if (v6)
    {
      v86 = v3;
      v7 = *(*(v4 + 56) + 8 * result);
      v8 = 1 << *(v7 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v7 + 64);
      v11 = (v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v82 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
      v12 = (v8 + 63) >> 6;

      v13 = 0;
      v84 = 0;
      while (v10)
      {
LABEL_10:
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = v15 | (v13 << 6);
        v17 = (*(v7 + 48) + 8 * v16);
        v18 = v17[1];
        v19 = *v17;
        v20 = *(*(v7 + 56) + v16);
        if (__PAIR64__(v18, v19) != 0xFFFFFFFF && (v19 & 0x80000000) == 0 && v11[1] > v19)
        {
          v21 = (*v11 + 12 * v19);
          if (v18 == -1 || v21[2] == v18)
          {
            v22 = *(*(v2 + 144) + 8 * *v21 + 32);
            v85 = v11;
            v23 = *(v22 + 344);
            v83 = v22;

            v24 = v23;
            v11 = v85;
            os_unfair_lock_lock(v24);
            if (v11[1] > v19)
            {
              v25 = (*v11 + 12 * v19);
              v26 = v18 == -1 || v25[2] == v18;
              if (v26)
              {
                v27 = *(*(v2 + 144) + 8 * *v25 + 32);
                if (v20 != *(v27 + 120))
                {
                  v70 = v5;
                  v28 = *(v27 + 240) - *(v27 + 232) < 2;
                  v76 = v27;
                  if (v28)
                  {
                    v32 = *(v27 + 16);
                    LODWORD(v80) = *(v27 + 188);
                    v81 = *(v27 + 24);
                    v33 = *(v32 + 136);

                    os_unfair_lock_lock(v33);
                    v34 = *(v32 + 104);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v32 + 104) = v34;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      *(v32 + 104) = sub_1AFC0D9B8(v34);
                    }

                    sub_1AF6213F4(v80, v20);
                    if (*(*(*(v32 + 88) + 8 * v81 + 32) + 200) == 1)
                    {
                      *(v32 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                    }

                    os_unfair_lock_unlock(*(v32 + 136));

                    *(v76 + 120) = v20;

                    v5 = v70;
                  }

                  else
                  {
                    v75 = *(v25 + 2);
                    v67 = **(v2 + v82);
                    v29 = *(v27 + 24);
                    v79 = *(v27 + 28);
                    v80 = v29;
                    v78 = *(v27 + 32);
                    v81 = *(v27 + 16);
                    v30 = *(*(v81 + 88) + 8 * v29 + 32);
                    v31 = *(v27 + 40);
                    LODWORD(v74) = v31[200];

                    v77 = v30;

                    if ((v74 & 1) != 0 || *(v77 + 200) == 1)
                    {
                      *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                      v31 = *(v76 + 40);
                    }

                    if (v31[212])
                    {
                      v66 = 0;
                    }

                    else
                    {
                      v66 = *(v77 + 212);
                    }

                    v65 = v31[208];
                    v74 = *(v76 + 128);
                    v69 = *(v76 + 256);
                    v36 = v31;
                    v37 = v84;
                    sub_1AF5B69AC(v36, v75, 0, v76);
                    v84 = v37;
                    v68 = *(v76 + 256);
                    v38 = v68 - v69;
                    if (v68 == v69)
                    {
                      v39 = 0;
                    }

                    else
                    {
                      v39 = v69;
                    }

                    v72 = v39;
                    v97 = v39;
                    v40 = *(*(v76 + 40) + 24);
                    v41 = *(v40 + 16);
                    if (v41)
                    {
                      v75 = v68 - v69;
                      v42 = v40 + 32;
                      v64[1] = v40;
                      v73 = v41;

                      v43 = v42;
                      v44 = v73;
                      v45 = 0;
                      v71 = v2;
                      do
                      {
                        v48 = v43 + 40 * v45;
                        if ((*(v48 + 32) & 1) == 0)
                        {
                          v49 = *(v77 + 24);
                          v50 = *(v49 + 16);
                          if (v50)
                          {
                            v51 = (v49 + 32);
                            while (*v51 != *v48)
                            {
                              v51 += 5;
                              if (!--v50)
                              {
                                goto LABEL_39;
                              }
                            }
                          }

                          else
                          {
LABEL_39:
                            v46 = v20;
                            v47 = v43;
                            sub_1AF640BC8();
                            v43 = v47;
                            v20 = v46;
                            v2 = v71;
                            v44 = v73;
                          }
                        }

                        v45 = (v45 + 1);
                      }

                      while (v45 != v44);

                      v38 = v75;
                    }

                    v52 = v76;
                    if (*(v81 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                    {
                      vfx_counters.add(_:_:)(*(v81 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v76 + 72) * v38);
                    }

                    v53 = *(v52 + 168);
                    v26 = *(v52 + 184) == 0;
                    v75 = v38;
                    if (v26)
                    {
                      v54 = v53;
                    }

                    else
                    {
                      v54 = 0;
                    }

                    v96 = 0;

                    v73 = v64;
                    MEMORY[0x1EEE9AC00](v55, v56);
                    v57 = v79;
                    LODWORD(v64[-14]) = v79;
                    v58 = v78;
                    BYTE4(v64[-14]) = v78;
                    v64[-13] = v52;
                    v64[-12] = v77;
                    *&v64[-11] = 0u;
                    *&v64[-9] = 0u;
                    v64[-7] = &v97;
                    v64[-6] = v74;
                    v64[-5] = &v96;
                    LOBYTE(v64[-4]) = v65;
                    HIDWORD(v64[-4]) = v80;
                    LOBYTE(v64[-3]) = v66;
                    v64[-2] = v67;
                    v91 = -1;
                    v92 = v69;
                    v93 = v68;
                    v94 = v69;
                    v95 = v68;
                    v88 = v69;
                    v89 = v68;
                    v90 = v54;
                    if (v75 < 1)
                    {

                      v5 = v70;
                    }

                    else
                    {
                      v5 = v70;
                      do
                      {
                        v87 = v58;
                        sub_1AF6248A8(v80, v57 | (v58 << 32), v20, v81, &v88, sub_1AF5C5ACC);
                        v58 = v78;
                        v57 = v79;
                      }

                      while (v89 - v88 > 0);
                    }

                    v59 = *(v76 + 192);
                    if (v59)
                    {
                      v81 = *(v76 + 216);
                      v60 = *(v76 + 208);
                      v61 = v69;
                      v62 = v68;
                      sub_1AF75D364(v69, v68, v59);
                      v63 = v60;
                      v5 = v70;
                      sub_1AF75D364(v61, v62, v63);
                    }
                  }
                }

                sub_1AF678B44(v19 | (v18 << 32));
                v11 = v85;
              }
            }

            os_unfair_lock_unlock(*(v83 + 344));
          }
        }
      }

      while (1)
      {
        v14 = v13 + 1;
        if (v13 + 1 >= v12)
        {
          break;
        }

        v10 = *(v7 + 8 * v13++ + 72);
        if (v10)
        {
          v13 = v14;
          goto LABEL_10;
        }
      }

      return sub_1AF825428(0, v5);
    }
  }

  return result;
}

uint64_t sub_1AF65F134(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
  v7 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
  *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 1;
  if (v7 != 1)
  {
    v8 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v8)
    {
      v9 = a1;
      v10 = a4;
      v11 = a2;

      v8(v4);
      sub_1AF0FB8EC(v8);
      a1 = v9;
      a2 = v11;
      a4 = v10;
    }
  }

  v12 = v4 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v13 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 80);
  v14 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 88);
  v15 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81);
  v16 = 1.0 / a1;
  if (a2)
  {
    v16 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 88);
  }

  *(v12 + 80) = 1;
  *(v12 + 88) = v16;
  *(v12 + 81) = (*(v12 + 82) & 1) == 0;
  sub_1AF627D68(a4);

  sub_1AF6D67B8(v17, a3, 3);

  *(v12 + 80) = v13;
  *(v12 + 88) = v14;
  *(v12 + 81) = v15;

  v19 = *(v4 + v6);
  *(v4 + v6) = 4;
  if (v19 != 4)
  {
    v20 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v20)
    {

      v20(v4);

      return sub_1AF0FB8EC(v20);
    }
  }

  return result;
}

uint64_t sub_1AF65F2F4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 1;
  if (v5 != 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v6)
    {

      v6(v1);
      sub_1AF0FB8EC(v6);
    }
  }

  if (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_isVFX2))
  {

    sub_1AF6D67B8(v7, a1, 3);
  }

  else
  {
    v9 = qword_1ED7270F0;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFC538();
    sub_1AF477C68(v10, qword_1ED73B608);

    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v2;
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);

    v12 = sub_1AFDFC528();
    v13 = sub_1AFDFDB88();
    v14 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v12, v13, v14, "update", "[%ld:%ld]", v11, 0x16u);

    sub_1AF6D67B8(v2, a1, 3);

    v15 = sub_1AFDFDB78();
    v16 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v12, v15, v16, "update", "[%ld:%ld]", v11, 0x16u);

    MEMORY[0x1B271DEA0](v11, -1, -1);
  }

  v17 = *(v2 + v4);
  *(v2 + v4) = 4;
  if (v17 != 4)
  {
    v18 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v18)
    {

      v18(v2);

      return sub_1AF0FB8EC(v18);
    }
  }

  return result;
}

uint64_t sub_1AF65F5E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_currentState;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_currentState) = 3;
  if (v4 != 3)
  {
    v5 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v5)
    {

      v5(v1);
      sub_1AF0FB8EC(v5);
    }
  }

  v6 = *(*(v1 + OBJC_IVAR____TtC3VFX13EntityManager_scheduler) + 24);

  if (v6)
  {
    v9 = thread_worker_index(v8);
    v10 = *v9;
    *v9 = 0;

    sub_1AF6D88DC(v1, a1, 5);
    *v9 = v10;
  }

  v11 = *(v1 + v3);
  *(v1 + v3) = 4;
  if (v11 != 4)
  {
    v12 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_stateDidChangeFn);
    if (v12)
    {

      v12(v1);

      return sub_1AF0FB8EC(v12);
    }
  }

  return result;
}

id sub_1AF65F760()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v1)
  {

    os_unfair_recursive_lock_lock_with_options();
    if ((*(v1 + 120) & 1) == 0)
    {
      *(v1 + 120) = 1;
      os_unfair_recursive_lock_unlock();
      sub_1AF6CF09C();
      os_unfair_recursive_lock_lock_with_options();
    }

    os_unfair_recursive_lock_unlock();
  }

  v2 = v0 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated;
  [*(v0 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8) lock];
  *v2 = 1;
  v3 = *(v2 + 8);

  return [v3 unlock];
}

void sub_1AF65F830()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity;

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        vfx_attribute_memory(v5 + 144, *(v0 + v3));
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  v6 = *(v0 + 160);
  v7 = *(v6 + 2);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC3VFX13EntityManager_peerTaskIdentity;
    v9 = 32;
    do
    {
      v10 = *(v0 + v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 160) = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1AFC0D954(v6);
        *(v0 + 160) = v6;
      }

      vfx_attribute_memory(&v6[v9], v10);
      v6 = *(v0 + 160);
      v9 += 24;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AF65F924(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  if (vfx_counters_is_null(a2))
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  sub_1AF650E7C(v4, v9);
  v5 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
  v6 = v9[3];
  v5[2] = v9[2];
  v5[3] = v6;
  v5[4] = v10[0];
  *(v5 + 76) = *(v10 + 12);
  v7 = v9[1];
  *v5 = v9[0];
  v5[1] = v7;

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF65F9AC()
{
  v1 = sub_1AF4217DC(0, *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v2 = v0 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v0 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v3 = (v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v4 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      v8 = *v3 + v5;
      if ((*(v8 + 6) & 0x80000000) == 0)
      {
        v9 = *(v8 + 8);
        v11 = *(v1 + 2);
        v10 = *(v1 + 3);
        if (v11 >= v10 >> 1)
        {
          v1 = sub_1AF4217DC(v10 > 1, v11 + 1, 1, v1);
        }

        *(v1 + 2) = v11 + 1;
        v7 = &v1[8 * v11];
        *(v7 + 8) = i;
        *(v7 + 9) = v9;
      }

      v5 += 12;
    }
  }

  os_unfair_lock_unlock(*(v2 + 24));
  v12 = *(v1 + 2);
  if (v12)
  {
    v13 = (v1 + 32);
    sub_1AF6782C4(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v14 = MEMORY[0x1E69E6158];
    do
    {
      v15 = *v13++;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      v17 = sub_1AF65B3FC(v15);
      *(v16 + 56) = v14;
      *(v16 + 32) = v17;
      *(v16 + 40) = v18;
      sub_1AFDFF258();

      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AF65FB74()
{
  v1 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
  *&v13[0] = 0;
  *(&v13[0] + 1) = 0xE000000000000000;

  MEMORY[0x1B2718AE0](540949770, 0xE400000000000000);
  v14 = v0;
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v3, v4);

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  sub_1AFDFE458();
  v5 = v13[0];
  v6 = sub_1AFDFDA28();
  *&v13[0] = 0;
  (*(*v2 + 88))(v6, v13, v5, *(&v5 + 1));

  v7 = *(v0 + v1);
  strcpy(v13, "VFX version ");
  BYTE13(v13[0]) = 0;
  HIWORD(v13[0]) = -5120;
  v14 = 3031;

  v8 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v8);

  v9 = v13[0];
  v10 = sub_1AFDFDA28();
  *&v13[0] = 0;
  (*(*v7 + 88))(v10, v13, v9, *(&v9 + 1));

  memset(v13, 0, sizeof(v13));

  sub_1AF660B40(v11, v0, v13);
  return *&v13[0];
}

uint64_t sub_1AF65FDC4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 88);
  v64 = *(v3 + 16);
  if (!v64)
  {
    v21 = 0;
    goto LABEL_21;
  }

  v63 = v3 + 32;

  v4 = 0;
  v66 = 0;
  do
  {
    v7 = *(v63 + 8 * v4);
    if (v7)
    {
      v8 = *(v7 + 204);
      v9 = *(*(*(a1 + 104) + 40 * v8 + 32) + 16);
      v65 = *(v7 + 72);
      v10 = sub_1AF621684(v8);
      v11 = *(v7 + 48);
      v12 = sub_1AF6215A4(v8);
      if (v12 >> 62)
      {
        v20 = v12;
        v13 = sub_1AFDFE108();
        v12 = v20;
        v14 = 0;
        if (v13)
        {
LABEL_8:
          v15 = 0;
          v16 = v12 & 0xC000000000000001;
          do
          {
            if (v16)
            {
              v61 = v12;
              v19 = MEMORY[0x1B2719C70](v15, v12);
              v59 = *(v19 + 240);
              v60 = *(v19 + 232);
              swift_unknownObjectRelease();
              v12 = v61;
              v17 = v59 == v60;
            }

            else
            {
              v17 = *(*(v12 + 8 * v15 + 32) + 240) == *(*(v12 + 8 * v15 + 32) + 232);
            }

            v18 = !v17;
            ++v15;
            v14 += v18;
          }

          while (v13 != v15);
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = 0;
        if (v13)
        {
          goto LABEL_8;
        }
      }

      ++v66;

      v5 = a2[1] + v11 * v10;
      *a2 += v65 * v9;
      a2[1] = v5;
      v6 = a2[3] + v14;
      a2[2] += v9;
      a2[3] = v6;
    }

    ++v4;
  }

  while (v4 != v64);

  v21 = v66;
LABEL_21:
  v22 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
  v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  sub_1AFDFE218();

  v67[1] = 0x80000001AFF2E7E0;
  v68 = v21;
  v24 = sub_1AFDFEA08();
  v25 = a1;
  MEMORY[0x1B2718AE0](v24);

  v26 = sub_1AFDFDA28();
  v67[0] = 0;
  (*(*v23 + 88))(v26, v67, 0xD000000000000014, 0x80000001AFF2E7E0);

  v27 = *(a1 + v22);
  strcpy(v67, "Chunk size: ");
  BYTE5(v67[1]) = 0;
  HIWORD(v67[1]) = -5120;
  v28 = *a2;
  v29 = objc_allocWithZone(MEMORY[0x1E696AAF0]);

  v30 = [v29 init];
  [v30 setCountStyle_];
  v31 = [v30 stringFromByteCount_];
  v32 = sub_1AFDFCEF8();
  v34 = v33;

  MEMORY[0x1B2718AE0](v32, v34);

  v35 = v67[0];
  v36 = v67[1];
  v37 = sub_1AFDFDA28();
  v67[0] = 0;
  (*(*v27 + 88))(v37, v67, v35, v36);

  v38 = *(v25 + v22);
  strcpy(v67, "Chunk count: ");
  HIWORD(v67[1]) = -4864;
  v68 = a2[2];

  v39 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v39);

  v40 = v67[0];
  v41 = v67[1];
  v42 = sub_1AFDFDA28();
  v67[0] = 0;
  (*(*v38 + 88))(v42, v67, v40, v41);

  v43 = *(v25 + v22);
  v67[0] = 0;
  v67[1] = 0xE000000000000000;

  sub_1AFDFE218();

  v67[0] = 0xD000000000000012;
  v67[1] = 0x80000001AFF2E800;
  v44 = a2[1];
  v45 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v45 setCountStyle_];
  v46 = [v45 stringFromByteCount_];
  v47 = sub_1AFDFCEF8();
  v49 = v48;

  MEMORY[0x1B2718AE0](v47, v49);

  v50 = v67[0];
  v51 = v67[1];
  v52 = sub_1AFDFDA28();
  v67[0] = 0;
  (*(*v43 + 88))(v52, v67, v50, v51);

  v53 = *(v25 + v22);
  v67[0] = 0;
  v67[1] = 0xE000000000000000;

  sub_1AFDFE218();

  v67[0] = 0xD000000000000013;
  v67[1] = 0x80000001AFF2E820;
  v68 = a2[3];
  v54 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v54);

  v55 = v67[0];
  v56 = v67[1];
  v57 = sub_1AFDFDA28();
  v67[0] = 0;
  (*(*v53 + 88))(v57, v67, v55, v56);
}

uint64_t sub_1AF66040C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v15)
    {
      swift_retain_n();
      v16 = a3;
      swift_retain_n();
      v17 = v16;
      pthread_mutex_lock(v15);
      if (*(a1 + v8))
      {
LABEL_6:

        v18 = a3;

        sub_1AF66040C(a1, a2, v18, a4);
        v19 = *(a1 + v14);
        if (v19)
        {
          pthread_mutex_unlock(v19);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_19;
      }
    }

    else
    {
      v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      v26 = a3;
      swift_retain_n();
      v27 = v26;
      [v25 lock];
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC8B048(a2, a3, a4);
    sub_1AF66DB74(a1);
    v28 = *(a1 + v14);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_19;
  }

  v10 = *(v9 + 144);
  swift_retain_n();
  v11 = a3;
  swift_retain_n();
  v12 = v11;

  v13 = pthread_self();
  if (pthread_equal(v10, v13))
  {
    sub_1AF65E3F4();
    sub_1AFC8B048(a2, v12, a4);
    sub_1AF66DB74(a1);

LABEL_19:

    goto LABEL_20;
  }

  v20 = *(v9 + 64);

  v21 = v12;

  pthread_mutex_lock(v20);
  v22 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC8B048(a2, v21, a4);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v24 = v22(&runtime_thread_is_locked);
  --*v24;
  pthread_mutex_unlock(*(v9 + 64));

LABEL_20:
}

uint64_t sub_1AF660748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v15)
  {
    v18 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v19)
    {
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      pthread_mutex_lock(v19);
      if (*(a1 + v14))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_unknownObjectRetain_n();

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      [v25 lock];
      if (*(a1 + v14))
      {
LABEL_6:
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_1AF660748(a1, a2, a3, a4, a5, a6, a7);
        if (v30)
        {
          v20 = *(a1 + v18);
          if (v20)
          {
            pthread_mutex_unlock(v20);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          goto LABEL_20;
        }

        v26 = *(a1 + v18);
        if (!v26)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    sub_1AF65E3F4();
    sub_1AF6C3AA8(a3, a4, a5, a6);
    sub_1AF66DB74(a1);
    v26 = *(a1 + v18);
    if (!v26)
    {
LABEL_18:
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      goto LABEL_19;
    }

LABEL_16:
    pthread_mutex_unlock(v26);
LABEL_19:

    goto LABEL_20;
  }

  v16 = *(v15 + 144);
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();

  v17 = pthread_self();
  if (pthread_equal(v16, v17))
  {
    sub_1AF65E3F4();
    sub_1AF6C3AA8(a3, a4, a5, a6);
    sub_1AF66DB74(a1);
  }

  else
  {
    v21 = *(v15 + 64);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    pthread_mutex_lock(v21);
    v22 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AF6C3AA8(a3, a4, a5, a6);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v24 = v22(&runtime_thread_is_locked);
    --*v24;
    pthread_mutex_unlock(*(v15 + 64));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

LABEL_20:
  swift_bridgeObjectRelease_n();

  swift_unknownObjectRelease_n();
  return swift_unknownObjectRelease_n();
}

uint64_t sub_1AF660B40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v7)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      swift_retain_n();
      pthread_mutex_lock(v11);
      if (*(a1 + v6))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      [v13 lock];
      if (*(a1 + v6))
      {
LABEL_6:

        sub_1AF660B40(a1, a2, a3);
        v12 = *(a1 + v10);
        if (v12)
        {
LABEL_7:
          pthread_mutex_unlock(v12);
LABEL_13:
        }

LABEL_12:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_13;
      }
    }

    sub_1AF65E3F4();
    sub_1AF65FDC4(a2, a3);
    sub_1AF66DB74(a1);
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v8 = *(v7 + 144);
  swift_retain_n();

  v9 = pthread_self();
  if (pthread_equal(v8, v9))
  {
    sub_1AF65E3F4();
    sub_1AF65FDC4(a2, a3);
    sub_1AF66DB74(a1);
  }

  else
  {

    sub_1AF6CC530(v7, a2, a3);
  }
}

void sub_1AF660D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v14)
    {
      swift_retain_n();
      swift_retain_n();
      pthread_mutex_lock(v14);
      if (*(a1 + v8))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_retain_n();
      [v16 lock];
      if (*(a1 + v8))
      {
LABEL_7:

        sub_1AF660D1C(a1, a2, a3);
        if (v4)
        {
          v15 = *(a1 + v13);
          if (!v15)
          {
LABEL_9:
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_17:

            goto LABEL_18;
          }

LABEL_16:
          pthread_mutex_unlock(v15);
          goto LABEL_17;
        }

LABEL_15:
        v15 = *(a1 + v13);
        if (!v15)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    sub_1AF65E3F4();
    v9 = objc_autoreleasePoolPush();
    sub_1AF6F843C(a2, a3);
    if (v4)
    {
      goto LABEL_20;
    }

    objc_autoreleasePoolPop(v9);
    sub_1AF66DB74(a1);
    goto LABEL_15;
  }

  v10 = v9[18];
  swift_retain_n();
  swift_retain_n();

  v11 = pthread_self();
  if (!pthread_equal(v10, v11))
  {

    sub_1AF6CC618(v9, a2, a3);
    goto LABEL_11;
  }

  sub_1AF65E3F4();
  v12 = objc_autoreleasePoolPush();
  sub_1AF6F843C(a2, a3);
  if (!v3)
  {
    objc_autoreleasePoolPop(v12);
    sub_1AF66DB74(a1);
LABEL_11:

LABEL_18:

    return;
  }

  objc_autoreleasePoolPop(v12);
  __break(1u);
LABEL_20:
  objc_autoreleasePoolPop(v9);
  __break(1u);
}

id sub_1AF660F84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v4)
  {
    v7 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v8)
    {
      pthread_mutex_lock(v8);
      if (*(a1 + v3))
      {
        goto LABEL_8;
      }
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) lock];
      if (*(a1 + v3))
      {
LABEL_8:
        sub_1AF660F84(a1);
        if (v1)
        {
          v9 = *(a1 + v7);
          if (!v9)
          {
            return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          return pthread_mutex_unlock(v9);
        }

LABEL_17:
        v9 = *(a1 + v7);
        if (!v9)
        {
          return [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        return pthread_mutex_unlock(v9);
      }
    }

    sub_1AF65E3F4();
    if (qword_1ED72E180 != -1)
    {
      swift_once();
    }

    sub_1AF707598();
    sub_1AF66DB74(a1);
    goto LABEL_17;
  }

  v5 = *(v4 + 144);

  v6 = pthread_self();
  if (pthread_equal(v5, v6))
  {
    sub_1AF65E3F4();
    if (qword_1ED72E180 != -1)
    {
      swift_once();
    }

    sub_1AF707598();
    sub_1AF66DB74(a1);
  }

  else
  {
    sub_1AF6CC728(v4);
  }
}

uint64_t sub_1AF661130(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v12 = *(v10 + 144);
    swift_retain_n();
    v13 = a3;

    v14 = pthread_self();
    if (!pthread_equal(v12, v14))
    {
      v20 = *(v10 + 64);

      v21 = v13;
      pthread_mutex_lock(v20);
      v22 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      sub_1AF756950(a2, v21, a4);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v24 = v22(&runtime_thread_is_locked);
      --*v24;
      pthread_mutex_unlock(*(v10 + 64));

      goto LABEL_19;
    }

    sub_1AF65E3F4();
    sub_1AF756950(a2, v13, a4);
    sub_1AF66DB74(a1);

LABEL_18:

LABEL_19:
    v28 = a3;
    goto LABEL_20;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    swift_retain_n();
    v17 = a3;
    pthread_mutex_lock(v16);
    if (*(a1 + v9))
    {
LABEL_6:

      v18 = a3;
      sub_1AF661130(a1, a2, v18, a4, a5);
      v19 = *(a1 + v15);
      if (v19)
      {
        pthread_mutex_unlock(v19);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_18;
    }
  }

  else
  {
    v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    swift_retain_n();
    v26 = a3;
    [v25 lock];
    if (*(a1 + v9))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AF756950(a2, a3, a4);
  sub_1AF66DB74(a1);
  v27 = *(a1 + v15);
  if (v27)
  {
    pthread_mutex_unlock(v27);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  v28 = a3;

LABEL_20:
}

void sub_1AF661448(uint64_t a1, char a2, void *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a3;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      sub_1AFC78638(a2 & 1, v9);
      sub_1AF66DB74(a1);
    }

    else
    {
      v16 = v9;
      sub_1AF6CC818(v7, a2 & 1, v16);
    }

    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v12)
  {
    v13 = a3;
    pthread_mutex_lock(v12);
    if (*(a1 + v6))
    {
LABEL_6:
      v14 = a3;
      sub_1AF661448(a1, a2 & 1, v14);
      v15 = *(a1 + v11);
      if (v15)
      {
        pthread_mutex_unlock(v15);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v18 = a3;
    [v17 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC78638(a2 & 1, a3);
  sub_1AF66DB74(a1);
  v19 = *(a1 + v11);
  if (v19)
  {
    pthread_mutex_unlock(v19);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF66164C(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v5)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      v12 = a2;
      pthread_mutex_lock(v11);
      if (*(a1 + v4))
      {
LABEL_7:
        v13 = a2;
        sub_1AF66164C(a1, v13);
        v14 = *(a1 + v10);
        if (v14)
        {
          pthread_mutex_unlock(v14);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v17 = a2;
      [v16 lock];
      if (*(a1 + v4))
      {
        goto LABEL_7;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC7C4B8();
    if (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
    {
      v18 = 0x200000000;
    }

    else
    {
      v18 = *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
    }

    sub_1AF6F92A4(v18);

    sub_1AF66DB74(a1);
    v19 = *(a1 + v10);
    if (v19)
    {
      pthread_mutex_unlock(v19);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_23;
  }

  v6 = *(v5 + 144);
  v7 = a2;

  v8 = pthread_self();
  if (pthread_equal(v6, v8))
  {
    sub_1AF65E3F4();
    sub_1AFC7C4B8();
    if (v7[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4])
    {
      v9 = 0x200000000;
    }

    else
    {
      v9 = *&v7[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | ((*&v7[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] == 0) << 33);
    }

    sub_1AF6F92A4(v9);

    sub_1AF66DB74(a1);
  }

  else
  {
    v15 = v7;
    sub_1AF6CC8FC(v5, v15);
  }

LABEL_23:
}

uint64_t sub_1AF66189C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8)
{
  v14 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v15)
  {
    v26 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v18)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      pthread_mutex_lock(v18);
      if (*(a1 + v14))
      {
LABEL_6:

        sub_1AF66189C(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_14:
        v24 = *(a1 + v26);
        if (v24)
        {
          pthread_mutex_unlock(v24);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      [v23 lock];
      if (*(a1 + v14))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC84D2C(a2, a3, a4, a5, a6, a7, a8);
    sub_1AF66DB74(a1);
    goto LABEL_14;
  }

  v16 = *(v15 + 144);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v17 = pthread_self();
  if (pthread_equal(v16, v17))
  {
    sub_1AF65E3F4();
    sub_1AFC84D2C(a2, a3, a4, a5, a6, a7, a8);
    sub_1AF66DB74(a1);

LABEL_18:

    goto LABEL_19;
  }

  v19 = *(v15 + 64);

  pthread_mutex_lock(v19);
  v20 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC84D2C(a2, a3, a4, a5, a6, a7, a8);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v22 = v20(&runtime_thread_is_locked);
  --*v22;
  pthread_mutex_unlock(*(v15 + 64));

  swift_bridgeObjectRelease_n();

LABEL_19:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF661BB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v14 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v15)
  {
    v21 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v22)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      pthread_mutex_lock(v22);
      if (*(a1 + v14))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v40 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      [v40 lock];
      if (*(a1 + v14))
      {
LABEL_11:

        sub_1AF661BB4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
        if (v9)
        {
          v23 = *(a1 + v21);
          if (v23)
          {
            pthread_mutex_unlock(v23);
          }

          else
          {
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
          }

          goto LABEL_52;
        }

LABEL_39:
        v43 = *(a1 + v21);
        if (v43)
        {
          pthread_mutex_unlock(v43);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

LABEL_51:

        goto LABEL_52;
      }
    }

    sub_1AF65E3F4();
    v41 = HIDWORD(a3);
    if (a3)
    {
      v42 = a3;
    }

    else
    {
      v42 = 0xFFFFFFFFLL;
    }

    if ((v42 != -1 || v41) && (v42 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v42)
    {
      v55 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v42);
      v56 = *(v55 + 2);
      if (v41 == 0xFFFFFFFF || v55[2] == HIDWORD(a3))
      {
        v57 = *(*(a2 + 144) + 8 * *v55 + 32);
        v58 = *(v57 + 48);
        v59 = (v58 + 32);
        v60 = *(v58 + 16) + 1;
        while (--v60)
        {
          v61 = v59 + 5;
          v62 = *v59;
          v59 += 5;
          if (v62 == &type metadata for Bindings)
          {
            v63 = *(v61 - 2) + 24 * v56 + *(v57 + 128);
            v64 = a3 & 0xFFFFFFFF00000000 | v42;

            sub_1AFC83FB0(v63, a6, 0, a7, 0, a8, a9, a2, v64, a4, a5);

            break;
          }
        }
      }
    }

    sub_1AF66DB74(a1);
    goto LABEL_39;
  }

  v17 = *(v15 + 144);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v18 = pthread_self();
  if (pthread_equal(v17, v18))
  {
    sub_1AF65E3F4();
    v19 = HIDWORD(a3);
    if (a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

    if ((v20 != -1 || v19) && (v20 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v20)
    {
      v30 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20);
      v31 = *(v30 + 2);
      if (v19 == 0xFFFFFFFF || v30[2] == HIDWORD(a3))
      {
        v32 = *(*(a2 + 144) + 8 * *v30 + 32);
        v33 = *(v32 + 48);
        v34 = (v33 + 32);
        v35 = *(v33 + 16) + 1;
        while (--v35)
        {
          v36 = v34 + 5;
          v37 = *v34;
          v34 += 5;
          if (v37 == &type metadata for Bindings)
          {
            v38 = *(v36 - 2) + 24 * v31 + *(v32 + 128);
            v39 = a3 & 0xFFFFFFFF00000000 | v20;

            sub_1AFC83FB0(v38, a6, 0, a7, 0, a8, a9, a2, v39, a4, a5);

            break;
          }
        }
      }
    }

    sub_1AF66DB74(a1);

    goto LABEL_51;
  }

  v24 = *(v15 + 64);

  pthread_mutex_lock(v24);
  v25 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  v27 = HIDWORD(a3);
  if (a3)
  {
    v28 = a3;
  }

  else
  {
    v28 = 0xFFFFFFFFLL;
  }

  if ((v28 != -1 || v27) && (v28 & 0x80000000) == 0 && *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v28)
  {
    v44 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v28);
    v45 = *(v44 + 2);
    if (v27 == 0xFFFFFFFF || v44[2] == HIDWORD(a3))
    {
      v46 = *(*(a2 + 144) + 8 * *v44 + 32);
      v47 = *(v46 + 48);
      v48 = (v47 + 32);
      v49 = *(v47 + 16) + 1;
      while (--v49)
      {
        v50 = v48 + 5;
        v51 = *v48;
        v48 += 5;
        if (v51 == &type metadata for Bindings)
        {
          v52 = *(v50 - 2) + 24 * v45 + *(v46 + 128);
          v53 = a3 & 0xFFFFFFFF00000000 | v28;

          sub_1AFC83FB0(v52, a6, 0, a7, 0, a8, a9, a2, v53, a4, a5);

          break;
        }
      }
    }
  }

  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v29 = v25(&runtime_thread_is_locked);
  --*v29;
  pthread_mutex_unlock(*(v15 + 64));

  swift_bridgeObjectRelease_n();

LABEL_52:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF6621E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v13)
  {
    v23 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      pthread_mutex_lock(v16);
      if (*(a1 + v12))
      {
LABEL_6:

        sub_1AF6621E4(a1, a2, a3, a4, a5 & 0xFFFFFFFFFFLL, a6 & 1);
LABEL_14:
        v21 = *(a1 + v23);
        if (v21)
        {
          pthread_mutex_unlock(v21);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      [v20 lock];
      if (*(a1 + v12))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC85000(a2, a3, a4, a5 & 0xFFFFFFFFFFLL, a6 & 1);
    sub_1AF66DB74(a1);
    goto LABEL_14;
  }

  v14 = *(v13 + 144);
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v15 = pthread_self();
  if (pthread_equal(v14, v15))
  {
    sub_1AF65E3F4();
    sub_1AFC85000(a2, a3, a4, a5 & 0xFFFFFFFFFFLL, a6 & 1);
    sub_1AF66DB74(a1);

LABEL_18:

    goto LABEL_19;
  }

  v17 = *(v13 + 64);

  pthread_mutex_lock(v17);
  v24 = runtime_thread_is_locked;
  is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
  ++*is_locked;
  if (swift_weakLoadStrong())
  {
    sub_1AF65E3F4();
  }

  sub_1AFC85000(a2, a3, a4, a5 & 0xFFFFFFFFFFLL, a6 & 1);
  if (swift_weakLoadStrong())
  {
    sub_1AF65E37C();
  }

  v19 = v24(&runtime_thread_is_locked);
  --*v19;
  pthread_mutex_unlock(*(v13 + 64));

  swift_bridgeObjectRelease_n();

LABEL_19:
  swift_bridgeObjectRelease_n();
}

void sub_1AF6624F0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      swift_unknownObjectRetain_n();
      v17 = a2;
      pthread_mutex_lock(v16);
      if (*(a1 + v8))
      {
LABEL_6:
        swift_unknownObjectRetain();
        v18 = a2;
        sub_1AF6624F0(a1, v18, a3, a4);
        v19 = *(a1 + v15);
        if (v19)
        {
          pthread_mutex_unlock(v19);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    else
    {
      v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_unknownObjectRetain_n();
      v25 = a2;
      [v27 lock];
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC80F08(a2, a3, a4);
    sub_1AF66DB74(a1);
    v26 = *(a1 + v15);
    if (v26)
    {
      pthread_mutex_unlock(v26);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v10 = *(v9 + 144);
  swift_unknownObjectRetain_n();
  v11 = a2;
  v12 = a2;

  v13 = v12;
  v14 = pthread_self();
  if (pthread_equal(v10, v14))
  {
    sub_1AF65E3F4();
    sub_1AFC80F08(v13, a3, a4);
    sub_1AF66DB74(a1);
    swift_unknownObjectRelease();

    a2 = v11;
  }

  else
  {
    v20 = *(v9 + 64);
    v21 = v13;
    swift_unknownObjectRetain();
    pthread_mutex_lock(v20);
    v22 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFC80F08(v21, a3, a4);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v24 = v22(&runtime_thread_is_locked);
    --*v24;
    pthread_mutex_unlock(*(v9 + 64));

    swift_unknownObjectRelease_n();

    a2 = v11;
  }

LABEL_20:
  swift_unknownObjectRelease_n();
}

void sub_1AF662800(uint64_t a1, char *a2, char a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = sub_1AFC7BFF8();
      if (v12)
      {
        sub_1AF5AADE8((a3 & 1) == 0, v11, v12);
      }

      else
      {
        v19 = a3 & 1;
        v9[OBJC_IVAR____TtC3VFX9VFXEffect__enabled] = v19;
        if (v9[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] != 1)
        {
          v20 = *&v9[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
          sub_1AFC7C4B8();

          sub_1AF662AEC(v21, v19, v21, v20);
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v18 = v9;
      sub_1AF6CCA00(v7, v18, a3 & 1);
    }

    goto LABEL_25;
  }

  v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v14)
  {
    v15 = a2;
    pthread_mutex_lock(v14);
    if (*(a1 + v6))
    {
LABEL_7:
      v16 = a2;
      sub_1AF662800(a1, v16, a3 & 1);
      v17 = *(a1 + v13);
      if (v17)
      {
        pthread_mutex_unlock(v17);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_25;
    }
  }

  else
  {
    v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v23 = a2;
    [v22 lock];
    if (*(a1 + v6))
    {
      goto LABEL_7;
    }
  }

  sub_1AF65E3F4();
  v24 = sub_1AFC7BFF8();
  if (v25)
  {
    sub_1AF5AADE8((a3 & 1) == 0, v24, v25);
  }

  else
  {
    v26 = a3 & 1;
    a2[OBJC_IVAR____TtC3VFX9VFXEffect__enabled] = v26;
    if (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] != 1)
    {
      v27 = *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID];
      sub_1AFC7C4B8();

      sub_1AF662AEC(v28, v26, v28, v27);
    }
  }

  sub_1AF66DB74(a1);
  v29 = *(a1 + v13);
  if (v29)
  {
    pthread_mutex_unlock(v29);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_25:
}

uint64_t sub_1AF662AEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v13)
    {
      swift_retain_n();
      pthread_mutex_lock(v13);
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      [v19 lock];
      if (*(a1 + v8))
      {
LABEL_6:

        sub_1AF662AEC(a1, a2 & 1, a3, a4);
        v14 = *(a1 + v12);
        if (v14)
        {
LABEL_7:
          pthread_mutex_unlock(v14);
LABEL_16:
        }

LABEL_15:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_16;
      }
    }

    sub_1AF65E3F4();
    sub_1AFC85268(a2 & 1, a3, a4);
    sub_1AF66DB74(a1);
    v14 = *(a1 + v12);
    if (v14)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v10 = *(v9 + 144);
  swift_retain_n();

  v11 = pthread_self();
  if (!pthread_equal(v10, v11))
  {
    v15 = *(v9 + 64);

    pthread_mutex_lock(v15);
    v16 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFC85268(a2 & 1, a3, a4);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v18 = v16(&runtime_thread_is_locked);
    --*v18;
    pthread_mutex_unlock(*(v9 + 64));

    goto LABEL_16;
  }

  sub_1AF65E3F4();
  sub_1AFC85268(a2 & 1, a3, a4);
  sub_1AF66DB74(a1);
}

void sub_1AF662D68(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v5)
  {
    v6 = *(v5 + 144);
    v7 = a2;

    v8 = pthread_self();
    if (pthread_equal(v6, v8))
    {
      sub_1AF65E3F4();
      sub_1AFC7C4B8();
      sub_1AF6FE0E4(*&v7[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (v7[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), *&v7[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity], v7[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8], v7[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned]);

      sub_1AF66DB74(a1);
    }

    else
    {
      v14 = v7;
      sub_1AF6CCB58(v5, v14);
    }

    goto LABEL_17;
  }

  v9 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v10)
  {
    v11 = a2;
    pthread_mutex_lock(v10);
    if (*(a1 + v4))
    {
LABEL_6:
      v12 = a2;
      sub_1AF662D68(a1, v12);
      v13 = *(a1 + v9);
      if (v13)
      {
        pthread_mutex_unlock(v13);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v16 = a2;
    [v15 lock];
    if (*(a1 + v4))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC7C4B8();
  sub_1AF6FE0E4(*&a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (a2[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), *&a2[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity], a2[OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8], a2[OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned]);

  sub_1AF66DB74(a1);
  v17 = *(a1 + v9);
  if (v17)
  {
    pthread_mutex_unlock(v17);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF662FE8(uint64_t a1, uint64_t *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v12)
  {
    v13 = *(v12 + 144);
    swift_retain_n();
    v14 = a4;
    swift_retain_n();
    v15 = v14;

    v16 = pthread_self();
    v66 = a4;
    if (pthread_equal(v13, v16))
    {
      sub_1AF65E3F4();
      v63 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v17 = *&v15[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
      v18 = MEMORY[0x1E69E7CC0];
      v19 = a5;
      v20 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RemapContext();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = sub_1AF42B4D0(v18);
      v22 = sub_1AF42B590(v18);
      *(v21 + 24) = v20;
      *(v21 + 32) = v22;

      *(v21 + 16) = 1;
      sub_1AF65B02C(v17, v21);
      sub_1AF630BA4(v21, v19, 0x100000000uLL, 0, v63);
      v23 = 0xFFFFFFFFLL;
      if (*(*(v21 + 24) + 16))
      {
        sub_1AF449D3C(v17);
        v24 = *(v21 + 24);
        if (*(v24 + 16))
        {
          v25 = sub_1AF449D3C(v17);
          if (v26)
          {
            v23 = *(*(v24 + 56) + 8 * v25);
          }
        }
      }

      *a2 = v23;
      sub_1AF66DB74(a1);

      a4 = v66;
    }

    else
    {
      v33 = *(v12 + 64);

      v34 = v15;

      pthread_mutex_lock(v33);
      v62 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v36 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v64 = v34;
      v37 = *&v34[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
      v38 = MEMORY[0x1E69E7CC0];
      v39 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
      type metadata accessor for RemapContext();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = sub_1AF42B4D0(v38);
      v41 = sub_1AF42B590(v38);
      *(v40 + 24) = v39;
      *(v40 + 32) = v41;

      *(v40 + 16) = 1;
      sub_1AF65B02C(v37, v40);
      sub_1AF630BA4(v40, a5, 0x100000000uLL, 0, v36);
      v42 = 0xFFFFFFFFLL;
      if (*(*(v40 + 24) + 16) && (sub_1AF449D3C(v37), v43 = *(v40 + 24), *(v43 + 16)))
      {
        v44 = sub_1AF449D3C(v37);
        a4 = v66;
        if (v45)
        {
          v42 = *(*(v43 + 56) + 8 * v44);
        }
      }

      else
      {
        a4 = v66;
      }

      *a2 = v42;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v46 = v62(&runtime_thread_is_locked);
      --*v46;
      pthread_mutex_unlock(*(v12 + 64));
    }

    goto LABEL_38;
  }

  v27 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v28 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v28)
  {
    swift_retain_n();
    v29 = a4;
    swift_retain_n();
    v30 = v29;
    pthread_mutex_lock(v28);
    if (*(a1 + v11))
    {
      goto LABEL_9;
    }

LABEL_24:
    sub_1AF65E3F4();
    v65 = **(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v67 = a4;
    v50 = *&a4[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    v51 = MEMORY[0x1E69E7CC0];
    v52 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for RemapContext();
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v53 + 24) = sub_1AF42B4D0(v51);
    v54 = sub_1AF42B590(v51);
    *(v53 + 24) = v52;
    *(v53 + 32) = v54;

    *(v53 + 16) = 1;
    sub_1AF65B02C(v50, v53);
    sub_1AF630BA4(v53, a5, 0x100000000uLL, 0, v65);
    v55 = 0xFFFFFFFFLL;
    if (*(*(v53 + 24) + 16))
    {
      sub_1AF449D3C(v50);
      v56 = *(v53 + 24);
      if (*(v56 + 16))
      {
        v57 = sub_1AF449D3C(v50);
        if (v58)
        {
          v55 = *(*(v56 + 56) + 8 * v57);
        }
      }
    }

    *a2 = v55;
    sub_1AF66DB74(a1);
    v60 = *(a1 + v27);
    a4 = v67;
    if (v60)
    {
      pthread_mutex_unlock(v60);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_37;
  }

  v47 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_retain_n();
  v48 = a4;
  swift_retain_n();
  v49 = v48;
  [v47 lock];
  if (!*(a1 + v11))
  {
    goto LABEL_24;
  }

LABEL_9:

  v31 = a4;

  sub_1AF662FE8(a1, a2, a3, v31, a5);
  if (!v6)
  {
    v59 = *(a1 + v27);
    if (v59)
    {
      pthread_mutex_unlock(v59);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_37:

LABEL_38:

    goto LABEL_39;
  }

  v32 = *(a1 + v27);
  if (v32)
  {
    pthread_mutex_unlock(v32);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_39:
}

void sub_1AF663684(uint64_t a1, void *a2, char a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      sub_1AFC894C8(v9, a3 & 1);
      sub_1AF66DB74(a1);
    }

    else
    {
      v16 = v9;
      sub_1AF6CCC7C(v7, v16, a3 & 1);
    }

    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v12)
  {
    v13 = a2;
    pthread_mutex_lock(v12);
    if (*(a1 + v6))
    {
LABEL_6:
      v14 = a2;
      sub_1AF663684(a1, v14, a3 & 1);
      v15 = *(a1 + v11);
      if (v15)
      {
        pthread_mutex_unlock(v15);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v18 = a2;
    [v17 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC894C8(a2, a3 & 1);
  sub_1AF66DB74(a1);
  v19 = *(a1 + v11);
  if (v19)
  {
    pthread_mutex_unlock(v19);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF663888(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    swift_bridgeObjectRetain_n();
    v13 = a2;

    v14 = v13;
    v15 = pthread_self();
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      v16 = *&v14[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        Strong = *&v14[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
        if (Strong)
        {
        }

        else
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v34 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v39 = v34;
            swift_once();
            v34 = v39;
          }

          v42 = 0;
          sub_1AF0D4F18(v34, &v42, 0xD000000000000021, 0x80000001AFF2E730);
          type metadata accessor for EntityManager();
          swift_allocObject();
          Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
        }
      }

      sub_1AF8204F4(a3, a4, v16, Strong);
      sub_1AF66DB74(a1);
    }

    else
    {
      v23 = *(v11 + 64);
      v24 = v14;

      pthread_mutex_lock(v23);
      v25 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      v27 = *&v24[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
      v28 = swift_weakLoadStrong();
      if (!v28)
      {
        v28 = *&v24[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
        if (v28)
        {
        }

        else
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v35 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v40 = v35;
            swift_once();
            v35 = v40;
          }

          v42 = 0;
          sub_1AF0D4F18(v35, &v42, 0xD000000000000021, 0x80000001AFF2E730);
          type metadata accessor for EntityManager();
          swift_allocObject();
          v28 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
        }
      }

      sub_1AF8204F4(a3, a4, v27, v28);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v36 = v25(&runtime_thread_is_locked);
      --*v36;
      pthread_mutex_unlock(*(v11 + 64));

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_38;
  }

  v18 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v19)
  {
    swift_bridgeObjectRetain_n();
    v20 = a2;
    pthread_mutex_lock(v19);
    if (*(a1 + v10))
    {
      goto LABEL_8;
    }

LABEL_17:
    sub_1AF65E3F4();
    v31 = *&a2[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
    v32 = swift_weakLoadStrong();
    if (!v32)
    {
      v32 = *&a2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v32)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v37 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v41 = v37;
          swift_once();
          v37 = v41;
        }

        v42 = 0;
        sub_1AF0D4F18(v37, &v42, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v32 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    sub_1AF8204F4(a3, a4, v31, v32);
    sub_1AF66DB74(a1);
    v38 = *(a1 + v18);
    if (v38)
    {
      pthread_mutex_unlock(v38);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_38;
  }

  v29 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_bridgeObjectRetain_n();
  v30 = a2;
  v5 = v4;
  [v29 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_17;
  }

LABEL_8:

  v21 = a2;
  sub_1AF663888(a1, v21, a3, a4);
  if (!v5)
  {
    v33 = *(a1 + v18);
    if (v33)
    {
      pthread_mutex_unlock(v33);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_38:
    swift_bridgeObjectRelease_n();

    return;
  }

  v22 = *(a1 + v18);
  if (v22)
  {
    pthread_mutex_unlock(v22);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF663F94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = HIDWORD(a2);
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v12)
  {
    v13 = *(v12 + 144);
    swift_bridgeObjectRetain_n();

    v14 = pthread_self();
    if (pthread_equal(v13, v14))
    {
      sub_1AF65E3F4();
      if (v10 || a2 != -1)
      {

        MEMORY[0x1EEE9AC00](v20, v21);
        sub_1AFC75668(0, sub_1AF6786A8);
      }

      sub_1AF66DB74(a1);
      swift_bridgeObjectRelease_n();
    }

    v17 = *(v12 + 64);

    pthread_mutex_lock(v17);
    v18 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    if (v10 || a2 != -1)
    {

      MEMORY[0x1EEE9AC00](v23, v24);
      sub_1AFC75668(0, sub_1AF6786A8);
    }

    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v25 = v18(&runtime_thread_is_locked);
    --*v25;
    pthread_mutex_unlock(*(v12 + 64));

LABEL_31:
    swift_bridgeObjectRelease_n();
  }

  v30 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    swift_bridgeObjectRetain_n();
    pthread_mutex_lock(v15);
    if (*(a1 + v11))
    {
      goto LABEL_8;
    }

LABEL_19:
    sub_1AF65E3F4();
    if (v10 || a2 != -1)
    {

      MEMORY[0x1EEE9AC00](v26, v27);
      sub_1AFC75668(0, sub_1AF6782A4);
    }

    sub_1AF66DB74(a1);
    goto LABEL_28;
  }

  v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  swift_bridgeObjectRetain_n();
  [v22 lock];
  if (!*(a1 + v11))
  {
    goto LABEL_19;
  }

LABEL_8:

  sub_1AF663F94(a1, a2, a3, a4, a5);
  if (!v31)
  {
LABEL_28:
    v28 = *(a1 + v30);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_31;
  }

  v16 = *(a1 + v30);
  if (v16)
  {
    pthread_mutex_unlock(v16);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1AF6643B0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;
    swift_retain_n();
    v10 = v9;

    v11 = pthread_self();
    if (pthread_equal(v8, v11))
    {
      sub_1AF65E3F4();
      sub_1AFC8D3BC(v10, a3);
      sub_1AF66DB74(a1);
    }

    else
    {
      v18 = v10;

      sub_1AF6CCD60(v7, v18, a3);
    }

    goto LABEL_17;
  }

  v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v13)
  {
    v14 = a2;
    swift_retain_n();
    v15 = v14;
    pthread_mutex_lock(v13);
    if (*(a1 + v6))
    {
LABEL_6:
      v16 = a2;

      sub_1AF6643B0(a1, v16, a3);
      v17 = *(a1 + v12);
      if (v17)
      {
        pthread_mutex_unlock(v17);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v20 = a2;
    swift_retain_n();
    v21 = v20;
    [v19 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFC8D3BC(a2, a3);
  sub_1AF66DB74(a1);
  v22 = *(a1 + v12);
  if (v22)
  {
    pthread_mutex_unlock(v22);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF664614(uint64_t a1, char *a2, char *a3, uint64_t a4, void *a5)
{
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v10)
  {
    v11 = *(v10 + 144);
    v12 = a2;
    v13 = a2;
    v14 = a3;
    swift_retain_n();
    swift_unknownObjectRetain_n();
    v15 = v13;
    v16 = v14;

    v17 = pthread_self();
    if (pthread_equal(v11, v17))
    {
      sub_1AF65E3F4();
      sub_1AF66E4E4(*&v16[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], a4, a5, 1, 0, *&v15[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
      sub_1AF66DB74(a1);
    }

    else
    {
      v25 = *(v10 + 64);
      v26 = v15;
      v27 = v16;
      v28 = a4;

      swift_unknownObjectRetain();
      pthread_mutex_lock(v25);
      v29 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      sub_1AF66E4E4(*&v27[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], v28, a5, 1, 0, *&v26[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v31 = v29(&runtime_thread_is_locked);
      --*v31;
      pthread_mutex_unlock(*(v10 + 64));

      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  v43 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v19)
  {
    v20 = a2;
    v21 = a2;
    v22 = a3;
    swift_retain_n();
    swift_unknownObjectRetain_n();
    v23 = v21;
    v24 = v22;
    pthread_mutex_lock(v19);
  }

  else
  {
    v33 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v20 = a2;
    v34 = a2;
    v35 = a3;
    swift_retain_n();
    swift_unknownObjectRetain_n();
    v36 = v34;
    v37 = v35;
    [v33 lock];
  }

  if (!*(a1 + v9))
  {
    sub_1AF65E3F4();
    v12 = v20;
    sub_1AF66E4E4(*&a3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], a4, a5, 1, 0, *&v20[OBJC_IVAR____TtC3VFX8VFXScene_entityManager]);
    sub_1AF66DB74(a1);
    v41 = *(a1 + v43);
    if (v41)
    {
      pthread_mutex_unlock(v41);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_11;
  }

  v12 = v20;
  v38 = v20;
  v39 = a3;

  swift_unknownObjectRetain();
  sub_1AF664614(a1, v38, v39, a4, a5);
  if (!v44)
  {
    v42 = *(a1 + v43);
    if (v42)
    {
      pthread_mutex_unlock(v42);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_11:
    goto LABEL_12;
  }

  v40 = *(a1 + v43);
  if (v40)
  {
    pthread_mutex_unlock(v40);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_12:
  swift_unknownObjectRelease_n();
}

void sub_1AF664A64(uint64_t a1, void *a2, char *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;
    v10 = a3;
    v11 = v9;
    v12 = v10;

    v13 = pthread_self();
    if (pthread_equal(v8, v13))
    {
      sub_1AF65E3F4();
      sub_1AF65F5E0(*&v12[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer]);
      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = v11;
      v23 = v12;
      sub_1AF6CCDA0(v7, v22, v23);
    }

    goto LABEL_17;
  }

  v30 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v14)
  {
    v15 = a2;
    v16 = a3;
    v17 = v15;
    v18 = v16;
    pthread_mutex_lock(v14);
    if (*(a1 + v6))
    {
LABEL_6:
      v19 = a2;
      v20 = a3;
      sub_1AF664A64(a1, v19, v20);
      v21 = *(a1 + v30);
      if (v21)
      {
        pthread_mutex_unlock(v21);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v25 = a2;
    v26 = a3;
    v27 = v25;
    v28 = v26;
    [v24 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AF65F5E0(*&a3[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer]);
  sub_1AF66DB74(a1);
  v29 = *(a1 + v30);
  if (v29)
  {
    pthread_mutex_unlock(v29);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF664CDC(uint64_t a1, void *a2, char *a3, void *a4, double a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v13)
  {
    v14 = *(v13 + 144);
    v15 = a2;
    v61 = a3;
    v16 = a3;
    swift_unknownObjectRetain_n();
    v17 = v15;
    v18 = v16;

    v19 = pthread_self();
    if (pthread_equal(v14, v19))
    {
      sub_1AF65E3F4();
      sub_1AF65F134(0, 1, *&v18[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], a5);
      sub_1AFCBB128(a4);
      v20 = *&v18[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
      if (v20)
      {
        v21 = v20;
        v22 = v18;
        v23 = v21;

        sub_1AF664A64(v24, v23, v22);
      }

      sub_1AF66DB74(a1);

      v25 = v61;
    }

    else
    {
      v35 = *(v13 + 64);
      v36 = v17;
      v37 = v18;
      swift_unknownObjectRetain();
      pthread_mutex_lock(v35);
      v38 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      sub_1AF65F134(0, 1, *&v37[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], a5);
      sub_1AFCBB128(a4);
      v40 = *&v37[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
      if (v40)
      {
        v41 = v40;
        v42 = v36;
        v43 = v37;
        v44 = v41;

        v46 = v43;
        v36 = v42;
        sub_1AF664A64(v45, v44, v46);
      }

      v25 = v61;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v59 = v38(&runtime_thread_is_locked);
      --*v59;
      pthread_mutex_unlock(*(v13 + 64));

      swift_unknownObjectRelease();
    }

    goto LABEL_31;
  }

  v62 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v26 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v26)
  {
    v27 = a2;
    v28 = a3;
    v29 = a3;
    swift_unknownObjectRetain_n();
    v30 = v27;
    v31 = v29;
    pthread_mutex_lock(v26);
    if (*(a1 + v12))
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_1AF65E3F4();
    v25 = v28;
    sub_1AF65F134(0, 1, *&v28[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_renderer], a5);
    sub_1AFCBB128(a4);
    v52 = *&v28[OBJC_IVAR____TtC3VFX17VFXRendererLegacy_scene];
    if (v52)
    {
      v53 = v52;
      v54 = v28;
      v55 = v53;

      sub_1AF664A64(v56, v55, v54);
    }

    sub_1AF66DB74(a1);
    v57 = *(a1 + v62);
    if (v57)
    {
      pthread_mutex_unlock(v57);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_31;
  }

  v47 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v48 = a2;
  v28 = a3;
  v49 = a3;
  swift_unknownObjectRetain_n();
  v50 = v48;
  v51 = v49;
  v6 = v5;
  [v47 lock];
  if (!*(a1 + v12))
  {
    goto LABEL_16;
  }

LABEL_8:
  v32 = a2;
  v25 = v28;
  v33 = v28;
  swift_unknownObjectRetain();
  sub_1AF664CDC(a1, v32, v33, a4, a5);
  if (!v6)
  {
    v58 = *(a1 + v62);
    if (v58)
    {
      pthread_mutex_unlock(v58);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_31:
    return swift_unknownObjectRelease_n();
  }

  v34 = *(a1 + v62);
  if (v34)
  {
    pthread_mutex_unlock(v34);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  return swift_unknownObjectRelease_n();
}

void sub_1AF66530C(uint64_t a1, void *a2, void (*a3)(uint64_t, id), void (*a4)(id), void (*a5)(uint64_t, id))
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v9)
  {
    v11 = *(v9 + 144);
    v12 = a2;

    v13 = pthread_self();
    if (pthread_equal(v11, v13))
    {
      sub_1AF65E3F4();
      a4(v12);
      sub_1AF66DB74(a1);
    }

    else
    {
      v20 = v12;
      a3(v9, v20);
    }

    goto LABEL_17;
  }

  v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v16)
  {
    v17 = a2;
    pthread_mutex_lock(v16);
    if (*(a1 + v8))
    {
LABEL_6:
      v18 = a2;
      a5(a1, v18);
      v19 = *(a1 + v15);
      if (v19)
      {
        pthread_mutex_unlock(v19);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v21 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v22 = a2;
    [v21 lock];
    if (*(a1 + v8))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  a4(a2);
  sub_1AF66DB74(a1);
  v23 = *(a1 + v15);
  if (v23)
  {
    pthread_mutex_unlock(v23);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF665518(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v12 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v13)
  {
    v35 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v20)
    {
      v21 = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v22 = v21;
      pthread_mutex_lock(v20);
      if (*(a1 + v12))
      {
LABEL_6:
        v18 = a2;
        v23 = a2;

        sub_1AF665518(a1, v23, a3, a4, a5, a6, a7, a8, a9);
        v24 = *(a1 + v35);
        if (v24)
        {
          pthread_mutex_unlock(v24);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v30 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v31 = a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v32 = v31;
      [v30 lock];
      if (*(a1 + v12))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    v18 = a2;
    sub_1AFCCA4B0(a2, a3, a4, a5, a6, a7, a8, a9);
    sub_1AF66DB74(a1);
    v33 = *(a1 + v35);
    if (v33)
    {
      pthread_mutex_unlock(v33);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_20;
  }

  v14 = *(v13 + 144);
  v15 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v16 = v15;

  v17 = pthread_self();
  if (pthread_equal(v14, v17))
  {
    sub_1AF65E3F4();
    sub_1AFCCA4B0(v16, a3, a4, a5, a6, a7, a8, a9);
    sub_1AF66DB74(a1);

    v18 = a2;
  }

  else
  {
    v25 = *(v13 + 64);
    v26 = v16;

    pthread_mutex_lock(v25);
    v27 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFCCA4B0(v26, a3, a4, a5, a6, a7, a8, a9);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v29 = v27(&runtime_thread_is_locked);
    --*v29;
    pthread_mutex_unlock(*(v13 + 64));

    swift_bridgeObjectRelease_n();

    v18 = a2;
  }

LABEL_20:
  swift_bridgeObjectRelease_n();

  return swift_bridgeObjectRelease_n();
}

void sub_1AF665970(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;
    swift_unknownObjectRetain_n();
    v10 = v9;

    v11 = pthread_self();
    if (pthread_equal(v8, v11))
    {
      sub_1AF65E3F4();
      sub_1AFCCAE98(v10, a3);
      sub_1AF66DB74(a1);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v10;
      swift_unknownObjectRetain();
      sub_1AF6CCF14(v7, v18, a3);
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v13)
  {
    v14 = a2;
    swift_unknownObjectRetain_n();
    v15 = v14;
    pthread_mutex_lock(v13);
    if (*(a1 + v6))
    {
LABEL_6:
      v16 = a2;
      swift_unknownObjectRetain();
      sub_1AF665970(a1, v16, a3);
      v17 = *(a1 + v12);
      if (v17)
      {
        pthread_mutex_unlock(v17);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      swift_unknownObjectRelease();

      goto LABEL_17;
    }
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v20 = a2;
    swift_unknownObjectRetain_n();
    v21 = v20;
    [v19 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFCCAE98(a2, a3);
  sub_1AF66DB74(a1);
  v22 = *(a1 + v12);
  if (v22)
  {
    pthread_mutex_unlock(v22);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_unknownObjectRelease();

LABEL_17:
  swift_unknownObjectRelease_n();
}

void sub_1AF665BD4(uint64_t a1, void *a2, double a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      sub_1AFCCACC0(v9);
      sub_1AF66DB74(a1);
    }

    else
    {
      v16 = v9;
      sub_1AF6CD05C(v7, v16);
    }

    goto LABEL_17;
  }

  v11 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v12)
  {
    v13 = a2;
    pthread_mutex_lock(v12);
    if (*(a1 + v6))
    {
LABEL_6:
      v14 = a2;
      sub_1AF665BD4(a1, v14, a3);
      v15 = *(a1 + v11);
      if (v15)
      {
        pthread_mutex_unlock(v15);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v18 = a2;
    [v17 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFCCACC0(a2);
  sub_1AF66DB74(a1);
  v19 = *(a1 + v11);
  if (v19)
  {
    pthread_mutex_unlock(v19);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF665DD8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v15)
    {
      v16 = a2;
      swift_unknownObjectRetain_n();
      v17 = v16;
      pthread_mutex_lock(v15);
      if (*(a1 + v8))
      {
LABEL_6:
        v18 = a2;
        swift_unknownObjectRetain();
        sub_1AF665DD8(a1, v18, a3, a4);
        v19 = *(a1 + v14);
        if (v19)
        {
          pthread_mutex_unlock(v19);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    else
    {
      v25 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v26 = a2;
      swift_unknownObjectRetain_n();
      v27 = v26;
      [v25 lock];
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCCAE98(a2, a3);
    sub_1AF66DB74(a1);
    v28 = *(a1 + v14);
    if (v28)
    {
      pthread_mutex_unlock(v28);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    swift_unknownObjectRelease();

    goto LABEL_20;
  }

  v10 = *(v9 + 144);
  v11 = a2;
  swift_unknownObjectRetain_n();
  v12 = v11;

  v13 = pthread_self();
  if (pthread_equal(v10, v13))
  {
    sub_1AF65E3F4();
    sub_1AFCCAE98(v12, a3);
    sub_1AF66DB74(a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = *(v9 + 64);
    v21 = v12;
    swift_unknownObjectRetain();
    pthread_mutex_lock(v20);
    v22 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFCCAE98(v21, a3);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v24 = v22(&runtime_thread_is_locked);
    --*v24;
    pthread_mutex_unlock(*(v9 + 64));

    swift_unknownObjectRelease_n();
  }

LABEL_20:
  swift_unknownObjectRelease_n();
}

void sub_1AF6660DC(uint64_t a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, __n128 a6)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v9)
  {
    v10 = *(v9 + 144);
    v11 = a2;

    v12 = pthread_self();
    if (pthread_equal(v10, v12))
    {
      sub_1AF65E3F4();
      sub_1AFCCB5C0(v11, a3, a4, a5, a6);
      sub_1AF66DB74(a1);
    }

    else
    {
      v18 = v11;
      sub_1AF6CD148(v9, v18, a3, a4, a5, a6);
    }

    goto LABEL_17;
  }

  v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v14)
  {
    v15 = a2;
    pthread_mutex_lock(v14);
    if (*(a1 + v8))
    {
LABEL_6:
      v16 = a2;
      sub_1AF6660DC(a1, v16, a3, a4, a5, a6);
      v17 = *(a1 + v13);
      if (v17)
      {
        pthread_mutex_unlock(v17);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v20 = a2;
    [v19 lock];
    if (*(a1 + v8))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AFCCB5C0(a2, a3, a4, a5, a6);
  sub_1AF66DB74(a1);
  v21 = *(a1 + v13);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF6662F4(uint64_t a1, _BYTE *a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v12 = a2;
  v14 = HIDWORD(a3);
  v15 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v16)
  {
    v82 = HIDWORD(a3);
    v17 = *(v16 + 144);
    v18 = a2;

    v19 = pthread_self();
    if (pthread_equal(v17, v19))
    {
      sub_1AF65E3F4();
      if ((v18[OBJC_IVAR___VFXREScene_cameraEntity + 8] & 1) == 0)
      {
        v20 = *&v18[OBJC_IVAR___VFXREScene_cameraEntity];
        v21 = v12;
        v22 = OBJC_IVAR___VFXREScene_scene;
        sub_1AF68B2F4(v20, *(*&v18[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a4);
        sub_1AF68B2D8(v20, *(*&v18[v22] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a5);
        v23 = *&v18[v22];
        v12 = v21;
        sub_1AF68B310(v20, *(v23 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a6);
      }

      v24 = *(*&v18[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
      if ((v82 || a3 != -1) && (a3 & 0x80000000) == 0 && a3 < *(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v38 = (*(v24 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
        v39 = *(v38 + 2);
        if (v82 == 0xFFFFFFFF || v38[2] == v82)
        {
          v40 = *(*(v24 + 144) + 8 * *v38 + 32);
          v41 = *(v40 + 48);
          v42 = (v41 + 32);
          v43 = *(v41 + 16) + 1;
          while (--v43)
          {
            v44 = v42 + 5;
            v45 = *v42;
            v42 += 5;
            if (v45 == &type metadata for ProjectionMatrix)
            {
              v46 = (&(*(v44 - 2))[4 * v39] + *(v40 + 128));
              *v46 = a7;
              v46[1] = a8;
              v46[2] = a9;
              v46[3] = a10;
              break;
            }
          }
        }
      }

      sub_1AF66DB74(a1);
    }

    else
    {
      v30 = *(v16 + 64);
      v31 = v18;
      pthread_mutex_lock(v30);
      v32 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      if ((v31[OBJC_IVAR___VFXREScene_cameraEntity + 8] & 1) == 0)
      {
        v34 = OBJC_IVAR___VFXREScene_scene;
        v35 = *&v31[OBJC_IVAR___VFXREScene_cameraEntity];
        sub_1AF68B2F4(v35, *(*&v31[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a4);
        sub_1AF68B2D8(v35, *(*&v31[v34] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a5);
        sub_1AF68B310(v35, *(*&v31[v34] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a6);
      }

      v36 = *(*&v31[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
      if ((v82 || a3 != -1) && (a3 & 0x80000000) == 0 && a3 < *(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v56 = (*(v36 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
        v57 = *(v56 + 2);
        if (v82 == 0xFFFFFFFF || v56[2] == v82)
        {
          v58 = *(*(v36 + 144) + 8 * *v56 + 32);
          v59 = *(v58 + 48);
          v60 = (v59 + 32);
          v61 = *(v59 + 16) + 1;
          while (--v61)
          {
            v62 = v60 + 5;
            v63 = *v60;
            v60 += 5;
            if (v63 == &type metadata for ProjectionMatrix)
            {
              v64 = (&(*(v62 - 2))[4 * v57] + *(v58 + 128));
              *v64 = a7;
              v64[1] = a8;
              v64[2] = a9;
              v64[3] = a10;
              break;
            }
          }
        }
      }

      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v37 = v32(&runtime_thread_is_locked);
      --*v37;
      pthread_mutex_unlock(*(v16 + 64));
    }

    goto LABEL_61;
  }

  v25 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v26 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v26)
  {
    v27 = a2;
    pthread_mutex_lock(v26);
    if (*(a1 + v15))
    {
      goto LABEL_10;
    }

LABEL_31:
    sub_1AF65E3F4();
    v49 = &v12[OBJC_IVAR___VFXREScene_cameraEntity];
    if ((v12[OBJC_IVAR___VFXREScene_cameraEntity + 8] & 1) == 0)
    {
      v50 = v12;
      v51 = OBJC_IVAR___VFXREScene_scene;
      v52 = *v49;
      sub_1AF68B2F4(*v49, *(*&v50[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a4);
      sub_1AF68B2D8(v52, *(*&v50[v51] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a5);
      v53 = *&v50[v51];
      v12 = v50;
      sub_1AF68B310(v52, *(v53 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), a6);
    }

    v54 = *(*&v12[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    if ((v14 || a3 != -1) && (a3 & 0x80000000) == 0 && a3 < *(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v66 = (*(v54 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
      v67 = *(v66 + 2);
      if (v14 == 0xFFFFFFFF || v66[2] == v14)
      {
        v68 = *(*(v54 + 144) + 8 * *v66 + 32);
        v69 = *(v68 + 48);
        v70 = (v69 + 32);
        v71 = *(v69 + 16) + 1;
        while (--v71)
        {
          v72 = v70 + 5;
          v73 = *v70;
          v70 += 5;
          if (v73 == &type metadata for ProjectionMatrix)
          {
            v74 = (&(*(v72 - 2))[4 * v67] + *(v68 + 128));
            *v74 = a7;
            v74[1] = a8;
            v74[2] = a9;
            v74[3] = a10;
            break;
          }
        }
      }
    }

    sub_1AF66DB74(a1);
    v55 = *(a1 + v25);
    if (v55)
    {
      pthread_mutex_unlock(v55);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_61;
  }

  v47 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v48 = a2;
  [v47 lock];
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_10:
  v28 = v12;
  sub_1AF6662F4(a1, v28, a3, a4, a5, a6, a7, a8, a9, a10);
  if (!v10)
  {
    v65 = *(a1 + v25);
    if (v65)
    {
      pthread_mutex_unlock(v65);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_61:
    return;
  }

  v29 = *(a1 + v25);
  if (v29)
  {
    pthread_mutex_unlock(v29);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }
}

void sub_1AF6669C4(uint64_t a1, char *a2, __n128 a3)
{
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v6)
  {
    v7 = *(v6 + 144);
    v8 = a2;

    v9 = pthread_self();
    if (pthread_equal(v7, v9))
    {
      sub_1AF65E3F4();
      v10 = *(*&v8[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
      MEMORY[0x1EEE9AC00](v11, v12);
      v13 = *(v10 + 184);

      sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v13, sub_1AF6786C8);

      sub_1AF66DB74(a1);
    }

    else
    {
      v19 = v8;
      sub_1AF6CD23C(v6, v19);
    }

    goto LABEL_17;
  }

  v14 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v15)
  {
    v16 = a2;
    pthread_mutex_lock(v15);
    if (*(a1 + v5))
    {
LABEL_6:
      v17 = a2;
      sub_1AF6669C4(a1, v17, a3);
      v18 = *(a1 + v14);
      if (v18)
      {
        pthread_mutex_unlock(v18);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v20 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v21 = a2;
    [v20 lock];
    if (*(a1 + v5))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  v22 = *(*&a2[OBJC_IVAR___VFXREScene_scene] + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = *(v22 + 184);

  sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v25, sub_1AF678174);

  sub_1AF66DB74(a1);
  v26 = *(a1 + v14);
  if (v26)
  {
    pthread_mutex_unlock(v26);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF666CF8(uint64_t a1, char *a2, double a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v7)
  {
    v8 = *(v7 + 144);
    v9 = a2;

    v10 = pthread_self();
    if (pthread_equal(v8, v10))
    {
      sub_1AF65E3F4();
      v11 = *&v9[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

      sub_1AF65F134(0, 1, v11, a3);

      sub_1AF66DB74(a1);
    }

    else
    {
      v17 = v9;
      sub_1AF6CD3C0(v7, v17, a3);
    }

    goto LABEL_17;
  }

  v12 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v13)
  {
    v14 = a2;
    pthread_mutex_lock(v13);
    if (*(a1 + v6))
    {
LABEL_6:
      v15 = a2;
      sub_1AF666CF8(a1, v15, a3);
      v16 = *(a1 + v12);
      if (v16)
      {
        pthread_mutex_unlock(v16);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v19 = a2;
    [v18 lock];
    if (*(a1 + v6))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  v20 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  sub_1AF65F134(0, 1, v20, a3);

  sub_1AF66DB74(a1);
  v21 = *(a1 + v12);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

void sub_1AF666F54(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v5)
  {
    v6 = *(v5 + 144);
    v7 = a2;

    v8 = pthread_self();
    if (pthread_equal(v6, v8))
    {
      sub_1AF65E3F4();
      sub_1AF6F92A4(0x200000000);
      sub_1AF66DB74(a1);
    }

    else
    {
      v14 = v7;
      sub_1AF6CD4D4(v5, v14);
    }

    goto LABEL_17;
  }

  v9 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v10 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v10)
  {
    v11 = a2;
    pthread_mutex_lock(v10);
    if (*(a1 + v4))
    {
LABEL_6:
      v12 = a2;
      sub_1AF666F54(a1, v12);
      v13 = *(a1 + v9);
      if (v13)
      {
        pthread_mutex_unlock(v13);
      }

      else
      {
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
    v16 = a2;
    [v15 lock];
    if (*(a1 + v4))
    {
      goto LABEL_6;
    }
  }

  sub_1AF65E3F4();
  sub_1AF6F92A4(0x200000000);
  sub_1AF66DB74(a1);
  v17 = *(a1 + v9);
  if (v17)
  {
    pthread_mutex_unlock(v17);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

LABEL_17:
}

uint64_t sub_1AF667198(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v11 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v12 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);

  if (!v12)
  {
    v15 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      swift_retain_n();
      swift_retain_n();
      pthread_mutex_lock(v16);
      if (*(a1 + v11))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      swift_retain_n();
      swift_retain_n();
      [v18 lock];
      if (*(a1 + v11))
      {
LABEL_7:

        sub_1AF667198(a1, a2, a3, a4);
        if (v5)
        {
          v17 = *(a1 + v15);
          if (!v17)
          {
LABEL_9:
            [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
LABEL_15:

            goto LABEL_16;
          }

LABEL_14:
          pthread_mutex_unlock(v17);
          goto LABEL_15;
        }

LABEL_13:
        v17 = *(a1 + v15);
        if (!v17)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCD348C(a2, a3, a4);
    sub_1AF66DB74(a1);
    goto LABEL_13;
  }

  v13 = *(v12 + 144);
  swift_retain_n();
  swift_retain_n();

  v14 = pthread_self();
  if (pthread_equal(v13, v14))
  {
    sub_1AF65E3F4();
    sub_1AFCD348C(a2, a3, a4);
    sub_1AF66DB74(a1);
  }

  else
  {

    sub_1AF6CD5D4(v12, a2, a3, a4);
  }

LABEL_16:
}

void sub_1AF667400(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v9 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v9)
  {
    v13 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v14 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v14)
    {
      v15 = a3;
      pthread_mutex_lock(v14);
      if (*(a1 + v8))
      {
LABEL_6:
        v16 = a3;
        sub_1AF667400(a1, a2, v16, a4);
        v17 = *(a1 + v13);
        if (v17)
        {
          pthread_mutex_unlock(v17);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v23 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v24 = a3;
      [v23 lock];
      if (*(a1 + v8))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCD51F4(a2, a3, a4);
    sub_1AF66DB74(a1);
    v25 = *(a1 + v13);
    if (v25)
    {
      pthread_mutex_unlock(v25);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_20;
  }

  v10 = *(v9 + 144);
  v11 = a3;

  v12 = pthread_self();
  if (pthread_equal(v10, v12))
  {
    sub_1AF65E3F4();
    sub_1AFCD51F4(a2, v11, a4);
    sub_1AF66DB74(a1);
  }

  else
  {
    v18 = *(v9 + 64);
    v19 = v11;
    pthread_mutex_lock(v18);
    v20 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFCD51F4(a2, v19, a4);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v22 = v20(&runtime_thread_is_locked);
    --*v22;
    pthread_mutex_unlock(*(v9 + 64));
  }

LABEL_20:
}

void sub_1AF667698(uint64_t a1, void *a2, void *a3, void **a4)
{
  v7 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v8)
  {
    v36 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v16 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v16)
    {
      v17 = a2;
      v18 = a3;
      v19 = v17;
      v20 = v18;
      pthread_mutex_lock(v16);
      if (*(a1 + v7))
      {
LABEL_6:
        v21 = a2;
        v22 = a3;
        sub_1AF667698(a1, v21, v22, a4);
        v23 = *(a1 + v36);
        if (v23)
        {
          pthread_mutex_unlock(v23);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        v15 = a2;
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v31 = a2;
      v32 = a3;
      v33 = v31;
      v34 = v32;
      [v30 lock];
      if (*(a1 + v7))
      {
        goto LABEL_6;
      }
    }

    sub_1AF65E3F4();
    v15 = a2;
    sub_1AFCD53C8(a2, a3, a4);
    sub_1AF66DB74(a1);
    v35 = *(a1 + v36);
    if (v35)
    {
      pthread_mutex_unlock(v35);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_20;
  }

  v9 = *(v8 + 144);
  v10 = a2;
  v11 = a3;
  v12 = v10;
  v13 = v11;

  v14 = pthread_self();
  if (pthread_equal(v9, v14))
  {
    sub_1AF65E3F4();
    sub_1AFCD53C8(v12, v13, a4);
    sub_1AF66DB74(a1);

    v15 = a2;
  }

  else
  {
    v24 = *(v8 + 64);
    v25 = v12;
    v26 = v13;
    pthread_mutex_lock(v24);
    v27 = runtime_thread_is_locked;
    is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
    ++*is_locked;
    if (swift_weakLoadStrong())
    {
      sub_1AF65E3F4();
    }

    sub_1AFCD53C8(v25, v26, a4);
    if (swift_weakLoadStrong())
    {
      sub_1AF65E37C();
    }

    v29 = v27(&runtime_thread_is_locked);
    --*v29;
    pthread_mutex_unlock(*(v8 + 64));

    v15 = a2;
  }

LABEL_20:
}

void sub_1AF6679A8(uint64_t a1, char *a2, char *a3)
{
  v6 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v7)
  {
    v40 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v19)
    {
      v20 = a2;
      v21 = a3;
      v22 = v20;
      v23 = v21;
      pthread_mutex_lock(v19);
      if (*(a1 + v6))
      {
LABEL_8:
        v24 = a2;
        v25 = a3;
        sub_1AF6679A8(a1, v24, v25);
        v26 = *(a1 + v40);
        if (v26)
        {
          pthread_mutex_unlock(v26);
        }

        else
        {
          [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        }

        goto LABEL_21;
      }
    }

    else
    {
      v29 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v30 = a2;
      v31 = a3;
      v32 = v30;
      v33 = v31;
      [v29 lock];
      if (*(a1 + v6))
      {
        goto LABEL_8;
      }
    }

    sub_1AF65E3F4();
    sub_1AF6FF6AC(*&a3[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (a3[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), 0, 1);
    v34 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
    v35 = a3;
    v36 = sub_1AF670384(&a2[v34], v35);

    v37 = *&a2[v34];
    if (v37 >> 62)
    {
      v38 = sub_1AFDFE108();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF64D4C0(v36, v38);
    sub_1AF66DB74(a1);
    v39 = *(a1 + v40);
    if (v39)
    {
      pthread_mutex_unlock(v39);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_21;
  }

  v8 = *(v7 + 144);
  v9 = a2;
  v10 = a3;
  v11 = v9;
  v12 = v10;

  v13 = pthread_self();
  if (pthread_equal(v8, v13))
  {
    sub_1AF65E3F4();
    sub_1AF6FF6AC(*&v12[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (v12[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), 0, 1);
    v14 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
    v15 = v12;
    v16 = sub_1AF670384(&v11[v14], v15);

    v17 = *&v11[v14];
    if (v17 >> 62)
    {
      v18 = sub_1AFDFE108();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1AF64D4C0(v16, v18);
    sub_1AF66DB74(a1);
  }

  else
  {
    v27 = v11;
    v28 = v12;
    sub_1AF6CD700(v7, v27, v28);
  }

LABEL_21:
}

void sub_1AF667D84(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v11)
  {
    v12 = *(v11 + 144);
    v13 = a3;
    swift_bridgeObjectRetain_n();
    v14 = v13;

    v15 = pthread_self();
    if (pthread_equal(v12, v15))
    {
      sub_1AF65E3F4();
      *a2 = sub_1AF822738(a4, a5);
      sub_1AF66DB74(a1);
    }

    else
    {
      v22 = *(v11 + 64);
      v23 = v14;

      pthread_mutex_lock(v22);
      v24 = runtime_thread_is_locked;
      is_locked = runtime_thread_is_locked(&runtime_thread_is_locked);
      ++*is_locked;
      if (swift_weakLoadStrong())
      {
        sub_1AF65E3F4();
      }

      *a2 = sub_1AF822738(a4, a5);
      if (swift_weakLoadStrong())
      {
        sub_1AF65E37C();
      }

      v26 = v24(&runtime_thread_is_locked);
      --*v26;
      pthread_mutex_unlock(*(v11 + 64));

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_14;
  }

  v16 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
  v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
  if (v17)
  {
    v18 = a3;
    swift_bridgeObjectRetain_n();
    v19 = v18;
    pthread_mutex_lock(v17);
    if (*(a1 + v10))
    {
      goto LABEL_6;
    }

LABEL_16:
    sub_1AF65E3F4();
    *a2 = sub_1AF822738(a4, a5);
    sub_1AF66DB74(a1);
    v30 = *(a1 + v16);
    if (v30)
    {
      pthread_mutex_unlock(v30);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

    goto LABEL_14;
  }

  v27 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
  v28 = a3;
  swift_bridgeObjectRetain_n();
  v29 = v28;
  [v27 lock];
  if (!*(a1 + v10))
  {
    goto LABEL_16;
  }

LABEL_6:
  v20 = a3;

  sub_1AF667D84(a1, a2, v20, a4, a5);
  if (!v32)
  {
    v31 = *(a1 + v16);
    if (v31)
    {
      pthread_mutex_unlock(v31);
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
    }

LABEL_14:
    swift_bridgeObjectRelease_n();

    return;
  }

  v21 = *(a1 + v16);
  if (v21)
  {
    pthread_mutex_unlock(v21);
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
  }

  swift_bridgeObjectRelease_n();
}