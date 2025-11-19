uint64_t sub_100011830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819047270;
  }

  else
  {
    v3 = 0x73736572706D6F63;
  }

  if (v2)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819047270;
  }

  else
  {
    v5 = 0x73736572706D6F63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100037558();
  }

  return v8 & 1;
}

Swift::Int sub_1000118D4()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100011954()
{
  sub_1000370A8();
}

Swift::Int sub_1000119C0()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100011A3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100045040;
  v8._object = v3;
  v5 = sub_100037508(v4, v8);

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

void sub_100011A9C(uint64_t *a1@<X8>)
{
  v2 = 1819047270;
  if (!*v1)
  {
    v2 = 0x73736572706D6F63;
  }

  v3 = 0xEA00000000006465;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100011AD8(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v5 = result;
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_1000373C8();
      v8 = sub_1000373C8();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > result)
      {
        if (v7 > a2)
        {
          v3 = *(v6 + 32 + 8 * result);
          v8 = *(v6 + 32 + 8 * a2);

LABEL_7:
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_10001AB7C(v6);
            v9 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v9) = 0;
          }

          v10 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v8;

          if ((v6 & 0x8000000000000000) == 0 && !v9)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          result = sub_10001AB7C(v6);
          v6 = result;
          v10 = result & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v10 + 16) > a2)
            {
              *(v10 + 8 * a2 + 32) = v3;

              *v2 = v6;
              return result;
            }

LABEL_24:
            __break(1u);
            return result;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100011C18(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 48);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100011D28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 96);
  if (v6 <= 0x10 && ((1 << v6) & 0x1F000) == 0 && ((1 << v6) & 0xF0) != 0)
  {

    return 0;
  }

  v8 = sub_100037558();

  if (v8)
  {
    return 0;
  }

  v9 = *(v5 + 96);
  if (v9 <= 0x10 && ((1 << v9) & 0x1F000) == 0 && ((1 << v9) & 0xF0) != 0)
  {

    return 1;
  }

  v10 = sub_100037558();

  if (v10)
  {
    return 1;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v11 = sub_1000373C8();
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a3 + 32);
  }

  v12 = sub_100032584(v4, v11);

  if (v12)
  {
    return 1;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v13 = sub_1000373C8();
  }

  else
  {
    v13 = *(a3 + 32);
  }

  v14 = sub_100032584(v5, v13);

  if (v14)
  {
    return 0;
  }

  return *(v5 + 16) < *(v4 + 16);
}

