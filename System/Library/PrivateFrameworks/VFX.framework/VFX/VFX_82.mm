void sub_1AF76E344(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_17;
  }

  sub_1AF770FFC(a1 + 32, &v49, sub_1AF771224);
  v8 = v49;
  v7 = v50;
  v47 = v49;
  v48 = v50;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v41 = v51;
  v42 = v52;
  v9 = *a3;
  v10 = sub_1AF419914(v49, v50);
  v12 = v11;
  v13 = v9[2] + ((v11 & 1) == 0);
  if (v9[3] < v13)
  {
    sub_1AF82C8F0(v13, a2 & 1);
    v10 = sub_1AF419914(v8, v7);
    if ((v12 & 1) != (v14 & 1))
    {
      goto LABEL_4;
    }

LABEL_7:
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v8;
    v19[1] = v7;
    v20 = v18[7] + 88 * v10;
    v21 = v42;
    *v20 = v41;
    *(v20 + 16) = v21;
    v22 = v43;
    v23 = v44;
    v24 = v45;
    *(v20 + 80) = v46;
    *(v20 + 48) = v23;
    *(v20 + 64) = v24;
    *(v20 + 32) = v22;
    ++v18[2];
    v25 = v4 - 1;
    if (!v25)
    {
LABEL_17:

      return;
    }

    v26 = a1 + 136;
    while (1)
    {
      sub_1AF770FFC(v26, &v49, sub_1AF771224);
      v28 = v49;
      v27 = v50;
      v47 = v49;
      v48 = v50;
      v43 = v53;
      v44 = v54;
      v45 = v55;
      v46 = v56;
      v41 = v51;
      v42 = v52;
      v29 = *a3;
      v30 = sub_1AF419914(v49, v50);
      v32 = v31;
      if (v29[3] < (v29[2] + ((v31 & 1) == 0)))
      {
        sub_1AF82C8F0(v29[2] + ((v31 & 1) == 0), 1);
        v30 = sub_1AF419914(v28, v27);
        if ((v32 & 1) != (v33 & 1))
        {
          break;
        }
      }

      if (v32)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v35 = (v34[6] + 16 * v30);
      *v35 = v28;
      v35[1] = v27;
      v36 = v34[7] + 88 * v30;
      v37 = v42;
      *v36 = v41;
      *(v36 + 16) = v37;
      v38 = v43;
      v39 = v44;
      v40 = v45;
      *(v36 + 80) = v46;
      *(v36 + 48) = v39;
      *(v36 + 64) = v40;
      *(v36 + 32) = v38;
      ++v34[2];
      v26 += 104;
      if (!--v25)
      {
        goto LABEL_17;
      }
    }

LABEL_4:
    sub_1AFDFF1A8();
    __break(1u);
    goto LABEL_17;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v17 = v10;
  sub_1AF844804();
  v10 = v17;
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = swift_allocError();
  swift_willThrow();

  v57 = v15;
  v16 = v15;
  sub_1AF61FF58();
  if (swift_dynamicCast())
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    sub_1AF761390(&v41);
  }
}

uint64_t sub_1AF76E740(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v17 = swift_slowAlloc();
  v18 = v5;
  v19 = sub_1AF76EC88(v17, v10, v6, a3);
  result = MEMORY[0x1B271DEA0](v17, -1, -1);
  if (!v18)
  {
    return v19;
  }

  return result;
}

uint64_t sub_1AF76E8B0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    sub_1AF770DF0();
    sub_1AF770E44();
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFCD68();
    sub_1AF770F40(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if (v15)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF76EA98(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = 0;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_10:
    v14 = (*(a3 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    sub_1AF4455CC(*(a3 + 56) + 88 * v10, v22);
    v20[0] = v15;
    v20[1] = v16;
    sub_1AF4455CC(v22, &v21);
    swift_bridgeObjectRetain_n();
    LOBYTE(v15) = sub_1AFDFD188();
    sub_1AF770F40(v20, sub_1AF7711B0);
    sub_1AF761390(v22);

    if (v15)
    {
      *(a1 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++v23;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return sub_1AF8FAF28(a1, a2, v23, a3);
    }

    v13 = *(a3 + 8 * v4 + 72);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF76EC88(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = a1;
    v7 = a2;
    bzero(a1, 8 * a2);
    a1 = v6;
    a2 = v7;
  }

  v8 = a4(a1, a2, a3);

  return v8;
}

uint64_t sub_1AF76ED08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFBCE8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  sub_1AFDFBC68();
  sub_1AFDFBC58();
  v13 = sub_1AFDFBC48();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v12, v4);
  if (v13)
  {
    v26[0] = 95;
    v26[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](a1, a2);
  }

  else
  {
  }

  v15 = sub_1AFDFD048();
  if (v15)
  {
    v16 = v15;
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC07154(0, v15 & ~(v15 >> 63), 0);
    v17 = v26[0];
    do
    {
      v18 = sub_1AFDFD1C8();
      v20 = v19;
      if ((sub_1AFDFCD48() & 1) == 0 && (sub_1AFDFCD58() & 1) == 0)
      {

        v20 = 0xE100000000000000;
        v18 = 95;
      }

      v26[0] = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC07154(v21 > 1, v22 + 1, 1);
        v17 = v26[0];
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      sub_1AFDFD058();
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v26[0] = v17;
  v24 = MEMORY[0x1E69E5EE0];
  sub_1AF770E98(0, &qword_1EB638F78, MEMORY[0x1E69E5EE0], MEMORY[0x1E69E62F8]);
  sub_1AF76EFD8(&qword_1EB638F80, &qword_1EB638F78, v24);
  return sub_1AFDFD1D8();
}

uint64_t sub_1AF76EFD8(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF76F030(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, &qword_1EB63E670, &_s12MetadataTypeON, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF76F0C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF770E98(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF76F144()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

char *sub_1AF76F190(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 39)
  {
    sub_1AF44CBE4(a2, v16);
    sub_1AF449D40(v16, v17);
    sub_1AF771140(0, &qword_1ED72F950);
    swift_dynamicCast();
    v3 = sub_1AF42231C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1AF42231C(v4 > 1, v5 + 1, 1, v3);
    }

    *(v3 + 2) = v6;
    *&v3[8 * v5 + 32] = v14;
    v7 = v3;
    sub_1AF44CBE4(a2, v16);
    sub_1AF449D40(v16, v17);
    swift_dynamicCast();
    result = v7;
    v9 = *(v7 + 3);
    if ((v5 + 2) > (v9 >> 1))
    {
      result = sub_1AF42231C(v9 > 1, v5 + 2, 1, v7);
    }

    *(result + 2) = v5 + 2;
    *&result[8 * v6 + 32] = v15;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    *v16 = v17[0];
    MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF33920);
    v11 = *(a1 + 16);
    v17[0] = *a1;
    v17[1] = v11;
    v18 = *(a1 + 32);
    sub_1AFDFE458();
    v12 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v13 = v12;
      swift_once();
      v12 = v13;
    }

    *&v17[0] = 0;
    sub_1AF0D4F18(v12, v17, v16[0], v16[1]);

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

char *sub_1AF76F418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 > 15)
  {
    if (v3 == 16)
    {
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      sub_1AF7710D8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      swift_dynamicCast();
      v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v26 = *(v4 + 2);
      v25 = *(v4 + 3);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v4 = sub_1AF41FDF8(v25 > 1, v26 + 1, 1, v4);
      }

      *(v4 + 2) = v27;
      *&v4[4 * v26 + 32] = v44;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v28 = v45;
      v29 = *(v4 + 3);
      v30 = v26 + 2;
      if ((v26 + 2) > (v29 >> 1))
      {
        v41 = sub_1AF41FDF8(v29 > 1, v26 + 2, 1, v4);
        v28 = v45;
        v4 = v41;
      }

      *(v4 + 2) = v30;
      *&v4[4 * v27 + 32] = v28;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v31 = v46;
      v32 = *(v4 + 3);
      v33 = v26 + 3;
      if ((v26 + 3) > (v32 >> 1))
      {
        v42 = sub_1AF41FDF8(v32 > 1, v26 + 3, 1, v4);
        v31 = v46;
        v4 = v42;
      }

      *(v4 + 2) = v33;
      *&v4[4 * v30 + 32] = v31;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v34 = v47;
      v35 = *(v4 + 3);
      if ((v26 + 4) > (v35 >> 1))
      {
        v43 = sub_1AF41FDF8(v35 > 1, v26 + 4, 1, v4);
        v34 = v47;
        v4 = v43;
      }

      *(v4 + 2) = v26 + 4;
      *&v4[4 * v33 + 32] = v34;
    }

    else
    {
      if (v3 != 40)
      {
LABEL_18:
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v49[0] = 0;
        *(&v49[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        *v48 = v49[0];
        MEMORY[0x1B2718AE0](0xD000000000000044, 0x80000001AFF33880);
        v18 = *(a1 + 16);
        v49[0] = *a1;
        v49[1] = v18;
        v50 = *(a1 + 32);
        sub_1AFDFE458();
        v19 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v37 = v19;
          swift_once();
          v19 = v37;
        }

        *&v49[0] = 0;
        sub_1AF0D4F18(v19, v49, v48[0], v48[1]);

        return MEMORY[0x1E69E7CC0];
      }

      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      sub_1AF771140(0, &qword_1ED72F958);
      swift_dynamicCast();
      v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1AF41FDF8(v13 > 1, v14 + 1, 1, v4);
      }

      *(v4 + 2) = v15;
      *&v4[4 * v14 + 32] = v44;
      sub_1AF44CBE4(a2, v48);
      sub_1AF449D40(v48, v49);
      swift_dynamicCast();
      v16 = *(v4 + 3);
      if ((v14 + 2) > (v16 >> 1))
      {
        v4 = sub_1AF41FDF8(v16 > 1, v14 + 2, 1, v4);
      }

      *(v4 + 2) = v14 + 2;
      *&v4[4 * v15 + 32] = v45;
    }
  }

  else
  {
    if (v3 != 14)
    {
      if (v3 == 15)
      {
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        sub_1AF7710D8(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        swift_dynamicCast();
        v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v4 = sub_1AF41FDF8(v5 > 1, v6 + 1, 1, v4);
        }

        *(v4 + 2) = v7;
        *&v4[4 * v6 + 32] = v44;
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        swift_dynamicCast();
        v8 = v45;
        v9 = *(v4 + 3);
        v10 = v6 + 2;
        if ((v6 + 2) > (v9 >> 1))
        {
          v38 = sub_1AF41FDF8(v9 > 1, v6 + 2, 1, v4);
          v8 = v45;
          v4 = v38;
        }

        *(v4 + 2) = v10;
        *&v4[4 * v7 + 32] = v8;
        sub_1AF44CBE4(a2, v48);
        sub_1AF449D40(v48, v49);
        swift_dynamicCast();
        v11 = v46;
        v12 = *(v4 + 3);
        if ((v6 + 3) > (v12 >> 1))
        {
          v39 = sub_1AF41FDF8(v12 > 1, v6 + 3, 1, v4);
          v11 = v46;
          v4 = v39;
        }

        *(v4 + 2) = v6 + 3;
        *&v4[4 * v10 + 32] = v11;
        return v4;
      }

      goto LABEL_18;
    }

    sub_1AF44CBE4(a2, v48);
    sub_1AF449D40(v48, v49);
    sub_1AF7710D8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    swift_dynamicCast();
    v4 = sub_1AF41FDF8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v4 + 2);
    v20 = *(v4 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v4 = sub_1AF41FDF8(v20 > 1, v21 + 1, 1, v4);
    }

    *(v4 + 2) = v22;
    *&v4[4 * v21 + 32] = v44;
    sub_1AF44CBE4(a2, v48);
    sub_1AF449D40(v48, v49);
    swift_dynamicCast();
    v23 = v45;
    v24 = *(v4 + 3);
    if ((v21 + 2) > (v24 >> 1))
    {
      v40 = sub_1AF41FDF8(v24 > 1, v21 + 2, 1, v4);
      v23 = v45;
      v4 = v40;
    }

    *(v4 + 2) = v21 + 2;
    *&v4[4 * v22 + 32] = v23;
  }

  return v4;
}

char *sub_1AF76FC64(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  switch(v3)
  {
    case 24:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float4x3(0);
      swift_dynamicCast();
      v39 = v41;
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v4 = sub_1AF42250C(v19 > 1, v20 + 1, 1, v4);
      }

      *(v4 + 2) = v21;
      *&v4[16 * v20 + 32] = v39;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v22 = v42;
      v23 = *(v4 + 3);
      v24 = v20 + 2;
      if ((v20 + 2) > (v23 >> 1))
      {
        v34 = sub_1AF42250C(v23 > 1, v20 + 2, 1, v4);
        v22 = v42;
        v4 = v34;
      }

      *(v4 + 2) = v24;
      *&v4[16 * v21 + 32] = v22;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v25 = v43;
      v26 = *(v4 + 3);
      v7 = v20 + 3;
      if ((v20 + 3) > (v26 >> 1))
      {
        v35 = sub_1AF42250C(v26 > 1, v20 + 3, 1, v4);
        v25 = v43;
        v4 = v35;
      }

      *(v4 + 2) = v7;
      *&v4[16 * v24 + 32] = v25;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v8 = v44;
      v9 = *(v4 + 3);
      v10 = v20 + 4;
      goto LABEL_21;
    case 21:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v38 = v41;
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1AF42250C(v11 > 1, v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      *&v4[16 * v12 + 32] = v38;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v14 = v42;
      v15 = *(v4 + 3);
      v16 = v12 + 2;
      if ((v12 + 2) > (v15 >> 1))
      {
        v32 = sub_1AF42250C(v15 > 1, v12 + 2, 1, v4);
        v14 = v42;
        v4 = v32;
      }

      *(v4 + 2) = v16;
      *&v4[16 * v13 + 32] = v14;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v17 = v43;
      v18 = *(v4 + 3);
      if ((v12 + 3) > (v18 >> 1))
      {
        v33 = sub_1AF42250C(v18 > 1, v12 + 3, 1, v4);
        v17 = v43;
        v4 = v33;
      }

      *(v4 + 2) = v12 + 3;
      *&v4[16 * v16 + 32] = v17;
      break;
    case 18:
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      type metadata accessor for simd_float2x3(0);
      swift_dynamicCast();
      v37 = v45[0];
      v4 = sub_1AF42250C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1AF42250C(v5 > 1, v6 + 1, 1, v4);
      }

      *(v4 + 2) = v7;
      *&v4[16 * v6 + 32] = v37;
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      swift_dynamicCast();
      v8 = v45[1];
      v9 = *(v4 + 3);
      v10 = v6 + 2;
LABEL_21:
      if (v10 > (v9 >> 1))
      {
        v40 = v8;
        v31 = sub_1AF42250C(v9 > 1, v10, 1, v4);
        v8 = v40;
        v4 = v31;
      }

      *(v4 + 2) = v10;
      *&v4[16 * v7 + 32] = v8;
      return v4;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v46 = v41;
      MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF337E0);
      v28 = a1[1];
      v41 = *a1;
      v42 = v28;
      *&v43 = *(a1 + 4);
      sub_1AFDFE458();
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v36 = v29;
        swift_once();
        v29 = v36;
      }

      *&v41 = 0;
      sub_1AF0D4F18(v29, &v41, v46[0], v46[1]);

      return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

char *sub_1AF770270(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  switch(v3)
  {
    case 25:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v39 = v41;
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v4 = sub_1AF42053C(v19 > 1, v20 + 1, 1, v4);
      }

      *(v4 + 2) = v21;
      *&v4[16 * v20 + 32] = v39;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v22 = v42;
      v23 = *(v4 + 3);
      v24 = v20 + 2;
      if ((v20 + 2) > (v23 >> 1))
      {
        v34 = sub_1AF42053C(v23 > 1, v20 + 2, 1, v4);
        v22 = v42;
        v4 = v34;
      }

      *(v4 + 2) = v24;
      *&v4[16 * v21 + 32] = v22;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v25 = v43;
      v26 = *(v4 + 3);
      v7 = v20 + 3;
      if ((v20 + 3) > (v26 >> 1))
      {
        v35 = sub_1AF42053C(v26 > 1, v20 + 3, 1, v4);
        v25 = v43;
        v4 = v35;
      }

      *(v4 + 2) = v7;
      *&v4[16 * v24 + 32] = v25;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v8 = v44;
      v9 = *(v4 + 3);
      v10 = v20 + 4;
      goto LABEL_21;
    case 22:
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      type metadata accessor for simd_float3x4(0);
      swift_dynamicCast();
      v38 = v41;
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v12 = *(v4 + 2);
      v11 = *(v4 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v4 = sub_1AF42053C(v11 > 1, v12 + 1, 1, v4);
      }

      *(v4 + 2) = v13;
      *&v4[16 * v12 + 32] = v38;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v14 = v42;
      v15 = *(v4 + 3);
      v16 = v12 + 2;
      if ((v12 + 2) > (v15 >> 1))
      {
        v32 = sub_1AF42053C(v15 > 1, v12 + 2, 1, v4);
        v14 = v42;
        v4 = v32;
      }

      *(v4 + 2) = v16;
      *&v4[16 * v13 + 32] = v14;
      sub_1AF44CBE4(a2, v45);
      sub_1AF449D40(v45, v46);
      swift_dynamicCast();
      v17 = v43;
      v18 = *(v4 + 3);
      if ((v12 + 3) > (v18 >> 1))
      {
        v33 = sub_1AF42053C(v18 > 1, v12 + 3, 1, v4);
        v17 = v43;
        v4 = v33;
      }

      *(v4 + 2) = v12 + 3;
      *&v4[16 * v16 + 32] = v17;
      break;
    case 19:
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      type metadata accessor for simd_float2x4(0);
      swift_dynamicCast();
      v37 = v45[0];
      v4 = sub_1AF42053C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = sub_1AF42053C(v5 > 1, v6 + 1, 1, v4);
      }

      *(v4 + 2) = v7;
      *&v4[16 * v6 + 32] = v37;
      sub_1AF44CBE4(a2, v46);
      sub_1AF449D40(v46, &v41);
      swift_dynamicCast();
      v8 = v45[1];
      v9 = *(v4 + 3);
      v10 = v6 + 2;
LABEL_21:
      if (v10 > (v9 >> 1))
      {
        v40 = v8;
        v31 = sub_1AF42053C(v9 > 1, v10, 1, v4);
        v8 = v40;
        v4 = v31;
      }

      *(v4 + 2) = v10;
      *&v4[16 * v7 + 32] = v8;
      return v4;
    default:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v41 = 0;
      *(&v41 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v46 = v41;
      MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF33790);
      v28 = a1[1];
      v41 = *a1;
      v42 = v28;
      *&v43 = *(a1 + 4);
      sub_1AFDFE458();
      v29 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v36 = v29;
        swift_once();
        v29 = v36;
      }

      *&v41 = 0;
      sub_1AF0D4F18(v29, &v41, v46[0], v46[1]);

      return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1AF77087C(uint64_t a1, uint64_t a2)
{
  v7[3] = a2;
  v5 = sub_1AF585714(v7);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_1AF7FDB64(0x65756C6176, 0xE500000000000000, v7);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
  return v2;
}

uint64_t sub_1AF770910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3, 0);
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v26 + 16);
      v8 = *(v26 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1AFC05CE4(v8 > 1, v9 + 1, 1);
      }

      *(v26 + 16) = v9 + 1;
      v10 = v26 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v11 = MEMORY[0x1E69E6158];
  sub_1AF770E98(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF76EFD8(&qword_1ED726C68, &qword_1ED726C70, v11);
  v12 = sub_1AFDFCD98();
  v14 = v13;

  v15 = *(a2 + 16);
  if (v15)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v15, 0);
    v16 = (a2 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1AFC05CE4(v19 > 1, v20 + 1, 1);
      }

      *(v27 + 16) = v20 + 1;
      v21 = v27 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  v22 = sub_1AFDFCD98();
  v24 = v23;

  MEMORY[0x1B2718AE0](v12, v14);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v22, v24);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1AF770BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v26[0] = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v3, 0);
    v4 = v26[0];
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 16);
      v30[0] = *v6;
      v30[1] = v7;
      v31 = *(v6 + 32);
      sub_1AF444F60(v30, v28);
      v8 = sub_1AF7FE65C();
      v10 = v9;
      sub_1AF444FBC(v30);
      v26[0] = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
        v4 = v26[0];
      }

      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v14, 0);
    v15 = v27;
    v16 = a2 + 32;
    do
    {
      v17 = *(v16 + 16);
      v28[0] = *v16;
      v28[1] = v17;
      v29 = *(v16 + 32);
      sub_1AF444F60(v28, v26);
      v18 = sub_1AF7FE65C();
      v20 = v19;
      sub_1AF444FBC(v28);
      v27 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AFC05CE4(v21 > 1, v22 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v16 += 40;
      --v14;
    }

    while (v14);
  }

  v24 = sub_1AF770910(v4, v15);

  return v24;
}

uint64_t sub_1AF770D80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF770E98(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF770DF0()
{
  result = qword_1ED722070;
  if (!qword_1ED722070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722070);
  }

  return result;
}

unint64_t sub_1AF770E44()
{
  result = qword_1ED722078;
  if (!qword_1ED722078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722078);
  }

  return result;
}

void sub_1AF770E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF770EE8()
{
  if (!qword_1EB63D800)
  {
    sub_1AFDFF328();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D800);
    }
  }
}

uint64_t sub_1AF770F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF770FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF771064(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF7710D8(255, a3, sub_1AF43A0C8, MEMORY[0x1E69E6448], a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF7710D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF771140(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AFDFD998();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AF7711B0()
{
  if (!qword_1EB63E698)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63E698);
    }
  }
}

uint64_t sub_1AF771214(uint64_t a1, unint64_t a2)
{
  if (a2 != 59)
  {
    return sub_1AF687FE4(a1, a2);
  }

  return a1;
}

void sub_1AF771224()
{
  if (!qword_1EB638830)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638830);
    }
  }
}

unint64_t sub_1AF7712A8()
{
  result = qword_1EB63E6A0;
  if (!qword_1EB63E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6A0);
  }

  return result;
}

