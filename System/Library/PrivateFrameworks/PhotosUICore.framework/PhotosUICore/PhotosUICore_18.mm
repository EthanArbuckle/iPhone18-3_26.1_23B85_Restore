uint64_t sub_1A3E6F910()
{
  v0 = sub_1A5241FC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D1C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D50(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B3D4();
  v10 = sub_1A524B474();

  v14[1] = v10;
  v11 = sub_1A5243A44();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = sub_1A5243B34();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_1A5241FB4();
  sub_1A524A6A4();
  (*(v1 + 8))(v3, v0);
  sub_1A3E75FA8(v6, sub_1A3E75D1C);
  sub_1A3E75FA8(v9, sub_1A3E75D50);
}

void sub_1A3E6FB80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + *(type metadata accessor for LemonadeShelfHeader() + 84);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    v21 = v11 & 1;
  }

  else
  {

    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v11, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v11) = v21;
  }

  v20 = v11 & 1;
  v19 = 1;
  v13 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v20, &v19);
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_1A3E76008(a1, a3, sub_1A3E71DB0);
  sub_1A3E7261C();
  v17 = (a3 + *(v16 + 36));
  *v17 = KeyPath;
  v17[1] = sub_1A3E07024;
  v17[2] = v15;
}

void sub_1A3E6FDA0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75334(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A524D254();
    v18 = sub_1A524A014();
    v37 = v13;
    v19 = v11;
    v20 = v15;
    v21 = a3;
    v22 = v9;
    v23 = a1;
    v24 = v8;
    v25 = a4;
    v26 = v18;
    sub_1A5246DF4();

    a4 = v25;
    v8 = v24;
    a1 = v23;
    v9 = v22;
    a3 = v21;
    v15 = v20;
    v11 = v19;
    v13 = v37;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a2, 0);
    v16 = (*(v9 + 8))(v11, v8);
    v17 = v38;
  }

  if (v17)
  {
    v27 = (*(*v17 + 128))(v16);
  }

  else
  {
    v27 = 1.0;
  }

  sub_1A3E7535C();
  (*(*(v28 - 8) + 16))(v15, a1, v28);
  *&v15[*(v13 + 36)] = v27 * v27;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v29 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v29 curatedLibraryTransitionShelfHeaderBlurRadius];
  v31 = v30;

  if ((a3 & 1) == 0)
  {
    sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a2, 0);
    v32 = (*(v9 + 8))(v11, v8);
    a2 = v38;
  }

  if (a2)
  {
    v34 = (*(*a2 + 128))(v32);
  }

  else
  {
    v34 = 1.0;
  }

  sub_1A3E75608(v15, a4, sub_1A3E75334);
  sub_1A3E72954(0, &qword_1EB123898, sub_1A3E75334);
  v36 = a4 + *(v35 + 36);
  *v36 = v31 + (0.0 - v31) * (v34 * (2.0 - v34));
  *(v36 + 8) = 0;
}

uint64_t sub_1A3E701B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v28 = a1;
  v29 = a6;
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier();
  swift_getWitnessTable();
  v27 = sub_1A52499C4();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v10 = sub_1A5248804();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v18 = a5;
  *(v17 + 32) = a2;
  a3 &= 1u;
  *(v17 + 40) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = v18;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  j__swift_retain();
  j__swift_retain();
  v20 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_1A3E75420();
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3E75474, v17, sub_1A3E754BC, v19, v20, MEMORY[0x1E69E7DE0], WitnessTable);

  v22 = sub_1A3E754D0();
  v30 = WitnessTable;
  v31 = v22;
  swift_getWitnessTable();
  v23 = *(v11 + 16);
  v23(v16, v13, v10);
  v24 = *(v11 + 8);
  v24(v13, v10);
  v23(v29, v16, v10);
  return (v24)(v16, v10);
}

uint64_t sub_1A3E704B4@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a1, 0);
    result = (*(v7 + 8))(v9, v6);
    a1 = v13[1];
  }

  if (a1)
  {

    result = sub_1A52482B4();
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_1A3E70620(double *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;

  if ((a3 & 1) == 0)
  {
    sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a2, 0);
    result = (*(v11 + 8))(v13, v10);
    a2 = v18;
  }

  if (a2)
  {
    (*(a5 + 16))(&v17 + 7, a4, a5);
    (*(*a2 + 200))(&v17 + 7, v14);
  }

  return result;
}

uint64_t sub_1A3E707DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  v15[0] = sub_1A5249BA4();
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = sub_1A5249BB4();
  MEMORY[0x1A5906490](v15, a6, v13, a8);
}

void sub_1A3E708CC(uint64_t a1@<X8>)
{
  v22[13] = a1;
  v1 = sub_1A52498E4();
  v2 = *(v1 - 8);
  v22[10] = v1;
  v22[11] = v2;
  MEMORY[0x1EEE9AC00](v1);
  v22[5] = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E74328(0);
  v22[3] = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3E75EBC(0, &qword_1EB12D230, sub_1A3E74254, sub_1A3E74608, MEMORY[0x1E697E830]);
  v22[6] = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22[2] = v22 - v6;
  sub_1A3E741B0();
  v22[9] = v7 - 8;
  MEMORY[0x1EEE9AC00](v7 - 8);
  v22[12] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v22[7] = v22 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v22[8] = v22 - v12;
  v13 = sub_1A5243334();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5243364();
  MEMORY[0x1EEE9AC00](v17);
  v22[4] = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22[1] = v22 - v21;
  (*(v14 + 104))(v16, *MEMORY[0x1E69C2410], v13, v20);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E70FF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x2E6E6F7276656863;
  v6[1] = 0xEF64726177726F66;
  (*(v3 + 104))(v6, *MEMORY[0x1E69C1D40], v2, v4);
  v7 = sub_1A5242B94();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1A524B4A4();
  result = swift_getKeyPath();
  *a1 = v7;
  a1[1] = result;
  a1[2] = v8;
  return result;
}

void sub_1A3E7112C(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  sub_1A3E75DB8(0, &qword_1EB12D210, sub_1A3E74128);
  sub_1A3E708CC(a1 + *(v2 + 44));
}

uint64_t sub_1A3E711A0@<X0>(void *a1@<X8>)
{
  sub_1A3E71A5C();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3E711F0()
{
  sub_1A3E71A5C();

  return sub_1A5249254();
}

uint64_t sub_1A3E71250(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v16 = result;
  if (v7)
  {
    do
    {
      v17 = (v7 - 1) & v7;
LABEL_13:
      sub_1A3C3DEB4();
      v12 = sub_1A524C4A4();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }

      v15 = ~v13;
      sub_1A3C4CDB0();
      while ((sub_1A524C594() & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          return 0;
        }
      }

      result = v16;
      v7 = v17;
    }

    while (v17);
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E71404(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3E76130();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v30 = *(*(v5 + 48) + v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      sub_1A3C3DEB4();
      result = sub_1A524C4A4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v29 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

unint64_t sub_1A3E71684(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3C6246C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1A3E717AC();
    result = v17;
    goto LABEL_8;
  }

  sub_1A3E71404(v14, a2 & 1);
  result = sub_1A3C6246C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void *sub_1A3E717AC()
{
  v1 = v0;
  sub_1A3E76130();
  v2 = *v0;
  v3 = sub_1A524E764();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A3E7198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1A3E71A5C()
{
  result = qword_1EB125508;
  if (!qword_1EB125508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125508);
  }

  return result;
}

void sub_1A3E71AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3E71B60()
{
  if (!qword_1EB124F50)
  {
    sub_1A3E71C4C();
    sub_1A3E727D4(255);
    sub_1A3E750A8(&qword_1EB122870, sub_1A3E71C4C, sub_1A3E7364C);
    sub_1A3E750A8(&qword_1EB1225B0, sub_1A3E727D4, sub_1A3E737E0);
    v0 = sub_1A52423F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124F50);
    }
  }
}

void sub_1A3E71C4C()
{
  if (!qword_1EB122878)
  {
    sub_1A3E75980(255, &qword_1EB122880, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122878);
    }
  }
}

void sub_1A3E71CDC()
{
  if (!qword_1EB121FE8)
  {
    sub_1A3E71DB0();
    sub_1A3E7261C();
    sub_1A3E76368(&qword_1EB1253E0, sub_1A3E71DB0);
    sub_1A3E726A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FE8);
    }
  }
}

void sub_1A3E71DB0()
{
  if (!qword_1EB1253D8)
  {
    sub_1A3E71E54();
    sub_1A3E71ED8(255);
    sub_1A3E7253C();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1253D8);
    }
  }
}

void sub_1A3E71E54()
{
  if (!qword_1EB122010)
  {
    sub_1A3E71ED8(255);
    sub_1A3E7253C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122010);
    }
  }
}

void sub_1A3E71F20()
{
  if (!qword_1EB1216D8)
  {
    sub_1A3E71FB4(255);
    sub_1A3E76368(&qword_1EB121070, sub_1A3E71FB4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216D8);
    }
  }
}

void sub_1A3E71FE8()
{
  if (!qword_1EB122040)
  {
    sub_1A3E75CCC(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A3E7207C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB122040);
    }
  }
}

void sub_1A3E7207C()
{
  if (!qword_1EB121998)
  {
    sub_1A3E72110();
    sub_1A3E76368(&qword_1EB121288, sub_1A3E72110);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121998);
    }
  }
}

void sub_1A3E72110()
{
  if (!qword_1EB121280)
  {
    sub_1A3E72AD4(255, &qword_1EB1242D8, sub_1A3E72198, sub_1A3E721E0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121280);
    }
  }
}

void sub_1A3E7221C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3E75EBC(255, a3, a4, a5, MEMORY[0x1E697F960]);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3E722B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3E75CCC(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3E72420()
{
  if (!qword_1EB122E98)
  {
    sub_1A3E724BC();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122E98);
    }
  }
}

void sub_1A3E724BC()
{
  if (!qword_1EB121FC8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FC8);
    }
  }
}

unint64_t sub_1A3E7253C()
{
  result = qword_1EB123B18;
  if (!qword_1EB123B18)
  {
    sub_1A3E71ED8(255);
    sub_1A3E76368(&qword_1EB1216E0, sub_1A3E71F20);
    sub_1A3E76368(&qword_1EB122EA0, sub_1A3E72420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B18);
  }

  return result;
}

void sub_1A3E7261C()
{
  if (!qword_1EB1241C0)
  {
    sub_1A3E71DB0();
    sub_1A3E75CCC(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1241C0);
    }
  }
}

unint64_t sub_1A3E726A8()
{
  result = qword_1EB1241C8;
  if (!qword_1EB1241C8)
  {
    sub_1A3E7261C();
    sub_1A3E76368(&qword_1EB1253E0, sub_1A3E71DB0);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241C8);
  }

  return result;
}

unint64_t sub_1A3E72758()
{
  result = qword_1EB127700;
  if (!qword_1EB127700)
  {
    sub_1A3E75CCC(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127700);
  }

  return result;
}

void sub_1A3E72810()
{
  if (!qword_1EB121540)
  {
    sub_1A3E728A4();
    sub_1A3E76368(&qword_1EB121210, sub_1A3E728A4);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121540);
    }
  }
}

void sub_1A3E728A4()
{
  if (!qword_1EB121208)
  {
    sub_1A3E72AD4(255, &qword_1EB123B60, sub_1A3E7292C, sub_1A3E7355C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121208);
    }
  }
}

void sub_1A3E72954(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3E729B8()
{
  if (!qword_1EB121850)
  {
    sub_1A3E72A4C();
    sub_1A3E76368(&qword_1EB120EA0, sub_1A3E72A4C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121850);
    }
  }
}

void sub_1A3E72A4C()
{
  if (!qword_1EB120E98)
  {
    sub_1A3E72AD4(255, &qword_1EB1212B0, sub_1A3E72B50, sub_1A3E73020);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120E98);
    }
  }
}

void sub_1A3E72AD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3E72B84()
{
  if (!qword_1EB1212C0)
  {
    sub_1A3E72C00(255, &qword_1EB1212C8, &qword_1EB121EF0, sub_1A3E72C58);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1212C0);
    }
  }
}

void sub_1A3E72C00(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3E722B4(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3E72C58()
{
  if (!qword_1EB121EF8)
  {
    sub_1A3E72D5C();
    sub_1A5243064();
    sub_1A3E750A8(&qword_1EB127D90, sub_1A3E72D5C, sub_1A3E72F3C);
    sub_1A3E76368(&qword_1EB124DE0, MEMORY[0x1E69C2380]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EF8);
    }
  }
}

void sub_1A3E72D5C()
{
  if (!qword_1EB127D98)
  {
    sub_1A3E72DD0(255, &qword_1EB127DA0, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127D98);
    }
  }
}

void sub_1A3E72DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E72E5C();
    v7 = v6;
    sub_1A3E72EF0(255, &qword_1EB129A88);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3E72E5C()
{
  if (!qword_1EB129700)
  {
    sub_1A3E72EF0(255, &qword_1EB129A88);
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129700);
    }
  }
}

void sub_1A3E72EF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A3E72F3C()
{
  result = qword_1EB127DA8;
  if (!qword_1EB127DA8)
  {
    sub_1A3E72DD0(255, &qword_1EB127DA0, MEMORY[0x1E697F960]);
    sub_1A3E76368(&qword_1EB129708, sub_1A3E72E5C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DA8);
  }

  return result;
}

void sub_1A3E73054()
{
  if (!qword_1EB121F20)
  {
    sub_1A3E73158();
    sub_1A52437F4();
    sub_1A3E76368(&qword_1EB121AE8, sub_1A3E73158);
    sub_1A3E76368(&qword_1EB124D58, MEMORY[0x1E69C2660]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F20);
    }
  }
}

void sub_1A3E73158()
{
  if (!qword_1EB121AE0)
  {
    sub_1A3E75EBC(255, &qword_1EB123328, sub_1A3E73200, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A3E732C0();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121AE0);
    }
  }
}

void sub_1A3E73200()
{
  if (!qword_1EB1236C8)
  {
    sub_1A3E73998(255, &qword_1EB123CE8, MEMORY[0x1E6981748], MEMORY[0x1E697E908], MEMORY[0x1E697E830]);
    sub_1A3E73998(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1236C8);
    }
  }
}

unint64_t sub_1A3E732C0()
{
  result = qword_1EB123330;
  if (!qword_1EB123330)
  {
    sub_1A3E75EBC(255, &qword_1EB123328, sub_1A3E73200, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1A3E733B4();
    sub_1A3E76368(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123330);
  }

  return result;
}

unint64_t sub_1A3E733B4()
{
  result = qword_1EB1236D0;
  if (!qword_1EB1236D0)
  {
    sub_1A3E73200();
    sub_1A3E73434();
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236D0);
  }

  return result;
}

unint64_t sub_1A3E73434()
{
  result = qword_1EB123CF0;
  if (!qword_1EB123CF0)
  {
    sub_1A3E73998(255, &qword_1EB123CE8, MEMORY[0x1E6981748], MEMORY[0x1E697E908], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CF0);
  }

  return result;
}

unint64_t sub_1A3E734D8()
{
  result = qword_1EB122E08;
  if (!qword_1EB122E08)
  {
    sub_1A3E73998(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E08);
  }

  return result;
}

void sub_1A3E735B8()
{
  if (!qword_1EB121A28)
  {
    sub_1A5242BD4();
    sub_1A3E76368(&qword_1EB124E30, MEMORY[0x1E69C2148]);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A28);
    }
  }
}

unint64_t sub_1A3E7364C()
{
  result = qword_1EB122888;
  if (!qword_1EB122888)
  {
    sub_1A3E75980(255, &qword_1EB122880, sub_1A3E71CDC, &type metadata for LemonadeShelfVisionHeaderTitleView, MEMORY[0x1E697F960]);
    sub_1A3E7378C();
    sub_1A3E71DB0();
    sub_1A3E7261C();
    sub_1A3E76368(&qword_1EB1253E0, sub_1A3E71DB0);
    sub_1A3E726A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122888);
  }

  return result;
}

unint64_t sub_1A3E7378C()
{
  result = qword_1EB1252F8;
  if (!qword_1EB1252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252F8);
  }

  return result;
}

unint64_t sub_1A3E737E0()
{
  result = qword_1EB1225C8;
  if (!qword_1EB1225C8)
  {
    sub_1A3E75EBC(255, &qword_1EB1225C0, sub_1A3E72810, sub_1A3E72D5C, MEMORY[0x1E697F960]);
    sub_1A3E76368(&qword_1EB121548, sub_1A3E72810);
    sub_1A3E750A8(&qword_1EB127D90, sub_1A3E72D5C, sub_1A3E72F3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1225C8);
  }

  return result;
}

void sub_1A3E73904()
{
  if (!qword_1EB124368)
  {
    sub_1A3E71B60();
    sub_1A3E73998(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124368);
    }
  }
}

void sub_1A3E73998(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A3E73A2C()
{
  if (!qword_1EB128038)
  {
    sub_1A3E73AC0();
    sub_1A3E76368(&qword_1EB128AE0, sub_1A3E73AC0);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128038);
    }
  }
}

void sub_1A3E73AC0()
{
  if (!qword_1EB128AD8)
  {
    sub_1A3E753B8(255, &qword_1EB128948, sub_1A3E73B78, MEMORY[0x1E6981EC8], MEMORY[0x1E697E290]);
    sub_1A3E73BCC();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128AD8);
    }
  }
}

unint64_t sub_1A3E73B78()
{
  result = qword_1EB1271B8;
  if (!qword_1EB1271B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1271B8);
  }

  return result;
}

unint64_t sub_1A3E73BCC()
{
  result = qword_1EB128950;
  if (!qword_1EB128950)
  {
    sub_1A3E753B8(255, &qword_1EB128948, sub_1A3E73B78, MEMORY[0x1E6981EC8], MEMORY[0x1E697E290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128950);
  }

  return result;
}

unint64_t sub_1A3E73C5C()
{
  result = qword_1EB123998;
  if (!qword_1EB123998)
  {
    sub_1A3E739EC(255);
    sub_1A3E73CDC();
    sub_1A3E73D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123998);
  }

  return result;
}

unint64_t sub_1A3E73CDC()
{
  result = qword_1EB124370;
  if (!qword_1EB124370)
  {
    sub_1A3E73904();
    sub_1A3E76368(&unk_1EB124F58, sub_1A3E71B60);
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124370);
  }

  return result;
}

unint64_t sub_1A3E73D8C()
{
  result = qword_1EB161130[0];
  if (!qword_1EB161130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB161130);
  }

  return result;
}

