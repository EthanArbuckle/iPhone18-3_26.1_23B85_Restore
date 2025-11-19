uint64_t sub_1A458076C()
{

  sub_1A3C33378(*(v0 + 40));
  sub_1A3D35A10(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1A45807E4()
{
  sub_1A3EBD0AC();
  result = sub_1A524DEE4();
  qword_1EB1C7658 = result;
  return result;
}

unint64_t sub_1A4580848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4580F2C();
      v10 = v12;
    }

    v11 = *(v10 + 56) + 24 * v8;
    *a3 = *v11;
    *(a3 + 8) = *(v11 + 8);
    result = sub_1A4580BC4(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1A45808F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A45813E0();
  v37 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A4580BC4(unint64_t result, uint64_t a2)
{
  if ((*(a2 + 64 + ((((result + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((result + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v2 = *(a2 + 16);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v4;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A4580D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A3C5DCA4(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A45808F8(v20, a6 & 1);
      v15 = sub_1A3C5DCA4(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A4580F2C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    v28 = (v25[6] + 16 * v15);
    *v28 = a4;
    v28[1] = a5;
    v29 = (v25[7] + 24 * v15);
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v30 = v25[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v25[2] = v31;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v26 = (v25[7] + 24 * v15);
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
}

void *sub_1A4580F2C()
{
  v1 = v0;
  sub_1A45813E0();
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
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 16 * v16;
        v18 = (*(v2 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 24;
        v21 = (*(v2 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = (*(v4 + 48) + v17);
        *v25 = v20;
        v25[1] = v19;
        v26 = (*(v4 + 56) + v16);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A45810B8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1A3E2AE98(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4581130(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A45813E0();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4581248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v3[5] = 0;
  v10 = v3 + 5;
  v3[8] = 0;
  v3[6] = 0;
  swift_unknownObjectWeakInit();
  v11 = MEMORY[0x1E69E7CC0];
  v10[4] = sub_1A4581130(MEMORY[0x1E69E7CC0]);
  v10[5] = v11;
  sub_1A3C4D548(0, &qword_1EB126180);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F9790;
  type metadata accessor for TTRRadarObject();
  result = TTRRadarObject.__allocating_init()();
  *(v12 + 32) = result;
  v10[7] = v12;
  if (v9[2])
  {
    v4[2] = v7;
    v4[3] = v8;
    v4[4] = v9;
    sub_1A3C4D548(0, &qword_1EB12B260);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A52F8E10;
    if (v9[2])
    {
      v14 = v9[5];
      *(result + 32) = v9[4];
      *(result + 40) = v14;
      v4[11] = result;
      swift_beginAccess();
      v4[5] = a2;
      v4[6] = a3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A45813E0()
{
  if (!qword_1EB13DBC0)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DBC0);
    }
  }
}

uint64_t sub_1A4581480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[2] = a1;
  sub_1A458A420(0, &qword_1EB13DBD0, sub_1A45818FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v26[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v26 - v4;
  sub_1A45819B0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45818FC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v1 + *(type metadata accessor for LemonadeInAppNotificationsSettingsView(0) + 24));
  v18 = *v16;
  v17 = v16[1];
  v27 = v18;
  v28 = v17;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v19 = sub_1A524B6A4();
  v20 = (*(*v26[3] + 176))(v19);

  v21 = *(v20 + 16);

  if (v21)
  {
    MEMORY[0x1EEE9AC00](v22);
    v26[-2] = v2;
    sub_1A458A704(0, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24);
    sub_1A4581D58();
    sub_1A524A294();
    v23 = sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0);
    sub_1A524ADD4();
    (*(v8 + 8))(v10, v7);
    (*(v13 + 16))(v5, v15, v12);
    swift_storeEnumTagMultiPayload();
    v27 = v7;
    v28 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v25 = sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0);
    v27 = v7;
    v28 = v25;
    swift_getOpaqueTypeConformance2();
    return sub_1A5249744();
  }
}

void sub_1A45818FC()
{
  if (!qword_1EB13DBD8)
  {
    sub_1A45819B0();
    sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DBD8);
    }
  }
}

void sub_1A45819B0()
{
  if (!qword_1EB13DBE0)
  {
    sub_1A458A704(255, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24);
    sub_1A4581D58();
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DBE0);
    }
  }
}

void sub_1A4581A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A458B6DC(255, &qword_1EB13DC00, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E62F8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A4581B94()
{
  result = qword_1EB13DC20;
  if (!qword_1EB13DC20)
  {
    sub_1A4581A6C(255, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
    sub_1A4581C68(&qword_1EB13DC28);
    sub_1A4581C68(&qword_1EB13DC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC20);
  }

  return result;
}

uint64_t sub_1A4581C68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A458B6DC(255, &qword_1EB13DC00, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4581CD0()
{
  result = qword_1EB13DC38;
  if (!qword_1EB13DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC38);
  }

  return result;
}

unint64_t sub_1A4581D58()
{
  result = qword_1EB13DC48;
  if (!qword_1EB13DC48)
  {
    sub_1A458A704(255, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24);
    sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4);
    sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC48);
  }

  return result;
}

unint64_t sub_1A4581F34()
{
  result = qword_1EB13DC68;
  if (!qword_1EB13DC68)
  {
    sub_1A4581B58(255);
    v1 = MEMORY[0x1E697D6A0];
    sub_1A458AAF8(255, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DC68);
  }

  return result;
}

uint64_t sub_1A4582084(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

uint64_t sub_1A4582110()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  sub_1A524A464();
  type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = (*(*v3 + 176))(v0);

  if (*(v1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4581A4C(0);
  sub_1A4581D24(0);
  sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4);
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60);
  return sub_1A524BA44();
}

uint64_t sub_1A4582484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (a1 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v17 = v9;
  *&v18 = v8;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v13 = v18;

  v15 = v17;
  v16 = v18;
  sub_1A458ADCC(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A458BB78(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A4581AF0(0);
  sub_1A4581B94();
  sub_1A4581EA4();
  sub_1A458B640();
  return sub_1A524B9C4();
}

uint64_t sub_1A458271C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45827BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v38 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1A4581B24(0);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v50 = *a1;
  v51 = v12;
  v13 = a1[3];
  v52 = a1[2];
  v53 = v13;
  v14 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v16 = v15;
  MEMORY[0x1A5906C60](&v44);
  v17 = *(&v44 + 1);
  v18 = v45;

  v48 = v17;
  v49 = v18;
  v19 = a1[1];
  v44 = *a1;
  v45 = v19;
  v20 = a1[3];
  v46 = a1[2];
  v47 = v20;
  sub_1A524B924();
  swift_getKeyPath();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  sub_1A524B914();

  sub_1A458AF48(&v50, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v21 = a1[1];
  v44 = *a1;
  v45 = v21;
  v22 = a1[3];
  v46 = a1[2];
  v47 = v22;
  MEMORY[0x1A5906C60](v42, v16);

  LOBYTE(v17) = v43;

  LOBYTE(v42[0]) = v17;
  sub_1A458ADCC(v36, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v23 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  sub_1A458BB78(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A458AC48(a1, &v44, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v37);
  v27 = v38;
  sub_1A524B144();

  (*(v39 + 8))(v8, v27);
  LOBYTE(v27) = sub_1A524A054();
  sub_1A4581B58(0);
  v29 = &v11[*(v28 + 36)];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = &v11[*(v40 + 36)];
  *v30 = xmmword_1A534B4D0;
  *(v30 + 1) = xmmword_1A534B4D0;
  v30[32] = 0;
  v31 = a1[1];
  v44 = *a1;
  v45 = v31;
  v32 = a1[3];
  v46 = a1[2];
  v47 = v32;
  MEMORY[0x1A5906C60](v42, v16);
  LOBYTE(v27) = v42[0];

  sub_1A48E5148(v27);
  sub_1A4581EEC();
  sub_1A524AA94();

  return sub_1A3D09FF8(v11);
}

void *sub_1A4582D04()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A4582E74()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  sub_1A524A464();
  type metadata accessor for LemonadeGeneralSettingsView(0);
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = (*(*v3 + 224))(v0);

  if (*(v1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4581A4C(0);
  sub_1A4581D24(0);
  sub_1A45843A8(&qword_1EB13DC50, sub_1A4581A4C, sub_1A4581EA4);
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60);
  return sub_1A524BA44();
}

uint64_t sub_1A45831F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for LemonadeGeneralSettingsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (a1 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v17 = v9;
  *&v18 = v8;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v13 = v18;

  v15 = v17;
  v16 = v18;
  sub_1A458ADCC(a1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGeneralSettingsView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A458BB78(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A4581AF0(0);
  sub_1A4581B94();
  sub_1A4581EA4();
  sub_1A458B640();
  return sub_1A524B9C4();
}

uint64_t sub_1A4583488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4583528@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = type metadata accessor for LemonadeGeneralSettingsView(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v38 = v6;
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1A4581B24(0);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v50 = *a1;
  v51 = v12;
  v13 = a1[3];
  v52 = a1[2];
  v53 = v13;
  v14 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v16 = v15;
  MEMORY[0x1A5906C60](&v44);
  v17 = *(&v44 + 1);
  v18 = v45;

  v48 = v17;
  v49 = v18;
  v19 = a1[1];
  v44 = *a1;
  v45 = v19;
  v20 = a1[3];
  v46 = a1[2];
  v47 = v20;
  sub_1A524B924();
  swift_getKeyPath();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  sub_1A524B914();

  sub_1A458AF48(&v50, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v21 = a1[1];
  v44 = *a1;
  v45 = v21;
  v22 = a1[3];
  v46 = a1[2];
  v47 = v22;
  MEMORY[0x1A5906C60](v42, v16);

  LOBYTE(v17) = v43;

  LOBYTE(v42[0]) = v17;
  sub_1A458ADCC(v36, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeGeneralSettingsView);
  v23 = (*(v35 + 80) + 80) & ~*(v35 + 80);
  v24 = swift_allocObject();
  v25 = a1[1];
  v24[1] = *a1;
  v24[2] = v25;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  sub_1A458BB78(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A458AC48(a1, &v44, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v14);
  sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v37);
  v27 = v38;
  sub_1A524B144();

  (*(v39 + 8))(v8, v27);
  LOBYTE(v27) = sub_1A524A054();
  sub_1A4581B58(0);
  v29 = &v11[*(v28 + 36)];
  *v29 = v27;
  *(v29 + 8) = 0u;
  *(v29 + 24) = 0u;
  v29[40] = 1;
  v30 = &v11[*(v40 + 36)];
  *v30 = xmmword_1A534B4D0;
  *(v30 + 1) = xmmword_1A534B4D0;
  v30[32] = 0;
  v31 = a1[1];
  v44 = *a1;
  v45 = v31;
  v32 = a1[3];
  v46 = a1[2];
  v47 = v32;
  MEMORY[0x1A5906C60](v42, v16);
  LOBYTE(v27) = v42[0];

  sub_1A48E5148(v27);
  sub_1A4581EEC();
  sub_1A524AA94();

  return sub_1A3D09FF8(v11);
}

uint64_t sub_1A4583A6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2 & 1;
  v5 = a3(0);
  v6 = *(v5 + 20);
  *(a4 + v6) = swift_getKeyPath();
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = (a4 + *(v5 + 24));
  type metadata accessor for LemonadeSettingsViewModel(0);
  result = sub_1A524B694();
  *v7 = v9;
  v7[1] = v10;
  return result;
}

uint64_t sub_1A4583B44()
{
  sub_1A45819B0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0;
  sub_1A458A704(0, &qword_1EB13DBE8, sub_1A4581A4C, sub_1A4581D24);
  sub_1A4581D58();
  sub_1A524A294();
  sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A4583CC8@<X0>(uint64_t a1@<X8>)
{
  sub_1A4583F48();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45844C4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataSectionItemListManager.itemList.getter(&v17);
  v12 = v17;
  v13 = [v17 count];

  if (v13 < 1)
  {
    v14 = 1;
  }

  else
  {
    sub_1A458A704(0, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC);
    sub_1A4584258();
    sub_1A524A2C4();
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48);
    sub_1A524ADD4();
    (*(v4 + 8))(v6, v3);
    (*(v9 + 32))(a1, v11, v8);
    v14 = 0;
  }

  return (*(v9 + 56))(a1, v14, 1, v8);
}

void sub_1A4583F48()
{
  if (!qword_1EB13DC80)
  {
    sub_1A458A704(255, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC);
    sub_1A4584258();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DC80);
    }
  }
}

void sub_1A4584000()
{
  if (!qword_1EB13DC90)
  {
    sub_1A3C52C70(255, &qword_1EB1374F0);
    sub_1A45840DC(255);
    sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DC90);
    }
  }
}

void sub_1A4584110()
{
  if (!qword_1EB13DCA0)
  {
    type metadata accessor for StorageManagementListItem(255);
    type metadata accessor for StorageManagementView(255);
    sub_1A458A9DC(&qword_1EB13DCA8, type metadata accessor for StorageManagementListItem);
    sub_1A458A9DC(&qword_1EB131108, type metadata accessor for StorageManagementView);
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DCA0);
    }
  }
}

void sub_1A45841FC()
{
  if (!qword_1EB13DCB8)
  {
    sub_1A3DF14C0();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DCB8);
    }
  }
}

unint64_t sub_1A4584258()
{
  result = qword_1EB13DCC0;
  if (!qword_1EB13DCC0)
  {
    sub_1A458A704(255, &qword_1EB13DC88, sub_1A4584000, sub_1A45841FC);
    sub_1A45843A8(&qword_1EB13DCC8, sub_1A4584000, sub_1A4584360);
    sub_1A458444C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DCC0);
  }

  return result;
}

uint64_t sub_1A45843A8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A458444C()
{
  result = qword_1EB13DCE0;
  if (!qword_1EB13DCE0)
  {
    sub_1A45841FC();
    sub_1A405D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DCE0);
  }

  return result;
}

void sub_1A45844C4()
{
  if (!qword_1EB13DCE8)
  {
    sub_1A4583F48();
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DCE8);
    }
  }
}

uint64_t sub_1A4584578()
{
  v15[0] = sub_1A3C38BD4();
  v15[1] = v0;
  sub_1A3D5F9DC();
  sub_1A524A464();
  DataSectionItemListManager.itemList.getter(v15);
  v1 = v15[0];
  v2 = [v15[0] objectAtIndex_];

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && [v3 count] >= 1)
  {
    v15[0] = sub_1A3C38BD4();
    v15[1] = v4;
    v5 = sub_1A524A464();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    KeyPath = swift_getKeyPath();
    v15[0] = v5;
    v15[1] = v7;
    v16 = v9 & 1;
    v17 = v11;
    v18 = KeyPath;
    v19 = 1;
    sub_1A3E75E68(v5, v7, v9 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_unknownObjectRelease();
  v15[0] = sub_1A3C38BD4();
  v15[1] = v13;
  sub_1A524A464();
  swift_getKeyPath();
  sub_1A3DF14C0();
  sub_1A405D614();
  sub_1A5249744();
  sub_1A4584000();
  sub_1A45841FC();
  sub_1A45843A8(&qword_1EB13DCC8, sub_1A4584000, sub_1A4584360);
  sub_1A458444C();
  return sub_1A524BA44();
}

uint64_t sub_1A4584930@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StorageManagementView(0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = [v8 count];
  if (v9 < 1)
  {
    sub_1A4584110();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  else
  {
    *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
    *(&v15 - 2) = v8;
    sub_1A4073328([v8 storageTipType], v7);
    type metadata accessor for StorageManagementListItem(0);
    sub_1A458A9DC(&qword_1EB13DCA8, type metadata accessor for StorageManagementListItem);
    sub_1A458A9DC(&qword_1EB131108, type metadata accessor for StorageManagementView);
    sub_1A5248444();
    sub_1A4584110();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1A4584B78@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a2;
  v40 = a5;
  sub_1A4589924(0, &qword_1EB13DD10, sub_1A45899E0);
  v39 = v8;
  v35 = *(v8 - 8);
  v9 = v35;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - v12;
  v43 = a3;
  *&v44 = a4;
  sub_1A458AFF8(0, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v13 = v45;
  v14 = v46;
  v15 = v47;
  swift_getKeyPath();
  v45 = v13;
  v46 = v14;
  v47 = v15;
  sub_1A458AFF8(0, &qword_1EB13DDD0, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v16 = v43;
  v34 = v44;

  v41 = v16;
  v42 = v34;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = v36 & 1;
  *(v17 + 24) = v36 & 1;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  sub_1A4579D5C(a1, v18);
  sub_1A4581A6C(0, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
  sub_1A45899E0();
  sub_1A4581B94();
  sub_1A458B41C();
  sub_1A458B640();

  v19 = v37;
  sub_1A524B9C4();
  KeyPath = swift_getKeyPath();
  LOBYTE(v43) = 0;
  sub_1A524B694();
  LOBYTE(v15) = v45;
  v21 = v46;
  LOBYTE(v43) = 0;
  sub_1A524B694();
  LOBYTE(v13) = v45;
  v22 = v46;
  v23 = *(v9 + 16);
  v25 = v38;
  v24 = v39;
  v23(v38, v19, v39);
  LOBYTE(v45) = 0;
  LOBYTE(v43) = v15;
  LOBYTE(v41) = v13;
  v26 = v40;
  v23(v40, v25, v24);
  sub_1A45898A0();
  v28 = &v26[*(v27 + 48)];
  v29 = v45;
  v30 = v43;
  v31 = v41;
  *v28 = KeyPath;
  v28[8] = v29;
  v28[16] = v30;
  *(v28 + 3) = v21;
  v28[32] = v31;
  *(v28 + 5) = v22;
  sub_1A4579D5C(KeyPath, v29);
  v32 = *(v35 + 8);

  v32(v19, v24);
  sub_1A3D35BAC(KeyPath, v45);

  return (v32)(v25, v24);
}

uint64_t sub_1A4584F7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_1A458502C@<X0>(__int128 *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v38 = a4;
  v39 = a3;
  v46 = a6;
  v41 = MEMORY[0x1E697D6A0];
  sub_1A458AAF8(0, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v42 = v8;
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  sub_1A3FF705C();
  v44 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v55 = *a1;
  v56 = v14;
  v15 = a1[3];
  v57 = a1[2];
  v58 = v15;
  v16 = MEMORY[0x1E6981948];
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v18 = v17;
  MEMORY[0x1A5906C60](&v49);
  v19 = *(&v49 + 1);
  v20 = v50;

  v53 = v19;
  v54 = v20;
  v21 = a1[1];
  v49 = *a1;
  v50 = v21;
  v22 = a1[3];
  v51 = a1[2];
  v52 = v22;
  sub_1A524B924();
  swift_getKeyPath();
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  sub_1A524B914();

  sub_1A458AF48(&v55, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v16);
  sub_1A3D5F9DC();
  sub_1A524B864();
  v23 = a1[1];
  v49 = *a1;
  v50 = v23;
  v24 = a1[3];
  v51 = a1[2];
  v52 = v24;
  MEMORY[0x1A5906C60](v47, v18);

  LOBYTE(v19) = v48;

  LOBYTE(v47[0]) = v19;
  v25 = swift_allocObject();
  v26 = a1[1];
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  v27 = a1[3];
  *(v25 + 48) = a1[2];
  *(v25 + 64) = v27;
  *(v25 + 80) = a2;
  LOBYTE(v19) = v39 & 1;
  *(v25 + 88) = v39 & 1;
  v28 = v40;
  *(v25 + 96) = v38;
  *(v25 + 104) = v28;
  sub_1A458AC48(a1, &v49, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, v16);
  sub_1A4579D5C(a2, v19);
  v29 = sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v41);

  v30 = MEMORY[0x1E69E6370];
  v31 = MEMORY[0x1E69E6388];
  v32 = v42;
  sub_1A524B144();

  (*(v43 + 8))(v10, v32);
  v33 = a1[1];
  v49 = *a1;
  v50 = v33;
  v34 = a1[3];
  v51 = a1[2];
  v52 = v34;
  MEMORY[0x1A5906C60](v47, v18);
  LOBYTE(v19) = v47[0];

  sub_1A48E5148(v19);
  *&v49 = v32;
  *(&v49 + 1) = v30;
  *&v50 = v29;
  *(&v50 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_1A524AA94();

  return (*(v45 + 8))(v13, v35);
}

void sub_1A4585514(unsigned __int8 *a1, __int128 *a2, void *a3, char a4)
{
  v8 = sub_1A5249234();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[1];
  v19 = *a2;
  v20 = v13;
  v14 = a2[3];
  v21 = a2[2];
  v22 = v14;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v18);
  v15 = LOBYTE(v18[0]);

  if (a4)
  {
    v16 = a3;
  }

  else
  {

    sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(a3, 0);
    (*(v9 + 8))(v11, v8);
    v16 = v19;
    a3 = v19;
  }

  sub_1A48E4BCC(v12, a3, v15);
}

uint64_t sub_1A458570C(uint64_t a1)
{
  type metadata accessor for LemonadeSettingsViewModel(0);
  sub_1A524B694();
  return a1;
}

uint64_t sub_1A4585760()
{
  sub_1A45897D8();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 8);
  v7 = v0[2];
  v8 = v0[3];
  v11 = *v0;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1A458986C(0);
  sub_1A458A9DC(&qword_1EB13DD28, sub_1A458986C);
  sub_1A524A294();
  sub_1A458A9DC(&qword_1EB13DD30, sub_1A45897D8);
  sub_1A524ADD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A45858F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  sub_1A458A704(0, &qword_1EB13DD60, sub_1A458A788, sub_1A426C988);
  v31 = v3;
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v34 = v29 - v4;
  v37 = v1;
  v39 = sub_1A3C38BD4();
  v40 = v5;
  sub_1A3D5F9DC();
  v6 = sub_1A524A464();
  v8 = v7;
  v10 = v9;
  sub_1A524A254();
  v11 = sub_1A524A3C4();
  v13 = v12;
  v15 = v14;

  sub_1A3E04DF4(v6, v8, v10 & 1);

  sub_1A524B3D4();
  v16 = sub_1A524A364();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_1A3E04DF4(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 1;
  v39 = v16;
  v40 = v18;
  v41 = v20 & 1;
  v42 = v22;
  v43 = 256;
  v44 = KeyPath;
  v45 = 0;
  v46 = 1;
  sub_1A458A788(0);
  sub_1A426C988();
  sub_1A458A9DC(&qword_1EB13DD98, sub_1A458A788);
  sub_1A426CA60();
  sub_1A524BA64();
  v30 = sub_1A5249434();
  v29[1] = v24;
  v38 = *(v2 + 16);
  sub_1A458B6DC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v36 = v2;
  v35 = v2;
  v25 = MEMORY[0x1E697D670];
  sub_1A458AAF8(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  sub_1A458AB4C();
  sub_1A458A984(&qword_1EB127490, &qword_1EB127480, v25);
  v26 = v31;
  v27 = v34;
  sub_1A524ACA4();

  return (*(v33 + 8))(v27, v26);
}

uint64_t sub_1A4585D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  sub_1A458A8C8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458A820(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v33 - v15;
  v42 = *a1;
  v43 = *(a1 + 8);
  v16 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v18;
  v17[3] = *(a1 + 2);
  v34 = sub_1A3FF2CA0;
  sub_1A458ADCC(&v42, v39, sub_1A3FF2CA0);
  v19 = MEMORY[0x1E6981790];
  sub_1A458AC48(&v41, v39, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A458AC48(&v40, v39, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v19);
  v20 = MEMORY[0x1E69817F0];
  sub_1A458AAF8(0, &qword_1EB13DD88, MEMORY[0x1E6981138], MEMORY[0x1E69817F0]);
  sub_1A458A984(&qword_1EB13DD90, &qword_1EB13DD88, v20);
  sub_1A524B704();
  sub_1A458A9DC(&qword_1EB13DDB0, sub_1A458A8C8);
  sub_1A524AA94();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v22 = swift_allocObject();
  v23 = *(a1 + 1);
  v22[1] = *a1;
  v22[2] = v23;
  v22[3] = *(a1 + 2);
  sub_1A458ADCC(&v42, v39, v34);
  sub_1A458AC48(&v41, v39, &qword_1EB1274B0, MEMORY[0x1E69E6370], v19);
  sub_1A458AC48(&v40, v39, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v19);
  sub_1A524B704();
  v24 = v35;
  sub_1A524AA94();
  v21(v7, v4);
  v25 = v33;
  v26 = v36;
  sub_1A458ADCC(v33, v36, sub_1A458A820);
  v27 = v24;
  v28 = v24;
  v29 = v37;
  sub_1A458ADCC(v27, v37, sub_1A458A820);
  v30 = v38;
  sub_1A458ADCC(v26, v38, sub_1A458A820);
  sub_1A458A7BC();
  sub_1A458ADCC(v29, v30 + *(v31 + 48), sub_1A458A820);
  sub_1A458AEE8(v28, sub_1A458A820);
  sub_1A458AEE8(v25, sub_1A458A820);
  sub_1A458AEE8(v29, sub_1A458A820);
  return sub_1A458AEE8(v26, sub_1A458A820);
}

uint64_t sub_1A4586260@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5249314();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1A45862E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5249314();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5 & 1;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1A4586368(uint64_t *a1)
{
  sub_1A458AFF8(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11[-v3];
  v17 = *(a1 + 2);
  v14 = *(a1 + 2);
  v5 = MEMORY[0x1E6981790];
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v12 = sub_1A3C38BD4();
  v13 = v6;
  sub_1A5247B14();
  v7 = sub_1A5247B54();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v15 = *a1;
  v16 = *(a1 + 8);
  v14 = *(a1 + 1);
  v8 = swift_allocObject();
  v9 = *(a1 + 1);
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = *(a1 + 2);
  sub_1A458ADCC(&v15, v11, sub_1A3FF2CA0);
  sub_1A458AC48(&v14, v11, &qword_1EB1274B0, MEMORY[0x1E69E6370], v5);
  sub_1A458AC48(&v17, v11, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, v5);
  sub_1A3D5F9DC();
  return sub_1A524B734();
}

void sub_1A45865C8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 8);
  v6 = *a1;
  v11 = *a1;
  if (v12 == 1)
  {
    v7 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {

    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A458AEE8(&v11, sub_1A3FF2CA0);
    (*(v3 + 8))(v5, v2);
    v6 = v10;
    if (!v10)
    {
      return;
    }
  }

  v10 = *(a1 + 32);
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v9[15])
  {
    PXResetPeopleFeedback(v6);
  }

  else
  {
    PXResetSuggestedMemories(v6);
  }
}

void sub_1A45867E0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A458698C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A4586ADC;
}

void sub_1A4586AE8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4586C94(uint64_t *a1))(void *a1)
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
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C();
  return sub_1A4586DE4;
}

void sub_1A4586DF0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4586F9C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4504FF8();
  return sub_1A45870EC;
}

uint64_t sub_1A45870F8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4587164@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 544))();

  *a2 = v3[3];

  return swift_unknownObjectRetain();
}

uint64_t sub_1A45871F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 552))(KeyPath, sub_1A42CA8C8, v7, MEMORY[0x1E69E7CA8] + 8);
}

void *sub_1A45872F4()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  v1 = v0[8];
  v2 = v1;
  return v1;
}

uint64_t sub_1A458737C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1A45873D0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4587430(void *a1)
{
  swift_beginAccess();
  v3 = v1[8];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A5240AD4();
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[8];
LABEL_8:
  v1[8] = a1;
}

void (*sub_1A458758C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4();
  return sub_1A45876DC;
}

uint64_t sub_1A45876E8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();
}

uint64_t sub_1A458775C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 544))();

  *a2 = v3[9];
}