unint64_t sub_1AF771300()
{
  result = qword_1EB63E6A8;
  if (!qword_1EB63E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6A8);
  }

  return result;
}

unint64_t sub_1AF771358()
{
  result = qword_1EB63E6B0;
  if (!qword_1EB63E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6B0);
  }

  return result;
}

unint64_t sub_1AF7713B0()
{
  result = qword_1EB63E6B8;
  if (!qword_1EB63E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6B8);
  }

  return result;
}

uint64_t sub_1AF771404()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AF771450()
{
  result = qword_1EB63E6C0;
  if (!qword_1EB63E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6C0);
  }

  return result;
}

uint64_t sub_1AF7714C0(uint64_t result, uint64_t *a2, char a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    if (a3 == 3)
    {
      v4 = 0;
    }

    else
    {
      v4 = 59;
    }

    v5 = 0xE100000000000000;
    if (a3 == 3)
    {
      v5 = 0xE000000000000000;
    }

    v15 = v5;
    v16 = v4;
    v6 = (result + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v9 = *a2;

      MEMORY[0x1B2718AE0](v7, v8);
      MEMORY[0x1B2718AE0](v16, v15);

      v10 = *(v9 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 128) = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1AF420554(0, *(v10 + 2) + 1, 1, v10);
        *(v9 + 128) = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        v10 = sub_1AF420554(v12 > 1, v13 + 1, 1, v10);
      }

      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = 8201;
      *(v14 + 5) = 0xE200000000000000;
      *(v9 + 128) = v10;

      v6 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF771628(uint64_t result)
{
  v2 = v1[17];
  if (v2)
  {
    v30 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (v2[20])
    {
      v4 = v2[20];
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1[8] = v4;

    v1[9] = v3;

    v5 = v2[21];
    v31 = v2;
    if (v5)
    {
      v6 = *(v5 + 16);

      if (v6)
      {
        v7 = (v5 + 40);
        do
        {
          v9 = *(v7 - 1);
          v8 = *v7;
          swift_bridgeObjectRetain_n();
          sub_1AF809DF8(v9, v8, v36);
          v32 = v36[1];
          v34 = v36[0];
          v10 = v37;
          v11 = v1[9];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[9] = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_1AF424FCC(0, *(v11 + 2) + 1, 1, v11);
            v1[9] = v11;
          }

          v14 = *(v11 + 2);
          v13 = *(v11 + 3);
          if (v14 >= v13 >> 1)
          {
            v1[9] = sub_1AF424FCC(v13 > 1, v14 + 1, 1, v11);
          }

          v15 = v1[9];
          *(v15 + 16) = v14 + 1;
          v16 = v15 + 40 * v14;
          *(v16 + 32) = v34;
          *(v16 + 48) = v32;
          *(v16 + 64) = v10;
          v1[9] = v15;
          v7 += 2;
          --v6;
        }

        while (v6);
      }

      v2 = v31;
      v3 = MEMORY[0x1E69E7CC0];
    }

    if (v2[25])
    {
      v17 = v2[25];
    }

    else
    {
      v17 = v3;
    }

    v1[13] = v17;

    v1[14] = v3;

    v18 = v2[26];
    if (v18)
    {
      v19 = *(v18 + 16);

      if (v19)
      {
        v20 = (v18 + 40);
        do
        {
          v22 = *(v20 - 1);
          v21 = *v20;
          swift_bridgeObjectRetain_n();
          sub_1AF809DF8(v22, v21, v38);
          v33 = v38[1];
          v35 = v38[0];
          v23 = v39;
          v24 = v1[14];
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v1[14] = v24;
          if ((v25 & 1) == 0)
          {
            v24 = sub_1AF424FCC(0, *(v24 + 2) + 1, 1, v24);
            v1[14] = v24;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          if (v27 >= v26 >> 1)
          {
            v1[14] = sub_1AF424FCC(v26 > 1, v27 + 1, 1, v24);
          }

          v28 = v1[14];
          *(v28 + 16) = v27 + 1;
          v29 = v28 + 40 * v27;
          *(v29 + 32) = v35;
          *(v29 + 48) = v33;
          *(v29 + 64) = v23;
          v1[14] = v28;
          v20 += 2;
          --v19;
        }

        while (v19);
      }
    }

    sub_1AF763B9C(v30);
  }

  return result;
}

uint64_t sub_1AF771918()
{
  v1 = v0[17];
  v2 = *(v1 + 296);
  if (v2)
  {
    v3 = *(v1 + 288);
    v4 = v0[8];
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      for (i = (v4 + 40); ; i += 2)
      {
        v8 = *(i - 1) == v3 && v2 == *i;
        if (v8 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        if (v5 == ++v6)
        {
          return 0;
        }
      }
    }

    else
    {
      v25 = v0[5];
      v26 = *(v25 + 16);
      if (v26)
      {
        v6 = 0;
        for (j = (v25 + 40); ; j += 2)
        {
          v28 = *(j - 1) == v3 && v2 == *j;
          if (v28 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          if (v26 == ++v6)
          {
            return 0;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = v0[9];
    v10 = *(v9 + 16);
    if (v10 && (v11 = v0[14], v11[2] == 1))
    {
      v12 = v11[4];
      v13 = v11[5];
      v14 = v11[6];
      v15 = v11[7];
      v16 = v11[8];
      sub_1AF687F90(v12, v13);
      v30 = v12;
      v32 = v12;
      v33 = v13;
      v34 = v14;
      v35 = v15;
      v36 = v16;

      v6 = 0;
      v17 = 32;
      while (1)
      {
        v18 = *(v9 + v17);
        v19 = *(v9 + v17 + 16);
        v38 = *(v9 + v17 + 32);
        v37[0] = v18;
        v37[1] = v19;
        sub_1AF444F60(v37, v31);
        v20 = sub_1AF7FE65C();
        v22 = v21;
        if (v20 == sub_1AF7FE65C() && v22 == v23)
        {
          break;
        }

        v24 = sub_1AFDFEE28();

        sub_1AF444FBC(v37);
        if (v24)
        {
          goto LABEL_30;
        }

        ++v6;
        v17 += 40;
        if (v10 == v6)
        {
          v6 = -1;
          goto LABEL_30;
        }
      }

      sub_1AF444FBC(v37);
LABEL_30:

      sub_1AF771214(v30, v13);
    }

    else
    {
      return -1;
    }
  }

  return v6;
}

void sub_1AF771B4C()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = *(v1 + 328);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v14 = MEMORY[0x1E69E7CC0];

        sub_1AFDFE368();
        v4 = (v2 + 56);
        do
        {
          v5 = *(v4 - 3);
          v6 = *(v4 - 2);
          v7 = *(v4 - 1);
          v8 = *v4;
          v12 = v0[3];
          v13 = v0[4];

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v5, v6);

          sub_1AF809DF8(v7, v8, v15);
          v9 = v16;
          _s12ParameterOutCMa();
          v10 = swift_allocObject();
          swift_weakInit();
          swift_weakAssign();
          *(v10 + 24) = v5;
          *(v10 + 32) = v6;
          *(v10 + 40) = v12;
          *(v10 + 48) = v13;
          v11 = v15[0];
          *(v10 + 72) = v15[1];
          *(v10 + 56) = v11;
          *(v10 + 88) = v9;
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v4 += 4;
          --v3;
        }

        while (v3);

        v0[15] = v14;
      }
    }
  }
}

uint64_t sub_1AF771D2C()
{
  v1 = v0;
  sub_1AF775B40(0, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v88 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v83 - v7;
  v91 = sub_1AFDFF358();
  v9 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v10);
  v92 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[17];
  if (*(v12 + 160))
  {
    v13 = *(v12 + 160);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (*(v12 + 168))
  {
    v14 = *(v12 + 168);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1AF7820DC(v13, v14);

  v16 = *(v15 + 16);

  if (!v16)
  {
    return sub_1AF764300();
  }

  v17 = *(v1[17] + 176);
  if (!v17 || (v18 = *(v17 + 16)) == 0)
  {
LABEL_46:
    v58 = v1[7];
    if (v58 >> 62)
    {
      v59 = sub_1AFDFE108();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v59)
    {
      v60 = 0;
      *&v94 = v58 & 0xC000000000000001;
      *&v93 = v58;
      v95 = v59;
      do
      {
        if (v94)
        {
          v61 = MEMORY[0x1B2719C70](v60, v58);
        }

        else
        {
          v61 = *(v58 + 8 * v60 + 32);
        }

        v62 = *(v61 + 32);
        *&v108[0] = *(v61 + 24);
        *(&v108[0] + 1) = v62;

        MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
        v63 = v108[0];
        v64 = v1[2];
        if (v64 && *(v64 + 16) && (, sub_1AF419914(v63, *(&v63 + 1)), v66 = v65, , (v66 & 1) != 0))
        {
        }

        else
        {
          v67 = *(v61 + 72);
          v96 = *(v61 + 56);
          v97 = v67;
          *&v98 = *(v61 + 88);
          sub_1AF444F60(&v96, v103);
          sub_1AF7FCDD4(&v96, 1, &v104);
          sub_1AF444FBC(&v96);
          if (*(&v104 + 1))
          {
            v108[2] = v106;
            v109[0] = *v107;
            v109[1] = *&v107[16];
            v110 = *&v107[32];
            v108[0] = v104;
            v108[1] = v105;
            if (!v1[2])
            {
              v1[2] = MEMORY[0x1E69E7CC8];
            }

            sub_1AF4455CC(v108, &v104);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103[0] = v1[2];
            v69 = v103[0];
            v1[2] = 0x8000000000000000;
            v71 = sub_1AF419914(v63, *(&v63 + 1));
            v72 = v70;
            v73 = *(v69 + 16) + ((v70 & 1) == 0);
            if (*(v69 + 24) >= v73)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v70 & 1) == 0)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                sub_1AF844804();
                if ((v72 & 1) == 0)
                {
                  goto LABEL_70;
                }
              }
            }

            else
            {
              sub_1AF82C8F0(v73, isUniquelyReferenced_nonNull_native);
              v74 = sub_1AF419914(v63, *(&v63 + 1));
              if ((v72 & 1) != (v75 & 1))
              {
                goto LABEL_75;
              }

              v71 = v74;
              if ((v72 & 1) == 0)
              {
LABEL_70:
                v76 = v103[0];
                *(v103[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
                *(v76[6] + 16 * v71) = v63;
                v77 = v76[7] + 88 * v71;
                v78 = v105;
                *v77 = v104;
                v79 = v106;
                v80 = *v107;
                v81 = *&v107[16];
                *(v77 + 80) = *&v107[32];
                *(v77 + 48) = v80;
                *(v77 + 64) = v81;
                *(v77 + 16) = v78;
                *(v77 + 32) = v79;

                sub_1AF761390(v108);
                ++v76[2];
                goto LABEL_71;
              }
            }

            v76 = v103[0];
            sub_1AF770FA0(&v104, *(v103[0] + 56) + 88 * v71);

            sub_1AF761390(v108);
LABEL_71:
            v1[2] = v76;

            v58 = v93;
            goto LABEL_51;
          }

          sub_1AF7751B8(&v104, &qword_1EB6335B0, &_s8MetadataVN);
        }

LABEL_51:
        ++v60;
      }

      while (v95 != v60);
    }

    return sub_1AF764300();
  }

  v19 = v17 + 32;
  v20 = *MEMORY[0x1E69E75B8];
  v86 = *MEMORY[0x1E69E75B0];
  v87 = v20;
  v84 = *MEMORY[0x1E69E75A8];
  v90 = (v9 + 8);
  v83 = v17;

  v85 = xmmword_1AFE76100;
  v21 = v92;
  v89 = v8;
  while (1)
  {
    sub_1AF4455CC(v19, v108);
    v104 = v108[0];

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    v29 = *(&v104 + 1);
    v95 = v104;
    v30 = v1[2];
    if (v30)
    {
      if (*(v30 + 16))
      {

        sub_1AF419914(v95, v29);
        v32 = v31;

        if (v32)
        {

          goto LABEL_13;
        }
      }
    }

    sub_1AF44CBE4(v109 + 8, v103);
    if (!v1[2])
    {
      v1[2] = MEMORY[0x1E69E7CC8];
    }

    sub_1AF0D5A54(v103, &v96);
    memset(&v107[8], 0, 32);
    *&v104 = v95;
    *(&v104 + 1) = v29;
    sub_1AF0D5A54(&v96, &v102);

    sub_1AFDFF318();
    sub_1AF441150(&v96, *(&v97 + 1));
    DynamicType = swift_getDynamicType();
    sub_1AFDFF338();
    v34 = sub_1AFDFF328();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v8, 1, v34) == 1)
    {
      goto LABEL_21;
    }

    v37 = v8;
    v38 = v8;
    v39 = v88;
    sub_1AF775228(v38, v88);
    v40 = (*(v35 + 88))(v39, v34);
    if (v40 == v87)
    {
      if (DynamicType == &type metadata for Entity)
      {
        v36 = 0;
        v93 = v85;
        v94 = 0u;
      }

      else
      {
        sub_1AF808478(v111);
        v93 = v111[0];
        v94 = v111[1];
        v36 = v112;
      }

      v8 = v37;
      v21 = v92;
      (*v90)(v92, v91);
    }

    else if (v40 == v86)
    {
      v41 = v92;
      (*v90)(v92, v91);
      v36 = 0;
      v93 = v85;
      v94 = 0u;
      v8 = v37;
      v21 = v41;
    }

    else
    {
      v8 = v37;
      if (v40 != v84)
      {
        (*(v35 + 8))(v88, v34);
        v21 = v92;
LABEL_21:
        sub_1AF808478(v113);
        v93 = v113[0];
        v94 = v113[1];
        v36 = v114;
        (*v90)(v21, v91);
        goto LABEL_36;
      }

      v21 = v92;
      (*v90)(v92, v91);
      sub_1AF441150(&v96, *(&v97 + 1));
      v42 = swift_getDynamicType();
      v43 = swift_conformsToProtocol2();
      v36 = 0;
      if (v42)
      {
        v44 = v43 == 0;
      }

      else
      {
        v44 = 1;
      }

      v45 = 41;
      if (v44)
      {
        v45 = 42;
      }

      *&v46 = 0;
      v94 = 0u;
      *(&v46 + 1) = v45;
      v93 = v46;
    }

LABEL_36:
    sub_1AF77515C(v8, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
    v105 = v93;
    v106 = v94;
    *v107 = v36;
    sub_1AF7751B8(&v107[8], &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    sub_1AF449D40(&v96, &v107[8]);
    v98 = v106;
    v99 = *v107;
    v100 = *&v107[16];
    v101 = *&v107[32];
    v96 = v104;
    v97 = v105;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v1[2];
    v48 = v102;
    v1[2] = 0x8000000000000000;
    v49 = v95;
    v50 = sub_1AF419914(v95, v29);
    v52 = v51;
    v53 = v48[2] + ((v51 & 1) == 0);
    if (v48[3] < v53)
    {
      break;
    }

    if ((v47 & 1) == 0)
    {
      v57 = v50;
      sub_1AF844804();
      v50 = v57;
    }

    v49 = v95;
    if (v52)
    {
LABEL_43:
      v55 = v50;

      v22 = v102;
      v56 = v102[7] + 88 * v55;
      v21 = v92;
      sub_1AF770FA0(&v96, v56);
      goto LABEL_12;
    }

LABEL_11:
    v22 = v102;
    v102[(v50 >> 6) + 8] |= 1 << v50;
    v23 = (v22[6] + 16 * v50);
    *v23 = v49;
    v23[1] = v29;
    v24 = v22[7] + 88 * v50;
    v25 = v97;
    *v24 = v96;
    v26 = v98;
    v27 = v99;
    v28 = v100;
    *(v24 + 80) = v101;
    *(v24 + 48) = v27;
    *(v24 + 64) = v28;
    *(v24 + 16) = v25;
    *(v24 + 32) = v26;
    ++v22[2];
LABEL_12:
    v8 = v89;
    v1[2] = v22;

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v103);
LABEL_13:
    sub_1AF761390(v108);
    v19 += 88;
    if (!--v18)
    {

      goto LABEL_46;
    }
  }

  sub_1AF82C8F0(v53, v47);
  v50 = sub_1AF419914(v49, v29);
  if ((v52 & 1) == (v54 & 1))
  {
    if (v52)
    {
      goto LABEL_43;
    }

    goto LABEL_11;
  }

LABEL_75:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF7727A4()
{
  sub_1AF76B4B4();

  return sub_1AF771D2C();
}

uint64_t sub_1AF7727CC(uint64_t a1)
{
  *(swift_allocObject() + 136) = 0;
  sub_1AF441194(a1, v4);
  v2 = sub_1AF76BC24(v4);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF772848()
{
  sub_1AFDFE218();

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  MEMORY[0x1B2718AE0](v1, v2);

  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33A80);

  v3 = sub_1AF777650();
  MEMORY[0x1B2718AE0](v3);

  return 0xD000000000000011;
}

uint64_t sub_1AF77292C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (sub_1AF7626A4())
  {
    v6 = sub_1AF771918();
    v7 = v1[8] + 16 * v6;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = v1[5] + 16 * v6;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);
    v13 = v8 == v12 && v9 == v11;
    if (v13 || (v14 = v6, (sub_1AFDFEE28() & 1) != 0))
    {

      v15 = sub_1AF764B14(v12, v11);
    }

    else
    {
      v55 = (v2[9] + 40 * v14);
      v181 = v5;
      v56 = v55[4];
      v57 = v55[5];
      v182 = v4;
      v59 = v55[6];
      v58 = v55[7];
      v180 = v55[8];
      v60 = v2[4];
      *&v185 = v2[3];
      *(&v185 + 1) = v60;

      sub_1AF687F90(v56, v57);

      MEMORY[0x1B2718AE0](47, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v8, v9);

      v61 = v185;
      _s11ParameterInCMa();
      v15 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v15[3] = v8;
      v15[4] = v9;
      v15[5] = v61;
      v15[6] = v60;
      v15[7] = v56;
      v15[8] = v57;
      v5 = v181;
      v15[9] = v59;
      v15[10] = v58;
      v4 = v182;
      v15[11] = v180;
    }

    if (*(v2[10] + 16))
    {
      v62 = v2[12];
      if ((v62 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1B2719C70](0, v62);
      }

      else
      {
      }
    }

    if (swift_weakLoadStrong())
    {
      v63 = sub_1AF7EFBF4();
      v65 = sub_1AF76A984(v63, v64);

      if (v65)
      {
        v66 = v2[13];
        v67 = v2[14];
        v68 = *(v66 + 32);
        v69 = *(v66 + 40);
        v70 = v67[5];
        v180 = v67[4];
        v179 = v70;
        v181 = v5;
        v71 = v67[6];
        v72 = v67[7];
        v182 = v4;
        v73 = v67[8];
        v74 = v2[4];
        *&v185 = v2[3];
        *(&v185 + 1) = v74;

        sub_1AF687F90(v180, v70);

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v68, v69);

        v75 = v185;
        _s12ParameterOutCMa();
        v76 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();
        v76[3] = v68;
        v76[4] = v69;
        v76[5] = v75;
        v76[6] = v74;
        v77 = v179;
        v76[7] = v180;
        v76[8] = v77;
        v76[9] = v71;
        v76[10] = v72;
        v5 = v181;
        v76[11] = v73;
        v4 = v182;
        goto LABEL_34;
      }
    }

    else
    {
    }

    v78 = v2[12];
    if ((v78 & 0xC000000000000001) != 0)
    {

      v76 = MEMORY[0x1B2719C70](0, v78);
    }

    else
    {
      v76 = *(v78 + 32);
    }

LABEL_34:
    v79 = *(v76 + 9);
    v185 = *(v76 + 7);
    v186 = v79;
    *&v187 = v76[11];
    v80 = v76[5];
    v81 = v76[6];

    sub_1AF444F60(&v185, &v191);
    v82 = sub_1AF76ED08(v80, v81);
    v84 = v83;

    v85 = sub_1AF7DBFF8(&v185, v82, v84, 0, v5);
    v87 = v86;

    sub_1AF444FBC(&v185);
    *&v191 = 8201;
    *(&v191 + 1) = 0xE200000000000000;
    MEMORY[0x1B2718AE0](v85, v87);

    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    v88 = v15[5];
    v89 = v15[6];

    v90 = sub_1AF76ED08(v88, v89);
    v92 = v91;

    MEMORY[0x1B2718AE0](v90, v92);

    if (v5 == 3)
    {
      v93 = 0;
    }

    else
    {
      v93 = 59;
    }

    if (v5 == 3)
    {
      v94 = 0xE000000000000000;
    }

    else
    {
      v94 = 0xE100000000000000;
    }

    MEMORY[0x1B2718AE0](v93, v94);

    v95 = v191;
    v96 = *(v4 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 128) = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v96 = sub_1AF420554(0, *(v96 + 2) + 1, 1, v96);
      *(v4 + 128) = v96;
    }

    v99 = *(v96 + 2);
    v98 = *(v96 + 3);
    if (v99 >= v98 >> 1)
    {
      *(v4 + 128) = sub_1AF420554(v98 > 1, v99 + 1, 1, v96);
    }

    v101 = *(v4 + 128);
    *(v101 + 16) = v99 + 1;
    *(v101 + 16 * v99 + 32) = v95;
    *(v4 + 128) = v101;
    return result;
  }

  v16 = sub_1AF776964(v5);
  v18 = v17;

  v182 = v4;
  if (v18)
  {
    v180 = a1;
    v19 = v1[17];
    v20 = *(v19 + 160);
    v181 = v5;
    if (v20)
    {
      v21 = *(v20 + 16);
      if (v21)
      {

        v22 = (v179 + 40);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;
          *&v185 = v16;
          *(&v185 + 1) = v18;
          *&v191 = 36;
          *(&v191 + 1) = 0xE100000000000000;

          MEMORY[0x1B2718AE0](v23, v24);
          v25 = v2[4];
          *&v183 = v2[3];
          *(&v183 + 1) = v25;

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v23, v24);

          v26 = sub_1AF76ED08(v183, *(&v183 + 1));
          v28 = v27;

          *&v183 = v26;
          *(&v183 + 1) = v28;
          sub_1AF4486E4();
          v16 = sub_1AFDFDEB8();
          v30 = v29;

          v18 = v30;
          v22 += 2;
          --v21;
        }

        while (v21);

        v19 = v2[17];
        v4 = v182;
      }
    }

    v31 = *(v19 + 200);
    if (v31)
    {
      v32 = *(v31 + 16);
      if (v32)
      {

        v33 = (v179 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          *&v185 = v16;
          *(&v185 + 1) = v18;
          *&v191 = 36;
          *(&v191 + 1) = 0xE100000000000000;

          MEMORY[0x1B2718AE0](v34, v35);
          v36 = v2[4];
          *&v183 = v2[3];
          *(&v183 + 1) = v36;

          MEMORY[0x1B2718AE0](47, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v34, v35);

          v37 = sub_1AF76ED08(v183, *(&v183 + 1));
          v39 = v38;

          *&v183 = v37;
          *(&v183 + 1) = v39;
          sub_1AF4486E4();
          v16 = sub_1AFDFDEB8();
          v41 = v40;

          v18 = v41;
          v33 += 2;
          --v32;
        }

        while (v32);

        v4 = v182;
      }
    }

    *&v185 = v16;
    *(&v185 + 1) = v18;
    strcpy(&v191, "@valueAsString");
    HIBYTE(v191) = -18;
    sub_1AF4486E4();
    if (sub_1AFDFDF18())
    {
      sub_1AF7FDD44(0x65756C6176, 0xE500000000000000, &v185);
      if (*(&v185 + 1))
      {
        sub_1AF44CBE4(&v188 + 8, &v183);
        sub_1AF761390(&v185);
        if (*(&v184 + 1))
        {
          sub_1AF449D40(&v183, &v191);
          v42 = sub_1AF441150(&v191, *(&v192 + 1));
          v43 = MEMORY[0x1EEE9AC00](v42, v42);
          (*(v45 + 16))(&v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
          v46 = sub_1AFDFCF88();
          v4 = v182;
          *&v185 = v16;
          *(&v185 + 1) = v18;
          strcpy(&v183, "@valueAsString");
          HIBYTE(v183) = -18;
          v189 = 34;
          v190 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](v46);

          MEMORY[0x1B2718AE0](34, 0xE100000000000000);
          v16 = sub_1AFDFDEB8();
          v48 = v47;

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v191);
          v18 = v48;
          goto LABEL_47;
        }
      }

      else
      {
        sub_1AF7751B8(&v185, &qword_1EB6335B0, &_s8MetadataVN);
        v183 = 0u;
        v184 = 0u;
      }

      sub_1AF7751B8(&v183, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

LABEL_47:
    *&v185 = v16;
    *(&v185 + 1) = v18;
    *&v191 = 0x65756C617640;
    *(&v191 + 1) = 0xE600000000000000;
    v102 = sub_1AFDFDF18();
    v103 = v181;
    if ((v102 & 1) == 0)
    {
LABEL_66:
      *&v185 = v16;
      *(&v185 + 1) = v18;
      *&v191 = 0x23504D455423;
      *(&v191 + 1) = 0xE600000000000000;
      if (sub_1AFDFDF18())
      {
        *&v185 = v16;
        *(&v185 + 1) = v18;
        *&v191 = 0x23504D455423;
        *(&v191 + 1) = 0xE600000000000000;
        v131 = v2[4];
        *&v183 = v2[3];
        *(&v183 + 1) = v131;

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](1886217556, 0xE400000000000000);

        v132 = sub_1AF76ED08(v183, *(&v183 + 1));
        v134 = v133;

        *&v183 = v132;
        *(&v183 + 1) = v134;
        v16 = sub_1AFDFDEB8();
        v136 = v135;

        v18 = v136;
      }

      *&v185 = v16;
      *(&v185 + 1) = v18;
      *&v191 = 10;
      *(&v191 + 1) = 0xE100000000000000;
      *&v183 = 2099466;
      *(&v183 + 1) = 0xE300000000000000;
      v137 = sub_1AFDFDEB8();
      v139 = v138;

      if (*(v2[17] + 240) == 1)
      {
        *&v185 = v137;
        *(&v185 + 1) = v139;
        *&v191 = 0xD000000000000011;
        *(&v191 + 1) = 0x80000001AFF33AC0;
        *&v183 = sub_1AF76337C();
        *(&v183 + 1) = v140;
        v137 = sub_1AFDFDEB8();
        v142 = v141;

        v139 = v142;
      }

      *&v185 = v137;
      *(&v185 + 1) = v139;
      *&v191 = 0x2344495523;
      *(&v191 + 1) = 0xE500000000000000;
      v143 = v2[4];
      *&v183 = v2[3];
      *(&v183 + 1) = v143;
      v144 = sub_1AFDFDEB8();
      v146 = v145;

      *&v185 = v144;
      *(&v185 + 1) = v146;
      *&v191 = 8251;
      *(&v191 + 1) = 0xE200000000000000;
      v147 = sub_1AFDFDE98();
      if (*(v147 + 16) < 2uLL)
      {

        *&v185 = 8201;
        *(&v185 + 1) = 0xE200000000000000;
        MEMORY[0x1B2718AE0](v144, v146);

        v149 = v185;
        v150 = *(v4 + 128);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 128) = v150;
        if ((result & 1) == 0)
        {
          result = sub_1AF420554(0, *(v150 + 16) + 1, 1, v150);
          v150 = result;
          *(v4 + 128) = result;
        }

        v152 = *(v150 + 16);
        v151 = *(v150 + 24);
        if (v152 >= v151 >> 1)
        {
          result = sub_1AF420554(v151 > 1, v152 + 1, 1, v150);
          v150 = result;
        }

        *(v150 + 16) = v152 + 1;
        *(v150 + 16 * v152 + 32) = v149;
        *(v4 + 128) = v150;
      }

      else
      {
        v148 = v147;

        sub_1AF7714C0(v148, v180, v181);
      }

      v153 = *(v2[17] + 88);
      if (v153)
      {
        v154 = *(v153 + 16);

        if (v154)
        {
          v155 = (v153 + 40);
          do
          {
            v156 = *(v155 - 1);
            v157 = *v155;

            sub_1AF6B0504(v156, v157);

            v155 += 2;
            --v154;
          }

          while (v154);
        }
      }

      return result;
    }

    sub_1AF7FDD44(0x65756C6176, 0xE500000000000000, &v185);
    if (*(v2[10] + 16))
    {
      v104 = v2[12];
      v105 = v4;
      if ((v104 & 0xC000000000000001) != 0)
      {

        v106 = MEMORY[0x1B2719C70](0, v104);
      }

      else
      {
        v106 = *(v104 + 32);
      }

      v107 = *(v106 + 40);
      v108 = *(v106 + 48);

      v109 = sub_1AF76ED08(v107, v108);
      v111 = v110;

      v4 = v105;
      v112 = v103 >= 2;
      if (v103 <= 2)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v109 = 0;
      v111 = 0;
      v112 = v103 >= 2;
      if (v103 <= 2)
      {
LABEL_52:
        if (!v112)
        {
          goto LABEL_58;
        }

        v113 = sub_1AF7E5CBC(&v185, v4);
        goto LABEL_59;
      }
    }

    if (v103 != 3)
    {
LABEL_58:
      v113 = sub_1AF7E0118(&v185, v4, v109, v111, v103);
      goto LABEL_59;
    }

    v113 = sub_1AF7DD4B4(&v185, v4, v109, v111, 3);