unint64_t sub_1A3E73DE0()
{
  result = qword_1EB1278A8;
  if (!qword_1EB1278A8)
  {
    sub_1A3E75CCC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1278A8);
  }

  return result;
}

uint64_t sub_1A3E73EC0()
{
  sub_1A524B424();
  sub_1A3E739EC(255);
  type metadata accessor for LemonadeShelfHeaderHeightReporterModifier();
  sub_1A5248804();
  sub_1A3E75CCC(255, &qword_1EB1278A0, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3E73C5C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A3E73DE0();
  swift_getWitnessTable();
  sub_1A524B014();
}

unint64_t sub_1A3E74024()
{
  result = qword_1EB129360;
  if (!qword_1EB129360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129360);
  }

  return result;
}

unint64_t sub_1A3E74078()
{
  result = qword_1EB127D18;
  if (!qword_1EB127D18)
  {
    sub_1A3E723E4(255);
    sub_1A3E76368(&qword_1EB129970, type metadata accessor for LemonadeTitleDisclosureImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D18);
  }

  return result;
}

void sub_1A3E74128()
{
  if (!qword_1EB12D218)
  {
    sub_1A3E72AD4(255, &qword_1EB12D220, MEMORY[0x1E69C2430], sub_1A3E741B0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D218);
    }
  }
}

void sub_1A3E741B0()
{
  if (!qword_1EB12D228)
  {
    sub_1A3E75EBC(255, &qword_1EB12D230, sub_1A3E74254, sub_1A3E74608, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D228);
    }
  }
}

void sub_1A3E74254()
{
  if (!qword_1EB12D238)
  {
    sub_1A3E74328(255);
    sub_1A52498E4();
    sub_1A3E74528();
    sub_1A3E76368(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D238);
    }
  }
}

void sub_1A3E74370()
{
  if (!qword_1EB12D248)
  {
    sub_1A3E75980(255, &qword_1EB128540, sub_1A3D6D248, MEMORY[0x1E6981748], MEMORY[0x1E697E830]);
    sub_1A3E7440C();
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D248);
    }
  }
}

unint64_t sub_1A3E7440C()
{
  result = qword_1EB128550;
  if (!qword_1EB128550)
  {
    sub_1A3E75980(255, &qword_1EB128540, sub_1A3D6D248, MEMORY[0x1E6981748], MEMORY[0x1E697E830]);
    sub_1A3E76368(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128550);
  }

  return result;
}

unint64_t sub_1A3E74528()
{
  result = qword_1EB12D250;
  if (!qword_1EB12D250)
  {
    sub_1A3E74328(255);
    sub_1A3E76368(&qword_1EB12D258, sub_1A3E74370);
    sub_1A3E76368(&qword_1EB1220F0, sub_1A3E744F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D250);
  }

  return result;
}

void sub_1A3E746B4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A3E75CCC(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        sub_1A52431C4();
        if (v3 <= 0x3F)
        {
          sub_1A3E75CCC(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3E75CCC(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3E71AFC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A3E75CCC(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A3E71AFC(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A3E71AFC(319, &qword_1EB1247D8, type metadata accessor for LemonadeShelfViewModel, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A3E75CCC(319, &qword_1EB124748, &type metadata for LemonadeShelvesViewModelDisplayState, MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A3E74A24(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1A5242D14() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1A52486A4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_37;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v15 + ((v10 + ((v14 + (((((((v13 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 <= 3)
  {
    v17 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *&a1[v16];
      if (!*&a1[v16])
      {
        goto LABEL_37;
      }
    }

    else
    {
      v20 = *&a1[v16];
      if (!v20)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    v22 = v16 > 3;
    if (v16 <= 3)
    {
      v23 = (v20 - 1) << (8 * v16);
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }

    return v8 + (v26 | v23) + 1;
  }

  if (v19)
  {
    v20 = a1[v16];
    if (a1[v16])
    {
      goto LABEL_30;
    }
  }

LABEL_37:
  if (v7 < 0x7FFFFFFF)
  {
    v25 = *((&a1[v13] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  else
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }
}

void sub_1A3E74CF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v27 = *(a4 + 16);
  v7 = *(v27 - 8);
  v26 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1A5242D14() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_1A52486A4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v7 + 64);
  v15 = *(v10 + 80) & 0xF8 | 7;
  v16 = *(v12 + 80) & 0xF8 | 7;
  v17 = ((v13 + ((v16 + ((v11 + ((v15 + (((((((v14 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & ~v16) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v20 = 0;
    if (v9 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v9 >= a2)
    {
LABEL_23:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *&a1[v17] = 0;
      }

      else if (v20)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v8 < 0x7FFFFFFF)
      {
        v24 = &a1[v14] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          v25 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v25 = (a2 - 1);
        }

        *(v24 + 8) = v25;
      }

      else
      {
        v23 = *(v26 + 56);

        v23(a1, a2, v8, v27);
      }

      return;
    }
  }

  v21 = ~v9 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_33:
      if (v20 == 2)
      {
        *&a1[v17] = v22;
      }

      else
      {
        *&a1[v17] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v20)
  {
    a1[v17] = v22;
  }
}

uint64_t sub_1A3E75004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A3E7504C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3E750A8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E75124()
{
  result = qword_1EB122430;
  if (!qword_1EB122430)
  {
    sub_1A3E75EBC(255, &qword_1EB122428, sub_1A3E723E4, sub_1A3D6D1A0, MEMORY[0x1E697F960]);
    sub_1A3E74078();
    sub_1A3D6D3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122430);
  }

  return result;
}

void sub_1A3E751E8()
{
  if (!qword_1EB12D268)
  {
    sub_1A3E74128();
    sub_1A3E76368(&unk_1EB12D270, sub_1A3E74128);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D268);
    }
  }
}

uint64_t sub_1A3E7527C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A3E7535C()
{
  if (!qword_1EB1222B0)
  {
    sub_1A3E73D8C();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1222B0);
    }
  }
}

void sub_1A3E753B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A3E75420()
{
  result = qword_1EB12AF18;
  if (!qword_1EB12AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF18);
  }

  return result;
}

uint64_t objectdestroy_71Tm()
{
  j__swift_release(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1A3E754D0()
{
  result = qword_1EB127B48;
  if (!qword_1EB127B48)
  {
    sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127B48);
  }

  return result;
}

uint64_t sub_1A3E75588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E75608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3E75670(unint64_t result)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_1A3E75684(result);
  }

  return result;
}

unint64_t sub_1A3E75684(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
  }

  return result;
}

uint64_t sub_1A3E756AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for LemonadeShelfHeader() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A3E6B168(v4, v1, v2);
}

uint64_t sub_1A3E75770(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3E75868();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A3E75868()
{
  if (!qword_1EB126430)
  {
    sub_1A3C52C70(255, &qword_1EB12B160);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126430);
    }
  }
}

uint64_t sub_1A3E758E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A3E72EF0(0, &qword_1EB129A88);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

void sub_1A3E75980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeShelfHeader();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  sub_1A3C53AEC(*(v3 + v2[15]), *(v3 + v2[15] + 8));
  sub_1A3C53AEC(*(v3 + v2[16]), *(v3 + v2[16] + 8));
  v4 = v2[17];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + v2[18];
  sub_1A3D35A84(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32));
  v7 = v2[19];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[21]), *(v3 + v2[21] + 8));

  return swift_deallocObject();
}

void sub_1A3E75CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3E75DB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3E75E24(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E75E68(result, a2, a3 & 1);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3E75E68(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A3E75E78(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A3E04DF4(result, a2, a3 & 1);
  }

  return result;
}

void sub_1A3E75EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A3E75F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E75FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3E76008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E76070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3E760D0()
{
  result = qword_1EB12A1D8;
  if (!qword_1EB12A1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A1D8);
  }

  return result;
}

void sub_1A3E76130()
{
  if (!qword_1EB120490)
  {
    sub_1A3C3DEB4();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120490);
    }
  }
}

void (*sub_1A3E76194())(void)
{
  v1 = *(v0 + 16);
  v1[6] = *(v0 + 24);
  result = (*(*v1 + 176))();
  if (result)
  {
    v4 = v3;
    v5 = result;
    result();
    return sub_1A3C784D4(v5, v4);
  }

  return result;
}

unint64_t sub_1A3E76214()
{
  result = qword_1EB1238A0;
  if (!qword_1EB1238A0)
  {
    sub_1A3E72954(255, &qword_1EB123898, sub_1A3E75334);
    sub_1A3E762B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238A0);
  }

  return result;
}

unint64_t sub_1A3E762B8()
{
  result = qword_1EB124120;
  if (!qword_1EB124120)
  {
    sub_1A3E75334(255);
    sub_1A3E76368(&qword_1EB1222B8, sub_1A3E7535C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124120);
  }

  return result;
}

uint64_t sub_1A3E76368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3E764EC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A3E7654C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsPhototypeWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A3E76688(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsPhototypeWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A3E767C8(uint64_t a1, __int16 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A3E76B78(a2);
  }
}

void (*sub_1A3E76820(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A3E76868;
}

void sub_1A3E76868(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A3E76688(v3);
  }

  else
  {
    sub_1A3E76688(v2);
  }
}

id sub_1A3E768D0(void *a1)
{
  v2 = v1;
  type metadata accessor for PhotosDetailsPhototypeWidgetViewModel();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v6 = a1;
  v7 = v5();
  v8 = (*((*v4 & *v2) + 0xA8))();
  v9 = sub_1A43ACC88(v6, v7, v8);
  v10 = *((*v4 & *v2) + 0xE0);
  v11 = v9;
  v10(v9);
  sub_1A3E76A1C();
  v12 = v11;
  v16[0] = sub_1A489F468();
  v16[1] = v13;
  v14 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v16);

  return v14;
}

void sub_1A3E76A1C()
{
  if (!qword_1EB12D290)
  {
    sub_1A3E76A78();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D290);
    }
  }
}

unint64_t sub_1A3E76A78()
{
  result = qword_1EB12D298;
  if (!qword_1EB12D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D298);
  }

  return result;
}

uint64_t sub_1A3E76B30()
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return sub_1A524C714();
}

void sub_1A3E76B78(__int16 a1)
{
  if (a1 < 0)
  {
    v2 = v1;
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
    if (v4)
    {
      v20 = v4;
      type metadata accessor for PhotosDetailsPhototypeWidgetViewModel();
      if (swift_dynamicCastClass())
      {
        sub_1A3E7704C();
        sub_1A52478D4();
        sub_1A5247964();

        v6 = (*((*v3 & *v1) + 0xA8))(v5);
        v7 = [v6 phototypeAccessoryViewSupport];

        v8 = sub_1A43ACF48();
        v9 = (*((*v3 & *v2) + 0x158))(v8);

        [v9 setNeedsLayout];
        [v9 layoutIfNeeded];

        v10 = (*((*v3 & *v2) + 0x78))();
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          *(v12 + 24) = v2;
          aBlock[4] = sub_1A3E770A4;
          aBlock[5] = v12;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3C2E0D0;
          aBlock[3] = &block_descriptor_29;
          v13 = _Block_copy(aBlock);
          swift_unknownObjectRetain();
          v14 = v2;

          [v11 widget:v14 animateChanges:v13 withAnimationOptions:0];

          _Block_release(v13);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        sub_1A524E404();

        v15 = v20;
        v16 = [v15 description];
        v17 = sub_1A524C674();
        v19 = v18;

        MEMORY[0x1A5907B60](v17, v19);

        sub_1A524E6E4();
        __break(1u);
      }
    }
  }
}

uint64_t sub_1A3E76F8C()
{
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDetailsPhototypeWidget_widgetInteractionDelegate);

  return swift_unknownObjectRelease();
}

id sub_1A3E76FCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsPhototypeWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A3E7704C()
{
  result = qword_1EB12D2A8;
  if (!qword_1EB12D2A8)
  {
    type metadata accessor for PhotosDetailsPhototypeWidgetViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D2A8);
  }

  return result;
}

id sub_1A3E770A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 widgetHasLoadedContentDataDidChange_];

  return [v1 widgetPreferredContentHeightForWidthDidChange_];
}

uint64_t sub_1A3E77248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5243834();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E793D8(0, &unk_1EB129180, MEMORY[0x1E69C2060]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  *(a3 + 40) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 56) = 0u;
  *(a3 + 24) = &type metadata for CustomMenuHeaderTitleModel;
  *(a3 + 32) = sub_1A3E7942C();
  v13 = swift_allocObject();
  *a3 = v13;
  sub_1A3C341C8(a1, v13 + 16);
  if (a2)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 1;
    v14 = sub_1A52429A4();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    (*(v7 + 104))(v9, *MEMORY[0x1E69C2678], v6);
    *(&v17 + 1) = sub_1A5243EC4();
    v18 = sub_1A3C382BC(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    __swift_allocate_boxed_opaque_existential_1(&v16);
    sub_1A5243ED4();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  return sub_1A3E79480(&v16, a3 + 40);
}

void sub_1A3E776CC()
{
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  v3 = [v0 socialGroups];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 firstObject];

    if (v5)
    {

      sub_1A3E77DEC();
    }
  }

  v6 = OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_initialPeople;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7)
  {
    if (v7 >> 62)
    {
      if (sub_1A524E2B4() >= 1)
      {
LABEL_9:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_9;
    }
  }

  v8 = OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_photoLibrary;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (v9)
  {
    type metadata accessor for PhotoKitSocialGroupActionManager();
    v11 = v9;
    sub_1A4680978(MEMORY[0x1E69E7CC0], v11);
    sub_1A4680924();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  [v0 completeUserInteractionTaskWithSuccess:0 error:0];
  v10 = [v0 description];
  sub_1A524C674();

  sub_1A5246EF4();
}

void sub_1A3E77DEC()
{
  v1 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v1);
  *&v3 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v13[5] = v13 - v4;
  v5 = [v0 socialGroups];
  v6 = [v5 firstObject];

  v7 = OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_photoLibrary;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (!v8)
  {
    if (v6)
    {
      v9 = [v6 photoLibrary];
      v10 = *&v0[v7];
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    *&v0[v7] = v9;

    v8 = *&v0[v7];
    if (!v8)
    {
      [v0 completeUserInteractionTaskWithSuccess:0 error:0];
      v12 = [v0 description];
      sub_1A524C674();

      sub_1A5246EF4();
    }
  }

  v13[4] = v1;
  sub_1A3CB6920(0, &qword_1EB12D338, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel);
  v11 = v8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A3E78414(char a1, uint64_t a2, void *a3)
{
  v6 = sub_1A5246F24();
  result = MEMORY[0x1EEE9AC00](v6);
  if (a2)
  {
    v8 = sub_1A5240B74();
    goto LABEL_5;
  }

  if ((a1 & 1) == 0)
  {
    v8 = 0;
LABEL_5:
    [a3 completeUserInteractionTaskWithSuccess:a1 & 1 error:v8];

    v9 = [a3 description];
    sub_1A524C674();

    sub_1A5246EF4();
  }

  return result;
}

void sub_1A3E7869C(char a1, uint64_t a2, void *a3)
{
  v7 = sub_1A5246F24();
  v8 = [v3 socialGroups];
  v9 = [v8 firstObject];

  if (a2)
  {
    v10 = sub_1A5240B74();
  }

  else
  {
    if (a1)
    {
      if (a3)
      {
        v11 = [a3 fetchedObjects];
        if (v11)
        {
          v12 = v11;
          sub_1A3C52C70(0, &qword_1EB1265C0);
          sub_1A524CA34();
        }
      }

      sub_1A3E77DEC();
    }

    v10 = 0;
  }

  [v3 completeUserInteractionTaskWithSuccess:0 error:v10];

  v13 = [v3 description];
  sub_1A524C674();

  sub_1A5246EF4();
}

id sub_1A3E78ABC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_photoLibrary] = 0;
  *&v3[OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_initialPeople] = 0;
  v6 = &v3[OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_creationCompletionBlock];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR___PXSocialGroupCustomizeAlbumActionPerformer_addPeoplePerformer] = 0;
  v7 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C382BC(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  v8 = sub_1A524C3D4();

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithActionType_assetCollectionReference_parameters_, v7, a3, v8);

  return v9;
}

void sub_1A3E7913C()
{
  if (!qword_1EB12D340)
  {
    sub_1A3CB6920(255, &qword_1EB12D338, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel);
    sub_1A3E791CC();
    v0 = type metadata accessor for LemonadeCollectionCustomizationViewModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D340);
    }
  }
}

unint64_t sub_1A3E791CC()
{
  result = qword_1EB12D348;
  if (!qword_1EB12D348)
  {
    sub_1A3CB6920(255, &qword_1EB12D338, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for LemonadeCollectionCustomizationSocialGroupModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D348);
  }

  return result;
}

uint64_t sub_1A3E79250(uint64_t a1)
{
  sub_1A3E792C4(0, &qword_1EB128D10, &qword_1EB128D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3E792C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A3C34400(255, a3);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3E7931C()
{
  result = qword_1EB199C60;
  if (!qword_1EB199C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB199C60);
  }

  return result;
}

void sub_1A3E793D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3E7942C()
{
  result = qword_1EB199C68[0];
  if (!qword_1EB199C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB199C68);
  }

  return result;
}

