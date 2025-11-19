void *sub_1A9450338()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

uint64_t sub_1A94504A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v25, 0, 14);
      v16 = v25;
      goto LABEL_19;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    a1 = sub_1A957AE78();
    v13 = a1;
    if (a1)
    {
      a1 = sub_1A957AE98();
      if (__OFSUB__(v11, a1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v13 += v11 - a1;
    }

    if (!__OFSUB__(v12, v11))
    {
LABEL_17:
      sub_1A957AE88();
      v16 = v13;
LABEL_19:
      sub_1A944ED6C(v16, a3, a4, a5);
      goto LABEL_20;
    }

    __break(1u);
LABEL_13:
    v14 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v13 = sub_1A957AE78();
    if (v13)
    {
      v15 = sub_1A957AE98();
      if (__OFSUB__(v14, v15))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v13 += v14 - v15;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  v25[0] = a1;
  LOWORD(v25[1]) = a2;
  BYTE2(v25[1]) = BYTE2(a2);
  BYTE3(v25[1]) = BYTE3(a2);
  BYTE4(v25[1]) = BYTE4(a2);
  v9 = a4 >> 62;
  BYTE5(v25[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_20;
    }

    v20 = *(a3 + 16);
    v19 = *(a3 + 24);
    v21 = __OFSUB__(v19, v20);
    v10 = v19 - v20;
    if (!v21)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_28;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_36;
  }

  v10 = v10;
LABEL_27:
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  if (v10)
  {
    v22 = *a5;
    v23 = v25;
    do
    {
      v24 = *v23++;
      v22 = v24 | (v22 << 8);
      --v10;
    }

    while (v10);
    *a5 = v22;
  }

LABEL_20:
  result = sub_1A9442638(a3, a4);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A94506C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
    v3 = sub_1A957D128();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A937BEE0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
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

unint64_t sub_1A94507A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
    v3 = sub_1A957D128();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A937BEE0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
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

void sub_1A945087C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [objc_allocWithZone(MEMORY[0x1E69584B8]) init];
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = v4;

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v6;
    sub_1A944E9D8(v1, v3);
  }
}

uint64_t sub_1A9450924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A945093C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A9442638(a1, a2);
  }

  return a1;
}

uint64_t sub_1A9450950(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A9450A78(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A9450A8C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9450B48()
{
  result = qword_1EB3876D0;
  if (!qword_1EB3876D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876D0);
  }

  return result;
}

uint64_t sub_1A9450BAC()
{
  v3[2] = *v0;
  v1 = sub_1A9450C00();
  SpeechContext.subscript.getter(&type metadata for UTF8OffsetContextKey, &type metadata for UTF8OffsetContextKey, v1, v3);
  return v3[0];
}

unint64_t sub_1A9450C00()
{
  result = qword_1EB3876D8;
  if (!qword_1EB3876D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876D8);
  }

  return result;
}

uint64_t sub_1A9450C54(uint64_t a1, char a2)
{
  v3 = a1;
  v4 = a2 & 1;
  sub_1A9450C00();
  return SpeechContext.subscript.setter(&v3, &type metadata for UTF8OffsetContextKey);
}

uint64_t SpeechContext.eventTaps.getter()
{
  v3[1] = *v0;
  v1 = sub_1A9450CF8();
  SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v1, v3);
  return v3[0];
}

unint64_t sub_1A9450CF8()
{
  result = qword_1EB3876E0;
  if (!qword_1EB3876E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876E0);
  }

  return result;
}

uint64_t sub_1A9450D4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5[1] = *a1;
  v3 = sub_1A9450CF8();
  result = SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v3, v5);
  *a2 = v5[0];
  return result;
}

uint64_t sub_1A9450DA4(uint64_t *a1)
{
  v2 = *a1;
  sub_1A9450CF8();

  return SpeechContext.subscript.setter(&v2, &type metadata for EventTapContextKey);
}

uint64_t SpeechContext.eventTaps.setter(uint64_t a1)
{
  v2 = a1;
  sub_1A9450CF8();
  return SpeechContext.subscript.setter(&v2, &type metadata for EventTapContextKey);
}

uint64_t (*SpeechContext.eventTaps.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  v5 = *v1;
  v3 = sub_1A9450CF8();
  *(a1 + 24) = v3;
  SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v3, a1);
  return sub_1A9450EB4;
}

uint64_t sub_1A9450EB4(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    SpeechContext.subscript.setter((a1 + 1), &type metadata for EventTapContextKey);
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return SpeechContext.subscript.setter((a1 + 1), &type metadata for EventTapContextKey);
  }
}

unint64_t sub_1A9450F48(uint64_t a1)
{
  result = sub_1A9450F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A9450F70()
{
  result = qword_1EB3876E8;
  if (!qword_1EB3876E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876E8);
  }

  return result;
}

unint64_t sub_1A9450FC8()
{
  result = qword_1EB3876F0;
  if (!qword_1EB3876F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876F0);
  }

  return result;
}

unint64_t sub_1A945101C(uint64_t a1)
{
  result = sub_1A9451044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A9451044()
{
  result = qword_1EB3876F8;
  if (!qword_1EB3876F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876F8);
  }

  return result;
}

unint64_t sub_1A945109C()
{
  result = qword_1EB387700;
  if (!qword_1EB387700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387700);
  }

  return result;
}

uint64_t sub_1A9451110()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A9451184()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A94511D8()
{
  v0 = sub_1A93AD200(&unk_1F1CF5E60);
  result = swift_arrayDestroy();
  qword_1EB3A7C40 = v0;
  *algn_1EB3A7C48 = 0;
  byte_1EB3A7C50 = 1;
  return result;
}

uint64_t sub_1A9451230()
{
  sub_1A937829C(&qword_1EB387780, &qword_1A958F098);
  inited = swift_initStackObject();
  *(inited + 32) = 1768841544;
  *(inited + 16) = xmmword_1A958ECD0;
  *(inited + 40) = 0xE400000000000000;
  if (qword_1EB399D20 != -1)
  {
    v7 = inited;
    swift_once();
    inited = v7;
  }

  v1 = qword_1EB3A7C40;
  v2 = *algn_1EB3A7C48;
  *(inited + 48) = qword_1EB3A7C40;
  *(inited + 56) = v2;
  v3 = byte_1EB3A7C50;
  *(inited + 64) = byte_1EB3A7C50;
  *(inited + 72) = 1953390920;
  *(inited + 80) = 0xE400000000000000;
  *(inited + 88) = v1;
  *(inited + 96) = v2;
  *(inited + 104) = v3;
  *(inited + 112) = 1936613704;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v1;
  *(inited + 136) = v2;
  *(inited + 144) = v3;
  *(inited + 152) = 1634888008;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v1;
  *(inited + 176) = v2;
  *(inited + 184) = v3;
  *(inited + 192) = 1634623819;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 208) = v1;
  *(inited + 216) = v2;
  *(inited + 224) = v3;
  *(inited + 232) = 1851879498;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = v1;
  *(inited + 256) = v2;
  *(inited + 264) = v3;
  *(inited + 272) = 1701998411;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v1;
  *(inited + 296) = v2;
  *(inited + 304) = v3;
  *(inited + 312) = 1735287112;
  *(inited + 320) = 0xE400000000000000;
  *(inited + 328) = v1;
  *(inited + 336) = v2;
  *(inited + 344) = v3;
  v4 = inited;
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  v5 = sub_1A9457EE8(v4);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB387788, &qword_1A958F0A0);
  result = swift_arrayDestroy();
  qword_1EB3A7C58 = v5;
  return result;
}

uint64_t sub_1A9451448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A94514E0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A9451570(int a1)
{
  v2 = v1;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = sub_1A94563DC(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 2038004058;

    if (uscript_getShortName())
    {
      v10 = sub_1A957C298();
      v12 = v11;
      if (sub_1A957C238() < 1)
      {
      }

      else
      {
        v13 = *(*v2 + 152);

        v14 = v13(v21);
        v16 = v15;
        v17 = *v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *v16;
        *v16 = 0x8000000000000000;
        sub_1A945698C(v10, v12, a1, isUniquelyReferenced_nonNull_native);
        *v16 = v20;
        v14(v21, 0);
        return v10;
      }
    }
  }

  return v8;
}

char *sub_1A94516F0(int a1)
{
  v45[5] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    goto LABEL_49;
  }

  v2 = v1;
  v3 = v1[5];
  ScriptExtensions = uscript_getScriptExtensions();
  v5 = ScriptExtensions;
  v44 = 0;
  if (!ScriptExtensions)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_43:

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v6 = sub_1A94571A4(ScriptExtensions, 0);
  memcpy(v6 + 4, v3, 4 * v5);
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_43;
  }

