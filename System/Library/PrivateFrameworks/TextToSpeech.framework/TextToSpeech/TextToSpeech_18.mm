unint64_t sub_1A94B8060()
{
  result = qword_1EB387E90;
  if (!qword_1EB387E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387E90);
  }

  return result;
}

uint64_t sub_1A94B80B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
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

void *sub_1A94B8354()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_1A94B84BC(uint64_t a1, uint64_t a2)
{
  result = sub_1A957AE78();
  if (result)
  {
    v5 = result;
    result = sub_1A957AE98();
    v6 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a2, a1))
    {
      sub_1A957AE88();
      return v6 + v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94B8530(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387E98, &qword_1A9594F18);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
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

uint64_t initializeBufferWithCopyOfBuffer for SQLiteError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A94B8690(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94B86AC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 TTSAudioEffect.spec.getter@<Q0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = sub_1A937BD90();
  }

  else
  {
    v3 = sub_1A9475F20();
  }

  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *&v17[32] = *(v3 + 10);
  *v17 = v5;
  *&v17[16] = v6;
  v16[2] = v4;
  v7 = v3[1];
  v16[0] = *v3;
  v16[1] = v7;
  v13 = *&v17[8];
  v14 = *&v17[24];
  v8 = v17[0];
  v11 = v7;
  v12 = v4;
  v9 = v16[0];
  sub_1A937BE84(v16, v15);
  *a1 = v9;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 48) = v8;
  result = v14;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  return result;
}

TextToSpeech::TTSAudioEffect_optional __swiftcall TTSAudioEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A957D158();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSAudioEffect.rawValue.getter()
{
  if (*v0)
  {
    result = 0x627265766572;
  }

  else
  {
    result = 0x657A696C61757165;
  }

  *v0;
  return result;
}

uint64_t sub_1A94B88B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x627265766572;
  }

  else
  {
    v4 = 0x657A696C61757165;
  }

  if (v3)
  {
    v5 = 0xE900000000000072;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x627265766572;
  }

  else
  {
    v6 = 0x657A696C61757165;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE900000000000072;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();
  }

  return v9 & 1;
}

uint64_t sub_1A94B8958@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A957D158();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1A94B89B8(uint64_t *a1@<X8>)
{
  v2 = 0x657A696C61757165;
  if (*v1)
  {
    v2 = 0x627265766572;
  }

  v3 = 0xE900000000000072;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1A94B89FC()
{
  result = qword_1EB387EA0;
  if (!qword_1EB387EA0)
  {
    sub_1A93A7B68(&qword_1EB387EA8, &qword_1A9594F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EA0);
  }

  return result;
}

unint64_t sub_1A94B8A74()
{
  result = qword_1EB387EB0;
  if (!qword_1EB387EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EB0);
  }

  return result;
}

uint64_t sub_1A94B8AC8()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94B8B4C()
{
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A94B8BBC()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

unint64_t sub_1A94B8CFC()
{
  result = qword_1EB387EB8;
  if (!qword_1EB387EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EB8);
  }

  return result;
}

uint64_t sub_1A94B8D50()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A94B8D88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A94B8E04(double a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

id sub_1A94B8E94()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1A94B8ED8(double a1)
{
  v2 = swift_allocObject();
  sub_1A94B8F20(a1);
  return v2;
}

uint64_t sub_1A94B8F20(double a1)
{
  v16 = sub_1A957CAD8();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v16, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957CAC8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1A957BF48();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  *(v1 + 16) = 0;
  v15[1] = sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF28();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A94BCAA4(&qword_1ED96FE98, MEMORY[0x1E69E8030]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8090], v16);
  *(v1 + 32) = sub_1A957CB08();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1A94B91A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A957BF18();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A957BF48();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v21, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(*v2 + 152))(v13);
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_1A94B9AF8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED838;
  v18 = _Block_copy(aBlock);

  sub_1A957BF28();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A94BCAA4(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v15, v9, v18);
  _Block_release(v18);

  (*(v22 + 8))(v9, v5);
  (*(v10 + 8))(v15, v21);
}

void sub_1A94B9494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v53 = sub_1A957BF18();
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53, v5);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A957BF08();
  v50 = *(v7 - 8);
  v8 = v50[8];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v49 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v48 - v13);
  v55 = sub_1A957BF78();
  v58 = *(v55 - 8);
  v15 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v55, v16);
  v56 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v54 = &v48 - v20;
  v21 = sub_1A957CB28();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(*a1 + 104);
  v57 = a1;
  if (v28(v25))
  {
    swift_getObjectType();
    sub_1A957CB58();
    swift_unknownObjectRelease();
  }

  sub_1A9387478(0, &unk_1ED96FD20, 0x1E69E9630);
  v29 = sub_1A957CB18();
  v30 = v57;
  v31 = (*(*v57 + 152))(v29);
  sub_1A957CB38();

  (*(v22 + 8))(v27, v21);
  v32 = sub_1A957BF58();
  v33 = (*(*v30 + 128))(v32) * 1000.0;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v33 < 9.22337204e18)
  {
    *v14 = v33;
    v34 = v50;
    v35 = v50[13];
    v35(v14, *MEMORY[0x1E69E7F38], v7);
    v36 = v54;
    v37 = v56;
    sub_1A957BF68();
    v38 = v34[1];
    v38(v14, v7);
    v39 = v14;
    v40 = *(v58 + 8);
    v58 += 8;
    v50 = v40;
    (v40)(v37, v55);
    ObjectType = swift_getObjectType();
    v56 = ObjectType;
    v35(v39, *MEMORY[0x1E69E7F40], v7);
    v42 = v49;
    *v49 = 0;
    v35(v42, *MEMORY[0x1E69E7F28], v7);
    MEMORY[0x1AC585AB0](v36, v39, v42, ObjectType);
    v38(v42, v7);
    v38(v39, v7);
    aBlock[4] = v51;
    aBlock[5] = v52;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A93C80E8;
    aBlock[3] = &unk_1F1CF9CB8;
    _Block_copy(aBlock);
    v59 = MEMORY[0x1E69E7CC0];
    sub_1A94BCAA4(qword_1ED96FED0, MEMORY[0x1E69E7F60]);

    sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
    sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
    sub_1A957CE08();
    v43 = sub_1A957BF98();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_1A957BF88();

    sub_1A957CB48();

    sub_1A957CB68();
    v46 = *(*v57 + 112);
    v47 = swift_unknownObjectRetain();
    v46(v47);
    swift_unknownObjectRelease();
    (v50)(v54, v55);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1A94B9B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94B9B1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A94B9B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1A94B9B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void sub_1A94B9C2C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94B9C94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16[-v11];
  (*(v5 + 16))(v9);
  v13 = (*(*a1 + 128))(v16);
  v14 = *(v3 + 88);
  sub_1A957C938();
  sub_1A957C8D8();
  (*(v5 + 8))(v12, v4);
  return v13(v16, 0);
}

void sub_1A94B9E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v5));
  sub_1A94BCF58();
  os_unfair_lock_unlock((a3 + v5));
}

void sub_1A94B9F14()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94B9F7C(void *a1, uint64_t *a2)
{
  v32 = *a2;
  v4 = *(v32 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - v10;
  v12 = sub_1A957CC58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v30 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v19 = sub_1A93780F4(a1, v18);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v19);
  (*(v22 + 16))(&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1A93981E4(v34);
  sub_1A957C3C8();
  v24 = (v5 + 48);
  v25 = (v5 + 32);
  v26 = (v5 + 8);
  while (1)
  {
    sub_1A9396054(v34, AssociatedTypeWitness);
    sub_1A957CCB8();
    if ((*v24)(v16, 1, v4) == 1)
    {
      break;
    }

    (*v25)(v31, v16, v4);
    v27 = (*(*a2 + 128))(v33);
    v28 = *(v32 + 88);
    sub_1A957C938();
    sub_1A957C8D8();
    (*v26)(v11, v4);
    v27(v33, 0);
  }

  return sub_1A9378138(v34);
}

void sub_1A94BA2E0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A94BA348(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = sub_1A957CC58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12[-v7];
  v9 = (*(v1 + 128))(v12);
  v10 = *(v1 + 88);
  sub_1A957C938();
  sub_1A957C8E8();
  (*(v4 + 8))(v8, v3);
  return v9(v12, 0);
}

uint64_t sub_1A94BA4B8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[2];
  v8[2] = a1;
  v8[3] = a2;
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  sub_1A957C938();
  sub_1A94B9E5C(sub_1A94BC710, v8, v4);
  return v8[7];
}

uint64_t sub_1A94BA554()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_1A957C938();
  sub_1A94B9E5C(sub_1A94BC8E8, v0, v1);
  return v5;
}

uint64_t sub_1A94BA5E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A94BA628()
{
  v0 = swift_allocObject();
  sub_1A94BA660();
  return v0;
}

uint64_t *sub_1A94BA660()
{
  v1 = *v0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[2] = v2;
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v0[3] = sub_1A957C008();
  return v0;
}

void sub_1A94BA6DC(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  sub_1A94BCA7C(v2);
}

uint64_t sub_1A94BA6EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v6 = sub_1A957CC58();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1A94BA7C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v6 = sub_1A957CC58();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

id sub_1A94BA8AC@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v58 = *v1;
  v2 = *(v58 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v56 = sub_1A957C7F8();
  v49 = *(v56 - 8);
  v3 = *(v49 + 64);
  v5 = MEMORY[0x1EEE9AC00](v56, v4);
  v7 = &v47 - v6;
  v8 = *(v2 - 8);
  v48 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v47 - v10;
  v12 = sub_1A957C838();
  v13 = sub_1A957CC58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v55 = (&v47 - v16);
  v57 = sub_1A957C808();
  v54 = *(v57 - 8);
  v17 = v54[8];
  v19 = MEMORY[0x1EEE9AC00](v57, v18);
  v21 = &v47 - v20;
  v22 = *(v12 - 8);
  v23 = v22[8];
  MEMORY[0x1EEE9AC00](v19, v24);
  v26 = &v47 - v25;
  v27 = sub_1A957C868();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v47 - v30;
  [*(v1 + *(v58 + 120)) lock];
  sub_1A94BAED4(v21);
  v50 = v31;
  sub_1A957C7E8();
  (v54[1])(v21, v57);
  v32 = v22[2];
  v33 = v55;
  v57 = v26;
  v32(v55, v26, v12);
  v54 = v22;
  v34 = v22[7];
  v58 = v12;
  v34(v33, 0, 1, v12);
  sub_1A94BA7C8(v33);
  v35 = *(*v1 + 13);
  swift_beginAccess();
  v55 = v1;
  v36 = *(v1 + v35);

  if (sub_1A957C558())
  {
    v37 = 0;
    v38 = (v49 + 8);
    do
    {
      v39 = sub_1A957C528();
      sub_1A957C4E8();
      if (v39)
      {
        (*(v8 + 16))(v11, v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v37, v2);
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_1A957CF18();
        if (v48 != 8)
        {
          __break(1u);
          return result;
        }

        v59[0] = result;
        (*(v8 + 16))(v11, v59, v2);
        swift_unknownObjectRelease();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_10:
          __break(1u);
          break;
        }
      }

      sub_1A957C818();
      (*v38)(v7, v56);
      ++v37;
    }

    while (v40 != sub_1A957C558());
  }

  v42 = v55;
  v43 = *(*v55 + 13);
  swift_beginAccess();
  sub_1A957C578();
  sub_1A957C568();
  swift_endAccess();
  v44 = v42[2];
  if (v44 == 1)
  {
    (v54[1])(v57, v58);
  }

  else
  {
    v59[0] = v42[2];
    sub_1A94BCA6C(v44);
    v46 = v57;
    v45 = v58;
    sub_1A957C828();
    (v54[1])(v46, v45);
  }

  (*(v51 + 32))(v53, v50, v52);
  return [*(v42 + *(*v42 + 15)) unlock];
}

uint64_t sub_1A94BAED4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v3 = sub_1A957C808();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_1A94BAF78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v4 = *v2;
  v5 = *(v4 + 80);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34 = &v30 - v7;
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v8 = sub_1A957C7F8();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - v11;
  v13 = sub_1A957C838();
  v14 = sub_1A957CC58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v30 - v19;
  v21 = *(v13 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18, v23);
  v25 = &v30 - v24;
  [*(v3 + *(v4 + 120)) lock];
  sub_1A94BA6EC(v20);
  v26 = (*(v21 + 48))(v20, 1, v13);
  v27 = (v32 + 16);
  if (v26 == 1)
  {
    (*(v15 + 8))(v20, v14);
    (*v27)(v34, v33, v5);
    v28 = *(*v3 + 104);
    swift_beginAccess();
    sub_1A957C578();
    sub_1A957C548();
    swift_endAccess();
  }

  else
  {
    (*(v21 + 32))(v25, v20, v13);
    (*v27)(v34, v33, v5);
    sub_1A957C818();
    (*(v30 + 8))(v12, v31);
    (*(v21 + 8))(v25, v13);
  }

  return [*(v3 + *(*v3 + 120)) unlock];
}

id sub_1A94BB364(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v6 = sub_1A957C838();
  v7 = sub_1A957CC58();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = v23 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  v18 = v23 - v17;
  [*(v2 + *(v4 + 120)) lock];
  v19 = a1;
  v20 = v2[2];
  v2[2] = a1;
  sub_1A94BCA7C(v20);
  sub_1A94BA6EC(v13);
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    v23[1] = a1;
    v21 = a1;
    sub_1A957C828();
    (*(v14 + 8))(v18, v6);
  }

  return [*(v2 + *(*v2 + 120)) unlock];
}