uint64_t sub_1A4587810(uint64_t a1)
{
  if (v1[9] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 552))(v4);
  }
}

id sub_1A4587974()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  v1 = v0[10];

  return v1;
}

uint64_t sub_1A4587A04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

void sub_1A4587AB4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[10];
  sub_1A3C52C70(0, &qword_1EB126BF0);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[10];
    v2[10] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 552))(v9);
  }
}

void (*sub_1A4587BF8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A458A9DC(&qword_1EB13DD38, type metadata accessor for LemonadeSettingsViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4587924();
  return sub_1A4587D48;
}

void sub_1A4587DA4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  v3[2] = MEMORY[0x1E69E7CC0];
  v3[3] = v6;
  v3[4] = v6;
  v3[7] = 0;
  v3[8] = 0;
  v3[6] = 0;
  sub_1A5241604();
  v3[5] = a1;
  v3[10] = a2;
  type metadata accessor for SharedAlbumsAvailabilityObserver();

  v3[9] = static SharedAlbumsAvailabilityObserver.observer(for:)(a2);
  v8 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();

  v7 = sub_1A5240C84();

  sub_1A4587430(v7);
  sub_1A4588288(v3);
}

id sub_1A4588114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 showHolidayCalendarEvents];
  *a2 = result;
  return result;
}

id *LemonadeSettingsViewModel.deinit()
{
  v1 = v0;
  PXUnregisterPreferencesObserver(v0);
  v2 = (*(*v0 + 46))();
  if (v2)
  {
    v3 = v2;
    sub_1A5240AC4();
  }

  swift_unknownObjectRelease();

  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeSettingsViewModel___observationRegistrar;
  v5 = sub_1A5241614();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t LemonadeSettingsViewModel.__deallocating_deinit()
{
  LemonadeSettingsViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_1A4588288(uint64_t a1)
{
  if (PXPreferencesIsSharedLibrarySuggestionsEnabled())
  {
    if ((*(**(a1 + 40) + 200))())
    {
      v2 = sub_1A3C38BD4();
      sub_1A48E49C4(6, v2, v3, 0, 0, v4);
      v9 = *&v4[8];
      v10 = v5;
      v6 = *v4;
      v7 = *&v4[16];
      v8 = v5;
      sub_1A5246624();
    }
  }

  sub_1A5246614();
}

void sub_1A4588638()
{
  v0 = sub_1A3C38BD4();
  sub_1A48E49C4(0, v0, v1, 0, 0, v2);
  v7 = *&v2[8];
  v8 = v3;
  v4 = *v2;
  v5 = *&v2[16];
  v6 = v3;
  sub_1A5246624();
}

void sub_1A45888AC()
{
  v0 = sub_1A3C38BD4();
  v2 = v1;
  v3 = sub_1A3C38BD4();
  sub_1A48E49C4(2, v0, v2, v3, v4, v5);
  v10 = *&v5[8];
  v11 = v6;
  v7 = *v5;
  v8 = *&v5[16];
  v9 = v6;
  sub_1A5246624();
}

uint64_t sub_1A4588AB8()
{
  v37 = *(*v0 + 176);
  v1 = *(v37() + 16);

  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(*v0 + 192);
    while (1)
    {
      result = (v37)(v2);
      if (v4 >= *(result + 16))
      {
        break;
      }

      v7 = *(result + v3 + 32);

      sub_1A48E4A20(v7);
      v9 = v8;
      v10 = v5(v40);
      v12 = v11;
      v13 = *v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v12 = v13;
      if ((result & 1) == 0)
      {
        result = sub_1A4589590(v13);
        v13 = result;
        *v12 = result;
      }

      if (v4 >= *(v13 + 16))
      {
        goto LABEL_24;
      }

      ++v4;
      *(v13 + v3 + 56) = v9 & 1;
      v2 = v10(v40, 0);
      v3 += 48;
      if (v1 == v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_8:
  v38 = *(*v0 + 272);
  v14 = *(v38(v2) + 16);

  if (v14)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(*v0 + 288);
    while (1)
    {
      result = v38(v15);
      if (v17 >= *(result + 16))
      {
        break;
      }

      v19 = *(result + v16 + 32);

      sub_1A48E4A20(v19);
      v21 = v20;
      v22 = v18(v40);
      v24 = v23;
      v25 = *v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((result & 1) == 0)
      {
        result = sub_1A4589590(v25);
        v25 = result;
        *v24 = result;
      }

      if (v17 >= *(v25 + 16))
      {
        goto LABEL_26;
      }

      ++v17;
      *(v25 + v16 + 56) = v21 & 1;
      v15 = v22(v40, 0);
      v16 += 48;
      if (v14 == v17)
      {
        goto LABEL_15;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_15:
  v39 = *(*v0 + 224);
  v26 = *(v39(v15) + 16);

  if (!v26)
  {
    return result;
  }

  v27 = 0;
  v28 = 0;
  v29 = *(*v0 + 240);
  while (1)
  {
    result = v39(result);
    if (v28 >= *(result + 16))
    {
      break;
    }

    v30 = *(result + v27 + 32);

    sub_1A48E4A20(v30);
    v32 = v31;
    v33 = v29(v40);
    v35 = v34;
    v36 = *v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((result & 1) == 0)
    {
      result = sub_1A4589590(v36);
      v36 = result;
      *v35 = result;
    }

    if (v28 >= *(v36 + 16))
    {
      goto LABEL_28;
    }

    ++v28;
    *(v36 + v27 + 56) = v32 & 1;
    result = v33(v40, 0);
    v27 += 48;
    if (v26 == v28)
    {
      return result;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A4588E48(void **a1)
{
  swift_getKeyPath();
  ((*a1)[68])();

  v2 = *(*a1[9] + 136);

  v2(v3);
}

uint64_t sub_1A4588EF8()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A534C430, v6);
}

uint64_t sub_1A4589070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4589108, v6, v5);
}

uint64_t sub_1A4589108()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A4588288(Strong);
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_1A4589520(void *a1)
{
  v1 = a1;
  v2 = sub_1A524C634();
  v3 = [v1 integerForKey_];

  return v3;
}

char *sub_1A45895A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A458B6DC(0, &qword_1EB13DDB8, &type metadata for LemonadePhotosSetting, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_1A45896DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      sub_1A458AFA4();
      v3 = 0;
      do
      {
        v4 = sub_1A524C594();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1A45897D8()
{
  if (!qword_1EB13DCF8)
  {
    sub_1A458986C(255);
    sub_1A458A9DC(&qword_1EB13DD28, sub_1A458986C);
    v0 = sub_1A524A2A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DCF8);
    }
  }
}

void sub_1A45898A0()
{
  if (!qword_1EB13DD08)
  {
    sub_1A4589924(255, &qword_1EB13DD10, sub_1A45899E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DD08);
    }
  }
}

void sub_1A4589924(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4581A6C(255, &qword_1EB13DBF8, MEMORY[0x1E6981948]);
    a3(255);
    sub_1A4581B94();
    sub_1A4581CD0();
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A45899E0()
{
  if (!qword_1EB13DD18)
  {
    sub_1A458B6DC(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A458A854(255, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
    sub_1A4581D24(255);
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DD18);
    }
  }
}

void sub_1A4589AB8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 24) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4589B1C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 32) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4589B80()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  v4 = v1;
}

uint64_t sub_1A4589BE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 536))(result);
  }

  return result;
}

uint64_t (*sub_1A4589C6C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A458AE4C;
}