LABEL_4:
  v8 = 0;
  v9 = v6 + 4;
  v10 = MEMORY[0x1E69E7CC0];
  v42 = v6 + 4;
  v43 = v2;
  v38 = v7;
  v39 = v6;
  do
  {
    if (v8 >= v6[2])
    {
      goto LABEL_48;
    }

    v13 = *(v9 + v8);
    if (!v13)
    {
      v11 = 0;
      v12 = 0;
      v44 = 1;
      goto LABEL_6;
    }

    v11 = sub_1A9451570(v13);
    v12 = v14;
    if (qword_1EB399D28 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB3A7C58;
    if (!*(qword_1EB3A7C58 + 16) || (v16 = sub_1A937A490(v11, v12), (v17 & 1) == 0))
    {
      if (((*(*v2 + 112))() & 1) == 0)
      {
        if (!*(v2[3] + 16) || (sub_1A937A490(v11, v12), (v24 & 1) == 0))
        {

          v11 = 0;
          v12 = 0;
          goto LABEL_6;
        }
      }

      v25 = 0;
      goto LABEL_23;
    }

    v18 = v16;

    v19 = *(v15 + 56) + 24 * v18;
    v11 = *v19;
    v12 = *(v19 + 8);
    v20 = *(v19 + 16);
    v41 = v20;
    if (v20)
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v20 == 1)
      {
        v22 = *(v11 + 16);
        if (v22)
        {
          v21 = sub_1A9457228(*(v11 + 16), 0);
          v23 = sub_1A9457918(v45, (v21 + 32), v22, v11);
          sub_1A9457A70(v11, v12, 1u);
          sub_1A9457A70(v11, v12, 1u);
          sub_1A932D088();
          if (v23 != v22)
          {
            goto LABEL_50;
          }

          v2 = v43;
        }

        else
        {
          sub_1A9457A70(v11, v12, 1u);
        }
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A9587160;
      *(v21 + 32) = v11;
      *(v21 + 40) = v12;
      sub_1A9457A70(v11, v12, 0);
    }

    v40 = v10;
    v29 = *(v21 + 16);
    if (!v29)
    {
LABEL_39:

      sub_1A9458200(v11, v12, v41);
      v11 = 0;
      v12 = 0;
      v6 = v39;
      v10 = v40;
      v7 = v38;
      v9 = v42;
      goto LABEL_6;
    }

    v30 = 0;
    v31 = (v21 + 40);
    while (1)
    {
      if (v30 >= *(v21 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      if (*(v2[3] + 16))
      {
        v33 = *(v31 - 1);
        v32 = *v31;

        sub_1A937A490(v33, v32);
        v35 = v34;
        v2 = v43;

        if (v35)
        {
          break;
        }
      }

      ++v30;
      v31 += 2;
      if (v29 == v30)
      {
        goto LABEL_39;
      }
    }

    v25 = v41;
    v6 = v39;
    v10 = v40;
    v7 = v38;
    v9 = v42;
    if (v41 == 255)
    {
LABEL_6:
      sub_1A94592FC(v11, v12, 0xFFu);
      goto LABEL_7;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A9456F40(0, *(v10 + 2) + 1, 1, v10);
    }

    v27 = *(v10 + 2);
    v26 = *(v10 + 3);
    if (v27 >= v26 >> 1)
    {
      v10 = sub_1A9456F40((v26 > 1), v27 + 1, 1, v10);
    }

    *(v10 + 2) = v27 + 1;
    v28 = &v10[24 * v27];
    *(v28 + 4) = v11;
    *(v28 + 5) = v12;
    v28[48] = v25;
    v9 = v42;
LABEL_7:
    ++v8;
  }

  while (v8 != v7);

  if (v44)
  {

    v10 = &unk_1F1CF5F38;
    goto LABEL_46;
  }

LABEL_44:
  if (!*(v10 + 2))
  {

    v10 = &unk_1F1CF5F70;
  }

LABEL_46:
  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1A9451BB4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1 && (v3 = *(v2 + 16)) != 0)
    {
      v4 = sub_1A9457228(*(v2 + 16), 0);
      v5 = sub_1A9457918(&v8, v4 + 4, v3, v2);
      sub_1A9457A70(v2, v1, 1u);
      result = sub_1A932D088();
      if (v5 == v3)
      {
        return v4;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A9587160;
    *(v7 + 32) = v2;
    *(v7 + 40) = v1;

    return v7;
  }

  return result;
}

int64_t sub_1A9451CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v135 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v154 = *(AssociatedTypeWitness - 8);
  v6 = v154[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v129 = v126 - v8;
  v133 = a3;
  v9 = *(*(a3 + 8) + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  v14 = swift_getAssociatedTypeWitness();
  v126[0] = *(v14 - 8);
  v15 = *(v126[0] + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v126 - v17;
  v19 = MEMORY[0x1E69E7CC0];
  v160 = MEMORY[0x1E69E7CC0];
  v134 = a1;
  v126[1] = v9;
  sub_1A957C988();
  sub_1A957C3C8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v131 = v18;
  v132 = v14;
  v128 = AssociatedConformanceWitness;
  sub_1A957CCB8();
  if ((v156 & 1) == 0)
  {
    v48 = v155;
    v127 = (v154 + 1);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v134;
    v137 = a2;
    while (1)
    {
      v49 = v129;
      v50 = v133;
      sub_1A957CD48();
      v161 = v48;
      v51 = v22;
      v52 = AssociatedTypeWitness;
      v53 = *(swift_getAssociatedConformanceWitness() + 8);
      v54 = sub_1A957C9E8();
      v56 = *v55;
      v54(&v155, 0);
      v57 = v49;
      v29 = 40;
      (*v127)(v57, v52);
      v58 = sub_1A94516F0(v56);
      v59 = sub_1A9457B5C(v58);

      MEMORY[0x1EEE9AC00](v60, v61);
      v126[-6] = a2;
      v126[-5] = v50;
      v126[-4] = v59;
      v126[-3] = &v160;
      v126[-2] = v48;
      v126[-1] = v51;

      v26 = v135;
      v62 = sub_1A9453760(sub_1A9458248, &v126[-8], v21);
      v135 = v26;

      v28 = 0;
      v64 = v59 + 56;
      v63 = *(v59 + 56);
      v143 = v59;
      v65 = 1 << *(v59 + 32);
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      else
      {
        v66 = -1;
      }

      v67 = v66 & v63;
      v68 = (v65 + 63) >> 6;
      v146 = v48;
      v136 = v48 >> 14;
      v21 = v62;
      v141 = v59 + 56;
      for (i = v68; ; v68 = i)
      {
LABEL_48:
        if (v67)
        {
          goto LABEL_53;
        }

LABEL_49:
        v69 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v69 >= v68)
        {
          break;
        }

        v67 = *(v64 + 8 * v69);
        ++v28;
        if (!v67)
        {
          goto LABEL_49;
        }

        v28 = v69;
LABEL_53:
        v148 = (v67 - 1) & v67;
        v70 = *(v143 + 48) + 24 * (__clz(__rbit64(v67)) | (v28 << 6));
        v71 = *v70;
        v26 = *(v70 + 8);
        v72 = *(v70 + 16);
        v73 = *(v21 + 16);
        sub_1A9457A70(*v70, v26, *(v70 + 16));
        v75 = v71 != 1 || v26 != 0;
        v76 = v72 == 2;
        if (v26 | v71)
        {
          v76 = 0;
        }

        v147 = v76;
        v77 = *(v21 + 16);
        v154 = v71;
        v150 = v73;
        if (v73)
        {
          v78 = 0;
          v151 = v21 + 32;
          v152 = v71 + 56;
          v149 = v72 != 2 || v75;
          v153 = v72;
          do
          {
            if (v78 >= v77)
            {
              goto LABEL_131;
            }

            v81 = v151 + 40 * v78;
            v82 = *v81;
            v83 = *(v81 + 8);
            v84 = *(v81 + 16);
            if (*(v81 + 16))
            {
              if (v84 != 1)
              {
                if (v82 | v83)
                {
                  if ((v149 & 1) == 0)
                  {
                    sub_1A9458200(*v81, *(v81 + 8), 2u);
                    v116 = 1;
LABEL_118:
                    v114 = 0;
                    v115 = 2;
                    goto LABEL_120;
                  }
                }

                else if (v147)
                {
                  sub_1A9458200(*v81, *(v81 + 8), 2u);
                  v116 = 0;
                  goto LABEL_118;
                }

LABEL_64:
                v79 = v154;
                sub_1A9457A70(v154, v26, v153);
                sub_1A9457A70(v82, v83, v84);
                sub_1A9458200(v82, v83, v84);
                v80 = v79;
                v72 = v153;
                sub_1A9458200(v80, v26, v153);
                goto LABEL_65;
              }

              if (v72 != 1)
              {
                goto LABEL_64;
              }

              v85 = v154;
              if (v82 == v154)
              {
                sub_1A9457A70(v154, *(v81 + 8), 1u);
                sub_1A9457A70(v85, v26, 1u);
                sub_1A9457A70(v85, v83, 1u);
                v82 = v85;
LABEL_114:
                sub_1A9458200(v82, v83, 1u);
                sub_1A9458200(v85, v26, 1u);
                sub_1A9458200(v82, v83, 1u);
                v116 = v85;
                v114 = v26;
                v115 = 1;
                goto LABEL_120;
              }

              if (*(v82 + 16) == v154[2])
              {
                v86 = *(v82 + 56);
                v138 = v82 + 56;
                v87 = 1 << *(v82 + 32);
                if (v87 < 64)
                {
                  v88 = ~(-1 << v87);
                }

                else
                {
                  v88 = -1;
                }

                v29 = v88 & v86;
                sub_1A9457A70(v82, v83, 1u);
                v139 = v26;
                sub_1A9457A70(v85, v26, 1u);
                sub_1A9457A70(v82, v83, 1u);
                v26 = 0;
                v89 = (v87 + 63) >> 6;
                v142 = v89;
                v144 = v21;
                while (v29)
                {
                  v95 = __clz(__rbit64(v29));
                  v145 = (v29 - 1) & v29;
LABEL_94:
                  v98 = (*(v82 + 48) + 16 * (v95 | (v26 << 6)));
                  v100 = *v98;
                  v99 = v98[1];
                  v101 = v154;
                  v102 = v154[5];
                  sub_1A957D4F8();

                  sub_1A957C228();
                  v103 = sub_1A957D548();
                  v104 = -1 << *(v101 + 32);
                  v105 = v103 & ~v104;
                  if (((*(v152 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
                  {
LABEL_102:

                    sub_1A9458200(v82, v83, 1u);
                    v26 = v139;
                    sub_1A9458200(v154, v139, 1u);
                    sub_1A9458200(v82, v83, 1u);
                    v21 = v144;
                    v29 = 40;
                    goto LABEL_104;
                  }

                  v106 = ~v104;
                  while (1)
                  {
                    v107 = (v154[6] + 16 * v105);
                    v108 = *v107 == v100 && v107[1] == v99;
                    if (v108 || (sub_1A957D3E8() & 1) != 0)
                    {
                      break;
                    }

                    v105 = (v105 + 1) & v106;
                    if (((*(v152 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  v21 = v144;
                  v85 = v154;
                  v89 = v142;
                  v29 = v145;
                }

                v96 = v26;
                while (1)
                {
                  v26 = v96 + 1;
                  if (__OFADD__(v96, 1))
                  {
                    break;
                  }

                  if (v26 >= v89)
                  {
                    v26 = v139;
                    goto LABEL_114;
                  }

                  v97 = *(v138 + 8 * v26);
                  ++v96;
                  if (v97)
                  {
                    v95 = __clz(__rbit64(v97));
                    v145 = (v97 - 1) & v97;
                    goto LABEL_94;
                  }
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              sub_1A9457A70(*v81, *(v81 + 8), 1u);
              sub_1A9457A70(v85, v26, 1u);
              sub_1A9457A70(v82, v83, 1u);
              sub_1A9458200(v82, v83, 1u);
              sub_1A9458200(v85, v26, 1u);
              sub_1A9458200(v82, v83, 1u);
LABEL_104:
              v72 = v153;
            }

            else
            {
              if (v72)
              {
                goto LABEL_64;
              }

              v90 = v154;
              if (v82 == v154 && v83 == v26)
              {
                sub_1A9457A70(v154, v26, 0);
                sub_1A9458200(v90, v26, 0);
                v116 = v90;
LABEL_119:
                v114 = v26;
                v115 = 0;
LABEL_120:
                sub_1A9458200(v116, v114, v115);
                if (v78 >= *(v21 + 16))
                {
                  goto LABEL_133;
                }

                v26 = *(v81 + 24);
                if (v136 < v26 >> 14)
                {
                  goto LABEL_134;
                }

                v29 = *v81;
                v117 = *(v81 + 8);
                v118 = *(v81 + 16);
                sub_1A9457A70(*v81, v117, v118);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v21 = sub_1A94572AC(v21);
                }

                if (v78 < *(v21 + 16))
                {
                  v119 = v21 + 40 * v78;
                  v120 = *(v119 + 32);
                  v121 = *(v119 + 40);
                  *(v119 + 32) = v29;
                  *(v119 + 40) = v117;
                  v29 = 40;
                  v122 = *(v119 + 48);
                  *(v119 + 48) = v118;
                  v123 = v146;
                  *(v119 + 56) = v26;
                  *(v119 + 64) = v123;
                  sub_1A9458200(v120, v121, v122);
                  a2 = v137;
                  v64 = v141;
                  v68 = i;
                  v67 = v148;
                  goto LABEL_48;
                }

                goto LABEL_135;
              }

              v92 = *v81;
              v93 = *(v81 + 8);
              v94 = sub_1A957D3E8();
              sub_1A9457A70(v90, v26, 0);
              sub_1A9457A70(v82, v83, 0);
              sub_1A9458200(v82, v83, 0);
              sub_1A9458200(v90, v26, 0);
              v72 = v153;
              if (v94)
              {
                v116 = v154;
                goto LABEL_119;
              }
            }

LABEL_65:
            ++v78;
            v77 = *(v21 + 16);
          }

          while (v78 != v150);
        }

        v109 = v26;
        v26 = v146;
        a2 = v137;
        if (!v77)
        {
          v26 = v146;
          if (!*(v160 + 16))
          {
            sub_1A957C948();
            v26 = v155;
            if (v136 < v155 >> 14)
            {
              goto LABEL_132;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1A945705C(0, *(v21 + 16) + 1, 1, v21);
        }

        v111 = *(v21 + 16);
        v110 = *(v21 + 24);
        v64 = v141;
        v67 = v148;
        if (v111 >= v110 >> 1)
        {
          v124 = sub_1A945705C((v110 > 1), v111 + 1, 1, v21);
          v67 = v148;
          v64 = v141;
          v21 = v124;
        }

        *(v21 + 16) = v111 + 1;
        v112 = v21 + 40 * v111;
        v29 = 40;
        *(v112 + 32) = v154;
        *(v112 + 40) = v109;
        *(v112 + 48) = v72;
        v113 = v146;
        *(v112 + 56) = v26;
        *(v112 + 64) = v113;
      }

      sub_1A957CCB8();
      v48 = v155;
      v22 = v134;
      if (v156)
      {
        goto LABEL_3;
      }
    }
  }

  v21 = v19;
  v22 = v134;
LABEL_3:
  v23 = (*(v126[0] + 8))(v131, v132);
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = v133;
  v126[-4] = a2;
  v126[-3] = v25;
  v126[-2] = &v160;
  v126[-1] = v22;
  sub_1A945391C(sub_1A9457A90, &v126[-6], v21);
  v26 = v160;
  v27 = *(v160 + 16);
  if (v27)
  {
    goto LABEL_9;
  }

  sub_1A957C948();
  v28 = v155;
  sub_1A957C998();
  v29 = v161;
  if (v161 >> 14 < v28 >> 14)
  {
    goto LABEL_136;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v26 = sub_1A945705C(0, *(v26 + 16) + 1, 1, v26);
  }

  v31 = *(v26 + 16);
  v30 = *(v26 + 24);
  v27 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
    v26 = sub_1A945705C((v30 > 1), v31 + 1, 1, v26);
  }

  *(v26 + 16) = v27;
  v32 = v26 + 40 * v31;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  *(v32 + 48) = 2;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  v160 = v26;
LABEL_9:
  v144 = v21;
  v29 = 0;
  v28 = 0;
  v33 = 0;
  v21 = 0;
  v26 = v27 - 1;
  v34 = 255;
  do
  {
    v35 = v28;
    sub_1A94539C0(v26, &v161);
    v28 = v164;
    if (v34 == 255)
    {
      goto LABEL_13;
    }

    if (v29 >> 14 < v164 >> 14)
    {
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v34)
    {
      if (v34 == 1)
      {

        sub_1A9458200(v36, v33, 1u);
        sub_1A9458200(0, 0, 2u);
        v38 = v161;
        v37 = v162;
        v39 = v163;
        if (v163 == 1)
        {
          sub_1A9458234(v21, v33, v34);
          sub_1A9457A70(v38, v37, 1u);
          v40 = sub_1A9454870(v21, v38);
          sub_1A9458200(v21, v33, 1u);
          sub_1A9458200(v38, v37, 1u);
          if (v40)
          {
            goto LABEL_11;
          }

          goto LABEL_31;
        }

        sub_1A9458234(v21, v33, v34);
        sub_1A9457A70(v38, v37, v39);
        v41 = v21;
        v42 = v33;
        v43 = 1;
      }

      else
      {
        sub_1A9458200(v21, v33, 2u);
        sub_1A9458200(0, 0, 2u);
        if (!(v21 | v33))
        {
          goto LABEL_11;
        }

        v38 = v161;
        v37 = v162;
        v39 = v163;
        if (v163 == 2 && v161 == 1 && !v162)
        {
          sub_1A9458200(v21, v33, 2u);
          sub_1A9458200(1, 0, 2u);
LABEL_11:
          sub_1A9458220(v21, v33, v34);
LABEL_12:
          v165 = v29;
          goto LABEL_13;
        }

        sub_1A9457A70(v161, v162, v163);
        v41 = v21;
        v42 = v33;
        v43 = 2;
      }
    }

    else
    {

      sub_1A9458200(v21, v33, 0);
      sub_1A9458200(0, 0, 2u);
      v38 = v161;
      v37 = v162;
      v39 = v163;
      if (!v163)
      {
        if (v21 == v161 && v33 == v162)
        {

          sub_1A9458200(v21, v33, 0);
          sub_1A9458200(v21, v33, 0);
          goto LABEL_12;
        }

        v47 = sub_1A957D3E8();
        sub_1A9458234(v21, v33, v34);
        sub_1A9457A70(v38, v37, 0);
        sub_1A9458200(v21, v33, 0);
        sub_1A9458200(v38, v37, 0);
        if (v47)
        {
          goto LABEL_11;
        }

LABEL_38:

        v44 = v38;
        v45 = v37;
        v46 = 0;
        goto LABEL_39;
      }

      sub_1A9458234(v21, v33, v34);
      sub_1A9457A70(v38, v37, v39);
      v41 = v21;
      v42 = v33;
      v43 = 0;
    }

    sub_1A9458200(v41, v42, v43);
    sub_1A9458200(v38, v37, v39);
    if (!v39)
    {
      goto LABEL_38;
    }

    if (v39 != 1)
    {
      sub_1A9458200(v38, v37, 2u);
      sub_1A9458200(0, 0, 2u);
      if (!(v38 | v37))
      {
        sub_1A9458200(v38, v37, 2u);
        v161 = v21;
        v162 = v33;
        v163 = v34;
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_31:

    v45 = v37;
    v46 = 1;
LABEL_39:
    sub_1A9458200(v44, v45, v46);
    sub_1A9458200(0, 0, 2u);
LABEL_40:
    if (*(v160 + 16) < v26)
    {
      goto LABEL_128;
    }

    v155 = v21;
    v156 = v33;
    v157 = v34;
    v158 = v35;
    v159 = v29;
    sub_1A945812C(v26, v26, &v155);
    sub_1A9458220(v21, v33, v34);
LABEL_13:
    v21 = v161;
    v33 = v162;
    v34 = v163;
    v29 = v165;
    --v26;
  }

  while (v26 != -1);
  v164 = v28;
  sub_1A945812C(0, 0, &v161);
  sub_1A9458200(v21, v33, v34);

  return v160;
}

uint64_t sub_1A9452E70(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v8 = *(a4 + 40);
  sub_1A957D4F8();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v33, a1);
    }

    else
    {
      v9 = a1 | a2 ? 3 : 2;
      MEMORY[0x1AC5863C0](v9);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v10 = sub_1A957D548();
  v11 = -1 << *(a4 + 32);
  v12 = v10 & ~v11;
  if (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v32 = ~v11;
  v13 = a3 != 2;
  v14 = a3 == 2;
  if (a2 | a1)
  {
    v14 = 0;
  }

  if (a1 != 1 || a2 != 0)
  {
    v13 = 1;
  }

  v30 = v14;
  v31 = v13;
  while (1)
  {
    v16 = *(a4 + 48) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (*(v16 + 16))
    {
      if (v19 == 1)
      {
        if (a3 == 1)
        {
          v20 = 1;
          sub_1A9457A70(v18, v17, 1u);
          sub_1A9457A70(v18, v17, 1u);
          sub_1A9457A70(a1, a2, 1u);
          v21 = sub_1A9454870(v18, a1);
          sub_1A9458200(v18, v17, 1u);
          sub_1A9458200(v18, v17, 1u);
          sub_1A9458200(a1, a2, 1u);
          if (v21)
          {
            return v20;
          }

          goto LABEL_22;
        }

LABEL_20:
        sub_1A9457A70(v18, v17, v19);
      }

      else
      {
        if (v18 | v17)
        {
          if (!v31)
          {
            sub_1A9458200(v18, v17, 2u);
            v20 = 1;
            sub_1A9458200(1, 0, 2u);
            return v20;
          }
        }

        else if (v30)
        {
          sub_1A9458200(v18, v17, 2u);
          v27 = 0;
          v28 = 0;
          v29 = 2;
          goto LABEL_43;
        }

        LOBYTE(v19) = 2;
      }

      sub_1A9457A70(a1, a2, a3);
      sub_1A9458200(v18, v17, v19);
      sub_1A9458200(a1, a2, a3);
      goto LABEL_22;
    }

    if (a3)
    {
      goto LABEL_20;
    }

    if (v18 == a1 && v17 == a2)
    {
      break;
    }

    v23 = *v16;
    v24 = *(v16 + 8);
    v25 = sub_1A957D3E8();
    sub_1A9457A70(v18, v17, 0);
    sub_1A9457A70(a1, a2, 0);
    sub_1A9458200(v18, v17, 0);
    sub_1A9458200(a1, a2, 0);
    if (v25)
    {
      return 1;
    }

LABEL_22:
    v12 = (v12 + 1) & v32;
    if (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1A9457A70(a1, a2, 0);
  sub_1A9457A70(a1, a2, 0);
  sub_1A9458200(a1, a2, 0);
  v27 = a1;
  v28 = a2;
  v29 = 0;
LABEL_43:
  sub_1A9458200(v27, v28, v29);
  return 1;
}

uint64_t TTSStringTagger.Tag.extendingRangeTo(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v9 + 16))(v12, v4, v8);
  v14 = *(v4 + *(a2 + 36));
  if (a1 >> 14 < v14 >> 14)
  {
    __break(1u);
  }

  else
  {
    v15 = *(a2 + 24);
    (*(v9 + 32))(a3, v12, v8);
    result = type metadata accessor for TTSStringTagger.Tag();
    v16 = (a3 + *(result + 36));
    *v16 = v14;
    v16[1] = a1;
  }

  return result;
}

uint64_t sub_1A9453308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 32);
  v50 = *(a1 + 24);
  v54 = v50;
  v45 = v11;
  v59[0] = v11;
  sub_1A9457A70(v8, v9, v10);
  v49 = *(a4 + 8);
  v48 = sub_1A957C078();
  if (v10 == 2 && (v9 | v8) == 0)
  {
    v19 = 0;
    v17 = 0;
    LOBYTE(v13) = 2;
  }

  else
  {
    v41 = v10;
    v42 = v9;
    v43 = v8;
    v44 = v5;
    v13 = *v5;
    v14 = *(*v5 + 16);
    if (v14)
    {
      v47 = v45 >> 14;
      v15 = 40 * v14 + 32;
      v16 = -v14;
      v17 = v50;
      while (1)
      {
        if (v14 > v13[2])
        {
          __break(1u);
LABEL_38:
          v50 = v17;
          break;
        }

        v53 = v16;
        v18 = v13 + v15;
        v19 = *(v13 + v15 - 40);
        v5 = *(v13 + v15 - 32);
        v20 = *(v13 + v15 - 24);
        v21 = *(v13 + v15 - 8);
        v22 = v21 >> 14;
        v50 = v17;
        if (v21 >> 14 <= v17 >> 14)
        {
          sub_1A9457A70(v19, v5, v20);
          sub_1A9458200(v19, v5, v20);
          break;
        }

        v51 = v15;
        v23 = v13;
        v52 = v14 - 1;
        v24 = *(v18 - 2);
        v13 = (v24 >> 14);
        v17 >>= 14;
        if (v24 >> 14 == v17 && v22 == v47)
        {
          v59[0] = v19;
          v59[1] = v5;
          v60 = v20;
          v57[0] = v43;
          v57[1] = v42;
          v58 = v41;
          sub_1A9457A70(v19, v5, v20);
          sub_1A9454570(v59, v57, &v54);
          sub_1A9458200(v43, v42, v41);
          sub_1A9458200(v19, v5, v20);
          v19 = v54;
          v17 = v55;
          LOBYTE(v13) = v56;
          v5 = v44;
          sub_1A94539C0(v52, &v54);
          sub_1A9458200(v54, v55, v56);
          goto LABEL_31;
        }

        v46 = v14;
        v54 = *(v18 - 2);
        v59[0] = v21;
        sub_1A9457A70(v19, v5, v20);
        if (sub_1A957C078() >= v48)
        {
          sub_1A9458200(v19, v5, v20);
          if (v47 < v22)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            result = sub_1A945705C(0, a2[2] + 1, 1, a2);
            a2 = result;
LABEL_34:
            v39 = a2[2];
            v38 = a2[3];
            if (v39 >= v38 >> 1)
            {
              result = sub_1A945705C((v38 > 1), v39 + 1, 1, a2);
              a2 = result;
            }

            a2[2] = v39 + 1;
            v40 = &a2[5 * v39];
            v40[4] = v19;
            v40[5] = v17;
            *(v40 + 48) = v13;
            v40[7] = v50;
            v40[8] = v45;
            *v5 = a2;
            return result;
          }

          v54 = v21;
          v59[0] = v45;
          v48 = sub_1A957C078();
          v17 = v21;
          v13 = v23;
          v27 = v51;
          v26 = v53;
        }

        else
        {
          if (v13 >= v17)
          {
            sub_1A9458200(v19, v5, v20);
            v13 = v23;
            v17 = v50;
            v26 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1A94572AC(v23);
            }

            v27 = v51;
            v32 = v13[2];
            if (v46 > v32)
            {
              goto LABEL_40;
            }

            v33 = *(v13 + v51 - 40);
            v34 = v32 - 1;
            v35 = *(v13 + v51 - 32);
            v36 = *(v13 + v51 - 24);
            memmove(v13 + v51 - 40, v13 + v51, 40 * (v53 + v32));
            v13[2] = v34;
            v29 = v33;
            v30 = v35;
            v31 = v36;
          }

          else
          {
            v13 = v23;
            v17 = v50;
            v26 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_1A94572AC(v23);
            }

            v27 = v51;
            if (v46 > v13[2])
            {
              goto LABEL_41;
            }

            v28 = v13 + v51;
            v29 = *(v13 + v51 - 40);
            v30 = *(v13 + v51 - 32);
            *(v28 - 5) = v19;
            *(v28 - 4) = v5;
            v31 = *(v13 + v51 - 24);
            *(v28 - 24) = v20;
            *(v28 - 2) = v24;
            *(v28 - 1) = v50;
          }

          sub_1A9458200(v29, v30, v31);
          *v44 = v13;
        }

        v15 = v27 - 40;
        v16 = v26 + 1;
        v14 = v52;
        if (!v52)
        {
          goto LABEL_38;
        }
      }
    }

    v19 = v43;
    v5 = v44;
    v17 = v42;
    LOBYTE(v13) = v41;
  }

LABEL_31:
  if ((v50 ^ v45) >= 0x4000)
  {
    a2 = *v5;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  return sub_1A9458200(v19, v17, v13);
}

uint64_t sub_1A9453760(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v20 = result;
  v19 = *(a3 + 16);
  if (v19)
  {
    v5 = 0;
    v6 = (a3 + 56);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 2);
      v21 = *(v6 - 3);
      v22 = v8;
      v23 = *(v6 - 8);
      v24 = *v6;
      sub_1A9457A70(v21, v8, v23);
      v9 = v20(&v21);
      if (v3)
      {
        sub_1A9458200(v21, v22, v23);

        goto LABEL_15;
      }

      v11 = v21;
      v10 = v22;
      v12 = v23;
      if (v9)
      {
        v13 = v24;
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1A94572C0(0, *(v7 + 16) + 1, 1);
          v7 = v25;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v16 = v7;
        if (v15 >= v14 >> 1)
        {
          result = sub_1A94572C0((v14 > 1), v15 + 1, 1);
          v16 = v25;
        }

        *(v16 + 16) = v15 + 1;
        v17 = v16 + 40 * v15;
        *(v17 + 32) = v11;
        *(v17 + 40) = v10;
        *(v17 + 48) = v12;
        v4 = a3;
        *(v17 + 56) = v13;
        v7 = v16;
      }

      else
      {
        result = sub_1A9458200(v21, v22, v23);
      }

      ++v5;
      v6 = (v6 + 40);
      if (v19 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v7;
  }

  return result;
}

uint64_t sub_1A945391C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *(v7 - 3);
      v12 = v9;
      v13 = v10;
      v14 = *v7;
      sub_1A9457A70(v11, v9, v10);
      v5(&v11);
      result = sub_1A9458200(v11, v12, v13);
      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 = (v7 + 40);
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1A94539C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94572AC(v5);
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
    v9 = &v5[5 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 3);
    result = memmove(v9, v9 + 5, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A9453A64(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A94572E0(0, v3, 0);
    v4 = v27;
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v20[0] = v7;
      v20[1] = v8;
      v21 = v9;
      v22 = *v6;
      sub_1A9457A70(v7, v8, v9);
      sub_1A9453BA4(v20, v2, &v23);
      sub_1A9458200(v7, v8, v9);
      v10 = v23;
      v11 = v24;
      v12 = v25;
      v13 = v26;
      v27 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v26;
        v19 = v23;
        sub_1A94572E0((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v10 = v19;
        v4 = v27;
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v10;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v6 = (v6 + 40);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1A9453BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v5 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v80 - v8;
  v104 = sub_1A957B2E8();
  v10 = *(v104 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v104, v12);
  v107 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1A957B188();
  v14 = *(v108 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v108, v16);
  v101 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v100 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v99 = &v80 - v23;
  v106 = sub_1A957B308();
  v87 = *(v106 - 8);
  v24 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v106, v25);
  v105 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  v85 = *(a1 + 32);
  v84 = v30;
  v83 = v29;
  if (v29)
  {
    if (v29 == 1)
    {
      v31 = v28;

      sub_1A9458200(v32, v28, 1u);
      result = sub_1A9458200(1, 0, 2u);
      v34 = *(v27 + 16);
      v82 = v28;
      if (v34)
      {
        v97 = v10;
        v35 = sub_1A9457228(v34, 0);
        v36 = sub_1A9457918(v110, v35 + 4, v34, v27);
        v109 = v110[2];
        v102 = v110[4];
        v103 = v110[3];
        sub_1A9457A70(v27, v31, 1u);
        result = sub_1A932D088();
        if (v36 != v34)
        {
LABEL_31:
          __break(1u);
          return result;
        }

        v37 = v35;
        v10 = v97;
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v38 = v27;
      sub_1A9458200(v27, v28, 2u);
      result = sub_1A9458200(1, 0, 2u);
      if (v27 | v28)
      {
        sub_1A937829C(&qword_1EB386B40, &qword_1A95885C8);
        v39 = *(v14 + 72);
        v40 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1A9587160;
        sub_1A957B168();
        v42 = sub_1A93ACF58(v41);
        swift_setDeallocating();
        (*(v14 + 8))(v41 + v40, v108);
        result = swift_deallocClassInstance();
        *a3 = v38;
        *(a3 + 8) = v28;
        *(a3 + 16) = 2;
        v43 = v84;
        *(a3 + 24) = v42;
        *(a3 + 32) = v43;
        *(a3 + 40) = v85;
        return result;
      }

      v82 = v28;
      v37 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    sub_1A9458200(v27, v28, 0);
    sub_1A9458200(1, 0, 2u);
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1A9587160;
    *(v37 + 32) = v27;
    *(v37 + 40) = v28;
    v82 = v28;
  }

  v80 = v27;
  v81 = a3;
  v44 = *(v37 + 16);
  if (v44)
  {
    v45 = 0;
    v92 = v37 + 32;
    v46 = v87 + 16;
    v47 = (v87 + 8);
    v48 = (v10 + 1);
    v103 = (v14 + 48);
    v96 = (v14 + 16);
    v97 = (v14 + 32);
    v95 = (v14 + 8);
    v49 = MEMORY[0x1E69E7CD0];
    v86 = v37;
    v88 = v44;
    v98 = v9;
    while (v45 < *(v37 + 16))
    {
      v50 = (v92 + 16 * v45);
      v52 = *v50;
      v51 = v50[1];
      v110[0] = v49;
      v53 = *(v93 + 24);
      if (*(v53 + 16))
      {
        v94 = v45;

        v54 = sub_1A937A490(v52, v51);
        if (v55)
        {
          v90 = v51;
          v91 = v49;
          v56 = *(*(v53 + 56) + 8 * v54);
          v57 = *(v56 + 16);
          if (v57)
          {
            v58 = v56 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
            v59 = *(v87 + 72);
            v109 = *(v87 + 16);
            v89 = v56;

            v102 = v59;
            do
            {
              v60 = v105;
              v61 = v106;
              v109(v105, v58, v106);
              v62 = v107;
              sub_1A957B2F8();
              (*v47)(v60, v61);
              sub_1A957B2B8();
              (*v48)(v62, v104);
              v63 = v108;
              if ((*v103)(v9, 1, v108) == 1)
              {
                sub_1A937B960(v9, &qword_1EB386A68, &qword_1A9587F40);
              }

              else
              {
                v64 = v99;
                (*v97)(v99, v9, v63);
                v65 = v48;
                v66 = v101;
                (*v96)(v101, v64, v63);
                v67 = v63;
                v68 = v47;
                v69 = v46;
                v70 = v100;
                v71 = v66;
                v48 = v65;
                sub_1A93A3F0C(v100, v71);
                v72 = *v95;
                v73 = v70;
                v46 = v69;
                v47 = v68;
                (*v95)(v73, v67);
                v74 = v67;
                v9 = v98;
                v72(v64, v74);
                v59 = v102;
              }

              v58 += v59;
              --v57;
            }

            while (v57);

            v37 = v86;
          }

          v49 = v110[0];
          v44 = v88;
        }

        else
        {
        }

        v45 = v94;
      }

      if (++v45 == v44)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v49 = MEMORY[0x1E69E7CD0];
LABEL_28:

  v75 = v81;
  v76 = v80;
  v77 = v82;
  *v81 = v80;
  v75[1] = v77;
  v78 = v83;
  *(v75 + 16) = v83;
  v79 = v84;
  v75[3] = v49;
  v75[4] = v79;
  v75[5] = v85;
  return sub_1A9457A70(v76, v77, v78);
}

uint64_t sub_1A94543A0(void *a1)
{
  v3 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  v4 = a1[3];
  v5 = a1[4];
  v6 = sub_1A93780F4(a1, v4);
  (*(*v1 + 176))(v6, v4, v5);
  v7 = (*(*v1 + 184))();

  return v7;
}

uint64_t TTSStringTagger.__allocating_init(locales:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A945833C(a1);

  return v2;
}

uint64_t TTSStringTagger.init(locales:)(uint64_t a1)
{
  v1 = sub_1A945833C(a1);

  return v1;
}

void *TTSStringTagger.deinit()
{
  MEMORY[0x1AC587CD0](v0[5], -1, -1);
  v1 = v0[3];

  v2 = v0[4];

  return v0;
}

uint64_t TTSStringTagger.__deallocating_deinit()
{
  MEMORY[0x1AC587CD0](v0[5], -1, -1);
  v1 = v0[3];

  v2 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1A9454570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6 >= 2 && *a1 == 0)
  {
    v19 = *a1;
    v20 = v4;
LABEL_26:
    sub_1A9458200(v19, v20, 2u);
    result = sub_1A9458200(0, 0, 2u);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return result;
  }

  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_1A9457A70(*a1, v4, v6);
  sub_1A9458200(v5, v4, v6);
  sub_1A9458200(0, 0, 2u);
  if (v10 >= 2 && (v9 | v8) == 0)
  {
    v19 = v9;
    v20 = v8;
    goto LABEL_26;
  }

  sub_1A9457A70(v9, v8, v10);
  sub_1A9458200(v9, v8, v10);
  sub_1A9458200(0, 0, 2u);
  if (!v6)
  {
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A9587160;
    *(v13 + 32) = v5;
    *(v13 + 40) = v4;

    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v10 != 1 || (v15 = *(v9 + 16)) == 0)
    {
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v21 = sub_1A9457228(*(v9 + 16), 0);
    v23 = sub_1A9457918(&v24, v21 + 4, v15, v9);
    sub_1A9457A70(v9, v8, 1u);
    result = sub_1A932D088();
    if (v23 == v15)
    {
      v16 = v21;
LABEL_21:
      v24 = v13;
      sub_1A93ABFE0(v16);
      v18 = sub_1A93AD200(v24);

      *a3 = v18;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }

    goto LABEL_30;
  }

  if (v6 != 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v12 = *(v5 + 16);
  if (!v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v13 = sub_1A9457228(*(v5 + 16), 0);
  v22 = sub_1A9457918(&v24, (v13 + 32), v12, v5);
  sub_1A9457A70(v5, v4, 1u);
  result = sub_1A932D088();
  if (v22 == v12)
  {
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A9587160;
    *(v17 + 32) = v9;
    *(v17 + 40) = v8;

    v16 = v17;
    goto LABEL_21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1A9454870(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1A957D4F8();

    sub_1A957C228();
    v17 = sub_1A957D548();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9454A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v49 = &v38 - v13;
  result = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v38 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 56);
  v38 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v45 = v5 + 32;
  v47 = a2 + 56;
  v48 = v5 + 16;
  v24 = (v5 + 8);
  v39 = v23;
  v40 = &v38 - v16;
  v41 = v5;
  v42 = a1;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
LABEL_13:
      v28 = *(a1 + 48);
      v46 = *(v5 + 72);
      v29 = *(v5 + 16);
      v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4);
      (*(v5 + 32))(v49, v17, v4);
      v30 = *(a2 + 40);
      sub_1A9459260(&qword_1EB386498, MEMORY[0x1E6969610]);
      v31 = sub_1A957C058();
      v32 = -1 << *(a2 + 32);
      v33 = v31 & ~v32;
      if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
      {
        break;
      }

      v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34 = a2;
      v35 = ~v32;
      while (1)
      {
        v29(v10, *(v34 + 48) + v33 * v46, v4);
        sub_1A9459260(&qword_1EB386490, MEMORY[0x1E6969610]);
        v36 = sub_1A957C098();
        v37 = *v24;
        (*v24)(v10, v4);
        if (v36)
        {
          break;
        }

        v33 = (v33 + 1) & v35;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          v37(v49, v4);
          return 0;
        }
      }

      result = (v37)(v49, v4);
      a2 = v34;
      v5 = v41;
      a1 = v42;
      v23 = v39;
      v17 = v40;
      v22 = v44;
      if (!v44)
      {
        goto LABEL_8;
      }
    }

    (*v24)(v49, v4);
    return 0;
  }

LABEL_8:
  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return 1;
    }

    v27 = *(v38 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v44 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTSStringTagger.CombinedScriptLanguageTag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A94576EC(a1, v4);
}

uint64_t TTSStringTagger.CombinedScriptLanguageTag.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v7, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  sub_1A94576EC(v7, v4);
  return sub_1A957D548();
}

uint64_t sub_1A9454F50(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A94576EC(a1, v4);
}

uint64_t sub_1A9455008()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v7, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  sub_1A94576EC(v7, v4);
  return sub_1A957D548();
}

uint64_t TTSStringTagger.Tag.range.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t TTSStringTagger.Tag.range.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t (*TTSStringTagger.Tag.range.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_23;
  v4 = v2 + *(a2 + 36);
  return result;
}

BOOL static TTSStringTagger.Tag.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  result = 0;
  if (sub_1A957C098())
  {
    v7 = *(type metadata accessor for TTSStringTagger.Tag() + 36);
    v8 = a1 + v7;
    v9 = *(a1 + v7);
    v10 = (a2 + v7);
    if (!((*v10 ^ v9) >> 14) && (*(v8 + 8) ^ v10[1]) < 0x4000)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TTSStringTagger.ScriptTag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);

      return sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }
}

uint64_t TTSStringTagger.ScriptTag.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v6, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1AC5863C0](v4);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A945534C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v6, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1AC5863C0](v4);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A94553F8(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);

      return sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }
}

uint64_t sub_1A94554BC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v6, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1AC5863C0](v4);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A9455564(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v44 = *v4;
  v9 = *(*v4 + 40);
  sub_1A957D4F8();
  v41 = v4;
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v45, a2);
    }

    else
    {
      if (a2 | a3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      MEMORY[0x1AC5863C0](v10);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v11 = sub_1A957D548();
  v12 = -1 << *(v44 + 32);
  v13 = v11 & ~v12;
  if (((*(v44 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_39:
    v30 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45[0] = *v41;
    sub_1A9457A70(a2, a3, a4);
    sub_1A9455C1C(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v41 = *&v45[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v14 = ~v12;
  v15 = a4 != 2;
  v16 = a4 == 2;
  if (a3 | a2)
  {
    v16 = 0;
  }

  if (a2 != 1 || a3 != 0)
  {
    v15 = 1;
  }

  v42 = v16;
  v43 = v15;
  while (1)
  {
    v21 = *(v44 + 48) + 24 * v13;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (*(v21 + 16))
    {
      break;
    }

    if (a4)
    {
      sub_1A9457A70(a2, a3, a4);
      v18 = v23;
      v19 = v22;
      v20 = 0;
      goto LABEL_19;
    }

    if (v23 == a2 && v22 == a3)
    {
      v36 = *(v21 + 8);

      sub_1A9458200(a2, a3, 0);
LABEL_41:
      v33 = a2;
      v34 = a3;
      v35 = 0;
      goto LABEL_44;
    }

    v27 = *v21;
    v28 = *(v21 + 8);
    v29 = sub_1A957D3E8();
    sub_1A9457A70(a2, a3, 0);
    sub_1A9457A70(v23, v22, 0);
    sub_1A9458200(v23, v22, 0);
    sub_1A9458200(a2, a3, 0);
    if (v29)
    {
      goto LABEL_41;
    }

LABEL_20:
    v13 = (v13 + 1) & v14;
    if (((*(v44 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v24 == 1)
  {
    if (a4 != 1)
    {
      sub_1A9457A70(a2, a3, a4);
      v18 = v23;
      v19 = v22;
      v20 = 1;
LABEL_19:
      sub_1A9457A70(v18, v19, v20);
      sub_1A9458200(v23, v22, v24);
      sub_1A9458200(a2, a3, a4);
      goto LABEL_20;
    }

    sub_1A9457A70(v23, v22, 1u);
    sub_1A9457A70(a2, a3, 1u);
    sub_1A9457A70(v23, v22, 1u);
    v25 = sub_1A9454870(v23, a2);
    sub_1A9458200(v23, v22, 1u);
    sub_1A9458200(v23, v22, 1u);
    sub_1A9458200(a2, a3, 1u);
    if (v25)
    {
      v33 = a2;
      v34 = a3;
      v35 = 1;
      goto LABEL_44;
    }

    goto LABEL_20;
  }

  if (v23 | v22)
  {
    if (!v43)
    {
      sub_1A9458200(v23, v22, 2u);
      v33 = 1;
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (!v42)
  {
LABEL_38:
    v18 = a2;
    v19 = a3;
    v20 = a4;
    goto LABEL_19;
  }

  sub_1A9458200(v23, v22, 2u);
  v33 = 0;
LABEL_43:
  v34 = 0;
  v35 = 2;
LABEL_44:
  sub_1A9458200(v33, v34, v35);
  v37 = *(v44 + 48) + 24 * v13;
  v38 = *v37;
  v39 = *(v37 + 8);
  *a1 = *v37;
  *(a1 + 8) = v39;
  v40 = *(v37 + 16);
  *(a1 + 16) = v40;
  sub_1A9457A70(v38, v39, v40);
  return 0;
}

uint64_t sub_1A945595C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1A957D4F8();
      if (v22)
      {
        if (v22 == 1)
        {
          MEMORY[0x1AC5863C0](1);
          sub_1A9457590(v35, v20);
        }

        else
        {
          if (v20 | v21)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          MEMORY[0x1AC5863C0](v24);
        }
      }

      else
      {
        MEMORY[0x1AC5863C0](0);
        sub_1A957C228();
      }

      result = sub_1A957D548();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A9455C1C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v11 = result;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 > v12 && (a5 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a5)
  {
    sub_1A945595C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1A9455FD4();
      goto LABEL_45;
    }

    sub_1A945613C(v12 + 1);
  }

  v14 = *v5;
  v15 = *(*v5 + 40);
  sub_1A957D4F8();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v37, v11);
    }

    else
    {
      if (v11 | a2)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      MEMORY[0x1AC5863C0](v16);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v5 = v37;
  result = sub_1A957D548();
  v17 = -1 << *(v14 + 32);
  a4 = result & ~v17;
  if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v18 = ~v17;
    v19 = a3 != 2;
    v20 = a3 == 2;
    if (a2 | v11)
    {
      v20 = 0;
    }

    if (v11 != 1 || a2 != 0)
    {
      v19 = 1;
    }

    v34 = v20;
    v35 = v19;
    do
    {
      v22 = *(v14 + 48) + 24 * a4;
      v6 = *v22;
      v5 = *(v22 + 8);
      v7 = *(v22 + 16);
      if (*(v22 + 16))
      {
        if (v7 != 1)
        {
          if (v6 | v5)
          {
            if (!v35)
            {
              goto LABEL_48;
            }
          }

          else if (v34)
          {
            a2 = 0;
            v11 = 0;
LABEL_51:
            sub_1A9458200(v6, v5, v7);
            sub_1A9458200(v11, a2, v7);
LABEL_52:
            result = sub_1A957D428();
            __break(1u);
            return result;
          }

          LOBYTE(v7) = 2;
          goto LABEL_27;
        }

        if (a3 != 1)
        {
LABEL_26:
          sub_1A9457A70(v6, v5, v7);
LABEL_27:
          sub_1A9457A70(v11, a2, a3);
          sub_1A9458200(v6, v5, v7);
          result = sub_1A9458200(v11, a2, a3);
          goto LABEL_28;
        }

        sub_1A9457A70(v6, v5, 1u);
        sub_1A9457A70(v6, v5, 1u);
        sub_1A9457A70(v11, a2, 1u);
        LOBYTE(v7) = sub_1A9454870(v6, v11);
        sub_1A9458200(v6, v5, 1u);
        sub_1A9458200(v6, v5, 1u);
        v23 = v11;
        v24 = a2;
        v25 = 1;
      }

      else
      {
        if (a3)
        {
          goto LABEL_26;
        }

        if (v6 == v11 && v5 == a2)
        {
          sub_1A9457A70(v11, a2, 0);
          sub_1A9457A70(v11, a2, 0);
          v5 = a2;
          v6 = v11;
          goto LABEL_51;
        }

        v27 = *v22;
        v28 = *(v22 + 8);
        LOBYTE(v7) = sub_1A957D3E8();
        sub_1A9457A70(v6, v5, 0);
        sub_1A9457A70(v11, a2, 0);
        sub_1A9458200(v6, v5, 0);
        v23 = v11;
        v24 = a2;
        v25 = 0;
      }

      result = sub_1A9458200(v23, v24, v25);
      if (v7)
      {
        goto LABEL_52;
      }

LABEL_28:
      a4 = (a4 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_45:
  v29 = *v36;
  *(*v36 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v30 = *(v29 + 48) + 24 * a4;
  *v30 = v11;
  *(v30 + 8) = a2;
  *(v30 + 16) = a3;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_48:
    a2 = 0;
    v11 = 1;
    goto LABEL_51;
  }

  *(v29 + 16) = v33;
  return result;
}

void *sub_1A9455FD4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  v2 = *v0;
  v3 = sub_1A957CE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1A9457A70(v19, v20, v22);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A945613C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1A957D4F8();
      if (v22)
      {
        if (v22 == 1)
        {
          MEMORY[0x1AC5863C0](1);

          sub_1A9457590(v34, v20);
        }

        else
        {
          if (v20 | v21)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          MEMORY[0x1AC5863C0](v24);
        }
      }

      else
      {
        MEMORY[0x1AC5863C0](0);

        sub_1A957C228();
      }

      result = sub_1A957D548();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_38;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_36;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1A94563DC(int a1)
{
  v3 = *(v1 + 40);
  sub_1A957D4F8();
  sub_1A957D528();
  v4 = sub_1A957D548();

  return sub_1A937BF28(a1, v4);
}

uint64_t sub_1A9456448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387720, &qword_1A958F038);
  v37 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1A957D4F8();
      sub_1A957D528();
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
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1A94566E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387730, &qword_1A958F050);
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

unint64_t sub_1A945698C(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A94563DC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9456448(v16, a4 & 1);
      v20 = *v5;
      result = sub_1A94563DC(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        type metadata accessor for UScriptCode();
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A9456C68();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_1A9456AEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1A94566E4(v16, a4 & 1);
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
      sub_1A9456DD0();
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

void *sub_1A9456C68()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387720, &qword_1A958F038);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1A9456DD0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387730, &qword_1A958F050);
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

char *sub_1A9456F40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387768, &qword_1A958F080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A945705C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387748, &qword_1A958F068);
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
    sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A94571A4(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB387770, &qword_1A958F088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1A9457228(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A94572C0(void *a1, int64_t a2, char a3)
{
  result = sub_1A9457300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A94572E0(void *a1, int64_t a2, char a3)
{
  result = sub_1A9457448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A9457300(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387748, &qword_1A958F068);
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
    sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9457448(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387738, &qword_1A958F058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387740, &qword_1A958F060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9457590(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_1A957D548();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1A957D4F8();

    sub_1A957C228();
    v15 = sub_1A957D548();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5863C0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94576EC(__int128 *a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v27 = a1[2];
  v28 = v10;
  v29 = *(a1 + 8);
  v12 = *a1;
  v11 = a1[1];
  v24[0] = a1;
  v25 = v12;
  v26 = v11;
  v13 = sub_1A957D548();
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;
  v24[2] = v5 + 16;
  v24[3] = v13;
  v24[1] = v5 + 8;

  v19 = 0;
  for (i = 0; v16; v19 ^= v23)
  {
    v21 = i;
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    (*(v5 + 16))(v9, *(a2 + 48) + *(v5 + 72) * (v22 | (v21 << 6)), v4);
    sub_1A9459260(&qword_1EB386498, MEMORY[0x1E6969610]);
    v23 = sub_1A957C058();
    result = (*(v5 + 8))(v9, v4);
  }

  while (1)
  {
    v21 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return MEMORY[0x1AC5863C0](v19);
    }

    v16 = *(a2 + 56 + 8 * v21);
    ++i;
    if (v16)
    {
      i = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A9457918(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
        goto LABEL_27;
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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1A9457A70(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1A9457A90(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_1A9457A70(*a1, v7, v8);
  v10 = *(*(v3 + 8) + 8);
  result = sub_1A957C998();
  v12 = v13[0];
  if (v13[0] >> 14 < v9 >> 14)
  {
    __break(1u);
  }

  else
  {
    v13[0] = v6;
    v13[1] = v7;
    v14 = v8;
    v15 = v9;
    v16 = v12;
    sub_1A9453308(v13, v4, v2, v3);
    return sub_1A9458200(v6, v7, v8);
  }

  return result;
}

uint64_t sub_1A9457B5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A94592A8();
  result = MEMORY[0x1AC585770](v2, &type metadata for TTSStringTagger.ScriptTag, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1A9457A70(v7, v6, v8);
      sub_1A9455564(v9, v7, v6, v8);
      sub_1A9458200(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t _s12TextToSpeech15TTSStringTaggerC9ScriptTagO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
LABEL_26:
      sub_1A9457A70(*a2, *(a2 + 8), v7);
      sub_1A9457A70(v3, v2, v4);
      sub_1A9458200(v3, v2, v4);
      sub_1A9458200(v6, v5, v7);
      return 0;
    }

    v12 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v8 = sub_1A957D3E8();
      sub_1A9457A70(v6, v5, 0);
      sub_1A9457A70(v3, v2, 0);
      sub_1A9458200(v3, v2, 0);
      v9 = v6;
      v10 = v5;
      v11 = 0;
      goto LABEL_11;
    }

    sub_1A9457A70(v12, v2, 0);
    sub_1A9457A70(v3, v2, 0);
    sub_1A9458200(v3, v2, 0);
    v19 = v3;
    v20 = v2;
    v21 = 0;
LABEL_30:
    sub_1A9458200(v19, v20, v21);
    return 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_1A9457A70(*a2, *(a2 + 8), 1u);
      sub_1A9457A70(v3, v2, 1u);
      v8 = sub_1A9454870(v3, v6);
      sub_1A9458200(v3, v2, 1u);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_1A9458200(v9, v10, v11);
      return v8 & 1;
    }

    goto LABEL_26;
  }

  if (!(v3 | v2))
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_26;
    }

    sub_1A9458200(*a1, v2, 2u);
    v19 = 0;
    v20 = 0;
    v21 = 2;
    goto LABEL_30;
  }

  if (v7 != 2 || v6 != 1 || v5 != 0)
  {
    goto LABEL_26;
  }

  sub_1A9458200(*a1, v2, 2u);
  v17 = 1;
  sub_1A9458200(1, 0, 2u);
  return v17;
}

uint64_t _s12TextToSpeech15TTSStringTaggerC25CombinedScriptLanguageTagV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v13 = *a1;
  v14 = v2;
  v15 = v7;
  v10 = v4;
  v11 = v5;
  v12 = v8;
  sub_1A9457A70(v13, v2, v7);
  sub_1A9457A70(v4, v5, v8);
  LOBYTE(v4) = _s12TextToSpeech15TTSStringTaggerC9ScriptTagO2eeoiySbAE_AEtFZ_0(&v13, &v10);
  sub_1A9458200(v10, v11, v12);
  sub_1A9458200(v13, v14, v15);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  return sub_1A9454A28(v3, v6);
}

unint64_t sub_1A9457EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387790, &qword_1A958F0A8);
    v3 = sub_1A957D128();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_1A9457A70(v7, v8, v9);
      result = sub_1A937A490(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_1A945800C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_16;
  }

  result = v10 + 40 * a3;
  a2 = (v9 + 32 + 40 * v8);
  if (result != a2 || result >= &a2[40 * v14])
  {
    result = memmove(result, a2, 40 * v14);
  }

  v15 = *(v9 + 16);
  v11 = __OFADD__(v15, v12);
  v16 = v15 + v12;
  if (v11)
  {
    goto LABEL_17;
  }

  *(v9 + 16) = v16;
LABEL_10:
  if (a3 <= 0)
  {
    return result;
  }

  v17 = *a4;
  v18 = *(a4 + 16);
  *(v10 + 32) = *(a4 + 32);
  *v10 = v17;
  *(v10 + 16) = v18;
  a2 = v19;
  result = a4;
  if (a3 != 1)
  {
LABEL_18:
    result = sub_1A9459310(result, a2);
    __break(1u);
    return result;
  }

  return sub_1A9459310(a4, v19);
}

unint64_t sub_1A945812C(unint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1A945705C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1A945800C(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1A9458200(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1A9458220(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9458200(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A9458234(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9457A70(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A9458248(uint64_t a1)
{
  v2 = v1;
  v3 = v1[2];
  v4 = v1[4];
  v14 = v1[3];
  v5 = v1[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  result = sub_1A9452E70(*a1, v9, v10, v4);
  v13 = result;
  if (result)
  {
    return v13 & 1;
  }

  if (v6 >> 14 >= v11 >> 14)
  {
    v15[0] = v8;
    v15[1] = v9;
    v16 = v10;
    v17 = v11;
    v18 = v6;
    sub_1A9457A70(v8, v9, v10);
    sub_1A9453308(v15, v7, v19, v14);
    sub_1A9458200(v8, v9, v10);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A945833C(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB387728, &qword_1A958F048);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v78 - v6;
  v92 = sub_1A957B2E8();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v92, v10);
  v86 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v85 = &v78 - v14;
  v15 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v87 = &v78 - v18;
  v93 = sub_1A957B308();
  v19 = *(v93 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v93, v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v24 = MEMORY[0x1E69E7CC8];
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  v25 = swift_slowAlloc();
  v78 = v1;
  *(v1 + 40) = v25;
  v26 = *(a1 + 16);
  if (v26)
  {
    v28 = *(v19 + 16);
    v27 = v19 + 16;
    v90 = v23;
    v91 = v28;
    v29 = *(v27 + 64);
    v81 = (v29 + 32) & ~v29;
    v82 = v29;
    v30 = a1 + v81;
    v31 = *(v27 + 56);
    v32 = (v8 + 8);
    v94 = MEMORY[0x1E69E7CC8];
    v83 = (v27 - 8);
    v80 = xmmword_1A9587160;
    v33 = v87;
    v79 = (v8 + 8);
    v84 = v7;
    v88 = v31;
    v89 = v27;
    while (1)
    {
      v35 = v90;
      v91(v90, v30, v93);
      v36 = v85;
      sub_1A957B2F8();
      sub_1A957B2B8();
      v37 = *v32;
      (*v32)(v36, v92);
      v38 = sub_1A957B188();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v33, 1, v38) == 1)
      {
        sub_1A937B960(v33, &qword_1EB386A68, &qword_1A9587F40);
      }

      else
      {
        v40 = sub_1A957B148();
        v41 = v33;
        v42 = v40;
        v44 = v43;
        (*(v39 + 8))(v41, v38);
        if (v42 == 7236963 && v44 == 0xE300000000000000)
        {

          v45 = v94;
LABEL_11:
          v33 = v87;
          if (*(v45 + 16) && (v47 = sub_1A937A490(1936613704, 0xE400000000000000), (v48 & 1) != 0))
          {
            v49 = *(*(v45 + 56) + 8 * v47);
          }

          else
          {
            v49 = MEMORY[0x1E69E7CC0];
          }

          sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
          v50 = v81;
          v51 = swift_allocObject();
          *(v51 + 16) = v80;
          v91((v51 + v50), v35, v93);
          v95 = v49;
          sub_1A942AF14(v51);
          v52 = v94;
          v53 = v95;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = v52;
          sub_1A9456AEC(v53, 1936613704, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
          v94 = v95;
          goto LABEL_17;
        }

        v46 = sub_1A957D3E8();

        v45 = v94;
        if (v46)
        {
          goto LABEL_11;
        }

        v33 = v87;
      }

LABEL_17:
      v55 = v86;
      sub_1A957B2F8();
      sub_1A957B2D8();
      v37(v55, v92);
      v56 = sub_1A957B238();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v7, 1, v56) == 1)
      {
        (*v83)(v35, v93);
        sub_1A937B960(v7, &qword_1EB387728, &qword_1A958F048);
        v34 = v88;
      }

      else
      {
        v59 = sub_1A957B148();
        v60 = v58;
        if (v59 == 1936613704 && v58 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0 || v59 == 1953390920 && v60 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
        {

          v61 = 0xE400000000000000;
          v62 = 1768841544;
        }

        else
        {
          v62 = 1735287112;
          if (v59 == 1869439306 && v60 == 0xE400000000000000)
          {

            v61 = 0xE400000000000000;
          }

          else
          {
            v61 = 0xE400000000000000;
            v75 = sub_1A957D3E8();

            if ((v75 & 1) == 0)
            {
              v62 = sub_1A957B148();
              v61 = v76;
            }
          }
        }

        (*(v57 + 8))(v84, v56);
        v63 = v94;
        if (*(v94 + 16) && (v64 = sub_1A937A490(v62, v61), (v65 & 1) != 0))
        {
          v66 = v62;
          v67 = *(*(v63 + 56) + 8 * v64);
        }

        else
        {
          v66 = v62;
          v67 = MEMORY[0x1E69E7CC0];
        }

        sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
        v68 = v81;
        v34 = v88;
        v69 = swift_allocObject();
        *(v69 + 16) = v80;
        v70 = v90;
        v71 = v93;
        v91((v69 + v68), v90, v93);
        v95 = v67;
        sub_1A942AF14(v69);
        v72 = v94;
        v73 = v95;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v95 = v72;
        sub_1A9456AEC(v73, v66, v61, v74);

        v94 = v95;
        (*v83)(v70, v71);
        v33 = v87;
        v32 = v79;
        v7 = v84;
      }

      v30 += v34;
      if (!--v26)
      {
        goto LABEL_36;
      }
    }
  }

  v94 = v24;
LABEL_36:
  result = v78;
  *(v78 + 24) = v94;
  return result;
}

void type metadata accessor for UScriptCode()
{
  if (!qword_1EB385F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB385F40);
    }
  }
}

unint64_t sub_1A9458BA0()
{
  result = qword_1EB387708;
  if (!qword_1EB387708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387708);
  }

  return result;
}

unint64_t sub_1A9458BF8()
{
  result = qword_1EB387710;
  if (!qword_1EB387710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387710);
  }

  return result;
}

uint64_t sub_1A9458D74(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A9458D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A9458DD8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1A9458E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1A9459140();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A9458EB8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1A9458FBC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_1A9459140()
{
  if (!qword_1EB387718)
  {
    v0 = sub_1A957CA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB387718);
    }
  }
}

__n128 sub_1A9459198(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94591AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A94591F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1A9459238(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1A9459260(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A94592A8()
{
  result = qword_1EB387758;
  if (!qword_1EB387758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387758);
  }

  return result;
}

uint64_t sub_1A94592FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A9458200(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1A9459310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB387778, &qword_1A958F090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *MobileAssetManager.DownloadOptions.union(_:)@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  if (HIDWORD(*result))
  {
    v3 = *result;
  }

  else
  {
    v3 = *v2;
  }

  *a2 = *v2 | *result | v3 & 0xFFFFFFFF00000000;
  return result;
}

unint64_t *MobileAssetManager.DownloadOptions.formUnion(_:)(unint64_t *result)
{
  if (HIDWORD(*result))
  {
    v2 = *result;
  }

  else
  {
    v2 = *v1;
  }

  *v1 = *v1 | *result | v2 & 0xFFFFFFFF00000000;
  return result;
}

uint64_t static MobileAssetManager.DownloadOptions.downloadTimeout(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result << 32;
  }

  return result;
}

uint64_t sub_1A94594C8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (((~v4 | 0xFFFFFFFF00000000) & v7) != 0)
      {
        if (HIDWORD(v6))
        {
          v8 = v6;
        }

        else
        {
          v8 = v4;
        }

        v4 = v8 & 0xFFFFFFFF00000000 | v6 | v4;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id MobileAssetManager.DownloadOptions.maOptions.getter()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69B1950]) init];
  [v2 setAllowsCellularAccess_];
  [v2 setDiscretionary_];
  [v2 setAllowsExpensiveAccess_];
  [v2 setAllowsConstrainedAccess_];
  [v2 setRequiresPowerPluggedIn_];
  [v2 setPrefersInfraWiFi_];
  [v2 setAllowDaemonConnectionRetries_];
  [v2 setTimeoutIntervalForResource_];
  return v2;
}

BOOL sub_1A9459670(unint64_t *a1, unint64_t a2)
{
  v3 = a2 & *v2;
  if (v3 != a2)
  {
    if (HIDWORD(a2))
    {
      v4 = a2;
    }

    else
    {
      v4 = *v2;
    }

    *v2 = *v2 | a2 | v4 & 0xFFFFFFFF00000000;
  }

  *a1 = a2;
  return v3 != a2;
}

unsigned int *sub_1A94596B0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2 & v3;
  if (v4)
  {
    *v2 &= v3 ^ 0xFFFFFFFFLL;
  }

  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

unint64_t sub_1A94596E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  if (HIDWORD(result))
  {
    v4 = result;
  }

  else
  {
    v4 = *v2;
  }

  *v2 = v3 | result | v4 & 0xFFFFFFFF00000000;
  *a2 = result & v3;
  *(a2 + 8) = (result & v3) == 0;
  return result;
}

unint64_t sub_1A94597C4()
{
  result = qword_1EB387798;
  if (!qword_1EB387798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387798);
  }

  return result;
}

unint64_t sub_1A9459820()
{
  result = qword_1EB386040;
  if (!qword_1EB386040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386040);
  }

  return result;
}

unint64_t sub_1A9459878()
{
  result = qword_1EB386030;
  if (!qword_1EB386030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386030);
  }

  return result;
}

void TTSMarkupSpeech.init(ssml:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v20 = a2;
  v6 = sub_1A957CC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  type metadata accessor for SSMLParser();
  v12 = static SSMLParser.parseRootElement(ssml:)();

  if (!v3)
  {
    v13 = v7;
    v14 = v20;
    sub_1A93D1250(&v21);
    sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
    if (swift_dynamicCast())
    {

      v15 = *(a1 - 8);
      (*(v15 + 56))(v11, 0, 1, a1);
      (*(v15 + 32))(a3, v11, a1);
    }

    else
    {
      (*(*(a1 - 8) + 56))(v11, 1, 1, a1);
      (*(v13 + 8))(v11, v6);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1A957CF08();

      v21 = 0xD000000000000026;
      v22 = 0x80000001A95C3120;
      (*(v14 + 8))(&v23, a1, v14);
      v16 = SSMLTag.rawValue.getter();
      MEMORY[0x1AC585140](v16);

      v17 = v21;
      v18 = v22;
      sub_1A938189C();
      swift_allocError();
      *v19 = v17;
      v19[1] = v18;
      swift_willThrow();
    }
  }
}

void *TTSMarkupSpeech.attributeText.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = sub_1A945A7C0(*(v2 + 16), 0);
    v7 = sub_1A945B35C(&v26, v6 + 4, v4, v3);

    sub_1A932D088();
    if (v7 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = v5;
LABEL_5:
  v26 = v6;
  sub_1A945A754(&v26);

  v8 = v26;
  v9 = *(v26 + 16);
  if (v9)
  {
    sub_1A93ABB68(0, v9, 0);
    v10 = 0;
    v11 = v5;
    v12 = v8 + 7;
    while (v10 < v8[2])
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;
      v26 = *(v12 - 3);
      v27 = v13;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1AC585140](8765, 0xE200000000000000);
      MEMORY[0x1AC585140](v14, v15);
      MEMORY[0x1AC585140](34, 0xE100000000000000);

      v16 = v26;
      v17 = v27;
      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        sub_1A93ABB68((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      v11[2] = v19 + 1;
      v20 = &v11[2 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v12 += 4;
      if (v9 == v10)
      {

        goto LABEL_13;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v26 = v11;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    sub_1A93BD360();
    v21 = sub_1A957C088();
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      MEMORY[0x1AC585140](v21, v23);

      return v26;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t TTSMarkupSpeech.asSSML()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A9459EC4, 0, 0);
}

uint64_t sub_1A9459EC4()
{
  v1 = *(v0 + 72);
  v5 = *(v0 + 56);
  *(v0 + 40) = v5;
  v2 = sub_1A93981E4((v0 + 16));
  (*(*(v5 - 8) + 16))(v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1A9459FA8;

  return sub_1A93A12A8(v0 + 16);
}

uint64_t sub_1A9459FA8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v6 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1A945A0A8, 0, 0);
}

uint64_t sub_1A945A0A8()
{
  sub_1A9378138(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];
  v3 = v0[12];

  return v1(v2, v3);
}

uint64_t TTSMarkupLeaf.startingTag.getter(uint64_t a1, uint64_t a2)
{
  v8 = 60;
  v9 = 0xE100000000000000;
  v3 = *(a2 + 8);
  (*(v3 + 8))(&v7, a1, v3);
  v4 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v4);

  v5 = TTSMarkupSpeech.attributeText.getter(a1, v3);
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](15919, 0xE200000000000000);
  return v8;
}

BOOL TTSMarkupContainer.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4);
  v2 = v4[3] == 0;
  sub_1A9383404(v4);
  return v2;
}

uint64_t TTSMarkupContainer.ssml.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v16 = (*(v4 + 48))(a1, v4);
  v17 = v5;
  (*(a2 + 16))(v13, a1, a2);
  v6 = v14;
  if (v14)
  {
    v7 = v15;
    sub_1A93780F4(v13, v14);
    v8 = (*(v7 + 64))(v6, v7);
    v10 = v9;
    sub_1A9378138(v13);
  }

  else
  {
    sub_1A9383404(v13);
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1AC585140](v8, v10);

  v11 = (*(v4 + 56))(a1, v4);
  MEMORY[0x1AC585140](v11);

  return v16;
}

uint64_t TTSMarkupContainer.startingTag.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  (*(v4 + 8))(v11, a1, v4);
  v5 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v5);

  v6 = TTSMarkupSpeech.attributeText.getter(a1, v4);
  MEMORY[0x1AC585140](v6);

  (*(a2 + 16))(v11, a1, a2);
  v7 = v11[3];
  sub_1A9383404(v11);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 47;
  }

  if (v7)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xE100000000000000;
  }

  MEMORY[0x1AC585140](v8, v9);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return 60;
}

uint64_t TTSMarkupContainer.endingTag.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v8);
  v4 = v8[3];
  sub_1A9383404(v8);
  if (!v4)
  {
    return 0;
  }

  v8[0] = 12092;
  v8[1] = 0xE200000000000000;
  (*(*(a2 + 8) + 8))(&v7, a1);
  v5 = SSMLTag.rawValue.getter();
  MEMORY[0x1AC585140](v5);

  MEMORY[0x1AC585140](62, 0xE100000000000000);
  return v8[0];
}

Swift::String __swiftcall TTSMarkupSpeech.asPlainText()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1A957B308();
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B108();
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v12 = *(v6 + 72);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A9587160;
  (*(v7 + 16))(v14 + v13, v11, v5);
  sub_1A93F5050(v14, v24);

  v22[3] = v4;
  v22[4] = v3;
  v15 = sub_1A93981E4(v22);
  (*(*(v4 - 8) + 16))(v15, v2, v4);
  ImperativeMarkupWriter.process(markup:)(v22, v23);
  sub_1A945B4E0(v24);
  (*(v7 + 8))(v11, v5);
  sub_1A9378138(v22);
  v16 = v23[2];
  v17 = v23[3];

  v18 = v16;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_1A945A754(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A945B7A0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1A945A844(v5);
  *a1 = v2;
  return result;
}

void *sub_1A945A7C0(uint64_t a1, uint64_t a2)
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

  sub_1A937829C(&qword_1EB3877A8, &qword_1A958F330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1A945A844(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A957D388();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB3877A0, &unk_1A958F320);
        v5 = sub_1A957C518();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A945AA1C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A945A94C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A945A94C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1A957D3E8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A945AA1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1A938911C(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1A945B000((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_1A957D3E8();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A957D3E8();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1A9389130((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_1A945B000((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1A938911C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1A93CE710(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_1A957D3E8(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1A945B000(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_1A957D3E8() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void *sub_1A945B228(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3877A8, &qword_1A958F330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3877A0, &unk_1A958F320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A945B35C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of TTSMarkupSpeech.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 72))();
}

{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1A9382328;

  return v15(a1, a2, a3, a4, a5);
}

void *sub_1A945B7B4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    type metadata accessor for VoiceDatabaseXPC.Server();

    v3 = v0;
    v1 = VoiceDatabaseXPC.Server.__allocating_init(daemon:)(v2);
    v4 = *(v0 + 24);
    *(v3 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1A945B828(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t (*sub_1A945B838(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A945B7B4();
  return sub_1A945B880;
}

uint64_t sub_1A945B880(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_1A945B890()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    type metadata accessor for VoiceDatabase();
    v2 = *(v0 + 16);
    v7 = 0;

    v4 = v0;
    v1 = VoiceDatabase.__allocating_init(additionalLoaders:context:)(v3, &v7);
    v5 = *(v0 + 32);
    *(v4 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1A945B914(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t (*sub_1A945B924(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A945B890();
  return sub_1A945B96C;
}

uint64_t sub_1A945B96C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t sub_1A945B97C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A945B9C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

void *sub_1A945BA1C()
{
  v1 = v0[5];
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for SSELoaderManager();
    v3 = v0;
    v4 = (*(*v0 + 160))();
    v2 = SSELoaderManager.__allocating_init(database:)(v4);
    v5 = v0[5];
    v3[5] = v2;

    sub_1A945BAB0(v5);
  }

  sub_1A945BAC0(v1);
  return v2;
}

uint64_t sub_1A945BAB0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A945BAC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A945BAD0(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return sub_1A945BAB0(v2);
}

uint64_t (*sub_1A945BAE0(void *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1A945BA1C();
  return sub_1A945BB28;
}

uint64_t sub_1A945BB28(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 40);
  *(v2 + 40) = *a1;
  if (a2)
  {

    sub_1A945BAB0(v3);
  }

  else
  {

    return sub_1A945BAB0(v3);
  }
}

uint64_t sub_1A945BB98()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1A945BBE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_1A945BC38()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1A945BC84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *VoiceDatabaseDaemon.__allocating_init(startTransaction:endTransaction:additionalLoaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[3] = 0;
  v10[4] = 0;
  v10[5] = 1;
  type metadata accessor for TTSExecutor();
  v11 = TTSExecutor.__allocating_init()();
  v10[9] = a4;
  v10[10] = v11;
  v10[6] = a1;
  v10[7] = a2;
  v10[8] = a3;
  v10[2] = a5;
  return v10;
}

void *VoiceDatabaseDaemon.init(startTransaction:endTransaction:additionalLoaders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 1;
  type metadata accessor for TTSExecutor();
  v11 = TTSExecutor.__allocating_init()();
  v5[9] = a4;
  v5[10] = v11;
  v5[6] = a1;
  v5[7] = a2;
  v5[8] = a3;
  v5[2] = a5;
  return v5;
}

uint64_t sub_1A945BE30()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945BECC, 0, 0);
}

uint64_t sub_1A945BECC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = (*(*v2 + 304))();
  (*(*v2 + 160))(v3);

  sub_1A957C668();
  v4 = sub_1A957C688();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  v0[4] = sub_1A938A404(0, 0, v1, &unk_1A958F360, v5);
  v6 = *(MEMORY[0x1E69E86C0] + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1A945C070;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1A945C070()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A945C16C, 0, 0);
}

uint64_t sub_1A945C16C()
{
  v1 = (*(**(v0 + 16) + 136))();
  *(v0 + 48) = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0xBED8000000000000;
  *(v0 + 56) = *(*v1 + 144);
  *(v0 + 64) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A945C214, v1, 0);
}

uint64_t sub_1A945C214()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 56))();

  return MEMORY[0x1EEE6DFA0](sub_1A945C288, 0, 0);
}

uint64_t sub_1A945C288()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A945C2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1A957B0B8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945C3B4, 0, 0);
}

uint64_t sub_1A945C3B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x1AC585140](v5, v7);

  v0[7] = 95;
  v0[8] = 0xE100000000000000;
  v9 = (*(*v4 + 208))(v8);
  v9(95, 0xE100000000000000);

  v10 = *(MEMORY[0x1E69E88A0] + 4);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1A945C544;
  v12 = v0[2];
  v13 = v0[3];
  v14 = MEMORY[0x1E69E7CA8] + 8;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v12, v14, v15, 0, 0, &unk_1A958F420, v13, v16);
}

void sub_1A945C544()
{
  v2 = *(*v1 + 72);
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1A945C668, 0, 0);
  }
}

uint64_t sub_1A945C668()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = (*(**(v0 + 24) + 232))();
  v4(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A945C728(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A9382328;

  return sub_1A945C2F4(a1, v5, v6, v4);
}

uint64_t sub_1A945C7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945C864, 0, 0);
}

uint64_t sub_1A945C864()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1A957C648();
  v4 = sub_1A957C688();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 0, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_1A945D9A0(v1, &unk_1A958F430, v6);
  sub_1A93F8190(v1);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_1A945D9A0(v1, &unk_1A958F440, v7);
  sub_1A93F8190(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A945C9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945CA8C, 0, 0);
}

uint64_t sub_1A945CA8C()
{
  v1 = (*(**(v0 + 16) + 160))();
  *(v0 + 32) = v1;
  v5 = (*v1 + 328);
  v6 = (*v5 + **v5);
  v2 = (*v5)[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1A945CBE0;

  return v6();
}

uint64_t sub_1A945CBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A945CED0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A945CCFC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A945CCFC()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for AXCatalogUpdater();
  sub_1A93F1E88();
  v3 = sub_1A957C688();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A958F468, v5);

  (*(*v2 + 288))(v6);
  sub_1A957C648();
  v4(v1, 0, 1, v3);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A958F478, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A945CED0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_1A945CF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1A957B0B8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945CFFC, 0, 0);
}