id *SuspendableStream.deinit()
{
  v1 = *v0;
  (*(*v0 + 34))();
  sub_1A94BCA7C(v0[2]);
  v2 = *(*v0 + 12);
  v3 = v1[10];
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  v4 = sub_1A957CC58();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + *(*v0 + 13));

  return v0;
}

uint64_t SuspendableStream.__deallocating_deinit()
{
  SuspendableStream.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A94BB788()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1A94BB7C0();
  return v3;
}

char *sub_1A94BB7C0()
{
  v1 = *v0;
  *(v0 + 2) = 1;
  v2 = *(v1 + 96);
  v3 = *(v1 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  v4 = sub_1A957C838();
  (*(*(v4 - 8) + 56))(&v0[v2], 1, 1, v4);
  v5 = *(*v0 + 104);
  *&v0[v5] = sub_1A957C508();
  v0[*(*v0 + 112)] = 2;
  v6 = *(*v0 + 120);
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  return v0;
}

uint64_t sub_1A94BB8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A94BB91C, v3, 0);
}

uint64_t sub_1A94BB91C()
{
  v1 = *(v0[5] + 112);
  v7 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1A94BBA20;
  v4 = v0[4];
  v5 = v0[2];

  return v7(v5, v1);
}

uint64_t sub_1A94BBA20()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1A94BBB14()
{
  v2 = *(v0 + 112);
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A94BBB70(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1A94BBBB0(uint64_t a1)
{
  type metadata accessor for AXSendableLockBox();
  v2 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1A94BBC00()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t withRetry<A>(startDelay:multiplier:maxDelay:maxAttempts:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 88) = a2;
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 64) = a5;
  *(v7 + 56) = a1;
  v8 = sub_1A957D008();
  *(v7 + 112) = v8;
  v9 = *(v8 - 8);
  *(v7 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v11 = sub_1A957D018();
  *(v7 + 144) = v11;
  v12 = *(v11 - 8);
  *(v7 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94BBD8C, 0, 0);
}

void sub_1A94BBD8C()
{
  v1 = v0[11];
  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v2 = v0[12];
    v0[23] = v0[8];
    v0[21] = MEMORY[0x1E69E7CC0];
    v0[22] = 0;
    v12 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[24] = v4;
    *v4 = v0;
    v4[1] = sub_1A94BBF30;
    v5 = v0[13];
    v6 = v0[7];

    v12(v6);
  }

  else
  {
    sub_1A94BCAEC();
    swift_allocError();
    *v7 = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    v8 = v0[20];
    v10 = v0[16];
    v9 = v0[17];

    v11 = v0[1];

    v11();
  }
}

uint64_t sub_1A94BBF30()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A94BC098, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[16];
    v7 = v3[17];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1A94BC098()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A94BC938(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1A94BC938((v5 > 1), v6 + 1, 1, v4);
  }

  *(v0 + 208) = v4;
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v25 = *(v0 + 136);
  v12 = *(v0 + 120);
  v11 = *(v0 + 128);
  v13 = *(v0 + 112);
  v4[2] = v6 + 1;
  v4[v6 + 4] = v7;
  v14 = sub_1A957D5A8();
  v16 = v15;
  sub_1A957D468();
  *(v0 + 40) = v14;
  *(v0 + 48) = v16;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v17 = sub_1A94BCAA4(&qword_1EB385E98, MEMORY[0x1E69E8820]);
  sub_1A957D448();
  sub_1A94BCAA4(&qword_1EB385EA0, MEMORY[0x1E69E87E8]);
  sub_1A957D028();
  v18 = *(v12 + 8);
  *(v0 + 216) = v18;
  *(v0 + 224) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v11, v13);
  v19 = *(MEMORY[0x1E69E8938] + 4);
  v20 = swift_task_alloc();
  *(v0 + 232) = v20;
  *v20 = v0;
  v20[1] = sub_1A94BC2DC;
  v21 = *(v0 + 160);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);

  return MEMORY[0x1EEE6DE58](v23, v0 + 16, v22, v17);
}

uint64_t sub_1A94BC2DC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v10 = *v1;
  *(*v1 + 240) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    (*(v2 + 216))(*(v2 + 136), *(v2 + 112));
    v5 = sub_1A94BC60C;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);
    v8 = *(v2 + 144);
    (*(v2 + 216))(*(v2 + 136), *(v2 + 112));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1A94BC434;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A94BC434()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 176) + 1;

  if (v5 == v2)
  {
    v6 = *(v0 + 208);
    sub_1A94BCAEC();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    v8 = *(v0 + 160);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = v1 * v4;
    if (v1 * v4 > v3)
    {
      v13 = v3;
    }

    v14 = *(v0 + 208);
    v15 = *(v0 + 176) + 1;
    *(v0 + 184) = v13;
    *(v0 + 168) = v14;
    *(v0 + 176) = v15;
    v20 = (*(v0 + 96) + **(v0 + 96));
    v16 = *(*(v0 + 96) + 4);
    v17 = swift_task_alloc();
    *(v0 + 192) = v17;
    *v17 = v0;
    v17[1] = sub_1A94BBF30;
    v18 = *(v0 + 104);
    v19 = *(v0 + 56);

    return v20(v19);
  }
}

uint64_t sub_1A94BC60C()
{
  v1 = v0[25];
  v2 = v0[26];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[30];
  v4 = v0[20];
  v6 = v0[16];
  v5 = v0[17];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A94BC710@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *v5;
  if (v4)
  {
    v8 = *(v2 + 24);
    v10 = v6 + 112;
    v9 = *(v6 + 112);

    v9(v11);
    v12 = *(v10 - 32);
    v13 = *(v10 - 24);

    v14 = sub_1A957C8C8();
    sub_1A93CF5C8(v4);
    v15 = (*(*v5 + 128))(v21);
    sub_1A957C938();
    sub_1A957C908();
    v15(v21, 0);
    v3 = a1;
    result = sub_1A93CF5C8(v4);
  }

  else
  {
    v17 = v6 + 112;
    v14 = (*(v6 + 112))();
    v18 = (*(*v5 + 128))(v21);
    v19 = *(v17 - 32);
    v20 = *(v17 - 24);
    sub_1A957C938();
    sub_1A957C928();
    result = v18(v21, 0);
  }

  *v3 = v14;
  return result;
}

uint64_t sub_1A94BC8E8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 112))();
  *a1 = result;
  return result;
}

void *sub_1A94BC938(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387F38, &qword_1A95952E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1A94BCA6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1A94BCA7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1A94BCAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A94BCAEC()
{
  result = qword_1EB387EC8;
  if (!qword_1EB387EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387EC8);
  }

  return result;
}

uint64_t sub_1A94BCBD0(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
  sub_1A957C838();
  result = sub_1A957CC58();
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

uint64_t sub_1A94BCD9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A94BCDD8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A94BCDFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A94BCE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1A94BCEB4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1A94BCF58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t TTSMarkup.Emphasis.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Emphasis.init(_:)@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v34, 0, v34, &v30);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (!*(v6 + 16) || (v7 = sub_1A937A490(0x6C6576656CLL, 0xE500000000000000), (v8 & 1) == 0))
  {

    goto LABEL_21;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v10 = *v9;
  v11 = v9[1];

  v12 = sub_1A957D158();

  if (v12 > 2)
  {
LABEL_21:

    result = sub_1A937B960(v31, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  v33 = v12;
  v14 = (*((*v5 & *a1) + 0x100))(v13);
  v15 = v14;
  if (v14 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2; v16; i = a2)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1AC585DE0](v17, v15);
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      sub_1A93D1250(&v25);

      if (v26)
      {
        sub_1A932D070(&v25, &v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1A93ADC90(0, v18[2] + 1, 1, v18);
        }

        a2 = v18[2];
        v22 = v18[3];
        if (a2 >= v22 >> 1)
        {
          v18 = sub_1A93ADC90((v22 > 1), a2 + 1, 1, v18);
        }

        v18[2] = a2 + 1;
        sub_1A932D070(&v27, &v18[5 * a2 + 4]);
      }

      else
      {
        sub_1A937B960(&v25, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v17;
      if (v21 == v16)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v16 = sub_1A957CE48();
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v28 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v29 = &protocol witness table for <A> [A];

  *&v27 = v18;
  sub_1A93A38D8(&v27, v31);
  sub_1A94BDC98(&v30, i);
  return sub_1A94BDCD0(&v30);
}

uint64_t TTSMarkup.Emphasis.Level.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t TTSMarkup.Emphasis.Level.description.getter()
{
  v1 = 0x6574617265646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x64656375646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t sub_1A94BD40C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6574617265646F6DLL;
  if (v2 != 1)
  {
    v4 = 0x64656375646572;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E6F727473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6574617265646F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x64656375646572;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6F727473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A94BD50C()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94BD5AC()
{
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A94BD638()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A94BD6D4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Emphasis.Level.init(rawValue:)(a1);
}

void sub_1A94BD6E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6574617265646F6DLL;
  if (v2 != 1)
  {
    v5 = 0x64656375646572;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6F727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A94BD73C()
{
  v1 = 0x6574617265646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x64656375646572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6F727473;
  }
}

uint64_t TTSMarkup.Emphasis.init(_:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(v9, 0, v9, a3);
  *(v4 + 8) = 0u;
  v4 += 8;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0u;
  *(v4 + 40) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

unint64_t TTSMarkup.Emphasis.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x6C6576656CLL;
  v2 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(v0 + 48);
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6574617265646F6DLL;
  if (v3 != 1)
  {
    v6 = 0x64656375646572;
    v5 = 0xE700000000000000;
  }

  v7 = v3 == 0;
  if (*(v0 + 48))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x676E6F727473;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v4;
  v9 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v9;
}

uint64_t TTSMarkup.Emphasis.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[3] = &type metadata for TTSMarkup.Emphasis;
  v7[4] = &protocol witness table for TTSMarkup.Emphasis;
  v7[0] = swift_allocObject();
  sub_1A94BDC98(v3, v7[0] + 16);
  TTSMarkupVisitor.visit(_:)(v7, a2, a3);
  return sub_1A9378138(v7);
}

{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

unint64_t sub_1A94BDAC8()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x6C6576656CLL;
  v2 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(v0 + 48);
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6574617265646F6DLL;
  if (v3 != 1)
  {
    v6 = 0x64656375646572;
    v5 = 0xE700000000000000;
  }

  v7 = v3 == 0;
  if (*(v0 + 48))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x676E6F727473;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v4;
  v9 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(v2, &qword_1EB3868E0, &qword_1A95885D0);
  return v9;
}

uint64_t sub_1A94BDBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Emphasis.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A94BDD04()
{
  result = qword_1EB387FA0;
  if (!qword_1EB387FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387FA0);
  }

  return result;
}

uint64_t sub_1A94BDD58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1A94BDDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1A94BDE14()
{
  result = [objc_allocWithZone(type metadata accessor for CoreSynthesisVoiceShim()) init];
  qword_1EB389560 = result;
  return result;
}

id CoreSynthesisVoiceShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static CoreSynthesisVoiceShim.shared.getter()
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EB389560;

  return v0;
}

void static CoreSynthesisVoiceShim.shared.setter(uint64_t a1)
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB389560;
  qword_1EB389560 = a1;
}

uint64_t (*static CoreSynthesisVoiceShim.shared.modify())()
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1A94BE100@<X0>(void *a1@<X8>)
{
  if (qword_1EB389558 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB389560;
  *a1 = qword_1EB389560;

  return v2;
}

void sub_1A94BE18C(id *a1)
{
  v1 = qword_1EB389558;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1EB389560;
  qword_1EB389560 = v2;
}

uint64_t sub_1A94BE214()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VoiceDatabaseClient();
    v4 = sub_1A938983C();
    v2 = VoiceDatabaseClient.__allocating_init(readOnly:)(v4 & 1);
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A94BE28C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource) = a1;
}

uint64_t (*sub_1A94BE2A4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE214();
  return sub_1A94BE2EC;
}

char *sub_1A94BE2F8()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver);
  }

  else
  {
    type metadata accessor for VoiceResolver(0);
    v3 = v0;
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    v10[3] = type metadata accessor for VoiceDatabaseClient();
    v10[4] = &protocol witness table for VoiceDatabaseClient;
    v10[0] = v4;
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v9[0] = v9[1];
    sub_1A957CE08();
    v8[0] = v8[1];
    sub_1A9431DA4(&v7);
    v2 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v10, v9, v8, &v7);
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A94BE474(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver) = a1;
}

uint64_t (*sub_1A94BE48C(char **a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE2F8();
  return sub_1A94BE4D4;
}

uint64_t sub_1A94BE4E0()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver);
  }

  else
  {
    type metadata accessor for VoiceResolver(0);
    v3 = v0;
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
    v9[3] = type metadata accessor for VoiceDatabaseClient();
    v9[4] = &protocol witness table for VoiceDatabaseClient;
    v9[0] = v4;
    v8 = *sub_1A9493C84();
    sub_1A9431DA4(&v7);
    v2 = VoiceResolver.__allocating_init(voiceSource:requiredTraits:sortMode:)(v9, &v8, &v7);
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A94BE5CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver) = a1;
}

uint64_t (*sub_1A94BE5E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE4E0();
  return sub_1A94BE62C;
}

uint64_t sub_1A94BE638()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver);
  }

  else
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A94BE6CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver) = a1;
}

uint64_t (*sub_1A94BE6E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A94BE638();
  return sub_1A94BE72C;
}