uint64_t sub_1A3E79480(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB13FB90, &qword_1EB13FCC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4View_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3E79524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3E7956C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3E795D0(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB13FB90, &qword_1EB13FCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PXRearrangeBookmarksAction.init(collectionList:movedObjects:targetObject:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCollectionList:a1 movedObjects:a2 targetObject:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  *&v3[OBJC_IVAR___PXRearrangeBookmarksAction_undoBookmarks] = 0;
  *&v3[OBJC_IVAR___PXRearrangeBookmarksAction_redoBookmarks] = 0;
  *&v3[OBJC_IVAR___PXRearrangeBookmarksAction_collectionList] = a1;
  *&v3[OBJC_IVAR___PXRearrangeBookmarksAction_movedObjects] = a2;
  *&v3[OBJC_IVAR___PXRearrangeBookmarksAction_targetObject] = a3;
  v5 = a3;
  v6 = a1;
  swift_unknownObjectRetain();
  result = [v6 photoLibrary];
  if (result)
  {
    v8 = result;
    v10.receiver = v3;
    v10.super_class = PXRearrangeBookmarksAction;
    v9 = objc_msgSendSuper2(&v10, sel_initWithPhotoLibrary_, result);

    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PXRearrangeBookmarksAction.perform(_:)(uint64_t a1)
{
  v2 = v1;
  v23[1] = a1;
  sub_1A3E79B1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = v23 - v9;
  v11 = [v1 movedObjects];
  v12 = sub_1A3F9ECF0();
  swift_unknownObjectRelease();
  v13 = [v1 targetObject];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A3F9E42C();
    sub_1A3F9E50C(v15, v16, v14, v10);
  }

  else
  {
    v17 = type metadata accessor for LemonadeBookmark(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  }

  v18 = [v2 photoLibrary];
  v19 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  sub_1A3E7AC44(v10, v6, sub_1A3E79B1C);
  v20 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v19;
  v21[4] = v12;
  sub_1A3E7AD0C(v6, v21 + v20, sub_1A3E79B1C);
  aBlock[4] = sub_1A3E79C30;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_31;
  _Block_copy(aBlock);
  v22 = v2;

  px_dispatch_on_main_queue();
}

void sub_1A3E79B1C()
{
  if (!qword_1EB12A538)
  {
    type metadata accessor for LemonadeBookmark(255);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A538);
    }
  }
}

uint64_t sub_1A3E79B74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (*a2 + 328);
  v8 = *v7;
  *(a1 + OBJC_IVAR___PXRearrangeBookmarksAction_undoBookmarks) = (*v7)();

  v9 = sub_1A3E79C34(a3, a4);
  *(a1 + OBJC_IVAR___PXRearrangeBookmarksAction_redoBookmarks) = (v8)(v9);
}

uint64_t sub_1A3E79C34(uint64_t a1, uint64_t a2)
{
  sub_1A3E79B1C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v39 - v13;
  v15 = sub_1A52414C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A52414B4();
  v50 = *(a1 + 16);
  v45 = v9;
  v46 = v15;
  if (v50)
  {
    v40 = v8;
    v41 = a2;
    v42 = v7;
    v43 = v11;
    v44 = v16;
    v19 = 0;
    v20 = *v2;
    v39[1] = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v49 = *(v20 + 328);
    v48 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = a1 + v48;
    v22 = *(v9 + 72);
    do
    {
      v23 = sub_1A3E7AC44(v21 + v22 * v19, v14, type metadata accessor for LemonadeBookmark);
      v24 = v2;
      v25 = v49(v23);
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = v25 + v48;
        while ((sub_1A3F9D0E8(v14) & 1) == 0)
        {
          ++v27;
          v28 += v22;
          if (v26 == v27)
          {
            goto LABEL_3;
          }
        }

        sub_1A5241484();
      }

      else
      {
LABEL_3:
      }

      ++v19;
      v18 = sub_1A3E7ACAC(v14, type metadata accessor for LemonadeBookmark);
      v2 = v24;
    }

    while (v19 != v50);
    v11 = v43;
    v16 = v44;
    a2 = v41;
    v7 = v42;
    v8 = v40;
  }

  v29 = (*v2 + 328);
  v30 = *v29;
  v31 = *((*v29)(v18) + 16);

  sub_1A3E7AC44(a2, v7, sub_1A3E79B1C);
  if ((*(v45 + 48))(v7, 1, v8) == 1)
  {
    sub_1A3E7ACAC(v7, sub_1A3E79B1C);
  }

  else
  {
    v32 = sub_1A3E7AD0C(v7, v11, type metadata accessor for LemonadeBookmark);
    v33 = v30(v32);
    MEMORY[0x1EEE9AC00](v33);
    v39[-2] = v11;
    v34 = sub_1A3E7A528(sub_1A3E7AD74, &v39[-4], v33);
    v36 = v35;

    sub_1A3E7ACAC(v11, type metadata accessor for LemonadeBookmark);
    if ((v36 & 1) == 0)
    {
      v31 = v34;
    }
  }

  v37 = v47;
  sub_1A42E2204(v47, v31);
  return (*(v16 + 8))(v37, v46);
}

void sub_1A3E7A174(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1A3E7A8C4(v7, v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1A3E7A240(uint64_t (*a1)(void, void), uint64_t a2, void *a3)
{
  if (*(v3 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1(0, 0);
}

unint64_t type metadata accessor for PXRearrangeBookmarksAction()
{
  result = qword_1EB199D70[0];
  if (!qword_1EB199D70[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB199D70);
  }

  return result;
}

uint64_t sub_1A3E7A528(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1A3E7A614(void *a1)
{
  sub_1A3E79B1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = aBlock - v8;
  v10 = [a1 movedObjects];
  v11 = sub_1A3F9ECF0();
  swift_unknownObjectRelease();
  v12 = [a1 targetObject];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A3F9E42C();
    sub_1A3F9E50C(v14, v15, v13, v9);
  }

  else
  {
    v16 = type metadata accessor for LemonadeBookmark(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  v17 = [a1 photoLibrary];
  v18 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  sub_1A3E7AC44(v9, v5, sub_1A3E79B1C);
  v19 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v18;
  v20[4] = v11;
  sub_1A3E7AD0C(v5, v20 + v19, sub_1A3E79B1C);
  aBlock[4] = sub_1A3E7ADBC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_33;
  _Block_copy(aBlock);
  v21 = a1;

  px_dispatch_on_main_queue();
}

uint64_t sub_1A3E7A8C4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = *(a2 + 16);

  return v3(a2, 0, 0);
}

uint64_t objectdestroyTm_6()
{
  sub_1A3E79B1C();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v3 = type metadata accessor for LemonadeBookmark(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {

    v4 = v0 + v2 + *(v3 + 24);
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          goto LABEL_12;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_15;
        }

        v6 = sub_1A5241144();
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload != 4)
          {
            goto LABEL_15;
          }

LABEL_12:

          goto LABEL_15;
        }

        v6 = sub_1A5244EB4();
      }

      (*(*(v6 - 8) + 8))(v4, v6);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      goto LABEL_12;
    }
  }

LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_1A3E7ABDC()
{
  sub_1A3E79B1C();
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_1A3E79B74(v3, v4, v5, v6);
}

uint64_t sub_1A3E7AC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E7ACAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3E7AD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3E7AE34(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A3E7AF8C(void *a1)
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = a1;
  v4 = [v3 uuid];
  v5 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (v5)
  {

    v6 = v5;
  }

  else
  {
    __break(1u);
  }
}

void PHFace.px_localIdentifier.getter()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [v0 uuid];
  v3 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (v3)
  {
    sub_1A524C674();
  }

  else
  {
    __break(1u);
  }
}

id sub_1A3E7B0DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 isDetectionTypeHuman_];

  return v4;
}

uint64_t sub_1A3E7B190(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  LODWORD(v2) = [v2 isDetectionTypeHuman_];

  return v2 ^ 1;
}

uint64_t sub_1A3E7B250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v10 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v11 = v10[7];
  *(a2 + v11) = swift_getKeyPath();
  sub_1A3E7CD50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[8];
  LOBYTE(v34) = 0;
  sub_1A524B694();
  v13 = v36;
  *v12 = v35;
  *(v12 + 8) = v13;
  v14 = a2 + v10[9];
  LOBYTE(v34) = 0;
  sub_1A524B694();
  v15 = v36;
  *v14 = v35;
  *(v14 + 8) = v15;
  sub_1A5241134();
  v16 = *(v4 + 16);
  v16(v6, v9, v3);
  sub_1A524B694();
  v17 = *(v4 + 8);
  v17(v9, v3);
  sub_1A5241134();
  v16(v6, v9, v3);
  sub_1A524B694();
  v17(v9, v3);
  sub_1A5241134();
  v16(v6, v9, v3);
  sub_1A524B694();
  v17(v9, v3);
  v18 = a2 + v10[13];
  LOBYTE(v34) = 0;
  sub_1A524B694();
  v19 = v36;
  *v18 = v35;
  *(v18 + 8) = v19;
  v20 = a2 + v10[14];
  LOBYTE(v34) = 0;
  sub_1A524B694();
  v21 = v36;
  *v20 = v35;
  *(v20 + 8) = v21;
  v22 = v33;
  *a2 = v33;
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v24 = [ObjCClassFromMetadata sharedInstance];
  LOBYTE(v6) = [v24 showAssetGridForTimeEventDisambiguation];

  *(a2 + 8) = v6;
  type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel(0);
  v25 = OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary;
  v26 = sub_1A4722580(*(v22 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary));
  v27 = (a2 + v10[16]);
  v34 = v26;
  sub_1A524B694();
  v28 = v36;
  *v27 = v35;
  v27[1] = v28;
  type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel();
  v29 = sub_1A3FC93D4(*(v22 + v25));
  v30 = (a2 + v10[15]);
  v34 = v29;

  sub_1A524B694();

  v32 = v36;
  *v30 = v35;
  v30[1] = v32;
  return result;
}

uint64_t sub_1A3E7B654@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248C14();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for GenerativeStoryEventOrDatePickerView()
{
  result = qword_1EB1601C0;
  if (!qword_1EB1601C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3E7B71C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A3E7CAB0();
  v5 = v4;
  Description = v4[-1].Description;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249234();
  v121 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v150 = *(v11 - 8);
  v151 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v153 = v12;
  v154 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1A5241144();
  v152 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v129 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7CB44();
  v139 = v14;
  v126 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7E968();
  v141 = v16;
  v127 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v138 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7EA6C();
  v143 = v18;
  v128 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7EBA4();
  v144 = v20;
  v130 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7ED08();
  v147 = v23;
  v132 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v131 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7EEA0();
  v149 = v25;
  v133 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7F074();
  v28 = v27;
  v135 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v134 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86714(0, &qword_1EB12D5E0, sub_1A3E7F074, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v145 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v148 = &v110 - v32;
  result = (*(**v1 + 1184))(v31);
  if (result)
  {
    v34 = (*(*result + 840))(result);

    v36 = (*(*v34 + 168))(v35);

    if (v36 == 1)
    {
      swift_storeEnumTagMultiPayload();
      v38 = sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
      v39 = sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v40 = v142;
      v156 = v139;
      v157 = v142;
      v158 = v38;
      v159 = v39;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v156 = v141;
      v157 = v40;
      v158 = OpaqueTypeConformance2;
      v159 = v39;
      v42 = swift_getOpaqueTypeConformance2();
      v156 = v143;
      v157 = v40;
      v158 = v42;
      v159 = v39;
      v43 = swift_getOpaqueTypeConformance2();
      v156 = v144;
      v157 = MEMORY[0x1E69E6370];
      v158 = v43;
      v159 = MEMORY[0x1E69E6388];
      v44 = swift_getOpaqueTypeConformance2();
      v45 = sub_1A3E7DFCC();
      v156 = v147;
      v157 = &type metadata for GenerativeStoryEventOrDatePickerView.Tab;
      v158 = v44;
      v159 = v45;
      v46 = swift_getOpaqueTypeConformance2();
      v47 = sub_1A3E7D754(&qword_1EB12D5D8, sub_1A3E7CAB0);
      v156 = v149;
      v157 = v5;
      v158 = v46;
      v159 = v47;
      swift_getOpaqueTypeConformance2();
      return sub_1A5249744();
    }

    else
    {
      v111 = v9;
      v115 = v28;
      v116 = v8;
      v117 = Description;
      v118 = v5;
      v119 = a1;
      MEMORY[0x1EEE9AC00](v37);
      *(&v110 - 2) = v2;
      sub_1A3E7CC48();
      sub_1A3E7CD1C(255);
      v49 = v48;
      sub_1A3E7E33C(255);
      v51 = v50;
      v52 = sub_1A3E7E794();
      v53 = sub_1A3E7D754(&qword_1EB12D598, sub_1A3E7E33C);
      v156 = v49;
      v157 = v51;
      v158 = v52;
      v159 = v53;
      swift_getOpaqueTypeConformance2();
      v54 = v125;
      sub_1A5248824();
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v124 = v22;
      v55 = v129;
      v114 = v56;
      sub_1A524B6A4();
      v137 = type metadata accessor for GenerativeStoryEventOrDatePickerView;
      v155 = v2;
      v57 = v154;
      sub_1A3E87C78(v2, v154, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v150 = *(v150 + 80);
      v58 = (v150 + 16) & ~v150;
      v59 = swift_allocObject();
      v136 = type metadata accessor for GenerativeStoryEventOrDatePickerView;
      sub_1A3E86E38(v57, v59 + v58, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v113 = sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
      v60 = sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v61 = v139;
      v62 = v142;
      sub_1A524B144();

      v123 = *(v152 + 1);
      v152 = (v152 + 8);
      v123(v55, v62);
      (*(v126 + 8))(v54, v61);
      sub_1A524B6A4();
      v63 = v154;
      sub_1A3E87C78(v155, v154, v137);
      v122 = v58;
      v64 = swift_allocObject();
      sub_1A3E86E38(v63, v64 + v58, v136);
      v156 = v61;
      v157 = v62;
      v158 = v113;
      v159 = v60;
      v112 = v60;
      v139 = MEMORY[0x1E6981440];
      v65 = swift_getOpaqueTypeConformance2();
      v66 = v141;
      v67 = v138;
      sub_1A524B144();

      v123(v55, v62);
      (*(v127 + 8))(v67, v66);
      sub_1A524B6A4();
      v68 = v154;
      v69 = v137;
      sub_1A3E87C78(v155, v154, v137);
      v70 = v122;
      v71 = swift_allocObject();
      v72 = v136;
      sub_1A3E86E38(v68, v71 + v70, v136);
      v156 = v66;
      v157 = v62;
      v73 = v112;
      v158 = v65;
      v159 = v112;
      v74 = swift_getOpaqueTypeConformance2();
      v75 = v143;
      v76 = v73;
      v77 = v140;
      sub_1A524B144();

      v123(v55, v62);
      (*(v128 + 8))(v77, v75);
      v78 = v151;
      v79 = (v155 + *(v151 + 56));
      v80 = *v79;
      v81 = *(v79 + 1);
      LOBYTE(v156) = v80;
      v157 = v81;
      v152 = MEMORY[0x1E6981790];
      sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      sub_1A3E87C78(v155, v68, v69);
      v82 = v122;
      v83 = swift_allocObject();
      sub_1A3E86E38(v68, v83 + v82, v72);
      v156 = v75;
      v157 = v62;
      v84 = v82;
      v158 = v74;
      v159 = v76;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = v131;
      v87 = v144;
      v88 = v124;
      sub_1A524B144();

      (*(v130 + 8))(v88, v87);
      v89 = (v155 + *(v78 + 36));
      v90 = *v89;
      v91 = *(v89 + 1);
      LOBYTE(v156) = v90;
      v157 = v91;
      sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, v152);
      sub_1A524B6A4();
      sub_1A3E87C78(v155, v68, v137);
      v92 = swift_allocObject();
      v93 = v155;
      sub_1A3E86E38(v68, v92 + v84, v136);
      v156 = v87;
      v157 = MEMORY[0x1E69E6370];
      v158 = v85;
      v159 = MEMORY[0x1E69E6388];
      v94 = swift_getOpaqueTypeConformance2();
      v95 = sub_1A3E7DFCC();
      v96 = v147;
      sub_1A524B144();

      (*(v132 + 8))(v86, v96);
      LOBYTE(v54) = *(v93 + 24);

      if ((v54 & 1) == 0)
      {
        sub_1A524D254();
        v97 = sub_1A524A014();
        sub_1A5246DF4();

        v98 = v120;
        sub_1A5249224();
        swift_getAtKeyPath();

        (*(v121 + 8))(v98, v111);
      }

      v99 = v116;
      sub_1A52441D4();

      v100 = v154;
      sub_1A3E87C78(v93, v154, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v101 = swift_allocObject();
      sub_1A3E86E38(v100, v101 + v84, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v156 = v96;
      v157 = &type metadata for GenerativeStoryEventOrDatePickerView.Tab;
      v158 = v94;
      v159 = v95;
      v102 = swift_getOpaqueTypeConformance2();
      v103 = sub_1A3E7D754(&qword_1EB12D5D8, sub_1A3E7CAB0);
      v104 = v134;
      v105 = v149;
      v106 = v118;
      v107 = v146;
      sub_1A524B144();

      v117[1](v99, v106);
      (*(v133 + 8))(v107, v105);
      v108 = v135;
      v109 = v115;
      (*(v135 + 16))(v148, v104, v115);
      swift_storeEnumTagMultiPayload();
      v156 = v105;
      v157 = v106;
      v158 = v102;
      v159 = v103;
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      return (*(v108 + 8))(v104, v109);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3E7CAB0()
{
  if (!qword_1EB13C6A0)
  {
    sub_1A52430F4();
    sub_1A3E7D754(&unk_1EB1403C0, MEMORY[0x1E69C2390]);
    v0 = sub_1A5241F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C6A0);
    }
  }
}

void sub_1A3E7CB44()
{
  if (!qword_1EB12D3E0)
  {
    sub_1A5248464();
    sub_1A3E7CC48();
    sub_1A3E7CD1C(255);
    sub_1A3E7E33C(255);
    sub_1A3E7E794();
    sub_1A3E7D754(&qword_1EB12D598, sub_1A3E7E33C);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D3E0);
    }
  }
}

void sub_1A3E7CC48()
{
  if (!qword_1EB12D3E8)
  {
    sub_1A3E7CD1C(255);
    sub_1A3E7E33C(255);
    sub_1A3E7E794();
    sub_1A3E7D754(&qword_1EB12D598, sub_1A3E7E33C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D3E8);
    }
  }
}

void sub_1A3E7CD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3E7CDB4()
{
  if (!qword_1EB12D3F8)
  {
    sub_1A3E7CF64();
    sub_1A3E7D8A0();
    sub_1A3E7D064();
    sub_1A3E7D12C(255);
    sub_1A3E7E0E4(&qword_1EB12D440, sub_1A3E7D12C, sub_1A3E7D45C, sub_1A3E7D84C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7D954(255);
    sub_1A3E7D754(&qword_1EB12D540, sub_1A3E7D954);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D3F8);
    }
  }
}

void sub_1A3E7CF64()
{
  if (!qword_1EB12D400)
  {
    sub_1A3E7D064();
    sub_1A3E7D12C(255);
    sub_1A3E7E0E4(&qword_1EB12D440, sub_1A3E7D12C, sub_1A3E7D45C, sub_1A3E7D84C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D400);
    }
  }
}

void sub_1A3E7D064()
{
  if (!qword_1EB12D408)
  {
    sub_1A3E7D12C(255);
    sub_1A3E7E0E4(&qword_1EB12D440, sub_1A3E7D12C, sub_1A3E7D45C, sub_1A3E7D84C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D408);
    }
  }
}