uint64_t sub_1A945CFFC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x1AC585140](v5, v7);

  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v9 = (*(*v4 + 208))(v8);
  v9(95, 0xE100000000000000);

  type metadata accessor for AXCatalogUpdater();
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_1A945D158;

  return static AXCatalogUpdater.updateCatalog()();
}

uint64_t sub_1A945D158()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1A94623B8;
  }

  else
  {
    v3 = sub_1A94623B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A945D26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1A93F8120(a3, v25 - v11);
  v13 = sub_1A957C688();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A93F8190(v12);
  }

  else
  {
    sub_1A957C678();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1A957C5A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1A957C1C8() + 32;

      sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1A93F8190(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A93F8190(a3);
  sub_1A937829C(&qword_1EB387250, &qword_1A958C010);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1A945D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1A957B0B8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945D5A8, 0, 0);
}

uint64_t sub_1A945D5A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x1AC585140](v5, v7);

  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v9 = (*(*v3 + 208))(v8);
  v9(95, 0xE100000000000000);

  v11 = (*(*v3 + 160))(v10);
  v0[8] = v11;
  v15 = (*v11 + 280);
  v16 = (*v15 + **v15);
  v12 = (*v15)[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1A945D7BC;

  return v16();
}

uint64_t sub_1A945D7BC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1A945D8D8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1A94623B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A945D8D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];

  v7 = (*(*v5 + 232))(v6);
  v7(v3, v2);

  v8 = v0[1];
  v9 = v0[10];

  return v8();
}