uint64_t sub_1A4589CC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4588288(result);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A458AFF8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1A458AFF8(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

void sub_1A458A044()
{
  sub_1A3FF2CA0();
  if (v0 <= 0x3F)
  {
    sub_1A458AFF8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A458AFF8(319, &qword_1EB13DBC8, type metadata accessor for LemonadeSettingsViewModel, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A458A150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A458A198(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A458A1F0()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A458A308()
{
  result = qword_1EB13DD40;
  if (!qword_1EB13DD40)
  {
    sub_1A458A420(255, &qword_1EB13DD48, sub_1A45818FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A45819B0();
    sub_1A458A9DC(&qword_1EB13DC78, sub_1A45819B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DD40);
  }

  return result;
}

void sub_1A458A420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A458A48C()
{
  result = qword_1EB13DD50;
  if (!qword_1EB13DD50)
  {
    sub_1A458AFF8(255, &qword_1EB13DD58, sub_1A45844C4, MEMORY[0x1E69E6720]);
    sub_1A4583F48();
    sub_1A458A9DC(&qword_1EB13DCF0, sub_1A4583F48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DD50);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE20listHasStackBehaviorQryFQOyAA4FormVyAA7SectionVyAA4TextVAA7ForEachVyAA7BindingVySay12PhotosUICore08LemonadeN7SettingVGGAQ4KindOAA15ModifiedContentVyAWyAWyAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAJG_SbQo_AA14_PaddingLayoutVGAA21_TraitWritingModifierVyAA21ListRowInsetsTraitKeyVGGAA31AccessibilityAttachmentModifierVGGAWyAWyAjA16_FixedSizeLayoutVGAA30_EnvironmentKeyWritingModifierVySiSgGGSgGG_Qo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1A458A9DC(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1A458A61C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A458A678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A458A704(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A524BA74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A458A7BC()
{
  if (!qword_1EB13DD70)
  {
    sub_1A458A820(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DD70);
    }
  }
}

void sub_1A458A854(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A458A8C8()
{
  if (!qword_1EB13DD80)
  {
    v0 = MEMORY[0x1E69817F0];
    sub_1A458AAF8(255, &qword_1EB13DD88, MEMORY[0x1E6981138], MEMORY[0x1E69817F0]);
    sub_1A458A984(&qword_1EB13DD90, &qword_1EB13DD88, v0);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DD80);
    }
  }
}

uint64_t sub_1A458A984(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1A458AAF8(255, a2, MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A458A9DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A458AA2C@<X0>(uint64_t a1@<X8>)
{
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_1A458AAF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E6981148]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A458AB4C()
{
  result = qword_1EB13DDA0;
  if (!qword_1EB13DDA0)
  {
    sub_1A458A704(255, &qword_1EB13DD60, sub_1A458A788, sub_1A426C988);
    sub_1A458A9DC(&qword_1EB13DD98, sub_1A458A788);
    sub_1A426CA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDA0);
  }

  return result;
}

uint64_t sub_1A458AC48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1A458B6DC(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_77Tm()
{
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1A458AD14()
{
  v0 = MEMORY[0x1E6981790];
  sub_1A458B6DC(0, &qword_1EB13DDA8, &type metadata for LemonadeSettingsCurationResetButtonsView.SettingActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A458B6DC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v0);
  return sub_1A524B6B4();
}

uint64_t sub_1A458ADCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A458AE54()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4589070(v3, v4, v5, v2);
}

uint64_t sub_1A458AEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A458AF48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A458B6DC(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A458AFA4()
{
  result = qword_1EB13DDC8;
  if (!qword_1EB13DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDC8);
  }

  return result;
}

void sub_1A458AFF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A458B05C(__int128 *a1)
{
  v29 = *a1;
  v30 = a1[1];
  v31 = a1[2];
  v32 = a1[3];
  v35 = *a1;
  v36 = v30;
  v1 = a1[3];
  v37 = a1[2];
  v38 = v1;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  v3 = v2;
  MEMORY[0x1A5906C60](v33);
  v4 = v33[0];

  if (sub_1A40B1BE4(v4, 2))
  {
    *&v35 = sub_1A3C38BD4();
    *(&v35 + 1) = v5;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  MEMORY[0x1A5906C60](v33, v3);

  KeyPath = *(&v34 + 1);
  if (!*(&v34 + 1))
  {
    v18 = 0;
    v20 = 0;
    v24 = 0;
LABEL_10:
    v25 = 0;
    v27 = 0;
    v26 = 0;
    goto LABEL_11;
  }

  v7 = HIBYTE(*(&v34 + 1)) & 0xFLL;
  if ((*(&v34 + 1) & 0x2000000000000000) == 0)
  {
    v7 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v18 = 0;
    v20 = 0;
    v24 = 0;
    KeyPath = 0;
    goto LABEL_10;
  }

  v35 = v34;
  sub_1A3D5F9DC();
  v8 = sub_1A524A464();
  v10 = v9;
  v12 = v11;
  sub_1A524A254();
  v13 = sub_1A524A3C4();
  v15 = v14;
  v17 = v16;

  sub_1A3E04DF4(v8, v10, v12 & 1);

  sub_1A524B3D4();
  v18 = sub_1A524A364();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_1A3E04DF4(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v35) = v22 & 1;
  v25 = 1;
  LOBYTE(v33[0]) = 1;
  v26 = v22 & 1;
  v27 = 256;
LABEL_11:
  *&v35 = v18;
  *(&v35 + 1) = v20;
  *&v36 = v26;
  *(&v36 + 1) = v24;
  *&v37 = v27;
  *(&v37 + 1) = KeyPath;
  *&v38 = 0;
  BYTE8(v38) = v25;
  sub_1A458B6DC(0, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  sub_1A458A854(0, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
  sub_1A4581D24(0);
  sub_1A4283548();
  sub_1A458B4F4();
  sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60);
  return sub_1A524BA44();
}

unint64_t sub_1A458B41C()
{
  result = qword_1EB13DDD8;
  if (!qword_1EB13DDD8)
  {
    sub_1A45899E0();
    sub_1A4283548();
    sub_1A458B4F4();
    sub_1A45843A8(&qword_1EB13DC70, sub_1A4581D24, sub_1A426CA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDD8);
  }

  return result;
}

unint64_t sub_1A458B4F4()
{
  result = qword_1EB13DDE0;
  if (!qword_1EB13DDE0)
  {
    sub_1A458A854(255, &qword_1EB13DD20, sub_1A3FF705C, MEMORY[0x1E697CBE8]);
    v1 = MEMORY[0x1E697D6A0];
    sub_1A458AAF8(255, &qword_1EB130100, MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
    sub_1A458A984(&qword_1EB130108, &qword_1EB130100, v1);
    swift_getOpaqueTypeConformance2();
    sub_1A3D72360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDE0);
  }

  return result;
}

unint64_t sub_1A458B640()
{
  result = qword_1EB13DDE8;
  if (!qword_1EB13DDE8)
  {
    sub_1A458B6DC(255, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
    sub_1A458B72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDE8);
  }

  return result;
}

void sub_1A458B6DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A458B72C()
{
  result = qword_1EB13DDF8;
  if (!qword_1EB13DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DDF8);
  }

  return result;
}

uint64_t sub_1A458B7B4()
{
  DataSectionItemListManager.itemList.getter(&v1);
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A45840DC(0);
  sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0);
  sub_1A4584360();
  sub_1A3C3A220(&qword_1EB13DE00, &qword_1EB13DE08);
  return sub_1A524B9C4();
}

uint64_t sub_1A458B8D0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = [v3 title];
  v5 = sub_1A524C674();
  v7 = v6;

  v8 = [v3 systemImageName];
  v9 = sub_1A524C674();
  v11 = v10;

  v12 = [v3 totalSizeInBytes];
  v13 = [v3 count];

  return sub_1A4073FF8(v5, v7, v9, v11, v12, v13, a1);
}

uint64_t objectdestroy_124Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  sub_1A3D35BAC(*v3, *(v3 + 8));
  v4 = *(v2 + 20);
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A458BB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A458BC0C(_OWORD *a1, uint64_t (*a2)(void), uint64_t (*a3)(_OWORD *, uint64_t))
{
  v6 = *(*(a2(0) - 8) + 80);
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return a3(v10, v3 + ((v6 + 16) & ~v6));
}

uint64_t objectdestroy_127Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 80) & ~*(*(v2 - 8) + 80);

  sub_1A3D35BAC(*(v1 + v3), *(v1 + v3 + 8));
  v4 = *(v2 + 20);
  sub_1A458AFF8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5242D14();
    (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A458BE4C(uint64_t a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v4 = v3;
  a3(0);
  v6 = *a2;
  v7 = v4[2];
  v12 = v4[1];
  v13 = v7;
  v8 = v4[4];
  v14 = v4[3];
  v15 = v8;
  sub_1A458B6DC(0, &qword_1EB13DDF0, &type metadata for LemonadePhotosSetting, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v11);
  v9 = v11;

  v10 = sub_1A4582D04();
  sub_1A48E4BCC(v6, v10, v9);
}

unint64_t sub_1A458BF58()
{
  result = qword_1EB1C79F8[0];
  if (!qword_1EB1C79F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C79F8);
  }

  return result;
}

uint64_t Color.init(hex:)(uint64_t a1, uint64_t a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1A524B394();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52404F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-1] - v13;
  v21[0] = a1;
  v21[1] = a2;
  sub_1A5240494();
  sub_1A52404D4();
  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_1A3D5F9DC();
  sub_1A524DFB4();
  v15(v11, v8);

  v21[0] = 0;
  v16 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v17 = sub_1A524C634();
  v18 = [v16 initWithString_];

  [v18 scanHexLongLong_];
  sub_1A524C7A4();

  (*(v5 + 104))(v7, *MEMORY[0x1E69814D8], v4);
  return sub_1A524B4B4();
}

uint64_t sub_1A458C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LemonadeScrollActionHandler();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52488B4();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  sub_1A3C341C8(a2, &v10[*(v8 + 20)]);
  MEMORY[0x1A5906490](v10, a3, v8, a4);
  return sub_1A458CC04(v10, type metadata accessor for LemonadeScrollActionHandler);
}

uint64_t type metadata accessor for LemonadeScrollActionHandler()
{
  result = qword_1EB166378;
  if (!qword_1EB166378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A458C470()
{
  result = qword_1EB166390[0];
  if (!qword_1EB166390[0])
  {
    type metadata accessor for LemonadeScrollActionHandler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB166390);
  }

  return result;
}

unint64_t sub_1A458C4F0()
{
  result = sub_1A52488B4();
  if (v1 <= 0x3F)
  {
    result = sub_1A458C574();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A458C574()
{
  result = qword_1EB125698;
  if (!qword_1EB125698)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB125698);
  }

  return result;
}

uint64_t sub_1A458C5F4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LemonadeScrollActionHandler() + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = 0;
  if (v4 > 0.0)
  {
    v5 = MEMORY[0x1A5907080](0);
  }

  MEMORY[0x1EEE9AC00](v5);
  sub_1A52483D4();
}

uint64_t sub_1A458C6D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 - 8;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1A458C924();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458C9DC();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = (v3 + *(v5 + 28));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v18[1] = (*(v14 + 16))(v13, v14);
  sub_1A458CA94(v3, v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1A458CAF8(v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1A458CBBC(&qword_1EB121848, sub_1A458C924);
  sub_1A524B154();

  return sub_1A458CC04(v10, sub_1A458C924);
}

void sub_1A458C924()
{
  if (!qword_1EB121840)
  {
    sub_1A458C9DC();
    sub_1A458CBBC(&qword_1EB122268, sub_1A458C9DC);
    sub_1A458CA40();
    v0 = sub_1A524B794();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121840);
    }
  }
}

void sub_1A458C9DC()
{
  if (!qword_1EB122260)
  {
    type metadata accessor for LemonadeScrollActionHandler();
    sub_1A458C470();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122260);
    }
  }
}

unint64_t sub_1A458CA40()
{
  result = qword_1EB166530[0];
  if (!qword_1EB166530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB166530);
  }

  return result;
}

uint64_t sub_1A458CA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeScrollActionHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A458CAF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeScrollActionHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A458CB5C()
{
  v1 = *(type metadata accessor for LemonadeScrollActionHandler() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A458C5F4(v2);
}

uint64_t sub_1A458CBBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A458CC04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A458CC64()
{
  sub_1A524BE74();
  sub_1A458CA40();
  return sub_1A52488A4();
}

unint64_t sub_1A458CCD4()
{
  result = qword_1EB166520;
  if (!qword_1EB166520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB166520);
  }

  return result;
}

void sub_1A458CD28(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v36 = a2;
  v37 = a3;
  sub_1A458D1B4(0);
  v35[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v14 = v13[6];
  *(a5 + v14) = swift_getKeyPath();
  v15 = MEMORY[0x1E697DCB8];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a5 + v13[7];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v13[8];
  *(a5 + v17) = swift_getKeyPath();
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v15);
  swift_storeEnumTagMultiPayload();
  v18 = v13[9];
  *(a5 + v18) = swift_getKeyPath();
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], v15);
  swift_storeEnumTagMultiPayload();
  v19 = (a5 + v13[10]);
  *v19 = sub_1A3C38BD4();
  v19[1] = v20;
  *(a5 + v13[11]) = 0x4028000000000000;
  v21 = type metadata accessor for LemonadeShelfItem(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v12, 1, 1, v21);
  sub_1A459C5E0(v12, v9, sub_1A458D1B4);
  sub_1A524B694();
  sub_1A459C71C(v12, sub_1A458D1B4);
  v23 = a5 + v13[15];
  v39 = 0;
  v40 = 0;
  v41 = 1;
  sub_1A3E316EC(0);
  sub_1A524B694();
  v24 = v43;
  v25 = v44;
  *v23 = v42;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v26 = (a5 + v13[16]);
  v39 = 0x3F50624DD2F1A9FCLL;
  sub_1A524B694();
  *v26 = v42;
  v28 = v36;
  v27 = v37;
  *a5 = a1;
  *(a5 + 8) = v28;
  *(a5 + 16) = v27;
  *(a5 + 24) = v38 & 1;
  v29 = *(*a1 + 560);

  v31 = v29(v30);
  v32 = sub_1A4919EE8(v31, a1);

  v22(v12, 1, 1, v21);

  v33 = sub_1A3C30368();
  v34 = sub_1A491BAF8(v32, 1, a1, v12, 0, 1, v33 & 1);

  sub_1A459C71C(v12, sub_1A458D1B4);
  v39 = v34;
  sub_1A458D208(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A458D270()
{
  v17 = sub_1A5249234();
  v1 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697E730];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459BB8C(v0 + *(v12 + 36), v7, &qword_1EB128A50, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v17);
  }

  v14 = sub_1A5248684();
  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

uint64_t sub_1A458D520@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = v8;
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v9);
  sub_1A45980BC();
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_1A5249574();
  *(v12 + 1) = 0x4030000000000000;
  v12[16] = 0;
  sub_1A4599DA0();
  v14 = &v12[*(v13 + 44)];
  sub_1A458DAC8(1);
  sub_1A5249584();
  v46 = v1;
  LODWORD(v48) = 0;
  sub_1A459C77C(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  sub_1A524EE64();
  sub_1A459820C();
  sub_1A4599B30();
  sub_1A524BD94();
  v15 = sub_1A524A084();
  sub_1A5247BC4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1A4598F0C(0, &qword_1EB13DE20, sub_1A4598144);
  v25 = &v14[*(v24 + 36)];
  *v25 = v15;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  v26 = (*(**v1 + 560))();
  v27 = *(v26 + 16);
  if (v27)
  {
    v38 = v1;
    v39 = v12;
    v40 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v27, 0);
    v28 = v48;
    v29 = v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v30 = *(v41 + 72);
    do
    {
      sub_1A459C5E0(v29, v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      v31 = v47;
      sub_1A459C71C(v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v48 = v28;
      v33 = *(v28 + 16);
      v32 = *(v28 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1A3C4ED58((v32 > 1), v33 + 1, 1);
        v28 = v48;
      }

      *(v28 + 16) = v33 + 1;
      *(v28 + v33 + 32) = v31;
      v29 += v30;
      --v27;
    }

    while (v27);

    v12 = v39;
    v2 = v38;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v48 = v28;
  v34 = v44;
  sub_1A459C5E0(v2, v44, type metadata accessor for LemonadeTwoColumnsReorderView);
  v35 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v36 = swift_allocObject();
  sub_1A459B3CC(v34, v36 + v35, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A3C48B3C(0, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
  sub_1A459C77C(&qword_1EB13DFF8, sub_1A45980BC);
  sub_1A4599E4C();
  sub_1A524B154();

  return sub_1A459BA98(v12, sub_1A45980BC);
}

uint64_t sub_1A458DAC8(char a1)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v43 = *(v4 - 8);
  *&v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = sub_1A524BB64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v41 = v15;
    v42 = v14;
    v18 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
    sub_1A3D61808(v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2210], v7);
    v19 = sub_1A5242D04();
    v20 = *(v8 + 8);
    v20(v10, v7);
    v20(v13, v7);
    if (v19)
    {
      v21 = 12.0;
    }

    else
    {
      v21 = 24.0;
    }

    if (*(v2 + 24))
    {
      sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
      sub_1A524BB74();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A52FC9F0;
      v44 = xmmword_1A5317B80;
      *v17 = xmmword_1A5317B80;
      v23 = *MEMORY[0x1E697D748];
      v24 = v42;
      v25 = *(v41 + 104);
      v25(v17, v23, v42);
      sub_1A524BC04();
      sub_1A524BB84();
      *v17 = v44;
      v25(v17, v23, v24);
    }

    else
    {
      v27 = *(v2 + 8);
      v28 = sub_1A458D270();
      v29 = 0.4;
      if (v28)
      {
        v29 = 0.45;
      }

      v30 = (v27 - v21) * v29;
      v31 = v2 + *(v18 + 28);
      v32 = *v31;
      if (*(v31 + 8) == 1)
      {
        v45 = *v31;
      }

      else
      {

        sub_1A524D254();
        v33 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v32, 0);
        (*(v43 + 8))(v6, v44);
        LOBYTE(v32) = v45;
      }

      v34 = round(v30);
      v36 = v41;
      v35 = v42;
      if (v32 - 5 >= 2)
      {
        if (v32 == 4)
        {
          sub_1A43A223C();
        }

        sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
        sub_1A524BB74();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1A52FC9F0;
        v44 = xmmword_1A5317B80;
        *v17 = xmmword_1A5317B80;
        v38 = *MEMORY[0x1E697D748];
        v39 = *(v36 + 104);
        v39(v17, v38, v35);
        sub_1A524BC04();
        sub_1A524BB84();
        *v17 = v44;
        v39(v17, v38, v35);
      }

      else
      {
        sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
        sub_1A524BB74();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1A52FC9F0;
        *v17 = xmmword_1A5317B80;
        v37 = *(v36 + 104);
        v37(v17, *MEMORY[0x1E697D748], v35);
        sub_1A524BC04();
        sub_1A524BB84();
        *v17 = v34;
        v37(v17, *MEMORY[0x1E697D728], v35);
        sub_1A524BC04();
      }
    }
  }

  else
  {
    sub_1A459C4E8(0, &qword_1EB131870, MEMORY[0x1E697D750], MEMORY[0x1E69E6F90]);
    sub_1A524BB74();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A52F8E10;
    *v17 = xmmword_1A5317B80;
    (*(v15 + 104))(v17, *MEMORY[0x1E697D748], v14);
  }

  sub_1A524BB84();
  return v22;
}

uint64_t sub_1A458E484(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 64));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A459C5E0(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeTwoColumnsReorderView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A459B3CC(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A458D23C(0);
  sub_1A459B878(0, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
  sub_1A459C77C(&qword_1EB13DFB0, sub_1A458D23C);
  sub_1A4599ADC();
  sub_1A4599BA8();
  return sub_1A524B9B4();
}

uint64_t sub_1A458E6E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v165 = a2;
  v163 = a3;
  sub_1A459984C(0);
  v164 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v156 = v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v143 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  *&v145 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v158 = v133 - v8;
  v9 = type metadata accessor for LemonadeShelfItem(0);
  v139 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v142 = v10;
  v157 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B3AC(0);
  v138 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v135 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v133 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v133 - v20;
  sub_1A4598388();
  v23 = v22;
  v141 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4599A50(0, &qword_1EB13DFA8, sub_1A4598360, sub_1A459974C);
  v151 = v26;
  v150 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v146 = v133 - v27;
  sub_1A459995C();
  v153 = v28;
  v152 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v149 = v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4599914(0);
  v148 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v154 = v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v147 = v133 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v155 = v133 - v35;
  sub_1A459B878(0, &qword_1EB13E020, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F948]);
  v159 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v162 = v133 - v37;
  sub_1A4598360(0);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v140 = v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v133 - v42;
  sub_1A4598318(0);
  v160 = v44;
  v137 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v136 = v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A3D65C4C();
  v167 = v39;
  if (v46)
  {
    v47 = v165;
    sub_1A458FC5C(a1, v43);
    *&v43[*(v39 + 36)] = 0x3F50624DD2F1A9FCLL;
    sub_1A459C4E8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    sub_1A5246D14();
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_1A52F8E10;
    sub_1A5246CB4();
    v48 = *v47;
    v49 = type metadata accessor for DropViewDelegate(0);
    v174 = v49;
    v175 = sub_1A459B520();
    v50 = __swift_allocate_boxed_opaque_existential_1(&v172);
    sub_1A459C5E0(a1, v50 + v49[5], type metadata accessor for LemonadeShelfItem);
    v51 = v166;
    v52 = MEMORY[0x1E6981790];
    sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

    sub_1A524B6C4();
    v53 = (v47 + *(v51 + 52));
    v55 = *v53;
    v54 = v53[1];
    v170 = v55;
    v171 = v54;
    sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, v52);
    sub_1A524B6C4();
    v56 = v168;
    sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v52);
    v161 = v169;
    v57 = (v47 + *(v51 + 56));
    v59 = *v57;
    v58 = v57[1];
    v170 = v59;
    v171 = v58;
    sub_1A524B6C4();
    v60 = v168;
    v61 = v169;
    *v50 = v48;
    v62 = v50 + v49[7];
    *v62 = v56;
    *(v62 + 8) = v161;
    v63 = v50 + v49[8];
    *v63 = v60;
    *(v63 + 8) = v61;
    v64 = sub_1A459974C();
    v65 = v136;
    v66 = v167;
    sub_1A524B044();

    sub_1A459BA98(v43, sub_1A4598360);
    __swift_destroy_boxed_opaque_existential_0(&v172);
    v67 = v137;
    v68 = v160;
    (*(v137 + 16))(v162, v65, v160);
    swift_storeEnumTagMultiPayload();
    v172 = v66;
    v173 = v64;
    swift_getOpaqueTypeConformance2();
    sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C);
    sub_1A5249744();
    return (*(v67 + 8))(v65, v68);
  }

  v137 = v23;
  v136 = v25;
  v70 = v165;
  sub_1A458FC5C(a1, v25);
  *&v161 = a1;
  sub_1A459C5E0(a1, v21, type metadata accessor for LemonadeShelfItem);
  v71 = v139;
  (*(v139 + 7))(v21, 0, 1, v9);
  v72 = v70 + *(v166 + 48);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  v133[1] = v73;
  v133[2] = v72;
  sub_1A524B6A4();
  v74 = *(v138 + 48);
  sub_1A459C5E0(v21, v13, sub_1A458D1B4);
  sub_1A459C5E0(v18, &v13[v74], sub_1A458D1B4);
  v75 = v71;
  v76 = *(v71 + 6);
  v77 = v76(v13, 1, v9);
  v134 = v9;
  if (v77 == 1)
  {
    sub_1A459C71C(v18, sub_1A458D1B4);
    sub_1A459C71C(v21, sub_1A458D1B4);
    v78 = v76(&v13[v74], 1, v9);
    v79 = v137;
    v80 = v141;
    v81 = v136;
    if (v78 == 1)
    {
      sub_1A459C71C(v13, sub_1A458D1B4);
      v82 = v165;
      v83 = v161;
LABEL_10:
      v88 = (v82 + *(v166 + 64));
      v89 = *v88;
      v90 = v88[1];
      v172 = v89;
      v173 = v90;
      sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v85 = v168;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v84 = v135;
  sub_1A459C5E0(v13, v135, sub_1A458D1B4);
  if (v76(&v13[v74], 1, v9) == 1)
  {
    sub_1A459C71C(v18, sub_1A458D1B4);
    sub_1A459C71C(v21, sub_1A458D1B4);
    sub_1A459C71C(v84, type metadata accessor for LemonadeShelfItem);
    v79 = v137;
    v80 = v141;
    v81 = v136;
LABEL_8:
    sub_1A459C71C(v13, sub_1A459B3AC);
    v85 = 1.0;
    v82 = v165;
    v83 = v161;
    goto LABEL_11;
  }

  v86 = v157;
  sub_1A459B3CC(&v13[v74], v157, type metadata accessor for LemonadeShelfItem);
  sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
  v87 = sub_1A524C594();
  sub_1A459C71C(v86, type metadata accessor for LemonadeShelfItem);
  sub_1A459C71C(v18, sub_1A458D1B4);
  sub_1A459C71C(v21, sub_1A458D1B4);
  sub_1A459C71C(v84, type metadata accessor for LemonadeShelfItem);
  sub_1A459C71C(v13, sub_1A458D1B4);
  v85 = 1.0;
  v82 = v165;
  v83 = v161;
  v79 = v137;
  v80 = v141;
  v81 = v136;
  if (v87)
  {
    goto LABEL_10;
  }

LABEL_11:
  v91 = v140;
  (*(v80 + 32))(v140, v81, v79);
  *(v91 + *(v167 + 36)) = v85;
  v92 = v158;
  v165 = type metadata accessor for LemonadeTwoColumnsReorderView;
  sub_1A459C5E0(v82, v158, type metadata accessor for LemonadeTwoColumnsReorderView);
  v139 = type metadata accessor for LemonadeShelfItem;
  v93 = v157;
  sub_1A459C5E0(v83, v157, type metadata accessor for LemonadeShelfItem);
  v94 = *(v143 + 80);
  v95 = (v94 + 16) & ~v94;
  v96 = v94 | 7;
  v97 = *(v75 + 80);
  v144 += v95;
  v98 = (v144 + v97) & ~v97;
  v143 = v96;
  v99 = swift_allocObject();
  v141 = v95;
  v142 = type metadata accessor for LemonadeTwoColumnsReorderView;
  sub_1A459B3CC(v92, v99 + v95, type metadata accessor for LemonadeTwoColumnsReorderView);
  sub_1A459B3CC(v93, v99 + v98, type metadata accessor for LemonadeShelfItem);
  v100 = v145;
  sub_1A459C5E0(v82, v145, type metadata accessor for LemonadeTwoColumnsReorderView);
  v101 = swift_allocObject();
  v102 = v82;
  sub_1A459B3CC(v100, v101 + v95, type metadata accessor for LemonadeTwoColumnsReorderView);
  v157 = sub_1A459974C();
  v103 = v146;
  sub_1A524B034();

  sub_1A459BA98(v91, sub_1A4598360);
  sub_1A459C4E8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1A5246D14();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A5246CB4();
  v104 = v166;
  v105 = *v102;
  v106 = type metadata accessor for DropViewDelegate(0);
  v174 = v106;
  v175 = sub_1A459B520();
  v107 = __swift_allocate_boxed_opaque_existential_1(&v172);
  sub_1A459C5E0(v161, v107 + v106[5], v139);

  sub_1A524B6C4();
  v108 = (v102 + *(v104 + 52));
  v110 = *v108;
  v109 = v108[1];
  v170 = v110;
  v171 = v109;
  v111 = MEMORY[0x1E6981790];
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v112 = v168;
  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v111);
  v145 = v169;
  v113 = (v102 + *(v104 + 56));
  v115 = *v113;
  v114 = v113[1];
  v170 = v115;
  v171 = v114;
  sub_1A524B6C4();
  v117 = v167;
  v116 = v168;
  v118 = v169;
  *v107 = v105;
  v119 = v157;
  v120 = v107 + v106[7];
  *v120 = v112;
  *(v120 + 8) = v145;
  v121 = v107 + v106[8];
  *v121 = v116;
  *(v121 + 8) = v118;
  v168 = *&v117;
  *&v169 = v119;
  swift_getOpaqueTypeConformance2();
  v122 = v149;
  v123 = v151;
  sub_1A524B044();

  (*(v150 + 8))(v103, v123);
  __swift_destroy_boxed_opaque_existential_0(&v172);
  v124 = v158;
  sub_1A459C5E0(v102, v158, v165);
  v125 = swift_allocObject();
  sub_1A459B3CC(v124, v125 + v141, v142);
  v126 = v147;
  (*(v152 + 32))(v147, v122, v153);
  v127 = (v126 + *(v148 + 36));
  *v127 = sub_1A410AEF4;
  v127[1] = 0;
  v127[2] = sub_1A459B578;
  v127[3] = v125;
  v128 = v155;
  sub_1A459B810(v126, v155, sub_1A4599914);
  v129 = 0;
  if (sub_1A40B1BE4(*(v161 + *(v134 + 28)), 0))
  {
    v129 = sub_1A524B414();
  }

  v130 = v154;
  sub_1A459B650(v128, v154, sub_1A4599914);
  v131 = v156;
  sub_1A459B650(v130, v156, sub_1A4599914);
  sub_1A4599880();
  *(v131 + *(v132 + 48)) = v129;
  sub_1A459BA98(v130, sub_1A4599914);
  sub_1A459B650(v131, v162, sub_1A459984C);
  swift_storeEnumTagMultiPayload();
  v172 = v117;
  v173 = v119;
  swift_getOpaqueTypeConformance2();
  sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C);
  sub_1A5249744();

  sub_1A459BA98(v131, sub_1A459984C);
  return sub_1A459BA98(v128, sub_1A4599914);
}