uint64_t sub_100011FB4(uint64_t result, int a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if (result == 2)
  {
    goto LABEL_9;
  }

  if (result != 3)
  {
    if (result == 4)
    {
      v59 = -a3;
      goto LABEL_6;
    }

    v5 = -a3;
LABEL_9:
    v59 = 0.0;
    if (a5 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  v59 = a3;
LABEL_6:
  v5 = 0.0;
  if (a5 < 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  if ((a5 & 0x4000000000000000) == 0)
  {
    v7 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_32:
  v55 = result;
  v56 = a2;
  v57 = sub_1000374A8();
  a2 = v56;
  v7 = v57;
  result = v55;
LABEL_12:
  v58 = a2;
  if (!v7)
  {
LABEL_23:
    v28 = [objc_opt_self() mainScreen];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v60.origin.x = v30;
    v60.origin.y = v32;
    v60.size.width = v34;
    v60.size.height = v36;
    CGRectGetHeight(v60);
    return v58 & 0xFFFFFF00;
  }

  if (v7 >= 1)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = sub_1000373C8();
        v11 = *(v9 + 136);
        v10 = *(v9 + 144);
        v12 = *(v9 + 56);
        v13 = *(v9 + 64);
        v14 = *(v9 + 72);
        v15 = *(v9 + 80);
        v16 = *(v9 + 88);
        v17 = *(v9 + 96);
        v19 = *(v9 + 104);
        v18 = *(v9 + 112);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (&_swiftEmptyArrayStorage >> 62)
        {
          v21 = sub_1000374A8();
        }

        else
        {
          v21 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = v59 + v11;
        v23 = v5 + v10;
        type metadata accessor for RhizomeLayoutSpec();
        v24 = swift_allocObject();
        *(v24 + 16) = 0u;
        *(v24 + 32) = 0u;
        *(v24 + 48) = 0;
        swift_unknownObjectWeakInit();
        *(v24 + 56) = v12;
        *(v24 + 64) = v13;
        *(v24 + 136) = v22;
        *(v24 + 144) = v23;
        *(v24 + 72) = v14;
        *(v24 + 80) = v15;
        *(v24 + 88) = v16;
        *(v24 + 104) = v19;
        swift_unknownObjectWeakAssign();
        v25 = v14;
        v26 = v15;
        v27 = v16;

        *(v24 + 96) = v17;
        *(v24 + 120) = v21;
        *(v24 + 128) = 256;
        *(v24 + 112) = v18;
        *(v24 + 16) = v12 * v13;
        *(v24 + 24) = v22 - v12 * 0.5;
        *(v24 + 32) = v23 - v13 * 0.5;
        *(v24 + 40) = v12;
        *(v24 + 48) = v13;

        sub_1000370E8();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        ++v8;
        sub_100037148();

        swift_unknownObjectRelease();
      }

      while (v7 != v8);
    }

    else
    {
      v37 = a5 + 32;
      do
      {
        v39 = *(*v37 + 136);
        v38 = *(*v37 + 144);
        v40 = *(*v37 + 56);
        v41 = *(*v37 + 64);
        v43 = *(*v37 + 72);
        v42 = *(*v37 + 80);
        v44 = *(*v37 + 88);
        v45 = *(*v37 + 96);
        v47 = *(*v37 + 104);
        v46 = *(*v37 + 112);
        v48 = swift_unknownObjectWeakLoadStrong();
        if (&_swiftEmptyArrayStorage >> 62)
        {
          v49 = sub_1000374A8();
        }

        else
        {
          v49 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = v5 + v38;
        type metadata accessor for RhizomeLayoutSpec();
        v51 = swift_allocObject();
        *(v51 + 16) = 0u;
        *(v51 + 32) = 0u;
        *(v51 + 48) = 0;
        swift_unknownObjectWeakInit();
        *(v51 + 56) = v40;
        *(v51 + 64) = v41;
        *(v51 + 136) = v59 + v39;
        *(v51 + 144) = v50;
        *(v51 + 72) = v43;
        *(v51 + 80) = v42;
        *(v51 + 88) = v44;
        *(v51 + 104) = v47;
        swift_unknownObjectWeakAssign();

        v52 = v43;
        v53 = v42;
        v54 = v44;

        *(v51 + 96) = v45;
        *(v51 + 120) = v49;
        *(v51 + 128) = 256;
        *(v51 + 112) = v46;
        *(v51 + 16) = v40 * v41;
        *(v51 + 24) = v59 + v39 - v40 * 0.5;
        *(v51 + 32) = v50 - v41 * 0.5;
        *(v51 + 40) = v40;
        *(v51 + 48) = v41;

        sub_1000370E8();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        sub_100037148();

        v37 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_100012450(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v78 = &_swiftEmptyArrayStorage;

  v6 = a4;
  v77 = sub_10001A91C(a4);
  sub_100018114(&v77);
  v7 = v77;
  v8 = v77 < 0 || (v77 & 0x4000000000000000) != 0;
  if (!v8)
  {
    v9 = *(v77 + 16);
    v10 = -v9;
    if (!__OFSUB__(0, v9))
    {
      goto LABEL_6;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v9 = sub_1000374A8();
  v10 = -v9;
  if (__OFSUB__(0, v9))
  {
    goto LABEL_60;
  }

LABEL_6:
  if ((v10 + 1) >= 2)
  {
    v11 = v9 - 2;
    if (__OFSUB__(v9, 2))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v9 < v11)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v8)
    {
LABEL_9:
      v12 = sub_1000374A8();
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v11 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v12 = *(v7 + 16);
LABEL_14:
  if (v12 < v11)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v11 < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v8)
  {
    v13 = sub_1000374A8();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (v13 < v9)
  {
    goto LABEL_63;
  }

  if (v9 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if ((v7 & 0xC000000000000001) == 0 || v11 == v9)
  {

LABEL_28:

    if (v8)
    {
      sub_1000374B8();
      v17 = v16;
      v11 = v18;
      v20 = v19;
    }

    else
    {
      v17 = v7 + 32;
      v20 = (2 * v9) | 1;
    }

    v74 = sub_10001B1A0(v17, v11, v20);
    swift_unknownObjectRelease();
    v21 = v6;
    if (!(v6 >> 62))
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
      v73 = a2;
      if (!v22)
      {
LABEL_57:

        v62 = [objc_opt_self() mainScreen];
        [v62 bounds];
        v64 = v63;
        v66 = v65;
        v68 = v67;
        v70 = v69;

        v79.origin.x = v64;
        v79.origin.y = v66;
        v79.size.width = v68;
        v79.size.height = v70;
        CGRectGetHeight(v79);
        return v73 & 0xFFFFFF00;
      }

      if (v22 >= 1)
      {
        v23 = 0;
        v75 = v21 & 0xC000000000000001;
        v24 = &_swiftEmptyArrayStorage;
        v76 = v21;
        do
        {
          if (v75)
          {
            v25 = sub_1000373C8();
          }

          else
          {
            v25 = *(v21 + 8 * v23 + 32);
          }

          v26 = *(v25 + 144);
          v27 = v24 >> 62;
          if (v26 <= 0.0)
          {
            v47 = *(v25 + 56);
            v48 = *(v25 + 64);
            v49 = *(v25 + 136);
            v51 = *(v25 + 72);
            v50 = *(v25 + 80);
            v52 = *(v25 + 88);
            v53 = *(v25 + 96);
            v54 = *(v25 + 104);
            v55 = *(v25 + 112);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (v27)
            {
              v57 = sub_1000374A8();
            }

            else
            {
              v57 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            type metadata accessor for RhizomeLayoutSpec();
            v58 = swift_allocObject();
            *(v58 + 16) = 0u;
            *(v58 + 32) = 0u;
            *(v58 + 48) = 0;
            swift_unknownObjectWeakInit();
            *(v58 + 56) = v47;
            *(v58 + 64) = v48;
            *(v58 + 136) = v49;
            *(v58 + 144) = v26;
            *(v58 + 72) = v51;
            *(v58 + 80) = v50;
            *(v58 + 88) = v52;
            *(v58 + 104) = v54;
            swift_unknownObjectWeakAssign();
            v59 = v51;
            v60 = v50;
            v61 = v52;

            *(v58 + 96) = v53;
            *(v58 + 120) = v57;
            *(v58 + 128) = 256;
            *(v58 + 112) = v55;
            *(v58 + 16) = v47 * v48;
            *(v58 + 24) = v49 - v47 * 0.5;
            *(v58 + 32) = v26 - v48 * 0.5;
            *(v58 + 40) = v47;
            *(v58 + 48) = v48;
          }

          else
          {
            if (sub_100012B3C(v25, v74))
            {
              v28 = 0.75;
            }

            else
            {
              v28 = 0.55;
            }

            v30 = *(v25 + 136);
            v29 = *(v25 + 144);
            v31 = *(v25 + 56);
            v32 = *(v25 + 64);
            v33 = *(v25 + 72);
            v34 = *(v25 + 80);
            v35 = *(v25 + 88);
            v36 = *(v25 + 96);
            v37 = *(v25 + 104);
            v38 = swift_unknownObjectWeakLoadStrong();
            if (v27)
            {
              v39 = sub_1000374A8();
            }

            else
            {
              v39 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v40 = qword_10004AE38;
            v41 = v33;
            v42 = v34;
            v43 = v35;
            if (v40 != -1)
            {
              swift_once();
            }

            v44 = v29 * v28;
            v45 = qword_10004D310;
            type metadata accessor for RhizomeLayoutSpec();
            v46 = swift_allocObject();
            *(v46 + 16) = 0u;
            *(v46 + 32) = 0u;
            *(v46 + 48) = 0;
            swift_unknownObjectWeakInit();
            *(v46 + 56) = v31;
            *(v46 + 64) = v32;
            *(v46 + 136) = v30;
            *(v46 + 144) = v44;
            *(v46 + 72) = v41;
            *(v46 + 80) = v42;
            *(v46 + 88) = v43;
            *(v46 + 104) = v37;
            swift_unknownObjectWeakAssign();

            *(v46 + 96) = v36;
            *(v46 + 120) = v39;
            *(v46 + 128) = 256;
            *(v46 + 112) = v45;
            *(v46 + 16) = v31 * v32;
            *(v46 + 24) = v30 - v31 * 0.5;
            *(v46 + 32) = v44 - v32 * 0.5;
            *(v46 + 40) = v31;
            *(v46 + 48) = v32;
          }

          sub_1000370E8();
          if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100037128();
          }

          sub_100037148();
          ++v23;

          v24 = v78;
          v21 = v76;
        }

        while (v22 != v23);
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_67;
    }

LABEL_65:
    v72 = sub_1000374A8();
    v21 = v6;
    v22 = v72;
    goto LABEL_33;
  }

  if (v11 < v9)
  {
    type metadata accessor for RhizomeLayoutSpec();

    v14 = v11;
    do
    {
      v15 = v14 + 1;
      sub_1000373B8(v14);
      v14 = v15;
    }

    while (v9 != v15);
    goto LABEL_28;
  }

LABEL_70:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100012A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000375A8();
  sub_1000370A8();
  v6 = sub_1000375E8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100037558() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100012B3C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_100037318();

    return v4 & 1;
  }

  if (*(a2 + 16))
  {
    sub_1000375A8();
    sub_1000320B0();
    v6 = sub_1000375E8();
    v7 = a2 + 56;
    v8 = -1 << *(a2 + 32);
    v9 = v6 & ~v8;
    if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v28 = ~v8;
      while (1)
      {
        v13 = *(*(a2 + 48) + 8 * v9);
        v14 = *(v13 + 56);
        v15 = *(v13 + 64);

        v31.width = v14;
        v31.height = v15;
        v32.width = v11;
        v32.height = v12;
        if (!CGSizeEqualToSize(v31, v32) || !CGPointEqualToPoint(*(v13 + 136), *(a1 + 136)))
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 72);
        v17 = *(v13 + 80);
        v18 = *(v13 + 88);
        v20 = *(a1 + 72);
        v19 = *(a1 + 80);
        v29 = *(a1 + 88);
        sub_1000201F4(0, &qword_10004B320);
        v21 = v16;
        v30 = v17;
        v22 = v18;
        v23 = v20;
        v24 = v19;
        v25 = v29;
        if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
        {
          break;
        }

        v26 = sub_100037258();

        v10 = v28;
        v7 = a2 + 56;
        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }

        v27 = *(v13 + 96);

        if (v27 == *(a1 + 96))
        {
          return 1;
        }

LABEL_15:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      v10 = v28;
      v7 = a2 + 56;
LABEL_14:

      goto LABEL_15;
    }
  }

  return 0;
}

void sub_100012D8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v4 = sub_1000374A8();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ++v6;
      v7 = *(sub_1000373C8() + 120);
      swift_unknownObjectRelease();
      if (v5 <= v7)
      {
        v5 = v7;
      }
    }

    while (v4 != v6);
    return;
  }

  if (v4 == 1)
  {
    v8 = 0;
    v9 = 0;
LABEL_22:
    v14 = v4 - v9;
    v15 = (a3 + 8 * v9 + 32);
    do
    {
      v16 = *v15++;
      v17 = *(v16 + 120);
      if (v8 <= v17)
      {
        v8 = v17;
      }

      --v14;
    }

    while (v14);
    return;
  }

  v10 = 0;
  v11 = 0;
  v9 = v4 & 0x7FFFFFFFFFFFFFFELL;
  v12 = a3 + 40;
  v13 = v4 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    if (v10 <= *(*(v12 - 8) + 120))
    {
      v10 = *(*(v12 - 8) + 120);
    }

    if (v11 <= *(*v12 + 120))
    {
      v11 = *(*v12 + 120);
    }

    v12 += 16;
    v13 -= 2;
  }

  while (v13);
  if (v10 <= v11)
  {
    v8 = v11;
  }

  else
  {
    v8 = v10;
  }

  if (v4 != v9)
  {
    goto LABEL_22;
  }
}

char *sub_100012EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B378);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100012FC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B3A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000130E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000131E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B3B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1000132DC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002590(&qword_10004B390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_100013350(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002590(&qword_10004B370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1000133D8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000133F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_100013450(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_100013488()
{
  v1 = v0;
  sub_100002590(&qword_10004AF40);
  v2 = *v0;
  v3 = sub_100037358();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1000135C8()
{
  v1 = v0;
  sub_100002590(&qword_10004B380);
  v2 = *v0;
  v3 = sub_100037358();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_100013724()
{
  v1 = v0;
  sub_100002590(&qword_10004B358);
  v2 = *v0;
  v3 = sub_100037358();
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

id sub_100013874()
{
  v1 = v0;
  sub_100002590(&qword_10004B3D0);
  v2 = *v0;
  v3 = sub_100037358();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1000139C4()
{
  v1 = v0;
  v2 = *v0;
  sub_100002590(&qword_10004B380);
  result = sub_100037368();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1000375A8();

      sub_1000370A8();
      result = sub_1000375E8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_100013BFC()
{
  v1 = *v0;
  sub_100002590(&qword_10004B358);
  result = sub_100037368();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    for (i = result + 56; v7; ++*(v3 + 16))
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v13 = *(*(v1 + 48) + 8 * (v10 | (v4 << 6)));
      sub_1000375A8();

      sub_1000320B0();
      sub_1000375E8();
      result = sub_1000372C8();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 48) + 8 * result) = v13;
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v12 = *(v1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_100013DA4()
{
  v1 = v0;
  v2 = *v0;
  sub_100002590(&qword_10004B3D0);
  result = sub_100037368();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100037248(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100013FB8()
{
  v1 = v0;
  v2 = *v0;
  sub_100002590(&qword_10004B380);
  result = sub_100037368();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000375A8();
      sub_1000370A8();
      result = sub_1000375E8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100014218()
{
  v1 = v0;
  v2 = *v0;
  sub_100002590(&qword_10004B358);
  result = sub_100037368();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    for (i = result + 56; v9; ++*(v4 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1000375A8();
      sub_1000320B0();
      sub_1000375E8();
      result = sub_1000372C8();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v4 + 48) + 8 * result) = v15;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v16 = 1 << *(v2 + 32);
    if (v16 >= 64)
    {
      bzero((v2 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v16;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000143F8()
{
  v1 = v0;
  v2 = *v0;
  sub_100002590(&qword_10004B3D0);
  result = sub_100037368();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100037248(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void *sub_100014620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002590(&qword_10004B358);
    v2 = sub_100037378();
    v6 = v2;
    sub_1000372D8();
    if (sub_100037308())
    {
      type metadata accessor for RhizomeLayoutSpec();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100014218();
        }

        v2 = v6;
        sub_1000375A8();
        sub_1000320B0();
        sub_1000375E8();
        v3 = sub_1000372C8();
        *(v6 + 56 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v6 + 48) + 8 * v3) = v5;
        ++*(v6 + 16);
      }

      while (sub_100037308());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_1000147A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002590(&qword_10004B3D0);
    v2 = sub_100037378();
    v14 = v2;
    sub_1000372D8();
    if (sub_100037308())
    {
      sub_1000201F4(0, &qword_10004B3C0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1000143F8();
        }

        v2 = v14;
        result = sub_100037248(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_100037308());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100014998(uint64_t a1, uint64_t a2)
{
  sub_1000375A8();
  sub_1000320B0();
  sub_1000375E8();
  result = sub_1000372C8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100014A3C(uint64_t a1, void *a2)
{
  sub_100037248(a2[5]);
  result = sub_1000372C8();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_100014AC0(void *a1, int64_t a2, char a3)
{
  result = sub_100014BF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014AE0(char *a1, int64_t a2, char a3)
{
  result = sub_100014D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014B00(char *a1, int64_t a2, char a3)
{
  result = sub_100014F50(a1, a2, a3, *v3, &qword_10004B3B0);
  *v3 = result;
  return result;
}

char *sub_100014B30(char *a1, int64_t a2, char a3)
{
  result = sub_100014E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014B50(char *a1, int64_t a2, char a3)
{
  result = sub_10001503C(a1, a2, a3, *v3, &qword_10004B3F8);
  *v3 = result;
  return result;
}

char *sub_100014B80(char *a1, int64_t a2, char a3)
{
  result = sub_10001503C(a1, a2, a3, *v3, &qword_10004B400);
  *v3 = result;
  return result;
}

char *sub_100014BB0(char *a1, int64_t a2, char a3)
{
  result = sub_100015138(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014BD0(char *a1, int64_t a2, char a3)
{
  result = sub_10001523C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014BF0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002590(&qword_10004B340);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100002590(&qword_10004B050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100014D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B388);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100014E30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B3A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100014F50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100002590(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_10001503C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100002590(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_100015138(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10001523C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002590(&qword_10004B408);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10001534C(unsigned __int8 a1)
{
  sub_1000375A8();
  sub_1000370A8();

  v2 = sub_1000375E8();

  return sub_100017238(a1, v2);
}

unint64_t sub_10001541C(uint64_t a1, uint64_t a2)
{
  sub_1000375A8();
  sub_1000370A8();
  v4 = sub_1000375E8();

  return sub_1000173D8(a1, a2, v4);
}

unint64_t sub_100015494(char a1)
{
  sub_1000375A8();
  sub_1000375B8(a1 & 1);
  v2 = sub_1000375E8();

  return sub_100017490(a1 & 1, v2);
}

unint64_t sub_100015500(double a1)
{
  v2 = sub_100037598();

  return sub_100017500(v2, a1);
}

unint64_t sub_10001554C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100037328(*(v2 + 40));

  return sub_100017568(a1, v4);
}

unint64_t sub_100015590(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100037248(*(v2 + 40));
  return sub_100017630(a1, v4, &qword_10004B700);
}

unint64_t sub_1000155E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100037248(*(v2 + 40));
  return sub_100017630(a1, v4, &qword_10004B3C0);
}

uint64_t sub_100015630(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B3B8);
  v31 = a2;
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1000375A8();
      sub_1000370A8();

      result = sub_1000375E8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100015910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B3E8);
  v35 = a2;
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 48 * v20;
      if (v35)
      {
        v23 = *v22;
        v36 = *(v22 + 1);
        v38 = *(v22 + 2);
        v37 = *(v22 + 8);
        v39 = *(v22 + 24);
        v24 = *(v22 + 40);
      }

      else
      {
        v25 = *v22;
        v26 = *(v22 + 32);
        *&v40[16] = *(v22 + 16);
        *&v40[32] = v26;
        v24 = *(&v26 + 1);
        v39 = *&v40[24];
        *v40 = v25;
        v37 = *&v40[8];
        v38 = BYTE2(v25);
        v36 = BYTE1(v25);
        v23 = v25;
        sub_100003E18(v40, v41);
      }

      sub_1000375A8();
      sub_1000370A8();

      result = sub_1000375E8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v23;
      *(v16 + 1) = v36;
      *(v16 + 2) = v38;
      *(v16 + 8) = v37;
      *(v16 + 24) = v39;
      *(v16 + 40) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100015C9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B3E0);
  v30 = a2;
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1000375A8();
      sub_1000375B8(v20);
      result = sub_1000375E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100015F2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B348);
  v33 = a2;
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000D3A0(v24, v34);
      }

      else
      {
        sub_10000CB18(v24, v34);
      }

      sub_1000375A8();
      sub_1000370A8();
      result = sub_1000375E8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000D3A0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000161E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B410);
  v35 = a2;
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000375A8();
      sub_1000370A8();
      result = sub_1000375E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100016488(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B730);
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_100037248(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000166F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100002590(&qword_10004B3D8);
  result = sub_1000374D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_100037248(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_100016954(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10001534C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100015630(v14, a3 & 1);
      v9 = sub_10001534C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_100037578();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1000176FC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

unint64_t sub_100016A9C(__int128 *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001534C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100015910(v14, a3 & 1);
      result = sub_10001534C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100037578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100017858();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 48 * result);
    v22 = *a1;
    v23 = a1[2];
    v21[1] = a1[1];
    v21[2] = v23;
    *v21 = v22;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * result;

  return sub_1000202A4(a1, v20);
}

unint64_t sub_100016BFC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_100015494(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100015C9C(v14, a3 & 1);
      result = sub_100015494(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_100037578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000179EC();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_100016D48(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001541C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100017B48();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100015F2C(v16, a4 & 1);
    v11 = sub_10001541C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_100037578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000039EC(v22);

    return sub_10000D3A0(a1, v22);
  }

  else
  {
    sub_1000171CC(v11, a2, a3, a1, v21);
  }
}

void sub_100016E98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001541C(a2, a3);
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
      sub_1000161E4(v16, a4 & 1);
      v11 = sub_10001541C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100037578();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100017CEC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_100017010(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015590(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100016488(v13, a3 & 1);
      v8 = sub_100015590(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1000201F4(0, &qword_10004B700);
        sub_100037578();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_100017E58();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

unint64_t sub_100017188(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1000171CC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000D3A0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_100017238(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x7267656C6464696DLL;
          v8 = 0xEC000000646E756FLL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_6;
          }

          goto LABEL_11;
        }

        v7 = 0x756F726765726F66;
      }

      else
      {
        v7 = 0x756F72676B636162;
      }

      v8 = 0xEA0000000000646ELL;
      v9 = a1;
      if (!a1)
      {
LABEL_6:
        v10 = 0xEA0000000000646ELL;
        if (v7 != 0x756F72676B636162)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_11:
      if (v9 == 1)
      {
        v11 = 0x7267656C6464696DLL;
      }

      else
      {
        v11 = 0x756F726765726F66;
      }

      if (v9 == 1)
      {
        v10 = 0xEC000000646E756FLL;
      }

      else
      {
        v10 = 0xEA0000000000646ELL;
      }

      if (v7 != v11)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v10)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100037558();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000173D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100037558())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100017490(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100017500(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100017568(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100020144(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100037338();
      sub_1000201A0(v8);
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

unint64_t sub_100017630(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1000201F4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_100037258();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_1000176FC()
{
  v1 = v0;
  sub_100002590(&qword_10004B3B8);
  v2 = *v0;
  v3 = sub_1000374C8();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_100017858()
{
  v1 = v0;
  sub_100002590(&qword_10004B3E8);
  v2 = *v0;
  v3 = sub_1000374C8();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 48 * v17);
        v21 = v19[1];
        v20 = v19[2];
        v26 = *v19;
        v27 = v21;
        v28 = v20;
        *(*(v4 + 48) + v17) = v18;
        v22 = (*(v4 + 56) + 48 * v17);
        v23 = v26;
        v24 = v28;
        v22[1] = v27;
        v22[2] = v24;
        *v22 = v23;
        result = sub_100003E18(&v26, &v25);
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

void *sub_1000179EC()
{
  v1 = v0;
  sub_100002590(&qword_10004B3E0);
  v2 = *v0;
  v3 = sub_1000374C8();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_100017B48()
{
  v1 = v0;
  sub_100002590(&qword_10004B348);
  v2 = *v0;
  v3 = sub_1000374C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_10000CB18(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000D3A0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_100017CEC()
{
  v1 = v0;
  sub_100002590(&qword_10004B410);
  v2 = *v0;
  v3 = sub_1000374C8();
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

id sub_100017E58()
{
  v1 = v0;
  sub_100002590(&qword_10004B730);
  v2 = *v0;
  v3 = sub_1000374C8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

id sub_100017FB8()
{
  v1 = v0;
  sub_100002590(&qword_10004B3D8);
  v2 = *v0;
  v3 = sub_1000374C8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
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

uint64_t sub_100018114(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001AB30(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_100037528(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 144) >= *(*v14 + 144))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for RhizomeLayoutSpec();
      v8 = sub_100037138();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_1000183B4(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_100037408();
}

uint64_t sub_100018264(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001AB30(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_100037528(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(*v14 + 16) >= *(v12 + 16))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for RhizomeLayoutSpec();
      v8 = sub_100037138();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100018B18(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_100037408();
}

uint64_t sub_1000183B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 144);
    v10 = *(*(*a3 + 8 * v6) + 144);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 144);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 144) >= *(*v26 + 144))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100012EC0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_100012EC0((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 144) >= *(*v85 + 144))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 144) < *(*v90 + 144))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100019AD0(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_100019A44(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
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
LABEL_144:
  __break(1u);
LABEL_145:
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
  result = sub_100019AD0(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_10001927C((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100019AD0(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_100019A44(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_100018B18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 16);
    v10 = *(*(*a3 + 8 * v6) + 16);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v10 >= v9)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v12 >= v13;
      ++v11;
      v12 = v13;
    }

    while ((((v10 < v9) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v10 >= v9)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(*v26 + 16) >= *(v24 + 16))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100012EC0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_100012EC0((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v85 + 16) >= *(*v77 + 16))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(*v90 + 16) < *(v94 + 16))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100019AD0(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_100019A44(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
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
LABEL_144:
  __break(1u);
LABEL_145:
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
  result = sub_100019AD0(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_100019480((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100019AD0(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_100019A44(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_10001927C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 144) < *(*v4 + 144))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 144) < *(*v17 + 144))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100019480(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 16) < *(*v6 + 16))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 16) < *(v21 + 16))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100019684(char *__dst, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;

      v18 = sub_100011D28(&v48, &v47, a5);
      if (v5)
      {

        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;

    v31 = sub_100011D28(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;

    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        goto LABEL_62;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      goto LABEL_62;
    }
  }

  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    goto LABEL_62;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

LABEL_62:

  return 1;
}

uint64_t sub_100019A44(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100019AD0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_100019AE4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100019B70(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  result = swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    return sub_100019B70(v6, a2, a3);
  }

  return result;
}

uint64_t sub_100019C14(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_1000375A8();
  sub_1000370A8();
  v8 = sub_1000375E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100037558() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10001A300(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100019D64(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v38 = v2;
    sub_1000375A8();
    sub_1000320B0();
    v10 = sub_1000375E8();
    v11 = v6 + 56;
    v12 = -1 << *(v6 + 32);
    v13 = v10 & ~v12;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *v38;

      sub_10001A480(v35, v13, isUniquelyReferenced_nonNull_native);
      *v38 = v44;
      *a1 = a2;
      return 1;
    }

    v14 = ~v12;
    v41 = v6 + 56;
    v42 = v6;
    v40 = ~v12;
    while (1)
    {
      v15 = *(*(v6 + 48) + 8 * v13);
      v16 = *(v15 + 56);
      v17 = *(v15 + 64);
      v18 = *(a2 + 56);
      v19 = *(a2 + 64);

      v45.width = v16;
      v45.height = v17;
      v46.width = v18;
      v46.height = v19;
      if (!CGSizeEqualToSize(v45, v46) || !CGPointEqualToPoint(*(v15 + 136), *(a2 + 136)))
      {
        goto LABEL_17;
      }

      v20 = *(v15 + 72);
      v21 = *(v15 + 80);
      v22 = *(v15 + 88);
      v23 = *(a2 + 72);
      v24 = *(a2 + 80);
      v25 = *(a2 + 88);
      sub_1000201F4(0, &qword_10004B320);
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
      {
        break;
      }

      v32 = sub_100037258();

      v11 = v41;
      v6 = v42;
      v14 = v40;
      if ((v32 & 1) == 0)
      {
        goto LABEL_17;
      }

      v33 = *(v15 + 96);

      if (v33 == *(a2 + 96))
      {

        *a1 = *(*(v42 + 48) + 8 * v13);

        return 0;
      }

LABEL_18:
      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v11 = v41;
    v6 = v42;
    v14 = v40;
LABEL_17:

    goto LABEL_18;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = sub_1000372F8();

  if (v8)
  {

    type metadata accessor for RhizomeLayoutSpec();
    swift_dynamicCast();
    result = 0;
    *a1 = v43;
    return result;
  }

  result = sub_1000372E8();
  if (!__OFADD__(result, 1))
  {
    v36 = sub_100014620(v7, result + 1);
    if (v36[3] <= v36[2])
    {
      sub_100014218();
    }

    sub_100014998(v37, v36);

    *v3 = v36;
    *a1 = a2;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001A0C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1000372F8();

    if (v9)
    {

      sub_1000201F4(0, &qword_10004B3C0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1000372E8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1000147A8(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_1000143F8();
    }

    v18 = v8;
    sub_100014A3C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1000201F4(0, &qword_10004B3C0);
  v11 = sub_100037248(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_10001A724(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100037258();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_10001A300(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100013FB8();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000135C8();
      goto LABEL_16;
    }

    sub_1000139C4();
  }

  v10 = *v4;
  sub_1000375A8();
  sub_1000370A8();
  result = sub_1000375E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100037558();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100037568();
  __break(1u);
  return result;
}

Swift::Int sub_10001A480(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100014218();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_100013724();
        goto LABEL_20;
      }

      sub_100013BFC();
    }

    v8 = *v3;
    sub_1000375A8();
    sub_1000320B0();
    result = sub_1000375E8();
    v9 = v8 + 56;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      type metadata accessor for RhizomeLayoutSpec();
      v36 = v8 + 56;
      v37 = v8;
      v35 = v11;
      do
      {
        v12 = *(*(v8 + 48) + 8 * a2);
        v13 = *(v12 + 56);
        v14 = *(v12 + 64);
        v15 = *(v5 + 56);
        v16 = *(v5 + 64);

        v39.width = v13;
        v39.height = v14;
        v40.width = v15;
        v40.height = v16;
        if (CGSizeEqualToSize(v39, v40) && CGPointEqualToPoint(*(v12 + 136), *(v5 + 136)))
        {
          v17 = *(v12 + 72);
          v18 = *(v12 + 80);
          v19 = *(v12 + 88);
          v21 = *(v5 + 72);
          v20 = *(v5 + 80);
          v38 = *(v5 + 88);
          sub_1000201F4(0, &qword_10004B320);
          v22 = v17;
          v23 = v18;
          v24 = v19;
          v25 = v21;
          v26 = v20;
          v27 = v38;
          if (sub_100037258() & 1) != 0 && (sub_100037258())
          {
            v28 = sub_100037258();

            v9 = v36;
            v8 = v37;
            v11 = v35;
            if (v28)
            {
              v29 = *(v12 + 96);

              if (v29 == *(v5 + 96))
              {
                goto LABEL_23;
              }

              goto LABEL_19;
            }
          }

          else
          {

            v9 = v36;
            v8 = v37;
            v11 = v35;
          }
        }

LABEL_19:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_20:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + 8 * a2) = v5;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
LABEL_23:
    result = sub_100037568();
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v33;
  }

  return result;
}

void sub_10001A724(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000143F8();
  }

  else
  {
    if (v7 > v6)
    {
      sub_100013874();
      goto LABEL_12;
    }

    sub_100013DA4();
  }

  v8 = *v3;
  v9 = sub_100037248(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000201F4(0, &qword_10004B3C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100037258();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100037568();
  __break(1u);
}

uint64_t (*sub_10001A894(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000373C8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10001A914;
  }

  __break(1u);
  return result;
}

void *sub_10001A91C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000374A8();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100013350(v3, 0);
  sub_10001A9B0(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001A9B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000374A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1000374A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001B2BC();
          for (i = 0; i != v6; ++i)
          {
            sub_100002590(&qword_10004B360);
            v9 = sub_10001A894(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RhizomeLayoutSpec();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AB7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000374A8();
  }

  return sub_1000373D8();
}

uint64_t sub_10001ABE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100037168();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100019C14(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10001AC78(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v2 = sub_10001541C(0xD000000000000019, 0x800000010003A8D0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10000CB18(*(a1 + 56) + 32 * v2, v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4._rawValue = &off_100045040;
  v5 = sub_100037508(v4, v41);

  if (v5 >= 2)
  {
    goto LABEL_13;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v6 = sub_10001541C(0xD000000000000019, 0x800000010003A8F0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_10000CB18(*(a1 + 56) + 32 * v6, v42);
  sub_100002590(&qword_10004B338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v8 = sub_10001541C(0xD000000000000013, 0x800000010003A910);
  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_10000CB18(*(a1 + 56) + 32 * v8, v42);
  if ((swift_dynamicCast() & 1) == 0 || (v10 = sub_1000312D4(v41._countAndFlagsBits, v41._object), v10 == 5))
  {

LABEL_13:

    return 0;
  }

  if (!*(a1 + 16) || (v12 = v10, v13 = sub_10001541C(0xD000000000000016, 0x800000010003A930), (v14 & 1) == 0))
  {
LABEL_19:

    goto LABEL_13;
  }

  sub_10000CB18(*(a1 + 56) + 32 * v13, v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v37 = v12;
  v42[0] = _swiftEmptyArrayStorage;
  v15 = *(v41._countAndFlagsBits + 16);
  if (v15)
  {
    v16 = (v41._countAndFlagsBits + 32);
    v40 = _swiftEmptyArrayStorage;
    v17 = &selRef_setPreferredProminentColor_;
    do
    {
      v24 = *v16;
      swift_bridgeObjectRetain_n();
      if (sub_10000D3B0(v24))
      {

        sub_1000370E8();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        sub_100037148();

        v23 = v42[0];
      }

      else
      {
        if (v17[439] != -1)
        {
          swift_once();
        }

        v25 = sub_100036F68();
        sub_100002684(v25, qword_10004D258);

        v26 = sub_100036F48();
        v27 = sub_1000371C8();

        if (os_log_type_enabled(v26, v27))
        {
          log = v26;
          v18 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v41._countAndFlagsBits = v38;
          *v18 = 136315138;
          v19 = sub_100037028();
          v21 = v20;

          v22 = sub_10000BEB8(v19, v21, &v41._countAndFlagsBits);

          *(v18 + 4) = v22;
          v17 = &selRef_setPreferredProminentColor_;
          _os_log_impl(&_mh_execute_header, log, v27, "Failed to decode layout spec with dictionary %s", v18, 0xCu);
          sub_1000039EC(v38);
        }

        else
        {
        }

        v23 = v40;
      }

      v40 = v23;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v28 = [objc_opt_self() mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v43.origin.x = v30;
  v43.origin.y = v32;
  v43.size.width = v34;
  v43.size.height = v36;
  CGRectGetHeight(v43);
  return v5 | (v37 << 8);
}

uint64_t sub_10001B1A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = result;
  type metadata accessor for RhizomeLayoutSpec();
  sub_10001B264();
  result = sub_100037168();
  v12 = result;
  v6 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (v5 + 8 * a2);
    while (v8)
    {
      v10 = *v9++;

      sub_100019D64(&v11, v10);

      --v8;
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_10001B264()
{
  result = qword_10004B350;
  if (!qword_10004B350)
  {
    type metadata accessor for RhizomeLayoutSpec();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B350);
  }

  return result;
}

unint64_t sub_10001B2BC()
{
  result = qword_10004B368;
  if (!qword_10004B368)
  {
    sub_1000023BC(&qword_10004B360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B368);
  }

  return result;
}

uint64_t sub_10001B320()
{
  for (i = 0; i != 17; ++i)
  {
    v1 = *(&off_1000450E0 + i + 32);
    if (v1 <= 0x10 && ((1 << v1) & 0x1F000) == 0 && ((1 << v1) & 0xF0) != 0)
    {
    }

    else
    {
      v2 = sub_100037558();

      if ((v2 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100014B00(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v4 = *(&_swiftEmptyArrayStorage + 2);
        v3 = *(&_swiftEmptyArrayStorage + 3);
        if (v4 >= v3 >> 1)
        {
          sub_100014B00((v3 > 1), v4 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v4 + 1;
        *(&_swiftEmptyArrayStorage + v4 + 32) = v1;
      }
    }
  }

  v5 = *(&_swiftEmptyArrayStorage + 2);
  if (v5)
  {
    v6 = sub_100019AE4(v5);
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *(&_swiftEmptyArrayStorage + 2))
    {
      v7 = *(&_swiftEmptyArrayStorage + v6 + 32);

      return v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001B510(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000201F4(0, &qword_10004B3C0);
    sub_10002023C();
    result = sub_100037168();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_1000373C8();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10001A0C8(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_1000374A8();
  }

  v5 = result;
  v4 = sub_1000374A8();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10001B650(uint64_t result, double a2)
{
  if (qword_10004ADE0 != -1)
  {
    v6 = a2;
    result = swift_once();
    a2 = v6;
  }

  v2 = *&qword_10004D2B8;
  if (qword_10004ADF8 != -1)
  {
    v7 = a2;
    result = swift_once();
    a2 = v7;
  }

  if (*&qword_10004D2D0 < 0.0)
  {
    __break(1u);
    __break(1u);
  }

  else
  {
    v3 = a2 * 0.5;
    v4 = v3 - v2;
    v5 = -10.0 - v3;
    result = sub_100019B70(result, 0.0, *&qword_10004D2D0);
    if (v5 >= v4)
    {
      return sub_100019B70(result, v4, v5);
    }
  }

  return result;
}

uint64_t sub_10001B740(__int16 a1, uint64_t a2, id a3, double a4)
{
  v8 = objc_opt_self();
  p_align = &stru_100048FE8.align;
  v10 = [v8 mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v47.origin.x = v12;
  v47.origin.y = v14;
  v47.size.width = v16;
  v47.size.height = v18;
  v19 = CGRectGetWidth(v47) * 0.25;
  v20 = [v8 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v48.origin.x = v22;
  v48.origin.y = v24;
  v48.size.width = v26;
  v48.size.height = v28;
  v30 = CGRectGetWidth(v48) * 0.75;
  if (v19 > v30)
  {
    __break(1u);
  }

  else
  {
    sub_100019B70(v29, v19, v30);
    v19 = v31;
    LOBYTE(v20) = sub_10001B320();
    v32 = sub_100035A88(v20, a3, a1);
    v34 = v33;
    v36 = v35;
    v37 = qword_10004AE38;
    a3 = v32;
    v10 = v34;
    p_align = v36;
    if (v37 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v38 = qword_10004D310;
  sub_100006024(0, v20 | (a1 << 8), a3, v10, p_align, v46, *&qword_10004D310);
  if (v46[1])
  {
    v39 = *&v46[7];
    v40 = *&v46[8];
    sub_10000FE6C(v46);
  }

  else
  {
    v39 = 0.0;
    v40 = 0.0;
  }

  v41 = v40 * 0.5 + a4;
  sub_10000FBE8(v20, 0.0, 0.0);
  v43 = v42;

  type metadata accessor for RhizomeLayoutSpec();
  v44 = swift_allocObject();
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 56) = v39;
  *(v44 + 64) = v40;
  *(v44 + 136) = v19;
  *(v44 + 144) = v41;
  *(v44 + 72) = a3;
  *(v44 + 80) = v10;
  *(v44 + 88) = p_align;
  *(v44 + 104) = v43;
  swift_unknownObjectWeakAssign();
  *(v44 + 96) = v20;
  *(v44 + 120) = a2;
  *(v44 + 128) = 1;
  *(v44 + 112) = v38;
  *(v44 + 16) = v39 * v40;
  *(v44 + 24) = v19 - v39 * 0.5;
  *(v44 + 32) = v41 - v40 * 0.5;
  *(v44 + 40) = v39;
  *(v44 + 48) = v40;
  return v44;
}

uint64_t sub_10001B9D8(char a1, double a2, double a3)
{
  result = sub_100019AE4(2uLL);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_10004AE00 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
  }

  a3 = *&qword_10004D2D8;
  v7 = 0.0;
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (qword_10004ADF8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v8 = *&qword_10004D2D0 - a2 * 0.25;
    v9 = a2 * 0.25 + *&qword_10004D2D0;
    if (v8 > v9)
    {
      __break(1u);
LABEL_8:
      v7 = a3 * -0.5 + -30.0;
      a3 = a3 * -0.5 + -20.0;
      if (result)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = a2 * -0.25;
      v9 = a2 * 0.25;
      if (a2 * -0.25 > a2 * 0.25)
      {
        break;
      }
    }

    v10 = sub_100019B70(result, v8, v9);
    a2 = v11;
    if (v7 <= a3)
    {
      return sub_100019B70(v10, v7, a3);
    }

    __break(1u);
LABEL_13:
    result = swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BB1C(__int16 a1, uint64_t a2, id a3)
{
  v9 = sub_100019AE4(4uLL);
  if (v9 > 3)
  {
    __break(1u);
  }

  else
  {
    v3 = *(&off_100045140 + v9 + 32);
    v10 = sub_100035A88(*(&off_100045140 + v9 + 32), a3, a1);
    v12 = v11;
    v14 = v13;
    v15 = qword_10004AE38;
    a3 = v10;
    v4 = v12;
    v5 = v14;
    if (v15 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v16 = qword_10004D310;
  sub_100006024(0, v3 | (a1 << 8), a3, v4, v5, v31, *&qword_10004D310);
  if (v31[1])
  {
    v17 = *&v31[7];
    v18 = *&v31[8];
    sub_10000FE6C(v31);
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
  }

  sub_10001B9D8(1, v17, v18);
  v20 = v19;
  v22 = v21;
  sub_10000FBE8(v3, v19, v21);
  v24 = v23;
  if (qword_10004ADC0 != -1)
  {
    swift_once();
  }

  v25 = sub_100036F68();
  sub_100002684(v25, qword_10004D270);
  v26 = sub_100036F48();
  v27 = sub_1000371D8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134219008;
    *(v28 + 4) = v3;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v20;
    *(v28 + 22) = 2048;
    *(v28 + 24) = v22;
    *(v28 + 32) = 2048;
    *(v28 + 34) = v17;
    *(v28 + 42) = 2048;
    *(v28 + 44) = v18;
    _os_log_impl(&_mh_execute_header, v26, v27, "Generating new birds of paradise flower %ld, position x: %f y: %f and size h: %f w: %f", v28, 0x34u);
  }

  type metadata accessor for RhizomeLayoutSpec();
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 56) = v17;
  *(v29 + 64) = v18;
  *(v29 + 136) = v20;
  *(v29 + 144) = v22;
  *(v29 + 72) = a3;
  *(v29 + 80) = v4;
  *(v29 + 88) = v5;
  *(v29 + 104) = v24;
  swift_unknownObjectWeakAssign();
  *(v29 + 96) = v3;
  *(v29 + 120) = a2;
  *(v29 + 128) = 0;
  *(v29 + 112) = v16;
  *(v29 + 16) = v17 * v18;
  *(v29 + 24) = v20 - v17 * 0.5;
  *(v29 + 32) = v22 - v18 * 0.5;
  *(v29 + 40) = v17;
  *(v29 + 48) = v18;
  return v29;
}

void sub_10001BDE4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v11 = a5 * 0.5;
  v12 = a5 * 0.5 + CGRectGetMinX(*&a1);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v13 = CGRectGetMaxX(v19) - v11;
  if (v13 < v12)
  {
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    v12 = CGRectGetMidX(v20) + -1.0;
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v13 = CGRectGetMidX(v21) + 1.0;
  }

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v14 = a6 * 0.5;
  v15 = a6 * 0.5 + CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v17 = CGRectGetMaxY(v23) - v14;
  if (v17 < v15)
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    v15 = CGRectGetMidY(v24) + -1.0;
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v17 = CGRectGetMidY(v25) + 1.0;
  }

  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_100019B70(v16, v12, v13);
    if (v15 <= v17)
    {
      sub_100019B70(v18, v15, v17);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10001BF48(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*(a1 + 24));
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  v13 = MinX - CGRectGetMinX(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  MaxX = CGRectGetMaxX(v40);
  v15 = MaxX - CGRectGetMaxX(*(a1 + 24));
  MinY = CGRectGetMinY(*(a1 + 24));
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  v17 = MinY - CGRectGetMinY(v41);
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  MaxY = CGRectGetMaxY(v42);
  v19 = MaxY - CGRectGetMaxY(*(a1 + 24));
  sub_100002590(&qword_10004B398);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100039180;
  *(inited + 32) = v13;
  *(inited + 40) = 0;
  *(inited + 48) = v15;
  *(inited + 56) = 1;
  *(inited + 64) = v17;
  *(inited + 72) = 2;
  *(inited + 80) = v19;
  *(inited + 88) = 3;
  v21 = sub_100034ADC(inited);
  swift_setDeallocating();
  result = sub_100011C18(v21);
  if (v23)
  {
    goto LABEL_46;
  }

  if (*(v21 + 16) && (v24 = sub_100015500(*&result), (v25 & 1) != 0))
  {
    v26 = *(*(v21 + 56) + v24);
  }

  else
  {
    v26 = 8;
  }

  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = *(a2 + 56);
  v30 = *(a2 + 64);
  if (v27 > v29)
  {
    v31 = *(a1 + 56);
  }

  else
  {
    v31 = *(a2 + 56);
  }

  if (v28 > v30)
  {
    v32 = *(a1 + 64);
  }

  else
  {
    v32 = *(a2 + 64);
  }

  if (v29 < v27)
  {
    v27 = *(a2 + 56);
  }

  v33 = v27 * 0.5 + -5.0;
  if (v33 > 1.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  if (v30 >= v28)
  {
    v35 = *(a1 + 64);
  }

  else
  {
    v35 = *(a2 + 64);
  }

  v36 = v35 * 0.5 + -5.0;
  if (v36 > 1.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 1.0;
  }

  if (v34 < 0.0)
  {
    __break(1u);
    goto LABEL_40;
  }

  result = sub_100019B70(result, 0.0, v34);
  if (v37 < 0.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_100019B70(result, 0.0, v37);
  if (v26 <= 1)
  {
    if (!v26)
    {
      if (v32 * 0.5 >= 0.0)
      {
        return sub_100019B70(result, -(v32 * 0.5), v32 * 0.5);
      }

      goto LABEL_44;
    }

    if (v32 * 0.5 >= 0.0)
    {
      return sub_100019B70(result, -(v32 * 0.5), v32 * 0.5);
    }

    goto LABEL_42;
  }

  if (v26 != 3)
  {
    if (v26 == 2)
    {
      v38 = v31 * 0.5;
      if (v31 * 0.5 < 0.0)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      return sub_100019B70(result, -v38, v38);
    }

    if (v32 * 0.5 >= 0.0)
    {
      return sub_100019B70(result, -(v32 * 0.5), v32 * 0.5);
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v38 = v31 * 0.5;
  if (v31 * 0.5 >= 0.0)
  {
    return sub_100019B70(result, -v38, v38);
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *sub_10001C2B8(__int16 a1, char **a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v98 = &_swiftEmptyArrayStorage;
  MaxY = CGRectGetMaxY(*&a3);
  if (qword_10004AE00 != -1)
  {
    swift_once();
  }

  v92 = *&qword_10004D2D8;
  v107.origin.x = a7;
  v107.origin.y = a8;
  rect = a9;
  v107.size.width = a9;
  v20 = a10;
  v107.size.height = a10;
  v21 = CGRectGetMaxY(v107);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  if (CGRectGetMaxY(v108) >= v21)
  {
    if (qword_10004ADF8 != -1)
    {
      swift_once();
    }

    MinX = *&qword_10004D2D0 + 50.0;
  }

  else
  {
    if (qword_10004ADF8 != -1)
    {
      swift_once();
    }

    v22 = *&qword_10004D2D0;
    if (*&qword_10004D2D0 * 0.5 > a7)
    {
      v109.origin.x = a7;
      v109.origin.y = a8;
      v109.size.width = rect;
      v109.size.height = v20;
      MaxX = CGRectGetMaxX(v109);
      MinX = v22 + 50.0;
      goto LABEL_13;
    }

    v110.origin.x = a7;
    v110.origin.y = a8;
    v110.size.width = rect;
    v110.size.height = v20;
    MinX = CGRectGetMinX(v110);
  }

  MaxX = -50.0;
LABEL_13:
  v93 = a2;
  v25 = *a2;
  v26 = sub_10001B320();
  v27 = sub_100035A88(v26, v25, a1);
  v29 = v28;
  v31 = v30;
  v32 = qword_10004AE38;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  recta = MinX - MaxX;
  v36 = v92 - MaxY;
  v37 = *&qword_10004D310;
  sub_100006024(0, v26 | (a1 << 8), v33, v34, v35, v99, *&qword_10004D310);
  if (v100)
  {
    v38 = v101;
    v39 = v102;
    sub_10000FE6C(v99);
  }

  else
  {
    v38 = 0.0;
    v39 = 0.0;
  }

  sub_10001BDE4(MaxX, MaxY, recta, v36, v38, v39);
  v41 = v40;
  v43 = v42;
  sub_10000FBE8(v26, 0.0, 0.0);
  v45 = v44;

  type metadata accessor for RhizomeLayoutSpec();
  v46 = swift_allocObject();
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0u;
  *(v46 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 56) = v38;
  *(v46 + 64) = v39;
  *(v46 + 136) = v41;
  *(v46 + 144) = v43;
  *(v46 + 72) = v33;
  *(v46 + 80) = v34;
  *(v46 + 88) = v35;
  *(v46 + 104) = v45;
  swift_unknownObjectWeakAssign();
  *(v46 + 96) = v26;
  *(v46 + 120) = 0;
  *(v46 + 128) = 0;
  *(v46 + 112) = v37;
  *(v46 + 16) = v38 * v39;
  *(v46 + 24) = v41 - v38 * 0.5;
  *(v46 + 32) = v43 - v39 * 0.5;
  *(v46 + 40) = v38;
  *(v46 + 48) = v39;
  v47 = *(v46 + 80);
  v48 = *(v46 + 88);
  v49 = *(v46 + 72);
  v50 = v47;
  v51 = v48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_100012FC4(0, *(v25 + 2) + 1, 1, v25);
  }

  v52 = a1 << 8;
  v54 = *(v25 + 2);
  v53 = *(v25 + 3);
  if (v54 >= v53 >> 1)
  {
    v25 = sub_100012FC4((v53 > 1), v54 + 1, 1, v25);
  }

  *(v25 + 2) = v54 + 1;
  v55 = &v25[24 * v54];
  *(v55 + 4) = v49;
  *(v55 + 5) = v50;
  *(v55 + 6) = v51;
  v56 = sub_10001B320();
  v57 = sub_100035A88(v56, v25, a1);
  v59 = v58;
  v61 = v60;
  v62 = v57;
  v63 = v59;
  v64 = v61;
  sub_100006024(0, v52 | v56, v62, v63, v64, v103, v37);
  if (v104)
  {
    v65 = v105;
    v66 = v106;
    sub_10000FE6C(v103);
  }

  else
  {
    v65 = 0.0;
    v66 = 0.0;
  }

  sub_10001BDE4(MaxX, MaxY, recta, v36, v65, v66);
  v68 = v67;
  v70 = v69;
  sub_10000FBE8(v56, 0.0, 0.0);
  v72 = v71;

  v73 = swift_allocObject();
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v73 + 56) = v65;
  *(v73 + 64) = v66;
  *(v73 + 136) = v68;
  *(v73 + 144) = v70;
  *(v73 + 72) = v62;
  *(v73 + 80) = v63;
  *(v73 + 88) = v64;
  *(v73 + 104) = v72;
  swift_unknownObjectWeakAssign();
  *(v73 + 96) = v56;
  *(v73 + 120) = 1;
  *(v73 + 128) = 0;
  *(v73 + 112) = v37;
  *(v73 + 16) = v65 * v66;
  *(v73 + 24) = v68 - v65 * 0.5;
  *(v73 + 32) = v70 - v66 * 0.5;
  *(v73 + 40) = v65;
  *(v73 + 48) = v66;
  v74 = *(v73 + 80);
  v75 = *(v73 + 88);
  v76 = *(v73 + 72);
  v77 = v74;
  v78 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_100012FC4(0, *(v25 + 2) + 1, 1, v25);
  }

  v80 = *(v25 + 2);
  v79 = *(v25 + 3);
  if (v80 >= v79 >> 1)
  {
    v25 = sub_100012FC4((v79 > 1), v80 + 1, 1, v25);
  }

  *(v25 + 2) = v80 + 1;
  v81 = &v25[24 * v80];
  *(v81 + 4) = v76;
  *(v81 + 5) = v77;
  *(v81 + 6) = v78;
  *v93 = v25;
  sub_10001BF48(v46, v73, MaxX, MaxY, recta, v36);
  *(v73 + 136) = v82.f64[0];
  *(v73 + 144) = v83;
  v84 = *(v73 + 56);
  __asm { FMOV            V3.2D, #-0.5 }

  v82.f64[1] = v83;
  *(v73 + 24) = vaddq_f64(v82, vmulq_f64(v84, _Q3));
  *(v73 + 40) = v84;

  sub_1000370E8();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100037128();
  }

  sub_100037148();

  sub_1000370E8();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100037128();
  }

  sub_100037148();

  v97 = sub_10001A91C(v90);
  sub_100018264(&v97);

  return v97;
}

void sub_10001C9D8(void *a1, uint64_t *a2, uint64_t a3)
{
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 1)
  {
    return;
  }

  v10 = objc_opt_self();
  v11 = [v10 mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v127.origin.x = v13;
  v127.origin.y = v15;
  v127.size.width = v17;
  v127.size.height = v19;
  Width = CGRectGetWidth(v127);
  v21 = [v10 mainScreen];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v128.origin.x = v23;
  v128.origin.y = v25;
  v128.size.width = v27;
  v128.size.height = v29;
  Height = CGRectGetHeight(v128);
  v31 = (a3 - 3) < 2;
  v32 = Height < Width;
  if (v31 && v32)
  {
    v33 = Width;
  }

  else
  {
    v33 = Height;
  }

  if (!v31 || !v32)
  {
    Height = Width;
  }

  v116 = Height;
  v117 = v33;
  if (Height < 0.0)
  {
    goto LABEL_75;
  }

  if (qword_10004ADE0 != -1)
  {
    goto LABEL_76;
  }

LABEL_9:
  v114 = *&qword_10004D2B8;
  v34 = v117 + *&qword_10004D2B8;
  if (v117 > v117 + *&qword_10004D2B8)
  {
    __break(1u);
    goto LABEL_78;
  }

  v35 = sub_100019AE4(2uLL);
  v126[0] = &_swiftEmptyArrayStorage;
  v11 = (v35 + 3);
  if ((v35 + 3) < 0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v3 = &_swiftEmptyArrayStorage;
  v4 = a2 << 8;
  v115 = a1;
  if (v35 != -3)
  {
    if (!(*a1 >> 62))
    {
      v36 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }

    goto LABEL_83;
  }

LABEL_28:
  sub_10000BA28(v3);
  v34 = v116 + v114;
  if (v117 < 0.0 || v116 > v34)
  {
    goto LABEL_79;
  }

  v62 = sub_100019AE4(2uLL);
  v126[0] = &_swiftEmptyArrayStorage;
  v11 = (v62 + 3);
  if ((v62 + 3) < 0)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v3 = &_swiftEmptyArrayStorage;
  if (v62 != -3)
  {
    if (*v115 >> 62)
    {
      v63 = sub_1000374A8();
    }

    else
    {
      v63 = *((*v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    do
    {
      v64 = sub_10001B320();
      v65 = sub_100035598(v64, a2);
      v67 = v66;
      v69 = v68;
      v70 = qword_10004AE38;
      v71 = v65;
      a1 = v67;
      v72 = v69;
      if (v70 != -1)
      {
        swift_once();
      }

      v73 = qword_10004D310;
      v74 = sub_100006024(0, v4 | v64, v71, a1, v72, v122, *&qword_10004D310);
      if (v123)
      {
        v75 = v124;
        v76 = v125;
        v74 = sub_10000FE6C(v122);
      }

      else
      {
        v75 = 0.0;
        v76 = 0.0;
      }

      v77 = sub_100019B70(v74, v116, v34);
      v79 = v78;
      sub_100019B70(v77, 0.0, v117);
      v81 = v80;
      sub_10000FBE8(v64, 0.0, 0.0);
      v83 = v82;
      if (v3 >> 62)
      {
        v87 = sub_1000374A8();
        v85 = v63 + v87;
        if (__OFADD__(v63, v87))
        {
          goto LABEL_73;
        }
      }

      else
      {
        v84 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v85 = v63 + v84;
        if (__OFADD__(v63, v84))
        {
          goto LABEL_73;
        }
      }

      type metadata accessor for RhizomeLayoutSpec();
      v86 = swift_allocObject();
      *(v86 + 16) = 0u;
      *(v86 + 32) = 0u;
      *(v86 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v86 + 56) = v75;
      *(v86 + 64) = v76;
      *(v86 + 136) = v79;
      *(v86 + 144) = v81;
      *(v86 + 72) = v71;
      *(v86 + 80) = a1;
      *(v86 + 88) = v72;
      *(v86 + 104) = v83;
      swift_unknownObjectWeakAssign();
      *(v86 + 96) = v64;
      *(v86 + 120) = v85;
      *(v86 + 128) = 256;
      *(v86 + 112) = v73;
      *(v86 + 16) = v75 * v76;
      *(v86 + 24) = v79 - v75 * 0.5;
      *(v86 + 32) = v81 - v76 * 0.5;
      *(v86 + 40) = v75;
      *(v86 + 48) = v76;

      sub_1000370E8();
      if (*((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      v3 = v126[0];
      --v11;
    }

    while (v11);
  }

  sub_10000BA28(v3);
  if (v114 < 0.0)
  {
    goto LABEL_81;
  }

  v88 = sub_100019AE4(2uLL);
  v11 = (v88 + 3);
  if ((v88 + 3) < 0)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    v36 = sub_1000374A8();
    while (1)
    {
LABEL_14:
      v37 = sub_10001B320();
      v38 = sub_100035598(v37, a2);
      v40 = v39;
      v42 = v41;
      v43 = qword_10004AE38;
      v44 = v38;
      a1 = v40;
      v45 = v42;
      if (v43 != -1)
      {
        swift_once();
      }

      v46 = qword_10004D310;
      v47 = sub_100006024(0, v4 | v37, v44, a1, v45, v118, *&qword_10004D310);
      if (v119)
      {
        v48 = v120;
        v49 = v121;
        v47 = sub_10000FE6C(v118);
      }

      else
      {
        v48 = 0.0;
        v49 = 0.0;
      }

      v50 = sub_100019B70(v47, 0.0, v116);
      v52 = v51;
      sub_100019B70(v50, v117, v34);
      v54 = v53;
      sub_10000FBE8(v37, 0.0, 0.0);
      v56 = v55;
      if (v3 >> 62)
      {
        v60 = sub_1000374A8();
        v58 = v36 + v60;
        if (__OFADD__(v36, v60))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          swift_once();
          goto LABEL_9;
        }
      }

      else
      {
        v57 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v58 = v36 + v57;
        if (__OFADD__(v36, v57))
        {
          goto LABEL_72;
        }
      }

      type metadata accessor for RhizomeLayoutSpec();
      v59 = swift_allocObject();
      *(v59 + 16) = 0u;
      *(v59 + 32) = 0u;
      *(v59 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v59 + 56) = v48;
      *(v59 + 64) = v49;
      *(v59 + 136) = v52;
      *(v59 + 144) = v54;
      *(v59 + 72) = v44;
      *(v59 + 80) = a1;
      *(v59 + 88) = v45;
      *(v59 + 104) = v56;
      swift_unknownObjectWeakAssign();
      *(v59 + 96) = v37;
      *(v59 + 120) = v58;
      *(v59 + 128) = 256;
      *(v59 + 112) = v46;
      *(v59 + 16) = v48 * v49;
      *(v59 + 24) = v52 - v48 * 0.5;
      *(v59 + 32) = v54 - v49 * 0.5;
      *(v59 + 40) = v48;
      *(v59 + 48) = v49;

      sub_1000370E8();
      if (*((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      v3 = v126[0];
      if (!--v11)
      {
        goto LABEL_28;
      }
    }
  }

  if (v88 != -3)
  {
    if (*v115 >> 62)
    {
      v89 = sub_1000374A8();
    }

    else
    {
      v89 = *((*v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = &_swiftEmptyArrayStorage;
    do
    {
      v90 = sub_10001B320();
      v91 = sub_100035598(v90, a2);
      v93 = v92;
      v95 = v94;
      v96 = qword_10004AE38;
      v97 = v91;
      a1 = v93;
      v98 = v95;
      if (v96 != -1)
      {
        swift_once();
      }

      v99 = qword_10004D310;
      v100 = sub_100006024(0, v4 | v90, v97, a1, v98, v126, *&qword_10004D310);
      if (v126[1])
      {
        v102 = *&v126[7];
        v101 = *&v126[8];
        v100 = sub_10000FE6C(v126);
      }

      else
      {
        v102 = 0.0;
        v101 = 0.0;
      }

      v103 = sub_100019B70(v100, -v114, 0.0);
      v105 = v104;
      sub_100019B70(v103, 0.0, v117);
      v107 = v106;
      sub_10000FBE8(v90, 0.0, 0.0);
      v109 = v108;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        v113 = sub_1000374A8();
        v111 = v89 + v113;
        if (__OFADD__(v89, v113))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v110 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        v111 = v89 + v110;
        if (__OFADD__(v89, v110))
        {
          goto LABEL_74;
        }
      }

      type metadata accessor for RhizomeLayoutSpec();
      v112 = swift_allocObject();
      *(v112 + 16) = 0u;
      *(v112 + 32) = 0u;
      *(v112 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v112 + 56) = v102;
      *(v112 + 64) = v101;
      *(v112 + 136) = v105;
      *(v112 + 144) = v107;
      *(v112 + 72) = v97;
      *(v112 + 80) = a1;
      *(v112 + 88) = v98;
      *(v112 + 104) = v109;
      swift_unknownObjectWeakAssign();
      *(v112 + 96) = v90;
      *(v112 + 120) = v111;
      *(v112 + 128) = 256;
      *(v112 + 112) = v99;
      *(v112 + 16) = v102 * v101;
      *(v112 + 24) = v105 - v102 * 0.5;
      *(v112 + 32) = v107 - v101 * 0.5;
      *(v112 + 40) = v102;
      *(v112 + 48) = v101;

      sub_1000370E8();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      v3 = &_swiftEmptyArrayStorage;
      --v11;
    }

    while (v11);
  }

  sub_10000BA28(&_swiftEmptyArrayStorage);
}