char *sub_1A94BE738()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9588500;
  *(v2 + 32) = *sub_1A9493C6C();
  *(v2 + 40) = *sub_1A9493D5C();
  *(v2 + 48) = *sub_1A9493D8C();
  v12[0] = v2;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  result = sub_1A957CE08();
  if (*MEMORY[0x1E69D5608])
  {
    v4 = *MEMORY[0x1E69D5608];
    v5 = TCCAccessPreflight();

    if (v5)
    {
      v6 = sub_1A949016C();
      sub_1A93B0A74(v12, *v6);
    }

    type metadata accessor for VoiceResolver(0);
    v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    v12[3] = type metadata accessor for VoiceDatabaseClient();
    v12[4] = &protocol witness table for VoiceDatabaseClient;
    v12[0] = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A9587160;
    *(v8 + 32) = *sub_1A9493C84();
    sub_1A957CE08();
    v10 = v12[5];
    v11[0] = v11[1];
    sub_1A9431DA4(&v9);
    return VoiceResolver.__allocating_init(voiceSource:requiredTraits:forbiddenTraits:sortMode:)(v12, v11, &v10, &v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A94BE944(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94BE96C, 0, 0);
}

uint64_t sub_1A94BE96C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0xC0))();
  *(v0 + 880) = v1;
  v7 = (*v1 + 360);
  v8 = (*v7 + **v7);
  v2 = (*v7)[1];
  v3 = swift_task_alloc();
  *(v0 + 888) = v3;
  *v3 = v0;
  v3[1] = sub_1A94BEAE0;
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);

  return v8(v0 + 576, v5, v4);
}

uint64_t sub_1A94BEAE0()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 880);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94C5F88, 0, 0);
}

uint64_t sub_1A94BED80(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C5F80;

  return sub_1A94BE944(v5, v7);
}

uint64_t sub_1A94BEE84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1A938E6B8;

  return v11(a3, a4);
}

uint64_t sub_1A94BEFF8(uint64_t a1, uint64_t a2)
{
  v3[214] = v2;
  v3[213] = a2;
  v3[212] = a1;
  v4 = sub_1A957B308();
  v3[215] = v4;
  v5 = *(v4 - 8);
  v3[216] = v5;
  v6 = *(v5 + 64) + 15;
  v3[217] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94BF0C0, 0, 0);
}

uint64_t sub_1A94BF0C0()
{
  if (*(v0 + 1704))
  {
    v1 = *(v0 + 1736);
    v2 = *(v0 + 1696);
    v3 = *((*MEMORY[0x1E69E7D40] & **(v0 + 1712)) + 0xC0);
    v4 = *(v0 + 1704);

    v6 = v3(v5);
    *(v0 + 1744) = v6;
    sub_1A957B1B8();
    v17 = (*v6 + 416);
    v18 = (*v17 + **v17);
    v7 = (*v17)[1];
    v8 = swift_task_alloc();
    *(v0 + 1752) = v8;
    *v8 = v0;
    v8[1] = sub_1A94BF3BC;
    v9 = *(v0 + 1736);

    return v18(v0 + 1416, v9);
  }

  else
  {
    v11 = *((*MEMORY[0x1E69E7D40] & **(v0 + 1712)) + 0xC0);
    *(v0 + 1760) = v11();
    v12 = v11();
    *(v0 + 1768) = v12;
    v13 = *(*v12 + 200);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 1776) = v15;
    *v15 = v0;
    v15[1] = sub_1A94BF608;
    v16 = *(v0 + 1736);

    return v19(v16);
  }
}

uint64_t sub_1A94BF3BC()
{
  v1 = *(*v0 + 1752);
  v2 = *(*v0 + 1744);
  v3 = *(*v0 + 1736);
  v4 = *(*v0 + 1728);
  v5 = *(*v0 + 1720);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1A94BF530, 0, 0);
}

uint64_t sub_1A94BF530()
{
  v6 = v0;
  memcpy(v0 + 142, v0 + 177, 0x118uLL);
  memcpy(v0 + 107, v0 + 177, 0x118uLL);
  if (sub_1A932D058((v0 + 107)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 107, sizeof(__dst));
    v1 = sub_1A95025A4();
    sub_1A937B960((v0 + 142), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v2 = v0[217];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1A94BF608()
{
  v1 = *v0;
  v2 = *(*v0 + 1776);
  v3 = *(*v0 + 1768);
  v4 = *(*v0 + 1760);
  v5 = *v0;

  v11 = (*v4 + 416);
  v12 = (*v11 + **v11);
  v6 = (*v11)[1];
  v7 = swift_task_alloc();
  v1[223] = v7;
  *v7 = v5;
  v7[1] = sub_1A94BF824;
  v8 = v1[220];
  v9 = v1[217];

  return (v12)(v1 + 72, v9);
}

uint64_t sub_1A94BF824()
{
  v1 = *(*v0 + 1784);
  v2 = *(*v0 + 1760);
  v3 = *(*v0 + 1736);
  v4 = *(*v0 + 1728);
  v5 = *(*v0 + 1720);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1A94BF998, 0, 0);
}

uint64_t sub_1A94BF998()
{
  v6 = v0;
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v1 = sub_1A95025A4();
    sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v2 = v0[217];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1A94BFBF8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_1A957C0F8();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94BFCDC;

  return sub_1A94BEFF8(a1, v7);
}

uint64_t sub_1A94BFCDC(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1A94BFE44(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  v7 = v2;
  sub_1A937829C(&qword_1EB387FD0, &qword_1A9595480);
  sub_1A957B9C8();

  return v9;
}

uint64_t sub_1A94BFF0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xF0);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1A938E6B8;

  return v11(a3, a4);
}

uint64_t sub_1A94C0148()
{
  v1[3] = v0;
  v2 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C0214, 0, 0);
}

uint64_t sub_1A94C0214()
{
  v1 = *(v0 + 48);
  v2 = *(*((*MEMORY[0x1E69E7D40] & **(v0 + 24)) + 0xC0))();
  (*(v2 + 352))();

  v3 = *(MEMORY[0x1E6988270] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1A94C0338;
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  return MEMORY[0x1EEDE9B70](v0 + 16, v6);
}

uint64_t sub_1A94C0338()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94C0490, 0, 0);
}

void sub_1A94C0490()
{
  v11 = v0;
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      sub_1A95025A4();
      MEMORY[0x1AC585360]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v7 = v0[6];

    v8 = v0[1];

    v8(v2);
  }
}

uint64_t sub_1A94C074C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1A94C07F4;

  return sub_1A94C0148();
}

uint64_t sub_1A94C07F4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_1A9387478(0, &qword_1EB385ED8, 0x1E69584F8);
  v4 = sub_1A957C4B8();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C0970()
{
  v1 = *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  *(swift_allocObject() + 16) = v0;
  v2 = v0;
  sub_1A937829C(&qword_1EB387FD8, &qword_1A95954C0);
  sub_1A957B9C8();

  return v4;
}

uint64_t sub_1A94C0A1C(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x100);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_1A938E6B8;

  return v7();
}

uint64_t sub_1A94C0C4C(char a1)
{
  *(v2 + 600) = v1;
  *(v2 + 640) = a1;
  v3 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  *(v2 + 608) = v3;
  v4 = *(v3 - 8);
  *(v2 + 616) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 624) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C0D1C, 0, 0);
}

uint64_t sub_1A94C0D1C()
{
  v1 = *(v0 + 624);
  v2 = *(*((*MEMORY[0x1E69E7D40] & **(v0 + 600)) + 0xA8))();
  (*(v2 + 352))();

  v3 = *(MEMORY[0x1E6988270] + 4);
  v4 = swift_task_alloc();
  *(v0 + 632) = v4;
  *v4 = v0;
  v4[1] = sub_1A94C0E40;
  v5 = *(v0 + 624);
  v6 = *(v0 + 608);

  return MEMORY[0x1EEDE9B70](v0 + 576, v6);
}

uint64_t sub_1A94C0E40()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 616);
  v4 = *(*v0 + 608);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94C0F98, 0, 0);
}

void sub_1A94C0F98()
{
  v16 = v0;
  v1 = *(v0 + 576);
  v2 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 280 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v0 + 640);
        memcpy((v0 + 16), v6, 0x118uLL);
        v4 = v7 + 1;
        v9 = *(v0 + 80);
        sub_1A937B3DC(v0 + 16, v0 + 296);
        *(v0 + 584) = *sub_1A9493C6C();
        *(v0 + 592) = v9;
        sub_1A9387410();
        if (sub_1A957CD88() & 1) == 0 || (v8)
        {
          break;
        }

        sub_1A937B48C(v0 + 16);
        v6 += 280;
        ++v7;
        if (v3 == v4)
        {
          goto LABEL_12;
        }
      }

      memcpy(__dst, (v0 + 16), sizeof(__dst));
      sub_1A95025A4();
      v10 = sub_1A937B48C(v0 + 16);
      MEMORY[0x1AC585360](v10);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      sub_1A957C538();
      v2 = v14;
      v5 = v1 + 32;
    }

    while (v3 - 1 != v7);
  }

LABEL_12:
  v12 = *(v0 + 624);

  v13 = *(v0 + 8);

  v13(v2);
}

uint64_t sub_1A94C12F8(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1A94C5F84;

  return sub_1A94C0C4C(a1);
}

uint64_t sub_1A94C13E4(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x110);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1A938E6B8;

  return v9(a3);
}

uint64_t sub_1A94C1638(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94C1660, 0, 0);
}

uint64_t sub_1A94C1660()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0xA8))();
  *(v0 + 880) = v1;
  v7 = (*v1 + 360);
  v8 = (*v7 + **v7);
  v2 = (*v7)[1];
  v3 = swift_task_alloc();
  *(v0 + 888) = v3;
  *v3 = v0;
  v3[1] = sub_1A94C17D4;
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);

  return v8(v0 + 576, v5, v4);
}

uint64_t sub_1A94C17D4()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 880);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94C18EC, 0, 0);
}

uint64_t sub_1A94C18EC()
{
  v6 = v0;
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    v2 = sub_1A95025A4();
    sub_1A937B960((v0 + 37), &unk_1EB387BC0, &qword_1A9587E30);
    v1 = v2;
  }

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1A94C1B44(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C1C18;

  return sub_1A94C1638(v5, v7);
}

uint64_t sub_1A94C1C18(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v5)[2](v5, a1);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1A94C1DB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1A938E8EC;

  return v11(a3, a4);
}

uint64_t sub_1A94C1F2C(uint64_t a1, uint64_t a2)
{
  v3[109] = v2;
  v3[108] = a2;
  v3[107] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94C1F54, 0, 0);
}

uint64_t sub_1A94C1F54()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 872)) + 0x90))();
  *(v0 + 880) = v1;
  v7 = (*v1 + 360);
  v8 = (*v7 + **v7);
  v2 = (*v7)[1];
  v3 = swift_task_alloc();
  *(v0 + 888) = v3;
  *v3 = v0;
  v3[1] = sub_1A94C20C8;
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);

  return v8(v0 + 296, v5, v4);
}

uint64_t sub_1A94C20C8()
{
  v1 = *(*v0 + 888);
  v2 = *(*v0 + 880);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94C21E0, 0, 0);
}

uint64_t sub_1A94C21E0()
{
  v8 = v0;
  memcpy(v0 + 2, v0 + 37, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = 0;
  }

  else
  {
    memcpy(__dst, v0 + 2, sizeof(__dst));
    CoreSynthesizer.Voice._bridgeToObjectiveC()(v2);
    v4 = v3;
    memcpy(v0 + 72, __dst, 0x118uLL);
    sub_1A937B48C((v0 + 72));
    v1 = v4;
  }

  v5 = v0[1];

  return v5(v1);
}

uint64_t sub_1A94C2428(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C5F80;

  return sub_1A94C1F2C(v5, v7);
}

uint64_t sub_1A94C252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *&v5[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a1;
  v11[4] = a2;
  v12 = v5;

  sub_1A937829C(a4, a5);
  sub_1A957B9C8();

  return v14;
}

uint64_t sub_1A94C25F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x130);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1A938E6B8;

  return v11(a3, a4);
}

id sub_1A94C2774(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = sub_1A957C0F8();
  v11 = v10;
  v12 = *&a1[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v9;
  v13[4] = v11;
  v14 = a1;
  sub_1A937829C(a5, a6);
  sub_1A957B9C8();

  return v16;
}

uint64_t sub_1A94C2860(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 80) = a1;
  v3 = sub_1A937829C(&qword_1EB387220, &qword_1A958BF40);
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C2930, 0, 0);
}

uint64_t sub_1A94C2930()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  if (*(v0 + 80) == 1)
  {
    v3 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
    (*(v3 + 352))();

    v4 = *(MEMORY[0x1E6988270] + 4);
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_1A94C2B34;
    v6 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = v0 + 24;
  }

  else
  {
    v9 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
    (*(v9 + 352))();

    v10 = *(MEMORY[0x1E6988270] + 4);
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1A94C2DD0;
    v12 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = v0 + 16;
  }

  return MEMORY[0x1EEDE9B70](v8, v7);
}

uint64_t sub_1A94C2B34()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94C2C8C, 0, 0);
}

void sub_1A94C2C8C()
{
  v12 = v0;
  v1 = v0[3];
  v2 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v6);
      MEMORY[0x1AC585360]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = v0[7];

    v9 = v0[1];

    v9(v2);
  }
}

uint64_t sub_1A94C2DD0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1A94C2F28, 0, 0);
}

void sub_1A94C2F28()
{
  v12 = v0;
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v1 + 32);
    while (v4 < *(v1 + 16))
    {
      memcpy(__dst, v5, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v6);
      MEMORY[0x1AC585360]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v7 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      ++v4;
      sub_1A957C538();
      v5 += 280;
      if (v3 == v4)
      {
        v2 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = v0[7];

    v9 = v0[1];

    v9(v2);
  }
}