uint64_t sub_1A945D9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v21 - v10;
  sub_1A93F8120(a1, v21 - v10);
  v12 = sub_1A957C688();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1A93F8190(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1A957C5A8();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A957C678();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_1A945DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945DC0C, 0, 0);
}

uint64_t sub_1A945DC0C()
{
  v1 = (*(**(v0 + 16) + 184))();
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = *(*v1 + 120);
    v11 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1A945DE3C;

    return v11();
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_1A957C668();
    v8 = sub_1A957C688();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;

    sub_1A945D26C(0, 0, v7, &unk_1A958F450, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A945DE3C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A945CED0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1A945DF58;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A945DF58()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1A957C668();
  v3 = sub_1A957C688();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_1A945D26C(0, 0, v2, &unk_1A958F450, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A945E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_1A957B0B8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945E128, 0, 0);
}

uint64_t sub_1A945E128()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x1AC585140](v5, v7);

  v0[7] = 95;
  v0[8] = 0xE100000000000000;
  v9 = (*(*v3 + 208))(v8);
  v9(95, 0xE100000000000000);

  v11 = (*(*v3 + 184))(v10);
  v0[9] = v11;
  if (v11)
  {
    v12 = *(*v11 + 144);
    v22 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1A945E3D4;

    return v22();
  }

  else
  {
    v17 = v0[7];
    v16 = v0[8];
    v18 = v0[6];
    v19 = v0[2];
    v20 = (*(*v0[3] + 232))();
    v20(v17, v16);

    *v19 = 1;

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1A945E3D4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1A945E5C8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1A945E4F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A945E4F0()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 72) == 0;
  v6 = (*(**(v0 + 24) + 232))();
  v6(v2, v1);

  *v4 = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A945E5C8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];

  v7 = (*(*v5 + 232))(v6);
  v7(v3, v2);

  v8 = v0[1];
  v9 = v0[11];

  return v8();
}