void sub_1A3E7D154()
{
  if (!qword_1EB12D418)
  {
    sub_1A3E7D274(255, &qword_1EB12D420, sub_1A3E7D22C, sub_1A3E7D3D0, MEMORY[0x1E697F960]);
    sub_1A3E872A8(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D418);
    }
  }
}

void sub_1A3E7D274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3E7D368()
{
  if (!qword_1EB126BE0)
  {
    sub_1A3C52C70(255, &qword_1EB126BF0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126BE0);
    }
  }
}

void sub_1A3E7D3F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3E7D45C()
{
  result = qword_1EB12D448;
  if (!qword_1EB12D448)
  {
    sub_1A3E7D154();
    sub_1A3E7D4DC();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D448);
  }

  return result;
}

unint64_t sub_1A3E7D4DC()
{
  result = qword_1EB12D450;
  if (!qword_1EB12D450)
  {
    sub_1A3E7D274(255, &qword_1EB12D420, sub_1A3E7D22C, sub_1A3E7D3D0, MEMORY[0x1E697F960]);
    sub_1A3E7D5A0();
    sub_1A3E7D79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D450);
  }

  return result;
}

unint64_t sub_1A3E7D5A0()
{
  result = qword_1EB12D458;
  if (!qword_1EB12D458)
  {
    sub_1A3E7D22C(255);
    sub_1A3E7D650();
    sub_1A3E7D754(&qword_1EB12D470, type metadata accessor for GenerativeStoryDatePickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D458);
  }

  return result;
}

unint64_t sub_1A3E7D650()
{
  result = qword_1EB12D460;
  if (!qword_1EB12D460)
  {
    sub_1A3E7D2F8(255);
    sub_1A3E7D700();
    sub_1A3E7D754(&qword_1EB127780, sub_1A3E7D334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D460);
  }

  return result;
}

unint64_t sub_1A3E7D700()
{
  result = qword_1EB12D468;
  if (!qword_1EB12D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D468);
  }

  return result;
}

uint64_t sub_1A3E7D754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3E7D79C()
{
  result = qword_1EB12D478;
  if (!qword_1EB12D478)
  {
    sub_1A3E7D3D0(255);
    sub_1A3E7D754(&qword_1EB12D470, type metadata accessor for GenerativeStoryDatePickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D478);
  }

  return result;
}

unint64_t sub_1A3E7D84C()
{
  result = qword_1EB199D90;
  if (!qword_1EB199D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB199D90);
  }

  return result;
}

void sub_1A3E7D8A0()
{
  if (!qword_1EB12D480)
  {
    sub_1A3E7D954(255);
    sub_1A3E7D754(&qword_1EB12D540, sub_1A3E7D954);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D480);
    }
  }
}

void sub_1A3E7D9F8()
{
  if (!qword_1EB12D4A8)
  {
    sub_1A3E7DA98(255);
    sub_1A3E7DE4C();
    sub_1A3E7DFCC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D4A8);
    }
  }
}

void sub_1A3E7DAE8()
{
  if (!qword_1EB12D4C0)
  {
    sub_1A3E7DBBC();
    sub_1A5249804();
    sub_1A3E7D754(&qword_1EB12D4F8, sub_1A3E7DBBC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D4C0);
    }
  }
}

void sub_1A3E7DBBC()
{
  if (!qword_1EB12D4C8)
  {
    sub_1A3E7DC58();
    sub_1A3E7DD88();
    sub_1A3E7DDDC();
    v0 = sub_1A524B824();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D4C8);
    }
  }
}

void sub_1A3E7DC58()
{
  if (!qword_1EB12D4D0)
  {
    sub_1A3E800D0(255, &qword_1EB12D4D8, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E69E62F8]);
    sub_1A3E7DD0C();
    sub_1A3E7DD88();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D4D0);
    }
  }
}

unint64_t sub_1A3E7DD0C()
{
  result = qword_1EB12D4E0;
  if (!qword_1EB12D4E0)
  {
    sub_1A3E800D0(255, &qword_1EB12D4D8, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D4E0);
  }

  return result;
}

unint64_t sub_1A3E7DD88()
{
  result = qword_1EB12D4E8;
  if (!qword_1EB12D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D4E8);
  }

  return result;
}

unint64_t sub_1A3E7DDDC()
{
  result = qword_1EB12D4F0;
  if (!qword_1EB12D4F0)
  {
    sub_1A3E7DC58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D4F0);
  }

  return result;
}

unint64_t sub_1A3E7DE4C()
{
  result = qword_1EB12D500;
  if (!qword_1EB12D500)
  {
    sub_1A3E7DA98(255);
    sub_1A3E7DECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D500);
  }

  return result;
}

unint64_t sub_1A3E7DECC()
{
  result = qword_1EB12D508;
  if (!qword_1EB12D508)
  {
    sub_1A3E7DAC0(255);
    sub_1A3E7DBBC();
    sub_1A5249804();
    sub_1A3E7D754(&qword_1EB12D4F8, sub_1A3E7DBBC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D508);
  }

  return result;
}

unint64_t sub_1A3E7DFCC()
{
  result = qword_1EB12D510;
  if (!qword_1EB12D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D510);
  }

  return result;
}

unint64_t sub_1A3E7E020()
{
  result = qword_1EB12D520;
  if (!qword_1EB12D520)
  {
    sub_1A3E7D988(255);
    sub_1A3E7E0E4(&qword_1EB12D528, sub_1A3E7D9A8, sub_1A3E7E170, sub_1A3E7E23C);
    sub_1A3E7E290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D520);
  }

  return result;
}

uint64_t sub_1A3E7E0E4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E7E170()
{
  result = qword_1EB12D530;
  if (!qword_1EB12D530)
  {
    sub_1A3E7D9D0(255);
    sub_1A3E7DA98(255);
    sub_1A3E7DE4C();
    sub_1A3E7DFCC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D530);
  }

  return result;
}

unint64_t sub_1A3E7E23C()
{
  result = qword_1EB199D98;
  if (!qword_1EB199D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB199D98);
  }

  return result;
}

unint64_t sub_1A3E7E290()
{
  result = qword_1EB12D538;
  if (!qword_1EB12D538)
  {
    sub_1A3E872A8(255, &qword_1EB12D518, MEMORY[0x1E6981148], &type metadata for GenerativeStoryEventOrDatePickerView.ToolbarItemModifier, MEMORY[0x1E697E830]);
    sub_1A3E7E23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D538);
  }

  return result;
}

void sub_1A3E7E370()
{
  if (!qword_1EB12D550)
  {
    sub_1A3E7E440(255, &qword_1EB12D558, sub_1A3E7E4BC, sub_1A3E7E4E4);
    sub_1A3E7E440(255, &qword_1EB12D570, sub_1A3E7E5E8, sub_1A3E7E69C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D550);
    }
  }
}

void sub_1A3E7E440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A5247F34();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3E7E4E4()
{
  result = qword_1EB12D568;
  if (!qword_1EB12D568)
  {
    sub_1A3E7E4BC(255);
    sub_1A3E7D754(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A3E7E594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D568);
  }

  return result;
}

unint64_t sub_1A3E7E594()
{
  result = qword_1EB199DA0[0];
  if (!qword_1EB199DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB199DA0);
  }

  return result;
}

void sub_1A3E7E610()
{
  if (!qword_1EB12D580)
  {
    sub_1A3D6DF58();
    sub_1A3E800D0(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D580);
    }
  }
}

unint64_t sub_1A3E7E6E4()
{
  result = qword_1EB141EF0;
  if (!qword_1EB141EF0)
  {
    sub_1A3E7E610();
    sub_1A3E7D754(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB141EF0);
  }

  return result;
}

unint64_t sub_1A3E7E794()
{
  result = qword_1EB12D590;
  if (!qword_1EB12D590)
  {
    sub_1A3E7CD1C(255);
    sub_1A3E7CF64();
    sub_1A3E7D8A0();
    sub_1A3E7D064();
    sub_1A3E7D12C(255);
    sub_1A3E7E0E4(&qword_1EB12D440, sub_1A3E7D12C, sub_1A3E7D45C, sub_1A3E7D84C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7D954(255);
    sub_1A3E7D754(&qword_1EB12D540, sub_1A3E7D954);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D590);
  }

  return result;
}

void sub_1A3E7E968()
{
  if (!qword_1EB12D5A0)
  {
    sub_1A3E7CB44();
    sub_1A5241144();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5A0);
    }
  }
}

void sub_1A3E7EA6C()
{
  if (!qword_1EB12D5B0)
  {
    sub_1A3E7E968();
    sub_1A5241144();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5B0);
    }
  }
}

void sub_1A3E7EBA4()
{
  if (!qword_1EB12D5B8)
  {
    sub_1A3E7EA6C();
    sub_1A5241144();
    sub_1A3E7E968();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5B8);
    }
  }
}

void sub_1A3E7ED08()
{
  if (!qword_1EB12D5C0)
  {
    sub_1A3E7EBA4();
    sub_1A3E7EA6C();
    sub_1A5241144();
    sub_1A3E7E968();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5C0);
    }
  }
}

void sub_1A3E7EEA0()
{
  if (!qword_1EB12D5C8)
  {
    sub_1A3E7ED08();
    sub_1A3E7EBA4();
    sub_1A3E7EA6C();
    sub_1A5241144();
    sub_1A3E7E968();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7DFCC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5C8);
    }
  }
}

void sub_1A3E7F074()
{
  if (!qword_1EB12D5D0)
  {
    sub_1A3E7EEA0();
    sub_1A3E7CAB0();
    sub_1A3E7ED08();
    sub_1A3E7EBA4();
    sub_1A3E7EA6C();
    sub_1A5241144();
    sub_1A3E7E968();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7DFCC();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7D754(&qword_1EB12D5D8, sub_1A3E7CAB0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D5D0);
    }
  }
}

uint64_t sub_1A3E7F2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-v10];
  sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    v13 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
    v14 = (a3 + *(v13 + 56));
    v15 = *v14;
    v16 = *(v14 + 1);
    v24 = v15;
    v25 = v16;
    sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    result = sub_1A524B6A4();
    if (v23 == 1)
    {
      v17 = (a3 + *(v13 + 52));
      v18 = *v17;
      v19 = *(v17 + 1);
      v24 = v18;
      v25 = v19;
      sub_1A524B6A4();
      if (v23 != 1 || (sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]), sub_1A524B6A4(), sub_1A524B6A4(), v20 = sub_1A5241084(), v21 = *(v6 + 8), v21(v8, v5), v21(v11, v5), (v20 & 1) != 0))
      {
        (*(v6 + 16))(v11, a2, v5);
        sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
        sub_1A524B6B4();
      }

      if (*(a3 + 8) == 1)
      {
        return sub_1A3E83BE0();
      }

      else
      {
        return sub_1A3E84F78();
      }
    }
  }

  return result;
}

uint64_t sub_1A3E7F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5241144();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    v13 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
    v14 = (a3 + v13[14]);
    v15 = *v14;
    v16 = *(v14 + 1);
    v31 = v15;
    v32 = v16;
    sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    result = sub_1A524B6A4();
    if (v30 == 1)
    {
      v17 = v13[11];
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v28 = v18;
      v29 = v17;
      sub_1A524B6A4();
      LOBYTE(v17) = sub_1A524C594();
      v27 = v6;
      v19 = *(v6 + 8);
      v19(v11, v5);
      if ((v17 & 1) == 0)
      {
        v20 = (a3 + v13[13]);
        v21 = *v20;
        v22 = *(v20 + 1);
        v25 = v21;
        v31 = v21;
        v26 = v22;
        v32 = v22;
        sub_1A524B6A4();
        if ((v30 & 1) == 0)
        {
          v31 = v25;
          v32 = v26;
          v30 = 1;
          sub_1A524B6B4();
        }
      }

      sub_1A524B6A4();
      sub_1A524B6A4();
      v23 = sub_1A5241094();
      v19(v8, v5);
      v19(v11, v5);
      if (v23)
      {
        (*(v27 + 16))(v11, a2, v5);
        sub_1A524B6B4();
      }

      if (*(a3 + 8) == 1)
      {
        return sub_1A3E83BE0();
      }

      else
      {
        return sub_1A3E84F78();
      }
    }
  }

  return result;
}

void sub_1A3E7F8F4(unsigned __int8 *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  if (*a1 != *a2)
  {
    v16 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
    v17 = &a3[*(v16 + 56)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v31 = v18;
    v32 = v19;
    sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v20 = sub_1A524B6A4();
    if (v30)
    {
      v21 = (*(**a3 + 1184))(v20);
      if (!v21)
      {
        __break(1u);
        return;
      }

      v22 = (*(*v21 + 888))(v21);

      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v29[1] = v16;
      v29[2] = v23;
      sub_1A524B6A4();
      sub_1A5241104();
      (*(*v22 + 216))(v15, v12);

      v24 = *(v7 + 8);
      v24(v12, v6);
      v24(v15, v6);
      v25 = *(v7 + 16);
      v25(v15, v9, v6);
      sub_1A524B6B4();
      v25(v15, v9, v6);
      sub_1A524B6B4();
      v24(v9, v6);
    }

    else
    {
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      (*(v7 + 16))(v12, v15, v6);
      sub_1A524B6B4();
      (*(v7 + 8))(v15, v6);
      v26 = &a3[*(v16 + 52)];
      v27 = *v26;
      v28 = *(v26 + 1);
      v31 = v27;
      v32 = v28;
      v30 = 0;
      sub_1A524B6B4();
    }

    if (a3[8] == 1)
    {
      sub_1A3E83BE0();
    }

    else
    {
      sub_1A3E84F78();
    }
  }
}

uint64_t sub_1A3E7FD04(uint64_t a1)
{
  sub_1A3E7CD1C(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E802B8(a1, v4);
  v7 = a1;
  sub_1A3E7E33C(0);
  sub_1A3E7E794();
  sub_1A3E7D754(&qword_1EB12D598, sub_1A3E7E33C);
  sub_1A524B0E4();
  return sub_1A3E87570(v4, sub_1A3E7CD1C);
}

uint64_t sub_1A3E7FE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1A3E7FF00()
{
  v1 = *(*(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8) + 80);
  sub_1A5241144();
  sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    result = sub_1A524B6A4();
    if ((v3 & 1) == 0)
    {
      if (*(v0 + ((v1 + 16) & ~v1) + 8) == 1)
      {
        return sub_1A3E83BE0();
      }

      else
      {
        return sub_1A3E84F78();
      }
    }
  }

  return result;
}

void sub_1A3E80050(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1A3E7F8F4(a1, a2, v6);
}

void sub_1A3E800D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3E80120(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v8 = *(v5 - 8);
  result = v5 - 8;
  v7 = v8;
  if (*a1 != *a2)
  {
    if (*(v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 8) == 1)
    {
      return sub_1A3E83BE0();
    }

    else
    {
      return sub_1A3E84F78();
    }
  }

  return result;
}

uint64_t sub_1A3E801B0()
{
  v1 = *(*(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8) + 80);
  sub_1A3E7CAB0();
  sub_1A3E7D754(&qword_1EB12D5D8, sub_1A3E7CAB0);
  result = sub_1A524C594();
  if ((result & 1) == 0)
  {
    if (*(v0 + ((v1 + 16) & ~v1) + 8) == 1)
    {
      return sub_1A3E83BE0();
    }

    else
    {
      return sub_1A3E84F78();
    }
  }

  return result;
}

uint64_t sub_1A3E802B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1A5249B64();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A5249284();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7D12C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7D064();
  v12 = *(v11 - 8);
  v50 = v11;
  v51 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7CF64();
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E80864(v10);
  v18 = sub_1A524B344();
  v19 = sub_1A524A064();
  sub_1A3E7D154();
  v21 = &v10[*(v20 + 36)];
  *v21 = v18;
  v21[8] = v19;
  v22 = *(a1 + 8);
  v23 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v24 = (a1 + *(v23 + 64));
  v26 = *v24;
  v25 = v24[1];
  v60 = v26;
  v61 = v25;
  v27 = MEMORY[0x1E6981790];
  sub_1A3E7CD50(0, &qword_1EB121C18, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28 = v59;
  v29 = (a1 + *(v23 + 60));
  v31 = *v29;
  v30 = v29[1];
  v60 = v31;
  v61 = v30;
  sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, v27);
  sub_1A524B6A4();
  v32 = v59;
  v33 = &v10[*(v8 + 36)];
  *v33 = v22;
  *(v33 + 1) = v28;
  *(v33 + 2) = v32;
  v34 = v47;
  v35 = v49;
  (*(v47 + 104))(v6, *MEMORY[0x1E697C438], v49);
  v36 = sub_1A3E7E0E4(&qword_1EB12D440, sub_1A3E7D12C, sub_1A3E7D45C, sub_1A3E7D84C);
  sub_1A524AF34();
  (*(v34 + 8))(v6, v35);
  sub_1A3E86D74(v10, sub_1A3E7D12C);
  v37 = v52;
  sub_1A5249B54();
  v60 = v8;
  v61 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v48;
  v40 = v50;
  sub_1A524AED4();
  (*(v55 + 8))(v37, v56);
  (*(v51 + 8))(v14, v40);
  v58 = a1;
  sub_1A3E7D8A0();
  v60 = v40;
  v61 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A3E7D954(255);
  v42 = v41;
  v43 = sub_1A3E7D754(&qword_1EB12D540, sub_1A3E7D954);
  v60 = v42;
  v61 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v53;
  sub_1A524B0E4();
  return (*(v54 + 8))(v39, v44);
}