uint64_t sub_1A94C31F0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1A94C32AC;

  return sub_1A94C2860(a1);
}

uint64_t sub_1A94C32AC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v4 = sub_1A957C4B8();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1A94C3458(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *&v4[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  v10 = v4;
  sub_1A937829C(a3, a4);
  sub_1A957B9C8();

  return v12;
}

uint64_t sub_1A94C3510(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x140);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1A938E6B8;

  return v9(a3);
}

uint64_t sub_1A94C3764(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A957B308();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C3828, 0, 0);
}

uint64_t sub_1A94C3828()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x90))();
  *(v0 + 64) = v4;

  sub_1A957B1B8();
  v9 = (*v4 + 424);
  v10 = (*v9 + **v9);
  v5 = (*v9)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1A94C39C4;
  v7 = *(v0 + 56);

  return v10(v7);
}

uint64_t sub_1A94C39C4(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 80) = a1;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x1EEE6DFA0](sub_1A94C3B40, 0, 0);
}

uint64_t sub_1A94C3B40()
{
  v14 = v0;
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1A957CFA8();
    v3 = (v1 + 32);
    do
    {
      memcpy(__dst, v3, sizeof(__dst));
      CoreSynthesizer.Voice._bridgeToObjectiveC()(v4);
      sub_1A957CF78();
      v5 = *(v12 + 16);
      sub_1A957CFB8();
      sub_1A957CFC8();
      sub_1A957CF88();
      v3 += 280;
      --v2;
    }

    while (v2);
    v6 = v0[10];

    v7 = v12;
  }

  else
  {
    v8 = v0[10];

    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10(v7);
}

uint64_t sub_1A94C3DE8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1A957C0F8();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A94C3EBC;

  return sub_1A94C3764(v5, v7);
}

uint64_t sub_1A94C3EBC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v8 = *v0;

  sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
  v5 = sub_1A957C4B8();

  (v3)[2](v3, v5);

  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A94C4060(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor];
  sub_1A94C46C8();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = v2;

  sub_1A937829C(&qword_1EB387FE8, &qword_1A9595530);
  sub_1A957B9C8();

  return v9;
}

uint64_t sub_1A94C4128(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x150);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 24) = v9;
  *v9 = v4;
  v9[1] = sub_1A938E6B8;

  return v11(a3, a4);
}

uint64_t sub_1A94C4390()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))();
  v3 = *((*v1 & *v0) + 0xC8);

  return v3(v2);
}

id CoreSynthesisVoiceShim.init()()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim_executor;
  v2 = sub_1A957B978();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_1A957B968();
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___voiceSource] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___resourceResolver] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___internalResolver] = 0;
  *&v0[OBJC_IVAR____TtC12TextToSpeech22CoreSynthesisVoiceShim____lazy_storage___publicResolver] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CoreSynthesisVoiceShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSynthesisVoiceShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A94C46C8()
{
  result = qword_1EB385FE8;
  if (!qword_1EB385FE8)
  {
    sub_1A957B978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385FE8);
  }

  return result;
}

uint64_t sub_1A94C4720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94BEE84(a1, v4, v5, v6);
}

uint64_t sub_1A94C47D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94BFF0C(a1, v4, v5, v6);
}

uint64_t sub_1A94C4888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A94C0A1C(a1, v4);
}

uint64_t sub_1A94C4928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A94C13E4(a1, v4, v5);
}

uint64_t sub_1A94C49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C1DB0(a1, v4, v5, v6);
}

uint64_t sub_1A94C4A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C25F8(a1, v4, v5, v6);
}

uint64_t sub_1A94C4B40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A93836DC;

  return sub_1A94C3510(a1, v4, v5);
}

uint64_t sub_1A94C4BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A93836DC;

  return sub_1A94C4128(a1, v4, v5, v6);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.voice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9431DCC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.voice(languageCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9431DCC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.publicVoices()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9431DCC;

  return v6();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.internalVoices(includingSiri:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9431DCC;

  return v8(a1);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.internalVoice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93916A8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resourceVoice(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x130);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9431DCC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resourceVoices(onlyInstalled:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x140);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A9431DCC;

  return v8(a1);
}

uint64_t dispatch thunk of CoreSynthesisVoiceShim.resources(languageCode:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A9431DCC;

  return v10(a1, a2);
}

uint64_t sub_1A94C58B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C3DE8(v2, v3, v4);
}

uint64_t sub_1A94C5968()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C31F0(v2, v4, v3);
}

uint64_t sub_1A94C5A1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C2428(v2, v3, v4);
}

uint64_t sub_1A94C5AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A9382328;

  return sub_1A94C1DB0(a1, v4, v5, v6);
}

uint64_t sub_1A94C5B84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C1B44(v2, v3, v4);
}

uint64_t sub_1A94C5C38()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94C5C78()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94C12F8(v2, v4, v3);
}

uint64_t sub_1A94C5D2C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94C074C(v2, v3);
}

uint64_t sub_1A94C5DD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94BFBF8(v2, v3, v4);
}

uint64_t sub_1A94C5E8C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A94C5ECC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94BED80(v2, v3, v4);
}

double sub_1A94C5F8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = [v3 originalString];
  if (v7)
  {
    v8 = v7;
    a1 = sub_1A957C0F8();
    a2 = v9;
  }

  else if (a2)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  v10 = [v3 ignoreCase] ^ 1;
  v11 = [v3 phonemes];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A957C0F8();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v23 = a1;
      v24 = a2;
      v25 = v10;
      CoreSynthesizer.Substitution.init(search:ipa:)(&v23, v13, v15, a3);
      return result;
    }
  }

  v27[0] = a1;
  v27[1] = a2;
  v28 = v10;
  v18 = [v3 replacementString];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1A957C0F8();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = v20;
  v24 = v22;
  v26 = 1;
  *&result = CoreSynthesizer.Substitution.init(replacing:with:)(v27, &v23, a3).n128_u64[0];
  return result;
}

void sub_1A94C6100(uint64_t *a1@<X8>)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7CD0];
  v78 = MEMORY[0x1E69E7CD0];
  v4 = [v1 bundleIdentifiers];
  if (v4)
  {

    v5 = [v1 bundleIdentifiers];
    if (!v5)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v6 = v5;
    v7 = sub_1A957C8A8();

    v8 = *(v7 + 16);

    if (v8)
    {
      v77 = v3;
      v9 = [v2 bundleIdentifiers];
      if (!v9)
      {
LABEL_66:
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = MEMORY[0x1E69E69B8];
      v12 = sub_1A957C8A8();

      v13 = 0;
      v14 = v12 + 56;
      v15 = 1 << *(v12 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v12 + 56);
      v18 = (v15 + 63) >> 6;
      v19 = MEMORY[0x1E69E6158];
      v70 = v12;
      while (v17)
      {
        v20 = v13;
LABEL_14:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        sub_1A93B1F94(*(v12 + 48) + 40 * (v21 | (v20 << 6)), v75);
        v73[0] = v75[0];
        v73[1] = v75[1];
        v74 = v76;
        if (swift_dynamicCast())
        {
          v22 = v3;
          v23 = v2;
          v24 = v19;
          v25 = v11;
          v26 = v72[1];
          v27 = swift_allocObject();
          *(v27 + 16) = v72[0];
          *(v27 + 24) = v26;
          v11 = v25;
          v19 = v24;
          v2 = v23;
          v3 = v22;
          v12 = v70;
          sub_1A94C69A4(v73, v27);
        }

        v13 = v20;
      }

      while (1)
      {
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }

        if (v20 >= v18)
        {

          v28 = v77;
          if (*(v77 + 16))
          {
            v29 = swift_allocObject();
            *(v29 + 16) = v28;
            sub_1A94C69A4(v75, v29 | 0x6000000000000000);
          }

          else
          {
          }

          break;
        }

        v17 = *(v14 + 8 * v20);
        ++v13;
        if (v17)
        {
          goto LABEL_14;
        }
      }
    }
  }

  *&v73[0] = 0;
  v30 = [v2 voiceIds];
  if (v30)
  {

    v31 = [v2 voiceIds];
    if (!v31)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v32 = v31;
    v33 = sub_1A957C8A8();

    v34 = 0;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 56);
    v38 = (v35 + 63) >> 6;
    while (v37)
    {
      v39 = v34;
LABEL_29:
      v40 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v41 = (*(v33 + 48) + ((v39 << 10) | (16 * v40)));
      v42 = *v41;
      v43 = v41[1];
      v44 = *&v73[0];
      if (!*&v73[0])
      {
        v44 = v3;
      }

      *&v73[0] = v44;

      sub_1A93AB260(v75, v42, v43);
    }

    while (1)
    {
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        goto LABEL_34;
      }

      v37 = *(v33 + 56 + 8 * v39);
      ++v34;
      if (v37)
      {
        v34 = v39;
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_34:
  *&v75[0] = v3;
  v45 = [v2 languages];
  if (v45)
  {

    v46 = [v2 languages];
    if (!v46)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v47 = v46;
    v48 = sub_1A957C8A8();

    v49 = 0;
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v48 + 56);
    v53 = (v50 + 63) >> 6;
    while (v52)
    {
LABEL_46:
      v60 = (*(v48 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v52)))));
      v62 = *v60;
      v61 = v60[1];
      v64 = sub_1A957C1A8() == 0x6F6E2D6F6ELL && v63 == 0xE500000000000000;
      if (v64 || (v65 = sub_1A957D3E8(), , , (v65 & 1) != 0))
      {
      }

      v52 &= v52 - 1;
      v54 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
      v55 = swift_allocBox();
      v57 = v56;
      v58 = *(v54 + 48);
      sub_1A957B1B8();
      *(v57 + v58) = *&v73[0];

      sub_1A94C69A4(v72, v55 | 0x2000000000000000);
    }

    while (1)
    {
      v59 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v59 >= v53)
      {

        v3 = *&v75[0];
        goto LABEL_53;
      }

      v52 = *(v48 + 56 + 8 * v59);
      ++v49;
      if (v52)
      {
        v49 = v59;
        goto LABEL_46;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_53:
  if (*(v3 + 16))
  {
    v66 = swift_allocObject();
    *(v66 + 16) = v3;
    sub_1A94C69A4(v72, v66 | 0x6000000000000000);
  }

  else
  {
  }

  v67 = v78;
  if (*(v78 + 16))
  {
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    v69 = v68 | 0x4000000000000000;
  }

  else
  {

    v69 = 0x8000000000000000;
  }

  *a1 = v69;
}