uint64_t sub_1A945E690(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A945E6B4, 0, 0);
}

uint64_t sub_1A945E6B4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v1 + 80);
  sub_1A945E8E8();
  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x1E69E88E8] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1A945E7D0;

  return MEMORY[0x1EEE6DE08]();
}

uint64_t sub_1A945E7D0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 40);

    return MEMORY[0x1EEE6DFA0](sub_1A93DE3FC, 0, 0);
  }

  return result;
}

unint64_t sub_1A945E8E8()
{
  result = qword_1ED96FE68;
  if (!qword_1ED96FE68)
  {
    type metadata accessor for TTSExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FE68);
  }

  return result;
}

uint64_t sub_1A945E940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1A957B0B8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A945EA04, 0, 0);
}

uint64_t sub_1A945EA04()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x1AC585140](v5, v7);

  v0[9] = 95;
  v0[10] = 0xE100000000000000;
  v9 = (*(*v4 + 208))(v8);
  v9(95, 0xE100000000000000);

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1A945EB5C;
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  return sub_1A945EE8C(v10, v11, v12, v13);
}

uint64_t sub_1A945EB5C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A945ED38;
  }

  else
  {
    v3 = sub_1A945EC74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A945EC74()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = (*(**(v0 + 24) + 232))();
  v4(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A945ED38()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = (*(**(v0 + 24) + 232))();
  v3(v2, v1);
}

uint64_t sub_1A945EDD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A945E940(a1, v4, v5, v6);
}