uint64_t sub_1A458FC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v62 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51[-v11];
  sub_1A459855C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4598534(0);
  v55 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45984EC(0);
  v56 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A45984A4(0);
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v51[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459845C(0);
  v59 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v51[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v15 = sub_1A524BC74();
  v15[1] = v25;
  sub_1A459B764();
  sub_1A4590ED8(a1, v3, v15 + *(v26 + 44));
  v27 = type metadata accessor for LemonadeShelfItem(0);
  if (sub_1A40B1BE4(*(a1 + *(v27 + 28)), 0) && (*(v3 + 24) & 1) == 0)
  {
    v52 = 0;
    v53 = *(v3 + 8);
  }

  else
  {
    v53 = 0;
    v52 = 1;
  }

  v28 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A3D61808(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2210], v6);
  v29 = sub_1A5242D04();
  v30 = *(v7 + 8);
  v30(v9, v6);
  v30(v12, v6);
  if (v29)
  {
    sub_1A458D270();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A459B810(v15, v18, sub_1A459855C);
  v31 = &v18[*(v55 + 36)];
  v32 = v65;
  *v31 = v64;
  v31[1] = v32;
  v31[2] = v66;
  v33 = sub_1A524A064();
  v34 = v57;
  sub_1A459B810(v18, v57, sub_1A4598534);
  v35 = &v34[*(v56 + 36)];
  *v35 = 2;
  v35[8] = v33;
  v36 = *(v3 + *(v28 + 44));
  v37 = v58;
  v38 = &v58[*(v54 + 36)];
  v39 = v62;
  v40 = *(v62 + 20);
  v41 = *MEMORY[0x1E697F468];
  v42 = sub_1A52494A4();
  v43 = *(*(v42 - 8) + 104);
  v43(&v38[v40], v41, v42);
  *v38 = v36;
  *(v38 + 1) = v36;
  sub_1A3E42C88();
  *&v38[*(v44 + 36)] = 256;
  sub_1A459B810(v34, v37, sub_1A45984EC);
  v45 = v60;
  v46 = &v60[*(v59 + 36)];
  sub_1A45993F8();
  v48 = v47;
  sub_1A5248B34();
  v43(&v46[*(v39 + 20)], v41, v42);
  *v46 = v36;
  *(v46 + 1) = v36;
  v46[*(v48 + 36)] = 0;
  sub_1A459B810(v37, v45, sub_1A45984A4);
  v49 = v61;
  v43(&v61[*(v39 + 20)], v41, v42);
  *v49 = v36;
  v49[1] = v36;
  sub_1A459948C();
  sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
  sub_1A524A5B4();
  sub_1A459C71C(v49, MEMORY[0x1E697EAF0]);
  return sub_1A459BA98(v45, sub_1A459845C);
}

id sub_1A4590298()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696ACA0]);

  return [v0 init];
}

uint64_t sub_1A45902D0(uint64_t a1, uint64_t a2)
{
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  sub_1A459C5E0(a2, v16 - v8, type metadata accessor for LemonadeShelfItem);
  v10 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C5E0(v9, v6, sub_1A458D1B4);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A459C71C(v9, sub_1A458D1B4);
  v12 = (a1 + *(v11 + 64));
  v13 = *v12;
  v14 = v12[1];
  v16[2] = v13;
  v16[3] = v14;
  v16[1] = 0x3F50624DD2F1A9FCLL;
  sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A45904CC(uint64_t a1)
{
  v2 = sub_1A5249DE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v12 = type metadata accessor for LemonadeShelfItem(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_1A459C71C(v11, sub_1A458D1B4);
  if (v13 != 1)
  {
    sub_1A524BCE4();
    sub_1A524BCD4();

    MEMORY[0x1EEE9AC00](v15);
    *&v18[-16] = a1;
    sub_1A459C5E0(a1, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LemonadeTwoColumnsReorderView);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_1A459B3CC(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16, type metadata accessor for LemonadeTwoColumnsReorderView);
    sub_1A5249DD4();
    sub_1A52483C4();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1A4590820()
{
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C5E0(v5, v2, sub_1A458D1B4);
  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A459C71C(v5, sub_1A458D1B4);
}

uint64_t sub_1A4590980(unint64_t *a1)
{
  sub_1A458D1B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = (*(**a1 + 560))(v3);
  v8 = sub_1A4919EE8(v7, v6);

  v9 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_1A3C30368();
  v11 = sub_1A491BAF8(v8, 1, v6, v5, 0, 1, v10 & 1);

  sub_1A459C71C(v5, sub_1A458D1B4);
  v12 = (a1 + *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 52));
  v14 = *v12;
  v13 = v12[1];
  v16[2] = v14;
  v16[3] = v13;
  v16[1] = v11;
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A4590B48();
}

uint64_t sub_1A4590B48()
{
  v1 = sub_1A524BEE4();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3C29A58();
  v10 = sub_1A524D474();
  sub_1A459C5E0(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeTwoColumnsReorderView);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1A459B3CC(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for LemonadeTwoColumnsReorderView);
  aBlock[4] = sub_1A459B1F4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_214;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A459C77C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A459C77C(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v16 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v15);
}

uint64_t sub_1A4590ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v119 = a3;
  v120 = a2;
  v112 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v101 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v102 = v4;
  v103 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeShelfItem(0);
  v97 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = v6;
  v99 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459876C();
  v116 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v100 = (&v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4598724(0);
  v117 = v9;
  v105 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459862C();
  v118 = v11;
  v107 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v16 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B878(0, &qword_1EB13E038, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F948]);
  v113 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v95 - v19;
  v20 = sub_1A5242D14();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  sub_1A3F1D27C();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4598604(0);
  v114 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v109 = &v95 - v35;
  v111 = a1;
  if (sub_1A3D65C4C())
  {
    v36 = *(sub_1A5248A14() + 20);
    v37 = *MEMORY[0x1E697F468];
    v38 = sub_1A52494A4();
    (*(*(v38 - 8) + 104))(&v30[v36], v37, v38);
    __asm { FMOV            V0.2D, #20.0 }

    *v30 = _Q0;
    *&v30[*(v28 + 52)] = sub_1A524B3E4();
    *&v30[*(v28 + 56)] = 256;
    sub_1A3D61808(v26);
    (*(v21 + 104))(v23, *MEMORY[0x1E69C2210], v20);
    LOBYTE(v37) = sub_1A5242D04();
    v44 = *(v21 + 8);
    v44(v23, v20);
    v44(v26, v20);
    if (v37)
    {
      sub_1A458D270();
    }

    sub_1A524BC74();
    sub_1A52481F4();
    sub_1A459B3CC(v30, v33, sub_1A3F1D27C);
    v87 = &v33[*(v114 + 36)];
    v88 = v127;
    *v87 = v126;
    *(v87 + 1) = v88;
    *(v87 + 2) = v128;
    v89 = v109;
    sub_1A459B3CC(v33, v109, sub_1A4598604);
    sub_1A459C5E0(v89, v115, sub_1A4598604);
    swift_storeEnumTagMultiPayload();
    sub_1A45991B4();
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724);
    v91 = v90;
    v92 = sub_1A4598DB8();
    v121 = v116;
    v122 = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v94 = sub_1A4598F70();
    v121 = v117;
    v122 = v91;
    v123 = OpaqueTypeConformance2;
    v124 = v94;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return sub_1A459C71C(v89, sub_1A4598604);
  }

  else
  {
    v95 = v23;
    v96 = v21;
    v109 = v20;
    v45 = v120;
    sub_1A4919C18(v15);
    result = (*(v16 + 48))(v15, 1, v108);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1A459B3CC(v15, v110, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C53294(&v121);
      v47 = v124;
      v48 = v125;
      __swift_project_boxed_opaque_existential_1(&v121, v124);
      v49 = *(v48 + 32);
      *(&v127 + 1) = swift_getAssociatedTypeWitness();
      *&v128 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v126);
      v49(v47, v48);
      __swift_destroy_boxed_opaque_existential_0(&v121);
      v50 = sub_1A5249314();
      v51 = v100;
      *v100 = v50;
      *(v51 + 8) = 0;
      *(v51 + 16) = 1;
      sub_1A459B8FC(0, &qword_1EB13E040, sub_1A45988C4);
      v53 = v111;
      sub_1A4591C8C(v45, &v126, v51 + *(v52 + 44));
      v54 = sub_1A524A054();
      sub_1A5247BC4();
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;
      sub_1A4598F0C(0, &qword_1EB13DEA8, sub_1A4598830);
      v64 = v51 + *(v63 + 36);
      *v64 = v54;
      *(v64 + 8) = v56;
      *(v64 + 16) = v58;
      *(v64 + 24) = v60;
      *(v64 + 32) = v62;
      *(v64 + 40) = 0;
      v65 = v116;
      *(v51 + *(v116 + 36)) = 0;
      v66 = v53;
      v67 = v99;
      sub_1A459C5E0(v66, v99, type metadata accessor for LemonadeShelfItem);
      v68 = v103;
      sub_1A459C5E0(v45, v103, type metadata accessor for LemonadeTwoColumnsReorderView);
      v69 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v70 = (v98 + *(v101 + 80) + v69) & ~*(v101 + 80);
      v71 = swift_allocObject();
      sub_1A459B3CC(v67, v71 + v69, type metadata accessor for LemonadeShelfItem);
      sub_1A459B3CC(v68, v71 + v70, type metadata accessor for LemonadeTwoColumnsReorderView);
      v72 = sub_1A4598DB8();
      v73 = v104;
      sub_1A524AA84();

      sub_1A459BA98(v51, sub_1A459876C);
      v74 = v26;
      sub_1A3D61808(v26);
      v75 = v96;
      v76 = v95;
      v77 = v109;
      (*(v96 + 104))(v95, *MEMORY[0x1E69C2210], v109);
      sub_1A5242D04();
      v78 = *(v75 + 8);
      v78(v76, v77);
      v78(v74, v77);
      sub_1A4598F0C(0, &qword_1EB13DF28, sub_1A4598724);
      v80 = v79;
      v121 = v65;
      v122 = v72;
      v81 = swift_getOpaqueTypeConformance2();
      v82 = sub_1A4598F70();
      v83 = v106;
      v84 = v117;
      sub_1A524A584();
      (*(v105 + 8))(v73, v84);
      v85 = v107;
      v86 = v118;
      (*(v107 + 16))(v115, v83, v118);
      swift_storeEnumTagMultiPayload();
      sub_1A45991B4();
      v121 = v84;
      v122 = v80;
      v123 = v81;
      v124 = v82;
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      (*(v85 + 8))(v83, v86);
      sub_1A459C71C(v110, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      return __swift_destroy_boxed_opaque_existential_0(&v126);
    }
  }

  return result;
}

uint64_t sub_1A4591C8C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v46 = a3;
  sub_1A45989CC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A459B8FC(0, &qword_1EB13E048, sub_1A4598AAC);
  sub_1A45920D4(a1, &v9[*(v10 + 44)]);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v57 = (*(v12 + 24))(v11, v12);
  v58 = v13;
  sub_1A3D5F9DC();
  v14 = sub_1A524A464();
  v16 = v15;
  v18 = v17;
  sub_1A524A0F4();
  sub_1A524A164();
  sub_1A524A1F4();

  v19 = sub_1A524A3C4();
  v42 = v20;
  v22 = v21;
  v44 = v23;

  sub_1A3E04DF4(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v45 = KeyPath;
  LOBYTE(v12) = v22 & 1;
  LOBYTE(v57) = v22 & 1;
  LOBYTE(v53) = 0;
  LODWORD(v16) = sub_1A52499F4();
  v43 = sub_1A5249574();
  v25 = sub_1A524B544();
  v26 = sub_1A524B3D4();
  v27 = swift_getKeyPath();
  v28 = v47;
  sub_1A459B650(v9, v47, sub_1A45989CC);
  v29 = v28;
  v30 = v46;
  sub_1A459B650(v29, v46, sub_1A45989CC);
  sub_1A45988F8();
  v32 = (v30 + v31[12]);
  v33 = v30;
  v34 = v42;
  *&v53 = v19;
  *(&v53 + 1) = v42;
  LOBYTE(v54) = v12;
  *(&v54 + 1) = *v50;
  DWORD1(v54) = *&v50[3];
  v35 = v44;
  *(&v54 + 1) = v44;
  LOWORD(v55) = 256;
  *(&v55 + 2) = v48;
  WORD3(v55) = v49;
  *(&v55 + 1) = KeyPath;
  *&v56 = 2;
  BYTE8(v56) = 0;
  BYTE11(v56) = v52;
  *(&v56 + 9) = v51;
  HIDWORD(v56) = v16;
  v36 = v53;
  v37 = v54;
  v38 = v56;
  v32[2] = v55;
  v32[3] = v38;
  *v32 = v36;
  v32[1] = v37;
  v39 = v33 + v31[16];
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v33 + v31[20];
  *v40 = v43;
  *(v40 + 8) = 0;
  *(v40 + 16) = 1;
  *(v40 + 24) = v25;
  *(v40 + 32) = v27;
  *(v40 + 40) = v26;
  sub_1A459C5E0(&v53, &v57, sub_1A4598D98);

  sub_1A459BA98(v9, sub_1A45989CC);

  v57 = v19;
  v58 = v34;
  v59 = v12;
  *v60 = *v50;
  *&v60[3] = *&v50[3];
  v61 = v35;
  v62 = 256;
  v63 = v48;
  v64 = v49;
  v65 = v45;
  v66 = 2;
  v67 = 0;
  v69 = v52;
  v68 = v51;
  v70 = v16;
  sub_1A459C71C(&v57, sub_1A4598D98);
  return sub_1A459BA98(v47, sub_1A45989CC);
}

uint64_t sub_1A45920D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = sub_1A524B5B4();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v39 - v9;
  sub_1A4598B6C(0);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4919C18(v15);
  v53 = a1;
  sub_1A4592628(sub_1A459BAF8);
  sub_1A459C71C(v15, sub_1A40A4670);
  v42 = sub_1A524B544();
  v16 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 32);
  v51 = a1;
  sub_1A3D61808(v10);
  v17 = *(v5 + 104);
  v48 = *MEMORY[0x1E69C2210];
  v49 = v17;
  v50 = v5 + 104;
  v17(v7);
  v18 = sub_1A5242D04();
  v21 = *(v5 + 8);
  v20 = v5 + 8;
  v19 = v21;
  v22 = v7;
  v21(v7, v4);
  v23 = v10;
  v24 = v4;
  v21(v10, v4);
  if (v18)
  {
    v25 = sub_1A524B434();
  }

  else
  {
    v25 = sub_1A524B3C4();
  }

  v41 = v25;
  KeyPath = swift_getKeyPath();
  sub_1A3D61808(v10);
  v49(v22, v48, v4);
  v26 = sub_1A5242D04();
  v39[2] = v20;
  v27 = v19;
  v19(v22, v4);
  v19(v10, v4);
  v39[1] = v16;
  v29 = v43;
  v28 = v44;
  v30 = MEMORY[0x1E69816E0];
  if ((v26 & 1) == 0)
  {
    v30 = MEMORY[0x1E69816C8];
  }

  v31 = v46;
  (*(v44 + 104))(v43, *v30, v46);
  v32 = swift_getKeyPath();
  v33 = v45;
  v34 = (v45 + *(v52 + 36));
  sub_1A3F32A14(0);
  (*(v28 + 32))(v34 + *(v35 + 28), v29, v31);
  *v34 = v32;
  v37 = KeyPath;
  v36 = v41;
  *v33 = v42;
  v33[1] = v37;
  v33[2] = v36;
  sub_1A3D61808(v23);
  v49(v22, v48, v24);
  sub_1A5242D04();
  v27(v22, v24);
  v27(v23, v24);
  sub_1A4598BB4(0, &qword_1EB13DEE0, sub_1A4598B6C);
  sub_1A4598C4C();
  sub_1A4598CFC();
  sub_1A524A584();
  return sub_1A459C71C(v33, sub_1A4598B6C);
}