uint64_t sub_1A94C6720(unint64_t a1)
{
  v2 = type metadata accessor for CoreSynthesizer.Substitution(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

  result = sub_1A957CE48();
  v7 = result;
  if (!result)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = &selRef_needsParameterSync;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC585DE0](v8, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      [v11 v10[113]];
      if (v13 >= 1)
      {
      }

      else
      {
        sub_1A94C6100(&v24);
        if (*(v9 + 16) && (v14 = sub_1A940F5D8(v24), (v15 & 1) != 0))
        {
          v16 = *(*(v9 + 56) + 8 * v14);
        }

        else
        {
          v16 = MEMORY[0x1E69E7CC0];
        }

        sub_1A94C5F8C(0, 0, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A9499E30(0, v16[2] + 1, 1, v16);
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          v16 = sub_1A9499E30(v17 > 1, v18 + 1, 1, v16);
        }

        v16[2] = v18 + 1;
        sub_1A94C77FC(v22, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18);
        sub_1A94C6100(&v24);
        v19 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v9;
        sub_1A94C7534(v16, v19, isUniquelyReferenced_nonNull_native);

        v9 = v23;
        v10 = &selRef_needsParameterSync;
      }

      ++v8;
    }

    while (v7 != v8);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94C69A4(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1A94139E0();
  v6 = sub_1A957C058();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1A9413A34();
    while (1)
    {
      v14 = *(*(v4 + 48) + 8 * v8);

      v10 = sub_1A957C098();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;

    sub_1A94C6D70(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1A94C6B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v28 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1A94139E0();
      result = sub_1A957C058();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v28;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A94C6D70(uint64_t result, unint64_t a2, char a3)
{
  v17 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A94C6B18(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1A94C6F08();
      goto LABEL_12;
    }

    sub_1A94C705C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1A94139E0();
  result = sub_1A957C058();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1A9413A34();
    do
    {
      v16 = *(*(v7 + 48) + 8 * a2);

      v11 = sub_1A957C098();

      if (v11)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v17;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A94C6F08()
{
  v1 = v0;
  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1A94C705C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&unk_1EB387FF0, &qword_1A9595718);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v26 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_1A94139E0();

      result = sub_1A957C058();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v26;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v25;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1A94C7294(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
  v32 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v33 = *(*(v5 + 48) + 8 * v20);
      v21 = *(*(v5 + 56) + 8 * v20);
      if ((v32 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1A94139E0();
      result = sub_1A957C058();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v33;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A94C7534(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A940F5D8(a2);
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
      sub_1A94C7294(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1A940F5D8(a2);
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
      sub_1A94C7694();
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

void *sub_1A94C7694()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3871F0, &qword_1A958BEE8);
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

uint64_t sub_1A94C77FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreSynthesizer.Substitution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VoiceDatabase.voice(forIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[110] = v3;
  v4[109] = a3;
  v4[108] = a2;
  v4[107] = a1;
  v5 = *(*(sub_1A937829C(&qword_1EB386988, &qword_1A9587830) - 8) + 64) + 15;
  v4[111] = swift_task_alloc();
  v6 = *(*(type metadata accessor for VoiceQueryCriteria(0) - 8) + 64) + 15;
  v4[112] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C7934, v3, 0);
}

uint64_t sub_1A94C7934()
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
  v14 = (*v3 + 392);
  v15 = (*v14 + **v14);
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  v0[113] = v10;
  *v10 = v0;
  v10[1] = sub_1A94C7AFC;
  v11 = v0[112];
  v12 = v0[110];

  return v15(v11);
}

uint64_t sub_1A94C7AFC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 904);
  v6 = *(*v2 + 896);
  v7 = *v2;
  *(v4 + 912) = a1;
  *(v4 + 920) = v1;

  sub_1A9391040(v6);
  v8 = *(v3 + 880);
  if (v1)
  {
    v9 = sub_1A94C7D34;
  }

  else
  {
    v9 = sub_1A94C7C50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1A94C7C50()
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

uint64_t sub_1A94C7D34()
{
  v1 = v0[112];
  v2 = v0[111];

  v3 = v0[1];
  v4 = v0[115];

  return v3();
}

uint64_t VoiceDatabase.withVoice<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[145] = v5;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  v9 = swift_task_alloc();
  v6[146] = v9;
  *v9 = v6;
  v9[1] = sub_1A94C7E60;

  return VoiceDatabase.voice(forIdentifier:)((v6 + 2), a2, a3);
}

uint64_t sub_1A94C7E60()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  v4 = *(v2 + 1160);
  if (v0)
  {
    v5 = sub_1A94C8298;
  }

  else
  {
    v5 = sub_1A94C7F78;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C7F78()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[143];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v9 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[148] = v6;
    *v6 = v0;
    v6[1] = sub_1A94C811C;
    v7 = v0[144];
    v8 = v0[142];

    return (v9)(v8, v0 + 107);
  }
}

uint64_t sub_1A94C811C()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v7 = *v1;
  *(*v1 + 1192) = v0;

  v4 = *(v2 + 1160);
  if (v0)
  {
    v5 = sub_1A94C82B0;
  }

  else
  {
    v5 = sub_1A94C8234;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C8234()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94C82B0()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VoiceDatabase.download(voiceId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[143] = v3;
  v4[142] = a1;
  v7 = swift_task_alloc();
  v4[144] = v7;
  *v7 = v4;
  v7[1] = sub_1A94C83C8;

  return VoiceDatabase.voice(forIdentifier:)((v4 + 2), a2, a3);
}

uint64_t sub_1A94C83C8()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v7 = *v1;
  *(*v1 + 1160) = v0;

  v4 = *(v2 + 1144);
  if (v0)
  {
    v5 = sub_1A94C86C4;
  }

  else
  {
    v5 = sub_1A94C84E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C84E0()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[143];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v9 = (*v4 + 472);
    v10 = (*v9 + **v9);
    v5 = (*v9)[1];
    v6 = swift_task_alloc();
    v0[146] = v6;
    *v6 = v0;
    v6[1] = sub_1A94C86DC;
    v7 = v0[143];
    v8 = v0[142];

    return (v10)(v8, v0 + 107);
  }
}

uint64_t sub_1A94C86DC()
{
  v2 = *v1;
  v3 = *(*v1 + 1168);
  v7 = *v1;
  *(*v1 + 1176) = v0;

  v4 = *(v2 + 1144);
  if (v0)
  {
    v5 = sub_1A94C87F4;
  }

  else
  {
    v5 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C87F4()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VoiceDatabase.cancelDownload(voiceId:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 1144) = v6;
  *v6 = v3;
  v6[1] = sub_1A94C8908;

  return VoiceDatabase.voice(forIdentifier:)(v3 + 16, a1, a2);
}

uint64_t sub_1A94C8908()
{
  v2 = *v1;
  v3 = *(*v1 + 1144);
  v7 = *v1;
  *(*v1 + 1152) = v0;

  v4 = *(v2 + 1136);
  if (v0)
  {
    v5 = sub_1A94C8C00;
  }

  else
  {
    v5 = sub_1A94C8A20;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C8A20()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[142];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v8 = (*v4 + 464);
    v9 = (*v8 + **v8);
    v5 = (*v8)[1];
    v6 = swift_task_alloc();
    v0[145] = v6;
    *v6 = v0;
    v6[1] = sub_1A94C8C18;
    v7 = v0[142];

    return v9(v0 + 107);
  }
}

uint64_t sub_1A94C8C18()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = v0;

  v4 = *(v2 + 1136);
  if (v0)
  {
    v5 = sub_1A94C8D30;
  }

  else
  {
    v5 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C8D30()
{
  sub_1A9384810(v0 + 576);
  v1 = *(v0 + 1168);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t VoiceDatabase.purge(voiceId:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 1136) = v2;
  v6 = swift_task_alloc();
  *(v3 + 1144) = v6;
  *v6 = v3;
  v6[1] = sub_1A94C8E44;

  return VoiceDatabase.voice(forIdentifier:)(v3 + 16, a1, a2);
}

uint64_t sub_1A94C8E44()
{
  v2 = *v1;
  v3 = *(*v1 + 1144);
  v7 = *v1;
  *(*v1 + 1152) = v0;

  v4 = *(v2 + 1136);
  if (v0)
  {
    v5 = sub_1A94C9258;
  }

  else
  {
    v5 = sub_1A94C8F5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C8F5C()
{
  memcpy(v0 + 72, v0 + 2, 0x118uLL);
  memcpy(v0 + 37, v0 + 2, 0x118uLL);
  if (sub_1A932D058((v0 + 37)) == 1)
  {
    sub_1A93D7B08();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[142];
    memcpy(v0 + 107, v0 + 37, 0x118uLL);
    v8 = (*v4 + 456);
    v9 = (*v8 + **v8);
    v5 = (*v8)[1];
    v6 = swift_task_alloc();
    v0[145] = v6;
    *v6 = v0;
    v6[1] = sub_1A94C913C;
    v7 = v0[142];

    return v9(v0 + 107);
  }
}

uint64_t sub_1A94C913C()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v7 = *v1;
  *(*v1 + 1168) = v0;

  v4 = *(v2 + 1136);
  if (v0)
  {
    v5 = sub_1A94C925C;
  }

  else
  {
    v5 = sub_1A94C9254;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1A94C9278(void *a1, uint64_t a2, char a3)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x168);
  v5 = a1;
  v6 = *(v4() + 24);

  sub_1A957BE58();

  v10[0] = v10[1];
  v9 = a3;
  v7 = static TTSSpeechQueue.State.== infix(_:_:)(v10, &v9);

  return v7 & 1;
}

uint64_t sub_1A94C9350(char a1)
{
  v3 = *((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))() + 24);

  sub_1A957BE58();

  v6[0] = v6[1];
  v5 = a1;
  return static TTSSpeechQueue.State.== infix(_:_:)(v6, &v5) & 1;
}

uint64_t CoreSynthesizer.speak(_:synth:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C94A4, 0, 0);
}

uint64_t sub_1A94C94A4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v5 = sub_1A94BBBB0(v3);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v6 = sub_1A94BBBB0(v4);
  v7 = sub_1A957C688();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = v2;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  v9 = v2;
  sub_1A93C4B70(0, 0, v1, &unk_1A9595778, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A94C9814(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1A94C98EC;

  return CoreSynthesizer.speak(_:synth:)(v8, v9);
}

uint64_t sub_1A94C98EC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1A94C9A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 1360) = v24;
  *(v8 + 1344) = v23;
  *(v8 + 1336) = a8;
  *(v8 + 393) = a7;
  *(v8 + 1328) = a6;
  *(v8 + 1320) = a5;
  *(v8 + 1312) = a4;
  v9 = sub_1A957BF18();
  *(v8 + 1368) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1384) = swift_task_alloc();
  v12 = sub_1A957BF48();
  *(v8 + 1392) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1400) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 1408) = swift_task_alloc();
  v15 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  *(v8 + 1416) = v15;
  v16 = *(v15 - 8);
  *(v8 + 1424) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 1432) = swift_task_alloc();
  v18 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  *(v8 + 1440) = v18;
  v19 = *(v18 - 8);
  *(v8 + 1448) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 1456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94C9C6C, 0, 0);
}

uint64_t sub_1A94C9C6C()
{
  v1 = sub_1A957C0C8();
  v2 = NSClassFromString(v1);
  v0[183] = v2;

  if (v2)
  {
    v3 = v0[164];
    v0[184] = swift_getKeyPath();
    v4 = *v3 + 120;
    v0[185] = *v4;
    v0[186] = v4 & 0xFFFFFFFFFFFFLL | 0xEBF000000000000;

    return MEMORY[0x1EEE6DFA0](sub_1A94C9E80, v3, 0);
  }

  else
  {
    v5 = v0[166];
    v6 = v0[165];
    v7 = swift_task_alloc();
    v0[192] = v7;
    *(v7 + 16) = v5;
    v8 = *(*v6 + 112);
    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[193] = v10;
    v11 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
    *v10 = v0;
    v10[1] = sub_1A94CA730;
    v12 = v0[165];

    return (v14)(v0 + 50, &unk_1A95958E0, v7, v11);
  }
}

uint64_t sub_1A94C9E80()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1312);
  (*(v0 + 1480))(*(v0 + 1472));

  return MEMORY[0x1EEE6DFA0](sub_1A94C9F04, 0, 0);
}

uint64_t sub_1A94C9F04()
{
  if (*(v0 + 1304) && (v1 = [*(v0 + 1304) isKindOfClass_], swift_unknownObjectRelease(), (v1 & 1) != 0))
  {
    v2 = *(v0 + 1320);
    v3 = sub_1A93776E0();
    swift_beginAccess();
    v4 = *v3;
    *(v0 + 1496) = *v3;
    *(v0 + 1504) = swift_getKeyPath();
    v5 = *v2 + 120;
    *(v0 + 1512) = *v5;
    *(v0 + 1520) = v5 & 0xFFFFFFFFFFFFLL | 0xEBF000000000000;
    v6 = v4;

    return MEMORY[0x1EEE6DFA0](sub_1A94CA138, v2, 0);
  }

  else
  {
    v7 = *(v0 + 1328);
    v8 = *(v0 + 1320);
    v9 = swift_task_alloc();
    *(v0 + 1536) = v9;
    *(v9 + 16) = v7;
    v10 = *(*v8 + 112);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 1544) = v12;
    v13 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
    *v12 = v0;
    v12[1] = sub_1A94CA730;
    v14 = *(v0 + 1320);

    return v16(v0 + 400, &unk_1A95958E0, v9, v13);
  }
}

uint64_t sub_1A94CA138()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1320);
  (*(v0 + 1512))(*(v0 + 1504));

  return MEMORY[0x1EEE6DFA0](sub_1A94CA1BC, 0, 0);
}

uint64_t sub_1A94CA1BC()
{
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 1496)) + 0x50))(*(v0 + 1272), *(v0 + 1280));
  v1 = *(v0 + 1320);

  v2 = *(*v1 + 112);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 1528) = v4;
  *v4 = v0;
  v4[1] = sub_1A94CA4C4;
  v5 = *(v0 + 1320);

  return v7();
}

uint64_t sub_1A94CA4C4()
{
  v1 = *(*v0 + 1528);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94CA5C0, 0, 0);
}

uint64_t sub_1A94CA5C0()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = swift_task_alloc();
  v0[192] = v3;
  *(v3 + 16) = v1;
  v4 = *(*v2 + 112);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[193] = v6;
  v7 = sub_1A937829C(&qword_1EB388050, qword_1A95958E8);
  *v6 = v0;
  v6[1] = sub_1A94CA730;
  v8 = v0[165];

  return (v10)(v0 + 50, &unk_1A95958E0, v3, v7);
}

uint64_t sub_1A94CA730()
{
  v1 = *(*v0 + 1544);
  v2 = *(*v0 + 1536);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94CA848, 0, 0);
}