uint64_t sub_1A3E80864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v75 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v76 = v4;
  v77 = (&v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E7D3D0(0);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E697F948];
  sub_1A3E7D274(0, &qword_1EB12D680, sub_1A3E7D22C, sub_1A3E7D3D0, MEMORY[0x1E697F948]);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v73 - v9;
  sub_1A3E7CD50(0, &qword_1EB12D688, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v18 = type metadata accessor for GenerativeStoryDatePickerView();
  MEMORY[0x1EEE9AC00](v18);
  v74 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E7D274(0, &qword_1EB12D690, sub_1A3E7D2F8, type metadata accessor for GenerativeStoryDatePickerView, v7);
  v79 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  sub_1A3E7D22C(0);
  v82 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v80 = (&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *v2;
  result = (*(**v2 + 1184))(v24);
  if (result)
  {
    v28 = (*(*result + 840))();

    v30 = (*(*v28 + 216))(v29);

    v31 = *(v30 + 16);

    if (v31)
    {
      v32 = v2 + v3[9];
      v33 = *v32;
      v34 = *(v32 + 8);
      LOBYTE(v87) = v33;
      *(&v87 + 1) = v34;
      sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      if (v92)
      {
        v77 = MEMORY[0x1E6981790];
        sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);

        v73 = v17;
        sub_1A524B6C4();
        v78 = v18;
        v35 = v14;
        sub_1A524B6C4();
        v36 = v81;
        sub_1A524B6C4();
        v37 = v2 + v3[14];
        v38 = *v37;
        v39 = *(v37 + 8);
        LOBYTE(v92) = v38;
        v93 = v39;
        sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        sub_1A524B6C4();
        v41 = *(&v87 + 1);
        v40 = v87;
        v42 = v88;
        v43 = (v2 + v3[15]);
        v45 = *v43;
        v44 = v43[1];
        *&v87 = v45;
        *(&v87 + 1) = v44;
        sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, v77);
        sub_1A524B6A4();
        v46 = v74;
        sub_1A4615190(v26, v73, v35, v36, v40, v41, v42, v92, v74);
        sub_1A3E87C78(v46, v22, type metadata accessor for GenerativeStoryDatePickerView);
        swift_storeEnumTagMultiPayload();
        sub_1A3E7D2F8(0);
        sub_1A3E7D650();
        sub_1A3E7D754(&qword_1EB12D470, type metadata accessor for GenerativeStoryDatePickerView);
        v47 = v80;
        sub_1A5249744();
        sub_1A3E86D74(v46, type metadata accessor for GenerativeStoryDatePickerView);
      }

      else
      {

        sub_1A48A1694(v66, &v87);
        KeyPath = swift_getKeyPath();
        v68 = *(v26 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);
        v69 = v91;
        v70 = v90;
        *(v22 + 2) = v89;
        *(v22 + 3) = v70;
        v71 = v88;
        *v22 = v87;
        *(v22 + 1) = v71;
        *(v22 + 8) = v69;
        *(v22 + 9) = KeyPath;
        *(v22 + 10) = v68;
        swift_storeEnumTagMultiPayload();
        sub_1A3E7D2F8(0);
        sub_1A3E7D650();
        sub_1A3E7D754(&qword_1EB12D470, type metadata accessor for GenerativeStoryDatePickerView);
        v72 = v68;
        v47 = v80;
        sub_1A5249744();
      }

      sub_1A3E87C78(v47, v84, sub_1A3E7D22C);
      swift_storeEnumTagMultiPayload();
      sub_1A3E7D5A0();
      sub_1A3E7D79C();
      sub_1A5249744();
      v64 = sub_1A3E7D22C;
      v65 = v47;
    }

    else
    {
      v80 = MEMORY[0x1E6981790];
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);

      v48 = v17;
      sub_1A524B6C4();
      sub_1A524B6C4();
      v49 = v81;
      sub_1A524B6C4();
      v50 = v2 + v3[14];
      v51 = *v50;
      v52 = *(v50 + 8);
      LOBYTE(v92) = v51;
      v93 = v52;
      sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6C4();
      v53 = v87;
      v54 = v88;
      v55 = (v2 + v3[15]);
      v57 = *v55;
      v56 = v55[1];
      *&v87 = v57;
      *(&v87 + 1) = v56;
      sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, v80);
      sub_1A524B6A4();
      v58 = v78;
      sub_1A4615190(v26, v48, v14, v49, v53, *(&v53 + 1), v54, v92, v78);
      v59 = v77;
      sub_1A3E87C78(v2, v77, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v60 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v61 = swift_allocObject();
      sub_1A3E86E38(v59, v61 + v60, type metadata accessor for GenerativeStoryEventOrDatePickerView);
      v62 = v84;
      v63 = (v58 + *(v85 + 36));
      *v63 = sub_1A3E87C08;
      v63[1] = v61;
      v63[2] = 0;
      v63[3] = 0;
      sub_1A3E87C78(v58, v62, sub_1A3E7D3D0);
      swift_storeEnumTagMultiPayload();
      sub_1A3E7D5A0();
      sub_1A3E7D79C();
      sub_1A5249744();
      v64 = sub_1A3E7D3D0;
      v65 = v58;
    }

    return sub_1A3E86D74(v65, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3E812DC(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3E7D954(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A52498A4();
  v11 = a1;
  sub_1A3E7D988(0);
  sub_1A3E7E020();
  sub_1A5247F24();
  v8 = sub_1A3E7D754(&qword_1EB12D540, sub_1A3E7D954);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A3E8147C@<X0>(uint64_t a1@<X8>)
{
  sub_1A3E874D4(0, &qword_1EB12D678, MEMORY[0x1E697F948]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - v5;
  sub_1A3E7D9A8(0);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(**v1 + 1184))(v9);
  if (result)
  {
    v13 = (*(*result + 840))(result);

    v15 = (*(*v13 + 216))(v14);

    v16 = *(v15 + 16);

    if (v16)
    {
      sub_1A3E81FC4(v11);
      sub_1A3CC4468(v11, v6);
      swift_storeEnumTagMultiPayload();
      sub_1A3E872A8(0, &qword_1EB12D518, MEMORY[0x1E6981148], &type metadata for GenerativeStoryEventOrDatePickerView.ToolbarItemModifier, MEMORY[0x1E697E830]);
      sub_1A3E7E0E4(&qword_1EB12D528, sub_1A3E7D9A8, sub_1A3E7E170, sub_1A3E7E23C);
      sub_1A3E7E290();
      sub_1A5249744();
      return sub_1A3E87570(v11, sub_1A3E7D9A8);
    }

    else
    {
      v17 = sub_1A524C634();
      v18 = PXMemoryCreationLocalizedString(v17);

      v19 = sub_1A524C674();
      v21 = v20;

      v33[4] = v19;
      v33[5] = v21;
      sub_1A3D5F9DC();
      v22 = sub_1A524A464();
      v24 = v23;
      LOBYTE(v21) = v25;
      sub_1A524A264();
      v33[2] = v8;
      sub_1A524A1A4();
      sub_1A524A1F4();

      v26 = sub_1A524A3C4();
      v28 = v27;
      v33[0] = v4;
      v33[1] = a1;
      v30 = v29;
      v32 = v31;

      sub_1A3E04DF4(v22, v24, v21 & 1);

      *v6 = v26;
      *(v6 + 1) = v28;
      v6[16] = v30 & 1;
      *(v6 + 3) = v32;
      swift_storeEnumTagMultiPayload();
      sub_1A3E872A8(0, &qword_1EB12D518, MEMORY[0x1E6981148], &type metadata for GenerativeStoryEventOrDatePickerView.ToolbarItemModifier, MEMORY[0x1E697E830]);
      sub_1A3E7E0E4(&qword_1EB12D528, sub_1A3E7D9A8, sub_1A3E7E170, sub_1A3E7E23C);
      sub_1A3E7E290();
      return sub_1A5249744();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3E818CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A3E7E370();
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7E440(0, &qword_1EB12D570, sub_1A3E7E5E8, sub_1A3E7E69C);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3E7E440(0, &qword_1EB12D558, sub_1A3E7E4BC, sub_1A3E7E4E4);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - v15;
  sub_1A5249844();
  v19[8] = a1;
  sub_1A3E7E4BC(0);
  sub_1A3E7E4E4();
  sub_1A5247F24();
  sub_1A5249814();
  v19[4] = a1;
  sub_1A3E7E5E8(0);
  sub_1A3E7E69C();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A3E81C08(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A3E87C78(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A3E86E38(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  return MEMORY[0x1A5906A80](v7, sub_1A3E8741C, v9);
}

void sub_1A3E81D84(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B44();
  sub_1A3E87C78(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1A3E86E38(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  MEMORY[0x1A5906A80](v9, sub_1A3E87314, v11);
  LOBYTE(a1) = sub_1A3E832C0();
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = a1 & 1;
  sub_1A3E7E610();
  v15 = (a2 + *(v14 + 36));
  *v15 = KeyPath;
  v15[1] = sub_1A3E07024;
  v15[2] = v13;
}

uint64_t sub_1A3E81F68@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photoLibrary.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A3E81F94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return EnvironmentValues.photoLibrary.setter(v1);
}

void sub_1A3E81FC4(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v3 = v2 - 8;
  v58 = *(v2 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A5249804();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7DBBC();
  v47 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7DAE8();
  v52 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7DAC0(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7DA98(0);
  v61 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7D9F8();
  v55 = v18;
  v54 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249434();
  v20 = *(v3 + 44);
  v43 = v1;
  v21 = (v1 + v20);
  v46 = *v21;
  v45 = *(v21 + 1);
  v64 = v46;
  v65 = v45;
  sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]);
  v44 = v22;
  sub_1A524B6C4();
  v62 = v1;
  sub_1A3E7DC58();
  sub_1A3E7DD88();
  sub_1A3E7DDDC();
  sub_1A524B804();
  sub_1A52497F4();
  sub_1A3E7D754(&qword_1EB12D4F8, sub_1A3E7DBBC);
  v23 = v42;
  v24 = v47;
  v25 = v50;
  sub_1A524A9A4();
  (*(v51 + 8))(v6, v25);
  (*(v48 + 8))(v9, v24);
  sub_1A524BC74();
  sub_1A5248AD4();
  (*(v49 + 32))(v15, v23, v52);
  v26 = &v15[*(v13 + 44)];
  v27 = v71;
  *(v26 + 4) = v70;
  *(v26 + 5) = v27;
  *(v26 + 6) = v72;
  v28 = v67;
  *v26 = v66;
  *(v26 + 1) = v28;
  v29 = v69;
  *(v26 + 2) = v68;
  *(v26 + 3) = v29;
  LOBYTE(v25) = sub_1A524A054();
  v30 = v60;
  sub_1A3CC44CC(v15, v60);
  v31 = v30 + *(v61 + 36);
  *v31 = v25;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 1;
  v64 = v46;
  v65 = v45;
  sub_1A524B6A4();
  v64 = v63;
  v32 = v43;
  v33 = v56;
  sub_1A3E87C78(v43, v56, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v34 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v35 = swift_allocObject();
  sub_1A3E86E38(v33, v35 + v34, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  sub_1A3E7DE4C();
  sub_1A3E7DFCC();
  v36 = v53;
  v37 = v60;
  sub_1A524B144();

  sub_1A3E87570(v37, sub_1A3E7DA98);
  sub_1A3E87C78(v32, v33, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v38 = swift_allocObject();
  sub_1A3E86E38(v33, v38 + v34, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v39 = v59;
  (*(v54 + 32))(v59, v36, v55);
  sub_1A3E7D9D0(0);
  v41 = (v39 + *(v40 + 36));
  *v41 = sub_1A3E87658;
  v41[1] = v38;
  v41[2] = 0;
  v41[3] = 0;
}

uint64_t sub_1A3E827C0(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = &unk_1F16E4DF0;
  swift_getKeyPath();
  sub_1A3E87C78(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A3E86E38(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  sub_1A3E800D0(0, &qword_1EB12D4D8, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E69E62F8]);
  sub_1A3E7DD0C();
  sub_1A3E7DD88();
  return sub_1A524B9B4();
}

void sub_1A3E82974(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1 && (*a1 & 1) == 0)
  {
    v11 = v8;
    v12 = *(a3 + 24);

    if ((v12 & 1) == 0)
    {
      sub_1A524D254();
      v13 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v11);
    }

    sub_1A52441E4();
  }
}

uint64_t sub_1A3E82ADC(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7CD50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  sub_1A3E87388(a1 + *(v13 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A3E82D74()
{
  v30 = sub_1A524BEE4();
  v33 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A524BF64();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1A524BFC4();
  v27 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1A5248284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E86EA0(v15);
  sub_1A5248274();
  (*(v13 + 8))(v15, v12);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v16 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v17 = *(v34 + 8);
  v34 += 8;
  v17(v8, v6);
  sub_1A3E87C78(v0, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEventOrDatePickerView);
  v18 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v19 = swift_allocObject();
  sub_1A3E86E38(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  aBlock[4] = sub_1A3E87370;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_32;
  v20 = _Block_copy(aBlock);

  v21 = v28;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3E7D754(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3E7D754(&qword_1EB12B1B0, sub_1A3C38394);
  v23 = v29;
  v22 = v30;
  sub_1A524E224();
  MEMORY[0x1A5908790](v11, v21, v23, v20);
  _Block_release(v20);

  (*(v33 + 8))(v23, v22);
  (*(v31 + 8))(v21, v32);
  return (v17)(v11, v27);
}

uint64_t sub_1A3E832C0()
{
  sub_1A3E7CAB0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v11 = (v0 + *(v10 + 32));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v23) = v12;
  v24 = v13;
  sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v22 == 1 && (v14 = (v0 + *(v10 + 36)), v15 = *v14, v16 = *(v14 + 1), LOBYTE(v23) = v15, v24 = v16, sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]), sub_1A524B6A4(), (v22 & 1) == 0))
  {
    v18 = *(v0 + 24);

    if ((v18 & 1) == 0)
    {
      sub_1A524D254();
      v19 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
    }

    sub_1A52441D4();

    v17 = sub_1A5241F04();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1A3E83588(_BYTE *a1)
{
  v39 = sub_1A5241144();
  v2 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  sub_1A3E7CAB0();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5249234();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v15 = &a1[v14[8]];
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v41) = v16;
  v42 = v17;
  sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v40 != 1 || (v18 = &a1[v14[9]], v19 = *v18, v20 = *(v18 + 1), LOBYTE(v41) = v19, v42 = v20, sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]), v21 = sub_1A524B6A4(), (v40 & 1) != 0))
  {
    v22 = &a1[v14[14]];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v41) = v23;
    v42 = v24;
    v25 = sub_1A524B6A4();
    v26 = v40;
    result = (*(**a1 + 1184))(v25);
    if (v26 == 1)
    {
      if (result)
      {
        v28 = (*(*result + 888))(result);

        sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
        sub_1A524B6A4();
        sub_1A524B6A4();
        (*(*v28 + 168))(v7, v4);

        v29 = *(v2 + 8);
        v30 = v39;
        v29(v4, v39);
        return (v29)(v7, v30);
      }

      __break(1u);
    }

    else if (result)
    {
      v31 = (*(*result + 888))(result);

      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      (*(*v31 + 184))(v7);

      return (*(v2 + 8))(v7, v39);
    }

    __break(1u);
    goto LABEL_15;
  }

  result = (*(**a1 + 1184))(v21);
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v32 = (*(*result + 840))(result);

  v33 = a1[24];

  if ((v33 & 1) == 0)
  {
    sub_1A524D254();
    v34 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v36 + 8))(v13, v11);
  }

  sub_1A52441D4();

  (*(*v32 + 464))(v10);

  return (*(v37 + 8))(v10, v38);
}

uint64_t sub_1A3E83BE0()
{
  v1 = v0;
  sub_1A3E86C68(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v125 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1A5240664();
  i = *(v134 - 1);
  MEMORY[0x1EEE9AC00](v134);
  v127 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v128 = &v121 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v121 - v8;
  v137 = sub_1A5241144();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v126 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v121 - v11;
  v130 = type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource(0);
  MEMORY[0x1EEE9AC00](v130);
  v131 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E86C9C(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  sub_1A3E86CD0(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v138 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for GenerativeStoryEventSuggestion();
  v133 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v122 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v121 - v22;
  sub_1A3E7CAB0();
  v24 = v23;
  v124 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A5249234();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v32 = &v0[v31[8]];
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v142) = v33;
  v143 = v34;
  sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v132 = v31;
  if (v144 != 1 || (v35 = &v0[v31[9]], v36 = *v35, v37 = *(v35 + 1), LOBYTE(v142) = v36, v143 = v37, sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]), sub_1A524B6A4(), (v144 & 1) != 0))
  {
    v38 = &v0[v31[14]];
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v142) = *v38;
    v143 = v40;
    v41 = sub_1A524B6A4();
    if (v144)
    {
      goto LABEL_6;
    }

    v42 = *(**v0 + 1184);
    v140 = **v0 + 1184;
    v141 = v42;
    result = (v42)(v41);
    if (!result)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v44 = (*(*result + 888))(result);

    v45 = v132[10];
    sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
    v139 = v45;
    v46 = v136;
    sub_1A524B6A4();
    LOBYTE(v45) = (*(*v44 + 192))(v46);

    v47 = *(v135 + 8);
    v48 = v47(v46, v137);
    if (v45)
    {
LABEL_6:
      LOBYTE(v142) = v39;
      v143 = v40;
      v49 = sub_1A524B6A4();
      v50 = v144;
      v51 = (**v1 + 1184);
      v52 = *v51;
      result = (*v51)(v49);
      v53 = v1;
      if (v50 == 1)
      {
        v141 = v51;
        v54 = v132;
        if (result)
        {
          v55 = (*(*result + 888))(result);

          sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
          v56 = v136;
          sub_1A524B6A4();
          (*(*v55 + 208))(v56);

          v57 = *(v135 + 8);
          v58 = v137;
          v57(v56, v137);
          v140 = v54[12];
          sub_1A524B6A4();
          v59 = v126;
          sub_1A524B6A4();
          v60 = sub_1A52410E4();
          v57(v59, v58);
          v61 = (v57)(v56, v58);
          if (v60)
          {
            v62 = 1;
            v63 = v131;
            v64 = v134;
            v65 = i;
            v66 = v125;
LABEL_38:
            v107 = v132;
            (v65[7])(v66, v62, 1, v64);
            v108 = (v53 + v107[16]);
            v110 = *v108;
            v109 = v108[1];
            v142 = v110;
            v143 = v109;
            sub_1A3E7CD50(0, &qword_1EB121C18, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel, MEMORY[0x1E6981790]);
            sub_1A524B6A4();
            v111 = v144;
            sub_1A3E86D04();
            v113 = *(v112 + 48);
            v114 = v128;
            (v65[2])(v63, v128, v64);
            sub_1A3E87C78(v66, v63 + v113, sub_1A3E86C68);
            swift_storeEnumTagMultiPayload();
            (*(*v111 + 216))(v63);

            sub_1A3E86D74(v63, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
            sub_1A3E86D74(v66, sub_1A3E86C68);
            return (v65[1])(v114, v64);
          }

          result = v52(v61);
          if (result)
          {
            v105 = (*(*result + 888))(result);

            v106 = v136;
            sub_1A524B6A4();
            v66 = v125;
            (*(*v105 + 208))(v106);

            v57(v106, v137);
            v62 = 0;
            v63 = v131;
            v64 = v134;
            v65 = i;
            goto LABEL_38;
          }

          goto LABEL_50;
        }

        goto LABEL_47;
      }

      v67 = v132;
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v68 = (*(*result + 888))(result);

      v69 = MEMORY[0x1E6981790];
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      v70 = v136;
      sub_1A524B6A4();
      v71 = v127;
      (*(*v68 + 208))(v70);

      (*(v135 + 8))(v70, v137);
      v72 = (v1 + v67[16]);
      v74 = *v72;
      v73 = v72[1];
      v142 = v74;
      v143 = v73;
      v75 = v69;
    }

    else
    {
      result = (v141)(v48);
      if (!result)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return result;
      }

      v94 = (*(*result + 888))(result);

      v95 = v136;
      sub_1A524B6A4();
      v71 = v123;
      (*(*v94 + 200))(v95);

      v47(v95, v137);
      v96 = (v1 + v132[16]);
      v98 = *v96;
      v97 = v96[1];
      v142 = v98;
      v143 = v97;
      v75 = MEMORY[0x1E6981790];
    }

    sub_1A3E7CD50(0, &qword_1EB121C18, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel, v75);
    sub_1A524B6A4();
    v99 = v144;
    sub_1A3E86D04();
    v101 = *(v100 + 48);
    v102 = i;
    v103 = v131;
    v104 = v134;
    (i[2])(v131, v71, v134);
    (v102[7])(v103 + v101, 1, 1, v104);
    swift_storeEnumTagMultiPayload();
    (*(*v99 + 216))(v103);

    sub_1A3E86D74(v103, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
    return (v102[1])(v71, v104);
  }

  v76 = v0[24];

  if ((v76 & 1) == 0)
  {
    sub_1A524D254();
    v77 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v28 + 8))(v30, v27);
  }

  sub_1A52441D4();

  v78 = sub_1A5241F14();
  (*(v124 + 8))(v26, v24);
  if (v78 >> 62)
  {
    goto LABEL_41;
  }

  v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v1; v79; i = v1)
  {
    v80 = 0;
    v136 = (v78 & 0xFFFFFFFFFFFFFF8);
    v137 = v78 & 0xC000000000000001;
    v134 = (v133 + 48);
    v135 = v133 + 56;
    v81 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v137)
      {
        v82 = MEMORY[0x1A59097F0](v80, v78);
      }

      else
      {
        if (v80 >= *(v136 + 2))
        {
          goto LABEL_40;
        }

        v82 = *(v78 + 8 * v80 + 32);
      }

      v83 = v82;
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      v1 = v78;
      sub_1A52430E4();
      sub_1A3E86DD4();
      v85 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
      v86 = swift_dynamicCast();
      v87 = *(v85 - 8);
      (*(v87 + 56))(v17, v86 ^ 1u, 1, v85);
      v88 = v141;
      sub_1A3E87C78(v17, v141, sub_1A3E86C9C);
      if ((*(v87 + 48))(v88, 1, v85) == 1)
      {

        sub_1A3E86D74(v88, sub_1A3E86C9C);
        v89 = v138;
        v90 = v140;
        (*v135)(v138, 1, 1, v140);
      }

      else
      {
        sub_1A4965628(&v142);

        sub_1A3E86D74(v88, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
        sub_1A3DB7F50();
        v89 = v138;
        v90 = v140;
        v91 = swift_dynamicCast();
        (*v135)(v89, v91 ^ 1u, 1, v90);
      }

      sub_1A3E86D74(v17, sub_1A3E86C9C);
      if ((*v134)(v89, 1, v90) == 1)
      {
        sub_1A3E86D74(v89, sub_1A3E86CD0);
      }

      else
      {
        sub_1A3E86E38(v89, v139, type metadata accessor for GenerativeStoryEventSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1A3E870AC(0, v81[2] + 1, 1, v81);
        }

        v93 = v81[2];
        v92 = v81[3];
        if (v93 >= v92 >> 1)
        {
          v81 = sub_1A3E870AC(v92 > 1, v93 + 1, 1, v81);
        }

        v81[2] = v93 + 1;
        sub_1A3E86E38(v139, v81 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v93, type metadata accessor for GenerativeStoryEventSuggestion);
      }

      v78 = v1;
      ++v80;
      if (v84 == v79)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v79 = sub_1A524E2B4();
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_43:

  if (v81[2])
  {
    sub_1A3E87C78(v81 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v122, type metadata accessor for GenerativeStoryEventSuggestion);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v115 = MEMORY[0x1E69E7CD0];
  v116 = (i + v132[16]);
  v118 = *v116;
  v117 = v116[1];
  v142 = v118;
  v143 = v117;
  sub_1A3E7CD50(0, &qword_1EB121C18, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v119 = v144;
  v120 = v131;
  *v131 = v115;
  swift_storeEnumTagMultiPayload();
  (*(*v119 + 216))(v120);

  return sub_1A3E86D74(v120, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel.DataSource);
}

uint64_t sub_1A3E84F78()
{
  v1 = v0;
  sub_1A3E86C68(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v83 - v6;
  v8 = sub_1A5240664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = (v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v92 = v83 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = v83 - v14;
  v95 = sub_1A5241144();
  v15 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v88 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v83 - v18;
  v20 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v21 = v0 + v20[8];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v97) = v22;
  v98 = v23;
  sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v96 == 1)
  {
    v24 = v0 + v20[9];
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v97) = v25;
    v98 = v26;
    sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    if ((v96 & 1) == 0)
    {
      v62 = (v0 + v20[15]);
      v64 = *v62;
      v63 = v62[1];
      v97 = v64;
      v98 = v63;
      sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, MEMORY[0x1E6981790]);
      v65 = sub_1A524B6A4();
      (*(*v96 + 280))(v65);
    }
  }

  v93 = v15;
  v94 = v20;
  v85 = v4;
  v87 = v7;
  v90 = v9;
  v91 = v8;
  v27 = v0 + v20[14];
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v97) = *v27;
  v98 = v29;
  v30 = sub_1A524B6A4();
  if ((v96 & 1) == 0)
  {
    v31 = *(**v0 + 1184);
    v83[2] = **v0 + 1184;
    v84 = v31;
    result = v31(v30);
    if (!result)
    {
      __break(1u);
      goto LABEL_21;
    }

    v33 = (*(*result + 888))(result);

    v34 = v94[10];
    sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
    v83[0] = v35;
    v83[1] = v34;
    sub_1A524B6A4();
    LOBYTE(v34) = (*(*v33 + 192))(v19);

    v36 = *(v93 + 8);
    v37 = v36(v19, v95);
    if ((v34 & 1) == 0)
    {
      result = v84(v37);
      if (result)
      {
        v66 = (*(*result + 888))(result);

        sub_1A524B6A4();
        v67 = v86;
        (*(*v66 + 200))(v19);

        v36(v19, v95);
        v68 = (v1 + v94[15]);
        v70 = *v68;
        v69 = v68[1];
        v97 = v70;
        v98 = v69;
        sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, MEMORY[0x1E6981790]);
        sub_1A524B6A4();
        v71 = v96;
        v73 = v90;
        v72 = v91;
        v74 = v87;
        (*(v90 + 56))(v87, 1, 1, v91);
        (*(*v71 + 272))(v67, v74);

        sub_1A3E86D74(v74, sub_1A3E86C68);
        return (*(v73 + 8))(v67, v72);
      }

      goto LABEL_23;
    }
  }

  LOBYTE(v97) = v28;
  v98 = v29;
  v38 = sub_1A524B6A4();
  v39 = v96;
  v40 = (**v1 + 1184);
  v41 = *v40;
  result = (*v40)(v38);
  if (v39 != 1)
  {
    if (result)
    {
      v51 = (*(*result + 888))(result);

      v52 = v94;
      v53 = MEMORY[0x1E6981790];
      sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v54 = v89;
      (*(*v51 + 208))(v19);

      (*(v93 + 8))(v19, v95);
      v55 = (v1 + v52[15]);
      v57 = *v55;
      v56 = v55[1];
      v97 = v57;
      v98 = v56;
      sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, v53);
      sub_1A524B6A4();
      v58 = v96;
      v60 = v90;
      v59 = v91;
      v61 = v87;
      (*(v90 + 56))(v87, 1, 1, v91);
      (*(*v58 + 272))(v54, v61);

      sub_1A3E86D74(v61, sub_1A3E86C68);
      return (*(v60 + 8))(v54, v59);
    }

    goto LABEL_22;
  }

  v89 = v40;
  if (!result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = (*(*result + 888))(result);

  v43 = v94;
  sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*(*v42 + 208))(v19);

  v44 = *(v93 + 8);
  v45 = v95;
  v44(v19, v95);
  v93 = v43[12];
  sub_1A524B6A4();
  v46 = v88;
  sub_1A524B6A4();
  v47 = sub_1A52410E4();
  v44(v46, v45);
  v48 = (v44)(v19, v45);
  if ((v47 & 1) == 0)
  {
    result = v41(v48);
    if (result)
    {
      v75 = (*(*result + 888))(result);

      sub_1A524B6A4();
      v50 = v85;
      (*(*v75 + 208))(v19);

      v44(v19, v95);
      v49 = 0;
      goto LABEL_18;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v49 = 1;
  v50 = v85;
LABEL_18:
  v76 = v94;
  v78 = v90;
  v77 = v91;
  (*(v90 + 56))(v50, v49, 1, v91);
  v79 = (v1 + v76[15]);
  v81 = *v79;
  v80 = v79[1];
  v97 = v81;
  v98 = v80;
  sub_1A3E7CD50(0, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v82 = v92;
  (*(*v96 + 272))(v92, v50);

  sub_1A3E86D74(v50, sub_1A3E86C68);
  return (*(v78 + 8))(v82, v77);
}

uint64_t sub_1A3E85B54(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  if ((v4 & *(result + 56)) != 0)
  {
LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v5 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v5 >= ((v3 + 63) >> 6))
    {

      return a2;
    }

    ++v2;
    if (*(result + 56 + 8 * v5))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E85C58@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a3;
  sub_1A3E86894(0, &qword_1EB12D5F8);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  sub_1A3E86804(0, &qword_1EB12D608, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  sub_1A3E86894(0, &qword_1EB12D610);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;

  if (a2)
  {
    sub_1A4720F2C(v16, v27);
    sub_1A3E86C08(0, &qword_1EB12D600, sub_1A3E7D84C);
    (*(*(v17 - 8) + 16))(v15, a1, v17);
    v18 = &v15[*(v13 + 36)];
    v19 = v27[1];
    *v18 = v27[0];
    *(v18 + 1) = v19;
    v18[32] = v28;
    v20 = &qword_1EB12D610;
    sub_1A3E86ABC(v15, v11, &qword_1EB12D610);
    swift_storeEnumTagMultiPayload();
    sub_1A3E869BC(&qword_1EB12D618, &qword_1EB12D610, &type metadata for GenerativeStoryEventDisambiguationShowSelectedAssetsButton, sub_1A3E86968);
    sub_1A3E869BC(&qword_1EB12D630, &qword_1EB12D5F8, &type metadata for GenerativeStoryDisambiguationSelectedAssetsCountView, sub_1A3E86A68);
    sub_1A5249744();
    v21 = v15;
  }

  else
  {
    PXDisplayCollectionDetailedCountsMake(v16);
    v23 = v22;
    sub_1A3E86C08(0, &qword_1EB12D600, sub_1A3E7D84C);
    (*(*(v24 - 8) + 16))(v8, a1, v24);
    *&v8[*(v6 + 36)] = v23;
    v20 = &qword_1EB12D5F8;
    sub_1A3E86ABC(v8, v11, &qword_1EB12D5F8);
    swift_storeEnumTagMultiPayload();
    sub_1A3E869BC(&qword_1EB12D618, &qword_1EB12D610, &type metadata for GenerativeStoryEventDisambiguationShowSelectedAssetsButton, sub_1A3E86968);
    sub_1A3E869BC(&qword_1EB12D630, &qword_1EB12D5F8, &type metadata for GenerativeStoryDisambiguationSelectedAssetsCountView, sub_1A3E86A68);
    sub_1A5249744();
    v21 = v8;
  }

  return sub_1A3E86B28(v21, v20);
}

void sub_1A3E86048(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A0C4();
  sub_1A5247BC4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1A3E86C08(0, &qword_1EB12D640, sub_1A3E7E23C);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1A3E86B84();
  v15 = a2 + *(v14 + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
}

uint64_t sub_1A3E86124()
{
  sub_1A524A1A4();
  sub_1A3E86C08(0, &qword_1EB12D650, sub_1A3E7E594);
  sub_1A3E86918(&qword_1EB12D658, &qword_1EB12D650, sub_1A3E7E594);
  return sub_1A524A8F4();
}

void sub_1A3E86200()
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A3E7CD50(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3E7CD50(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3E800D0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A3E800D0(319, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A3E7CD50(319, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A3E7CD50(319, &qword_1EB121C20, type metadata accessor for GenerativeStoryDisambiguationSelectedAssetsCountViewModel, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A3E7CD50(319, &qword_1EB121C18, type metadata accessor for GenerativeStoryEventDisambiguationSelectedAssetsViewModel, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A3E86474()
{
  result = qword_1EB12D5E8;
  if (!qword_1EB12D5E8)
  {
    sub_1A3E86714(255, &qword_1EB12D5F0, sub_1A3E7F074, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A3E7EEA0();
    sub_1A3E7CAB0();
    sub_1A3E7ED08();
    sub_1A3E7EBA4();
    sub_1A3E7EA6C();
    sub_1A5241144();
    sub_1A3E7E968();
    sub_1A3E7CB44();
    sub_1A3E7D754(&qword_1EB12D5A8, sub_1A3E7CB44);
    sub_1A3E7D754(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7DFCC();
    swift_getOpaqueTypeConformance2();
    sub_1A3E7D754(&qword_1EB12D5D8, sub_1A3E7CAB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D5E8);
  }

  return result;
}

void sub_1A3E86714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3E86804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E86894(255, &qword_1EB12D610);
    v7 = v6;
    sub_1A3E86894(255, &qword_1EB12D5F8);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3E86894(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3E86C08(255, &qword_1EB12D600, sub_1A3E7D84C);
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A3E86918(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3E86C08(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E86968()
{
  result = qword_1EB12D628;
  if (!qword_1EB12D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D628);
  }

  return result;
}

uint64_t sub_1A3E869BC(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3E86894(255, a2);
    sub_1A3E86918(&qword_1EB12D620, &qword_1EB12D600, sub_1A3E7D84C);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E86A68()
{
  result = qword_1EB12D638;
  if (!qword_1EB12D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D638);
  }

  return result;
}

uint64_t sub_1A3E86ABC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1A3E86894(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E86B28(uint64_t a1, unint64_t *a2)
{
  sub_1A3E86894(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3E86B84()
{
  if (!qword_1EB12D648)
  {
    sub_1A3E86C08(255, &qword_1EB12D640, sub_1A3E7E23C);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D648);
    }
  }
}

void sub_1A3E86C08(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52499C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3E86D04()
{
  if (!qword_1EB126088)
  {
    sub_1A5240664();
    sub_1A3E86C68(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126088);
    }
  }
}

uint64_t sub_1A3E86D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3E86DD4()
{
  result = qword_1EB124F40;
  if (!qword_1EB124F40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB124F40);
  }

  return result;
}

uint64_t sub_1A3E86E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E86EA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E7CD50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3E87388(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

size_t sub_1A3E870AC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3E7CD50(0, &qword_1EB12D670, type metadata accessor for GenerativeStoryEventSuggestion, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for GenerativeStoryEventSuggestion() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for GenerativeStoryEventSuggestion() - 8);
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

void sub_1A3E872A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A3E87388(uint64_t a1, uint64_t a2)
{
  sub_1A3E7CD50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3E87434(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A3E874D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3E7D9A8(255);
    v7 = v6;
    sub_1A3E872A8(255, &qword_1EB12D518, MEMORY[0x1E6981148], &type metadata for GenerativeStoryEventOrDatePickerView.ToolbarItemModifier, MEMORY[0x1E697E830]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3E87570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3E875D8(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A3E82974(a1, a2, v6);
}

uint64_t sub_1A3E87658()
{
  type metadata accessor for GenerativeStoryEventOrDatePickerView();
  sub_1A3E800D0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A3E87714@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v23 = *a1;
  v3 = sub_1A524C634();
  v4 = PXMemoryCreationLocalizedString(v3);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v5 = sub_1A524A464();
  v7 = v6;
  v9 = v8;
  sub_1A524A134();
  v10 = sub_1A524A3C4();
  v12 = v11;
  v14 = v13;

  sub_1A3E04DF4(v5, v7, v9 & 1);

  sub_1A3E800D0(0, &qword_1EB121C28, &type metadata for GenerativeStoryEventOrDatePickerView.Tab, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v23 == v25)
  {
    sub_1A524A164();
  }

  else
  {
    sub_1A524A194();
  }

  v15 = sub_1A524A344();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1A3E04DF4(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  sub_1A3E7CD50(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[10];
  v6 = sub_1A5241144();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_1A3E7CD50(0, &unk_1EB121C90, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);

  v7(v2 + v1[11], v6);

  v7(v2 + v1[12], v6);

  return swift_deallocObject();
}

uint64_t sub_1A3E87C08()
{
  v1 = *(type metadata accessor for GenerativeStoryEventOrDatePickerView() - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8) == 1)
  {
    return sub_1A3E83BE0();
  }

  else
  {
    return sub_1A3E84F78();
  }
}

uint64_t sub_1A3E87C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3E87CE0()
{
  result = qword_1EB12D698;
  if (!qword_1EB12D698)
  {
    sub_1A3E86804(255, &qword_1EB12D6A0, MEMORY[0x1E697F960]);
    sub_1A3E869BC(&qword_1EB12D618, &qword_1EB12D610, &type metadata for GenerativeStoryEventDisambiguationShowSelectedAssetsButton, sub_1A3E86968);
    sub_1A3E869BC(&qword_1EB12D630, &qword_1EB12D5F8, &type metadata for GenerativeStoryDisambiguationSelectedAssetsCountView, sub_1A3E86A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D698);
  }

  return result;
}

unint64_t sub_1A3E87DD4()
{
  result = qword_1EB12D6A8;
  if (!qword_1EB12D6A8)
  {
    sub_1A3E86B84();
    sub_1A3E86918(&qword_1EB12D6B0, &qword_1EB12D640, sub_1A3E7E23C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D6A8);
  }

  return result;
}

unint64_t sub_1A3E87E80()
{
  result = qword_1EB12D6B8;
  if (!qword_1EB12D6B8)
  {
    sub_1A3E7D3F8(255, &qword_1EB12D6C0, sub_1A3E87FA8);
    sub_1A3E86C08(255, &qword_1EB12D650, sub_1A3E7E594);
    sub_1A3E86918(&qword_1EB12D658, &qword_1EB12D650, sub_1A3E7E594);
    swift_getOpaqueTypeConformance2();
    sub_1A3E7E23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D6B8);
  }

  return result;
}

void sub_1A3E87FA8()
{
  if (!qword_1EB12D6C8)
  {
    sub_1A3E86C08(255, &qword_1EB12D650, sub_1A3E7E594);
    sub_1A3E86918(&qword_1EB12D658, &qword_1EB12D650, sub_1A3E7E594);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12D6C8);
    }
  }
}

uint64_t sub_1A3E8809C@<X0>(uint64_t a1@<X8>)
{
  sub_1A46E9604(&v4);
  v2 = v5;
  result = sub_1A3E919D8(&v4, &unk_1EB1407C0, sub_1A3E8814C, MEMORY[0x1E69E6720], sub_1A3E90AC8);
  if (v2)
  {
    result = sub_1A46E9604(&v4);
    if (v5)
    {
      return sub_1A3C34460(&v4, a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A3E8814C()
{
  result = qword_1EB12D6D0;
  if (!qword_1EB12D6D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12D6D0);
  }

  return result;
}

uint64_t sub_1A3E881B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E88280;

  return sub_1A3E8F7E8(a1, a2);
}

uint64_t sub_1A3E88280(uint64_t a1)
{
  v5 = *v1;

  swift_unknownObjectRelease();
  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1A3E88398(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E91FB8;

  return sub_1A3E8F7E8(a1, a2);
}

id sub_1A3E88454(void *a1, void *a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v14 = *(v4 - 8);
  [a2 indexPath];
  v5 = v17.f64[0];
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v17 = vnegq_f64(v6);
  v15 = [a1 assetsInSectionIndexPath_];
  result = [v15 count];
  if (__OFSUB__(*&v5, 5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = (*&v5 - 5) & ~((*&v5 - 5) >> 63);
  v9 = (v8 + 10);
  if (__OFADD__(v8, 10))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= result)
  {
    v9 = result;
  }

  v13 = v9;
  v10 = v9 - v8;
  if (v9 < v8)
  {
    goto LABEL_15;
  }

  if (v9 == v8)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1A3E8F5CC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      OneUpSharePlayOverridableAsset.init(asset:)([v15 objectAtIndexedSubscript_], &v19);
      sub_1A3E8809C(&v16);
      v11 = v17.f64[1];
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, *&v17.f64[1]);
      (*(v12 + 56))(&v19, COERCE_FLOAT64_T(*&v11), v12);
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v16 = v19;
      swift_unknownObjectRetain();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A3E88754()
{
  v1 = *v0;
  v22 = *(*v0 + 872);
  v21 = *(v1 + 864);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v20 - v5;
  sub_1A3E90AC8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v6, v0 + *(*v0 + 144), AssociatedTypeWitness);
  sub_1A524CC54();

  v12 = sub_1A524CC44();
  v13 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 2) = v12;
  *(v15 + 3) = v16;
  v17 = v22;
  *(v15 + 4) = v21;
  *(v15 + 5) = v17;
  (*(v3 + 32))(&v15[v13], v6, AssociatedTypeWitness);
  *&v15[v14] = v11;

  v18 = sub_1A3D4D930(0, 0, v9, &unk_1A5303518, v15);
  sub_1A3EE1368(v18, MEMORY[0x1E69E7CA8] + 8);

  swift_beginAccess();
  sub_1A3E90AC8(0, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
  sub_1A3E91220();
  sub_1A5247874();
  swift_endAccess();
}

void sub_1A3E88ABC()
{
  v1 = v0;
  v2 = *v0;
  v13[15] = v2;
  sub_1A3E90AC8(0, &qword_1EB12D708, MEMORY[0x1E6969FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v13[8] = v13 - v4;
  sub_1A3E90BD4();
  v13[10] = *(v5 - 8);
  v13[11] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v13[9] = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E90DBC();
  v13[7] = v7;
  v13[6] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v13[5] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E90EBC();
  v13[13] = *(v9 - 8);
  v13[14] = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1A3E90FA8();
  v13[18] = v10;
  v13[12] = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13[17] = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 904);
  swift_beginAccess();
  if (*(v1 + v12) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E898C0()
{
  v1 = v0;
  sub_1A3E90AC8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-1] - v3;
  sub_1A3E8809C(v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = (*(v6 + 40))(v5, v6);
  if (v7)
  {
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v21);
    sub_1A524D264();
    v9 = *sub_1A486DB9C();
    sub_1A5246DF4();

    OneUpSharePlayOverridableAsset.init(asset:)([v8 asset], v20);
    sub_1A3E8809C(v21);
    v10 = v22;
    v11 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v11 + 56))(v20, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v12 = sub_1A524CCB4();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    sub_1A524CC54();

    v13 = sub_1A524CC44();
    v14 = v20[0];
    v15 = v20[1];
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v13;
    v16[3] = v17;
    v16[4] = v1;
    v16[5] = v14;
    v16[6] = v15;
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  sub_1A524D264();
  v18 = *sub_1A486DB9C();
  sub_1A5246DF4();
}

uint64_t sub_1A3E89BA0()
{
  v1 = v0;
  sub_1A46EA098();
  sub_1A43AD99C();
  v2 = *(*v0 + 896);
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + v2) = MEMORY[0x1E69E7CC0];

  v4 = *(*v1 + 904);
  swift_beginAccess();
  *(v1 + v4) = v3;
}

uint64_t sub_1A3E89C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v8 = sub_1A5241C04();
  v7[19] = v8;
  v7[20] = *(v8 - 8);
  v7[21] = swift_task_alloc();
  v9 = sub_1A52411C4();
  v7[22] = v9;
  v7[23] = *(v9 - 8);
  v7[24] = swift_task_alloc();
  v10 = sub_1A5241BE4();
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  sub_1A3E90AC8(0, &qword_1EB12D830, sub_1A3E91D78, MEMORY[0x1E69E6720]);
  v7[29] = swift_task_alloc();
  sub_1A3E90AC8(0, &qword_1EB12D850, sub_1A3E91D78, MEMORY[0x1E69E8698]);
  v7[30] = v11;
  v7[31] = *(v11 - 8);
  v7[32] = swift_task_alloc();
  sub_1A3E90AC8(0, &qword_1EB12D858, sub_1A3E91D78, MEMORY[0x1E69E8688]);
  v7[33] = v12;
  v7[34] = *(v12 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = sub_1A524CC54();
  v7[37] = sub_1A524CC44();
  v14 = sub_1A524CBC4();
  v7[38] = v14;
  v7[39] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1A3E89F78, v14, v13);
}

uint64_t sub_1A3E89F78()
{
  v1 = v0[32];
  v16 = v0[31];
  v15 = v0[30];
  sub_1A3E91E0C(0, &qword_1EB12D840, sub_1A3E91E6C);
  v3 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 56);
  v6 = swift_checkMetadataState();
  v7 = sub_1A3E91EC0();
  v8 = sub_1A3E91F3C();
  v5(v3, v3, v7, v8, v6, AssociatedConformanceWitness);
  sub_1A524CD24();
  (*(v16 + 8))(v1, v15);
  swift_beginAccess();
  v9 = sub_1A524CC44();
  v0[40] = v9;
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_1A3E8A17C;
  v11 = v0[33];
  v12 = v0[29];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v9, v13, v11);
}

uint64_t sub_1A3E8A17C()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8A2C0, v3, v2);
}

uint64_t sub_1A3E8A2C0()
{
  v39 = v0;
  v1 = v0[29];
  sub_1A3E91D78();
  v3 = v2;
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v9 = v0[26];

    (*(v9 + 32))(v6, v1 + *(v3 + 48), v8);
    v10 = sub_1A524D264();
    v11 = *sub_1A486DB9C();
    (*(v9 + 16))(v7, v6, v8);
    v12 = os_log_type_enabled(v11, v10);
    v13 = v0[26];
    v14 = v0[27];
    v15 = v0[25];
    if (v12)
    {
      v17 = v0[23];
      v16 = v0[24];
      v18 = v0[22];
      v11;
      v19 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v19 = 136446210;
      sub_1A5241BD4();
      sub_1A3E90A80(&qword_1EB126020, MEMORY[0x1E69695A8]);
      sub_1A524EA44();
      (*(v17 + 8))(v16, v18);
      (*(v13 + 8))(v14, v15);
      sub_1A3C2EF94();
    }

    v20 = *(v13 + 8);
    v20(v0[27], v0[25]);
    if (swift_weakLoadStrong())
    {
      sub_1A5241BF4();
      sub_1A3E8809C((v0 + 2));
      v21 = v0[5];
      v22 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v21);
      v23 = (*(v22 + 40))(v21, v22);
      if (v23)
      {
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_0((v0 + 2));
        sub_1A3E8809C((v0 + 7));
        v25 = v0[10];
        v26 = v0[11];
        __swift_project_boxed_opaque_existential_1(v0 + 7, v25);
        v27 = (*(v26 + 24))(v25, v26);
        __swift_destroy_boxed_opaque_existential_0((v0 + 7));
        v37 = 0;
        sub_1A3E8B130(v27, v24, &v37, 0);
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
      sub_1A524D244();
      v28 = *sub_1A486DB9C();
      sub_1A5246DF4();

      v30 = v0[20];
      v29 = v0[21];
      v31 = v0[19];

      (*(v30 + 8))(v29, v31);
    }

    v20(v0[28], v0[25]);
    v32 = sub_1A524CC44();
    v0[40] = v32;
    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v33[1] = sub_1A3E8A17C;
    v34 = v0[33];
    v35 = v0[29];
    v36 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v35, v32, v36, v34);
  }
}

void sub_1A3E8A7F0(void *a1, char *a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14[6] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241C04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1A3E8809C(&v15);
  v11 = v16;
  v12 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  v13 = (*(v12 + 24))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(&v15);
  LOBYTE(v15) = v10;
  (*(v7 + 104))(v9, *MEMORY[0x1E696B350], v6);
  sub_1A3E8B130(v13, a1, &v15, 1);
}

void sub_1A3E8ACAC(void *a1, unsigned __int8 *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v15 - v6;
  v8 = *a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v16 = a1;
    HIDWORD(v15) = v8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v9 = *(swift_getAssociatedConformanceWitness() + 72);
    swift_unknownObjectRetain();
    swift_checkMetadataState();
    v9();
    swift_unknownObjectRelease();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    if (v11)
    {
    }

    else
    {
      if (v16)
      {
        v12 = v16;
        sub_1A524D264();
        v13 = *sub_1A486DB9C();
        sub_1A5246DF4();

        v17 = BYTE4(v15);
        sub_1A3E8A7F0(v12, &v17);
      }

      sub_1A524D244();
      v14 = *sub_1A486DB9C();
      sub_1A5246DF4();
    }
  }
}

uint64_t sub_1A3E8AFC4(char a1)
{
  v2 = v1;
  sub_1A3E90AC8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-v5 - 2];
  v14[0] = a1 ^ 1;
  OneUpSharePlayNavigationGesturePayload.init(gesture:)(v14);
  v7 = v14[1];
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = v7;
  sub_1A3D4D930(0, 0, v6, &unk_1A53034E8, v10);
}

void sub_1A3E8B130(void *a1, void *a2, unsigned __int8 *a3, char a4)
{
  v5 = v4;
  v29 = *v5;
  v30 = sub_1A5241C04();
  v26 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v10;
  sub_1A3E90AC8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v31 = v20 - v12;
  v13 = type metadata accessor for OneUpSharePlayNavigateMessagePayload();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v25 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v24 = v20 - v16;
  v17 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20[1] = *a3;
  v18 = sub_1A3E88454(a1, a2);
  if (a4)
  {
    v19 = *(v5 + *(*v5 + 888));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  [a1 identifier];
  v21 = 0;
  v22 = v18;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E8B624@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = [objc_msgSend(a1 asset];
  result = swift_unknownObjectRelease();
  if (v14)
  {
    v16 = sub_1A524C674();
    v18 = v17;

    v19 = *(v4 + *(*v4 + 888) + 16);
    if (!v19)
    {
      sub_1A524D244();
      v25 = *sub_1A486DB9C();
      sub_1A5246DF4();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v20 = v19;
    v21 = [objc_msgSend(v20 asset)];
    result = swift_unknownObjectRelease();
    if (v21)
    {
      v22 = sub_1A524C674();
      v24 = v23;

      v27 = v13;
      sub_1A3E91A98(a3, v12, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
      return sub_1A42BCE10(v22, v24, v16, v18, &v27, v12, a4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E8B830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1A524CC54();
  v6[3] = sub_1A524CC44();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1A3E8B8F4;

  return sub_1A3E8BA30(a5, a6);
}

uint64_t sub_1A3E8B8F4()
{

  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3E91FC4, v1, v0);
}

uint64_t sub_1A3E8BA30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v3[7] = type metadata accessor for OneUpSharePlayNavigateMessagePayload();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_1A524CC54();
  v3[13] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[14] = v5;
  v3[15] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8BB54, v5, v4);
}

uint64_t sub_1A3E8BB54()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[3];
  v6 = sub_1A524D264();
  v7 = sub_1A486DB9C();
  v0[16] = v7;
  v8 = *v7;
  sub_1A3E91A98(v5, v1, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A98(v5, v2, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A98(v5, v3, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A98(v5, v4, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  v9 = os_log_type_enabled(v8, v6);
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  if (v9)
  {
    v13 = v0[7];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446978;
    v15 = sub_1A3E90A80(&qword_1EB12D828, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
    sub_1A3DC2858(v13, v15);
    sub_1A3E91A38(v10, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
    sub_1A3C2EF94();
  }

  sub_1A3E91A38(v0[9], type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A38(v12, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A38(v11, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  sub_1A3E91A38(v10, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  v16 = v0[8];
  sub_1A3E91A98(v0[3], v16, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  v17 = sub_1A3E91B00();
  v18 = sub_1A3DC0E14(v16, &type metadata for OneUpSharePlayNavigateMessageSchema, v17);
  v0[17] = v18;
  v0[2] = v18;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 48);
  v21 = swift_checkMetadataState();
  v29 = (v20 + *v20);
  v22 = swift_task_alloc();
  v0[18] = v22;
  sub_1A3E91E0C(0, &qword_1EB12D810, sub_1A3E91B00);
  v24 = v23;
  v25 = sub_1A3E91B54();
  v26 = sub_1A3E91BD0();
  *v22 = v0;
  v22[1] = sub_1A3E8C1E0;
  v27 = v0[4];

  return (v29)(v0 + 2, v27, v24, v25, v26, v21, AssociatedConformanceWitness);
}

uint64_t sub_1A3E8C1E0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A3E8C394;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A3E8C2FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3E8C2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3E8C394()
{

  v1 = v0[19];
  v2 = v0[16];
  v3 = sub_1A524D244();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "Error sending navigation message: %@", v6, 0xCu);
    sub_1A3E919D8(v7, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A3E8C540(uint64_t a1)
{
  v2 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A3D3E490(0, v6, 0);
    v7 = v15;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1A3E91A98(v8, v5, type metadata accessor for OneUpSharePlayAssetMetadata);
      swift_dynamicCast();
      v15 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A3D3E490((v10 > 1), v11 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v11 + 1;
      sub_1A3C57128(&v14, (v7 + 32 * v11 + 32));
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_1A3E8C6DC(uint64_t a1, uint64_t a2)
{
  sub_1A3E90AC8(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v16 - v11);
  sub_1A3C2F0BC(a1, v17);
  swift_dynamicCast();
  sub_1A3C2F0BC(a2, v17);
  swift_dynamicCast();
  v13 = v12[1];
  v17[0] = *v12;
  v17[1] = v13;
  v14 = v9[1];
  v16[0] = *v9;
  v16[1] = v14;
  v15 = sub_1A5241284();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E8C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_1A524CC54();
  *(v5 + 24) = sub_1A524CC44();
  *(v5 + 40) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_1A3E5387C;

  return sub_1A3E8CA30((v5 + 40));
}

uint64_t sub_1A3E8CA30(_BYTE *a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = *v1;
  *(v2 + 99) = *a1;
  sub_1A524CC54();
  *(v2 + 40) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8CAF8, v4, v3);
}

uint64_t sub_1A3E8CAF8()
{
  v1 = sub_1A524D264();
  v2 = sub_1A486DB9C();
  *(v0 + 64) = v2;
  v3 = *v2;
  if (os_log_type_enabled(*v2, v1))
  {
    v4 = *(v0 + 99);
    v5 = v3;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136446466;
    *(v0 + 97) = v4;
    v7 = sub_1A3E91634();
    sub_1A3DC2858(&type metadata for OneUpSharePlayNavigationGesturePayload, v7);
    sub_1A3C2EF94();
  }

  *(v0 + 96) = *(v0 + 99);
  v8 = sub_1A3E914E8();
  v9 = sub_1A3DC0E14(v0 + 96, &type metadata for OneUpSharePlayNavigationGestureSchema, v8);
  *(v0 + 72) = v9;
  *(v0 + 16) = v9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 40);
  v12 = swift_checkMetadataState();
  v19 = (v11 + *v11);
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  sub_1A3E91E0C(0, &qword_1EB12D7B8, sub_1A3E914E8);
  v15 = v14;
  v16 = sub_1A3E9153C();
  v17 = sub_1A3E915B8();
  *v13 = v0;
  v13[1] = sub_1A3E8CFA0;

  return v19(v0 + 16, v15, v16, v17, v12, AssociatedConformanceWitness);
}

uint64_t sub_1A3E8CFA0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A3E8D11C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A3E8D0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3E8D0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3E8D11C()
{

  v1 = v0[11];
  v2 = v0[8];
  v3 = sub_1A524D244();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "Error sending navigation gesture message: %@", v6, 0xCu);
    sub_1A3E919D8(v7, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A3E8D298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  sub_1A524CC54();
  v6[7] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D334, v8, v7);
}

void sub_1A3E8D334()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  swift_unknownObjectRetain();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E8D40C()
{
  v1 = *v0;

  swift_unknownObjectRelease();

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8D568, v3, v2);
}

uint64_t sub_1A3E8D568()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall OneUpSharePlaySessionHostCoordinator.pauseSession()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v12[-v2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 72);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = swift_getAssociatedConformanceWitness();
  v8 = (*(v7 + 120))(AssociatedTypeWitness, v7);
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  if (v8)
  {
    sub_1A524D244();
    v9 = *sub_1A486DB9C();
    sub_1A5246DF4();
  }

  else
  {
    sub_1A524D264();
    v10 = *sub_1A486DB9C();
    sub_1A5246DF4();

    v11 = (*(AssociatedConformanceWitness + 88))(v12, v6, AssociatedConformanceWitness);
    (*(v7 + 128))(1, AssociatedTypeWitness, v7);
    v11(v12, 0);
  }
}

Swift::Void __swiftcall OneUpSharePlaySessionHostCoordinator.resumeExistingSession()()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v12[-v2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 72);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = swift_getAssociatedConformanceWitness();
  v8 = (*(v7 + 120))(AssociatedTypeWitness, v7);
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  if (v8)
  {
    sub_1A524D264();
    v9 = *sub_1A486DB9C();
    sub_1A5246DF4();

    v10 = (*(AssociatedConformanceWitness + 88))(v12, v6, AssociatedConformanceWitness);
    (*(v7 + 128))(0, AssociatedTypeWitness, v7);
    v10(v12, 0);
  }

  else
  {
    sub_1A524D244();
    v11 = *sub_1A486DB9C();
    sub_1A5246DF4();
  }
}

uint64_t OneUpSharePlaySessionHostCoordinator.replacePausedSession(newOneUpAdapter:)(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = *v1;
  type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v2[21] = swift_task_alloc();
  type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
  v2[22] = swift_task_alloc();
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = *(v3 + 872);
  v2[26] = *(v3 + 864);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[27] = AssociatedTypeWitness;
  v2[28] = *(AssociatedTypeWitness - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  sub_1A524CC54();
  v2[31] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v2[32] = v6;
  v2[33] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8DDD4, v6, v5);
}

uint64_t sub_1A3E8DDD4()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 72);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = swift_getAssociatedConformanceWitness();
  v8 = (*(v7 + 120))(v2, v7);
  v9 = *(v3 + 8);
  v0[34] = v9;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  if (v8)
  {
    v10 = v0[19];
    sub_1A524D264();
    v11 = sub_1A486DB9C();
    v12 = *v11;
    sub_1A5246DF4();

    v13 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v13);
    v15 = (*(v14 + 40))(v13, v14);
    v0[36] = v15;
    if (v15)
    {
      sub_1A3C341C8(v0[19], (v0 + 2));
      sub_1A46E96BC((v0 + 2));
      sub_1A3E88ABC();
    }

    sub_1A524D244();
    v17 = *v11;
    sub_1A5246DF4();

    (*(AssociatedConformanceWitness + 176))(v6, AssociatedConformanceWitness);
  }

  else
  {

    sub_1A524D244();
    v16 = *sub_1A486DB9C();
    sub_1A5246DF4();
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1A3E8E4F0(char a1)
{
  v2 = *v1;
  *(*v1 + 312) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8E618, v4, v3);
}

uint64_t sub_1A3E8E618()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);

  swift_unknownObjectRelease();

  v3(v4, v5);
  sub_1A3E91A38(v7, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  sub_1A3E91A38(v6, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  v8 = *(v0 + 312);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1A3E8E740(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v2[6] = type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8E854, v4, v3);
}

uint64_t sub_1A3E8E854()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[14] = v6;
  v7 = *v6;
  sub_1A3E91A98(v4, v1, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  sub_1A3E91A98(v4, v2, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  sub_1A3E91A98(v4, v3, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  v8 = os_log_type_enabled(v7, v5);
  v10 = v0[9];
  v9 = v0[10];
  if (v8)
  {
    v11 = v0[6];
    v7;
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446722;
    v13 = sub_1A3E90A80(&qword_1EB12D6F8, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
    sub_1A3DC2858(v11, v13);
    sub_1A3E91A38(v9, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
    sub_1A3C2EF94();
  }

  sub_1A3E91A38(v0[8], type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  sub_1A3E91A38(v10, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  sub_1A3E91A38(v9, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  v14 = v0[7];
  sub_1A3E91A98(v0[3], v14, type metadata accessor for OneUpSharePlayReplaceDataSourceMessagePayload);
  v15 = sub_1A3E90934();
  v16 = sub_1A3DC0E14(v14, &type metadata for OneUpSharePlayReplaceDataSourceMessageSchema, v15);
  v0[15] = v16;
  v0[2] = v16;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 40);
  v19 = swift_checkMetadataState();
  v26 = (v18 + *v18);
  v20 = swift_task_alloc();
  v0[16] = v20;
  sub_1A3E91E0C(0, &qword_1EB12D6E0, sub_1A3E90934);
  v22 = v21;
  v23 = sub_1A3E90988();
  v24 = sub_1A3E90A04();
  *v20 = v0;
  v20[1] = sub_1A3E8EE74;

  return (v26)(v0 + 2, v22, v23, v24, v19, AssociatedConformanceWitness);
}

uint64_t sub_1A3E8EE74()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A3E8F020;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A3E8EF90;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3E8EF90()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1A3E8F020()
{

  v1 = v0[17];
  v2 = v0[14];
  v3 = sub_1A524D244();
  v4 = *v2;
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "Error sending replace data source message: %@", v6, 0xCu);
    sub_1A3E919D8(v7, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
    MEMORY[0x1A590EEC0](v7, -1, -1);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1A3E8F1C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3E64928;

  return sub_1A3E90774();
}

uint64_t sub_1A3E8F270()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = *(v2 + 864);
  v5 = *(v2 + 872);
  *v3 = v1;
  v3[1] = sub_1A3E91FC0;

  return (sub_1A3E90774)(v4, v5);
}

uint64_t sub_1A3E8F344()
{

  v1 = v0 + *(*v0 + 888);
  v2 = *v1;
  v3 = *(v1 + 16);
}

uint64_t OneUpSharePlaySessionHostCoordinator.deinit()
{
  v0 = OneUpSharePlaySessionCoordinator.deinit();

  v1 = v0 + *(*v0 + 888);
  v2 = *v1;
  v3 = *(v1 + 16);

  return v0;
}

uint64_t OneUpSharePlaySessionHostCoordinator.__deallocating_deinit()
{
  OneUpSharePlaySessionHostCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3E8F568(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a2(0);
  __swift_allocate_value_buffer(v8, a3);
  __swift_project_value_buffer(v8, a3);
  return a5(a4);
}

size_t sub_1A3E8F5CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3E8F5EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A3E8F5EC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3E90AC8(0, &qword_1EB12D700, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) - 8);
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

uint64_t sub_1A3E8F7E8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *v2;
  v5 = sub_1A52419E4();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = *(v4 + 872);
  v3[14] = *(v4 + 864);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  v3[16] = *(AssociatedTypeWitness - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  sub_1A524CC54();
  v3[19] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v3[20] = v8;
  v3[21] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3E8F98C, v8, v7);
}

uint64_t sub_1A3E8F98C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v22 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v23 = *(v0 + 64);
  v24 = *(v0 + 136);
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + *(*v6 + 896)) = MEMORY[0x1E69E7CC0];
  *(v6 + *(*v6 + 904)) = v7;
  (*(v3 + 104))(v4, *MEMORY[0x1E696B268], v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  v10 = swift_unknownObjectRetain();
  v9(v10, v4, v2, AssociatedConformanceWitness);
  type metadata accessor for OneUpSharePlaySessionHostJournal();
  v11 = *(v22 + 16);
  v11(v24, v1, v2);
  v12 = swift_unknownObjectRetain();
  *(v6 + *(*v6 + 880)) = sub_1A43AD8B4(v12, v24);
  v13 = v23[3];
  v14 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v13);
  v15 = (*(v14 + 24))(v13, v14);
  *(v0 + 176) = v15;
  v16 = (v6 + *(*v6 + 888));
  *v16 = v15;
  v16[1] = MEMORY[0x1E69E7CC0];
  v16[2] = 0;
  v11(v24, v1, v2);
  *(v0 + 200) = 0;
  swift_unknownObjectRetain();
  v17 = v15;
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_1A3E8FC14;
  v19 = *(v0 + 136);
  v20 = *(v0 + 56);

  return sub_1A46E9E00(v20, v19, v0 + 200);
}

uint64_t sub_1A3E8FC14(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 192) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A3E8FD3C, v4, v3);
}

void sub_1A3E8FD3C()
{
  v1 = v0[8];

  sub_1A3C341C8(v1, (v0 + 2));

  sub_1A46E96BC((v0 + 2));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 40))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = v0[24];
    v7 = v0[22];
    v8 = sub_1A3E88454(v7, v4);
    v9 = v6 + *(*v6 + 888);
    v10 = *v9;
    v11 = *(v9 + 16);
    *v9 = v7;
    *(v9 + 8) = v8;
    *(v9 + 16) = v5;
    v12 = v7;
  }

  sub_1A3E88754();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 160);
  v15 = swift_checkMetadataState();
  v14(v15, AssociatedConformanceWitness);
  sub_1A3E88ABC();
}

unint64_t sub_1A3E8FFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A3E91908();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1A3DAC918(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

id sub_1A3E90094(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A52414C4();
  v28[4] = *(v8 - 8);
  v28[5] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28[2] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v28[3] = v28 - v11;
  sub_1A3E8C540(a3);
  sub_1A3E8C540(a4);
  v12 = sub_1A524CA14();

  v13 = sub_1A524CA14();

  v14 = sub_1A524CA14();
  aBlock[4] = sub_1A3E8C6DC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D9F678;
  aBlock[3] = &block_descriptor_33;
  v15 = _Block_copy(aBlock);

  v16 = [objc_opt_self() changeDetailsFromArray:v12 toArray:v13 changedObjects:v14 objectComparator:v15];
  _Block_release(v15);

  v17 = [a1 identifier];
  if (v17 != [a2 identifier])
  {
    v28[0] = a1;
    v28[1] = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = [a1 identifier];
  v19 = [a2 identifier];
  v20 = *sub_1A41DEF28();
  sub_1A3E90AC8(0, &qword_1EB12D7E8, sub_1A3E91878, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  sub_1A3C52C70(0, &qword_1EB126610);
  v22 = v20;
  *(inited + 32) = sub_1A524DBD4();
  *(inited + 40) = v16;
  v23 = v16;
  sub_1A3E8FFA8(inited);
  swift_setDeallocating();
  sub_1A3E91A38(inited + 32, sub_1A3E91878);
  v24 = objc_allocWithZone(off_1E77218B0);
  sub_1A3C52C70(0, &qword_1EB12D7F8);
  sub_1A3C3A220(&qword_1EB120590, &qword_1EB126610);
  v25 = sub_1A524C3D4();

  v26 = [v24 initWithFromDataSourceIdentifier:v18 toDataSourceIdentifier:v19 sectionChanges:v22 itemChangeDetailsBySection:v25 subitemChangeDetailsByItemBySection:0];

  return v26;
}

uint64_t sub_1A3E90774()
{
  sub_1A524CC54();
  sub_1A524CC44();
  v1 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3E90804, v1, v0);
}

uint64_t sub_1A3E908E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A3E90934()
{
  result = qword_1EB12D6D8;
  if (!qword_1EB12D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D6D8);
  }

  return result;
}

unint64_t sub_1A3E90988()
{
  result = qword_1EB12D6E8;
  if (!qword_1EB12D6E8)
  {
    sub_1A3E91E0C(255, &qword_1EB12D6E0, sub_1A3E90934);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D6E8);
  }

  return result;
}

unint64_t sub_1A3E90A04()
{
  result = qword_1EB12D6F0;
  if (!qword_1EB12D6F0)
  {
    sub_1A3E91E0C(255, &qword_1EB12D6E0, sub_1A3E90934);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D6F0);
  }

  return result;
}

uint64_t sub_1A3E90A80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3E90AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3E90B2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3E8D298(v5, v6, v7, v2, v3, v4);
}

void sub_1A3E90BD4()
{
  if (!qword_1EB12D710)
  {
    sub_1A3E90CD4();
    sub_1A3C52C70(255, &qword_1EB126558);
    sub_1A3E90A80(&qword_1EB12D730, sub_1A3E90CD4);
    sub_1A3C3A220(&qword_1EB126560, &qword_1EB126558);
    v0 = sub_1A5247824();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D710);
    }
  }
}

void sub_1A3E90CD4()
{
  if (!qword_1EB12D718)
  {
    sub_1A3E90D3C();
    v0 = sub_1A5247854();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D718);
    }
  }
}

void sub_1A3E90D3C()
{
  if (!qword_1EB12D720)
  {
    sub_1A3C4B7E8(255, &qword_1EB12D728, &qword_1EB126B50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D720);
    }
  }
}

void sub_1A3E90DBC()
{
  if (!qword_1EB12D738)
  {
    sub_1A3E90CD4();
    sub_1A3C52C70(255, &qword_1EB12B180);
    sub_1A3E90A80(&qword_1EB12D730, sub_1A3E90CD4);
    sub_1A3C3A220(&qword_1EB12D740, &qword_1EB12B180);
    v0 = sub_1A5247834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D738);
    }
  }
}

void sub_1A3E90EBC()
{
  if (!qword_1EB12D748)
  {
    sub_1A3E90FA8();
    sub_1A3E9139C(255, &qword_1EB12D768);
    sub_1A3E90A80(&qword_1EB12D770, sub_1A3E90FA8);
    sub_1A3E913FC(&qword_1EB12D778, &qword_1EB12D768);
    v0 = sub_1A5247814();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D748);
    }
  }
}

void sub_1A3E90FA8()
{
  if (!qword_1EB12D750)
  {
    sub_1A3E91048();
    sub_1A3E90A80(&qword_1EB12D760, sub_1A3E91048);
    v0 = sub_1A52477F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D750);
    }
  }
}

void sub_1A3E91048()
{
  if (!qword_1EB12D758)
  {
    sub_1A3C52C70(255, &qword_1EB126A20);
    v0 = sub_1A5247854();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D758);
    }
  }
}

uint64_t sub_1A3E910C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E8809C(v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 40))(v1, v2);
    if (v3)
    {
      v4 = v3;
      __swift_destroy_boxed_opaque_existential_0(v7);
      sub_1A524D264();
      v5 = *sub_1A486DB9C();
      sub_1A5246DF4();

      LOBYTE(v7[0]) = 4;
      sub_1A3E8A7F0(v4, v7);
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_1A524D244();
    v6 = *sub_1A486DB9C();
    sub_1A5246DF4();
  }

  return result;
}

unint64_t sub_1A3E91220()
{
  result = qword_1EB1408B0;
  if (!qword_1EB1408B0)
  {
    sub_1A3E90AC8(255, &qword_1EB12D788, MEMORY[0x1E695BF10], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1408B0);
  }

  return result;
}

uint64_t sub_1A3E912E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E898C0();
  }

  return result;
}