uint64_t sub_1A4592628(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C5E0(v1, v10, sub_1A40A4670);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  sub_1A459B3CC(v10, v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  a1(&v13, v7);
  if (v2)
  {
    result = sub_1A459C71C(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    __break(1u);
  }

  else
  {
    sub_1A459C71C(v7, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    return v13;
  }

  return result;
}

void sub_1A45927FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249A14();
  sub_1A459C5E0(a1, a2, sub_1A4598B6C);
  sub_1A4598BB4(0, &qword_1EB13DEE0, sub_1A4598B6C);
  *(a2 + *(v5 + 36)) = v4;
}

uint64_t sub_1A459287C(uint64_t a1, uint64_t a2)
{
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4919C18(v6);
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    return sub_1A459C71C(v6, sub_1A40A4670);
  }

  sub_1A3C5322C();
  sub_1A459C71C(v6, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  (*(**a2 + 520))(&v10);
  return sub_1A45929D8(a1);
}

uint64_t sub_1A45929D8(uint64_t a1)
{
  v2 = v1;
  sub_1A458D1B4(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = (*(**v1 + 560))(v5);
  v10 = sub_1A4919EE8(v9, v8);

  sub_1A459C5E0(a1, v7, type metadata accessor for LemonadeShelfItem);
  v11 = type metadata accessor for LemonadeShelfItem(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = sub_1A3C30368();
  v13 = sub_1A491BAF8(v10, 1, v8, v7, 0, 1, v12 & 1);

  sub_1A459C71C(v7, sub_1A458D1B4);
  v14 = (v2 + *(type metadata accessor for LemonadeTwoColumnsReorderView(0) + 52));
  v16 = v14[1];
  v20 = *v14;
  v15 = v20;
  v21 = v16;
  v19 = v13;
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v20 = v15;
  v21 = v16;
  sub_1A524B6A4();
  sub_1A491AB70(v19, v8);

  return sub_1A4590B48();
}

void sub_1A4592BF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A064();
  sub_1A5247BC4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1A4598724(0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1A4598F0C(0, &qword_1EB13DF28, sub_1A4598724);
  v15 = a2 + *(v14 + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
}

uint64_t sub_1A4592CD4()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = v85 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v93 = v85 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v90 = v85 - v10;
  sub_1A459B3AC(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85[1] = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = v85 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v85[0] = v85 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v86 = v85 - v22;
  MEMORY[0x1EEE9AC00](v23);
  *&v96 = v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v85 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v85 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v85 - v32;
  v34 = type metadata accessor for DropViewDelegate(0);
  v35 = *(v34 + 24);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  v94 = v36;
  v95 = v35;
  MEMORY[0x1A5906C60]();
  v37 = *(v34 + 20);
  v99 = v1;
  v91 = v37;
  v92 = v34;
  sub_1A459C5E0(v1 + v37, v30, type metadata accessor for LemonadeShelfItem);
  v88 = *(v3 + 56);
  v89 = v3 + 56;
  v88(v30, 0, 1, v2);
  v38 = *(v12 + 56);
  sub_1A459C5E0(v33, v14, sub_1A458D1B4);
  sub_1A459C5E0(v30, &v14[v38], sub_1A458D1B4);
  v39 = *(v3 + 48);
  if (v39(v14, 1, v2) != 1)
  {
    sub_1A459C5E0(v14, v27, sub_1A458D1B4);
    if (v39(&v14[v38], 1, v2) != 1)
    {
      v66 = v90;
      sub_1A459B3CC(&v14[v38], v90, type metadata accessor for LemonadeShelfItem);
      sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
      v67 = sub_1A524C594();
      sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
      sub_1A459C71C(v30, sub_1A458D1B4);
      sub_1A459C71C(v33, sub_1A458D1B4);
      sub_1A459C71C(v27, type metadata accessor for LemonadeShelfItem);
      result = sub_1A459C71C(v14, sub_1A458D1B4);
      if (v67)
      {
        return result;
      }

LABEL_7:
      v41 = v99;
      v42 = v96;
      MEMORY[0x1A5906C60](v94);
      if (v39(v42, 1, v2) == 1)
      {
        v40 = v42;
        return sub_1A459C71C(v40, sub_1A458D1B4);
      }

      v95 = v2;
      v43 = v93;
      sub_1A459B3CC(v42, v93, type metadata accessor for LemonadeShelfItem);
      sub_1A459C5E0(v43, v98, type metadata accessor for LemonadeShelfItem);
      v44 = v91;
      sub_1A459C5E0(v41 + v91, v97, type metadata accessor for LemonadeShelfItem);
      v45 = sub_1A4593DC0(v43);
      v47 = v46;
      v48 = sub_1A4593DC0(v41 + v44);
      v50 = v49;
      sub_1A3C48B3C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v51 = swift_allocObject();
      v96 = xmmword_1A52F8E10;
      *(v51 + 16) = xmmword_1A52F8E10;
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1A524E404();

      v101 = 0xD000000000000013;
      v102 = 0x80000001A53DDC70;
      v52 = v45;
      v100 = v45;
      v53 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v53);

      MEMORY[0x1A5907B60](0x203A6F74203E3D20, 0xE800000000000000);
      v100 = v48;
      v54 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v54);

      v55 = v101;
      v56 = v102;
      v57 = MEMORY[0x1E69E6158];
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 32) = v55;
      *(v51 + 40) = v56;
      sub_1A524E334();

      if (v47)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = v96;
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_1A524E404();

        v101 = 0xD000000000000010;
        v102 = 0x80000001A53DDC90;
        v100 = v52;
        v59 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v59);

        MEMORY[0x1A5907B60](0x203A6F74203E3D20, 0xE800000000000000);
        v100 = v48;
        v60 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v60);

        v61 = v101;
        v62 = v102;
        *(v58 + 56) = v57;
        *(v58 + 32) = v61;
        *(v58 + 40) = v62;
        sub_1A524E334();

        v63 = (v99 + *(v92 + 28));
        v64 = v63[1];
        v65 = v63[2];
        v101 = *v63;
        v102 = v64;
        v103 = v65;
        sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if ((v47 & 0x100) != 0)
      {
        v69 = v99;
        v70 = v97;
        if ((v50 & 1) == 0)
        {
          if ((sub_1A3D65C4C() & 1) == 0)
          {
            if ((v50 & 0x100) != 0)
            {
              v77 = v86;
              sub_1A459C5E0(v70, v86, type metadata accessor for LemonadeShelfItem);
              v88(v77, 0, 1, v95);
              v78 = (v69 + *(v92 + 28));
              v79 = v78[1];
              v80 = v78[2];
              v101 = *v78;
              v102 = v79;
              v103 = v80;
              sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v71 = v98;
            v72 = v70;
            v73 = 0;
LABEL_22:
            sub_1A45950C0(v71, v72, v73);
          }

LABEL_21:
          v73 = (v50 >> 8) & 1;
          v71 = v98;
          v72 = v70;
          goto LABEL_22;
        }
      }

      else
      {
        v69 = v99;
        v70 = v97;
        if ((v50 & 1) == 0)
        {
          if ((sub_1A3D65C4C() & 1) == 0)
          {
            if ((v50 & 0x100) == 0)
            {
              v81 = v87;
              sub_1A459C5E0(v70, v87, type metadata accessor for LemonadeShelfItem);
              v88(v81, 0, 1, v95);
              v82 = (v69 + *(v92 + 28));
              v83 = v82[1];
              v84 = v82[2];
              v101 = *v82;
              v102 = v83;
              v103 = v84;
              sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

              _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
            }

            v71 = v98;
            v72 = v70;
            v73 = 1;
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      v74 = (v69 + *(v92 + 28));
      v75 = v74[1];
      v76 = v74[2];
      v101 = *v74;
      v102 = v75;
      v103 = v76;
      sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A459C71C(v30, sub_1A458D1B4);
    sub_1A459C71C(v33, sub_1A458D1B4);
    sub_1A459C71C(v27, type metadata accessor for LemonadeShelfItem);
LABEL_6:
    sub_1A459C71C(v14, sub_1A459B3AC);
    goto LABEL_7;
  }

  sub_1A459C71C(v30, sub_1A458D1B4);
  sub_1A459C71C(v33, sub_1A458D1B4);
  if (v39(&v14[v38], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  v40 = v14;
  return sub_1A459C71C(v40, sub_1A458D1B4);
}

uint64_t sub_1A4593DC0(uint64_t a1)
{
  v131 = a1;
  sub_1A459C448(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v99 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v99 - v5;
  v6 = type metadata accessor for LemonadeShelfItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459B3AC(0);
  v130 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v99 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v99 - v14;
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v99 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  v29 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459C47C();
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v112 = (&v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v123 = &v99 - v39;
  v40 = (v1 + *(type metadata accessor for DropViewDelegate(0) + 28));
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v106 = v41;
  v135 = v41;
  v136 = v42;
  v105 = v42;
  v104 = v43;
  v137 = v43;
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  v103 = v44;
  result = MEMORY[0x1A5906C60](&v134);
  v46 = 0;
  v114 = v134;
  v47 = *(v134 + 16);
  v121 = (v33 + 48);
  v122 = (v33 + 56);
  v129 = (v7 + 56);
  v48 = (v7 + 48);
  v124 = v6;
  v125 = v28;
  v120 = (v7 + 48);
  v126 = v37;
  v115 = v47;
  v108 = v15;
  v119 = v29;
  v116 = v32;
  while (1)
  {
    if (v46 == v47)
    {
      v49 = 1;
      v46 = v47;
    }

    else
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      if (v46 >= *(v114 + 16))
      {
        goto LABEL_46;
      }

      v50 = v114 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v46;
      v51 = *(v32 + 48);
      v52 = v112;
      *v112 = v46;
      sub_1A459C5E0(v50, v52 + v51, type metadata accessor for LemonadeTwoShelfItemsRow);
      v53 = v52;
      v37 = v126;
      sub_1A459B3CC(v53, v126, sub_1A459C47C);
      v49 = 0;
      ++v46;
    }

    v54 = v123;
    (*v122)(v37, v49, 1, v32);
    sub_1A459C54C(v37, v54);
    if ((*v121)(v54, 1, v32) == 1)
    {

      goto LABEL_35;
    }

    v55 = *v54;
    v56 = v54 + *(v32 + 48);
    v57 = v133;
    sub_1A459B3CC(v56, v133, type metadata accessor for LemonadeTwoShelfItemsRow);
    v58 = v6;
    v59 = *(v29 + 20);
    sub_1A459C5E0(v131, v28, type metadata accessor for LemonadeShelfItem);
    v127 = *v129;
    v127(v28, 0, 1, v58);
    v60 = *(v130 + 48);
    v117 = v59;
    v61 = &v57[v59];
    v6 = v58;
    sub_1A459C5E0(v61, v15, sub_1A458D1B4);
    sub_1A459C5E0(v28, &v15[v60], sub_1A458D1B4);
    v62 = *v48;
    v63 = (*v48)(v15, 1, v58);
    v118 = v55;
    if (v63 == 1)
    {
      sub_1A459C71C(v28, sub_1A458D1B4);
      if (v62(&v15[v60], 1, v58) == 1)
      {

        sub_1A459C71C(v15, sub_1A458D1B4);
        v29 = v119;
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    v64 = v110;
    sub_1A459C5E0(v15, v110, sub_1A458D1B4);
    if (v62(&v15[v60], 1, v58) == 1)
    {
      sub_1A459C71C(v125, sub_1A458D1B4);
      sub_1A459C71C(v64, type metadata accessor for LemonadeShelfItem);
LABEL_16:
      sub_1A459C71C(v15, sub_1A459B3AC);
      v29 = v119;
      goto LABEL_18;
    }

    v65 = v111;
    sub_1A459B3CC(&v15[v60], v111, type metadata accessor for LemonadeShelfItem);
    sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
    v66 = v64;
    v67 = sub_1A524C594();
    sub_1A459C71C(v65, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v125, sub_1A458D1B4);
    sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v15, sub_1A458D1B4);
    v29 = v119;
    if (v67)
    {
      break;
    }

LABEL_18:
    v68 = v29;
    v69 = *(v29 + 24);
    v70 = v128;
    sub_1A459C5E0(v131, v128, type metadata accessor for LemonadeShelfItem);
    v6 = v124;
    v127(v70, 0, 1, v124);
    v71 = *(v130 + 48);
    v72 = v132;
    sub_1A459C5E0(&v133[v69], v132, sub_1A458D1B4);
    sub_1A459C5E0(v70, v72 + v71, sub_1A458D1B4);
    v48 = v120;
    if (v62(v72, 1, v6) == 1)
    {
      sub_1A459C71C(v128, sub_1A458D1B4);
      v29 = v68;
      if (v62((v132 + v71), 1, v6) == 1)
      {

        sub_1A459C71C(v132, sub_1A458D1B4);
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    v73 = v132;
    v74 = v109;
    sub_1A459C5E0(v132, v109, sub_1A458D1B4);
    if (v62((v73 + v71), 1, v6) == 1)
    {
      sub_1A459C71C(v128, sub_1A458D1B4);
      sub_1A459C71C(v74, type metadata accessor for LemonadeShelfItem);
      v29 = v68;
LABEL_3:
      sub_1A459C71C(v132, sub_1A459B3AC);
      goto LABEL_4;
    }

    v75 = v132;
    v76 = v111;
    sub_1A459B3CC(v132 + v71, v111, type metadata accessor for LemonadeShelfItem);
    sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
    v77 = v75;
    v78 = v74;
    v79 = sub_1A524C594();
    sub_1A459C71C(v76, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v128, sub_1A458D1B4);
    v80 = v78;
    v81 = v77;
    v15 = v108;
    sub_1A459C71C(v80, type metadata accessor for LemonadeShelfItem);
    v6 = v124;
    sub_1A459C71C(v81, sub_1A458D1B4);
    v29 = v68;
    if (v79)
    {

      goto LABEL_26;
    }

LABEL_4:
    result = sub_1A459C71C(v133, type metadata accessor for LemonadeTwoShelfItemsRow);
    v28 = v125;
    v37 = v126;
    v32 = v116;
    v47 = v115;
  }

  v6 = v124;
LABEL_26:
  v82 = v100;
  sub_1A459C5E0(v131, v100, type metadata accessor for LemonadeShelfItem);
  v127(v82, 0, 1, v6);
  v83 = *(v130 + 48);
  v84 = v102;
  sub_1A459C5E0(&v133[v117], v102, sub_1A458D1B4);
  sub_1A459C5E0(v82, v84 + v83, sub_1A458D1B4);
  v85 = v62(v84, 1, v6);
  v86 = v101;
  if (v85 == 1)
  {
    sub_1A459C71C(v82, sub_1A458D1B4);
    if (v62((v84 + v83), 1, v6) == 1)
    {
      v87 = sub_1A458D1B4;
    }

    else
    {
      v87 = sub_1A459B3AC;
    }
  }

  else
  {
    sub_1A459C5E0(v84, v101, sub_1A458D1B4);
    if (v62((v84 + v83), 1, v6) == 1)
    {
      v87 = sub_1A459B3AC;
    }

    else
    {
      v88 = v84 + v83;
      v89 = v111;
      sub_1A459B3CC(v88, v111, type metadata accessor for LemonadeShelfItem);
      sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
      sub_1A524C594();
      sub_1A459C71C(v89, type metadata accessor for LemonadeShelfItem);
      v87 = sub_1A458D1B4;
    }

    sub_1A459C71C(v82, sub_1A458D1B4);
    sub_1A459C71C(v86, type metadata accessor for LemonadeShelfItem);
  }

  sub_1A459C71C(v84, v87);
  v90 = v133;
  sub_1A4920DC0(*v133, 0);
  sub_1A459C71C(v90, type metadata accessor for LemonadeTwoShelfItemsRow);
  result = v118;
  if (v118 == -1)
  {
LABEL_35:
    if (sub_1A3D65C4C())
    {
      v135 = v106;
      v136 = v105;
      v137 = v104;
      MEMORY[0x1A5906C60](&v134, v103);
      v91 = *(v134 + 16);
      if (v91)
      {
        v92 = v113;
        v93 = v107;
        sub_1A459C5E0(v134 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v113 + 72) * (v91 - 1), v107, type metadata accessor for LemonadeTwoShelfItemsRow);
        v94 = 0;
      }

      else
      {
        v94 = 1;
        v93 = v107;
        v92 = v113;
      }

      (*(v92 + 56))(v93, v94, 1, v29);
      v135 = v106;
      v136 = v105;
      v137 = v104;
      MEMORY[0x1A5906C60](&v134, v103);
      v95 = *(v134 + 16);

      v96 = v95 - 1;
      v97 = v99;
      sub_1A459C5E0(v93, v99, sub_1A459C448);
      if ((*(v92 + 48))(v97, 1, v29) == 1)
      {
        sub_1A459C71C(v97, sub_1A459C448);
      }

      else
      {
        v98 = *v97;
        sub_1A459C71C(v97, type metadata accessor for LemonadeTwoShelfItemsRow);
        LOBYTE(v135) = v98;
        LOBYTE(v134) = 0;
        sub_1A459C648();
        sub_1A524C594();
      }

      sub_1A40B1BE4(*(v131 + *(v6 + 28)), 1);
      sub_1A459C71C(v107, sub_1A459C448);
      return v96;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void sub_1A4594EE8(unint64_t a1, unint64_t a2)
{
  v8 = type metadata accessor for LemonadeTwoShelfItemsRow(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 16);
      if (v4 > a1)
      {
        v5 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v15 = *(v12 + 72);
        a1 *= v15;
        sub_1A459C5E0(v3 + v5 + a1, &v17 - v13, type metadata accessor for LemonadeTwoShelfItemsRow);
        if (v4 > a2)
        {
          v4 = v15 * a2;
          sub_1A459C5E0(v3 + v5 + v15 * a2, v10, type metadata accessor for LemonadeTwoShelfItemsRow);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v3 = sub_1A459BDE8(v3);
LABEL_6:
        v16 = v3 + v5;
        sub_1A459BE40(v10, &v16[a1], type metadata accessor for LemonadeTwoShelfItemsRow);
        if (v3[2] <= a2)
        {
          __break(1u);
        }

        else
        {
          sub_1A459BE40(v14, &v16[v4], type metadata accessor for LemonadeTwoShelfItemsRow);
          *v2 = v3;
        }

        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1A45950C0(uint64_t a1, uint64_t a2, int a3)
{
  v14 = a3;
  v15 = a2;
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A459BEA8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v13[2] = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeShelfItem(0);
  MEMORY[0x1EEE9AC00](v7);
  v13[3] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = v3 + *(type metadata accessor for DropViewDelegate(0) + 28);
  v17 = *v11;
  v18 = *(v11 + 8);
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v16);
  v12 = sub_1A491BAF4(v16);

  v17 = v12;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A459562C()
{
  v1 = sub_1A524BEE4();
  v16 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DropViewDelegate(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3C29A58();
  v10 = sub_1A524D474();
  sub_1A459C5E0(v0, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DropViewDelegate);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  sub_1A459B3CC(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for DropViewDelegate);
  aBlock[4] = sub_1A459C260;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_63_1;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A459C77C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A459C77C(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v16 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v15);
}

void sub_1A45959BC()
{
  sub_1A458D1B4(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = **v0;
  v7 = *(v6 + 1104);
  v26 = v6 + 1104;
  v27 = v7;
  v28 = v7(v2);
  sub_1A4595CD8(&v33);
  sub_1A4595FAC();
  v8 = (v0 + *(type metadata accessor for DropViewDelegate(0) + 28));
  v10 = *v8;
  v9 = v8[1];
  v25 = v8[2];
  v30 = v10;
  v31 = v9;
  v32 = v25;
  v11 = MEMORY[0x1E6981948];
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  v13 = v12;
  MEMORY[0x1A5906C60](&v29);
  v14 = sub_1A491BAF4(v29);

  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, v11);
  MEMORY[0x1A5906C60]();
  v15 = sub_1A3C30368();
  v16 = sub_1A491BAF8(v14, 1, v5, v4, 0, 1, v15 & 1);

  sub_1A459C71C(v4, sub_1A458D1B4);
  v30 = v10;
  v31 = v9;
  v17 = v25;
  v32 = v25;
  v29 = v16;
  sub_1A524B904();
  v30 = v10;
  v31 = v9;
  v32 = v17;
  MEMORY[0x1A5906C60](&v29, v13);
  sub_1A491AB70(v29, v5);

  v18 = sub_1A459562C();
  v19 = (v27)(v18);
  type metadata accessor for LemonadeAnalyticsCustomization();
  v20 = sub_1A47E502C();
  LOBYTE(v30) = 0;
  LemonadeCustomizationAction.rawValue.getter();
  v21 = sub_1A524CFC4();
  LemonadeCustomizationAnalyticsName.rawValue.getter(v21);
  v22 = sub_1A524CFC4();
  LOBYTE(v29) = 0;
  LemonadeCustomizationContentType.rawValue.getter(v22);
  v23 = sub_1A524CFC4();
  (*(*v20 + 136))(v21, 0, v22, v23, v28, v19);
}

void sub_1A4595CD8(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DropViewDelegate(0);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  if ((*(v3 + 48))(v8, 1, v2))
  {
    v12 = sub_1A458D1B4;
    v13 = v8;
  }

  else
  {
    sub_1A459C5E0(v8, v5, type metadata accessor for LemonadeShelfItem);
    sub_1A459C71C(v8, sub_1A458D1B4);
    sub_1A4919C18(v11);
    sub_1A459C71C(v5, type metadata accessor for LemonadeShelfItem);
    v14 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
    {
      sub_1A3C5322C();
      sub_1A459C71C(v11, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3DD1890(a1);
      return;
    }

    v12 = sub_1A40A4670;
    v13 = v11;
  }

  sub_1A459C71C(v13, v12);
  *a1 = 1;
}

void *sub_1A4595FAC()
{
  v1 = v0;
  sub_1A459C69C(0);
  v197 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v213 = &v165[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C448(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v196 = &v165[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v219 = &v165[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v208 = &v165[-v9];
  sub_1A459B3AC(0);
  v218 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v209 = &v165[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v165[-v13];
  v221 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v210 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v185 = &v165[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v165[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v165[-v18];
  sub_1A459C47C();
  v200 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v165[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v199 = &v165[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v198 = &v165[-v25];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v181 = &v165[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v165[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v172 = &v165[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v182 = &v165[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v184 = &v165[-v35];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v165[-v37];
  sub_1A458D1B4(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v175 = &v165[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v171 = &v165[-v42];
  MEMORY[0x1EEE9AC00](v43);
  v174 = &v165[-v44];
  MEMORY[0x1EEE9AC00](v45);
  v180 = &v165[-v46];
  MEMORY[0x1EEE9AC00](v47);
  v179 = &v165[-v48];
  MEMORY[0x1EEE9AC00](v49);
  v188 = &v165[-v50];
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v165[-v52];
  MEMORY[0x1EEE9AC00](v54);
  v187 = &v165[-v55];
  MEMORY[0x1EEE9AC00](v56);
  v211 = &v165[-v57];
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v165[-v59];
  v61 = type metadata accessor for LemonadeShelfItem(0);
  v62 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v186 = &v165[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v165[-v65];
  v67 = type metadata accessor for DropViewDelegate(0);
  sub_1A459C4E8(0, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  v216 = v62;
  v69 = *(v62 + 48);
  v68 = v62 + 48;
  v201 = v69;
  if (v69(v60, 1, v61) != 1)
  {
    sub_1A459B3CC(v60, v66, type metadata accessor for LemonadeShelfItem);
    sub_1A4919C18(v38);
    v72 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
    v73 = *(v72 - 8);
    v74 = *(v73 + 48);
    v178 = v72;
    v177 = v74;
    v176 = v73 + 48;
    if ((v74)(v38, 1) == 1)
    {
      sub_1A459C71C(v66, type metadata accessor for LemonadeShelfItem);
      v70 = sub_1A40A4670;
      v71 = v38;
      return sub_1A459C71C(v71, v70);
    }

    v75 = v20;
    sub_1A3C5322C();
    v76 = v223;
    sub_1A459C71C(v38, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v77 = *v0;
    LOBYTE(v223) = v76;
    v78 = *v77;
    v79 = *(*v77 + 432);
    v169 = v77;
    v168 = v78 + 432;
    v167 = v79;
    if (v79(&v223))
    {
      v70 = type metadata accessor for LemonadeShelfItem;
      v71 = v66;
      return sub_1A459C71C(v71, v70);
    }

    v166 = v76;
    v217 = v66;
    v80 = (v1 + *(v67 + 28));
    v81 = *v80;
    v82 = v80[1];
    v83 = v80[2];
    v205 = v82;
    v206 = v81;
    v223 = v81;
    v224 = v82;
    v204 = v83;
    v225 = v83;
    sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
    v203 = v84;
    result = MEMORY[0x1A5906C60](&v222);
    v173 = 0;
    v86 = 0;
    v87 = v222;
    v195 = (v75 + 56);
    v88 = *(v222 + 16);
    v194 = (v75 + 48);
    v216 += 7;
    v215 = (v210 + 56);
    v191 = (v210 + 48);
    v89 = v209;
    v90 = v201;
    v190 = v88;
    v193 = v53;
    v192 = v222;
    while (1)
    {
      v93 = v200;
      v94 = v199;
      if (v86 == v88)
      {
        v95 = 1;
        v214 = v88;
      }

      else
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          return result;
        }

        if (v86 >= *(v87 + 16))
        {
          goto LABEL_90;
        }

        v96 = v86 + 1;
        v97 = v87 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v86;
        v98 = *(v200 + 48);
        v99 = v189;
        *v189 = v86;
        sub_1A459C5E0(v97, v99 + v98, type metadata accessor for LemonadeTwoShelfItemsRow);
        sub_1A459B3CC(v99, v94, sub_1A459C47C);
        v95 = 0;
        v214 = v96;
      }

      (*v195)(v94, v95, 1, v93);
      v100 = v198;
      sub_1A459C54C(v94, v198);
      if ((*v194)(v100, 1, v93) == 1)
      {

        if (v173)
        {
          LOBYTE(v223) = v166;
          (*(*v169 + 520))(&v223);
        }

        v70 = type metadata accessor for LemonadeShelfItem;
        v71 = v217;
        return sub_1A459C71C(v71, v70);
      }

      v202 = *v100;
      v101 = v68;
      v102 = v220;
      sub_1A459B3CC(v100 + *(v93 + 48), v220, type metadata accessor for LemonadeTwoShelfItemsRow);
      v103 = *(v221 + 20);
      v104 = v211;
      sub_1A459C5E0(v217, v211, type metadata accessor for LemonadeShelfItem);
      v105 = *v216;
      (*v216)(v104, 0, 1, v61);
      v106 = *(v218 + 48);
      v107 = &v102[v103];
      v108 = v207;
      sub_1A459C5E0(v107, v207, sub_1A458D1B4);
      sub_1A459C5E0(v104, &v108[v106], sub_1A458D1B4);
      if (v90(v108, 1, v61) == 1)
      {
        sub_1A459C71C(v104, sub_1A458D1B4);
        v109 = v90(&v108[v106], 1, v61);
        v110 = v109 == 1 ? sub_1A458D1B4 : sub_1A459B3AC;
        v111 = v109 == 1 ? -1 : 0;
        v212 = v111;
        v112 = v208;
        v113 = v193;
      }

      else
      {
        v114 = v187;
        sub_1A459C5E0(v108, v187, sub_1A458D1B4);
        v115 = v90(&v108[v106], 1, v61);
        v113 = v193;
        if (v115 == 1)
        {
          sub_1A459C71C(v211, sub_1A458D1B4);
          sub_1A459C71C(v114, type metadata accessor for LemonadeShelfItem);
          v212 = 0;
          v110 = sub_1A459B3AC;
        }

        else
        {
          v116 = &v108[v106];
          v117 = v186;
          sub_1A459B3CC(v116, v186, type metadata accessor for LemonadeShelfItem);
          sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
          v212 = sub_1A524C594();
          sub_1A459C71C(v117, type metadata accessor for LemonadeShelfItem);
          sub_1A459C71C(v211, sub_1A458D1B4);
          sub_1A459C71C(v114, type metadata accessor for LemonadeShelfItem);
          v110 = sub_1A458D1B4;
          v108 = v207;
        }

        v112 = v208;
      }

      sub_1A459C71C(v108, v110);
      v118 = *(v221 + 24);
      sub_1A459C5E0(v217, v113, type metadata accessor for LemonadeShelfItem);
      v105(v113, 0, 1, v61);
      v119 = *(v218 + 48);
      sub_1A459C5E0(&v220[v118], v89, sub_1A458D1B4);
      sub_1A459C5E0(v113, v89 + v119, sub_1A458D1B4);
      if (v90(v89, 1, v61) == 1)
      {
        sub_1A459C71C(v113, sub_1A458D1B4);
        v120 = v90((v89 + v119), 1, v61);
        v121 = v120 == 1 ? sub_1A458D1B4 : sub_1A459B3AC;
        v122 = v120 == 1 ? -1 : 0;
      }

      else
      {
        v123 = v188;
        sub_1A459C5E0(v89, v188, sub_1A458D1B4);
        if (v90((v89 + v119), 1, v61) == 1)
        {
          sub_1A459C71C(v113, sub_1A458D1B4);
          sub_1A459C71C(v123, type metadata accessor for LemonadeShelfItem);
          v122 = 0;
          v121 = sub_1A459B3AC;
        }

        else
        {
          v124 = v89 + v119;
          v125 = v186;
          sub_1A459B3CC(v124, v186, type metadata accessor for LemonadeShelfItem);
          sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
          v122 = sub_1A524C594();
          sub_1A459C71C(v125, type metadata accessor for LemonadeShelfItem);
          sub_1A459C71C(v113, sub_1A458D1B4);
          sub_1A459C71C(v123, type metadata accessor for LemonadeShelfItem);
          v121 = sub_1A458D1B4;
          v89 = v209;
        }
      }

      v126 = v221;
      sub_1A459C71C(v89, v121);
      sub_1A459C5E0(v220, v112, type metadata accessor for LemonadeTwoShelfItemsRow);
      v127 = *v215;
      v128 = 1;
      (*v215)(v112, 0, 1, v126);
      v223 = v206;
      v224 = v205;
      v225 = v204;
      MEMORY[0x1A5906C60](&v222, v203);
      v129 = *(v222 + 16);
      if (v129)
      {
        sub_1A459C5E0(v222 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * (v129 - 1), v219, type metadata accessor for LemonadeTwoShelfItemsRow);
        v128 = 0;
      }

      v130 = v219;
      v131 = v221;
      v127(v219, v128, 1, v221);
      v132 = *(v197 + 48);
      v133 = v213;
      sub_1A459C5E0(v112, v213, sub_1A459C448);
      v134 = v133;
      sub_1A459C5E0(v130, &v133[v132], sub_1A459C448);
      v135 = *v191;
      if ((*v191)(v134, 1, v131) == 1)
      {
        break;
      }

      sub_1A459C5E0(v134, v196, sub_1A459C448);
      if (v135(v134 + v132, 1, v131) == 1)
      {
        sub_1A459C71C(v219, sub_1A459C448);
        v136 = v213;
        sub_1A459C71C(v112, sub_1A459C448);
        sub_1A459C71C(v196, type metadata accessor for LemonadeTwoShelfItemsRow);
        v89 = v209;
        v68 = v101;
        v90 = v201;
LABEL_47:
        result = sub_1A459C71C(v136, sub_1A459C69C);
        v87 = v192;
        goto LABEL_48;
      }

      v142 = v134 + v132;
      v143 = v183;
      sub_1A459B3CC(v142, v183, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C77C(&qword_1EB125828, type metadata accessor for LemonadeTwoShelfItemsRow);
      v144 = v196;
      v145 = v134;
      v146 = sub_1A524C594();
      sub_1A459C71C(v143, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C71C(v219, sub_1A459C448);
      sub_1A459C71C(v208, sub_1A459C448);
      sub_1A459C71C(v144, type metadata accessor for LemonadeTwoShelfItemsRow);
      result = sub_1A459C71C(v145, sub_1A459C448);
      v89 = v209;
      v68 = v101;
      v90 = v201;
      v87 = v192;
      if (v146)
      {
        goto LABEL_9;
      }

LABEL_48:
      if (((v212 | v122) & 1) == 0)
      {
        goto LABEL_9;
      }

      v138 = v202 + 1;
      v139 = v185;
      if (__OFADD__(v202, 1))
      {
        goto LABEL_91;
      }

      v223 = v206;
      v224 = v205;
      v225 = v204;
      result = MEMORY[0x1A5906C60](&v222, v203);
      if ((v138 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v138 >= *(v222 + 16))
      {
        goto LABEL_93;
      }

      sub_1A459C5E0(v222 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v138, v139, type metadata accessor for LemonadeTwoShelfItemsRow);

      if (sub_1A4920DC0(*v220, 0))
      {
        v140 = v179;
        sub_1A459C5E0(&v139[*(v221 + 20)], v179, sub_1A458D1B4);
        if (v90(v140, 1, v61) == 1)
        {
          v141 = sub_1A458D1B4;
          goto LABEL_62;
        }

        v150 = v140;
        sub_1A4919C18(v184);
        v140 = v184;
        sub_1A459C71C(v150, type metadata accessor for LemonadeShelfItem);
        if (v177(v140, 1, v178) == 1)
        {
          v141 = sub_1A40A4670;
LABEL_62:
          sub_1A459C71C(v140, v141);
          v151 = v182;
          v152 = v180;
LABEL_63:
          sub_1A459C5E0(&v139[*(v221 + 24)], v152, sub_1A458D1B4);
          if (v90(v152, 1, v61) == 1)
          {
            sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
            sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
            v153 = sub_1A458D1B4;
LABEL_72:
            v91 = v153;
            v92 = v152;
            goto LABEL_10;
          }

          v156 = v151;
          v157 = v152;
          sub_1A4919C18(v156);
          v152 = v182;
          sub_1A459C71C(v157, type metadata accessor for LemonadeShelfItem);
          if (v177(v152, 1, v178) == 1)
          {
            sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
            sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
            v153 = sub_1A40A4670;
            goto LABEL_72;
          }

          sub_1A3C5322C();
          sub_1A459C71C(v152, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          v161 = (*(*v169 + 432))(&v223);
          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          result = sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v159 = v161 | v173;
        }

        else
        {
          sub_1A3C5322C();
          sub_1A459C71C(v184, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          v158 = v167(&v223);
          v151 = v182;
          v152 = v180;
          if ((v158 & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          result = sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v159 = 1;
        }

        v173 = v159;
        goto LABEL_11;
      }

      v147 = v181;
      if (v212)
      {
        v148 = v174;
        sub_1A459C5E0(&v139[*(v221 + 20)], v174, sub_1A458D1B4);
        if (v90(v148, 1, v61) != 1)
        {
          v149 = &v204;
LABEL_68:
          v155 = *(v149 - 32);
          sub_1A4919C18(v155);
          sub_1A459C71C(v148, type metadata accessor for LemonadeShelfItem);
          if (v177(v155, 1, v178) != 1)
          {
            sub_1A3C5322C();
            v162 = v155;
            goto LABEL_84;
          }

          v148 = v155;
LABEL_81:
          sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
          v160 = sub_1A40A4670;
          goto LABEL_82;
        }
      }

      else
      {
        v154 = sub_1A4920DC0(*v139, 0);
        v148 = v175;
        if (v154)
        {
          v148 = v171;
          sub_1A459C5E0(&v139[*(v221 + 20)], v171, sub_1A458D1B4);
          if (v90(v148, 1, v61) != 1)
          {
            v149 = &v202;
            goto LABEL_68;
          }
        }

        else
        {
          sub_1A459C5E0(&v139[*(v221 + 24)], v175, sub_1A458D1B4);
          if (v90(v148, 1, v61) != 1)
          {
            v163 = v147;
            v164 = v148;
            sub_1A4919C18(v163);
            v148 = v181;
            sub_1A459C71C(v164, type metadata accessor for LemonadeShelfItem);
            if (v177(v148, 1, v178) != 1)
            {
              sub_1A3C5322C();
              v162 = v148;
LABEL_84:
              sub_1A459C71C(v162, type metadata accessor for LemonadeFeatureLibrary.Shelf);
              v173 = (*(*v169 + 432))(&v223);
              sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
              v92 = v220;
              v91 = type metadata accessor for LemonadeTwoShelfItemsRow;
LABEL_10:
              result = sub_1A459C71C(v92, v91);
              goto LABEL_11;
            }

            goto LABEL_81;
          }
        }
      }

      sub_1A459C71C(v139, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A459C71C(v220, type metadata accessor for LemonadeTwoShelfItemsRow);
      v160 = sub_1A458D1B4;
LABEL_82:
      result = sub_1A459C71C(v148, v160);
      v173 = 0;
LABEL_11:
      v88 = v190;
      v86 = v214;
    }

    sub_1A459C71C(v219, sub_1A459C448);
    v136 = v213;
    sub_1A459C71C(v112, sub_1A459C448);
    v137 = v135(&v136[v132], 1, v131);
    v89 = v209;
    v68 = v101;
    v90 = v201;
    if (v137 == 1)
    {
      sub_1A459C71C(v136, sub_1A459C448);
      v87 = v192;
LABEL_9:
      v91 = type metadata accessor for LemonadeTwoShelfItemsRow;
      v92 = v220;
      goto LABEL_10;
    }

    goto LABEL_47;
  }

  v70 = sub_1A458D1B4;
  v71 = v60;
  return sub_1A459C71C(v71, v70);
}

uint64_t sub_1A4597BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for LemonadeShelfItem(0) - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1A459C77C(&qword_1EB13E028, type metadata accessor for LemonadeShelfItem);
  v7 = 0;
  while ((sub_1A524C594() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

size_t sub_1A4597CE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A459BD90(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for LemonadeShelfItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1A459B3CC(v11, a2, type metadata accessor for LemonadeShelfItem);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A4597E40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5248294();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E697BF98], v3);
  sub_1A5248044();
  v6 = sub_1A5248054();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_1A4597F4C()
{
  v0 = type metadata accessor for LemonadeMockShelvesDataSource();
  v1 = sub_1A42F8364();
  type metadata accessor for LemonadeShelvesViewModel(0);
  v3[3] = v0;
  v3[4] = sub_1A459C77C(&qword_1EB12EC48, type metadata accessor for LemonadeMockShelvesDataSource);
  v3[0] = v1;

  v2 = sub_1A3C5A374();
  sub_1A3C5A7B8(v3, 0, v2);
}

uint64_t sub_1A4598024(uint64_t a1)
{
  v2 = sub_1A459A2BC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4598070(uint64_t a1)
{
  v2 = sub_1A459A2BC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A45980BC()
{
  if (!qword_1EB13DE18)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144);
    sub_1A4599CCC();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DE18);
    }
  }
}

void sub_1A459818C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A459820C()
{
  if (!qword_1EB13DE30)
  {
    sub_1A458D23C(255);
    sub_1A459B878(255, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
    sub_1A459C77C(&qword_1EB13DFB0, sub_1A458D23C);
    sub_1A4599ADC();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DE30);
    }
  }
}

void sub_1A4598388()
{
  if (!qword_1EB13DE50)
  {
    sub_1A459845C(255);
    sub_1A5248A14();
    sub_1A459948C();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DE50);
    }
  }
}

void sub_1A459855C()
{
  if (!qword_1EB13DE78)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    sub_1A4599044();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DE78);
    }
  }
}

void sub_1A459862C()
{
  if (!qword_1EB13DE90)
  {
    sub_1A4598724(255);
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724);
    sub_1A459876C();
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    sub_1A4598F70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DE90);
    }
  }
}

void sub_1A459876C()
{
  if (!qword_1EB13DEA0)
  {
    sub_1A4598F0C(255, &qword_1EB13DEA8, sub_1A4598830);
    sub_1A4599300(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DEA0);
    }
  }
}

void sub_1A4598830()
{
  if (!qword_1EB13DEB0)
  {
    sub_1A45988C4(255);
    sub_1A459C77C(&qword_1EB13DF08, sub_1A45988C4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DEB0);
    }
  }
}

void sub_1A45988F8()
{
  if (!qword_1EB13DEC0)
  {
    sub_1A45989CC();
    sub_1A4598D98(255);
    sub_1A459818C(255, &qword_1EB13DF00, sub_1A429B9D8, sub_1A3E7440C, MEMORY[0x1E6981860]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13DEC0);
    }
  }
}

void sub_1A45989CC()
{
  if (!qword_1EB13DEC8)
  {
    sub_1A4598AAC();
    sub_1A4598B6C(255);
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4598CFC();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DEC8);
    }
  }
}

void sub_1A4598AAC()
{
  if (!qword_1EB13DED0)
  {
    sub_1A4598B6C(255);
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4598CFC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DED0);
    }
  }
}

void sub_1A4598BB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41ECA68(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4598C4C()
{
  result = qword_1EB13DEE8;
  if (!qword_1EB13DEE8)
  {
    sub_1A4598B6C(255);
    sub_1A3E7440C();
    sub_1A459C77C(&unk_1EB1277E0, sub_1A3F32A14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DEE8);
  }

  return result;
}

unint64_t sub_1A4598CFC()
{
  result = qword_1EB13DEF0;
  if (!qword_1EB13DEF0)
  {
    sub_1A4598BB4(255, &qword_1EB13DEE0, sub_1A4598B6C);
    sub_1A4598C4C();
    sub_1A4256C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DEF0);
  }

  return result;
}

unint64_t sub_1A4598DB8()
{
  result = qword_1EB13DF10;
  if (!qword_1EB13DF10)
  {
    sub_1A459876C();
    sub_1A4598E38();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF10);
  }

  return result;
}

unint64_t sub_1A4598E38()
{
  result = qword_1EB13DF18;
  if (!qword_1EB13DF18)
  {
    sub_1A4598F0C(255, &qword_1EB13DEA8, sub_1A4598830);
    sub_1A459C77C(&qword_1EB13DF20, sub_1A4598830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF18);
  }

  return result;
}

void sub_1A4598F0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A4598F70()
{
  result = qword_1EB13DF30;
  if (!qword_1EB13DF30)
  {
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724);
    sub_1A459876C();
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF30);
  }

  return result;
}

unint64_t sub_1A4599044()
{
  result = qword_1EB13DF38;
  if (!qword_1EB13DF38)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    sub_1A45991B4();
    sub_1A4598724(255);
    sub_1A4598F0C(255, &qword_1EB13DF28, sub_1A4598724);
    sub_1A459876C();
    sub_1A4598DB8();
    swift_getOpaqueTypeConformance2();
    sub_1A4598F70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF38);
  }

  return result;
}

unint64_t sub_1A45991B4()
{
  result = qword_1EB13DF40;
  if (!qword_1EB13DF40)
  {
    sub_1A4598604(255);
    sub_1A459C77C(&qword_1EB128AD0, sub_1A3F1D27C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF40);
  }

  return result;
}

void sub_1A4599264()
{
  if (!qword_1EB122210)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    sub_1A4599368();
    v0 = sub_1A5249C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122210);
    }
  }
}

void sub_1A4599300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4599368()
{
  result = qword_1EB127A30;
  if (!qword_1EB127A30)
  {
    sub_1A4599300(255, &qword_1EB127A28, sub_1A425692C, MEMORY[0x1E697C040], MEMORY[0x1E69809C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127A30);
  }

  return result;
}

void sub_1A45993F8()
{
  if (!qword_1EB13DF48)
  {
    sub_1A5248A14();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249D14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DF48);
    }
  }
}

unint64_t sub_1A459948C()
{
  result = qword_1EB13DF50;
  if (!qword_1EB13DF50)
  {
    sub_1A459845C(255);
    sub_1A459953C();
    sub_1A459C77C(&qword_1EB13DF78, sub_1A45993F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF50);
  }

  return result;
}

unint64_t sub_1A459953C()
{
  result = qword_1EB13DF58;
  if (!qword_1EB13DF58)
  {
    sub_1A45984A4(255);
    sub_1A45995EC();
    sub_1A459C77C(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF58);
  }

  return result;
}

unint64_t sub_1A45995EC()
{
  result = qword_1EB13DF60;
  if (!qword_1EB13DF60)
  {
    sub_1A45984EC(255);
    sub_1A459969C();
    sub_1A459C77C(&qword_1EB122218, sub_1A4599264);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF60);
  }

  return result;
}

unint64_t sub_1A459969C()
{
  result = qword_1EB13DF68;
  if (!qword_1EB13DF68)
  {
    sub_1A4598534(255);
    sub_1A459C77C(&qword_1EB13DF70, sub_1A459855C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF68);
  }

  return result;
}

unint64_t sub_1A459974C()
{
  result = qword_1EB13DF80;
  if (!qword_1EB13DF80)
  {
    sub_1A4598360(255);
    sub_1A459845C(255);
    sub_1A5248A14();
    sub_1A459948C();
    sub_1A459C77C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DF80);
  }

  return result;
}

void sub_1A4599880()
{
  if (!qword_1EB13DF90)
  {
    sub_1A4599914(255);
    sub_1A3C48B3C(255, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13DF90);
    }
  }
}

void sub_1A459995C()
{
  if (!qword_1EB13DFA0)
  {
    sub_1A4599A50(255, &qword_1EB13DFA8, sub_1A4598360, sub_1A459974C);
    sub_1A4598360(255);
    sub_1A459974C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DFA0);
    }
  }
}

void sub_1A4599A50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A4599ADC()
{
  result = qword_1EB13DFB8;
  if (!qword_1EB13DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFB8);
  }

  return result;
}

unint64_t sub_1A4599B30()
{
  result = qword_1EB13DFC0;
  if (!qword_1EB13DFC0)
  {
    sub_1A459820C();
    sub_1A4599BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFC0);
  }

  return result;
}

unint64_t sub_1A4599BA8()
{
  result = qword_1EB13DFC8;
  if (!qword_1EB13DFC8)
  {
    sub_1A459B878(255, &qword_1EB13DE38, sub_1A4598318, sub_1A459984C, MEMORY[0x1E697F960]);
    sub_1A4598360(255);
    sub_1A459974C();
    swift_getOpaqueTypeConformance2();
    sub_1A459C77C(&qword_1EB13DFD0, sub_1A459984C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFC8);
  }

  return result;
}

unint64_t sub_1A4599CCC()
{
  result = qword_1EB13DFD8;
  if (!qword_1EB13DFD8)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144);
    sub_1A459C77C(&qword_1EB13DFE0, sub_1A4598144);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DFD8);
  }

  return result;
}

void sub_1A4599DA0()
{
  if (!qword_1EB13DFE8)
  {
    sub_1A4598F0C(255, &qword_1EB13DE20, sub_1A4598144);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13DFE8);
    }
  }
}

unint64_t sub_1A4599E4C()
{
  result = qword_1EB120CE0;
  if (!qword_1EB120CE0)
  {
    sub_1A3C48B3C(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C4CDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120CE0);
  }

  return result;
}

unint64_t sub_1A4599F08()
{
  result = qword_1EB13E000;
  if (!qword_1EB13E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E000);
  }

  return result;
}

void sub_1A4599FA0()
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A3E316EC(319);
    if (v1 <= 0x3F)
    {
      sub_1A459C4E8(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C48B3C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A459C4E8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A459C4E8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A459C4E8(319, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A459C4E8(319, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1A459C4E8(319, &qword_1EB13E010, sub_1A458D23C, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A459C4E8(319, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A3C48B3C(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
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

unint64_t sub_1A459A2BC()
{
  result = qword_1EB13E018;
  if (!qword_1EB13E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E018);
  }

  return result;
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  sub_1A459C4E8(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v5 = v1[8];
  sub_1A459C4E8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[9];
  sub_1A459C4E8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A52486A4();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v2 + v1[12];
  v10 = type metadata accessor for LemonadeShelfItem(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = v9 + *(v10 + 20);
    type metadata accessor for LemonadeShelfItem.BackingItem(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          sub_1A3C53AEC(*(v11 + 56), *(v11 + 64));
          sub_1A3C53AEC(*(v11 + 72), *(v11 + 80));
          break;
        case 1u:

          break;
        case 2u:
        case 4u:
        case 6u:
        case 0xEu:
        case 0x12u:
        case 0x13u:
        case 0x14u:

          v12 = *(v11 + 24);
          goto LABEL_78;
        case 3u:

          sub_1A3C4AFFC();
          v11 += *(v16 + 40);

          v14 = *(type metadata accessor for LemonadeSocialGroupsShelfProvider() + 28);
          goto LABEL_35;
        case 5u:

          v12 = *(v11 + 32);
          goto LABEL_78;
        case 7u:

          swift_unknownObjectRelease();
          break;
        case 8u:

          v11 += *(type metadata accessor for LemonadeMapFeature(0) + 24);
          v15 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
          goto LABEL_34;
        case 9u:

          v96 = type metadata accessor for LemonadeICloudLinksFeature();
          v29 = (v11 + *(v96 + 20));

          v30 = type metadata accessor for LemonadeICloudLinksShelfProvider();
          v91 = *(v30 + 24);
          v31 = sub_1A5243334();
          (*(*(v31 - 8) + 8))(v29 + v91, v31);
          v86 = v30;
          v92 = v29;
          v32 = v29 + *(v30 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v30) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v32, *(v32 + 1), v32[16]);
          if (v30 == 1)
          {
            sub_1A3C4208C(*(v32 + 3), *(v32 + 4), v32[40]);
            sub_1A3C47A98();
            v34 = *(v33 + 64);
            v35 = sub_1A5242C84();
            (*(*(v35 - 8) + 8))(&v32[v34], v35);
          }

          else
          {
            if (*(v32 + 5) >= 3uLL)
            {
            }

            if (*(v32 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v32 + 9), *(v32 + 10), v32[88]);
          }

          v63 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v64 = sub_1A5241F84();
          v81 = *(v64 - 8);
          v84 = v63;
          v65 = &v32[v63];
          v66 = v64;
          if (!(*(v81 + 48))(v65, 1, v64))
          {
            (*(v81 + 8))(&v32[v84], v66);
          }

          v67 = *(v86 + 32);
          v68 = sub_1A5244094();
          (*(*(v68 - 8) + 8))(v92 + v67, v68);
          v62 = *(v96 + 28);
          goto LABEL_77;
        case 0xAu:

          v12 = *(v11 + 56);
          goto LABEL_78;
        case 0xBu:

          v17 = (v11 + *(type metadata accessor for LemonadeSharedWithYouFeature() + 20));

          v18 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
          v19 = *(v18 + 24);
          v20 = sub_1A5243334();
          (*(*(v20 - 8) + 8))(v17 + v19, v20);
          v21 = v17 + *(v18 + 28);
          goto LABEL_36;
        case 0xCu:

          v13 = *(type metadata accessor for LemonadeImportSourcesFeature(0) + 20);
          v14 = v13 + *(type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0) + 20);
          goto LABEL_35;
        case 0xDu:

          v95 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
          v22 = (v11 + *(v95 + 20));

          v23 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
          v89 = *(v23 + 24);
          v24 = sub_1A5243334();
          (*(*(v24 - 8) + 8))(v22 + v89, v24);
          v85 = v23;
          v90 = v22;
          v25 = v22 + *(v23 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          LODWORD(v23) = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v25, *(v25 + 1), v25[16]);
          if (v23 == 1)
          {
            sub_1A3C4208C(*(v25 + 3), *(v25 + 4), v25[40]);
            sub_1A3C47A98();
            v27 = *(v26 + 64);
            v28 = sub_1A5242C84();
            (*(*(v28 - 8) + 8))(&v25[v27], v28);
          }

          else
          {
            if (*(v25 + 5) >= 3uLL)
            {
            }

            if (*(v25 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v25 + 9), *(v25 + 10), v25[88]);
          }

          v57 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v58 = sub_1A5241F84();
          v80 = *(v58 - 8);
          v82 = v57;
          v59 = &v25[v57];
          v60 = v58;
          if (!(*(v80 + 48))(v59, 1, v58))
          {
            (*(v80 + 8))(&v25[v82], v60);
          }

          v83 = *(v85 + 32);
          v61 = sub_1A5244094();
          (*(*(v61 - 8) + 8))(v90 + v83, v61);

          v62 = *(v95 + 24);
          goto LABEL_77;
        case 0xFu:

          v36 = (v11 + *(type metadata accessor for LemonadeMacSyncedAlbumsFeature(0) + 24));

          v93 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
          v37 = v36 + *(v93 + 28);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v37, *(v37 + 1), v37[16]);
          v97 = v36;
          if (EnumCaseMultiPayload == 1)
          {
            sub_1A3C4208C(*(v37 + 3), *(v37 + 4), v37[40]);
            sub_1A3C47A98();
            v40 = *(v39 + 64);
            v41 = sub_1A5242C84();
            (*(*(v41 - 8) + 8))(&v37[v40], v41);
          }

          else
          {
            if (*(v37 + 5) >= 3uLL)
            {
            }

            if (*(v37 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v37 + 9), *(v37 + 10), v37[88]);
          }

          v69 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v70 = sub_1A5241F84();
          v71 = *(v70 - 8);
          v87 = v69;
          v72 = &v37[v69];
          v73 = v70;
          if (!(*(v71 + 48))(v72, 1, v70))
          {
            (*(v71 + 8))(&v37[v87], v73);
          }

          v12 = *(v97 + *(v93 + 32));
          goto LABEL_78;
        case 0x10u:

          v11 += *(type metadata accessor for LemonadePhotosChallengeFeature(0) + 24);
          v15 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x11u:

          v11 += *(type metadata accessor for LemonadePhototypesFeature(0) + 20);

          v15 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
          goto LABEL_34;
        case 0x15u:

          v11 += *(type metadata accessor for LemonadeSuggestionsFeature(0) + 24);
          v15 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
LABEL_34:
          v14 = *(v15 + 24);
LABEL_35:
          v21 = (v11 + v14);
LABEL_36:
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v48 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v21, *(v21 + 1), v21[16]);
          if (v48 == 1)
          {
            sub_1A3C4208C(*(v21 + 3), *(v21 + 4), v21[40]);
            sub_1A3C47A98();
            v50 = *(v49 + 64);
            v51 = sub_1A5242C84();
            (*(*(v51 - 8) + 8))(&v21[v50], v51);
          }

          else
          {
            if (*(v21 + 5) >= 3uLL)
            {
            }

            if (*(v21 + 7) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v21 + 9), *(v21 + 10), v21[88]);
          }

          v52 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v53 = sub_1A5241F84();
          v54 = *(v53 - 8);
          v99 = v52;
          v55 = &v21[v52];
          v56 = v53;
          if (!(*(v54 + 48))(v55, 1, v53))
          {
            (*(v54 + 8))(&v21[v99], v56);
          }

          break;
        case 0x16u:

          v42 = v11 + *(type metadata accessor for LemonadeSearchCollectionResultsFeature(0) + 20);
          v94 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
          v98 = v42;
          v43 = v42 + *(v94 + 20);
          type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
          v44 = swift_getEnumCaseMultiPayload();
          sub_1A3D6D890(*v43, *(v43 + 8), *(v43 + 16));
          if (v44 == 1)
          {
            sub_1A3C4208C(*(v43 + 24), *(v43 + 32), *(v43 + 40));
            sub_1A3C47A98();
            v46 = *(v45 + 64);
            v47 = sub_1A5242C84();
            (*(*(v47 - 8) + 8))(v43 + v46, v47);
          }

          else
          {
            if (*(v43 + 40) >= 3uLL)
            {
            }

            if (*(v43 + 56) >= 3uLL)
            {
            }

            sub_1A3C4208C(*(v43 + 72), *(v43 + 80), *(v43 + 88));
          }

          v74 = *(type metadata accessor for LemonadeShelfBodyStyle(0) + 24);
          v75 = sub_1A5241F84();
          v76 = *(v75 - 8);
          v88 = v74;
          v77 = v43 + v74;
          v78 = v75;
          if (!(*(v76 + 48))(v77, 1, v75))
          {
            (*(v76 + 8))(v43 + v88, v78);
          }

          v11 = v98;

          v62 = *(v94 + 32);
LABEL_77:
          v12 = *(v11 + v62);
LABEL_78:

          break;
        default:
          break;
      }
    }
  }

  sub_1A459C4E8(0, &qword_1EB13DFF0, sub_1A458D1B4, MEMORY[0x1E6981790]);

  return swift_deallocObject();
}

uint64_t sub_1A459B220()
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  v0 = MEMORY[0x1E6981790];
  sub_1A459C4E8(0, &qword_1EB13E008, sub_1A458D208, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A491BAF4(v2);

  sub_1A459C4E8(0, &qword_1EB13E010, sub_1A458D23C, v0);
  return sub_1A524B6B4();
}

uint64_t sub_1A459B32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1A458E6E0(a1, v6, a2);
}

uint64_t sub_1A459B3CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A459B48C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeTwoColumnsReorderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A459B520()
{
  result = qword_1EB1C7CB8[0];
  if (!qword_1EB1C7CB8[0])
  {
    type metadata accessor for DropViewDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C7CB8);
  }

  return result;
}

uint64_t sub_1A459B578()
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A459C4E8(0, &qword_1EB127498, sub_1A3E316EC, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A459B650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A459B6B8()
{
  type metadata accessor for LemonadeTwoColumnsReorderView(0);
  sub_1A3C48B3C(0, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A459B764()
{
  if (!qword_1EB13E030)
  {
    sub_1A459B878(255, &qword_1EB13DE80, sub_1A4598604, sub_1A459862C, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E030);
    }
  }
}

uint64_t sub_1A459B810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A459B878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A459B8FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A459B9A8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_1A459BA98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A459BAF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = **(v1 + 16);
  sub_1A3C5322C();
  result = (*(*v3 + 432))(&v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A459BB8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A459C4E8(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A459BC34()
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeShelfItem(319);
    if (v1 <= 0x3F)
    {
      sub_1A459C4E8(319, &qword_1EB13E050, sub_1A458D1B4, MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1A459C4E8(319, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1A459C4E8(319, &qword_1EB13E060, sub_1A458D23C, MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A459BE40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

size_t sub_1A459BEDC(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A459C4E8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A459C0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LemonadeShelfItem(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

  if (v17 < 1)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

  result = sub_1A459C5E0(a4, v15, type metadata accessor for LemonadeShelfItem);
  if (v12 >= v17)
  {
    return sub_1A459C71C(a4, sub_1A459BEA8);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A459C28C(uint64_t (*a1)(void))
{
  a1(0);
  sub_1A524BD24();
  sub_1A52483D4();
}

uint64_t sub_1A459C330()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DropViewDelegate(0);
  v3 = (v1 + *(v2 + 28));
  v10 = *v3;
  v11 = *(v3 + 1);
  v4 = MEMORY[0x1E6981948];
  sub_1A459C4E8(0, &qword_1EB13E058, sub_1A458D208, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v9);
  v5 = sub_1A491BAF4(v9);

  v6 = (v1 + *(v2 + 32));
  v7 = *v6;
  v9 = v5;
  v10 = v7;
  v11 = *(v6 + 1);
  sub_1A459C4E8(0, &qword_1EB13E060, sub_1A458D23C, v4);
  return sub_1A524B904();
}

void sub_1A459C47C()
{
  if (!qword_1EB13E070)
  {
    type metadata accessor for LemonadeTwoShelfItemsRow(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13E070);
    }
  }
}

void sub_1A459C4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A459C54C(uint64_t a1, uint64_t a2)
{
  sub_1A459C4E8(0, &qword_1EB13E078, sub_1A459C47C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A459C5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A459C648()
{
  result = qword_1EB13E080;
  if (!qword_1EB13E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E080);
  }

  return result;
}

void sub_1A459C6BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A459C71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A459C77C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A459C7CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v1 + 8))(ObjectType, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A459C824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v3 = MEMORY[0x1E697F948];
  sub_1A45A8CF8(0, &qword_1EB122B58, MEMORY[0x1E697F948]);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = v78 - v5;
  sub_1A45A8D84(0, &qword_1EB122CB0, v3);
  v78[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = v78 - v7;
  v8 = MEMORY[0x1E697F960];
  sub_1A45A8D84(0, &unk_1EB122940, MEMORY[0x1E697F960]);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v80 = v78 - v10;
  v82 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v82);
  v85 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8CF8(0, &qword_1EB1224E0, v8);
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v86 = v78 - v13;
  sub_1A45A87E8(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v89 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5244EE4();
  v17 = *(v16 - 8);
  v94 = v16;
  v95 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v81 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = v78 - v20;
  sub_1A45A8DE8();
  v100 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v91 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB122C80, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A45A8DE8, MEMORY[0x1E697F948]);
  v99 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v96 = v78 - v24;
  v98 = type metadata accessor for LemonadeShelfPlaceholderView();
  MEMORY[0x1EEE9AC00](v98);
  v88 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(*v1 + 16);
  [v26 isCloudPhotoLibraryEnabled];
  v27 = sub_1A524C634();
  v28 = PXLocalizedString(v27);

  v29 = sub_1A524C674();
  v31 = v30;

  v32 = v2;
  v33 = sub_1A524C634();

  v34 = PXLocalizedString(v33);

  sub_1A524C674();
  v36 = v35;

  v37 = sub_1A3C38BD4();
  v39 = v38;
  sub_1A3C38BD4();
  if (*(v32 + 8) == 1)
  {
    v40 = v26;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v78[1] = v36;
  v88 = v26;

  v41 = type metadata accessor for LemonadeMemoriesFeature.MemoriesPlaceHolderView(0);
  v42 = v89;
  sub_1A45A986C(v32 + *(v41 + 24), v89, sub_1A45A87E8);
  v44 = v94;
  v43 = v95;
  if ((*(v95 + 48))(v42, 1, v94) == 1)
  {

    sub_1A45A74A4(v42, sub_1A45A87E8);
    v45 = 1;
    v46 = v96;
    v47 = v91;
    v48 = v88;
  }

  else
  {
    v49 = v90;
    (*(v43 + 32))(v90, v42, v44);
    v50 = v81;
    (*(v43 + 16))(v81, v49, v44);
    v51 = (*(v43 + 88))(v50, v44);
    v52 = v88;
    if (v51 == *MEMORY[0x1E69C12C0])
    {

      v53 = sub_1A524C634();
      v54 = PXLocalizedString(v53);

      sub_1A524C674();
      v55 = v52;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v56 = v39;
    v57 = v31;
    if (v51 != *MEMORY[0x1E69C12A0])
    {
      v75 = v88;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v58 = sub_1A524C634();
    v59 = PXLocalizedString(v58);

    v60 = sub_1A524C674();
    v61 = v44;
    v63 = v62;

    v64 = sub_1A524C634();
    v65 = PXLocalizedString(v64);

    v66 = sub_1A524C674();
    v68 = v67;

    v69 = v88;
    v70 = sub_1A3C5A374() & 1;
    v77 = v68;
    v71 = v85;
    v72 = v69;
    v48 = v88;
    sub_1A463DB54(v72, 1, 1, v70, 0x736569726F6D656DLL, 0xE800000000000000, v60, v63, v85, v66, v77, v29, v57, v37, v56, 0, 0, 0, 0);
    sub_1A45A986C(v71, v79, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    v73 = v80;
    sub_1A5249744();
    sub_1A45A90DC(v73, v87);
    swift_storeEnumTagMultiPayload();
    sub_1A45A8F98();
    v74 = v86;
    sub_1A5249744();
    sub_1A45A915C(v73);
    sub_1A45A74A4(v71, type metadata accessor for LemonadePlaceholderView);
    (*(v95 + 8))(v90, v61);
    v46 = v96;
    v47 = v91;
    sub_1A45A905C(v74, v91);
    v45 = 0;
  }

  (*(v92 + 56))(v47, v45, 1, v93);
  sub_1A45A986C(v47, v46, sub_1A45A8DE8);
  swift_storeEnumTagMultiPayload();
  sub_1A459ECA0(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
  sub_1A45A8E5C(&qword_1EB1224D0, sub_1A45A8DE8, sub_1A45A8ECC);
  sub_1A5249744();

  return sub_1A45A74A4(v47, sub_1A45A8DE8);
}

uint64_t sub_1A459D720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for CGSize(0);
  sub_1A524B694();
  *(a6 + 24) = v14;
  *(a6 + 40) = v15;
  *(a6 + 48) = swift_getKeyPath();
  *(a6 + 56) = 0;
  v12 = *(type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0) + 40);
  *(a6 + v12) = swift_getKeyPath();
  sub_1A459E8C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

void sub_1A459D84C(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 18))
  {
    v11 = 0;
    LOBYTE(v12) = 1;
  }

  else
  {
    v20 = v8;
    if (shouldUseNewCollectionsLayout()())
    {
      v12 = *(v1 + 48);
      if (*(v1 + 56) != 1)
      {

        sub_1A524D254();
        v13 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v12, 0);
        (*(v7 + 8))(v10, v20);
        LOBYTE(v12) = v21;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v11 = shouldUseNewCollectionsLayout()();
  }

  *a1 = sub_1A524BC74();
  a1[1] = v14;
  sub_1A459E74C();
  sub_1A459DB4C(v11, v1, v12 & 1, a1 + *(v15 + 44));
  sub_1A45A986C(v1, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1A45A6F90(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  sub_1A459EF80(0, &qword_1EB13E100, sub_1A459FBA4, sub_1A410AB24, MEMORY[0x1E697E830]);
  v19 = (a1 + *(v18 + 36));
  *v19 = sub_1A410AEF4;
  v19[1] = 0;
  v19[2] = sub_1A459FAE4;
  v19[3] = v17;
}

uint64_t sub_1A459DB4C@<X0>(char a1@<W0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v91) = a3;
  v92 = a4;
  v6 = sub_1A52404F4();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697F948];
  sub_1A459EF80(0, &qword_1EB13E1C8, sub_1A459E994, sub_1A459F004, MEMORY[0x1E697F948]);
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v90 = v78 - v11;
  v12 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v84 = *(v12 - 8);
  v13 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v85 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EAF0();
  v83 = v14;
  v82 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E994(0);
  v87 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v86 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF38(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v89 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E1D0, sub_1A459E7F8, sub_1A459EF38, v9);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v78 - v24;
  sub_1A459E7F8();
  MEMORY[0x1EEE9AC00](v26);
  v29 = (v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v29 = sub_1A524BC74();
    v29[1] = v30;
    sub_1A45A9580();
    sub_1A459F0B4(a2, v91 & 1, v29 + *(v31 + 44));
    sub_1A45A9804(v29, v25, sub_1A459E7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8);
    sub_1A459FD40();
    sub_1A5249744();
    v32 = sub_1A459E7F8;
    v33 = v29;
  }

  else
  {
    v78[4] = v23;
    v78[5] = v27;
    v79 = v25;
    v80 = v20;
    if (v91)
    {
      v81 = v78;
      v34 = a2;
      v35 = *a2;
      LODWORD(v91) = *(v34 + 17);
      MEMORY[0x1EEE9AC00](v27);
      v78[3] = v75;
      MEMORY[0x1EEE9AC00](v36);
      v78[2] = v75;
      MEMORY[0x1EEE9AC00](v37);
      v78[1] = v75;
      sub_1A3F93438();
      v39 = v38;
      v78[0] = sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438);
      sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438);
      v40 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
      v41 = sub_1A459ECE8();
      v42 = sub_1A459ED3C();
      v43 = sub_1A459ED90();
      swift_retain_n();
      v76 = v42;
      v77 = v43;
      v75[0] = v40;
      v75[1] = v41;
      sub_1A5241E74();
      *(&v96 + 1) = v39;
      *&v97 = v40;
      *&v95 = v35;
      sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0);
      v44 = v86;
      v45 = v83;
      sub_1A524A554();
      (*(v82 + 8))(v16, v45);
      __swift_destroy_boxed_opaque_existential_0(&v95);
      v46 = v85;
      sub_1A45A986C(v34, v85, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
      v47 = (*(v84 + 80) + 16) & ~*(v84 + 80);
      v48 = swift_allocObject();
      sub_1A45A6F90(v46, v48 + v47, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
      v49 = (v44 + *(v87 + 36));
      *v49 = sub_1A45A957C;
      v49[1] = v48;
      v49[2] = 0;
      v49[3] = 0;
      sub_1A45A9804(v44, v90, sub_1A459E994);
      swift_storeEnumTagMultiPayload();
      sub_1A459F004();
      sub_1A459FDF0();
      sub_1A459ECA0(&qword_1EB125750, sub_1A459F004);
      v50 = v89;
      sub_1A5249744();
      sub_1A45A94FC(v44, sub_1A459E994);
    }

    else
    {
      v94 = *a2;

      sub_1A5242E44();
      if (v51)
      {
        v52 = sub_1A524C634();

        sub_1A52404E4();
        v53 = sub_1A52404B4();
        (v81[1])(v8, v6);
        v54 = [v52 px:v53 stringByDeletingCharactersInSet:?];

        v91 = sub_1A524C674();
        v56 = v55;
      }

      else
      {
        v91 = 0;
        v56 = 0;
      }

      sub_1A5242E54();
      v57 = v93;
      sub_1A3F93438();
      v59 = v58;
      v60 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
      v61 = MEMORY[0x1E6981E70];
      v62 = MEMORY[0x1E6981E60];
      v63 = sub_1A41F7694();
      v64 = sub_1A3C5A374();
      v65 = sub_1A43C9BB4();
      v67 = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = v65;
      *(v68 + 24) = v67;
      v69 = sub_1A43C9BD0();
      v76 = v62;
      v77 = v60;
      LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v94, 0, 0, v91, v56, v57, v64 & 1, sub_1A3F8B548, &v95, v63, v68, v69, v61, v59);
      v70 = v100;
      v71 = v90;
      *(v90 + 64) = v99;
      *(v71 + 80) = v70;
      *(v71 + 96) = v101;
      v72 = v96;
      *v71 = v95;
      *(v71 + 16) = v72;
      v73 = v98;
      *(v71 + 32) = v97;
      *(v71 + 48) = v73;
      swift_storeEnumTagMultiPayload();
      sub_1A459F004();
      sub_1A459FDF0();
      sub_1A459ECA0(&qword_1EB125750, sub_1A459F004);
      v50 = v89;
      sub_1A5249744();
    }

    sub_1A45A9804(v50, v79, sub_1A459EF38);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8);
    sub_1A459FD40();
    sub_1A5249744();
    v32 = sub_1A459EF38;
    v33 = v50;
  }

  return sub_1A45A94FC(v33, v32);
}

void sub_1A459E74C()
{
  if (!qword_1EB13E088)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E088);
    }
  }
}

void sub_1A459E7F8()
{
  if (!qword_1EB13E098)
  {
    sub_1A459E88C(255);
    sub_1A459ECA0(&qword_1EB13E0F0, sub_1A459E88C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E098);
    }
  }
}

void sub_1A459E8C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A459E9D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A459EA3C()
{
  if (!qword_1EB13E0C0)
  {
    sub_1A459EAF0();
    sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13E0C0);
    }
  }
}

void sub_1A459EAF0()
{
  if (!qword_1EB13E0C8)
  {
    sub_1A3F93438();
    sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
    sub_1A459ECE8();
    sub_1A459ED3C();
    sub_1A459ED90();
    v0 = sub_1A5241E64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E0C8);
    }
  }
}

void sub_1A459EC38(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A459ECA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A459ECE8()
{
  result = qword_1EB1C7D88;
  if (!qword_1EB1C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C7D88);
  }

  return result;
}

unint64_t sub_1A459ED3C()
{
  result = qword_1EB1C7D90;
  if (!qword_1EB1C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C7D90);
  }

  return result;
}

unint64_t sub_1A459ED90()
{
  result = qword_1EB1C7D98[0];
  if (!qword_1EB1C7D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C7D98);
  }

  return result;
}