uint64_t sub_1A94CA848()
{
  if (*(v0 + 408))
  {
    v1 = *(v0 + 393);
    v2 = *(v0 + 1328);
    memcpy((v0 + 16), (v0 + 400), 0x179uLL);
    v3 = *MEMORY[0x1E69E7D40] & *v2;
    v4 = *(v0 + 1456);
    if (v1 == 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4C8))(v0 + 16);
    }

    else
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4B0))(v0 + 16);
    }

    v11 = *(v0 + 1456);
    v12 = *(v0 + 1440);
    v13 = *(v0 + 1432);
    sub_1A957C6F8();
    v14 = *(MEMORY[0x1E69E87A8] + 4);
    v15 = swift_task_alloc();
    *(v0 + 1552) = v15;
    *v15 = v0;
    v15[1] = sub_1A94CAA1C;
    v16 = *(v0 + 1432);
    v17 = *(v0 + 1416);

    return MEMORY[0x1EEE6DB90](v0 + 1216, 0, 0, v17, v0 + 1288);
  }

  else
  {
    sub_1A937B960(v0 + 400, &qword_1EB388050, qword_1A95958E8);
    v5 = *(v0 + 1456);
    v6 = *(v0 + 1432);
    v7 = *(v0 + 1408);
    v8 = *(v0 + 1384);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1A94CAA1C()
{
  v2 = *(*v1 + 1552);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1A94CAF90;
  }

  else
  {
    v3 = sub_1A94CAB2C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A94CAB2C()
{
  v1 = v0[154];
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    v2 = v0[182];
    v3 = v0[181];
    v4 = v0[180];
    (*(v0[178] + 8))(v0[179], v0[177]);
    (*(v3 + 8))(v2, v4);
    sub_1A9410E64((v0 + 2));
    v5 = v0[182];
    v6 = v0[179];
    v7 = v0[176];
    v8 = v0[173];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[152];
    v12 = v0[153];
    v13 = v0[155];
    v26 = v0[176];
    v31 = v0[175];
    v32 = v0[174];
    v30 = v0[172];
    v28 = v0[173];
    v29 = v0[171];
    v34 = v0[169];
    v35 = v0[170];
    v14 = v0[168];
    v15 = v0[167];
    v33 = v0[166];
    v16 = v0[165];
    v17 = v0[164];
    sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
    v27 = sub_1A957CAE8();
    sub_1A9410E08((v0 + 2), (v0 + 98));
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v11;
    v18[5] = v12;
    v18[6] = v1;
    v18[7] = v13;
    v18[8] = v15;
    v18[9] = v14;
    memcpy(v18 + 10, v0 + 98, 0x179uLL);
    v18[58] = v34;
    v18[59] = v35;
    v18[60] = v33;
    v0[150] = sub_1A94CED74;
    v0[151] = v18;
    v0[146] = MEMORY[0x1E69E9820];
    v0[147] = 1107296256;
    v0[148] = sub_1A93C80E8;
    v0[149] = &unk_1F1CFAAD0;
    aBlock = _Block_copy(v0 + 146);

    sub_1A9410FA4(v11, v12, v1);
    sub_1A932D0E4(v15);
    sub_1A932D0E4(v34);
    v19 = v33;
    sub_1A957BF28();
    v0[162] = MEMORY[0x1E69E7CC0];
    sub_1A94CF178(qword_1ED96FED0, MEMORY[0x1E69E7F60]);
    sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
    sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
    sub_1A957CE08();
    MEMORY[0x1AC5859B0](0, v26, v28, aBlock);
    _Block_release(aBlock);

    sub_1A9410F4C(v11, v12, v1);
    (*(v30 + 8))(v28, v29);
    (*(v31 + 8))(v26, v32);
    v20 = v0[151];

    v21 = *(MEMORY[0x1E69E87A8] + 4);
    v22 = swift_task_alloc();
    v0[194] = v22;
    *v22 = v0;
    v22[1] = sub_1A94CAA1C;
    v23 = v0[179];
    v24 = v0[177];

    return MEMORY[0x1EEE6DB90](v0 + 152, 0, 0, v24, v0 + 161);
  }
}

uint64_t sub_1A94CAF90()
{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[176];
  v5 = v0[173];
  (*(v0[178] + 8))(v0[179], v0[177]);
  (*(v2 + 8))(v1, v3);
  sub_1A9410E64((v0 + 2));
  v6 = v0[161];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A94CB070()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A93836DC;

  return sub_1A94C9A5C(v8, v9, v10, v2, v3, v4, v5, v6);
}

id sub_1A94CB154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

void sub_1A94CB1A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 speechString];
  v4 = sub_1A957C0F8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A94CB21C()
{
  v1 = [*(v0 + 16) speechString];
  if (!v1)
  {
    sub_1A957C0F8();
    v1 = sub_1A957C0C8();
  }

  [*(v0 + 16) setSsmlRepresentation_];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94CB2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CB2E8, 0, 0);
}

uint64_t sub_1A94CB2E8()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 32)) + 0x198))(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1A94CB3D4;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_1A937880C(v3, v4, v1);
}

uint64_t sub_1A94CB3D4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1A94CB4C8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 <= 1)
  {
    v8 = *a1;
    if (v3)
    {
      v9 = sub_1A94CDE34(v8, v2);
      v11 = v18;
      v12 = objc_allocWithZone(MEMORY[0x1E69584E0]);
      v13 = sel_initWithSentenceRange_atByteSampleOffset_;
    }

    else
    {
      v9 = sub_1A94CDE34(v8, v2);
      v11 = v10;
      v12 = objc_allocWithZone(MEMORY[0x1E69584E0]);
      v13 = sel_initWithWordRange_atByteSampleOffset_;
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v5 = objc_allocWithZone(MEMORY[0x1E69584E0]);
        v6 = sub_1A957C0C8();
        v7 = [v5 initWithBookmarkName:v6 atByteSampleOffset:v4];
      }

      else
      {
        v15 = objc_allocWithZone(MEMORY[0x1E69584E0]);
        v6 = sub_1A957C0C8();
        v7 = [v15 initWithPhonemeString:v6 atByteSampleOffset:v4];
      }

      v16 = v7;

      return v16;
    }

    v9 = sub_1A94CDE34(*a1, v2);
    v11 = v14;
    v12 = objc_allocWithZone(MEMORY[0x1E69584E0]);
    v13 = sel_initWithParagraphRange_atByteSampleOffset_;
  }

  return [v12 v13];
}

uint64_t CoreSynthesizer.write(_:toBufferCallback:synth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94CB6CC, 0, 0);
}

uint64_t sub_1A94CB6CC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v7 = sub_1A94BBBB0(v4);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v8 = sub_1A94BBBB0(v5);
  v9 = sub_1A957C688();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = v2;
  *(v10 + 56) = 1;
  *(v10 + 64) = v6;
  *(v10 + 72) = v3;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  v11 = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A9595788, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A94CBA70(void *a1, void *aBlock, void *a3, const void *a4, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v10 = _Block_copy(aBlock);
  v5[5] = _Block_copy(a4);
  v11 = swift_allocObject();
  v5[6] = v11;
  *(v11 + 16) = v10;
  v12 = a1;
  v13 = a3;
  a5;
  v14 = swift_task_alloc();
  v5[7] = v14;
  *v14 = v5;
  v14[1] = sub_1A94CBB98;

  return CoreSynthesizer.write(_:toBufferCallback:synth:)(v12, sub_1A94CF238, v11, v13);
}

uint64_t sub_1A94CBB98()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t CoreSynthesizer.write(_:toBufferCallback:toMarkerCallback:synth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94CBDD4, 0, 0);
}

uint64_t sub_1A94CBDD4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v15 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x538))(0, 0);
  sub_1A937829C(&qword_1EB388008, &qword_1A9595760);
  sub_1A9387478(0, &qword_1EB388010, 0x1E6958510);
  v8 = sub_1A94BBBB0(v4);
  sub_1A937829C(&qword_1EB388018, &qword_1A9595768);
  sub_1A9387478(0, &unk_1EB388020, 0x1E6958520);
  v9 = sub_1A94BBBB0(v6);
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v2;
  *(v11 + 56) = 1;
  *(v11 + 64) = v7;
  *(v11 + 72) = v5;
  *(v11 + 80) = v15;
  *(v11 + 88) = v3;
  v12 = v2;

  sub_1A93C4B70(0, 0, v1, &unk_1A9595798, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A94CC1A4(void *a1, void *aBlock, const void *a3, void *a4, const void *a5, void *a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  v12 = _Block_copy(aBlock);
  v13 = _Block_copy(a3);
  v6[5] = _Block_copy(a5);
  v14 = swift_allocObject();
  v6[6] = v14;
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  v6[7] = v15;
  *(v15 + 16) = v13;
  v16 = a1;
  v17 = a4;
  a6;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1A94CC314;

  return CoreSynthesizer.write(_:toBufferCallback:toMarkerCallback:synth:)(v16, sub_1A94CE9F8, v14, sub_1A94CEA0C, v15, v17);
}

uint64_t sub_1A94CC314()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v10 = *v0;

  v4[2](v4);
  _Block_release(v4);
  v8 = *(v10 + 8);

  return v8();
}

void sub_1A94CC4C4(uint64_t a1, uint64_t a2)
{
  sub_1A9387478(0, &qword_1EB388030, 0x1E69584E0);
  v3 = sub_1A957C4B8();
  (*(a2 + 16))(a2, v3);
}

uint64_t CoreSynthesizer.stopSpeaking(at:)(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CC560, 0, 0);
}

uint64_t sub_1A94CC560()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v8 = v0 + 16;
  v7 = v0[16];
  v6 = v8[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1A94CC6B4;
  v9 = swift_continuation_init();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v1[14] = sub_1A94CE148;
  v1[15] = v10;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A93FB164;
  v1[13] = &unk_1F1CED860;
  v11 = _Block_copy(v4);
  v12 = v1[15];

  [v6 stopSpeakingAt:v7 completionHandler:v11];
  _Block_release(v11);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A94CC6B4()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t CoreSynthesizer.stopSpeaking(at:completionHandler:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v29 - v14;
  if ([v3 isSpeaking])
  {
    v16 = 1;
    if (a1)
    {
LABEL_3:
      v17 = swift_allocObject();
      *(v17 + 16) = v3;
      v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x538);
      v19 = v3;
      v18(sub_1A94CE188, v17);
      return a2(v16);
    }
  }

  else
  {
    v16 = [v3 isPaused];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v21 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x138))();
  v22 = sub_1A957C688();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v15, 1, 1, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = v16;
  sub_1A93F8120(v15, v12);
  v25 = (*(v23 + 48))(v12, 1, v22);
  v26 = v3;

  if (v25 == 1)
  {
    sub_1A937B960(v12, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v23 + 8))(v12, v22);
  }

  v27 = sub_1A94CF178(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1A95957B0;
  *(v28 + 24) = v24;
  v29[0] = 6;
  v29[1] = 0;
  v29[2] = v21;
  v29[3] = v27;

  swift_task_create();
  sub_1A937B960(v15, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94CCB48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x4E8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_1A94CCC88;

  return v10();
}

uint64_t sub_1A94CCC88()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A94CCD84, 0, 0);
}

uint64_t sub_1A94CCD84()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A94CCDEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4E8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9();
}

uint64_t CoreSynthesizer.pauseSpeaking(at:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A94CCFB8, 0, 0);
}

uint64_t sub_1A94CCFB8()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(v0 + 24) isSpeaking];
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x538);
    v5 = v2;
    v4(sub_1A94CE270, v3);
    v6 = *(v0 + 8);
    v7 = *(v0 + 40);

    return v6(v7);
  }

  else
  {
    v9 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4F0);
    v13 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 32) = v11;
    *v11 = v0;
    v11[1] = sub_1A94CD1D4;
    v12 = *(v0 + 24);

    return v13();
  }
}

uint64_t sub_1A94CD1D4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 40);

  return v3(v4);
}

uint64_t sub_1A94CD2CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v14 - v8;
  v10 = sub_1A957C688();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  sub_1A938A404(0, 0, v9, a3, v11);

  return (*((*MEMORY[0x1E69E7D40] & *v12) + 0x538))(0, 0);
}

uint64_t sub_1A94CD41C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4F0);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A93836DC;

  return v9();
}

uint64_t sub_1A94CD6CC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1A94CD748, 0, 0);
}

uint64_t sub_1A94CD748()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = [*(v0 + 24) isSpeaking];
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x538);
    v5 = v2;
    v4(sub_1A94CF22C, v3);
    v6 = *(v0 + 48);
    v7 = *(v0 + 32);

    v7[2](v7, v6);
    _Block_release(v7);
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x4F0);
    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v12[1] = sub_1A94CD988;
    v13 = *(v0 + 24);

    return v14();
  }
}

uint64_t sub_1A94CD988()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 32);

  v5[2](v5, v4);
  _Block_release(v5);
  v6 = *(v3 + 8);

  return v6();
}

Swift::Bool __swiftcall CoreSynthesizer.continueSpeaking()()
{
  v1 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v11 - v4;
  v6 = [v0 isPaused];
  v7 = sub_1A957C688();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v9 = v0;
  sub_1A938A404(0, 0, v5, &unk_1A95957D8, v8);

  return v6;
}

uint64_t sub_1A94CDBEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x4F8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A93836DC;

  return v9();
}

uint64_t sub_1A94CDE34(unint64_t a1, unint64_t a2)
{
  sub_1A9378344(v2 + 320, &v14);
  if (v16 >= 2u)
  {
    goto LABEL_15;
  }

  v6 = v14;
  v5 = v15;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v8 = 4 * v7;
  if (v8 < a1 >> 14 || v8 < a2 >> 14)
  {
    sub_1A957CA78();
    v10 = AXTTSLogCommon();
    if (v10)
    {
      v11 = v10;
      sub_1A957BC58();

      v12 = sub_1A957C238();

      result = v12 - 1;
      if (!__OFSUB__(v12, 1))
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
LABEL_15:
    result = sub_1A957D0A8();
    __break(1u);
    return result;
  }

  v14 = a1;
  v15 = a2;
  sub_1A937829C(&qword_1EB388038, &unk_1A95958C0);
  sub_1A93B744C(&unk_1EB388040, &qword_1EB388038, &unk_1A95958C0);
  sub_1A93820F4();
  return sub_1A957CC38();
}

uint64_t sub_1A94CDFF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  if (*(v0 + 64))
  {
    v4 = *(v0 + 72);
  }

  if (*(v0 + 80))
  {
    v5 = *(v0 + 88);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A94CE064()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A9382328;

  return sub_1A94C9A5C(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_1A94CE148(char a1)
{
  v2 = *(v1 + 16);
  **(*(v2 + 64) + 40) = a1;
  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1A94CE170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94CE1C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A94CCB48(v6, v2, v3, v4, v5);
}

uint64_t sub_1A94CE2A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CDBEC(v3, v4, v5, v2);
}

uint64_t sub_1A94CE33C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A94CD6CC(v2, v3, v4);
}

uint64_t sub_1A94CE3F0(uint64_t a1, void *a2, void (**a3)(void, void))
{
  v6 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v29 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  _Block_copy(a3);
  if ([a2 isSpeaking])
  {
    v16 = 1;
    if (a1)
    {
LABEL_3:
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x538);
      v19 = a2;
      v18(sub_1A94CF230, v17);
      a3[2](a3, v16);
    }
  }

  else
  {
    v16 = [a2 isPaused];
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v21 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x138))();
  v22 = sub_1A957C688();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v14, 1, 1, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = sub_1A94CE81C;
  *(v24 + 32) = v15;
  *(v24 + 40) = v16;
  sub_1A93F8120(v14, v11);
  v25 = (*(v23 + 48))(v11, 1, v22);
  v26 = a2;

  if (v25 == 1)
  {
    sub_1A937B960(v11, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v23 + 8))(v11, v22);
  }

  v27 = sub_1A94CF178(&qword_1ED96FE68, type metadata accessor for TTSExecutor);
  v28 = swift_allocObject();
  *(v28 + 16) = &unk_1A9595828;
  *(v28 + 24) = v24;
  v29[0] = 6;
  v29[1] = 0;
  v29[2] = v21;
  v29[3] = v27;

  swift_task_create();
  sub_1A937B960(v14, &qword_1EB388000, &qword_1A9587710);
}