uint64_t sub_1A3E9133C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3E8AFC4(v1);
  }

  return result;
}

void sub_1A3E9139C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A5247854();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A3E913FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A3E9139C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3E9144C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A3E8C968(v4, v5, v6, v2, v3);
}

unint64_t sub_1A3E914E8()
{
  result = qword_1EB12D7B0;
  if (!qword_1EB12D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D7B0);
  }

  return result;
}

unint64_t sub_1A3E9153C()
{
  result = qword_1EB12D7C0;
  if (!qword_1EB12D7C0)
  {
    sub_1A3E91E0C(255, &qword_1EB12D7B8, sub_1A3E914E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D7C0);
  }

  return result;
}

unint64_t sub_1A3E915B8()
{
  result = qword_1EB12D7C8;
  if (!qword_1EB12D7C8)
  {
    sub_1A3E91E0C(255, &qword_1EB12D7B8, sub_1A3E914E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D7C8);
  }

  return result;
}

unint64_t sub_1A3E91634()
{
  result = qword_1EB12D7D0;
  if (!qword_1EB12D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D7D0);
  }

  return result;
}

unint64_t sub_1A3E91688()
{
  result = qword_1EB12D7D8;
  if (!qword_1EB12D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D7D8);
  }

  return result;
}

uint64_t sub_1A3E916DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E91744()
{
  v2 = *(type metadata accessor for OneUpSharePlayNavigateMessagePayload() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A5241C04() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A3E8B830(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

void sub_1A3E91878()
{
  if (!qword_1EB12D7F0)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    sub_1A3C52C70(255, &qword_1EB12D7F8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D7F0);
    }
  }
}

void sub_1A3E91908()
{
  if (!qword_1EB12D800)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    sub_1A3C52C70(255, &qword_1EB12D7F8);
    sub_1A3C3A220(&qword_1EB120590, &qword_1EB126610);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12D800);
    }
  }
}