LABEL_59:
    v179 = v113;
    v117 = v114;
    v118 = v115;
    v119 = v116;

    sub_1AF761390(&v185);
    if (v119)
    {
      *&v185 = 8201;
      *(&v185 + 1) = 0xE200000000000000;
      *&v191 = v118;
      *(&v191 + 1) = v119;
      v178 = v119;
      *&v183 = 10;
      *(&v183 + 1) = 0xE100000000000000;
      v189 = 2314;
      v190 = 0xE200000000000000;
      v120 = sub_1AFDFDEB8();
      MEMORY[0x1B2718AE0](v120);

      v177 = *(&v185 + 1);
      v121 = v185;
      v122 = *(v4 + 128);
      v123 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 128) = v122;
      v124 = v117;
      if ((v123 & 1) == 0)
      {
        v122 = sub_1AF420554(0, *(v122 + 2) + 1, 1, v122);
        *(v4 + 128) = v122;
      }

      v126 = *(v122 + 2);
      v125 = *(v122 + 3);
      if (v126 >= v125 >> 1)
      {
        v122 = sub_1AF420554(v125 > 1, v126 + 1, 1, v122);
      }

      *(v122 + 2) = v126 + 1;
      v127 = &v122[16 * v126];
      v128 = v177;
      *(v127 + 4) = v121;
      *(v127 + 5) = v128;
      *(v4 + 128) = v122;
      v117 = v124;
    }

    *&v185 = v16;
    *(&v185 + 1) = v18;
    *&v191 = 0x65756C617640;
    *(&v191 + 1) = 0xE600000000000000;
    *&v183 = v179;
    *(&v183 + 1) = v117;
    v16 = sub_1AFDFDEB8();
    v130 = v129;

    v18 = v130;
    goto LABEL_66;
  }

  v50 = v1[3];
  v49 = v1[4];
  *(&v186 + 1) = MEMORY[0x1E69E6158];
  *&v185 = 0;
  *(&v185 + 1) = 0xE000000000000000;

  sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v185, &v191);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v185);
  sub_1AF449D40(&v191, &v185);
  swift_dynamicCast();
  v51 = v183;
  v52 = sub_1AF762980();
  v54 = v53;
  *&v185 = 0;
  *(&v185 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v183 = v185;
  v180 = *(&v51 + 1);
  v179 = v52;
  v178 = v54;

  sub_1AF9A0BAC();

  v158 = sub_1AFDFDDB8();
  v160 = v159;

  v161 = sub_1AF701628();
  v163 = v162;
  v165 = v164;
  v167 = v166;

  v189 = v158;
  v190 = v160;
  *&v185 = v161;
  *(&v185 + 1) = v163;
  *&v186 = v165;
  *(&v186 + 1) = v167;
  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v189, v190);

  MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF33AA0);
  *&v191 = v50;
  *(&v191 + 1) = v49;
  v192 = __PAIR128__(v180, v51);
  *&v193 = v179;
  *(&v193 + 1) = v178;
  v194 = v183;
  v185 = v191;
  v186 = __PAIR128__(v180, v51);
  v187 = v193;
  v188 = v183;
  v168 = v182;
  v169 = *(v182 + 144);
  sub_1AF51E760(&v185, v169);
  if ((v170 & 1) == 0)
  {
    return sub_1AF761440(&v191);
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v182 + 144) = v169;
  if ((result & 1) == 0)
  {
    result = sub_1AF424EC0(0, *(v169 + 16) + 1, 1, v169);
    v169 = result;
    *(v168 + 144) = result;
  }

  v172 = *(v169 + 16);
  v171 = *(v169 + 24);
  if (v172 >= v171 >> 1)
  {
    result = sub_1AF424EC0(v171 > 1, v172 + 1, 1, v169);
    v169 = result;
  }

  *(v169 + 16) = v172 + 1;
  v173 = (v169 + (v172 << 6));
  v174 = v185;
  v175 = v186;
  v176 = v188;
  v173[4] = v187;
  v173[5] = v176;
  v173[2] = v174;
  v173[3] = v175;
  *(v168 + 144) = v169;
  return result;
}

uint64_t sub_1AF774020(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *(v1[17] + 224);
  if (!v3)
  {
    return 0;
  }

  v4 = 0xE100000000000000;
  v5 = 99;
  v6 = 0xE500000000000000;
  v7 = 0x6C6174656DLL;
  v8 = 0xE500000000000000;
  v9 = 0x7466697773;
  if (a1 != 3)
  {
    v9 = 29546;
    v8 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a1)
  {
    v5 = 0x7070636A626FLL;
    v4 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (a1 <= 1u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (!*(v3 + 16))
  {

    return 0;
  }

  sub_1AF419914(v10, v11);
  v13 = v12;

  if ((v13 & 1) == 0)
  {

    return 0;
  }

  v14 = v2[17];
  v15 = *(v14 + 160);
  if (v15)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = ( + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;

        MEMORY[0x1B2718AE0](v18, v19);
        v27 = v2[3];
        v29 = v2[4];

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v18, v19);

        sub_1AF76ED08(v27, v29);

        sub_1AF4486E4();
        sub_1AFDFDEB8();

        v17 += 2;
        --v16;
      }

      while (v16);

      v14 = v2[17];
    }
  }

  v20 = *(v14 + 200);
  if (v20)
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = ( + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;

        MEMORY[0x1B2718AE0](v23, v24);
        v28 = v2[3];
        v30 = v2[4];

        MEMORY[0x1B2718AE0](47, 0xE100000000000000);

        MEMORY[0x1B2718AE0](v23, v24);

        sub_1AF76ED08(v28, v30);

        sub_1AF4486E4();
        sub_1AFDFDEB8();

        v22 += 2;
        --v21;
      }

      while (v21);
    }
  }

  sub_1AF4486E4();
  v25 = sub_1AFDFDEB8();

  return v25;
}

uint64_t sub_1AF774434(void *a1)
{
  v3 = v1;
  sub_1AF77502C(0, &qword_1EB63E6D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF774F24();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v15 = 1;
    sub_1AFDFE8B8();
    v14 = 2;
    sub_1AFDFE8B8();
    v13 = *(v3 + 48);
    v12[15] = 3;
    sub_1AF774F78();
    sub_1AF775090(&qword_1EB63E6E0, sub_1AF775108);
    sub_1AFDFE8A8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF774650()
{
  v1 = 0x4E7972617262696CLL;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x4E74657070696E73;
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

uint64_t sub_1AF7746DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF774A50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF774704(uint64_t a1)
{
  v2 = sub_1AF774F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF774740(uint64_t a1)
{
  v2 = sub_1AF774F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF77477C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF774BCC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1AF7747EC()
{
  sub_1AF76CB54();

  return swift_deallocClassInstance();
}

uint64_t _s11CodeSnippetC17SerializationInfoVwxx()
{
}

void *_s11CodeSnippetC17SerializationInfoVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];

  return a1;
}

void *_s11CodeSnippetC17SerializationInfoVwca(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];

  return a1;
}

uint64_t _s11CodeSnippetC17SerializationInfoVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t sub_1AF774A50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7972617262696CLL && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E74657070696E73 && a2 == 0xEB00000000656D61 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AFF29540 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000074636944)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF774BCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF77502C(0, &qword_1EB63E6C8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF774F24();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v31 = 0;
  v11 = sub_1AFDFE708();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  v14 = sub_1AFDFE708();
  v26 = v15;
  v23 = v14;
  v29 = 2;
  v22 = sub_1AFDFE708();
  v24 = v16;
  sub_1AF774F78();
  v28 = 3;
  sub_1AF775090(&qword_1EB633340, sub_1AF774FD8);
  sub_1AFDFE6E8();
  (*(v7 + 8))(v10, v6);
  v17 = v27;

  v18 = v26;

  v19 = v24;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  *a2 = v25;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v18;
  a2[4] = v21;
  a2[5] = v19;
  a2[6] = v17;
  return result;
}

unint64_t sub_1AF774F24()
{
  result = qword_1EB63E6D0;
  if (!qword_1EB63E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6D0);
  }

  return result;
}

void sub_1AF774F78()
{
  if (!qword_1EB633348)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633348);
    }
  }
}

unint64_t sub_1AF774FD8()
{
  result = qword_1EB6335B8;
  if (!qword_1EB6335B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6335B8);
  }

  return result;
}