uint64_t sub_1A94CE834()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1A94CE874()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A9382328;

  return sub_1A94CCB48(v6, v2, v3, v4, v5);
}

uint64_t sub_1A94CE924()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A93836DC;

  return sub_1A94CC1A4(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1A94CEA14()
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

  return sub_1A94CBA70(v2, v3, v4, v5, v6);
}

uint64_t sub_1A94CEADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A94C9814(v2, v3, v5, v4);
}

uint64_t sub_1A94CEB9C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CD41C(v3, v4, v5, v2);
}

uint64_t sub_1A94CEC30()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A94CCDEC(v3, v4, v5, v2);
}

uint64_t sub_1A94CECC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return sub_1A94CB2C4(a1, a2, v6);
}

void sub_1A94CED74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v26 = *(v0 + 72);
  v28 = *(v0 + 56);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 480);
  v29 = (*(**(v0 + 16) + 104))();
  v9 = (*(*v1 + 104))();
  v10 = [v29 delegate];
  v11 = v10;
  v12 = v4 >> 61;
  if ((v4 >> 61) <= 1)
  {
    if (!v12)
    {
LABEL_42:
      swift_unknownObjectRelease();
      goto LABEL_43;
    }

    v27 = v9;
    v30[0] = v2;
    v30[1] = v3;
    v31 = v4;
    v32 = v28;
    v15 = sub_1A94CB4C8(v30);
    if (v11 && ([v11 respondsToSelector_] & 1) != 0)
    {
      [v11 speechSynthesizer:v29 willSpeakMarker:v15 utterance:v9];
    }

    if (v7)
    {
      sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A95892B0;
      *(v16 + 32) = v15;
      v17 = v15;
      v7(v16);
    }

    if ([v15 mark] == 1)
    {
      v18 = (*((*MEMORY[0x1E69E7D40] & *v8) + 0x530))();
      if (v18)
      {
        v19 = v18;
        v18();
        sub_1A93CF5C8(v19);
      }

      v20 = [v15 textRange];
      if (!v11)
      {
        goto LABEL_28;
      }

      v22 = v20;
      v23 = v21;
      if ([v11 respondsToSelector_])
      {
        v24 = v22;
        v9 = v27;
        [v11 speechSynthesizer:v29 willSpeakRangeOfSpeechString:v24 utterance:{v23, v27}];

        goto LABEL_42;
      }
    }

    swift_unknownObjectRelease();
LABEL_28:

    v9 = v27;
    goto LABEL_43;
  }

  if (v12 == 2)
  {
    if (v5)
    {
      v5(v2);
    }

    goto LABEL_42;
  }

  if (v12 == 3)
  {
    if (v2)
    {
      if (!v10)
      {
        goto LABEL_43;
      }

      v13 = v9;
      if ([v10 respondsToSelector_])
      {
        v14 = sel_speechSynthesizer_didFinishSpeechUtterance_;
LABEL_41:
        v9 = v13;
        [v11 v14];
        goto LABEL_42;
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_43;
      }

      v13 = v9;
      if ([v10 respondsToSelector_])
      {
        v14 = sel_speechSynthesizer_didCancelSpeechUtterance_;
        goto LABEL_41;
      }
    }
  }

  else
  {
    v25 = v28 | v3;
    if (v4 != 0x8000000000000000 || v25 | v2)
    {
      if (v4 == 0x8000000000000000 && v2 == 1 && !v25)
      {
        if (!v10)
        {
          goto LABEL_43;
        }

        v13 = v9;
        if ([v10 respondsToSelector_])
        {
          v14 = sel_speechSynthesizer_didPauseSpeechUtterance_;
          goto LABEL_41;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_43;
        }

        v13 = v9;
        if ([v10 respondsToSelector_])
        {
          v14 = sel_speechSynthesizer_didContinueSpeechUtterance_;
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (!v10)
      {
        goto LABEL_43;
      }

      v13 = v9;
      if ([v10 respondsToSelector_])
      {
        v14 = sel_speechSynthesizer_didStartSpeechUtterance_;
        goto LABEL_41;
      }
    }
  }

  swift_unknownObjectRelease();
  v9 = v13;
LABEL_43:
}

uint64_t sub_1A94CF178(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for AVSpeechBoundary()
{
  if (!qword_1EB3880C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB3880C0);
    }
  }
}

__n128 String.asSpeech.getter@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{

  TTSMarkup.SpeechText.init(_:)(a1, a2, v8);
  v6 = v8[1];
  result = v9;
  a3->n128_u64[0] = v8[0];
  a3->n128_u64[1] = v6;
  a3[1] = result;
  return result;
}

uint64_t sub_1A94CF30C(float a1)
{
  if (a1 >= 0.0)
  {
    v1 = 43;
  }

  else
  {
    v1 = 0;
  }

  if (a1 >= 0.0)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1AC585140](v1, v2);

  sub_1A957C898();
  return 0;
}

void *sub_1A94CF38C()
{
  type metadata accessor for TTSSettings();
  v0 = swift_allocObject();
  result = sub_1A94D2578();
  qword_1ED970E08 = v0;
  return result;
}

uint64_t sub_1A94CF3C8()
{
  v0 = swift_allocObject();
  sub_1A94D2578();
  return v0;
}

uint64_t *sub_1A94CF400()
{
  if (qword_1ED970E00 != -1)
  {
    swift_once();
  }

  return &qword_1ED970E08;
}

uint64_t static TTSSettings.shared.getter()
{
  if (qword_1ED970E00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A94CF4AC()
{
  if (*v0)
  {
    result = 6580592;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1A94CF4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000)
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

uint64_t sub_1A94CF5A8(uint64_t a1)
{
  v2 = sub_1A94D2644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94CF5E4(uint64_t a1)
{
  v2 = sub_1A94D2644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSSettings.SpeechTracingClient.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB3880D0, &qword_1A95959F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v15 = *(v1 + 4);
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94D2644();
  sub_1A957D598();
  v17 = 0;
  v12 = v14[1];
  sub_1A957D2E8();
  if (!v12)
  {
    v16 = 1;
    sub_1A957D348();
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t TTSSettings.SpeechTracingClient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A937829C(&qword_1EB3880D8, &unk_1A95959F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  v10 = sub_1A957B0B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B0A8();
  sub_1A957B088();
  (*(v11 + 8))(v15, v10);
  getpid();
  v16 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94D2644();
  sub_1A957D588();
  if (!v2)
  {
    v17 = v24;
    v26 = 0;
    v18 = sub_1A957D1E8();
    v20 = v19;
    v23 = v18;

    v25 = 1;
    v22 = sub_1A957D248();
    (*(v5 + 8))(v9, v4);
    *v17 = v23;
    *(v17 + 8) = v20;
    *(v17 + 16) = v22;
  }

  sub_1A9378138(a1);
}

uint64_t sub_1A94CFA80()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94CFAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
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
    sub_1A937829C(&qword_1EB388100, &qword_1A9595A50);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D498C(&qword_1ED96FD30, sub_1A94D4938);
    sub_1A94D498C(&qword_1ED96FD38, sub_1A94D4A10);
    sub_1A94D48F0(&qword_1EB386468, v8, type metadata accessor for TTSSettings);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 16);
    *(a1 + 16) = v7;
  }

  *a2 = v7;
}

unint64_t sub_1A94CFD20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94D45C8(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94CFD98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94CFDE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);

  return v3(v4);
}

uint64_t sub_1A94CFE38()
{
  (*(*v0 + 200))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94CFE98()
{
  (*(*v0 + 200))();
  sub_1A957B8F8();
}

void (*sub_1A94CFEFC(void *a1))(uint64_t **, char)
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
  v5 = *(*v1 + 200);
  v6 = (*v1 + 200) & 0xFFFFFFFFFFFFLL | 0xE2B0000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A94CFFB8;
}

uint64_t (*sub_1A94CFFBC())()
{
  v1 = v0;
  v2 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v27 - v5;
  v7 = sub_1A957B0B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A957B0A8();
  v13 = sub_1A957B088();
  v15 = v14;
  (*(v8 + 8))(v12, v7);
  LODWORD(v7) = getpid();
  v16 = *(*v1 + 232);
  swift_bridgeObjectRetain_n();
  v17 = v16(v29);
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v19;
  *v19 = 0x8000000000000000;
  sub_1A94D3098(v13, v15, v7, v13, v15, isUniquelyReferenced_nonNull_native);

  *v19 = v28;
  v17(v29, 0);
  v22 = sub_1A957C688();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v13;
  *(v23 + 40) = v15;
  *(v23 + 48) = v7;

  v24 = sub_1A93C4B70(0, 0, v6, &unk_1A9595A20, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  *(v25 + 24) = v13;
  *(v25 + 32) = v15;
  *(v25 + 40) = v7;
  *(v25 + 48) = v24;

  return sub_1A94D39A8;
}

uint64_t sub_1A94D027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1A957D008();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v9 = sub_1A957D018();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94D03A4, 0, 0);
}

uint64_t sub_1A94D03A4()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  sub_1A957D468();
  *(v0 + 40) = xmmword_1A95959E0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v7 = sub_1A94D48F0(&qword_1EB385E98, 255, MEMORY[0x1E69E8820]);
  sub_1A957D448();
  sub_1A94D48F0(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8]);
  sub_1A957D028();
  v8 = *(v5 + 8);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_1A94D0564;
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v12 = *(v0 + 104);

  return MEMORY[0x1EEE6DE58](v13, v0 + 16, v12, v7);
}

uint64_t sub_1A94D0564()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  v4 = *(v2 + 136);
  if (v0)
  {
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    v5 = sub_1A94D0898;
  }

  else
  {
    v7 = *(v2 + 112);
    v6 = *(v2 + 120);
    v8 = *(v2 + 104);
    (*(v2 + 128))(*(v2 + 96), *(v2 + 72));
    (*(v7 + 8))(v6, v8);
    v5 = sub_1A94D06BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A94D06BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = sub_1A957C1C8();
  notify_post((v3 + 32));

  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  sub_1A957D468();
  *(v0 + 40) = xmmword_1A95959E0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v10 = sub_1A94D48F0(&qword_1EB385E98, 255, MEMORY[0x1E69E8820]);
  sub_1A957D448();
  sub_1A94D48F0(&qword_1EB385EA0, 255, MEMORY[0x1E69E87E8]);
  sub_1A957D028();
  v11 = *(v8 + 8);
  *(v0 + 128) = v11;
  *(v0 + 136) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v9);
  v12 = *(MEMORY[0x1E69E8938] + 4);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_1A94D0564;
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);

  return MEMORY[0x1EEE6DE58](v16, v0 + 16, v15, v10);
}

uint64_t sub_1A94D0898()
{
  v1 = v0[12];
  v2 = v0[11];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_1A94D0934()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94D09B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 32))
  {
    v7 = *(a1 + 32);
  }

  else
  {
    sub_1A937829C(&qword_1EB388110, &qword_1A9595A58);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D4528(&qword_1ED96FD40, &qword_1ED96FD90);
    sub_1A94D4528(&qword_1ED96FD48, &qword_1ED96FD98);
    sub_1A94D48F0(&qword_1EB386468, v8, type metadata accessor for TTSSettings);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 32);
    *(a1 + 32) = v7;
  }

  *a2 = v7;
}

unint64_t sub_1A94D0BB4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94D46E4(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94D0C0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1A94D0C60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 320);

  return v3(v4);
}

uint64_t sub_1A94D0CBC()
{
  (*(*v0 + 296))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94D0D24()
{
  (*(*v0 + 296))();
  sub_1A957B8F8();
}

void (*sub_1A94D0D90(void *a1))(uint64_t **, char)
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
  v5 = (*v1 + 296);
  v6 = *v5;
  v3[3] = *v5;
  v3[4] = v5 & 0xFFFFFFFFFFFFLL | 0x1423000000000000;
  v6();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A94D4A64;
}

uint64_t sub_1A94D0E54()
{
  v1 = *(v0 + 56);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B4B04(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94D0ED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 48);
  }

  else
  {
    sub_1A937829C(&qword_1EB388120, &qword_1A9595A60);

    sub_1A957BA08();
    type metadata accessor for TTSSettings();
    sub_1A94D4480();
    sub_1A94D44D4();
    sub_1A94D48F0(&qword_1EB386468, v8, type metadata accessor for TTSSettings);
    v7 = sub_1A957B8D8();
    v9 = *(a1 + 48);
    *(a1 + 48) = v7;
  }

  *a2 = v7;
}