uint64_t sub_1A945EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A945EF20, 0, 0);
}

uint64_t sub_1A945EF20()
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = v0[5] == 0xD000000000000026 && 0x80000001A95C3280 == v1;
  if (v2 || (v3 = v0[6], (sub_1A957D3E8() & 1) != 0) || v0[5] == 0xD00000000000002CLL && 0x80000001A95C32B0 == v1 || (v4 = v0[6], (sub_1A957D3E8() & 1) != 0))
  {
    v5 = v0[7];
    v6 = *(*v5 + 184);
    v7 = (*v5 + 184) & 0xFFFFFFFFFFFFLL | 0xA17C000000000000;
    v0[8] = v6;
    v0[9] = v7;
    v8 = v6();
    v0[10] = v8;
    if (v8)
    {
      v9 = *(*v8 + 136);
      v34 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      v0[11] = v11;
      *v11 = v0;
      v11[1] = sub_1A945F428;
      v12 = *MEMORY[0x1E69E9840];
      v13 = v34;
    }

    else
    {
      v14 = v0[9];
      v15 = v0[7];
      v16 = (v0[8])();
      v0[12] = v16;
      if (v16)
      {
        v17 = *(*v16 + 144);
        v35 = (v17 + *v17);
        v18 = v17[1];
        v19 = swift_task_alloc();
        v0[13] = v19;
        *v19 = v0;
        v19[1] = sub_1A945F738;
        v20 = *MEMORY[0x1E69E9840];
        v13 = v35;
      }

      else
      {
        v13 = v0[1];
        v21 = *MEMORY[0x1E69E9840];
      }
    }

    return v13();
  }

  else
  {
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    v26 = *(*v23 + 160);
    v27 = (*v23 + 160) & 0xFFFFFFFFFFFFLL | 0xA400000000000000;
    v0[14] = v26;
    v0[15] = v27;
    v28 = v26();
    v0[16] = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v25;
    *(v29 + 24) = v24;
    *(v29 + 32) = 0;
    *(v29 + 40) = 1;
    v0[2] = v29;
    v30 = *(*v28 + 320);

    v36 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    v0[17] = v32;
    *v32 = v0;
    v32[1] = sub_1A945F890;
    v33 = *MEMORY[0x1E69E9840];

    return v36(v0 + 2);
  }
}