void sub_1A459EE20()
{
  if (!qword_1EB13E0E0)
  {
    sub_1A3F93438();
    sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB13E0E8, sub_1A3F93438);
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
    v0 = type metadata accessor for LemonadeFavoritingMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E0E0);
    }
  }
}

void sub_1A459EF80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A459F004()
{
  if (!qword_1EB125748)
  {
    sub_1A3F93438();
    sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125748);
    }
  }
}

uint64_t sub_1A459F0B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v83 = a3;
  v65 = sub_1A52404F4();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EE20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EDE4(0);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v62 - v12;
  v13 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  v75 = *(v13 - 8);
  v74 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v73 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EAF0();
  v69 = v15;
  v70 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E994(0);
  v71 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E958(0);
  v72 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20 - 8);
  v77 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v62 - v26;
  v67 = a1;
  v27 = *a1;
  v66 = *(a1 + 17);
  v88 = a1;
  v87 = a1;
  v86 = a1;
  sub_1A3F93438();
  v29 = v28;
  v30 = sub_1A459ECA0(&qword_1EB1291C0, sub_1A3F93438);
  sub_1A459ECA0(&qword_1EB1291B0, sub_1A3F93438);
  v31 = sub_1A459ECA0(&qword_1EB1291B8, sub_1A3F93438);
  sub_1A459ECE8();
  sub_1A459ED3C();
  sub_1A459ED90();
  swift_retain_n();
  v76 = v30;
  sub_1A5241E74();
  v89[3] = v29;
  v89[4] = v31;
  v89[0] = v27;
  sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0);
  v32 = v68;
  v33 = v69;
  sub_1A524A554();
  (*(v70 + 8))(v17, v33);
  __swift_destroy_boxed_opaque_existential_0(v89);
  v34 = v73;
  sub_1A45A986C(v67, v73, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v35 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v36 = swift_allocObject();
  sub_1A45A6F90(v34, v36 + v35, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell);
  v37 = (v32 + *(v71 + 44));
  *v37 = sub_1A45A9D60;
  v37[1] = v36;
  if (v85)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v37[2] = 0;
  v37[3] = 0;
  sub_1A45A979C(v32, v24, sub_1A459E994);
  *&v24[*(v72 + 44)] = v38;
  sub_1A45A979C(v24, v84, sub_1A459E958);

  sub_1A5242E44();
  if (v39)
  {
    v40 = sub_1A524C634();

    v41 = v63;
    sub_1A52404E4();
    v42 = sub_1A52404B4();
    (*(v64 + 8))(v41, v65);
    v43 = [v40 px:v42 stringByDeletingCharactersInSet:?];

    v75 = sub_1A524C674();
    v74 = v44;
  }

  else
  {
    v75 = 0;
    v74 = 0;
  }

  sub_1A5242E54();
  v45 = v89[0];
  sub_1A459ECA0(&qword_1EB13E0E8, sub_1A3F93438);
  v46 = sub_1A41F7694();
  v47 = sub_1A43C9BB4();
  v49 = v48;
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v50 + 24) = v49;
  v51 = v80;
  LemonadeFavoritingMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:background:)(v27, 0, 0, v75, v74, v45, sub_1A4276878, v50, v80, v46);
  if (v85)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v51;
  v54 = v78;
  sub_1A45A6F90(v53, v78, sub_1A459EE20);
  *(v54 + *(v79 + 36)) = v52;
  v55 = v81;
  sub_1A45A6F90(v54, v81, sub_1A459EDE4);
  v56 = v84;
  v57 = v77;
  sub_1A45A9804(v84, v77, sub_1A459E958);
  v58 = v82;
  sub_1A45A986C(v55, v82, sub_1A459EDE4);
  v59 = v83;
  sub_1A45A9804(v57, v83, sub_1A459E958);
  sub_1A459E924(0);
  sub_1A45A986C(v58, v59 + *(v60 + 48), sub_1A459EDE4);
  sub_1A45A74A4(v55, sub_1A459EDE4);
  sub_1A45A94FC(v56, sub_1A459E958);
  sub_1A45A74A4(v58, sub_1A459EDE4);
  return sub_1A45A94FC(v57, sub_1A459E958);
}