void sub_1AF77502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF774F24();
    v7 = a3(a1, &_s11CodeSnippetC17SerializationInfoV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF775090(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF774F78();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF775108()
{
  result = qword_1EB63E6E8;
  if (!qword_1EB63E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6E8);
  }

  return result;
}

uint64_t sub_1AF77515C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF775B40(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF7751B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF775BA4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF775228(uint64_t a1, uint64_t a2)
{
  sub_1AF775B40(0, &qword_1EB63D800, MEMORY[0x1E69E75C8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1AF7752A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AF775B40(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v63 - v13;
  v15 = sub_1AFDFC128();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 136) = a1;

  v19 = sub_1AF76B46C(a2, a3, a4);
  v20 = a1[2];
  v21 = a1[3];
  v76 = MEMORY[0x1E69E6158];
  *&v74 = v20;
  *(&v74 + 1) = v21;

  sub_1AF7FDB64(1701667182, 0xE400000000000000, &v74);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
  if (a1[23])
  {
    v22 = a1[23];
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  if (*(v22 + 16))
  {
    sub_1AF775BA4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v76 = v23;
    *&v74 = v22;

    sub_1AF7FDB64(0xD00000000000001CLL, 0x80000001AFF23ED0, &v74);
    v24 = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
  }

  else
  {

    v24 = sub_1AF7FDA4C(0xD00000000000001CLL, 0x80000001AFF23ED0);
  }

  (*(*v19 + 1408))(v24);

  v25 = a1[24];
  if (v25 && *(v25 + 16))
  {
    sub_1AF775BA4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v76 = v26;
    *&v74 = v25;

    sub_1AF7FDB64(0xD000000000000015, 0x80000001AFF23EF0, &v74);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
  }

  sub_1AF771628(a5);
  sub_1AF771B4C();
  v27 = a1[5];
  if (v27)
  {
    v28 = a1[4];
    v29 = v19[2];
    if (v29)
    {
      v30 = *(v29 + 16);

      if (v30)
      {

        sub_1AF419914(0x6C6562616CLL, 0xE500000000000000);
        v32 = v31;

        if (v32)
        {

          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    v76 = MEMORY[0x1E69E6158];
    *&v74 = v28;
    *(&v74 + 1) = v27;
    sub_1AF7FDB64(0x6C6562616CLL, 0xE500000000000000, &v74);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v74);
  }

LABEL_17:

  v33 = sub_1AF776820();

  if ((v33 & 1) == 0 || *(v19[11] + 16) != 1)
  {
    goto LABEL_46;
  }

  sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v74);
  if (!v76)
  {
    sub_1AF7751B8(&v74, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_46;
  }

  sub_1AF449D40(&v74, v72);
  v34 = v19[17];
  v35 = v34[31];
  v36 = v34[32];
  v37 = v35;
  v38 = v36;
  v39 = v34[33];
  v40 = v34[34];
  v41 = v34[35];
  if (v36 == 59)
  {
    v42 = v19[11];
    v67 = v15;
    v37 = v42[4];
    v43 = v42[5];
    v66 = v14;
    v68 = v18;
    v44 = v42[6];
    v45 = v42[7];
    v46 = v42[8];
    v65 = v35;
    sub_1AF687F90(v37, v43);
    v35 = v65;
    v39 = v44;
    v14 = v66;
    v38 = v43;
    v40 = v45;
    v15 = v67;
    v18 = v68;
    v41 = v46;
  }

  v64 = v37;
  *&v74 = v37;
  *(&v74 + 1) = v38;
  v66 = v38;
  v65 = v39;
  v75 = v39;
  v76 = v40;
  v67 = v40;
  v68 = v41;
  v77 = v41;
  sub_1AF775B94(v35, v36);
  sub_1AF809A8C(v72, v73);
  if (sub_1AF7FE65C() != 5001813 || v47 != 0xE300000000000000)
  {
    v48 = sub_1AFDFEE28();

    if (v48)
    {
      goto LABEL_27;
    }

    if (sub_1AF7FE65C() == 0x6156686374697753 && v53 == 0xEB0000000065756CLL)
    {
    }

    else
    {
      v54 = sub_1AFDFEE28();

      if ((v54 & 1) == 0)
      {
        v57 = sub_1AF7FE65C();
        v59 = v58;
        if (v57 == sub_1AF7FE65C() && v59 == v60)
        {

          sub_1AF444FBC(v73);
          sub_1AF687FE4(v64, v66);
          goto LABEL_44;
        }

        v61 = sub_1AFDFEE28();

        sub_1AF444FBC(v73);
        sub_1AF687FE4(v64, v66);
        if (v61)
        {
          goto LABEL_44;
        }

LABEL_43:
        v71 = MEMORY[0x1E69E6530];
        v70[0] = 1;
        sub_1AF7FDB64(0x696C61766E695F5FLL, 0xE900000000000064, v70);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v70);
        goto LABEL_44;
      }
    }

    sub_1AF687FE4(v64, v66);
    if (sub_1AF7FE65C() == 0x3436746E49 && v55 == 0xE500000000000000)
    {

      sub_1AF444FBC(v73);
LABEL_44:
      v52 = v72;
      goto LABEL_45;
    }

    v56 = sub_1AFDFEE28();

    sub_1AF444FBC(v73);
    if (v56)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_27:
  sub_1AF687FE4(v64, v66);
  sub_1AF444FBC(v73);
  sub_1AF0D5A54(v72, v70);
  if (swift_dynamicCast())
  {
    v49 = v69;
    (*(v69 + 56))(v14, 0, 1, v15);
    (*(v49 + 32))(v18, v14, v15);
    v50 = sub_1AFDFBFF8();
    v71 = MEMORY[0x1E69E6158];
    v70[0] = v50;
    v70[1] = v51;
    sub_1AF7FDB64(0x65756C6176, 0xE500000000000000, v70);
    (*(v49 + 8))(v18, v15);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v72);
    v52 = v70;
LABEL_45:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v52);
    goto LABEL_46;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v72);
  (*(v69 + 56))(v14, 1, 1, v15);
  sub_1AF77515C(v14, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
LABEL_46:
  sub_1AF771D2C();
  return v19;
}

void sub_1AF775B40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF775B94(uint64_t a1, unint64_t a2)
{
  if (a2 != 59)
  {
    return sub_1AF687F90(a1, a2);
  }

  return a1;
}

void sub_1AF775BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF775C08()
{
  result = qword_1EB63E6F0;
  if (!qword_1EB63E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6F0);
  }

  return result;
}

unint64_t sub_1AF775C60()
{
  result = qword_1EB63E6F8;
  if (!qword_1EB63E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E6F8);
  }

  return result;
}

unint64_t sub_1AF775CB8()
{
  result = qword_1EB63E700;
  if (!qword_1EB63E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E700);
  }

  return result;
}

uint64_t sub_1AF775D0C(uint64_t a1, uint64_t a2)
{
  v40 = *(a2 + 16);
  v38 = *(a1 + 16);
  if (v40 >= v38)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CA0(0, v4, 0);
  v34 = a1;
  v35 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    v36 = a2 + 32;
    v37 = a1 + 32;
    v9 = v38;
    v8 = v40;
    do
    {
      v10 = 0;
      v11 = v5;
      v5 = 1;
      if ((v11 & 1) != 0 || v7 == v9)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
      }

      else
      {
        v12 = v7 + 1;
        if (v6 == v8)
        {
          v10 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v6 = v8;
        }

        else
        {
          v16 = (v37 + 16 * v7);
          v10 = *v16;
          v13 = v16[1];
          v17 = (v36 + 16 * v6);
          v14 = *v17;
          v15 = v17[1];
          v18 = v6 + 1;

          v6 = v18;
          v9 = v38;
          v8 = v40;
          v5 = 0;
        }

        v7 = v12;
      }

      v20 = *(v42 + 16);
      v19 = *(v42 + 24);
      if (v20 >= v19 >> 1)
      {
        v32 = v7;
        v33 = v6;
        sub_1AFC05CA0(v19 > 1, v20 + 1, 1);
        v7 = v32;
        v6 = v33;
        v9 = v38;
        v8 = v40;
      }

      *(v42 + 16) = v20 + 1;
      v21 = (v42 + 32 * v20);
      v21[4] = v10;
      v21[5] = v13;
      v21[6] = v14;
      v21[7] = v15;
      --v4;
    }

    while (v4);
  }

  else
  {
    v9 = v38;
    v8 = v40;
  }

  if ((v5 & 1) == 0)
  {
    v22 = v9 - v7;
    if (v9 != v7)
    {
      v23 = (v34 + 16 * v7 + 40);
      v24 = v8 - v6;
      v25 = (v35 + 16 * v6 + 40);
      do
      {
        if (!v24)
        {
          break;
        }

        v26 = *v23;
        v27 = *v25;
        v39 = *(v25 - 1);
        v41 = *(v23 - 1);
        v29 = *(v42 + 16);
        v28 = *(v42 + 24);

        if (v29 >= v28 >> 1)
        {
          sub_1AFC05CA0(v28 > 1, v29 + 1, 1);
        }

        *(v42 + 16) = v29 + 1;
        v30 = (v42 + 32 * v29);
        v30[4] = v41;
        v30[5] = v26;
        v30[6] = v39;
        v30[7] = v27;
        v23 += 2;
        --v24;
        v25 += 2;
        --v22;
      }

      while (v22);
    }
  }

  return v42;
}

uint64_t sub_1AF775F50(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = (a2 + 32);
    v5 = v2 - 1;
    while (1)
    {
      v6 = v5;
      v7 = *v4++;
      v8 = sub_1AF77A47C(v7);
      v10 = v9;
      if (v8 == sub_1AF77A47C(a1) && v10 == v11)
      {
        break;
      }

      v13 = sub_1AFDFEE28();

      if ((v13 & 1) == 0)
      {
        v5 = v6 - 1;
        if (v6)
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1AF776018(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 36);
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = *(v2 - 1);
    v5 = *v2;
    v2 += 2;
  }

  while (v4 != a1 || v5 != HIDWORD(a1));
  return v3 != 0;
}

uint64_t sub_1AF776050(unsigned __int8 a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  while (1)
  {
    v4 = __clz(__rbit64(v2));
    if (((1 << v4) & v2) != 0)
    {
      v5 = ~(1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = sub_1AFB79288(v4);
    if (v6 == 28)
    {
      return 0;
    }

    if (v6 == a1)
    {
      break;
    }

    v2 &= v5;
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AF7760DC(uint64_t result, char **a2, char **a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v9 = *a2;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1AF420554(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1AF420554(v11 > 1, v12 + 1, 1, v9);
        *a2 = v9;
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = v7;
      *(v13 + 5) = v8;
      v14 = *a3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v14;
      if ((v15 & 1) == 0)
      {
        v14 = sub_1AF420554(0, *(v14 + 2) + 1, 1, v14);
        *a3 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1AF420554(v16 > 1, v17 + 1, 1, v14);
        *a3 = v14;
      }

      *(v14 + 2) = v17 + 1;
      v18 = &v14[16 * v17];
      *(v18 + 4) = v5;
      *(v18 + 5) = v6;

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF77627C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v14 = *(*(a1 + 56) + 8 * v10);
    v15 = sub_1AF449CB8(*(*(a1 + 48) + 8 * v10));
    if ((v16 & 1) == 0 || *(*(a2 + 56) + 8 * v15) != v14)
    {
      return 0;
    }
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return 1;
    }

    v13 = *(a1 + 72 + 8 * v4);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF776394(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = a1 + 72;
  while (v6)
  {
    v28 = (v6 - 1) & v6;
    v9 = __clz(__rbit64(v6)) | (v3 << 6);
LABEL_13:
    v13 = 16 * v9;
    v14 = a1;
    v15 = (*(a1 + 48) + v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = (*(a1 + 56) + v13);
    v20 = *v18;
    v19 = v18[1];

    v21 = sub_1AF419914(v16, v17);
    v23 = v22;

    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = (*(a2 + 56) + 16 * v21);
    if (*v24 == v20 && v24[1] == v19)
    {

      a1 = v14;
      v6 = v28;
    }

    else
    {
      v26 = sub_1AFDFEE28();

      a1 = v14;
      v6 = v28;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3 << 6;
  while (1)
  {
    v11 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      return 1;
    }

    v12 = *(v8 + 8 * v3);
    v10 += 64;
    ++v3;
    if (v12)
    {
      v28 = (v12 - 1) & v12;
      v9 = __clz(__rbit64(v12)) + v10;
      v3 = v11;
      goto LABEL_13;
    }
  }
}

uint64_t sub_1AF776548(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v37 = v2;
  v38 = v3;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_12:
    v16 = *(*(a1 + 48) + 8 * v12);
    v17 = *(a1 + 56) + 80 * v12;
    v27 = *(v17 + 16);
    v28 = *v17;
    v25 = *(v17 + 32);
    v26 = *(v17 + 48);
    v18 = *(v17 + 64);
    v19 = sub_1AF449CB8(v16);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 56) + 80 * v19;
    v22 = *(v21 + 64);
    if (v22 < 0)
    {
      result = 0;
      if ((v18 & 0x80000000) == 0 || *v21 != v28.i64[0])
      {
        return result;
      }
    }

    else
    {
      v23 = *(v21 + 56);
      v29 = *v21;
      v30 = *(v21 + 8);
      v31 = *(v21 + 24);
      v32 = *(v21 + 40);
      v33 = v23;
      v34 = v22;
      if (v18 < 0)
      {
        return 0;
      }

      v35[0] = v28;
      v35[1] = v27;
      v35[2] = v25;
      v35[3] = v26;
      v36 = v18;
      if ((sub_1AF87C134(&v29, v35) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = v6 << 6;
  while (1)
  {
    v14 = v6 + 1;
    if (v6 + 1 >= v10)
    {
      return 1;
    }

    v15 = *(a1 + 72 + 8 * v6);
    v13 += 64;
    ++v6;
    if (v15)
    {
      v9 = (v15 - 1) & v15;
      v12 = __clz(__rbit64(v15)) + v13;
      v6 = v14;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF7766FC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v10 = v9 | (v4 << 6);
LABEL_12:
    v14 = *(*(a1 + 56) + 8 * v10);
    v15 = sub_1AF449CB8(*(*(a1 + 48) + 8 * v10));
    if (v16)
    {
      v17 = vceq_s32(*(*(a2 + 56) + 8 * v15), v14);
      if (v17.i32[0] & v17.i32[1])
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v4 << 6;
  while (1)
  {
    v12 = v4 + 1;
    if (v4 + 1 >= v8)
    {
      return 1;
    }

    v13 = *(a1 + 72 + 8 * v4);
    v11 += 64;
    ++v4;
    if (v13)
    {
      v7 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v4 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AF776820()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    v2 = *(v0 + 216);
    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v1 = 0;
    if (v5)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v8 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        break;
      }

      v5 = *(v2 + 8 * v7++ + 72);
      if (v5)
      {
        v7 = v8;
        do
        {
LABEL_9:
          v5 &= v5 - 1;
          sub_1AF4486E4();
          v1 |= sub_1AFDFDF18();
        }

        while (v5);
        continue;
      }
    }
  }

  return v1 & 1;
}

uint64_t sub_1AF776964(unsigned __int8 a1)
{
  v2 = a1;
  v3 = 0xE100000000000000;
  v4 = 99;
  v5 = 0xE500000000000000;
  v6 = 0x6C6174656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x7466697773;
  if (a1 != 3)
  {
    v8 = 29546;
    v7 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x7070636A626FLL;
    v3 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(v1 + 216);
  if (*(v11 + 16))
  {
    v12 = sub_1AF419914(v9, v10);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v11 + 56) + 16 * v12);

      return v15;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1AF776A50(unsigned __int8 a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = a1;
    v4 = 0xE100000000000000;
    v5 = 99;
    v6 = 0xE500000000000000;
    v7 = 0x6C6174656DLL;
    v8 = 0xE500000000000000;
    v9 = 0x7466697773;
    if (a1 != 3)
    {
      v9 = 29546;
      v8 = 0xE200000000000000;
    }

    if (a1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (a1)
    {
      v5 = 0x7070636A626FLL;
      v4 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }

    if (*(v2 + 16))
    {
      v12 = sub_1AF419914(v10, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v2 + 56) + 16 * v12);

        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1AF776B40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1AF781CA4(0, &qword_1EB63E7C8, sub_1AF781C50, &_s17CodeSourceSnippetC9ParameterV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF781C50();
  sub_1AFDFF3F8();
  v16 = 0;
  v12 = v14[3];
  sub_1AFDFE8B8();
  if (!v12)
  {
    v15 = 1;
    sub_1AFDFE8B8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF776CDC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1701869940;
  }

  else
  {
    v2 = 1701667182;
  }

  if (*a2)
  {
    v3 = 1701869940;
  }

  else
  {
    v3 = 1701667182;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AF776D54()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF776D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF776E54(uint64_t a1)
{
  v2 = sub_1AF781C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF776E90(uint64_t a1)
{
  v2 = sub_1AF781C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF776ECC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF781A3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1AF776F1C()
{
  v1 = v0;
  v2 = *(v0 + 104);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v17 = *(v0 + 168);
    if (v17)
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        v58 = MEMORY[0x1E69E7CC0];

        sub_1AFC05CE4(0, v18, 0);
        v19 = (v17 + 40);
        do
        {
          v21 = *(v19 - 1);
          v20 = *v19;
          v23 = *(v58 + 16);
          v22 = *(v58 + 24);

          if (v23 >= v22 >> 1)
          {
            sub_1AFC05CE4(v22 > 1, v23 + 1, 1);
          }

          *(v58 + 16) = v23 + 1;
          v24 = v58 + 16 * v23;
          *(v24 + 32) = v21;
          *(v24 + 40) = v20;
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1AF488088();
      v25 = sub_1AFDFCD98();
      v27 = v26;

      v28 = v1[26];
      if (v28)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v25 = 0;
      v27 = 0xE000000000000000;
      v28 = *(v0 + 208);
      if (v28)
      {
LABEL_23:
        v29 = *(v28 + 16);
        if (v29)
        {
          v55 = v25;
          v59 = MEMORY[0x1E69E7CC0];

          sub_1AFC05CE4(0, v29, 0);
          v30 = (v28 + 40);
          do
          {
            v32 = *(v30 - 1);
            v31 = *v30;
            v34 = *(v59 + 16);
            v33 = *(v59 + 24);

            if (v34 >= v33 >> 1)
            {
              sub_1AFC05CE4(v33 > 1, v34 + 1, 1);
            }

            *(v59 + 16) = v34 + 1;
            v35 = v59 + 16 * v34;
            *(v35 + 32) = v32;
            *(v35 + 40) = v31;
            v30 += 2;
            --v29;
          }

          while (v29);

          v25 = v55;
        }

        sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v36 = sub_1AFDFCD98();
        v38 = v37;

        goto LABEL_32;
      }
    }

    v36 = 0;
    v38 = 0xE000000000000000;
LABEL_32:
    MEMORY[0x1B2718AE0](v25, v27);

    MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
    MEMORY[0x1B2718AE0](v36, v38);
    goto LABEL_45;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  if (v4)
  {
    v6 = v1[20];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    v7 = v1[21];
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1AF775D0C(v6, v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    sub_1AFC05CE4(0, v9, 0);
    v10 = v3;
    v11 = (v8 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v57 = *(v11 - 3);
      v60 = *(v11 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v12, v13);

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v57;
      *(v16 + 40) = v60;
      v11 += 4;
      --v9;
    }

    while (v9);

    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v39 = sub_1AFDFCD98();
  v41 = v40;

  if (v1[26])
  {
    v42 = v1[26];
  }

  else
  {
    v42 = v3;
  }

  v43 = *(v42 + 16);
  if (v43)
  {
    v54 = v39;
    v56 = v41;

    sub_1AFC05CE4(0, v43, 0);
    v44 = (v42 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;
      v48 = *(v3 + 16);
      v47 = *(v3 + 24);

      if (v48 >= v47 >> 1)
      {
        sub_1AFC05CE4(v47 > 1, v48 + 1, 1);
      }

      *(v3 + 16) = v48 + 1;
      v49 = v3 + 16 * v48;
      *(v49 + 32) = v45;
      *(v49 + 40) = v46;
      v44 += 2;
      --v43;
    }

    while (v43);

    v41 = v56;
    v39 = v54;
  }

  else
  {
  }

  v50 = sub_1AFDFCD98();
  v52 = v51;

  MEMORY[0x1B2718AE0](v39, v41);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v50, v52);
LABEL_45:

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1AF7774DC(uint64_t a1)
{
  v3 = *(a1 + 216);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 216);
  *(v1 + 216) = 0x8000000000000000;
  sub_1AF78138C(v3, sub_1AF780958, 0, isUniquelyReferenced_nonNull_native, &v8);

  *(v1 + 216) = v8;

  v6 = *(a1 + 224);
  if (*(v1 + 224))
  {
    if (v6)
    {

      v7 = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v1 + 224);
      *(v1 + 224) = 0x8000000000000000;
      sub_1AF78138C(v6, sub_1AF780958, 0, v7, &v8);

      *(v1 + 224) = v8;
    }
  }

  else
  {
    *(v1 + 224) = v6;
  }

  return result;
}

uint64_t sub_1AF777650()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = v0[20];
  v4 = v0[21];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1AF775D0C(v5, v6);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v1;
    sub_1AFC05CE4(0, v8, 0);
    v10 = v2;
    v11 = (v7 + 56);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v39 = *(v11 - 3);
      v41 = *(v11 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v12, v13);

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v39;
      *(v16 + 40) = v41;
      v11 += 4;
      --v8;
    }

    while (v8);

    v1 = v9;
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v17 = sub_1AFDFCD98();
  v19 = v18;

  if (v1[25])
  {
    v20 = v1[25];
  }

  else
  {
    v20 = v2;
  }

  v21 = v2;
  if (v1[26])
  {
    v2 = v1[26];
  }

  v22 = sub_1AF775D0C(v20, v2);

  v23 = *(v22 + 16);
  if (v23)
  {
    v37 = v19;
    v38 = v1;
    sub_1AFC05CE4(0, v23, 0);
    v24 = v21;
    v25 = (v22 + 56);
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v40 = *(v25 - 3);
      v42 = *(v25 - 2);
      swift_bridgeObjectRetain_n();

      MEMORY[0x1B2718AE0](58, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v27, v26);

      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1AFC05CE4(v28 > 1, v29 + 1, 1);
      }

      *(v24 + 16) = v29 + 1;
      v30 = v24 + 16 * v29;
      *(v30 + 32) = v40;
      *(v30 + 40) = v42;
      v25 += 4;
      --v23;
    }

    while (v23);

    v19 = v37;
    v1 = v38;
  }

  else
  {
  }

  v31 = sub_1AFDFCD98();
  v33 = v32;

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF33BD0);
  v35 = v1[2];
  v34 = v1[3];

  MEMORY[0x1B2718AE0](v35, v34);

  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF33BF0);
  MEMORY[0x1B2718AE0](v17, v19);

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF33C10);
  MEMORY[0x1B2718AE0](v31, v33);

  MEMORY[0x1B2718AE0](10589, 0xE200000000000000);
  return 0;
}

uint64_t sub_1AF777A94(unsigned __int8 a1)
{
  v2 = v1;
  v4 = v1[29];
  if (v4)
  {
    v5 = a1;
    v6 = 0xE100000000000000;
    v7 = 99;
    v8 = 0xE500000000000000;
    v9 = 0x6C6174656DLL;
    v10 = 0xE500000000000000;
    v11 = 0x7466697773;
    if (a1 != 3)
    {
      v11 = 29546;
      v10 = 0xE200000000000000;
    }

    if (a1 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1)
    {
      v7 = 0x7070636A626FLL;
      v6 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    if (v5 <= 1)
    {
      v13 = v6;
    }

    else
    {
      v13 = v8;
    }

    if (*(v4 + 16))
    {
      v14 = sub_1AF419914(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v4 + 56) + 16 * v14);

        return v17;
      }
    }

    else
    {
    }
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000053, 0x80000001AFF33ED0);
  v19 = v2[42];
  v20 = v2[43];

  MEMORY[0x1B2718AE0](v19, v20);

  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v22 = v2[2];
  v21 = v2[3];

  MEMORY[0x1B2718AE0](v22, v21);

  MEMORY[0x1B2718AE0](0x6E616C20726F6620, 0xEF203A6567617567);
  v23 = 99;
  v24 = 0xE500000000000000;
  v25 = 0x6C6174656DLL;
  v26 = 0xE500000000000000;
  v27 = 0x7466697773;
  if (a1 != 3)
  {
    v27 = 29546;
    v26 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xE600000000000000;
  if (a1)
  {
    v23 = 0x7070636A626FLL;
  }

  else
  {
    v28 = 0xE100000000000000;
  }

  if (a1 <= 1u)
  {
    v29 = v23;
  }

  else
  {
    v29 = v25;
  }

  if (a1 <= 1u)
  {
    v30 = v28;
  }

  else
  {
    v30 = v24;
  }

  MEMORY[0x1B2718AE0](v29, v30);

  v31 = v34;
  v32 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v33 = v32;
    swift_once();
    v32 = v33;
  }

  v34 = 0;
  sub_1AF0D4F18(v32, &v34, v31, v35);

  return 0;
}

uint64_t sub_1AF777D78()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 216);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v3 + 48) + ((v2 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v10 == 99 && v11 == 0xE100000000000000;
    if (!v13 && (sub_1AFDFEE28() & 1) == 0)
    {
      v14 = v12 == 0x7070636A626FLL && v11 == 0xE600000000000000;
      if (!v14 && (sub_1AFDFEE28() & 1) == 0)
      {
        v15 = v12 == 0x6C6174656DLL && v11 == 0xE500000000000000;
        if (!v15 && (sub_1AFDFEE28() & 1) == 0)
        {
          if (v12 == 0x7466697773 && v11 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
          {
            v16 = 1;
            goto LABEL_25;
          }

          if ((v12 != 29546 || v11 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
          {
            continue;
          }
        }
      }
    }

    v16 = 0;
LABEL_25:
    v17 = *(v1 + 216);
    if (*(v17 + 16))
    {

      v18 = sub_1AF419914(v12, v11);
      if (v19)
      {
        v20 = (*(v17 + 56) + 16 * v18);
        v126 = *v20;
        v129 = v20[1];
        v21 = v16 == 0;
        if (v16)
        {
          v22 = 0;
        }

        else
        {
          v22 = 59;
        }

        if (v21)
        {
          v23 = 0xE100000000000000;
        }

        else
        {
          v23 = 0xE000000000000000;
        }

        MEMORY[0x1B2718AE0](v22, v23);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v1 + 216);
        *(v1 + 216) = 0x8000000000000000;
        v26 = sub_1AF419914(v12, v11);
        v28 = v27;
        v29 = v25[2] + ((v27 & 1) == 0);
        if (v25[3] < v29)
        {
          sub_1AF8357A0(v29, isUniquelyReferenced_nonNull_native);
          v26 = sub_1AF419914(v12, v11);
          if ((v28 & 1) != (v30 & 1))
          {
LABEL_179:
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

LABEL_37:
          v31 = v25;
          if (v28)
          {
            goto LABEL_38;
          }

          goto LABEL_48;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v33 = v26;
        sub_1AF849704();
        v26 = v33;
        v31 = v25;
        if (v28)
        {
LABEL_38:
          v32 = (v31[7] + 16 * v26);
          *v32 = v126;
          v32[1] = v129;

          goto LABEL_49;
        }

LABEL_48:
        v31[(v26 >> 6) + 8] |= 1 << v26;
        v34 = (v31[6] + 16 * v26);
        *v34 = v12;
        v34[1] = v11;
        v35 = (v31[7] + 16 * v26);
        *v35 = v126;
        v35[1] = v129;
        ++v31[2];
LABEL_49:
        *(v1 + 216) = v31;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (v2 + 1 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v2++ + 72);
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  v36 = *(v1 + 224);
  if (!v36)
  {
    goto LABEL_104;
  }

  v37 = 1 << *(v36 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v36 + 64);
  v40 = (v37 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v41 = 0;
  while (2)
  {
    if (v39)
    {
LABEL_58:
      v43 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v44 = (*(v36 + 48) + ((v41 << 10) | (16 * v43)));
      v46 = *v44;
      v45 = v44[1];
      v47 = *v44 == 99 && v45 == 0xE100000000000000;
      if (!v47 && (sub_1AFDFEE28() & 1) == 0)
      {
        v48 = v46 == 0x7070636A626FLL && v45 == 0xE600000000000000;
        if (!v48 && (sub_1AFDFEE28() & 1) == 0)
        {
          v49 = v46 == 0x6C6174656DLL && v45 == 0xE500000000000000;
          if (!v49 && (sub_1AFDFEE28() & 1) == 0)
          {
            if (v46 == 0x7466697773 && v45 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
            {
              v50 = 1;
              v51 = *(v1 + 224);
              if (!v51)
              {
                continue;
              }

              goto LABEL_74;
            }

            if ((v46 != 29546 || v45 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
            {
              continue;
            }
          }
        }
      }

      v50 = 0;
      v51 = *(v1 + 224);
      if (!v51)
      {
        continue;
      }

LABEL_74:
      if (*(v51 + 16))
      {

        v52 = sub_1AF419914(v46, v45);
        if (v53)
        {
          v54 = (*(v51 + 56) + 16 * v52);
          v56 = *v54;
          v55 = v54[1];
          if (!*(v1 + 224))
          {
            *(v1 + 224) = MEMORY[0x1E69E7CC8];
          }

          v127 = v56;
          v130 = v55;
          v57 = v50 == 0;
          if (v50)
          {
            v58 = 0;
          }

          else
          {
            v58 = 59;
          }

          if (v57)
          {
            v59 = 0xE100000000000000;
          }

          else
          {
            v59 = 0xE000000000000000;
          }

          MEMORY[0x1B2718AE0](v58, v59);

          v60 = swift_isUniquelyReferenced_nonNull_native();
          v61 = *(v1 + 224);
          *(v1 + 224) = 0x8000000000000000;
          v62 = sub_1AF419914(v46, v45);
          v64 = v63;
          v65 = v61[2] + ((v63 & 1) == 0);
          if (v61[3] >= v65)
          {
            if ((v60 & 1) == 0)
            {
              v70 = v62;
              sub_1AF849704();
              v62 = v70;
            }
          }

          else
          {
            sub_1AF8357A0(v65, v60);
            v62 = sub_1AF419914(v46, v45);
            if ((v64 & 1) != (v66 & 1))
            {
              goto LABEL_179;
            }
          }

          if (v64)
          {
            v67 = (v61[7] + 16 * v62);
            *v67 = v127;
            v67[1] = v130;
          }

          else
          {
            v61[(v62 >> 6) + 8] |= 1 << v62;
            v68 = (v61[6] + 16 * v62);
            *v68 = v46;
            v68[1] = v45;
            v69 = (v61[7] + 16 * v62);
            *v69 = v127;
            v69[1] = v130;
            ++v61[2];
          }

          *(v1 + 224) = v61;
        }

        else
        {
        }
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v42 = v41 + 1;
    if (v41 + 1 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v41++ + 72);
    if (v39)
    {
      v41 = v42;
      goto LABEL_58;
    }
  }

LABEL_104:
  v71 = MEMORY[0x1E69E7CC0];
  if (*(v1 + 200))
  {
    v72 = *(v1 + 200);
  }

  else
  {
    v72 = MEMORY[0x1E69E7CC0];
  }

  if (*(v1 + 208))
  {
    v73 = *(v1 + 208);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = sub_1AF775D0C(v72, v73);

  v75 = *(v74 + 16);
  if (v75)
  {
    v76 = v74 + 56;
    do
    {
      v76 += 32;

      sub_1AF781654(v1);

      --v75;
    }

    while (v75);
  }

  v77 = *(v1 + 200);
  if (!v77)
  {
    goto LABEL_156;
  }

  v78 = *(v1 + 200);
  if (v77[2] == 1)
  {
    v80 = v77[4];
    v79 = v77[5];
    v81 = *(v1 + 216);
    v82 = 1 << *(v81 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v81 + 64);
    v85 = (v82 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v86 = 0;
    v125 = v79;
    while (v84)
    {
LABEL_123:
      v88 = __clz(__rbit64(v84));
      v84 &= v84 - 1;
      v89 = (*(v81 + 48) + ((v86 << 10) | (16 * v88)));
      v90 = *v89;
      v91 = v89[1];
      v92 = *v89 == 99 && v91 == 0xE100000000000000;
      if (!v92 && (sub_1AFDFEE28() & 1) == 0)
      {
        v93 = v90 == 0x7070636A626FLL && v91 == 0xE600000000000000;
        if (!v93 && (sub_1AFDFEE28() & 1) == 0 && (v90 != 0x6C6174656DLL || v91 != 0xE500000000000000))
        {
          v95 = sub_1AFDFEE28();
          v96 = v90 == 0x7466697773 && v91 == 0xE500000000000000;
          v97 = v96;
          if ((v95 & 1) == 0 && !v97 && (sub_1AFDFEE28() & 1) == 0 && (v90 != 29546 || v91 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
          {
            continue;
          }
        }
      }

      v98 = *(v1 + 216);
      if (*(v98 + 16))
      {

        v99 = sub_1AF419914(v90, v91);
        if (v100)
        {
          v101 = (*(v98 + 56) + 16 * v99);
          v102 = v101[1];
          v124 = *v101;
          sub_1AF4486E4();

          if (sub_1AFDFDF18() & 1) != 0 || (MEMORY[0x1B2718AE0](v80, v125), sub_1AF770DF0(), sub_1AF770E44(), v103 = sub_1AFDFCD68(), , (v103))
          {
          }

          else
          {

            MEMORY[0x1B2718AE0](v80, v125);
            MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
            MEMORY[0x1B2718AE0](v124, v102);

            v104 = swift_isUniquelyReferenced_nonNull_native();
            v128 = *(v1 + 216);
            *(v1 + 216) = 0x8000000000000000;
            sub_1AF854CE8(36, 0xE100000000000000, v90, v91, v104);

            *(v1 + 216) = v128;
          }
        }
      }
    }

    while (1)
    {
      v87 = v86 + 1;
      if (v86 + 1 >= v85)
      {
        break;
      }

      v84 = *(v81 + 8 * v86++ + 72);
      if (v84)
      {
        v86 = v87;
        goto LABEL_123;
      }
    }

    v78 = *(v1 + 200);
    v71 = MEMORY[0x1E69E7CC0];
    if (!v78)
    {
LABEL_156:
      v78 = MEMORY[0x1E69E7CC0];
    }
  }

  if (*(v1 + 208))
  {
    v105 = *(v1 + 208);
  }

  else
  {
    v105 = v71;
  }

  v106 = sub_1AF775D0C(v78, v105);

  v107 = *(v106 + 16);
  if (v107)
  {
    v108 = (v106 + 56);
    do
    {
      v109 = *(v108 - 3);
      v110 = *(v108 - 2);
      v111 = *(v108 - 1);
      v112 = *v108;

      sub_1AF778B10(v109, v110, v111, v112, v1);

      v108 += 4;
      --v107;
    }

    while (v107);
  }

  v113 = *(v1 + 192);
  if (v113)
  {
    v114 = sub_1AFB7B948(v113, &unk_1F24F7978);
    sub_1AF585778(&unk_1F24F7998);
    if (v114)
    {
      *(v1 + 192) = *(v1 + 160);
    }
  }

  else
  {
    sub_1AF585778(&unk_1F24F7998);
  }

  v115 = *(v1 + 216);
  v116 = 1 << *(v115 + 32);
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v118 = v117 & *(v115 + 64);
  v119 = (v116 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v120 = 0;
  if (v118)
  {
    while (1)
    {
      v121 = v120;
LABEL_173:
      sub_1AF4486E4();

      if (sub_1AFDFDF18())
      {
        break;
      }

      v118 &= v118 - 1;

      v120 = v121;
      if (!v118)
      {
        goto LABEL_171;
      }
    }

    v122 = 1;
  }

  else
  {
LABEL_171:
    while (1)
    {
      v121 = v120 + 1;
      if (v120 + 1 >= v119)
      {
        break;
      }

      v118 = *(v115 + 72 + 8 * v120++);
      if (v118)
      {
        goto LABEL_173;
      }
    }

    v122 = 0;
  }

  *(v1 + 240) = v122;
  return result;
}

uint64_t sub_1AF778B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v88 = a3;
  v87 = a2;
  v94 = a1;
  sub_1AF7811A0(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v86 = &v81 - v8;
  v9 = *(a5 + 216);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v83 = 0x80000001AFF33DF0;
  v82 = "CodeGenContext.typeAsCode: ";
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v81 = 0xD00000000000001BLL;
  v90 = a5;
  v85 = v13;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(v9 + 48) + ((v14 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *v17 == 99 && v19 == 0xE100000000000000;
    v95 = *v17;
    if (v20 || (sub_1AFDFEE28() & 1) != 0)
    {
      v21 = 0;
      v22 = 0;
LABEL_15:
      v23 = *(a5 + 216);
      if (*(v23 + 16))
      {

        v24 = sub_1AF419914(v95, v19);
        if (v25)
        {
          v93 = v19;
          v26 = (*(v23 + 56) + 16 * v24);
          v27 = *v26;
          v92 = v26[1];

          v28 = v89;

          sub_1AF809DF8(v88, v28, &v100);
          v29 = v101;
          v30 = v102;
          v31 = v104;
          v105[0] = v100;
          v105[1] = v101;
          v105[2] = v102;
          v105[3] = v103;
          v105[4] = v104;
          if (v21)
          {
            v91 = v103;
            v98 = 544499052;
            v99 = 0xE400000000000000;
            MEMORY[0x1B2718AE0](36, 0xE100000000000000);
            v32 = v87;
            MEMORY[0x1B2718AE0](v94, v87);
            MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
            if (v29 < 0x3B)
            {
              v33 = sub_1AF7E4930(v105);
              v35 = v34;
              goto LABEL_48;
            }

            if (*(v31 + 16) && (v38 = v27, v42 = sub_1AF41A220(3u), (v43 & 1) != 0))
            {
              v44 = (*(v31 + 56) + 16 * v42);
              v45 = *v44;
              v35 = v44[1];

              v33 = v45;
            }

            else
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v96 = 0;
              v97 = 0xE000000000000000;
              sub_1AFDFE218();

              v96 = v81;
              v97 = v83;
              MEMORY[0x1B2718AE0](v30, v91);
              MEMORY[0x1B2718AE0](0xD000000000000011, v82 | 0x8000000000000000);
              MEMORY[0x1B2718AE0](0x4C28207466697753, 0xEE00297963616765);
              v53 = v96;
              v52 = v97;
              v54 = sub_1AFDFDA18();
              if (qword_1ED731058 != -1)
              {
                v78 = v54;
                swift_once();
                v54 = v78;
              }

              v96 = 0;
              sub_1AF0D4F18(v54, &v96, v53, v52);

              v33 = 0;
              v35 = 0xE000000000000000;
LABEL_48:
              v38 = v27;
            }

            MEMORY[0x1B2718AE0](v33, v35);

            sub_1AF781D0C(&v100, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720], sub_1AF780FD0);
            v84 = v98;
            v91 = v99;
            v55 = v94;
            goto LABEL_76;
          }

          v98 = 0x2074736E6F63;
          v99 = 0xE600000000000000;
          if (v101 >= 0x3B)
          {
            v46 = v103;
            if (!*(v104 + 16) || (v47 = sub_1AF41A220(v22), (v48 & 1) == 0))
            {
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v96 = 0;
              v97 = 0xE000000000000000;
              sub_1AFDFE218();

              v96 = 0xD00000000000001BLL;
              v97 = v83;
              MEMORY[0x1B2718AE0](v30, v46);
              MEMORY[0x1B2718AE0](0xD000000000000011, v82 | 0x8000000000000000);
              if (v22 <= 1)
              {
                if (v22)
                {
                  v57 = 0x7070436A624FLL;
                }

                else
                {
                  v57 = 67;
                }

                if (v22)
                {
                  v56 = 0xE600000000000000;
                }

                else
                {
                  v56 = 0xE100000000000000;
                }
              }

              else
              {
                if (v22 != 2)
                {
                  if (v22 == 4)
                  {
                    v56 = 0xEA00000000007470;
                    v57 = 0x697263536176614ALL;
                    goto LABEL_71;
                  }

                  v38 = v27;
                  v57 = 0x4C28207466697753;
                  v56 = 0xEE00297963616765;
LABEL_72:
                  MEMORY[0x1B2718AE0](v57, v56);

                  v60 = v96;
                  v61 = v97;
                  v62 = sub_1AFDFDA18();
                  if (qword_1ED731058 != -1)
                  {
                    v79 = v62;
                    swift_once();
                    v62 = v79;
                  }

                  v96 = 0;
                  sub_1AF0D4F18(v62, &v96, v60, v61);

                  v39 = 0;
                  v41 = 0xE000000000000000;
                  v32 = v87;
                  goto LABEL_75;
                }

                v57 = 0x6C6174654DLL;
                v56 = 0xE500000000000000;
              }

LABEL_71:
              v38 = v27;
              goto LABEL_72;
            }

            v49 = (*(v31 + 56) + 16 * v47);
            v50 = *v49;
            v41 = v49[1];

            v39 = v50;
            v32 = v87;
            v38 = v27;
          }

          else
          {
            v37 = v22 >= 2;
            if (v22 > 2)
            {
              v20 = v22 == 3;
              v32 = v87;
              v38 = v27;
              if (!v20)
              {
LABEL_59:
                v39 = sub_1AF7E54DC(v105);
                v41 = v59;
                goto LABEL_75;
              }

              v39 = sub_1AF7E4930(v105);
              v41 = v58;
            }

            else
            {
              v32 = v87;
              v38 = v27;
              if (!v37)
              {
                goto LABEL_59;
              }

              v39 = sub_1AF7E4F70(v105);
              v41 = v40;
            }
          }

LABEL_75:
          MEMORY[0x1B2718AE0](v39, v41);

          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](36, 0xE100000000000000);
          v55 = v94;
          MEMORY[0x1B2718AE0](v94, v32);
          sub_1AF781D0C(&v100, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720], sub_1AF780FD0);
          v84 = v98;
          v91 = v99;
LABEL_76:
          v98 = 36;
          v99 = 0xE100000000000000;
          MEMORY[0x1B2718AE0](v55, v32);
          v63 = v98;
          v64 = v99;
          v65 = v92;
          v98 = v38;
          v99 = v92;
          v96 = v63;
          v97 = v64;
          v66 = sub_1AFDFC328();
          v67 = v38;
          v68 = v86;
          (*(*(v66 - 8) + 56))(v86, 1, 1, v66);
          sub_1AF4486E4();
          v69 = sub_1AFDFDEF8();
          v71 = v70;
          v73 = v72;
          sub_1AF781D0C(v68, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1AF7811A0);

          if (v73)
          {
          }

          else
          {
            v67 = sub_1AF9AADA8(v69, v71, v84, v91, v67, v65);
            v75 = v74;

            v65 = v75;
          }

          a5 = v90;
          v76 = v95;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v98 = *(a5 + 216);
          *(a5 + 216) = 0x8000000000000000;
          sub_1AF854CE8(v67, v65, v76, v93, isUniquelyReferenced_nonNull_native);

          *(a5 + 216) = v98;
          v13 = v85;
        }

        else
        {
        }
      }
    }

    else
    {
      v36 = v18 == 0x7070636A626FLL && v19 == 0xE600000000000000;
      if (v36 || (sub_1AFDFEE28() & 1) != 0)
      {
        v21 = 0;
        v22 = 1;
        goto LABEL_15;
      }

      v51 = v18 == 0x6C6174656DLL && v19 == 0xE500000000000000;
      if (v51 || (sub_1AFDFEE28() & 1) != 0)
      {
        v21 = 0;
        v22 = 2;
        goto LABEL_15;
      }

      if (v18 == 0x7466697773 && v19 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v22 = 3;
        v21 = 1;
        goto LABEL_15;
      }

      if (v18 == 29546 && v19 == 0xE200000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v21 = 0;
        v22 = 4;
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }
}

void sub_1AF77957C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v186 = *(v0 + 144);
    v2 = sub_1AFB7B948(v1, &unk_1F24F7A08);

    v3 = sub_1AF585778(&unk_1F24F7A28);
    if (v2)
    {
      *&v189[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, 59, 0);
      v5 = 0x20u;
      v6 = *&v189[0];
      do
      {
        v7 = *(&unk_1F24F5668 + v5 + 16);
        v193 = *(&unk_1F24F5668 + v5);
        v194 = v7;
        v195 = *(&unk_1F24F5668 + v5 + 32);
        sub_1AF444F60(&v193, v191);
        v8 = sub_1AF7FE65C();
        v10 = v9;
        sub_1AF444FBC(&v193);
        *&v189[0] = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1AFC05CE4(v11 > 1, v12 + 1, 1);
          v6 = *&v189[0];
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
        v5 += 40;
      }

      while (v5 != 2392);
    }

    else
    {
      v14 = 0x80000001AFF33E70;
      v181 = "ALL_UNSIGNED_INT_TYPES";
      v182 = 0x80000001AFF33E90;
      strcpy(&v193, "ALL_INT_TYPES");
      HIWORD(v193) = -4864;
      MEMORY[0x1EEE9AC00](v3, v4);
      v176 = &v193;
      v15 = sub_1AF7B9518(sub_1AF7714A4, v175, v1);
      v180 = 0;
      if (v15)
      {
        v17 = *(v1 + 16);
        v179 = 0x80000001AFF33E70;
        if (v17)
        {
          v18 = 0;
          v19 = v1 + 40;
          v20 = -v17;
          v21 = MEMORY[0x1E69E7CC0];
          v177 = v1 + 40;
          do
          {
            v178 = v21;
            v22 = (v19 + 16 * v18++);
            while (1)
            {
              v24 = *(v22 - 1);
              v23 = *v22;
              v25 = v24 == 0x5F544E495F4C4C41 && v23 == 0xED00005345505954;
              if (!v25 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v22 += 2;
              ++v18;
              if (v20 + v18 == 1)
              {
                v21 = v178;
                goto LABEL_26;
              }
            }

            v21 = v178;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v193 = v21;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v21 + 16) + 1, 1);
              v21 = v193;
            }

            v28 = *(v21 + 16);
            v27 = *(v21 + 24);
            v29 = v28 + 1;
            if (v28 >= v27 >> 1)
            {
              v178 = v28 + 1;
              sub_1AFC05CE4(v27 > 1, v28 + 1, 1);
              v29 = v178;
              v21 = v193;
            }

            *(v21 + 16) = v29;
            v30 = v21 + 16 * v28;
            *(v30 + 32) = v24;
            *(v30 + 40) = v23;
            v14 = v179;
            v19 = v177;
          }

          while (v20 + v18);
        }

        else
        {
          v21 = MEMORY[0x1E69E7CC0];
        }

LABEL_26:

        v31 = 0;
        v186 = v21;
        v32 = MEMORY[0x1E69E7CC0];
        v33 = MEMORY[0x1E69E7CC0];
LABEL_27:
        v34 = &unk_1F24F5668 + 40 * v31 + 16;
        while (++v31 != 60)
        {
          v35 = (v34 + 40);
          v36 = *(v34 + 3);
          v34 += 40;
          if (v36 - 1 < 9)
          {
            v37 = *(v35 - 3);
            v38 = *(v35 - 1);
            v39 = v35[1];
            v177 = *v35;
            v178 = v38;
            sub_1AF687F90(v37, v36);
            v40 = swift_isUniquelyReferenced_nonNull_native();
            *&v193 = v33;
            if ((v40 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v33 + 16) + 1, 1);
              v33 = v193;
            }

            v42 = *(v33 + 16);
            v41 = *(v33 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_1AFC071E4(v41 > 1, v42 + 1, 1);
              v33 = v193;
            }

            *(v33 + 16) = v42 + 1;
            v43 = (v33 + 40 * v42);
            v43[4] = v37;
            v43[5] = v36;
            v44 = v177;
            v43[6] = v178;
            v43[7] = v44;
            v43[8] = v39;
            goto LABEL_27;
          }
        }

        v45 = *(v33 + 16);
        if (v45)
        {
          *&v189[0] = v32;
          sub_1AFC05CE4(0, v45, 0);
          v46 = 32;
          v47 = *&v189[0];
          do
          {
            v48 = *(v33 + v46);
            v49 = *(v33 + v46 + 16);
            v195 = *(v33 + v46 + 32);
            v193 = v48;
            v194 = v49;
            sub_1AF444F60(&v193, v191);
            v50 = sub_1AF7FE65C();
            v52 = v51;
            sub_1AF444FBC(&v193);
            *&v189[0] = v47;
            v54 = *(v47 + 16);
            v53 = *(v47 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_1AFC05CE4(v53 > 1, v54 + 1, 1);
              v47 = *&v189[0];
            }

            *(v47 + 16) = v54 + 1;
            v55 = v47 + 16 * v54;
            *(v55 + 32) = v50;
            *(v55 + 40) = v52;
            v46 += 40;
            --v45;
          }

          while (v45);

          v14 = v179;
        }

        else
        {

          v47 = MEMORY[0x1E69E7CC0];
        }

        v15 = sub_1AF48FAF8(v47);
        v1 = v186;
      }

      v56 = v182;
      v181 |= 0x8000000000000000;
      *&v191[0] = 0xD000000000000014;
      *(&v191[0] + 1) = v14;
      MEMORY[0x1EEE9AC00](v15, v16);
      v176 = v191;
      v57 = v180;
      v58 = sub_1AF7B9518(sub_1AF7714A4, v175, v1);
      if (v58)
      {
        v180 = v57;
        v60 = *(v1 + 16);
        if (v60)
        {
          v61 = 0;
          v62 = v1 + 40;
          v63 = -v60;
          v64 = MEMORY[0x1E69E7CC0];
          v178 = v1 + 40;
          do
          {
            v65 = (v62 + 16 * v61++);
            while (1)
            {
              v66 = *(v65 - 1);
              v67 = *v65;
              v68 = v66 == 0xD000000000000014 && v14 == v67;
              if (!v68 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v65 += 2;
              ++v61;
              if (v63 + v61 == 1)
              {
                goto LABEL_61;
              }
            }

            v69 = swift_isUniquelyReferenced_nonNull_native();
            *&v191[0] = v64;
            if ((v69 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v64 + 16) + 1, 1);
              v64 = *&v191[0];
            }

            v71 = *(v64 + 16);
            v70 = *(v64 + 24);
            v72 = v71 + 1;
            if (v71 >= v70 >> 1)
            {
              v177 = v71 + 1;
              sub_1AFC05CE4(v70 > 1, v71 + 1, 1);
              v72 = v177;
              v64 = *&v191[0];
            }

            *(v64 + 16) = v72;
            v73 = v64 + 16 * v71;
            *(v73 + 32) = v66;
            *(v73 + 40) = v67;
            v62 = v178;
          }

          while (v63 + v61);
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

LABEL_61:

        v74 = 0;
        v186 = v64;
        v75 = MEMORY[0x1E69E7CC0];
        v76 = MEMORY[0x1E69E7CC0];
LABEL_62:
        v77 = &unk_1F24F5668 + 40 * v74 + 16;
        while (++v74 != 60)
        {
          v78 = (v77 + 40);
          v79 = *(v77 + 3);
          v77 += 40;
          if (v79 - 5 < 5)
          {
            v80 = *(v78 - 3);
            v81 = *(v78 - 1);
            v82 = v78[1];
            v178 = *v78;
            v179 = v81;
            sub_1AF687F90(v80, v79);
            v83 = swift_isUniquelyReferenced_nonNull_native();
            *&v191[0] = v76;
            if ((v83 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v76 + 16) + 1, 1);
              v76 = *&v191[0];
            }

            v85 = *(v76 + 16);
            v84 = *(v76 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_1AFC071E4(v84 > 1, v85 + 1, 1);
              v76 = *&v191[0];
            }

            *(v76 + 16) = v85 + 1;
            v86 = (v76 + 40 * v85);
            v86[4] = v80;
            v86[5] = v79;
            v87 = v178;
            v86[6] = v179;
            v86[7] = v87;
            v86[8] = v82;
            goto LABEL_62;
          }
        }

        v88 = *(v76 + 16);
        if (v88)
        {
          *&v187[0] = v75;
          sub_1AFC05CE4(0, v88, 0);
          v89 = 32;
          v90 = *&v187[0];
          do
          {
            v91 = *(v76 + v89);
            v92 = *(v76 + v89 + 16);
            v192 = *(v76 + v89 + 32);
            v191[0] = v91;
            v191[1] = v92;
            sub_1AF444F60(v191, v189);
            v93 = sub_1AF7FE65C();
            v95 = v94;
            sub_1AF444FBC(v191);
            *&v187[0] = v90;
            v97 = *(v90 + 16);
            v96 = *(v90 + 24);
            if (v97 >= v96 >> 1)
            {
              sub_1AFC05CE4(v96 > 1, v97 + 1, 1);
              v90 = *&v187[0];
            }

            *(v90 + 16) = v97 + 1;
            v98 = v90 + 16 * v97;
            *(v98 + 32) = v93;
            *(v98 + 40) = v95;
            v89 += 40;
            --v88;
          }

          while (v88);

          v56 = v182;
        }

        else
        {

          v90 = MEMORY[0x1E69E7CC0];
        }

        v58 = sub_1AF48FAF8(v90);
        v1 = v186;
        v57 = v180;
      }

      *&v189[0] = 0xD000000000000016;
      *(&v189[0] + 1) = v56;
      MEMORY[0x1EEE9AC00](v58, v59);
      v176 = v189;
      v99 = sub_1AF7B9518(sub_1AF7714A4, v175, v1);
      if (v99)
      {
        v182 = v57;
        v101 = *(v1 + 16);
        if (v101)
        {
          v102 = 0;
          v103 = v1 + 40;
          v104 = -v101;
          v105 = MEMORY[0x1E69E7CC0];
          do
          {
            v106 = (v103 + 16 * v102++);
            while (1)
            {
              v107 = *(v106 - 1);
              v108 = *v106;
              v109 = v107 == 0xD000000000000016 && v56 == v108;
              if (!v109 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v106 += 2;
              ++v102;
              if (v104 + v102 == 1)
              {
                goto LABEL_95;
              }
            }

            v110 = swift_isUniquelyReferenced_nonNull_native();
            *&v189[0] = v105;
            v180 = v103;
            if ((v110 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v105 + 16) + 1, 1);
              v105 = *&v189[0];
            }

            v112 = *(v105 + 16);
            v111 = *(v105 + 24);
            if (v112 >= v111 >> 1)
            {
              sub_1AFC05CE4(v111 > 1, v112 + 1, 1);
              v105 = *&v189[0];
            }

            *(v105 + 16) = v112 + 1;
            v113 = v105 + 16 * v112;
            *(v113 + 32) = v107;
            *(v113 + 40) = v108;
            v103 = v180;
          }

          while (v104 + v102);
        }

        else
        {
          v105 = MEMORY[0x1E69E7CC0];
        }

LABEL_95:

        v114 = 0;
        v186 = v105;
        v115 = MEMORY[0x1E69E7CC0];
LABEL_96:
        v116 = &unk_1F24F5668 + 40 * v114 + 16;
        while (++v114 != 60)
        {
          v117 = (v116 + 40);
          v118 = *(v116 + 3);
          v116 += 40;
          if (v118 - 1 < 4)
          {
            v119 = *(v117 - 3);
            v120 = v117[1];
            v121 = *(v117 - 1);
            v180 = *v117;
            sub_1AF687F90(v119, v118);
            v122 = swift_isUniquelyReferenced_nonNull_native();
            *&v189[0] = v115;
            if ((v122 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v115 + 16) + 1, 1);
              v115 = *&v189[0];
            }

            v124 = *(v115 + 16);
            v123 = *(v115 + 24);
            if (v124 >= v123 >> 1)
            {
              sub_1AFC071E4(v123 > 1, v124 + 1, 1);
              v115 = *&v189[0];
            }

            *(v115 + 16) = v124 + 1;
            v125 = (v115 + 40 * v124);
            v125[4] = v119;
            v125[5] = v118;
            v126 = v180;
            v125[6] = v121;
            v125[7] = v126;
            v125[8] = v120;
            goto LABEL_96;
          }
        }

        v127 = *(v115 + 16);
        if (v127)
        {
          v184[0] = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v127, 0);
          v128 = 32;
          v129 = v184[0];
          do
          {
            v130 = *(v115 + v128);
            v131 = *(v115 + v128 + 16);
            v190 = *(v115 + v128 + 32);
            v189[0] = v130;
            v189[1] = v131;
            sub_1AF444F60(v189, v187);
            v132 = sub_1AF7FE65C();
            v134 = v133;
            sub_1AF444FBC(v189);
            v184[0] = v129;
            v136 = *(v129 + 16);
            v135 = *(v129 + 24);
            if (v136 >= v135 >> 1)
            {
              sub_1AFC05CE4(v135 > 1, v136 + 1, 1);
              v129 = v184[0];
            }

            *(v129 + 16) = v136 + 1;
            v137 = v129 + 16 * v136;
            *(v137 + 32) = v132;
            *(v137 + 40) = v134;
            v128 += 40;
            --v127;
          }

          while (v127);
        }

        else
        {

          v129 = MEMORY[0x1E69E7CC0];
        }

        v99 = sub_1AF48FAF8(v129);
        v57 = v182;
      }

      v6 = v186;
      v138 = v181;
      *&v187[0] = 0xD000000000000010;
      *(&v187[0] + 1) = v181;
      MEMORY[0x1EEE9AC00](v99, v100);
      v176 = v187;
      if (sub_1AF7B9518(sub_1AF7714A4, v175, v6))
      {
        v180 = v57;
        v139 = *(v6 + 16);
        if (v139)
        {
          v140 = 0;
          v141 = -v139;
          v142 = MEMORY[0x1E69E7CC0];
          do
          {
            v143 = (v6 + 40 + 16 * v140++);
            while (1)
            {
              v144 = *(v143 - 1);
              v145 = *v143;
              v146 = v144 == 0xD000000000000010 && v138 == v145;
              if (!v146 && (sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v143 += 2;
              ++v140;
              if (v141 + v140 == 1)
              {
                goto LABEL_129;
              }
            }

            v147 = swift_isUniquelyReferenced_nonNull_native();
            *&v187[0] = v142;
            if ((v147 & 1) == 0)
            {
              sub_1AFC05CE4(0, *(v142 + 16) + 1, 1);
              v142 = *&v187[0];
            }

            v149 = *(v142 + 16);
            v148 = *(v142 + 24);
            if (v149 >= v148 >> 1)
            {
              sub_1AFC05CE4(v148 > 1, v149 + 1, 1);
              v142 = *&v187[0];
            }

            *(v142 + 16) = v149 + 1;
            v150 = v142 + 16 * v149;
            *(v150 + 32) = v144;
            *(v150 + 40) = v145;
            v138 = v181;
          }

          while (v141 + v140);
        }

        else
        {
          v142 = MEMORY[0x1E69E7CC0];
        }

LABEL_129:

        v151 = 0;
        v186 = v142;
        v152 = MEMORY[0x1E69E7CC0];
        v153 = MEMORY[0x1E69E7CC0];
LABEL_130:
        v154 = &unk_1F24F5668 + 40 * v151 + 16;
        while (++v151 != 60)
        {
          v155 = (v154 + 40);
          v156 = *(v154 + 3);
          v154 += 40;
          if (v156 - 17 < 9)
          {
            v157 = *(v155 - 3);
            v158 = *v155;
            v159 = v155[1];
            v182 = *(v155 - 1);
            sub_1AF687F90(v157, v156);
            v160 = swift_isUniquelyReferenced_nonNull_native();
            *&v187[0] = v153;
            if ((v160 & 1) == 0)
            {
              sub_1AFC071E4(0, *(v153 + 16) + 1, 1);
              v153 = *&v187[0];
            }

            v162 = *(v153 + 16);
            v161 = *(v153 + 24);
            if (v162 >= v161 >> 1)
            {
              sub_1AFC071E4(v161 > 1, v162 + 1, 1);
              v153 = *&v187[0];
            }

            *(v153 + 16) = v162 + 1;
            v163 = (v153 + 40 * v162);
            v163[4] = v157;
            v163[5] = v156;
            v163[6] = v182;
            v163[7] = v158;
            v163[8] = v159;
            goto LABEL_130;
          }
        }

        v164 = *(v153 + 16);
        if (v164)
        {
          v185 = v152;
          sub_1AFC05CE4(0, v164, 0);
          v165 = 32;
          v166 = v185;
          do
          {
            v167 = *(v153 + v165);
            v168 = *(v153 + v165 + 16);
            v188 = *(v153 + v165 + 32);
            v187[0] = v167;
            v187[1] = v168;
            sub_1AF444F60(v187, v184);
            v169 = sub_1AF7FE65C();
            v171 = v170;
            sub_1AF444FBC(v187);
            v185 = v166;
            v173 = *(v166 + 16);
            v172 = *(v166 + 24);
            if (v173 >= v172 >> 1)
            {
              sub_1AFC05CE4(v172 > 1, v173 + 1, 1);
              v166 = v185;
            }

            *(v166 + 16) = v173 + 1;
            v174 = v166 + 16 * v173;
            *(v174 + 32) = v169;
            *(v174 + 40) = v171;
            v165 += 40;
            --v164;
          }

          while (v164);
        }

        else
        {

          v166 = MEMORY[0x1E69E7CC0];
        }

        sub_1AF48FAF8(v166);
        v6 = v186;
      }
    }

    *(v183 + 144) = v6;
  }
}

unint64_t sub_1AF77A47C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 9:
    case 10:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x54636972656E6567;
      break;
    case 5:
    case 8:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 1701080931;
      break;
    case 12:
      result = 0x70795465756C6176;
      break;
    case 13:
    case 16:
    case 30:
      result = 0xD000000000000012;
      break;
    case 14:
    case 15:
      result = 0x7461636572706564;
      break;
    case 17:
      result = 0x65756C6156736168;
      break;
    case 18:
      result = 0x656D617261506E69;
      break;
    case 19:
      result = 0x6D6172615074756FLL;
      break;
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x6E6564646968;
      break;
    case 23:
      result = 0x7069746C6F6F74;
      break;
    case 24:
      result = 0x4370756E61656C63;
      break;
    case 25:
      result = 0x7473655470696B73;
      break;
    case 26:
      result = 0x65706544656D6974;
      break;
    case 27:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0x6574726F70707573;
      break;
    case 29:
      result = 0x61656C6261736964;
      break;
    case 31:
      result = 0x53746C7561666564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF77A7CC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF77A47C(*a1);
  v5 = v4;
  if (v3 == sub_1AF77A47C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF77A854()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF77A47C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF77A8B8()
{
  sub_1AF77A47C(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF77A90C()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF77A47C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF77A96C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7819E8();
  *a1 = result;
  return result;
}

unint64_t sub_1AF77A99C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF77A47C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF77A9D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7819E8();
  *a1 = result;
  return result;
}

uint64_t sub_1AF77AA04(uint64_t a1)
{
  v2 = sub_1AF780B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF77AA40(uint64_t a1)
{
  v2 = sub_1AF780B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF77AA7C(void *a1)
{
  v3 = v1;
  v327 = *v1;
  v328 = v2;
  sub_1AF0D4E74();
  v319 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v318 = &v297 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_1AFDFC298();
  v320 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317, v8);
  v316 = &v297 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF781CA4(0, &qword_1EB63E708, sub_1AF780B60, &_s17CodeSourceSnippetC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v325 = v10;
  v323 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v297 - v12;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 80) = 2;
  *(v3 + 26) = 33686018;
  v3[11] = 0;
  v3[12] = 0;
  *(v3 + 7) = 0u;
  *(v3 + 107) = 33686018;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  v3[26] = 0;
  v3[27] = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v3[28] = 0;
  v3[29] = 0;
  *(v3 + 240) = 0;
  *(v3 + 31) = xmmword_1AFE76620;
  *(v3 + 33) = 0u;
  *(v3 + 35) = 0u;
  v3[37] = 0;
  *(v3 + 304) = 2;
  *(v3 + 39) = 0u;
  *(v3 + 41) = 0u;
  v3[43] = 0xE000000000000000;
  v3[44] = &unk_1F25001A8;
  v337 = v3;
  v3[45] = 0;
  v14 = a1[3];
  v326 = a1;
  sub_1AF441150(a1, v14);
  sub_1AF780B60();
  v324 = v13;
  v15 = v328;
  sub_1AFDFF3B8();
  if (v15)
  {
    v20 = v337;

    sub_1AF771214(v20[31], v20[32]);

    swift_deallocPartialClassInstance();
    v21 = v326;
LABEL_4:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
    return v20;
  }

  v322 = (v3 + 28);
  v328 = (v3 + 4);
  v314 = (v3 + 13);
  v313 = (v3 + 14);
  v311 = v3 + 39;
  v312 = MEMORY[0x1E69E7CC0];
  LOBYTE(v330) = 0;
  v16 = v324;
  v17 = v325;
  v18 = sub_1AFDFE708();
  v315 = 0;
  v23 = v337;
  v337[2] = v18;
  v23[3] = v19;
  v24 = sub_1AFDFE7F8();
  v25 = v17;
  v26 = sub_1AF775F50(9, v24);

  if (v26)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v329[0]) = 9;
    sub_1AF780C48();
    v27 = v315;
    sub_1AFDFE768();
    v28 = v328;
    v29 = v326;
    if (v27)
    {
      (*(v323 + 8))(v16, v25);
LABEL_136:
      v20 = v337;

      v21 = v29;
      goto LABEL_4;
    }

    v315 = 0;
    v337[25] = v330;
  }

  else
  {
    v28 = v328;
    v29 = v326;
  }

  v30 = sub_1AFDFE7F8();
  v31 = sub_1AF775F50(10, v30);

  if (v31)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v329[0]) = 10;
    sub_1AF780C48();
    v32 = v315;
    sub_1AFDFE768();
    v33 = v16;
    if (v32)
    {
      goto LABEL_135;
    }

    v315 = 0;
    v337[26] = v330;
  }

  else
  {
    v33 = v16;
  }

  v34 = sub_1AFDFE7F8();
  v35 = sub_1AF775F50(11, v34);

  if ((v35 & 1) == 0)
  {
    goto LABEL_133;
  }

  sub_1AF781204();
  LOBYTE(v329[0]) = 11;
  sub_1AF78132C(&qword_1EB63E798);
  v36 = v315;
  sub_1AFDFE768();
  if (v36)
  {
LABEL_135:
    (*(v323 + 8))(v33, v25);
    goto LABEL_136;
  }

  v37 = v330;
  v38 = 1 << v330[32];
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v330 + 8);
  v41 = (v38 + 63) >> 6;
  v304 = "], outParameters: [";
  *&v303 = "CodeSourceSnippet.init(";
  v302 = (v320 + 32);

  v42 = 0;
  v301 = xmmword_1AFE431C0;
  v315 = 0;
  v43 = v337;
  v306 = v37;
  v305 = v41;
LABEL_21:
  if (v40)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (v42 + 1 >= v41)
    {
      break;
    }

    v40 = *&v37[8 * v42++ + 72];
    if (v40)
    {
      v42 = v44;
LABEL_25:
      v45 = (v42 << 10) | (16 * __clz(__rbit64(v40)));
      v46 = *(v37 + 7);
      v47 = *(v37 + 6) + v45;
      v49 = *v47;
      v48 = *(v47 + 8);
      v50 = (v46 + v45);
      v52 = *v50;
      v51 = v50[1];
      v321 = v52;
      v327 = v51;
      v53 = v49 == 42 && v48 == 0xE100000000000000;
      v54 = MEMORY[0x1E69E7CC0];
      v55 = MEMORY[0x1E69E6158];
      v310 = v48;
      v308 = v40;
      v307 = v42;
      if (v53 || (sub_1AFDFEE28() & 1) != 0)
      {
        v330 = v54;

        sub_1AFC05CE4(0, 5, 0);
        if (byte_1F25001F8 <= 1u)
        {
          if (byte_1F25001F8)
          {
            v56 = 0xE600000000000000;
            v57 = 0x7070636A626FLL;
          }

          else
          {
            v56 = 0xE100000000000000;
            v57 = 99;
          }
        }

        else if (byte_1F25001F8 == 2)
        {
          v56 = 0xE500000000000000;
          v57 = 0x6C6174656DLL;
        }

        else if (byte_1F25001F8 == 3)
        {
          v56 = 0xE500000000000000;
          v57 = 0x7466697773;
        }

        else
        {
          v56 = 0xE200000000000000;
          v57 = 29546;
        }

        v59 = v330;
        v61 = *(v330 + 2);
        v60 = *(v330 + 3);
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          sub_1AFC05CE4(v60 > 1, v61 + 1, 1);
          v59 = v330;
        }

        *(v59 + 2) = v62;
        v63 = &v59[16 * v61];
        *(v63 + 4) = v57;
        *(v63 + 5) = v56;
        if (byte_1F25001F9 <= 1u)
        {
          if (byte_1F25001F9)
          {
            v64 = 0xE600000000000000;
            v65 = 0x7070636A626FLL;
          }

          else
          {
            v64 = 0xE100000000000000;
            v65 = 99;
          }
        }

        else if (byte_1F25001F9 == 2)
        {
          v64 = 0xE500000000000000;
          v65 = 0x6C6174656DLL;
        }

        else if (byte_1F25001F9 == 3)
        {
          v64 = 0xE500000000000000;
          v65 = 0x7466697773;
        }

        else
        {
          v64 = 0xE200000000000000;
          v65 = 29546;
        }

        v330 = v59;
        v66 = *(v59 + 3);
        v67 = v61 + 2;
        if (v62 >= v66 >> 1)
        {
          sub_1AFC05CE4(v66 > 1, v67, 1);
          v59 = v330;
        }

        *(v59 + 2) = v67;
        v68 = &v59[16 * v62];
        *(v68 + 4) = v65;
        *(v68 + 5) = v64;
        if (byte_1F25001FA <= 1u)
        {
          if (byte_1F25001FA)
          {
            v69 = 0xE600000000000000;
            v70 = 0x7070636A626FLL;
          }

          else
          {
            v69 = 0xE100000000000000;
            v70 = 99;
          }
        }

        else if (byte_1F25001FA == 2)
        {
          v69 = 0xE500000000000000;
          v70 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FA == 3)
        {
          v69 = 0xE500000000000000;
          v70 = 0x7466697773;
        }

        else
        {
          v69 = 0xE200000000000000;
          v70 = 29546;
        }

        v330 = v59;
        v72 = *(v59 + 2);
        v71 = *(v59 + 3);
        v73 = v72 + 1;
        if (v72 >= v71 >> 1)
        {
          sub_1AFC05CE4(v71 > 1, v72 + 1, 1);
          v59 = v330;
        }

        *(v59 + 2) = v73;
        v74 = &v59[16 * v72];
        *(v74 + 4) = v70;
        *(v74 + 5) = v69;
        if (byte_1F25001FB <= 1u)
        {
          if (byte_1F25001FB)
          {
            v75 = 0xE600000000000000;
            v76 = 0x7070636A626FLL;
          }

          else
          {
            v75 = 0xE100000000000000;
            v76 = 99;
          }
        }

        else if (byte_1F25001FB == 2)
        {
          v75 = 0xE500000000000000;
          v76 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FB == 3)
        {
          v75 = 0xE500000000000000;
          v76 = 0x7466697773;
        }

        else
        {
          v75 = 0xE200000000000000;
          v76 = 29546;
        }

        v330 = v59;
        v77 = *(v59 + 3);
        v78 = v72 + 2;
        if (v73 >= v77 >> 1)
        {
          sub_1AFC05CE4(v77 > 1, v78, 1);
          v59 = v330;
        }

        *(v59 + 2) = v78;
        v79 = &v59[16 * v73];
        *(v79 + 4) = v76;
        *(v79 + 5) = v75;
        if (byte_1F25001FC <= 1u)
        {
          if (byte_1F25001FC)
          {
            v80 = 0xE600000000000000;
            v81 = 0x7070636A626FLL;
          }

          else
          {
            v80 = 0xE100000000000000;
            v81 = 99;
          }
        }

        else if (byte_1F25001FC == 2)
        {
          v80 = 0xE500000000000000;
          v81 = 0x6C6174656DLL;
        }

        else if (byte_1F25001FC == 3)
        {
          v80 = 0xE500000000000000;
          v81 = 0x7466697773;
        }

        else
        {
          v80 = 0xE200000000000000;
          v81 = 29546;
        }

        v330 = v59;
        v83 = *(v59 + 2);
        v82 = *(v59 + 3);
        if (v83 >= v82 >> 1)
        {
          sub_1AFC05CE4(v82 > 1, v83 + 1, 1);
          v59 = v330;
        }

        *(v59 + 2) = v83 + 1;
        v84 = &v59[16 * v83];
        *(v84 + 4) = v81;
        *(v84 + 5) = v80;
        v330 = v59;
        sub_1AF780FD0(0, &qword_1ED726C70, v55, MEMORY[0x1E69E62F8]);
        sub_1AF488088();
        v49 = sub_1AFDFCD98();
        v58 = v85;

        v43 = v337;
      }

      else
      {
        v58 = v310;
        swift_bridgeObjectRetain_n();
      }

      v330 = v49;
      v331 = v58;
      sub_1AF4486E4();
      v86 = sub_1AFDFDF28();

      v309 = v86;
      v87 = *(v86 + 16);
      if (v87)
      {
        v88 = (v309 + 56);
        do
        {
          v89 = *v88;

          v91 = sub_1AFDFDDA8();
          v92 = v90;
          v93 = v91 == 99 && v90 == 0xE100000000000000;
          if (!v93 && (sub_1AFDFEE28() & 1) == 0)
          {
            v94 = v91 == 0x7070636A626FLL && v92 == 0xE600000000000000;
            if (!v94 && (sub_1AFDFEE28() & 1) == 0 && (v91 != 0x6C6174656DLL || v92 != 0xE500000000000000))
            {
              v109 = sub_1AFDFEE28();
              v110 = v91 == 0x7466697773 && v92 == 0xE500000000000000;
              v111 = v110;
              if ((v109 & 1) == 0 && !v111 && (sub_1AFDFEE28() & 1) == 0 && (v91 != 29546 || v92 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
              {
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v330 = 0;
                v331 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD000000000000017, v304 | 0x8000000000000000);
                v112 = v43[2];
                v113 = v43[3];

                MEMORY[0x1B2718AE0](v112, v113);

                MEMORY[0x1B2718AE0](0xD000000000000018, v303 | 0x8000000000000000);
                MEMORY[0x1B2718AE0](v91, v92);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v115 = v330;
                v114 = v331;
                v116 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v300 = v89;
                v117 = v318;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v118 = swift_allocObject();
                *(v118 + 16) = v301;
                *(v118 + 56) = MEMORY[0x1E69E6158];
                *(v118 + 64) = sub_1AF0D544C();
                *(v118 + 32) = v115;
                *(v118 + 40) = v114;

                sub_1AFDFC4C8();

                v299 = v115;
                v119 = v316;
                sub_1AFDFC288();
                v298 = v319[12];
                v120 = v319[16];
                LOBYTE(v118) = v116;
                v121 = (v117 + v319[20]);
                (*v302)(v117, v119, v317);
                *(v117 + v298) = v118;
                *(v117 + v120) = 0;
                *v121 = v299;
                v121[1] = v114;

                sub_1AFDFC608();

                sub_1AF0D54A0(v117);

                v43 = v337;
                goto LABEL_109;
              }
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v330 = v43[27];
          v96 = v330;
          v43[27] = 0x8000000000000000;
          v98 = sub_1AF419914(v91, v92);
          v99 = v97;
          v100 = *(v96 + 2) + ((v97 & 1) == 0);
          if (*(v96 + 3) >= v100)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v97)
              {
                goto LABEL_107;
              }
            }

            else
            {
              sub_1AF849704();
              if (v99)
              {
                goto LABEL_107;
              }
            }
          }

          else
          {
            sub_1AF8357A0(v100, isUniquelyReferenced_nonNull_native);
            v101 = sub_1AF419914(v91, v92);
            if ((v99 & 1) != (v102 & 1))
            {
              goto LABEL_311;
            }

            v98 = v101;
            if (v99)
            {
LABEL_107:

              v103 = v330;
              v107 = (*(v330 + 7) + 16 * v98);
              v108 = v327;
              *v107 = v321;
              v107[1] = v108;

              goto LABEL_108;
            }
          }

          v103 = v330;
          *&v330[8 * (v98 >> 6) + 64] |= 1 << v98;
          v104 = (*(v103 + 6) + 16 * v98);
          *v104 = v91;
          v104[1] = v92;
          v105 = (*(v103 + 7) + 16 * v98);
          v106 = v327;
          *v105 = v321;
          v105[1] = v106;

          ++*(v103 + 2);
LABEL_108:
          v43 = v337;
          v337[27] = v103;

LABEL_109:
          v28 = v328;
          v88 += 4;
          --v87;
        }

        while (v87);
      }

      v40 = (v308 - 1) & v308;

      v25 = v325;
      v29 = v326;
      v37 = v306;
      v41 = v305;
      v42 = v307;
      goto LABEL_21;
    }
  }

LABEL_133:
  v33 = v324;
  v122 = sub_1AFDFE7F8();
  v123 = sub_1AF775F50(24, v122);

  if (v123)
  {
    v124 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
    v125 = v322;
    *v322 = v124;

    sub_1AF7811A0(0, &qword_1EB63E780, sub_1AF781204, MEMORY[0x1E69E6720]);
    LOBYTE(v329[0]) = 24;
    sub_1AF781260();
    v126 = v315;
    sub_1AFDFE768();
    if (v126)
    {
      goto LABEL_135;
    }

    v127 = v330;
    v128 = 1 << v330[32];
    v129 = -1;
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    v130 = v129 & *(v330 + 8);
    v131 = (v128 + 63) >> 6;
    v306 = "], outParameters: [";
    v305 = "CodeSourceSnippet.init(";
    v304 = v320 + 32;

    v132 = 0;
    v303 = xmmword_1AFE431C0;
    v315 = 0;
    v133 = v125;
    v134 = v130;
    v308 = v127;
    v307 = v131;
LABEL_141:
    if (v134)
    {
      goto LABEL_145;
    }

    while (1)
    {
      v135 = v132 + 1;
      if ((v132 + 1) >= v131)
      {
        break;
      }

      v134 = *&v127[8 * v132++ + 72];
      if (v134)
      {
        v132 = v135;
LABEL_145:
        v310 = v132;
        v136 = (v132 << 10) | (16 * __clz(__rbit64(v134)));
        v137 = *(v127 + 7);
        v138 = *(v127 + 6) + v136;
        v139 = *v138;
        v140 = *(v138 + 8);
        v141 = (v137 + v136);
        v143 = *v141;
        v142 = v141[1];
        v321 = v143;
        v327 = v142;
        v144 = v139 == 42 && v140 == 0xE100000000000000;
        v145 = MEMORY[0x1E69E6158];
        v320 = v134;
        v309 = v140;
        if (v144 || (sub_1AFDFEE28() & 1) != 0)
        {
          v330 = MEMORY[0x1E69E7CC0];

          sub_1AFC05CE4(0, 5, 0);
          if (byte_1F2500220 <= 1u)
          {
            if (byte_1F2500220)
            {
              v146 = 0xE600000000000000;
              v147 = 0x7070636A626FLL;
            }

            else
            {
              v146 = 0xE100000000000000;
              v147 = 99;
            }
          }

          else if (byte_1F2500220 == 2)
          {
            v146 = 0xE500000000000000;
            v147 = 0x6C6174656DLL;
          }

          else if (byte_1F2500220 == 3)
          {
            v146 = 0xE500000000000000;
            v147 = 0x7466697773;
          }

          else
          {
            v146 = 0xE200000000000000;
            v147 = 29546;
          }

          v148 = v330;
          v150 = *(v330 + 2);
          v149 = *(v330 + 3);
          v151 = v150 + 1;
          if (v150 >= v149 >> 1)
          {
            sub_1AFC05CE4(v149 > 1, v150 + 1, 1);
            v148 = v330;
          }

          *(v148 + 2) = v151;
          v152 = &v148[16 * v150];
          *(v152 + 4) = v147;
          *(v152 + 5) = v146;
          if (byte_1F2500221 <= 1u)
          {
            if (byte_1F2500221)
            {
              v153 = 0xE600000000000000;
              v154 = 0x7070636A626FLL;
            }

            else
            {
              v153 = 0xE100000000000000;
              v154 = 99;
            }
          }

          else if (byte_1F2500221 == 2)
          {
            v153 = 0xE500000000000000;
            v154 = 0x6C6174656DLL;
          }

          else if (byte_1F2500221 == 3)
          {
            v153 = 0xE500000000000000;
            v154 = 0x7466697773;
          }

          else
          {
            v153 = 0xE200000000000000;
            v154 = 29546;
          }

          v330 = v148;
          v155 = *(v148 + 3);
          v156 = v150 + 2;
          if (v151 >= v155 >> 1)
          {
            sub_1AFC05CE4(v155 > 1, v156, 1);
            v148 = v330;
          }

          *(v148 + 2) = v156;
          v157 = &v148[16 * v151];
          *(v157 + 4) = v154;
          *(v157 + 5) = v153;
          if (byte_1F2500222 <= 1u)
          {
            if (byte_1F2500222)
            {
              v158 = 0xE600000000000000;
              v159 = 0x7070636A626FLL;
            }

            else
            {
              v158 = 0xE100000000000000;
              v159 = 99;
            }
          }

          else if (byte_1F2500222 == 2)
          {
            v158 = 0xE500000000000000;
            v159 = 0x6C6174656DLL;
          }

          else if (byte_1F2500222 == 3)
          {
            v158 = 0xE500000000000000;
            v159 = 0x7466697773;
          }

          else
          {
            v158 = 0xE200000000000000;
            v159 = 29546;
          }

          v330 = v148;
          v161 = *(v148 + 2);
          v160 = *(v148 + 3);
          v162 = v161 + 1;
          if (v161 >= v160 >> 1)
          {
            sub_1AFC05CE4(v160 > 1, v161 + 1, 1);
            v148 = v330;
          }

          *(v148 + 2) = v162;
          v163 = &v148[16 * v161];
          *(v163 + 4) = v159;
          *(v163 + 5) = v158;
          if (byte_1F2500223 <= 1u)
          {
            if (byte_1F2500223)
            {
              v164 = 0xE600000000000000;
              v165 = 0x7070636A626FLL;
            }

            else
            {
              v164 = 0xE100000000000000;
              v165 = 99;
            }
          }

          else if (byte_1F2500223 == 2)
          {
            v164 = 0xE500000000000000;
            v165 = 0x6C6174656DLL;
          }

          else if (byte_1F2500223 == 3)
          {
            v164 = 0xE500000000000000;
            v165 = 0x7466697773;
          }

          else
          {
            v164 = 0xE200000000000000;
            v165 = 29546;
          }

          v330 = v148;
          v166 = *(v148 + 3);
          v167 = v161 + 2;
          if (v162 >= v166 >> 1)
          {
            sub_1AFC05CE4(v166 > 1, v167, 1);
            v148 = v330;
          }

          *(v148 + 2) = v167;
          v168 = &v148[16 * v162];
          *(v168 + 4) = v165;
          *(v168 + 5) = v164;
          if (byte_1F2500224 <= 1u)
          {
            if (byte_1F2500224)
            {
              v169 = 0xE600000000000000;
              v170 = 0x7070636A626FLL;
            }

            else
            {
              v169 = 0xE100000000000000;
              v170 = 99;
            }
          }

          else if (byte_1F2500224 == 2)
          {
            v169 = 0xE500000000000000;
            v170 = 0x6C6174656DLL;
          }

          else if (byte_1F2500224 == 3)
          {
            v169 = 0xE500000000000000;
            v170 = 0x7466697773;
          }

          else
          {
            v169 = 0xE200000000000000;
            v170 = 29546;
          }

          v330 = v148;
          v172 = *(v148 + 2);
          v171 = *(v148 + 3);
          if (v172 >= v171 >> 1)
          {
            sub_1AFC05CE4(v171 > 1, v172 + 1, 1);
            v148 = v330;
          }

          *(v148 + 2) = v172 + 1;
          v173 = &v148[16 * v172];
          *(v173 + 4) = v170;
          *(v173 + 5) = v169;
          v330 = v148;
          sub_1AF780FD0(0, &qword_1ED726C70, v145, MEMORY[0x1E69E62F8]);
          sub_1AF488088();
          v139 = sub_1AFDFCD98();
          v140 = v174;

          v133 = v322;
        }

        else
        {
          swift_bridgeObjectRetain_n();
        }

        v330 = v139;
        v331 = v140;
        sub_1AF4486E4();
        v175 = sub_1AFDFDF28();

        v176 = *(v175 + 16);
        if (v176)
        {
          v177 = v175 + 56;
          while (1)
          {

            v179 = sub_1AFDFDDA8();
            v180 = v178;
            v181 = v179 == 99 && v178 == 0xE100000000000000;
            if (!v181 && (sub_1AFDFEE28() & 1) == 0)
            {
              v182 = v179 == 0x7070636A626FLL && v180 == 0xE600000000000000;
              if (!v182 && (sub_1AFDFEE28() & 1) == 0 && (v179 != 0x6C6174656DLL || v180 != 0xE500000000000000))
              {
                v193 = sub_1AFDFEE28();
                v194 = v179 == 0x7466697773 && v180 == 0xE500000000000000;
                v195 = v194;
                if ((v193 & 1) == 0 && !v195 && (sub_1AFDFEE28() & 1) == 0 && (v179 != 29546 || v180 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v330 = 0;
                  v331 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000017, v306 | 0x8000000000000000);
                  v196 = v337[2];
                  v197 = v337[3];

                  MEMORY[0x1B2718AE0](v196, v197);

                  MEMORY[0x1B2718AE0](0xD000000000000018, v305 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v179, v180);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v198 = v331;
                  v302 = v330;
                  LODWORD(v301) = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v300 = qword_1ED73B8A0;
                  v199 = v319;
                  v200 = v316;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v201 = swift_allocObject();
                  *(v201 + 16) = v303;
                  *(v201 + 56) = MEMORY[0x1E69E6158];
                  *(v201 + 64) = sub_1AF0D544C();
                  *(v201 + 32) = v302;
                  *(v201 + 40) = v198;

                  sub_1AFDFC4C8();

                  sub_1AFDFC288();
                  v202 = v199[12];
                  v300 = v199[16];
                  v203 = v200;
                  v204 = v318;
                  v205 = &v318[v199[20]];
                  (*v304)(v318, v203, v317);
                  *(v204 + v202) = v301;
                  *(v204 + v300) = 0;
                  *v205 = v302;
                  v205[1] = v198;

                  sub_1AFDFC608();

                  sub_1AF0D54A0(v204);

                  v28 = v328;
                  v133 = v322;
                  goto LABEL_249;
                }
              }
            }

            v99 = swift_isUniquelyReferenced_nonNull_native();
            v330 = *v133;
            v183 = v330;
            *v133 = 0x8000000000000000;
            v184 = sub_1AF419914(v179, v180);
            v186 = v185;
            v187 = *(v183 + 2) + ((v185 & 1) == 0);
            if (*(v183 + 3) < v187)
            {
              break;
            }

            if (v99)
            {
              goto LABEL_225;
            }

            v206 = v184;
            sub_1AF849704();
            v184 = v206;
            if ((v186 & 1) == 0)
            {
LABEL_247:
              v190 = v330;
              *&v330[8 * (v184 >> 6) + 64] |= 1 << v184;
              v207 = (*(v190 + 6) + 16 * v184);
              *v207 = v179;
              v207[1] = v180;
              v208 = (*(v190 + 7) + 16 * v184);
              v209 = v327;
              *v208 = v321;
              v208[1] = v209;

              ++*(v190 + 2);
              goto LABEL_248;
            }

LABEL_226:
            v189 = v184;

            v190 = v330;
            v191 = (*(v330 + 7) + 16 * v189);
            v192 = v327;
            *v191 = v321;
            v191[1] = v192;

LABEL_248:
            v133 = v322;
            *v322 = v190;

            v28 = v328;
LABEL_249:
            v177 += 32;
            if (!--v176)
            {
              goto LABEL_140;
            }
          }

          sub_1AF8357A0(v187, v99);
          v184 = sub_1AF419914(v179, v180);
          if ((v186 & 1) != (v188 & 1))
          {
LABEL_311:
            sub_1AFDFF1A8();
            __break(1u);
            goto LABEL_312;
          }

LABEL_225:
          if ((v186 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_226;
        }

LABEL_140:
        v134 = (v320 - 1) & v320;

        v25 = v325;
        v29 = v326;
        v127 = v308;
        v131 = v307;
        v132 = v310;
        goto LABEL_141;
      }
    }
  }

  v33 = v324;
  v210 = sub_1AFDFE7F8();
  v211 = sub_1AF775F50(2, v210);

  if (v211)
  {
    sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
    LOBYTE(v329[0]) = 2;
    sub_1AF780C48();
    v212 = v315;
    sub_1AFDFE768();
    v213 = v25;
    if (v212)
    {
      goto LABEL_135;
    }

    v315 = 0;
    v214 = v337;
    v337[11] = v330;

    v215 = v214[27];
    v216 = 1 << *(v215 + 32);
    v217 = -1;
    if (v216 < 64)
    {
      v217 = ~(-1 << v216);
    }

    v218 = v217 & *(v215 + 64);
    v219 = (v216 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    for (i = 0; v218; v213 = v325)
    {
      v221 = i;
LABEL_263:
      v222 = *(v215 + 48) + ((v221 << 10) | (16 * __clz(__rbit64(v218))));
      v223 = *(v222 + 8);
      v218 &= v218 - 1;
      v330 = *v222;
      v331 = v223;

      v224 = v315;
      sub_1AF77DA0C(&v330, v337);
      v315 = v224;
    }

    while (1)
    {
      v221 = i + 1;
      if (i + 1 >= v219)
      {
        break;
      }

      v218 = *(v215 + 8 * i++ + 72);
      if (v218)
      {
        i = v221;
        goto LABEL_263;
      }
    }
  }

  else
  {
    v213 = v25;
  }

  v225 = v324;
  v226 = sub_1AFDFE7F8();
  v227 = sub_1AF775F50(17, v226);

  if (v227)
  {
    sub_1AF780FD0(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    LOBYTE(v329[0]) = 17;
    sub_1AF780BB4();
    v228 = v315;
    sub_1AFDFE768();
    if (v228)
    {
      (*(v323 + 8))(v225, v213);
      goto LABEL_136;
    }

    v315 = 0;
    *(v337 + 80) = v330;
  }

  v229 = v323;
  v230 = MEMORY[0x1E69E6720];
  sub_1AF780FD0(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  LOBYTE(v329[0]) = 1;
  sub_1AF780D10(&qword_1ED726CB8, &qword_1ED726CC0, v230);
  v231 = v324;
  v232 = v325;
  v233 = v315;
  sub_1AFDFE6E8();
  if (v233)
  {
    v20 = v337;

    (*(v229 + 8))(v231, v232);
    v21 = v29;
    goto LABEL_4;
  }

  v99 = 0;
  v234 = v331;
  v235 = v337;
  if (v331 == 1)
  {
    v236 = *v28;
  }

  else
  {
    v236 = v330;
  }

  v235[4] = v236;
  v235[5] = v234;

  LOBYTE(v329[0]) = 23;
  sub_1AFDFE6E8();
  v237 = v331;
  if (v331 == 1)
  {
    v238 = v235[8];
  }

  else
  {
    v238 = v330;
  }

  v235[8] = v238;
  v235[9] = v237;

  sub_1AF780FD0(0, &qword_1EB63E718, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  LOBYTE(v329[0]) = 3;
  sub_1AF780BB4();
  sub_1AFDFE6E8();
  v239 = v330;
  if (v330 == 3)
  {
    v239 = *v314;
  }

  *v314 = v239;
  LOBYTE(v329[0]) = 22;
  sub_1AFDFE6E8();
  v240 = v330;
  if (v330 == 3)
  {
    v240 = *(v337 + 105);
  }

  *(v337 + 105) = v240;
  LOBYTE(v329[0]) = 25;
  sub_1AFDFE6E8();
  v241 = v330;
  if (v330 == 3)
  {
    v241 = *(v337 + 106);
  }

  *(v337 + 106) = v241;
  LOBYTE(v329[0]) = 29;
  sub_1AFDFE6E8();
  v242 = v330;
  if (v330 == 3)
  {
    v242 = *(v337 + 107);
  }

  *(v337 + 107) = v242;
  LOBYTE(v329[0]) = 26;
  sub_1AFDFE6E8();
  v243 = v330;
  if (v330 == 3)
  {
    v243 = *(v337 + 108);
  }

  *(v337 + 108) = v243;
  LOBYTE(v329[0]) = 27;
  sub_1AFDFE6E8();
  v244 = v330;
  if (v330 == 3)
  {
    v244 = *(v337 + 109);
  }

  *(v337 + 109) = v244;
  LOBYTE(v329[0]) = 14;
  sub_1AFDFE6E8();
  v245 = v330;
  if (v330 == 3)
  {
    v245 = *(v337 + 110);
  }

  *(v337 + 110) = v245;
  LOBYTE(v329[0]) = 15;
  sub_1AFDFE6E8();
  v246 = v331;
  if (v331 == 1)
  {
    v247 = *v313;
  }

  else
  {
    v247 = v330;
  }

  v248 = v337;
  v337[14] = v247;
  v248[15] = v246;

  LOBYTE(v329[0]) = 16;
  sub_1AFDFE6E8();
  v249 = v331;
  if (v331 == 1)
  {
    v250 = v337[16];
  }

  else
  {
    v250 = v330;
  }

  v251 = v337;
  v337[16] = v250;
  v251[17] = v249;

  sub_1AF780D78(0, &qword_1ED723218, &qword_1ED726C70, MEMORY[0x1E69E6158]);
  LOBYTE(v329[0]) = 4;
  sub_1AF780C48();
  sub_1AFDFE6E8();
  v252 = v330;
  if (v330 == 1)
  {
  }

  v337[18] = v252;

  LOBYTE(v329[0]) = 5;
  sub_1AFDFE6E8();
  v253 = v330;
  if (v330 == 1)
  {
  }

  v337[19] = v253;

  LOBYTE(v329[0]) = 6;
  sub_1AFDFE6E8();
  v254 = v330;
  if (v330 == 1)
  {
  }

  v337[20] = v254;

  LOBYTE(v329[0]) = 7;
  sub_1AFDFE6E8();
  v255 = v330;
  if (v330 == 1)
  {
  }

  v337[21] = v255;

  sub_1AF780D78(0, &qword_1EB63E730, &qword_1EB63E738, &_s8MetadataVN);
  LOBYTE(v329[0]) = 8;
  sub_1AF780DE4();
  sub_1AFDFE6E8();
  v256 = v330;
  if (v330 == 1)
  {
  }

  v337[22] = v256;

  LOBYTE(v329[0]) = 20;
  sub_1AFDFE6E8();
  v257 = v330;
  if (v330 == 1)
  {
  }

  v337[23] = v257;

  LOBYTE(v329[0]) = 21;
  sub_1AFDFE6E8();
LABEL_312:
  v258 = v330;
  if (v330 == 1)
  {
  }

  v337[24] = v258;

  sub_1AF780FD0(0, &qword_1EB63E690, &_s12MetadataTypeON, MEMORY[0x1E69E6720]);
  LOBYTE(v329[0]) = 12;
  sub_1AF780F34();
  sub_1AFDFE6E8();
  if (v99)
  {
    v20 = v337;

    (*(v323 + 8))(v324, v325);
    v21 = v326;
    goto LABEL_4;
  }

  v259 = v331;
  if (v331 == 60)
  {
    v260 = v337[31];
    v259 = v337[32];
    v261 = v337[34];
    v262 = v337[35];
    v327 = v337[33];
    v328 = v260;
    v322 = v261;
    sub_1AF775B94(v260, v259);
  }

  else
  {
    v327 = v332;
    v328 = v330;
    v322 = v333;
    v262 = v334;
  }

  v263 = v337;
  v264 = v337[31];
  v265 = v337[32];
  v266 = v327;
  v337[31] = v328;
  v263[32] = v259;
  v267 = v322;
  v263[33] = v266;
  v263[34] = v267;
  v263[35] = v262;
  sub_1AF771214(v264, v265);
  LOBYTE(v329[0]) = 13;
  sub_1AFDFE6E8();
  v268 = v331;
  if (v331 == 1)
  {
    v269 = v337[36];
  }

  else
  {
    v269 = v330;
  }

  v270 = v337;
  v337[36] = v269;
  v270[37] = v268;

  LOBYTE(v329[0]) = 28;
  sub_1AFDFE6E8();
  v271 = v330;
  if (v330 == 1)
  {
  }

  v337[12] = v271;

  LOBYTE(v329[0]) = 31;
  sub_1AFDFE6E8();
  v272 = v330;
  if (v330 == 3)
  {
    v272 = *(v337 + 304);
  }

  *(v337 + 304) = v272;
  v273 = sub_1AFDFE7F8();
  v274 = sub_1AF775F50(18, v273);

  if (v274)
  {
    sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    LOBYTE(v329[0]) = 18;
    sub_1AF781020();
    sub_1AFDFE768();
    v275 = v311;
    *v311 = v330;

    v330 = MEMORY[0x1E69E7CC0];
    v329[0] = MEMORY[0x1E69E7CC0];
    if (*v275)
    {

      sub_1AF7760DC(v276, &v330, v329);

      v277 = v330;
      v278 = v329[0];
    }

    else
    {
      v277 = MEMORY[0x1E69E7CC0];
      v278 = MEMORY[0x1E69E7CC0];
    }

    v279 = v337;
    v337[21] = v277;

    v279[20] = v278;

    v279[39] = 0;
  }

  v280 = sub_1AFDFE7F8();
  v281 = sub_1AF775F50(19, v280);

  if (v281)
  {
    sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
    LOBYTE(v329[0]) = 19;
    sub_1AF781020();
    sub_1AFDFE768();
    v282 = v337;
    v337[40] = v330;

    v330 = MEMORY[0x1E69E7CC0];
    v329[0] = MEMORY[0x1E69E7CC0];
    if (v282[40])
    {

      sub_1AF7760DC(v283, &v330, v329);

      v284 = v330;
      v312 = v329[0];
    }

    else
    {
      v284 = MEMORY[0x1E69E7CC0];
    }

    v285 = v337;
    v337[26] = v284;

    v285[25] = v312;

    v285[40] = 0;
  }

  sub_1AF780D78(0, &qword_1EB63E758, &qword_1EB63E760, &_s17CodeSourceSnippetC9ParameterVN);
  LOBYTE(v329[0]) = 30;
  sub_1AF781020();
  sub_1AFDFE6E8();
  v286 = v330;
  if (v330 == 1)
  {
  }

  v287 = v337;
  v337[41] = v286;

  v288 = v287[5];
  if (v288)
  {
    v289 = v337[4];

    v290 = 0x20u;
    while (1)
    {
      v291 = *(&unk_1F24F5668 + v290 + 16);
      v335[0] = *(&unk_1F24F5668 + v290);
      v335[1] = v291;
      v336 = *(&unk_1F24F5668 + v290 + 32);
      v329[0] = v289;
      v329[1] = v288;
      sub_1AF444F60(v335, &v330);
      v330 = sub_1AF7FE65C();
      v331 = v292;
      sub_1AF4486E4();
      v293 = sub_1AFDFDF18();

      if (v293)
      {
        break;
      }

      sub_1AF444FBC(v335);
      v290 += 40;
      if (v290 == 2392)
      {
        (*(v323 + 8))(v324, v325);
        v294 = v337;
        v337[6] = v289;
        v294[7] = v288;
        goto LABEL_345;
      }
    }

    (*(v323 + 8))(v324, v325);
    sub_1AF444FBC(v335);

    v295 = v337;
    v296 = v337[3];
    v337[6] = v337[2];
    v295[7] = v296;

LABEL_345:
  }

  else
  {
    (*(v323 + 8))(v324, v325);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v326);
  return v337;
}

uint64_t sub_1AF77DA0C(uint64_t *a1, void *a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = a2[27];
  v6 = *(v5 + 16);
  v54 = *a1;
  if (v6)
  {
    v7 = sub_1AF419914(v3, v4);
    if (v8)
    {
      v9 = (*(v5 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v52 = v11;
      v53 = v10;
      sub_1AF4486E4();
      if ((sub_1AFDFDF18() & 1) == 0)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000024, 0x80000001AFF33C70);
        v13 = v2[2];
        v12 = v2[3];

        MEMORY[0x1B2718AE0](v13, v12);

        MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF33CA0);
        v14 = v2[27];
        if (*(v14 + 16) && (v15 = sub_1AF419914(v3, v4), (v16 & 1) != 0))
        {
          v17 = (*(v14 + 56) + 16 * v15);
          v19 = *v17;
          v18 = v17[1];

          v20 = v19;
        }

        else
        {
          v20 = 0;
          v18 = 0;
        }

        MEMORY[0x1B2718AE0](v20, v18);

        v21 = v52;
        v22 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v48 = v22;
          swift_once();
          v22 = v48;
        }

        v52 = 0;
        sub_1AF0D4F18(v22, &v52, v21, v53);

        v3 = v54;
      }
    }
  }

  result = v2[11];
  if (result)
  {
    v49 = v2[11];
    v24 = *(result + 16);

    if (v24)
    {
      v25 = v49 + 40;
      do
      {
        v27 = v2[27];
        v28 = *(v27 + 16);

        if (v28)
        {
          v29 = sub_1AF419914(v3, v4);
          if (v30)
          {
            v31 = (*(v27 + 56) + 16 * v29);
            v28 = *v31;
            v32 = v31[1];

            goto LABEL_23;
          }

          v28 = 0;
        }

        v32 = 0;
LABEL_23:
        v52 = v28;
        v53 = v32;
        sub_1AF4486E4();
        v50 = sub_1AFDFDEB8();
        v51 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v2[27];
        v35 = v52;
        v36 = v2;
        v2[27] = 0x8000000000000000;
        v37 = v54;
        v39 = sub_1AF419914(v54, v4);
        v40 = v38;
        v41 = *(v35 + 16) + ((v38 & 1) == 0);
        if (*(v35 + 24) >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v44 = v52;
            if ((v38 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            sub_1AF849704();
            v44 = v52;
            if ((v40 & 1) == 0)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          sub_1AF8357A0(v41, isUniquelyReferenced_nonNull_native);
          v42 = sub_1AF419914(v37, v4);
          if ((v40 & 1) != (v43 & 1))
          {
            result = sub_1AFDFF1A8();
            __break(1u);
            return result;
          }

          v39 = v42;
          v44 = v52;
          if ((v40 & 1) == 0)
          {
LABEL_29:
            v44[(v39 >> 6) + 8] |= 1 << v39;
            v45 = 16 * v39;
            v46 = (v44[6] + 16 * v39);
            v3 = v54;
            *v46 = v54;
            v46[1] = v4;
            v47 = (v44[7] + v45);
            *v47 = v50;
            v47[1] = v51;
            ++v44[2];
            goto LABEL_17;
          }
        }

        v26 = (v44[7] + 16 * v39);
        *v26 = v50;
        v26[1] = v51;

        v3 = v54;
LABEL_17:
        v2 = v36;
        v36[27] = v44;

        v25 += 16;
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1AF77DE7C(void *a1)
{
  v3 = v1;
  sub_1AF781CA4(0, &qword_1EB63E7A0, sub_1AF780B60, &_s17CodeSourceSnippetC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v20 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF780B60();
  sub_1AFDFF3F8();
  LOBYTE(v21) = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    *&v21 = *(v3 + 216);
    v24 = 11;
    sub_1AF781204();
    v13 = v12;
    sub_1AF78132C(&qword_1EB63E7A8);
    sub_1AFDFE918();
    v14 = *(v3 + 200);
    v20[3] = v13;
    *&v21 = v14;
    v24 = 9;
    sub_1AF780FD0(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v16 = v15;
    v17 = sub_1AF72774C();
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 208);
    v24 = 10;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 88);
    v24 = 2;
    sub_1AFDFE8A8();
    v20[1] = v17;
    v20[2] = v16;
    LOBYTE(v21) = 17;
    sub_1AFDFE878();
    LOBYTE(v21) = 1;

    sub_1AFDFE868();

    LOBYTE(v21) = 23;

    sub_1AFDFE868();

    LOBYTE(v21) = 3;
    sub_1AFDFE878();
    LOBYTE(v21) = 22;
    sub_1AFDFE878();
    LOBYTE(v21) = 25;
    sub_1AFDFE878();
    LOBYTE(v21) = 29;
    sub_1AFDFE878();
    LOBYTE(v21) = 26;
    sub_1AFDFE878();
    LOBYTE(v21) = 27;
    sub_1AFDFE878();
    LOBYTE(v21) = 14;
    sub_1AFDFE878();
    LOBYTE(v21) = 15;

    sub_1AFDFE868();

    LOBYTE(v21) = 16;

    sub_1AFDFE868();

    *&v21 = *(v3 + 144);
    v24 = 4;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 160);
    v24 = 6;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 168);
    v24 = 7;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 176);
    v24 = 8;
    sub_1AF780FD0(0, &qword_1EB63E738, &_s8MetadataVN, MEMORY[0x1E69E62F8]);
    sub_1AF780EA4(&qword_1EB63E7B0, sub_1AF775108);
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 184);
    v24 = 20;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 192);
    v24 = 21;
    sub_1AFDFE8A8();
    v18 = *(v3 + 280);
    v19 = *(v3 + 264);
    v21 = *(v3 + 248);
    v22 = v19;
    v23 = v18;
    v24 = 12;
    sub_1AF75FC0C();
    sub_1AFDFE8A8();
    LOBYTE(v21) = 13;

    sub_1AFDFE868();

    *&v21 = *(v3 + 224);
    v24 = 24;
    sub_1AFDFE8A8();
    *&v21 = *(v3 + 96);
    v24 = 28;
    sub_1AFDFE8A8();
    LOBYTE(v21) = 31;
    sub_1AFDFE878();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1AF77E684()
{
  v1 = v0;
  sub_1AF0D4E74();
  v135 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v134 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1AFDFC298();
  v125 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v5);
  v132 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[21];
  v136 = v0;
  if (v7)
  {
    v8 = *(v7 + 16);
    v124 = v7;

    if (v8)
    {
      v126 = "d as ParameterType";
      v128 = (v125 + 32);
      v129 = " but inParameterNames is empty";
      v9 = (v124 + 40);
      v127 = xmmword_1AFE431C0;
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = qword_1EB633E58;
        swift_bridgeObjectRetain_n();
        if (v12 != -1)
        {
          swift_once();
        }

        if (*(qword_1EB6C2AC8 + 16) && (sub_1AF419914(v10, v11), (v13 & 1) != 0))
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v139 = v10;
          v140 = v11;
          v137 = 0x79546D6F74737543;
          v138 = 0xEB000000003D6570;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            goto LABEL_22;
          }

          v14 = v10;
          v15 = v11;
          if (sub_1AFDFD178())
          {
            sub_1AFDFD048();
            v16 = sub_1AF701628();
            v18 = v17;
            v20 = v19;
            v22 = v21;

            v14 = MEMORY[0x1B27189E0](v16, v18, v20, v22);
            v15 = v23;
          }

          if (!*(MEMORY[0x10] + 16) || (sub_1AF419914(v14, v15), (v24 & 1) == 0))
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v139 = 0;
            v140 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000035, v126 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v14, v15);

            v26 = v139;
            v25 = v140;
            v27 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v43 = v27;
              swift_once();
              v27 = v43;
            }

            v139 = 0;
            sub_1AF0D4F18(v27, &v139, v26, v25);
LABEL_22:

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v139 = 0;
            v140 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
            v28 = v136;
            v29 = v136[42];
            v30 = v136[43];

            MEMORY[0x1B2718AE0](v29, v30);

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            v31 = v28[2];
            v32 = v28[3];

            MEMORY[0x1B2718AE0](v31, v32);

            MEMORY[0x1B2718AE0](0x74757074754F203ALL, 0xEE00206570795420);
            MEMORY[0x1B2718AE0](v10, v11);
            MEMORY[0x1B2718AE0](0xD000000000000022, v129 | 0x8000000000000000);
            v34 = v139;
            v33 = v140;
            v35 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v130 = v11;
            v131 = v8;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v36 = swift_allocObject();
            *(v36 + 16) = v127;
            *(v36 + 56) = MEMORY[0x1E69E6158];
            *(v36 + 64) = sub_1AF0D544C();
            *(v36 + 32) = v34;
            *(v36 + 40) = v33;

            sub_1AFDFC4C8();

            v37 = v132;
            sub_1AFDFC288();
            v38 = *(v135 + 48);
            v39 = *(v135 + 64);
            v40 = v34;
            v41 = v134;
            v42 = &v134[*(v135 + 80)];
            (*v128)(v134, v37, v133);
            *(v41 + v38) = v35;
            *(v41 + v39) = 0;
            *v42 = v40;
            *(v42 + 1) = v33;
            sub_1AFDFC608();

            sub_1AF0D54A0(v41);
            v8 = v131;
            goto LABEL_5;
          }
        }

LABEL_5:
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    v1 = v136;
  }

  v44 = v1[26];
  if (v44)
  {
    v45 = *(v44 + 16);
    v124 = v1[26];

    if (v45)
    {
      v126 = "d as ParameterType";
      v128 = (v125 + 32);
      v129 = " but inParameterNames is empty";
      v46 = (v124 + 40);
      v127 = xmmword_1AFE431C0;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v49 = qword_1EB633E58;
        swift_bridgeObjectRetain_n();
        if (v49 != -1)
        {
          swift_once();
        }

        if (*(qword_1EB6C2AC8 + 16) && (sub_1AF419914(v47, v48), (v50 & 1) != 0))
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v139 = v47;
          v140 = v48;
          v137 = 0x79546D6F74737543;
          v138 = 0xEB000000003D6570;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            goto LABEL_51;
          }

          v51 = v47;
          v52 = v48;
          if (sub_1AFDFD178())
          {
            sub_1AFDFD048();
            v53 = sub_1AF701628();
            v55 = v54;
            v57 = v56;
            v59 = v58;

            v51 = MEMORY[0x1B27189E0](v53, v55, v57, v59);
            v52 = v60;
          }

          if (!*(MEMORY[0x10] + 16) || (sub_1AF419914(v51, v52), (v61 & 1) == 0))
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v139 = 0;
            v140 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000035, v126 | 0x8000000000000000);
            MEMORY[0x1B2718AE0](v51, v52);

            v63 = v139;
            v62 = v140;
            v64 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v80 = v64;
              swift_once();
              v64 = v80;
            }

            v139 = 0;
            sub_1AF0D4F18(v64, &v139, v63, v62);
LABEL_51:

            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v139 = 0;
            v140 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
            v65 = v136;
            v66 = v136[42];
            v67 = v136[43];

            MEMORY[0x1B2718AE0](v66, v67);

            MEMORY[0x1B2718AE0](46, 0xE100000000000000);
            v68 = v65[2];
            v69 = v65[3];

            MEMORY[0x1B2718AE0](v68, v69);

            MEMORY[0x1B2718AE0](0x74757074754F203ALL, 0xEE00206570795420);
            MEMORY[0x1B2718AE0](v47, v48);
            MEMORY[0x1B2718AE0](0xD000000000000022, v129 | 0x8000000000000000);
            v71 = v139;
            v70 = v140;
            v72 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v130 = v48;
            v131 = v45;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF7811A0(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v73 = swift_allocObject();
            *(v73 + 16) = v127;
            *(v73 + 56) = MEMORY[0x1E69E6158];
            *(v73 + 64) = sub_1AF0D544C();
            *(v73 + 32) = v71;
            *(v73 + 40) = v70;

            sub_1AFDFC4C8();

            v74 = v132;
            sub_1AFDFC288();
            v75 = *(v135 + 48);
            v76 = *(v135 + 64);
            v77 = v71;
            v78 = v134;
            v79 = &v134[*(v135 + 80)];
            (*v128)(v134, v74, v133);
            *(v78 + v75) = v72;
            *(v78 + v76) = 0;
            *v79 = v77;
            *(v79 + 1) = v70;
            sub_1AFDFC608();

            sub_1AF0D54A0(v78);
            v45 = v131;
            goto LABEL_34;
          }
        }

LABEL_34:
        v46 += 2;
        --v45;
      }

      while (v45);
    }

    v1 = v136;
  }

  if (v1[20])
  {
    v81 = v1[20];
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v137 = v81;
  v135 = v1[25];
  if (v135)
  {
    v82 = *(v135 + 16);

    if (v82)
    {
      v83 = 0;
      v84 = v135 + 32;
      do
      {
        while (1)
        {
          v85 = (v84 + 16 * v83);
          v87 = *v85;
          v86 = v85[1];
          ++v83;
          v88 = *(v81 + 2);
          v89 = v88;
          v90 = v81 + 40;
          if (!v88)
          {
            break;
          }

          while (1)
          {
            v91 = *(v90 - 1) == v87 && *v90 == v86;
            if (v91 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v90 += 2;
            if (!--v89)
            {
              v92 = v88 + 1;
              goto LABEL_75;
            }
          }

          if (v83 == v82)
          {
            goto LABEL_82;
          }
        }

        v92 = 1;
LABEL_75:
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1AF420554(0, v92, 1, v81);
        }

        v94 = *(v81 + 2);
        v93 = *(v81 + 3);
        if (v94 >= v93 >> 1)
        {
          v81 = sub_1AF420554(v93 > 1, v94 + 1, 1, v81);
        }

        *(v81 + 2) = v94 + 1;
        v95 = &v81[16 * v94];
        *(v95 + 4) = v87;
        *(v95 + 5) = v86;

        v137 = v81;
      }

      while (v83 != v82);
    }

LABEL_82:

    v1 = v136;
  }

  else
  {
  }

  if (!*(v1[27] + 16))
  {
    v101 = v1[37];
    if (!v101)
    {
      goto LABEL_104;
    }

LABEL_91:
    v102 = v1[36];
    v103 = v1[20];
    if (v103)
    {
      v139 = v1[36];
      v140 = v101;
      MEMORY[0x1EEE9AC00](v96, v97);
      *(&v123 - 2) = &v139;

      v104 = sub_1AF7B9518(sub_1AF771190, (&v123 - 4), v103);

      if (v104)
      {
LABEL_103:

        goto LABEL_104;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v139 = 0;
      v140 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
      v110 = v1[42];
      v111 = v1[43];

      MEMORY[0x1B2718AE0](v110, v111);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v112 = v1[2];
      v113 = v1[3];

      MEMORY[0x1B2718AE0](v112, v113);

      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33CC0);
      MEMORY[0x1B2718AE0](v102, v101);

      MEMORY[0x1B2718AE0](0x756F6620746F6E20, 0xEE00206E6920646ELL);

      v115 = MEMORY[0x1B2718E40](v114, MEMORY[0x1E69E6158]);
      v117 = v116;

      MEMORY[0x1B2718AE0](v115, v117);
    }

    else
    {
      v105 = qword_1ED730EA0;

      if (v105 != -1)
      {
        swift_once();
      }

      v139 = 0;
      v140 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6E6920726F727245, 0xE900000000000020);
      v106 = v1[42];
      v107 = v1[43];

      MEMORY[0x1B2718AE0](v106, v107);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v108 = v1[2];
      v109 = v1[3];

      MEMORY[0x1B2718AE0](v108, v109);

      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF33CC0);
      MEMORY[0x1B2718AE0](v102, v101);

      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF33CE0);
    }

    v119 = v139;
    v118 = v140;
    v120 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v122 = v120;
      swift_once();
      v120 = v122;
    }

    v139 = 0;
    sub_1AF0D4F18(v120, &v139, v119, v118);
    goto LABEL_103;
  }

  v98 = *(v81 + 2);

  if (v98)
  {
    v99 = (v81 + 40);
    do
    {
      v100 = *v99;
      v139 = *(v99 - 1);
      v140 = v100;

      sub_1AF77F840(&v139, &v137, v1);

      v99 += 2;
      --v98;
    }

    while (v98);
  }

  v101 = v1[37];
  if (v101)
  {
    goto LABEL_91;
  }

LABEL_104:
  sub_1AF77FBC8();
}