uint64_t sub_1A945F428()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  v5 = *(v2 + 80);
  if (v0)
  {

    v6 = sub_1A9462340;
  }

  else
  {

    v6 = sub_1A945F59C;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A945F59C()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = (*(v0 + 64))();
  *(v0 + 96) = v3;
  if (v3)
  {
    v4 = *(*v3 + 144);
    v11 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *v6 = v0;
    v6[1] = sub_1A945F738;
    v7 = *MEMORY[0x1E69E9840];
    v8 = v11;
  }

  else
  {
    v8 = *(v0 + 8);
    v9 = *MEMORY[0x1E69E9840];
  }

  return v8();
}

uint64_t sub_1A945F738()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  v5 = *(v2 + 96);
  if (v0)
  {
  }

  v6 = *(v4 + 8);
  v7 = *MEMORY[0x1E69E9840];

  return v6();
}

uint64_t sub_1A945F890()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v8 = *v0;

  v4 = *(v1 + 16);

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A945F9F8, 0, 0);
}

uint64_t sub_1A945F9F8()
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 160) = 0;
  v3 = sub_1A957C1C8();
  notify_register_check((v3 + 32), (v0 + 160));

  *(v0 + 24) = 0;
  notify_get_state(*(v0 + 160), (v0 + 24));
  v4 = notify_cancel(*(v0 + 160));
  if (*(v0 + 24))
  {
    v5 = *(v0 + 120);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);
    v9 = (*(v0 + 112))(v4);
    *(v0 + 144) = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    *(v10 + 32) = *(v0 + 24);
    *(v10 + 40) = 0;
    *(v0 + 32) = v10;
    v11 = *(*v9 + 320);

    v18 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 152) = v13;
    *v13 = v0;
    v13[1] = sub_1A945FC4C;
    v14 = *MEMORY[0x1E69E9840];

    return v18(v0 + 32);
  }

  else
  {
    v16 = *(v0 + 8);
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }
}