uint64_t sub_1A459FAE4()
{
  type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  sub_1A459E8C0(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A459FBA4()
{
  if (!qword_1EB13E108)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    sub_1A459FC4C();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E108);
    }
  }
}

unint64_t sub_1A459FC4C()
{
  result = qword_1EB13E110;
  if (!qword_1EB13E110)
  {
    sub_1A459EF80(255, &qword_1EB13E090, sub_1A459E7F8, sub_1A459EF38, MEMORY[0x1E697F960]);
    sub_1A459ECA0(&qword_1EB13E118, sub_1A459E7F8);
    sub_1A459FD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E110);
  }

  return result;
}

unint64_t sub_1A459FD40()
{
  result = qword_1EB13E120;
  if (!qword_1EB13E120)
  {
    sub_1A459EF38(255);
    sub_1A459FDF0();
    sub_1A459ECA0(&qword_1EB125750, sub_1A459F004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E120);
  }

  return result;
}

unint64_t sub_1A459FDF0()
{
  result = qword_1EB13E128;
  if (!qword_1EB13E128)
  {
    sub_1A459E994(255);
    sub_1A459EAF0();
    sub_1A459ECA0(&qword_1EB13E0D0, sub_1A459EAF0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E128);
  }

  return result;
}

uint64_t sub_1A459FED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *a1;

  v5 = shouldUseNewCollectionsLayout()();
  sub_1A459E8C0(0, &unk_1EB121B78, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v6 = shouldUseNewCollectionsLayout()();
  LOBYTE(v2) = *(v2 + 18);
  v7 = v6;
  result = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v9 > 250.0;
  *(a2 + 10) = v7;
  *(a2 + 11) = v2;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1A459FFC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 18);

  v5 = shouldUseNewCollectionsLayout()();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