void sub_1A94D107C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (TTSIsInternalBuild())
  {
    type metadata accessor for AXCatalogUpdater();
    v3[0] = v1;
    v3[1] = v2;
    sub_1A93F2328(v3);
  }
}

uint64_t sub_1A94D10CC()
{

  sub_1A957BA88();
}

uint64_t sub_1A94D1130()
{
  (*(*v0 + 384))();
  sub_1A957B8E8();
}

uint64_t sub_1A94D119C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  (*(*v1 + 384))();
  sub_1A957B8F8();
}

void (*sub_1A94D1210(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v4 = (*v1 + 384);
  v5 = *v4;
  v3[5] = *v4;
  v3[6] = v4 & 0xFFFFFFFFFFFFLL | 0x1155000000000000;
  v5();
  sub_1A957B8E8();

  return sub_1A94D12CC;
}

void sub_1A94D12CC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[4];
  if (a2)
  {
    v8 = sub_1A93F48E0(**a1, v3);
    (v6)(v8);
    v2[2] = v4;
    v2[3] = v3;
    sub_1A957B8F8();

    sub_1A9450A78(*v2, v2[1]);
  }

  else
  {
    v6();
    v2[2] = v4;
    v2[3] = v3;
    sub_1A957B8F8();
  }

  free(v2);
}

uint64_t sub_1A94D1370()
{
  v133 = sub_1A957B2E8();
  v132 = *(v133 - 8);
  v1 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133, v2);
  v130 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v131 = &v128 - v7;
  v136 = sub_1A957B308();
  v135 = *(v136 - 8);
  v8 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136, v9);
  v137 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1A957B188();
  v11 = *(v150 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v150, v13);
  v129 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v134 = &v128 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v153 = &v128 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v128 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v140 = &v128 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v139 = &v128 - v30;
  v31 = sub_1A937829C(&qword_1EB3880F0, &qword_1A9595A38);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v147 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v146 = &v128 - v38;
  v39 = (*(*v0 + 312))(v37);
  v40 = 0;
  v41 = *(v39 + 64);
  v138 = v39 + 64;
  v141 = v39;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v41;
  v45 = (v42 + 63) >> 6;
  v152 = (v11 + 16);
  v148 = v11;
  v149 = (v11 + 32);
  v145 = (v11 + 8);
  v46 = MEMORY[0x1E69E7CC8];
  v144 = xmmword_1A9587160;
  v142 = v45;
  v143 = v25;
  while (v44)
  {
    v151 = v46;
    v50 = v40;
LABEL_16:
    v53 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v54 = v141;
    v55 = v148;
    v56 = *(v148 + 72) * (v53 | (v50 << 6));
    v57 = *(v148 + 16);
    v58 = v139;
    v59 = v150;
    v57(v139, *(v141 + 48) + v56, v150);
    v60 = *(v54 + 56) + v56;
    v61 = v140;
    v57(v140, v60, v59);
    v62 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
    v63 = *(v62 + 48);
    v64 = *(v55 + 32);
    v65 = v147;
    v64(v147, v58, v59);
    v64(&v65[v63], v61, v59);
    (*(*(v62 - 8) + 56))(v65, 0, 1, v62);
    v52 = v50;
    v66 = v65;
    v46 = v151;
LABEL_17:
    v67 = v146;
    sub_1A94D3B54(v66, v146);
    v68 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
    if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
    {

      v100 = [objc_opt_self() sharedPreferences];
      v101 = [v100 languageCode];

      if (v101)
      {
        v102 = sub_1A957C0F8();
        v104 = v103;

        v105 = v150;
        sub_1A957B1B8();
        v106 = v130;
        sub_1A957B2F8();
        v107 = v131;
        sub_1A957B2B8();
        (*(v132 + 8))(v106, v133);
        if ((*(v148 + 48))(v107, 1, v105) == 1)
        {
          v108 = v105;
          sub_1A937B960(v107, &qword_1EB386A68, &qword_1A9587F40);
          v109 = v134;
          goto LABEL_33;
        }

        v111 = sub_1A957B148();
        v113 = v112;
        v108 = v105;
        (*v145)(v107, v105);
        v109 = v134;
        if (v111 == 6649209 && v113 == 0xE300000000000000)
        {

          goto LABEL_44;
        }

        v114 = sub_1A957D3E8();

        if (v114)
        {
LABEL_44:

          goto LABEL_45;
        }

LABEL_33:
        if (v102 == 0x4B482D687ALL && v104 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0 || v102 == 0x4B485F687ALL && v104 == 0xE500000000000000)
        {
          goto LABEL_44;
        }

        v110 = sub_1A957D3E8();

        if (v110)
        {
LABEL_45:
          sub_1A957B178();
          v115 = v129;
          sub_1A957B178();
          if (v46[2] && (v116 = sub_1A93AB008(v115), (v117 & 1) != 0))
          {
            v118 = v46;
            v119 = *(v46[7] + 8 * v116);
            v120 = *v145;

            v120(v115, v108);
          }

          else
          {
            v118 = v46;
            v120 = *v145;
            (*v145)(v115, v108);
            v119 = MEMORY[0x1E69E7CC0];
          }

          sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
          v121 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping() - 8);
          v122 = *(v121 + 72);
          v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
          v124 = swift_allocObject();
          *(v124 + 16) = v144;
          sub_1A957B178();
          swift_storeEnumTagMultiPayload();
          v154 = v119;
          sub_1A93ABEB4(v124);
          v125 = v154;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v154 = v118;
          sub_1A94D323C(v125, v109, isUniquelyReferenced_nonNull_native);
          v120(v109, v108);
          v46 = v154;
        }

        (*(v135 + 8))(v137, v136);
      }

      return v46;
    }

    v151 = v52;
    v69 = *(v68 + 48);
    v70 = v150;
    v71 = *v149;
    v72 = v143;
    (*v149)(v143, v67 + v69, v150);
    v73 = v153;
    v71(v153, v67, v70);
    sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
    v74 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping() - 8);
    v75 = *(v74 + 72);
    v76 = v46;
    v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v144;
    v79 = *v152;
    v80 = v72;
    v81 = v72;
    v82 = v70;
    (*v152)(v78 + v77, v81, v70);
    swift_storeEnumTagMultiPayload();
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v76;
    v85 = sub_1A93AB008(v73);
    v86 = v76[2];
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_53;
    }

    v89 = v84;
    if (v76[3] >= v88)
    {
      if (v83)
      {
        v46 = v154;
        if (v84)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A94D3648();
        v46 = v154;
        if (v89)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A94D2AE8(v88, v83);
      v90 = sub_1A93AB008(v153);
      if ((v89 & 1) != (v91 & 1))
      {
        goto LABEL_55;
      }

      v85 = v90;
      v46 = v154;
      if (v89)
      {
LABEL_4:
        v47 = v46[7];
        v48 = *(v47 + 8 * v85);
        *(v47 + 8 * v85) = v78;

        v49 = *v145;
        (*v145)(v153, v82);
        v49(v80, v82);
        goto LABEL_5;
      }
    }

    v46[(v85 >> 6) + 8] |= 1 << v85;
    v92 = v148;
    v93 = v153;
    v79(v46[6] + *(v148 + 72) * v85, v153, v82);
    *(v46[7] + 8 * v85) = v78;
    v94 = *(v92 + 8);
    v94(v93, v82);
    v94(v80, v82);
    v95 = v46[2];
    v96 = __OFADD__(v95, 1);
    v97 = v95 + 1;
    if (v96)
    {
      goto LABEL_54;
    }

    v46[2] = v97;
LABEL_5:
    v40 = v151;
    v45 = v142;
  }

  if (v45 <= v40 + 1)
  {
    v51 = v40 + 1;
  }

  else
  {
    v51 = v45;
  }

  v52 = (v51 - 1);
  while (1)
  {
    v50 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v50 >= v45)
    {
      v98 = sub_1A937829C(&qword_1EB3880F8, &unk_1A9595A40);
      v99 = v147;
      (*(*(v98 - 8) + 56))(v147, 1, 1, v98);
      v66 = v99;
      v44 = 0;
      goto LABEL_17;
    }

    v44 = *(v138 + 8 * v50);
    v40 = (v40 + 1);
    if (v44)
    {
      v151 = v46;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A94D2050()
{
  v1 = (*(*v0 + 200))();
  v34 = sub_1A937829C(&qword_1EB388100, &qword_1A9595A50);
  v35 = sub_1A94D3BC4(&qword_1EB388108, &qword_1EB388100, &qword_1A9595A50);
  *&v33 = v1;
  sub_1A93F0F10(&v33, v31);
  v2 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v2;
  v4 = v32;
  v5 = sub_1A9396054(v31, v32);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_1A94D3C18(*v8, 0xD000000000000013, 0x80000001A95C45B0, isUniquelyReferenced_nonNull_native, &v30, &qword_1EB388100, &qword_1A9595A50, &qword_1EB388108);
  v10 = sub_1A9378138(v31);
  v11 = v30;
  v12 = (*(*v0 + 296))(v10);
  v34 = sub_1A937829C(&qword_1EB388110, &qword_1A9595A58);
  v35 = sub_1A94D3BC4(&qword_1EB388118, &qword_1EB388110, &qword_1A9595A58);
  *&v33 = v12;
  sub_1A93F0F10(&v33, v31);
  LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
  v30 = v11;
  v13 = v32;
  v14 = sub_1A9396054(v31, v32);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v14);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_1A94D3C18(*v17, 0xD00000000000001DLL, 0x80000001A95C45D0, v12, &v30, &qword_1EB388110, &qword_1A9595A58, &qword_1EB388118);
  v19 = sub_1A9378138(v31);
  v20 = v30;
  v21 = (*(*v0 + 384))(v19);
  v34 = sub_1A937829C(&qword_1EB388120, &qword_1A9595A60);
  v35 = sub_1A94D3BC4(&qword_1EB388128, &qword_1EB388120, &qword_1A9595A60);
  *&v33 = v21;
  sub_1A93F0F10(&v33, v31);
  LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
  v30 = v20;
  v22 = v32;
  v23 = sub_1A9396054(v31, v32);
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23, v23);
  v26 = (&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_1A94D3C18(*v26, 0x676F6C6174616324, 0xEE00726576726553, v21, &v30, &qword_1EB388120, &qword_1A9595A60, &qword_1EB388128);
  sub_1A9378138(v31);
  return v30;
}

void *TTSSettings.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  sub_1A9378138(v0 + 10);
  return v0;
}

uint64_t TTSSettings.__deallocating_deinit()
{
  TTSSettings.deinit();

  return swift_deallocClassInstance();
}

void *sub_1A94D2578()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  v0[4] = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v0[7] = v3;
  v4 = sub_1A957B9B8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[8] = sub_1A957B9A8();
  v7 = sub_1A957B998();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[9] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

unint64_t sub_1A94D2644()
{
  result = qword_1EB3A0400[0];
  if (!qword_1EB3A0400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0400);
  }

  return result;
}

unint64_t sub_1A94D2768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_1A937A490(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A94D34C0();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    v15 = *v14;
    v16 = *(v14 + 8);
    LODWORD(v14) = *(v14 + 16);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v14;
    result = sub_1A94D2EC8(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1A94D2818(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 24 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v40 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
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
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v40;
      ++*(v8 + 16);
      v5 = v38;
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

uint64_t sub_1A94D2AE8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
  v44 = a2;
  result = sub_1A957D118();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_1A94D48F0(&qword_1EB386498, 255, MEMORY[0x1E6969610]);
      result = sub_1A957C058();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_1A94D2EC8(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v14 = sub_1A957D548();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A94D3098(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A937A490(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A94D2818(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1A937A490(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A94D34C0();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = v26[7] + 24 * v15;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  v32 = v26[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v33;
}

uint64_t sub_1A94D323C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A957B188();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_1A93AB008(a2);
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
      sub_1A94D3648();
      goto LABEL_7;
    }

    sub_1A94D2AE8(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_1A93AB008(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_1A94D3408(v16, v13, a1, v22);
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
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_1A94D3408(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A957B188();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
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

void *sub_1A94D34C0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388140, &qword_1A9595D70);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LODWORD(v22) = *(v22 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v23;
        *(v26 + 8) = v24;
        *(v26 + 16) = v22;
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

char *sub_1A94D3648()
{
  v1 = v0;
  v35 = sub_1A957B188();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
  v5 = *v0;
  v6 = sub_1A957D108();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
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

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

uint64_t sub_1A94D38C8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 216))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94D3910()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9382328;

  return sub_1A94D027C(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94D39A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = (*(**(v0 + 16) + 232))(v6);
  sub_1A94D2768(v1, v2, v7);

  v4(v6, 0);
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  return sub_1A957C748();
}

uint64_t sub_1A94D3AAC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 312))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94D3B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3880F0, &qword_1A9595A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A94D3BC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A94D3C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7, unint64_t *a8)
{
  v16 = sub_1A937829C(a6, a7);
  v38 = v16;
  v36 = a8;
  v39 = sub_1A94D3BC4(a8, a6, a7);
  *&v37 = a1;
  v17 = *a5;
  v19 = sub_1A937A490(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a4 & 1) != 0)
  {
LABEL_7:
    v25 = *a5;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_1A9378138(v26);
      return sub_1A93F0F10(&v37, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v22, a4 & 1);
  v28 = *a5;
  v29 = sub_1A937A490(a2, a3);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v19 = v29;
  v25 = *a5;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = sub_1A9396054(&v37, v16);
  v32 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v31);
  v34 = (&v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  sub_1A94D43AC(v19, a2, a3, *v34, v25, a6, a7, v36);

  return sub_1A9378138(&v37);
}

__n128 sub_1A94D41E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A94D41FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1A94D4244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}