uint64_t sub_1A3E919D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3E91A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3E91A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3E91B00()
{
  result = qword_1EB12D808;
  if (!qword_1EB12D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D808);
  }

  return result;
}

unint64_t sub_1A3E91B54()
{
  result = qword_1EB12D818;
  if (!qword_1EB12D818)
  {
    sub_1A3E91E0C(255, &qword_1EB12D810, sub_1A3E91B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D818);
  }

  return result;
}

unint64_t sub_1A3E91BD0()
{
  result = qword_1EB12D820;
  if (!qword_1EB12D820)
  {
    sub_1A3E91E0C(255, &qword_1EB12D810, sub_1A3E91B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D820);
  }

  return result;
}

uint64_t sub_1A3E91C4C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A3E89C60(v7, v8, v9, v0 + v5, v6, v3, v2);
}

void sub_1A3E91D78()
{
  if (!qword_1EB12D838)
  {
    sub_1A3E91E0C(255, &qword_1EB12D840, sub_1A3E91E6C);
    sub_1A5241BE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12D838);
    }
  }
}

void sub_1A3E91E0C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for OneUpSharePlayMessage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A3E91E6C()
{
  result = qword_1EB12D848;
  if (!qword_1EB12D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D848);
  }

  return result;
}

unint64_t sub_1A3E91EC0()
{
  result = qword_1EB12D860;
  if (!qword_1EB12D860)
  {
    sub_1A3E91E0C(255, &qword_1EB12D840, sub_1A3E91E6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D860);
  }

  return result;
}

unint64_t sub_1A3E91F3C()
{
  result = qword_1EB12D868;
  if (!qword_1EB12D868)
  {
    sub_1A3E91E0C(255, &qword_1EB12D840, sub_1A3E91E6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12D868);
  }

  return result;
}

uint64_t sub_1A3E91FC8()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return v0[16];
}

uint64_t sub_1A3E9202C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E920A4(uint64_t result)
{
  if (v1[16] == (result & 1))
  {
    v1[16] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v3);
  }

  return result;
}

uint64_t sub_1A3E9219C()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  return swift_unknownObjectRetain();
}