uint64_t sub_1A945FC4C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v8 = *v0;

  v4 = *(v1 + 32);

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A945FDB4, 0, 0);
}

uint64_t sub_1A945FDB4()
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_1A945FE3C()
{
  v1 = sub_1A94A8B3C();
  swift_beginAccess();
  v2 = *(**v1 + 120);

  v2(0xD000000000000027, 0x80000001A95C3150, &unk_1A958F388, v0);

  swift_beginAccess();
  v3 = *v1;
  v10 = 0;
  *&v11[0] = 0x4105180000000000;
  v12[1] = 0;

  v9 = *sub_1A953C330();
  v8 = 0;
  v4 = TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)(0xD000000000000027, 0x80000001A95C3150, v11, &v9, &v8, v6);
  (*(*v3 + 128))(v6, v4);

  v11[2] = v6[2];
  *v12 = *v7;
  *&v12[9] = *&v7[9];
  v11[0] = v6[0];
  v11[1] = v6[1];
  return sub_1A93F03AC(v11);
}

uint64_t sub_1A945FFCC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A957B0B8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A946008C, 0, 0);
}

uint64_t sub_1A946008C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_1A957B0A8();
  v5 = sub_1A957B088();
  v7 = v6;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x1AC585140](v5, v7);

  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v9 = (*(*v3 + 208))(v8);
  v9(95, 0xE100000000000000);

  v14 = (*v3 + 296);
  v15 = (*v14 + **v14);
  v10 = (*v14)[1];
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1A9460274;
  v12 = v0[2];

  return v15();
}

uint64_t sub_1A9460274()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1A946044C;
  }

  else
  {
    v3 = sub_1A9460388;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A9460388()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(**(v0 + 16) + 232))();
  v4(v2, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A946044C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(**(v0 + 16) + 232))();
  v4(v2, v1);

  v5 = *(v0 + 8);
  v6 = *(v0 + 72);

  return v5();
}

uint64_t sub_1A9460510()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A9382328;

  return sub_1A945FFCC(v0);
}

uint64_t sub_1A94605A0()
{
  v1[251] = v0;
  v2 = sub_1A937829C(&qword_1EB3872C0, &qword_1A958C800);
  v1[252] = v2;
  v3 = *(v2 - 8);
  v1[253] = v3;
  v4 = *(v3 + 64) + 15;
  v1[254] = swift_task_alloc();
  v5 = sub_1A957BC88();
  v1[255] = v5;
  v6 = *(v5 - 8);
  v1[256] = v6;
  v7 = *(v6 + 64) + 15;
  v1[257] = swift_task_alloc();
  v1[258] = swift_task_alloc();
  v1[259] = swift_task_alloc();
  v8 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v1[260] = swift_task_alloc();
  v9 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v1[261] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9460744, 0, 0);
}

uint64_t sub_1A9460744()
{
  v17 = v0;
  v1 = v0[261];
  v2 = v0[260];
  v3 = v0[251];
  v4 = *(*v3 + 160);
  v5 = *v3 + 160;
  v0[262] = v4;
  v0[263] = v5 & 0xFFFFFFFFFFFFLL | 0xA400000000000000;
  v6 = v4();
  v0[264] = v6;
  v7 = sub_1A957B308();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_1A9493C84();
  v15 = *v8;
  sub_1A9431DA8(&v16, v8);
  VoiceQueryCriteria.init(identifier:locale:forbiddenTraits:requiredTraits:)(0, 0, v2, &v16, &v15, v1);
  v13 = (*v6 + 392);
  v14 = (*v13 + **v13);
  v9 = (*v13)[1];
  v10 = swift_task_alloc();
  v0[265] = v10;
  *v10 = v0;
  v10[1] = sub_1A9460930;
  v11 = v0[261];

  return v14(v11);
}

uint64_t sub_1A9460930(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2120);
  v5 = *(*v2 + 2112);
  v6 = *(*v2 + 2088);
  v9 = *v2;
  *(v3 + 2128) = a1;
  *(v3 + 2136) = v1;

  sub_1A9391040(v6);

  if (v1)
  {
    v7 = sub_1A9461518;
  }

  else
  {
    v7 = sub_1A9460A8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1A9460A8C()
{
  v57 = v0;
  v1 = *(v0 + 2128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = (v1 + 32 + 280 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        memcpy((v0 + 16), v5, 0x118uLL);
        v3 = v6 + 1;
        if (*(v0 + 264))
        {
          break;
        }

        v5 += 280;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      sub_1A937B3DC(v0 + 16, v0 + 296);
      v56 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A9461C94(0, *(v4 + 16) + 1, 1);
        v4 = v56;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A9461C94((v7 > 1), v8 + 1, 1);
        v4 = v56;
      }

      *(v4 + 16) = v8 + 1;
      memcpy((v4 + 280 * v8 + 32), (v0 + 16), 0x118uLL);
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  *(v0 + 2144) = v4;
  v9 = *(v0 + 2128);
  v10 = *(v0 + 2072);
  v11 = *(v0 + 2048);
  v12 = *(v0 + 2040);

  v13 = sub_1A93772F8();
  *(v0 + 2152) = v13;
  v14 = *(v11 + 16);
  *(v0 + 2160) = v14;
  *(v0 + 2168) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v10, v13, v12);

  v15 = sub_1A957BC68();
  v16 = sub_1A957CA58();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v4 + 16);

    _os_log_impl(&dword_1A9324000, v15, v16, "Found %ld upgradeable voices, queuing updates.", v17, 0xCu);
    MEMORY[0x1AC587CD0](v17, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 2072);
  v19 = *(v0 + 2048);
  v20 = *(v0 + 2040);
  v21 = *(v19 + 8);
  *(v0 + 2176) = v21;
  *(v0 + 2184) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v18, v20);
  v22 = *(v4 + 16);
  *(v0 + 2192) = v22;
  if (v22)
  {
    *(v0 + 2200) = 0;
    v23 = *(v0 + 2168);
    v24 = *(v0 + 2160);
    v25 = *(v0 + 2152);
    v26 = *(v0 + 2064);
    v27 = *(v0 + 2040);
    memcpy((v0 + 576), (*(v0 + 2144) + 32), 0x118uLL);
    v28 = *(v0 + 576);
    *(v0 + 2208) = v28;
    v29 = *(v0 + 584);
    *(v0 + 2216) = v29;
    v24(v26, v25, v27);
    sub_1A937B3DC(v0 + 576, v0 + 856);
    sub_1A937B3DC(v0 + 576, v0 + 1136);
    v30 = sub_1A957BC68();
    v31 = sub_1A957CA58();
    sub_1A937B48C(v0 + 576);
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 2184);
    v34 = *(v0 + 2176);
    v35 = *(v0 + 2064);
    v36 = *(v0 + 2040);
    if (v32)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;

      v39 = sub_1A937A5C0(v28, v29, &v56);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_1A9324000, v30, v31, "Updating voice %s.", v37, 0xCu);
      sub_1A9378138(v38);
      MEMORY[0x1AC587CD0](v38, -1, -1);
      MEMORY[0x1AC587CD0](v37, -1, -1);

      v40 = v34(v35, v36);
    }

    else
    {

      v40 = v34(v35, v36);
    }

    v48 = *(v0 + 2104);
    v49 = *(v0 + 2008);
    v50 = (*(v0 + 2096))(v40);
    *(v0 + 2224) = v50;
    memcpy((v0 + 1416), (v0 + 576), 0x118uLL);
    v54 = (*v50 + 472);
    v55 = (*v54 + **v54);
    v51 = (*v54)[1];
    v52 = swift_task_alloc();
    *(v0 + 2232) = v52;
    *v52 = v0;
    v52[1] = sub_1A9461038;
    v53 = *(v0 + 2032);

    v55(v53, v0 + 1416);
  }

  else
  {

    v41 = *(v0 + 2088);
    v42 = *(v0 + 2080);
    v43 = *(v0 + 2072);
    v44 = *(v0 + 2064);
    v45 = *(v0 + 2056);
    v46 = *(v0 + 2032);

    v47 = *(v0 + 8);

    v47();
  }
}