void sub_1A45A0024()
{
  sub_1A3F93438();
  v1 = v0;
  sub_1A459ECA0(&qword_1EB1291C8, sub_1A3F93438);
  v2 = PhotosModel.photokitObject.getter(v1);
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      sub_1A3C48B8C(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A52F8E10;
      *(v6 + 56) = sub_1A3C52C70(0, &qword_1EB1265E0);
      *(v6 + 32) = v5;
      sub_1A3C52C70(0, &qword_1EB126690);
      v7 = v3;
      v8 = MEMORY[0x1A5908EF0](v6);
      v9 = [objc_opt_self() defaultHelper];
      [v9 clearAnyPendingNotificationsFromMemories_];
      [v9 clearAnyPendingStateFromMemories_];
    }

    else
    {
    }
  }
}

uint64_t sub_1A45A01C8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v27 = sub_1A5243834();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459E8C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v30 = sub_1A5243EC4();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &unk_1EB127F40, sub_1A45A8A18, MEMORY[0x1E69C2928], MEMORY[0x1E697F948]);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1A45A8A18();
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v16 = [swift_getObjCClassFromMetadata() sharedInstance];
  v17 = [v16 enableInlinePlaybackMemories];

  if (v17)
  {
    sub_1A5242E24();
    v46[0] = v46[1];
    sub_1A5242E54();
    v18 = v38;
    sub_1A5242E34();
    v19 = *(v45 + 16);

    v43 = v19;
    v44 = 0;
    v20 = MEMORY[0x1E69E5FE0];
    v21 = MEMORY[0x1E69E5FE8];
    j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ(&v38);
    v32 = v38;
    v33 = v39;
    v34 = *(&v39 + 1);
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v22 = sub_1A3D41FBC();
    LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(v46, v18, 0, 0, v20, v21, v15, v22);
    sub_1A45A986C(v15, v12, sub_1A45A8A18);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return sub_1A45A74A4(v15, sub_1A45A8A18);
  }

  else
  {
    sub_1A5242E54();
    v38 = 0u;
    v39 = 0u;
    v40 = 1;
    v24 = sub_1A52429A4();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v27);
    sub_1A5243ED4();
    v25 = v30;
    (*(v7 + 16))(v12, v9, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&unk_1EB1298B0, sub_1A45A8A18);
    sub_1A459ECA0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5249744();
    return (*(v7 + 8))(v9, v25);
  }
}

uint64_t sub_1A45A0808@<X0>(uint64_t a1@<X8>)
{
  sub_1A459E9D0(0, &qword_1EB13E1C0, type metadata accessor for LemonadeMemoryCellPlayButtonView, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeMemoryCellPlayButtonView();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 9) == 1)
  {
    v25 = *v1;
    v26 = a1;
    v13 = v1[2];
    v14 = *(v1 + 24);
    v24 = *(v1 + 8);
    if (v24)
    {
      if (v14)
      {
        v30 = v13 & 1;
        v15 = v13;
      }

      else
      {
        sub_1A3D35B8C(v13, 0);
        v23 = sub_1A524D254();
        v21 = sub_1A524A014();
        sub_1A5246DF4();

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v13, 0);
        (*(v7 + 8))(v9, v6);
        v15 = v30;
      }

      v29 = v15 & 1;
      v28 = 1;
      v17 = 0;
      v19 = 0;
      v20 = !static LemonadeRootViewOrientation.== infix(_:_:)(&v29, &v28);
    }

    else
    {
      v27 = 8;
      v17 = sub_1A3DD18A8();
      v19 = v18;
      v20 = 0;
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = v24;
    *(v22 + 25) = 1;
    *(v22 + 32) = v13;
    *(v22 + 40) = v14;

    sub_1A3D35B8C(v13, v14);
    sub_1A3EC0634(v20, v17, v19, sub_1A45A8CD8, v22, v12);
    sub_1A45A986C(v12, v5, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    sub_1A5249744();
    return sub_1A45A74A4(v12, type metadata accessor for LemonadeMemoryCellPlayButtonView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB12E058, type metadata accessor for LemonadeMemoryCellPlayButtonView);
    return sub_1A5249744();
  }
}

uint64_t sub_1A45A1010@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  sub_1A45A8AC8();
  v56 = v2;
  v53 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A459EF80(0, &qword_1EB13E1A0, MEMORY[0x1E69C2858], sub_1A45A8AC8, MEMORY[0x1E697F948]);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v41 - v5;
  v6 = sub_1A5249234();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A5243C34();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52404F4();
  v50 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5243C54();
  MEMORY[0x1EEE9AC00](v12);
  v15 = *v1;
  v16 = *(v1 + 9);
  v17 = *(v1 + 10);
  v18 = *(v1 + 11);
  v19 = v1[2];
  v20 = *(v1 + 24);
  if (*(v1 + 8) == 1)
  {
    v41 = *(v1 + 11);
    v42 = v20;
    v43 = v17;
    v44 = v16;
    v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v14;
    v51 = v12;
    v21 = sub_1A5242E44();
    if (v22)
    {
      v23 = sub_1A524C634();

      sub_1A52404E4();
      v24 = sub_1A52404B4();
      (*(v50 + 8))(v11, v9);
      v25 = [v23 px:v24 stringByDeletingCharactersInSet:?];

      v53 = sub_1A524C674();
    }

    else
    {
      v53 = v21;
    }

    v32 = v41;
    v31 = v42;
    sub_1A5242E64();
    v33 = MEMORY[0x1E69C2848];
    if (v32)
    {
      if (v31)
      {
        v34 = v19;
        v62 = v19 & 1;
      }

      else
      {
        sub_1A3D35B8C(v19, 0);
        sub_1A524D254();
        v37 = sub_1A524A014();
        sub_1A5246DF4();

        v38 = v47;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v19, 0);
        (*(v48 + 8))(v38, v49);
        v34 = v62;
      }

      v36 = v51;
      v61 = v34 & 1;
      v60 = 1;
      if (!static LemonadeRootViewOrientation.== infix(_:_:)(&v61, &v60))
      {
        v33 = MEMORY[0x1E69C2850];
      }

      v35 = v58;
    }

    else
    {
      v35 = v58;
      v36 = v51;
    }

    (*(v52 + 104))(v55, *v33, v54);
    v39 = v45;
    sub_1A5243C44();
    v40 = v46;
    (*(v46 + 16))(v35, v39, v36);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8);
    sub_1A5249744();
    return (*(v40 + 8))(v39, v36);
  }

  else
  {
    v63 = *v1;
    v26 = swift_allocObject();
    *(v26 + 16) = v15;
    *(v26 + 24) = 0;
    *(v26 + 25) = v16;
    *(v26 + 26) = v17;
    *(v26 + 27) = v18;
    *(v26 + 32) = v19;
    *(v26 + 40) = v20;
    swift_retain_n();
    sub_1A3D35B8C(v19, v20);
    sub_1A3F93438();
    sub_1A459ECA0(&qword_1EB13E198, sub_1A3F93438);
    v27 = v51;
    sub_1A52435F4();
    v28 = v53;
    v29 = v56;
    (*(v53 + 16))(v58, v27, v56);
    swift_storeEnumTagMultiPayload();
    sub_1A459ECA0(&qword_1EB13E1A8, MEMORY[0x1E69C2858]);
    sub_1A459ECA0(&qword_1EB13E1B0, sub_1A45A8AC8);
    sub_1A5249744();
    return (*(v28 + 8))(v27, v29);
  }
}

uint64_t sub_1A45A17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1A524CC54();
  v3[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A45A1884, v5, v4);
}

uint64_t sub_1A45A1884()
{
  sub_1A5242E34();
  v1 = *(v0[2] + 16);
  v0[9] = v1;
  v2 = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1A45A1944;
  v4 = v0[3];
  v5 = v0[4];

  return sub_1A45A1ACC(v4, v2, v5);
}

uint64_t sub_1A45A1944()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A45A1A60;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1A3DB3864;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A45A1A60()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A45A1ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1A459E8C0(0, &qword_1EB127698, MEMORY[0x1E6980FE0], MEMORY[0x1E69E6720]);
  v3[5] = swift_task_alloc();
  v4 = sub_1A5242AE4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A45A1BF8, 0, 0);
}

uint64_t sub_1A45A1BF8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = [v2 storyTitleCategory];
  v4 = objc_opt_self();
  sub_1A5243294();
  v5 = sub_1A524C634();

  v6 = [v4 stylePairingFromTitleCategory:v3 string:v5 kind:1 layoutScheme:0];

  v7 = [v4 titleFontDescriptorForStylePairing:v6 kind:1];
  sub_1A52432A4();
  v9 = [objc_opt_self() fontWithDescriptor:v7 size:v8];
  LODWORD(v4) = [v4 titleShouldBeUppercasedForStylePairing:v6 kind:1];
  sub_1A45A1F30(v2, v1);
  v21 = v9;
  sub_1A524A284();
  v22 = v3;
  if (v4)
  {
    v10 = v0[5];
    v11 = *MEMORY[0x1E6980FD8];
    v12 = sub_1A524A394();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v10, v11, v12);
    v14 = 0;
  }

  else
  {
    v12 = sub_1A524A394();
    v13 = *(v12 - 8);
    v14 = 1;
  }

  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  (*(v13 + 56))(v0[5], v14, 1, v12);
  (*(v17 + 16))(v16, v15, v18);
  sub_1A5242624();

  (*(v17 + 8))(v15, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1A45A1F30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_1A5242AB4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45A8C0C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v48 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v48 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v48 - v17;
  v19 = [a1 localIdentifier];
  if (!v19)
  {
    sub_1A524C674();
    v19 = sub_1A524C634();
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  v20 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

  if (!v20)
  {
    sub_1A45A8C40();
    swift_allocError();
    *v27 = 1;
    *(v27 + 8) = 1;
    return swift_willThrow();
  }

  v51 = v11;
  v50 = sub_1A524C674();
  v52 = v21;
  sub_1A5243294();
  v22 = sub_1A524C634();

  v23 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v22, v20);

  if (v23 == 1)
  {
    v32 = sub_1A52432B4();
    if (v33)
    {
      v34 = v32;
      v35 = sub_1A524C634();
      v36 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v35, v20);

      if (v36 != 1)
      {
        v49 = v34;
        if (qword_1EB15B4C8 != -1)
        {
          swift_once();
        }

        v47 = sub_1A5246F24();
        __swift_project_value_buffer(v47, qword_1EB15B4D0);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v23 = 1;
  }

  else
  {
  }

  if (MEMORY[0x1A590D320]())
  {
    v24 = *MEMORY[0x1E69C20E8];
    v25 = sub_1A5242AD4();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v18, v24, v25);
    (*(v26 + 56))(v18, 0, 1, v25);
  }

  else
  {
    v29 = sub_1A5242AD4();
    (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  }

  v30 = v56;
  if (v23 == 2)
  {

    v31 = MEMORY[0x1E69C20D8];
  }

  else
  {
    if (v23 == 1)
    {
      v49 = v6;
      sub_1A45A986C(v18, v56, sub_1A45A8C0C);
      v37 = sub_1A5242AD4();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v30, 1, v37) == 1)
      {
        sub_1A459E8C0(0, &qword_1EB13E1B8, MEMORY[0x1E69C20F8], MEMORY[0x1E69E6F90]);
        v48[0] = v39;
        v48[1] = v2;
        v40 = *(v38 + 72);
        v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1A52FC9F0;
        v43 = v42 + v41;
        v44 = *(v38 + 104);
        v44(v43, *MEMORY[0x1E69C20E8], v37);
        v44(v43 + v40, *MEMORY[0x1E69C20F0], v37);
        sub_1A524CA84();
      }

      v46 = v51;
      (*(v38 + 32))(v51, v30, v37);
      (*(v38 + 56))(v46, 0, 1, v37);
      (*(v53 + 104))(v49, *MEMORY[0x1E69C20E0], v54);
      sub_1A45A986C(v46, v14, sub_1A45A8C0C);
      sub_1A5242AC4();
      sub_1A45A74A4(v46, sub_1A45A8C0C);
      return sub_1A45A74A4(v18, sub_1A45A8C0C);
    }

    if (v23)
    {

      sub_1A45A8C40();
      swift_allocError();
      *v45 = v23;
      *(v45 + 8) = 0;
      swift_willThrow();
      return sub_1A45A74A4(v18, sub_1A45A8C0C);
    }

    v31 = MEMORY[0x1E69C20D0];
  }

  (*(v53 + 104))(v6, *v31, v54);
  sub_1A45A986C(v18, v14, sub_1A45A8C0C);
  sub_1A5242AC4();
  return sub_1A45A74A4(v18, sub_1A45A8C0C);
}