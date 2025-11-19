Swift::Int sub_10003F384()
{
  Hasher.init(_seed:)();
  AssetPack.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003F3C0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10003F5F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003F6C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000422C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100039204(v11);
  return v7;
}

unint64_t sub_10003F6C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003F7CC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10003F7CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003F818(a1, a2);
  sub_10003F948(&off_10007A468);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003F818(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10003FA34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003FA34(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003F948(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003FAA8(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003FA34(uint64_t a1, uint64_t a2)
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

  sub_100038D78(&qword_1000899C8, &qword_10005A338);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003FAA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100038D78(&qword_1000899C8, &qword_10005A338);
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

uint64_t sub_10003FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100038D78(&qword_100089670, &unk_100059820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FC0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003FC1C()
{
  result = qword_1000897B8;
  if (!qword_1000897B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000897B8);
  }

  return result;
}

void *sub_10003FC70(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10003FCB4()
{
  result = qword_1000897C0;
  if (!qword_1000897C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000897C0);
  }

  return result;
}

uint64_t sub_10003FD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPack();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003FD6C()
{
  result = qword_1000897F8;
  if (!qword_1000897F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000897F8);
  }

  return result;
}

unint64_t sub_10003FDC0()
{
  result = qword_100089800;
  if (!qword_100089800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089800);
  }

  return result;
}

unint64_t sub_10003FE14()
{
  result = qword_100089808;
  if (!qword_100089808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089808);
  }

  return result;
}

unint64_t sub_10003FE68()
{
  result = qword_100089810;
  if (!qword_100089810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089810);
  }

  return result;
}

unint64_t sub_10003FEBC()
{
  result = qword_100089838;
  if (!qword_100089838)
  {
    sub_10003FF20(&qword_100089830, &qword_100059850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089838);
  }

  return result;
}

uint64_t sub_10003FF20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10003FF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10003FFCC()
{
  result = qword_100089860;
  if (!qword_100089860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089860);
  }

  return result;
}

unsigned __int8 *sub_100040020(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000405A4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000405A4()
{
  v0 = String.subscript.getter();
  v4 = sub_100040624(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100040624(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10003FA34(v9, 0);
  v12 = sub_10004077C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004077C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004099C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004099C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10004099C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t _s21backgroundassets_user9AssetPackV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for AssetPack();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  if (qword_100089550 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100038DC0(v11, qword_100089758);
  v12 = static os_log_type_t.debug.getter();
  sub_10003FD08(a1, v10);
  sub_10003FD08(a2, v8);
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = AssetPack.description.getter();
    v17 = v16;
    sub_100038E5C(v10);
    v18 = sub_10003F5F4(v15, v17, &v26);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = AssetPack.description.getter();
    v21 = v20;
    sub_100038E5C(v8);
    v22 = sub_10003F5F4(v19, v21, &v26);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v12, "== LHS: %{public}s RHS: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100038E5C(v8);
    sub_100038E5C(v10);
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v23 = 1;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v23 & 1;
}

unint64_t sub_100040C94()
{
  result = qword_100089868;
  if (!qword_100089868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089868);
  }

  return result;
}

unint64_t sub_100040CEC()
{
  result = qword_100089870;
  if (!qword_100089870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089870);
  }

  return result;
}

unint64_t sub_100040D44()
{
  result = qword_100089878;
  if (!qword_100089878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089878);
  }

  return result;
}

unint64_t sub_100040D9C()
{
  result = qword_100089880;
  if (!qword_100089880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089880);
  }

  return result;
}

uint64_t sub_100040E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100040EA0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for DownloadPolicy();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = type metadata accessor for AssetPackHost();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_100041020(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for DownloadPolicy();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = type metadata accessor for AssetPackHost();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_10004118C()
{
  sub_1000412A0(319, &qword_1000898F8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DownloadPolicy();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        sub_1000412A0(319, &unk_100089900);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AssetPackHost();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000412A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000412FC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100041324(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100041338(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100041380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100041414(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000414A4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.AppStoreCodingKeys.AttributesCodingKeys.DownloadPolicyCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetPack.LocalCacheCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100041964()
{
  result = qword_100089950;
  if (!qword_100089950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089950);
  }

  return result;
}

unint64_t sub_1000419BC()
{
  result = qword_100089958;
  if (!qword_100089958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089958);
  }

  return result;
}

unint64_t sub_100041A14()
{
  result = qword_100089960;
  if (!qword_100089960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089960);
  }

  return result;
}

unint64_t sub_100041A6C()
{
  result = qword_100089968;
  if (!qword_100089968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089968);
  }

  return result;
}

unint64_t sub_100041AC4()
{
  result = qword_100089970;
  if (!qword_100089970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089970);
  }

  return result;
}

unint64_t sub_100041B20()
{
  result = qword_100089978;
  if (!qword_100089978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089978);
  }

  return result;
}

unint64_t sub_100041B78()
{
  result = qword_100089980;
  if (!qword_100089980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089980);
  }

  return result;
}

unint64_t sub_100041BD0()
{
  result = qword_100089988;
  if (!qword_100089988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089988);
  }

  return result;
}

unint64_t sub_100041C28()
{
  result = qword_100089990;
  if (!qword_100089990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089990);
  }

  return result;
}

unint64_t sub_100041C80()
{
  result = qword_100089998;
  if (!qword_100089998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089998);
  }

  return result;
}

unint64_t sub_100041CD8()
{
  result = qword_1000899A0;
  if (!qword_1000899A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000899A0);
  }

  return result;
}

unint64_t sub_100041D30()
{
  result = qword_1000899A8;
  if (!qword_1000899A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000899A8);
  }

  return result;
}

unint64_t sub_100041D88()
{
  result = qword_1000899B0;
  if (!qword_1000899B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000899B0);
  }

  return result;
}

unint64_t sub_100041DE0()
{
  result = qword_1000899B8;
  if (!qword_1000899B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000899B8);
  }

  return result;
}

unint64_t sub_100041E38()
{
  result = qword_1000899C0;
  if (!qword_1000899C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000899C0);
  }

  return result;
}

uint64_t sub_100041E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100041EC4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007A490, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100041F10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10007A4F8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100041F5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100042074(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEC000000657A6953 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE007963696C6F50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000422C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100042348@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AssetPack();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  if (qword_100089568 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100038DC0(v16, qword_1000899F0);
    v17 = static os_log_type_t.debug.getter();

    v18 = Logger.logObject.getter();

    v19 = os_log_type_enabled(v18, v17);
    v33 = v8;
    v34 = a4;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10003F5F4(a1, a2, &v35);
      _os_log_impl(&_mh_execute_header, v18, v17, "Asset pack with ID: %{public}s", v20, 0xCu);
      sub_100039204(v21);
    }

    a4 = a3 + 56;
    v22 = 1 << *(a3 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    if (v24)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v8 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v8 >= v25)
      {

        v28 = 1;
        v29 = v34;
        return (*(v9 + 56))(v29, v28, 1, v33);
      }

      v24 = *(a4 + 8 * v8);
      ++v26;
      if (v24)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  while (1)
  {
    v8 = v26;
LABEL_11:
    sub_10003FD08(*(a3 + 48) + *(v9 + 72) * (__clz(__rbit64(v24)) | (v8 << 6)), v15);
    sub_100038DF8(v15, v13);
    v27 = *v13 == a1 && v13[1] == a2;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v24 &= v24 - 1;
    sub_100038E5C(v13);
    v26 = v8;
    if (!v24)
    {
      goto LABEL_8;
    }
  }

  v30 = v34;
  sub_100038DF8(v13, v34);
  v29 = v30;
  v28 = 0;
  return (*(v9 + 56))(v29, v28, 1, v33);
}

double AssetPackManifest.DecodingConfiguration.init(source:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000453B0(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_100042B0C()
{
  v0 = type metadata accessor for Logger();
  sub_100039304(v0, qword_1000899D0);
  sub_100038DC0(v0, qword_1000899D0);
  return Logger.init(subsystem:category:)();
}

void AssetPackManifest.DecodingConfiguration.init(appReviewDecodingHandler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100089558 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100038DC0(v6, qword_1000899D0);
  v7 = static os_log_type_t.debug.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    sub_100038D78(&qword_100089A08, &unk_10005A350);
    v12 = String.init<A>(describing:)();
    v14 = sub_10003F5F4(v12, v13, &v15);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v7, "Init App Review decoding handler: %{public}s", v9, 0xCu);
    sub_100039204(v10);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 3;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
}

Swift::Int sub_100042D60()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100042DCC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100042E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100042EB0(uint64_t a1)
{
  v2 = sub_1000471EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042EEC(uint64_t a1)
{
  v2 = sub_1000471EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042F28()
{
  if (*v0)
  {
    result = 0x70416D6F72467369;
  }

  else
  {
    result = 0x6361507465737361;
  }

  *v0;
  return result;
}

uint64_t sub_100042F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6361507465737361 && a2 == 0xEA0000000000736BLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x70416D6F72467369 && a2 == 0xEF77656976655270)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100043060(uint64_t a1)
{
  v2 = sub_100046DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004309C(uint64_t a1)
{
  v2 = sub_100046DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000430DC()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = JSONDecoder.init()();
  result = dispatch thunk of JSONDecoder.allowsJSON5.setter();
  qword_1000899E8 = v3;
  return result;
}

uint64_t sub_10004312C()
{
  v0 = type metadata accessor for Logger();
  sub_100039304(v0, qword_1000899F0);
  sub_100038DC0(v0, qword_1000899F0);
  return Logger.init(subsystem:category:)();
}

uint64_t AssetPackManifest.init(contentsOf:appGroupID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v57 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v51[-v12];
  if (qword_100089568 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100038DC0(v14, qword_1000899F0);
  v16 = static os_log_type_t.debug.getter();
  v17 = v8[2];
  v61 = a1;
  v55 = v17;
  v17(v13, a1, v7);

  v56 = v15;
  v18 = Logger.logObject.getter();

  v19 = os_log_type_enabled(v18, v16);
  v62 = v7;
  v59 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v53 = a3;
    v21 = v20;
    v54 = swift_slowAlloc();
    v63 = v54;
    *v21 = 136446466;
    sub_1000471A4(&qword_100089778, &type metadata accessor for URL);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v16;
    v24 = v23;
    v58 = v8[1];
    v58(v13, v7);
    v25 = sub_10003F5F4(v22, v24, &v63);
    v4 = v3;

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = v53;
    *(v21 + 14) = sub_10003F5F4(v60, v53, &v63);
    _os_log_impl(&_mh_execute_header, v18, v52, "Init contents of: %{public}s app group ID: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = a3;

    v58 = v8[1];
    v58(v13, v7);
  }

  v27 = v61;
  v28 = Data.init(contentsOf:options:)();
  if (v4)
  {
    v30 = v26;
    v33 = static os_log_type_t.error.getter();
    v34 = v57;
    v35 = v62;
    v55(v57, v27, v62);

    swift_errorRetain();
    v36 = Logger.logObject.getter();

    if (os_log_type_enabled(v36, v33))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v34;
      LODWORD(v55) = v33;
      v40 = v38;
      v56 = swift_slowAlloc();
      v63 = v56;
      *v37 = 136446722;
      sub_1000471A4(&qword_100089778, &type metadata accessor for URL);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v44 = v39;
      v45 = v58;
      v58(v44, v62);
      v46 = sub_10003F5F4(v41, v43, &v63);

      *(v37 + 4) = v46;
      *(v37 + 12) = 2082;
      v47 = sub_10003F5F4(v60, v30, &v63);

      *(v37 + 14) = v47;
      v48 = v45;
      *(v37 + 22) = 2114;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 24) = v49;
      *v40 = v49;
      _os_log_impl(&_mh_execute_header, v36, v55, "An asset-pack manifest couldn’t be created with the contents of “%{public}s” and the app group ID “%{public}s”: %{public}@", v37, 0x20u);
      sub_100039368(v40, &qword_100089698, &qword_1000596A8);
      v35 = v62;

      swift_arrayDestroy();

      v27 = v61;
    }

    else
    {

      v48 = v58;
      v58(v34, v35);
    }

    swift_willThrow();
    v48(v27, v35);
  }

  else
  {
    v31 = v28;
    v32 = v29;

    v27 = sub_100045970(v31, v32, v60, v26);
    sub_1000391A0(v31, v32);
    v58(v61, v62);
  }

  return v27;
}

uint64_t AssetPackManifest.init(from:appGroupID:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_100045970(a1, a2, a3, a4);
  if (v4)
  {
    return sub_1000391A0(a1, a2);
  }

  v9 = v7;
  sub_1000391A0(a1, a2);
  return v9;
}

uint64_t AssetPackManifest.init(from:configuration:)(uint64_t a1, uint64_t *a2)
{
  result = sub_100045E58(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t AssetPackManifest.encode(to:)(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v7) = a3;
  v10 = type metadata accessor for AssetPack();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100038D78(&qword_100089A10, &qword_10005A360);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v55 = v51 - v17;
  if (qword_100089568 != -1)
  {
LABEL_23:
    swift_once();
  }

  v58 = a2;
  v18 = type metadata accessor for Logger();
  v19 = sub_100038DC0(v18, qword_1000899F0);
  v20 = static os_log_type_t.debug.getter();
  sub_10003FF68(a1, &v59);
  v51[2] = v19;
  v21 = Logger.logObject.getter();
  v22 = os_log_type_enabled(v21, v20);
  v51[3] = a5;
  v53 = v15;
  v54 = v14;
  v52 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v63 = v24;
    *v23 = 136446210;
    v25 = v61;
    v26 = sub_10003FC70(&v59, v61);
    v51[1] = v51;
    v27 = *(*(v25 - 8) + 64);
    __chkstk_darwin(v26);
    (*(v29 + 16))(v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = String.init<A>(describing:)();
    v32 = v31;
    sub_100039204(&v59);
    v33 = sub_10003F5F4(v30, v32, &v63);

    *(v23 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v21, v20, "Encode to: %{public}s", v23, 0xCu);
    sub_100039204(v24);
  }

  else
  {

    sub_100039204(&v59);
  }

  v34 = *(a1 + 32);
  sub_10003FC70(a1, *(a1 + 24));
  sub_100046DF8();
  v7 = v55;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v63) = 0;
  a2 = v7;
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  a5 = v58;
  v14 = v58 + 56;
  v35 = 1 << *(v58 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  a1 = v36 & *(v58 + 56);
  v15 = (v35 + 63) >> 6;

  v37 = 0;
  if (a1)
  {
    while (1)
    {
      v38 = v37;
LABEL_12:
      sub_10003FD08(*(a5 + 48) + *(v56 + 72) * (__clz(__rbit64(a1)) | (v38 << 6)), v13);
      LODWORD(v7) = v62;
      a2 = sub_100046E4C(&v59, v61);
      sub_1000471A4(&qword_100089A20, type metadata accessor for AssetPack);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (v5)
      {
        break;
      }

      a1 &= a1 - 1;
      sub_100038E5C(v13);
      v37 = v38;
      a5 = v58;
      if (!a1)
      {
        goto LABEL_9;
      }
    }

    sub_100038E5C(v13);

    (*(v53 + 8))(v55, v54);
LABEL_17:
    sub_100039204(&v59);
    v41 = static os_log_type_t.error.getter();

    swift_errorRetain();
    v42 = Logger.logObject.getter();

    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63 = v45;
      *v43 = 136446466;
      v59 = 0;
      v60 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      v59 = 0xD000000000000024;
      v60 = 0x8000000100066870;
      sub_1000471A4(&qword_100089A28, type metadata accessor for AssetPack);
      v46._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v46);

      v47._countAndFlagsBits = 62;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48 = sub_10003F5F4(v59, v60, &v63);

      *(v43 + 4) = v48;
      *(v43 + 12) = 2114;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v49;
      *v44 = v49;
      _os_log_impl(&_mh_execute_header, v42, v41, "The asset-pack manifest “%{public}s” couldn’t be encoded: %{public}@", v43, 0x16u);
      sub_100039368(v44, &qword_100089698, &qword_1000596A8);

      sub_100039204(v45);
    }

    return swift_willThrow();
  }

  else
  {
    while (1)
    {
LABEL_9:
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v38 >= v15)
      {
        break;
      }

      a1 = *(v14 + 8 * v38);
      ++v37;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    LOBYTE(v63) = 1;
    v40 = v54;
    v39 = v55;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v5)
    {
      (*(v53 + 8))(v39, v40);
      goto LABEL_17;
    }

    (*(v53 + 8))(v39, v40);
    return sub_100039204(&v59);
  }
}

uint64_t sub_100043FF4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = a2[2];
  result = sub_100045E58(a1, v10);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v7 & 1;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_10004406C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0xD000000000000021;
  }

  _StringGuts.grow(_:)(45);

  v3._countAndFlagsBits = MBAManifestDataSource.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x75207369209D80E2;
  v4._object = 0xAF2E6E776F6E6B6ELL;
  String.append(_:)(v4);
  return 0x100000000000001CLL;
}

uint64_t sub_100044144(uint64_t a1, void *a2)
{
  v48 = a1;
  v4 = type metadata accessor for AssetPack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = (&v45 - v14);
  __chkstk_darwin(v13);
  v46 = (&v45 - v16);
  v47 = v2;
  v17 = *v2;
  v18 = *(*v2 + 40);
  Hasher.init(_seed:)();
  AssetPack.hash(into:)();
  v19 = Hasher._finalize()();
  v21 = v17 + 56;
  v22 = -1 << *(v17 + 32);
  v23 = v19 & ~v22;
  if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v53 = ~v22;
    v55 = *(v5 + 72);
    *&v20 = 136446466;
    v49 = v20;
    v51 = v17;
    v52 = a2;
    v50 = v17 + 56;
    while (1)
    {
      v24 = *(v17 + 48);
      v54 = v55 * v23;
      sub_10003FD08(v24 + v55 * v23, v15);
      if (qword_100089550 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100038DC0(v25, qword_100089758);
      v26 = static os_log_type_t.debug.getter();
      sub_10003FD08(v15, v12);
      sub_10003FD08(a2, v9);
      v27 = Logger.logObject.getter();
      if (os_log_type_enabled(v27, v26))
      {
        v28 = v9;
        v29 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v29 = v49;
        v30 = AssetPack.description.getter();
        v31 = v12;
        v33 = v32;
        sub_100038E5C(v31);
        v34 = sub_10003F5F4(v30, v33, v56);

        *(v29 + 4) = v34;
        *(v29 + 12) = 2082;
        v35 = AssetPack.description.getter();
        v37 = v36;
        sub_100038E5C(v28);
        v38 = sub_10003F5F4(v35, v37, v56);
        v12 = v31;
        a2 = v52;

        *(v29 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v27, v26, "== LHS: %{public}s RHS: %{public}s", v29, 0x16u);
        swift_arrayDestroy();
        v21 = v50;

        v9 = v28;
        v17 = v51;
      }

      else
      {

        sub_100038E5C(v9);
        sub_100038E5C(v12);
      }

      if (*v15 == *a2 && v15[1] == a2[1])
      {
        break;
      }

      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100038E5C(v15);
      if (v39)
      {
        goto LABEL_14;
      }

      v23 = (v23 + 1) & v53;
      if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_100038E5C(v15);
LABEL_14:
    sub_100038E5C(a2);
    sub_10003FD08(*(v17 + 48) + v54, v48);
    return 0;
  }

  else
  {
LABEL_12:
    v40 = v47;
    v41 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v46;
    sub_10003FD08(a2, v46);
    v56[0] = *v40;
    sub_100044994(v43, v23, isUniquelyReferenced_nonNull_native);
    *v40 = v56[0];
    sub_100038DF8(a2, v48);
    return 1;
  }
}

uint64_t sub_100044578(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetPack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100038D78(&qword_100089A70, &unk_10005A5F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v9 + 16))
  {
    v45 = v2;
    v14 = 0;
    v15 = (v9 + 56);
    v16 = 1 << *(v9 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    *&v12 = 136446210;
    v46 = v12;
    v47 = v8;
    v48 = v5;
    while (v18)
    {
      v27 = __clz(__rbit64(v18));
      v50 = (v18 - 1) & v18;
LABEL_18:
      v30 = *(v9 + 48);
      v49 = *(v5 + 72);
      sub_100038DF8(v30 + v49 * (v27 | (v14 << 6)), v8);
      v31 = *(v13 + 40);
      Hasher.init(_seed:)();
      if (qword_100089550 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100038DC0(v32, qword_100089758);
      v33 = static os_log_type_t.debug.getter();
      v34 = Logger.logObject.getter();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = v13;
        v37 = v9;
        v38 = swift_slowAlloc();
        v51 = v38;
        *v35 = v46;
        *(v35 + 4) = sub_10003F5F4(0x2972656873614828, 0xE800000000000000, &v51);
        _os_log_impl(&_mh_execute_header, v34, v33, "Hash into: %{public}s", v35, 0xCu);
        sub_100039204(v38);
        v9 = v37;
        v13 = v36;
        v5 = v48;

        v8 = v47;
      }

      v21 = *v8;
      v22 = v8[1];
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v13 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v20 + 8 * (v24 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v23) >> 6;
        while (++v25 != v40 || (v39 & 1) == 0)
        {
          v41 = v25 == v40;
          if (v25 == v40)
          {
            v25 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v25);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v25 << 6);
            goto LABEL_10;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v20 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_100038DF8(v8, *(v13 + 48) + v26 * v49);
      ++*(v13 + 16);
      v18 = v50;
    }

    v28 = v14;
    while (1)
    {
      v14 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v29 = v15[v14];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v50 = (v29 - 1) & v29;
        goto LABEL_18;
      }
    }

    v43 = 1 << *(v9 + 32);
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    v2 = v45;
    *(v9 + 16) = 0;
  }

  *v2 = v13;
  return result;
}

uint64_t sub_100044994(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for AssetPack();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v47 - v16);
  v50 = v3;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  if (v19 > v18 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    v48 = v15;
    v20 = v50;
    sub_100044578(v18 + 1);
  }

  else
  {
    if (v19 > v18)
    {
      sub_100044DE0();
      goto LABEL_19;
    }

    v48 = v15;
    v20 = v50;
    sub_100044FC4(v18 + 1);
  }

  v21 = *v20;
  v22 = *(*v20 + 40);
  Hasher.init(_seed:)();
  AssetPack.hash(into:)();
  v23 = Hasher._finalize()();
  v25 = v21 + 56;
  v26 = -1 << *(v21 + 32);
  a2 = v23 & ~v26;
  if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v56 = ~v26;
    v55 = *(v49 + 72);
    *&v24 = 136446466;
    v51 = v24;
    v53 = v21;
    v54 = a1;
    v52 = v21 + 56;
    do
    {
      sub_10003FD08(*(v21 + 48) + v55 * a2, v17);
      if (qword_100089550 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100038DC0(v27, qword_100089758);
      v28 = static os_log_type_t.debug.getter();
      sub_10003FD08(v17, v14);
      sub_10003FD08(a1, v11);
      v29 = Logger.logObject.getter();
      if (os_log_type_enabled(v29, v28))
      {
        v30 = swift_slowAlloc();
        v57[0] = swift_slowAlloc();
        *v30 = v51;
        v31 = AssetPack.description.getter();
        v32 = v14;
        v33 = v11;
        v35 = v34;
        sub_100038E5C(v32);
        v36 = sub_10003F5F4(v31, v35, v57);

        *(v30 + 4) = v36;
        *(v30 + 12) = 2082;
        v37 = AssetPack.description.getter();
        v39 = v38;
        sub_100038E5C(v33);
        v40 = sub_10003F5F4(v37, v39, v57);
        v11 = v33;
        v14 = v32;
        a1 = v54;

        *(v30 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v29, v28, "== LHS: %{public}s RHS: %{public}s", v30, 0x16u);
        swift_arrayDestroy();
        v25 = v52;

        v21 = v53;
      }

      else
      {

        sub_100038E5C(v11);
        sub_100038E5C(v14);
      }

      if (*v17 == *a1 && v17[1] == a1[1])
      {
        goto LABEL_22;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100038E5C(v17);
      if (v41)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v56;
    }

    while (((*(v25 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v42 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100038DF8(a1, *(v42 + 48) + *(v49 + 72) * a2);
  v44 = *(v42 + 16);
  v45 = __OFADD__(v44, 1);
  v46 = v44 + 1;
  if (!v45)
  {
    *(v42 + 16) = v46;
    return result;
  }

  __break(1u);
LABEL_22:
  sub_100038E5C(v17);
LABEL_23:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100044DE0()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPack();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038D78(&qword_100089A70, &unk_10005A5F0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_10003FD08(*(v7 + 48) + v22, v6);
        result = sub_100038DF8(v6, *(v9 + 48) + v22);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_100044FC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetPack();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100038D78(&qword_100089A70, &unk_10005A5F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v9 + 16))
  {
    v44 = v2;
    v14 = 0;
    v15 = v9 + 56;
    v16 = 1 << *(v9 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v20 = result + 56;
    *&v12 = 136446210;
    v45 = v12;
    v46 = result;
    v47 = v5;
    while (v18)
    {
      v27 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
LABEL_18:
      v30 = *(v9 + 48);
      v48 = *(v5 + 72);
      sub_10003FD08(v30 + v48 * (v27 | (v14 << 6)), v8);
      v31 = *(v13 + 40);
      Hasher.init(_seed:)();
      if (qword_100089550 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100038DC0(v32, qword_100089758);
      v33 = static os_log_type_t.debug.getter();
      v34 = Logger.logObject.getter();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = swift_slowAlloc();
        v36 = v8;
        v37 = v9;
        v38 = swift_slowAlloc();
        v50 = v38;
        *v35 = v45;
        *(v35 + 4) = sub_10003F5F4(0x2972656873614828, 0xE800000000000000, &v50);
        _os_log_impl(&_mh_execute_header, v34, v33, "Hash into: %{public}s", v35, 0xCu);
        sub_100039204(v38);
        v9 = v37;
        v8 = v36;
        v13 = v46;

        v5 = v47;
      }

      v21 = *v8;
      v22 = v8[1];
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v13 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v20 + 8 * (v24 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v23) >> 6;
        while (++v25 != v40 || (v39 & 1) == 0)
        {
          v41 = v25 == v40;
          if (v25 == v40)
          {
            v25 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v25);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v25 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_34;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v20 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v20 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_100038DF8(v8, *(v13 + 48) + v26 * v48);
      ++*(v13 + 16);
      v18 = v49;
    }

    v28 = v14;
    while (1)
    {
      v14 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v2 = v44;
        goto LABEL_32;
      }

      v29 = *(v15 + 8 * v14);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v49 = (v29 - 1) & v29;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v13;
  }

  return result;
}

void sub_1000453B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_100089558 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100038DC0(v4, qword_1000899D0);
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = MBAManifestDataSource.description.getter();
    v11 = sub_10003F5F4(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v6, v5, "Init source: %{public}s", v7, 0xCu);
    sub_100039204(v8);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = a1;
}

uint64_t sub_100045510()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100045560@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  result = v6(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t _s21backgroundassets_user17AssetPackManifestV11descriptionSSvg_0()
{
  _StringGuts.grow(_:)(39);

  type metadata accessor for AssetPack();
  sub_1000471A4(&qword_100089A28, type metadata accessor for AssetPack);
  v0._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0xD000000000000024;
}

void sub_100045674(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v10 = qword_100089558;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100038DC0(v11, qword_1000899D0);
    v12 = static os_log_type_t.debug.getter();

    v13 = Logger.logObject.getter();

    if (!os_log_type_enabled(v13, v12))
    {

      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446722;
    v15 = sub_10003F5F4(a1, a2, &v30);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2082;
    v16 = MBAManifestDataSource.description.getter();
    v18 = a4;
    v19 = a3;
    v20 = a1;
    v21 = sub_10003F5F4(v16, v17, &v30);

    *(v14 + 14) = v21;
    a1 = v20;
    a3 = v19;
    a4 = v18;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v13, v12, "Init app group ID: %{public}s source: %{public}s managed: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    goto LABEL_10;
  }

  if (qword_100089558 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100038DC0(v22, qword_1000899D0);
  v23 = static os_log_type_t.debug.getter();
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v23))
  {
    v24 = swift_slowAlloc();
    v29 = a1;
    v30 = swift_slowAlloc();
    v25 = v30;
    *v24 = 136446466;
    v26 = MBAManifestDataSource.description.getter();
    v28 = sub_10003F5F4(v26, v27, &v30);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v13, v23, "Init source: %{public}s managed: %{BOOL}d", v24, 0x12u);
    sub_100039204(v25);
    a1 = v29;
LABEL_10:
  }

LABEL_12:

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a4 & 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 24) = a3;
}

uint64_t sub_100045970(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_100089568 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100038DC0(v10, qword_1000899F0);
  v11 = static os_log_type_t.debug.getter();
  sub_10003AA58(a1, a2);

  v12 = Logger.logObject.getter();
  sub_1000391A0(a1, a2);

  v41 = a2;
  if (os_log_type_enabled(v12, v11))
  {
    v34 = v11;
    v13 = swift_slowAlloc();
    *&v36[0] = swift_slowAlloc();
    *v13 = 136446466;
    sub_10003AA58(a1, a2);
    v14 = Data.description.getter();
    v15 = a4;
    v16 = a3;
    v18 = v17;
    sub_1000391A0(a1, a2);
    v19 = sub_10003F5F4(v14, v18, v36);
    a3 = v16;
    a4 = v15;

    *(v13 + 4) = v19;
    v5 = v4;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_10003F5F4(a3, v15, v36);
    _os_log_impl(&_mh_execute_header, v12, v34, "Init from: %{public}s app group ID: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_100089560 != -1)
  {
    swift_once();
  }

  sub_100045674(a3, a4, 4, 0, v38);
  v20 = v39;
  v40[0] = v38[0];
  v36[0] = v38[0];
  v36[1] = v38[1];
  v36[2] = v39;
  sub_100039138();
  v21 = v41;
  dispatch thunk of JSONDecoder.decode<A>(_:from:configuration:)();
  if (v5)
  {
    sub_100039368(v40, &qword_100089670, &unk_100059820);
    sub_1000391F4(v20);
    v22 = static os_log_type_t.error.getter();
    sub_10003AA58(a1, v21);

    swift_errorRetain();
    v23 = Logger.logObject.getter();
    sub_1000391A0(a1, v21);

    if (os_log_type_enabled(v23, v22))
    {
      v33 = a3;
      v24 = swift_slowAlloc();
      v35 = v22;
      v25 = swift_slowAlloc();
      *&v36[0] = swift_slowAlloc();
      *v24 = 136446722;
      sub_10003AA58(a1, v21);
      v26 = Data.description.getter();
      v28 = v27;
      sub_1000391A0(a1, v21);
      v29 = sub_10003F5F4(v26, v28, v36);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v30 = sub_10003F5F4(v33, a4, v36);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2114;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v31;
      *v25 = v31;
      _os_log_impl(&_mh_execute_header, v23, v35, "An asset-pack manifest couldn’t be created from “%{public}s” with the app group ID “%{public}s”: %{public}@", v24, 0x20u);
      sub_100039368(v25, &qword_100089698, &qword_1000596A8);

      swift_arrayDestroy();
    }

    else
    {
    }

    return swift_willThrow();
  }

  else
  {
    sub_100039368(v40, &qword_100089670, &unk_100059820);
    sub_1000391F4(v20);

    return v37;
  }
}

uint64_t sub_100045E58(uint64_t a1, uint64_t *a2)
{
  v115 = a2;
  v104 = sub_100038D78(&qword_100089A48, &qword_10005A5E0);
  v102 = *(v104 - 8);
  v3 = *(v102 + 64);
  __chkstk_darwin(v104);
  v5 = &v97 - v4;
  v111 = type metadata accessor for AssetPack();
  v6 = *(*(v111 - 8) + 64);
  v7 = __chkstk_darwin(v111);
  v99 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v109 = (&v97 - v10);
  v11 = __chkstk_darwin(v9);
  v108 = &v97 - v12;
  __chkstk_darwin(v11);
  v98 = &v97 - v13;
  v101 = sub_100038D78(&qword_100089A50, &qword_10005A5E8);
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  __chkstk_darwin(v101);
  v105 = &v97 - v15;
  if (qword_100089568 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100038DC0(v16, qword_1000899F0);
  v18 = static os_log_type_t.debug.getter();
  v113 = a1;
  sub_10003FF68(a1, &v117);
  v19 = *v115;
  v20 = v115[1];
  v22 = v115[4];
  v21 = v115[5];

  sub_10003FC0C(v22);
  v23 = Logger.logObject.getter();
  v116 = v20;

  v114 = v22;
  sub_1000391F4(v22);
  LODWORD(v107) = v18;
  v24 = os_log_type_enabled(v23, v18);
  v106 = v5;
  v112 = v17;
  v103 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    *v25 = 136446466;
    v26 = *(&v118 + 1);
    v27 = sub_10003FC70(&v117, *(&v118 + 1));
    v28 = *(*(v26 - 8) + 64);
    __chkstk_darwin(v27);
    (*(v30 + 16))(&v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = v114;
    sub_100039204(&v117);
    v35 = sub_10003F5F4(v31, v33, v120);

    *(v25 + 4) = v35;
    *(v25 + 12) = 2082;

    v36 = sub_10003FC0C(v34);
    v37 = AssetPackManifest.DecodingConfiguration.description.getter(v36);
    v39 = v38;

    sub_1000391F4(v34);
    v40 = sub_10003F5F4(v37, v39, v120);

    *(v25 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v23, v107, "Init from: %{public}s configuration: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100039204(&v117);
  }

  v41 = v115[3];
  v42 = v113;
  if (v41 > 5)
  {
    v58 = static os_log_type_t.fault.getter();

    v59 = v114;
    sub_10003FC0C(v114);
    v60 = Logger.logObject.getter();

    sub_1000391F4(v59);
    if (os_log_type_enabled(v60, v58))
    {
      v61 = swift_slowAlloc();
      v110 = v21;
      v62 = v61;
      v63 = swift_slowAlloc();
      *&v117 = v63;
      *v62 = 136315138;
      v64 = MBAManifestDataSource.description.getter();
      v66 = sub_10003F5F4(v64, v65, &v117);

      *(v62 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v60, v58, "The manifest data source “%s” is unknown.", v62, 0xCu);
      sub_100039204(v63);

      v42 = v113;
    }

    sub_100047150();
    swift_allocError();
    *v67 = v41;
    *(v67 + 8) = 0;
    goto LABEL_32;
  }

  if (((1 << v41) & 0x34) == 0)
  {
    if (((1 << v41) & 3) != 0)
    {
      v48 = static os_log_type_t.info.getter();
      v49 = Logger.logObject.getter();
      if (os_log_type_enabled(v49, v48))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v49, v48, "Decoding an asset-pack manifest using an App Store (TestFlight) configuration…", v50, 2u);
      }

      v51 = v42[4];
      sub_10003FC70(v42, v42[3]);
      sub_1000471EC();
      v52 = v110;
      dispatch thunk of Decoder.container<A>(keyedBy:)();
      if (!v52)
      {
        KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
        v107 = &_swiftEmptySetSingleton;
        v122 = &_swiftEmptySetSingleton;
        sub_10003FC70(v120, v121);
        v91 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
        if ((v91 & 1) == 0)
        {
          v110 = v21;
          v92 = v98;
          do
          {
            v93 = *(v115 + 1);
            v117 = *v115;
            v118 = v93;
            v119 = *(v115 + 2);
            sub_100046E4C(v120, v121);
            sub_1000471A4(&qword_100089A60, type metadata accessor for AssetPack);
            UnkeyedDecodingContainer.decode<A>(_:configuration:)();
            v94 = v109;
            sub_10003FD08(v92, v109);
            v95 = v108;
            sub_100044144(v108, v94);
            sub_100038E5C(v95);
            sub_100038E5C(v92);
            sub_10003FC70(v120, v121);
          }

          while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
          v107 = v122;
        }

        (*(v100 + 8))(v105, v101);
        sub_100039204(v120);
        sub_1000391F4(v114);
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v53 = static os_log_type_t.info.getter();
    v54 = Logger.logObject.getter();
    if (os_log_type_enabled(v54, v53))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v54, v53, "Decoding an asset-pack manifest using an App Review configuration…", v55, 2u);
    }

    if (v114)
    {

      v56 = v110;
      v57 = v114(v42, v103, v116);
      if (!v56)
      {
        v107 = v57;
        v96 = v114;
        sub_1000391F4(v114);
        sub_1000391F4(v96);
LABEL_46:
        sub_100039204(v42);
        return v107;
      }

      sub_1000391F4(v114);
      goto LABEL_33;
    }

    sub_100047150();
    swift_allocError();
    *v75 = 0;
    *(v75 + 8) = 1;
LABEL_32:
    swift_willThrow();
LABEL_33:
    LODWORD(v111) = 0;
    goto LABEL_34;
  }

  v43 = static os_log_type_t.info.getter();
  v44 = Logger.logObject.getter();
  if (os_log_type_enabled(v44, v43))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v44, v43, "Decoding an asset-pack manifest using a local-cache (third-party-server/development-override) configuration…", v45, 2u);
  }

  v46 = v42[4];
  sub_10003FC70(v42, v42[3]);
  sub_100046DF8();
  v47 = v110;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v47)
  {
    LOBYTE(v117) = 0;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v107 = &_swiftEmptySetSingleton;
    v122 = &_swiftEmptySetSingleton;
    sub_10003FC70(v120, v121);
    v68 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    if ((v68 & 1) == 0)
    {
      v110 = v21;
      v69 = v99;
      do
      {
        v70 = *(v115 + 1);
        v117 = *v115;
        v118 = v70;
        v119 = *(v115 + 2);
        sub_100046E4C(v120, v121);
        sub_1000471A4(&qword_100089A60, type metadata accessor for AssetPack);
        UnkeyedDecodingContainer.decode<A>(_:configuration:)();
        v71 = v109;
        sub_10003FD08(v69, v109);
        v72 = v108;
        sub_100044144(v108, v71);
        sub_100038E5C(v72);
        sub_100038E5C(v69);
        sub_10003FC70(v120, v121);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
      v107 = v122;
    }

    LOBYTE(v117) = 1;
    v73 = v104;
    v74 = v106;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v102 + 8))(v74, v73);
    sub_100039204(v120);
    sub_1000391F4(v114);
LABEL_45:
    v42 = v113;
    goto LABEL_46;
  }

  LODWORD(v111) = 0;
LABEL_34:
  v76 = static os_log_type_t.error.getter();

  v77 = v114;
  sub_10003FC0C(v114);
  swift_errorRetain();
  v78 = Logger.logObject.getter();

  sub_1000391F4(v77);

  if (os_log_type_enabled(v78, v76))
  {
    v79 = swift_slowAlloc();
    LODWORD(v110) = v76;
    v80 = v79;
    v81 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v117 = v112;
    *v80 = 136446466;

    v82 = v114;
    v83 = sub_10003FC0C(v114);
    v84 = AssetPackManifest.DecodingConfiguration.description.getter(v83);
    v86 = v85;

    sub_1000391F4(v82);
    v87 = sub_10003F5F4(v84, v86, &v117);

    *(v80 + 4) = v87;
    *(v80 + 12) = 2114;
    swift_errorRetain();
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 14) = v88;
    *v81 = v88;
    _os_log_impl(&_mh_execute_header, v78, v110, "An asset-pack manifest couldn’t be decoded with the configuration “%{public}s”: %{public}@", v80, 0x16u);
    sub_100039368(v81, &qword_100089698, &qword_1000596A8);
    v42 = v113;

    sub_100039204(v112);
  }

  v89 = v111;
  swift_willThrow();

  sub_1000391F4(v114);
  result = sub_100039204(v42);
  if (v89)
  {
  }

  return result;
}

unint64_t sub_100046DF8()
{
  result = qword_100089A18;
  if (!qword_100089A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A18);
  }

  return result;
}

uint64_t sub_100046E4C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

__n128 sub_100046E9C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100046EA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100046EF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100046F40(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100046F58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100046F6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_100046FC8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10004704C()
{
  result = qword_100089A30;
  if (!qword_100089A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A30);
  }

  return result;
}

unint64_t sub_1000470A4()
{
  result = qword_100089A38;
  if (!qword_100089A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A38);
  }

  return result;
}

unint64_t sub_1000470FC()
{
  result = qword_100089A40;
  if (!qword_100089A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A40);
  }

  return result;
}

unint64_t sub_100047150()
{
  result = qword_100089A58;
  if (!qword_100089A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A58);
  }

  return result;
}

uint64_t sub_1000471A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000471EC()
{
  result = qword_100089A68;
  if (!qword_100089A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A68);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AssetPackManifestError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetPackManifestError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPackManifestError(uint64_t result, int a2, int a3)
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

uint64_t sub_1000472A4(uint64_t a1)
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

uint64_t sub_1000472C0(uint64_t result, int a2)
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

uint64_t getEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AssetPackManifest.AppStoreCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000473DC()
{
  result = qword_100089A78;
  if (!qword_100089A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A78);
  }

  return result;
}

unint64_t sub_100047438()
{
  result = qword_100089A80;
  if (!qword_100089A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A80);
  }

  return result;
}

unint64_t sub_100047490()
{
  result = qword_100089A88;
  if (!qword_100089A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089A88);
  }

  return result;
}

void sub_1000479A0(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 applicationIdentifier];
  sub_10000502C();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "A bundle record couldn’t be looked up for the application identifier “%{public}@”: %{public}@", v6, 0x16u);
}

void sub_100047A50(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "BAURLDownload+Agent: File data was returned, which is invalid. Daemon will crash. Download: %{public}@. Data: %{public}@", &v4, 0x16u);
}

void sub_100047ADC()
{
  v0 = 136315138;
  v1 = "BAURLDownload returned an NSData, which is highly unexpected.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}

void sub_100047B64(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Download %{public}@ has no final size.", &v2, 0xCu);
}

void sub_100047C5C(uint64_t a1)
{
  v6 = *(a1 + 32);
  sub_100008420();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100047D48()
{
  sub_1000083FC();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100047DF8()
{
  sub_1000083FC();
  [sub_100008414(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100047EA8()
{
  sub_1000083FC();
  [sub_100008414(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100047F58()
{
  sub_1000083FC();
  [sub_100008414(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100048008()
{
  sub_1000083FC();
  [sub_100008414(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1000480B8()
{
  sub_1000083FC();
  [sub_100008414(v1) identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() description];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100048168(id *a1)
{
  v6 = [*a1 identifier];
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void *sub_100048254(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v5 = a1;
  if (a1)
  {
    v9 = a4;
    v10 = a2;
    v11 = [a5 applicationIdentifier];
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    v14 = [NSString stringWithFormat:@"%@.Manifest-%@", v11, v13];
    v16.receiver = v5;
    v16.super_class = BAManifestDownload;
    v5 = objc_msgSendSuper2(&v16, "initWithIdentifier:request:essential:fileSize:applicationGroupIdentifier:priority:", v14, v10, 1, 0, v9, 1001);

    if (v5)
    {
      v5[24] = a3;
      if ((a3 - 1) <= 1)
      {
        os_unfair_lock_lock([v5 downloadLock]);
        [v5 setIsForegroundDownload:1];
        os_unfair_lock_unlock([v5 downloadLock]);
      }
    }
  }

  return v5;
}

uint64_t sub_100048424(uint64_t result)
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

id sub_100048498(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 8));
    v2 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1000484F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7.receiver = result;
    v7.super_class = BAAppStoreProgressInfoDescriptor;
    result = objc_msgSendSuper2(&v7, "init");
    if (result)
    {
      result[2] = a4;
      result[3] = a3;
      result[1] = a2;
    }
  }

  return result;
}

void sub_100048570(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Determining installation source for %{public}@", &v2, 0xCu);
}

void sub_1000485E8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to look up LS app proxy for %{public}@, cannot determine installation source.", &v2, 0xCu);
}

void sub_100048764(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 136446466;
  v5 = "[BAAgentSystemConnection reportProgressForIdentifier:progressInfo:]_block_invoke";
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Message failed: %{public}s error: %{public}@", &v4, 0x16u);
}

id sub_100048810(id a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v36 = a5;
  v18 = a6;
  v19 = a7;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v15 length])
    {
      v20 = [sub_10000C75C() exceptionWithName:? reason:? userInfo:?];
      [v20 raise];
    }

    if (([v16 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v21 = [sub_10000C75C() exceptionWithName:? reason:? userInfo:?];
      [v21 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 length])
    {
      v22 = [sub_10000C75C() exceptionWithName:? reason:? userInfo:?];
      [v22 raise];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v18 length])
    {
      v23 = [sub_10000C75C() exceptionWithName:? reason:? userInfo:?];
      [v23 raise];
    }

    if (([v19 isMemberOfClass:objc_opt_class()] & 1) == 0)
    {
      v24 = [sub_10000C75C() exceptionWithName:? reason:? userInfo:?];
      [v24 raise];
    }

    v37.receiver = a1;
    v37.super_class = BACloudKitDownload;
    v25 = v36;
    a1 = objc_msgSendSuper2(&v37, "initPrivatelyWithApplicationGroupIdentifier:", v36, a8);
    if (a1)
    {
      v26 = SecTaskCreateFromSelf(kCFAllocatorDefault);
      if (v26)
      {
        v27 = v26;
        v28 = SecTaskCopyValueForEntitlement(v26, @"com.apple.developer.icloud-container-environment", 0);
        if (v28)
        {
          v29 = v28;
          v30 = CFGetTypeID(v28);
          if (v30 == CFStringGetTypeID())
          {
            v31 = 1;
            if (CFStringCompare(v29, @"production", 1uLL))
            {
              v31 = 2;
            }
          }

          else
          {
            v31 = 2;
          }

          CFRelease(v29);
        }

        else
        {
          v31 = 2;
        }

        CFRelease(v27);
        v25 = v36;
      }

      else
      {
        v31 = 2;
      }

      [a1 setIdentifier:v15];
      [a1 setPriority:a9];
      v32 = [[CKContainerID alloc] initWithContainerIdentifier:v18 environment:v31];
      [a1 setContainerID:v32];

      [a1 setQuery:v16];
      [a1 setAssetKey:v17];
      [a1 setZoneID:v19];
      [a1 setDatabaseScope:v35];
    }
  }

  else
  {
    v25 = v36;
  }

  return a1;
}

id sub_100048B64(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [a1 initWithManifestDataSource:a3];
    if (v6)
    {
      if ([v5 hasLaunchedApplication])
      {
        sub_10004C080(v6, 0);
        sub_10004C0D8(v6, 0);
      }

      else
      {
        v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 remainingDownloadAllowanceWithNecessity:0]);
        sub_10004C080(v6, v7);
        v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 remainingDownloadAllowanceWithNecessity:1]);
        sub_10004C0D8(v6, v8);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_100048C54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "BAURLSession: Unable to create destination directory due to error: %@ - Falling back to BATemporaryDirectory()", &v2, 0xCu);
}

id *sub_100048CCC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = BAAppStorePrepareDescriptor;
    v10 = objc_msgSendSuper2(&v12, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
    }
  }

  return a1;
}

id *sub_100048DEC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = BAAppStoreEventDescriptor;
    v12 = objc_msgSendSuper2(&v14, "init");
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[4] = a4;
      a1[5] = a5;
      *(a1 + 4) = 0;
    }
  }

  return a1;
}

void sub_100048F90()
{
  sub_1000083FC();
  v1 = v0;
  v2 = [v0 identifier];
  [v1 uniqueIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100008408() identifier];
  sub_100016028();
  sub_1000083EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_10004904C()
{
  sub_1000083FC();
  v1 = v0;
  v2 = [v0 identifier];
  [v1 uniqueIdentifier];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_100008408() identifier];
  sub_100016028();
  sub_1000083EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_100049108()
{
  sub_1000083FC();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() identifier];
  sub_100016010();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000491AC()
{
  sub_1000083FC();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() identifier];
  sub_100016010();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100049250()
{
  sub_1000083FC();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() identifier];
  sub_100016010();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000492F4()
{
  sub_1000083FC();
  [v1 identifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_100008408() identifier];
  sub_100016010();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100049398()
{
  sub_100016330();
  sub_100016320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100049408(uint64_t a1, unsigned __int16 *a2)
{
  v7 = *a2;
  sub_100016320();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_10004948C()
{
  sub_100016330();
  sub_100016320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100049510(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to read developer mode status: %{darwin.errno}d", v3, 8u);
}

void sub_1000495A0(os_log_t log)
{
  v1 = 138543362;
  v2 = @"com.apple.appstored";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to synchronized CFPreferencesApp for %{public}@", &v1, 0xCu);
}

void sub_1000496AC(void *a1, NSObject *a2)
{
  v4 = [a1 serviceName];
  if (v4)
  {
    v5 = [a1 serviceName];
  }

  else
  {
    v5 = @"???";
  }

  v6 = 138543618;
  v7 = v5;
  v8 = 1026;
  v9 = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Connection to service: %{public}@ from pid:%{public}d has invalid service name.", &v6, 0x12u);
  if (v4)
  {
  }
}

void sub_10004978C(void *a1)
{
  [a1 processIdentifier];
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100049810(uint64_t a1)
{
  [*(a1 + 48) processIdentifier];
  v7 = [*(a1 + 56) description];
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_100049998(void *a1)
{
  v1 = [a1 description];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100049A28(void *a1)
{
  v1 = [a1 description];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100049AB8(void *a1)
{
  v1 = [a1 description];
  v2 = v1;
  [v1 UTF8String];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100049B94(void *a1)
{
  v1 = [a1 description];
  v2 = v1;
  [v1 UTF8String];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100049C98()
{
  sub_1000083FC();
  [v0 UTF8String];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100049F98()
{
  sub_1000083FC();
  [v0 UTF8String];
  sub_100027B8C();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10004A030()
{
  sub_1000083FC();
  [v0 UTF8String];
  sub_100027B8C();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_10004A0C8(void *a1)
{
  [a1 UTF8String];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10004A14C()
{
  sub_1000083FC();
  v1 = [v0 applicationIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A1E0()
{
  sub_1000083FC();
  v1 = [v0 applicationIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A274()
{
  sub_1000083FC();
  [v0 UTF8String];
  sub_100027BCC();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004A2F8()
{
  sub_1000083FC();
  [v0 UTF8String];
  sub_100027BCC();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004A37C()
{
  sub_1000083FC();
  [*(v0 + 32) UTF8String];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004A404()
{
  sub_1000083FC();
  [*(v0 + 32) UTF8String];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10004A48C()
{
  sub_1000083FC();
  v1 = v0;
  v2 = *(v0 + 56);
  [*(v0 + 32) UTF8String];
  v3 = *(v1 + 40);
  sub_100027B8C();
  sub_1000083EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_10004A538()
{
  sub_1000083FC();
  v1 = [v0 bundleIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A5CC(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004A658(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_100027B58();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A6F8(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004A85C()
{
  sub_1000083FC();
  v1 = [v0 bundleIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004A8F0(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004AA50()
{
  sub_1000083FC();
  v1 = [v0 bundleIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004AAE4(void *a1)
{
  v1 = [a1 bundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004AB70(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 applicationIdentifier];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Unable to observe extension for (%{public}@), the BAApplicationInfo is missing an extensionIdentity.", a1, 0xCu);
}

void sub_10004ABE8()
{
  sub_1000083FC();
  v1 = [v0 identifier];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_100027BA8();
  sub_1000083EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10004ACA0()
{
  sub_1000083FC();
  v1 = [v0 identifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004AD34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  sub_100027BB4();
  sub_100027BA8();
  sub_100027B6C(&_mh_execute_header, v4, v5, "Timed out messaging client for '%{public}@' to answer auth challenge for download: %{public}@");
}

void sub_10004ADAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_100027BB4();
  sub_100027BA8();
  sub_100027B6C(&_mh_execute_header, v4, v5, "Cannot message extension for '%{public}@' to answer auth challenge, canceling challenge for download: %{public}@");
}

void sub_10004AE24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100027BB4();
  sub_100027BA8();
  sub_100008420();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004AEE0(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Failed to notify anyone about failed download: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004AF48()
{
  v0 = 136315138;
  v1 = "BAAgentCore received a finished file that was a BAManifestDownload. This is invalid.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004AFD0(uint64_t *a1)
{
  v1 = *a1;
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v2, v3, "Failed to find extension for installed application, removing download. %{public}@", v4, v5, v6, v7, v8);
}

void sub_10004B03C(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Failed to notify extension about failed manifest download: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004B0A4(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Failed to notify extension about finished download: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004B10C()
{
  sub_1000083FC();
  sub_100048424(*v1);
  v7 = [*v0 applicationIdentifier];
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_10004B1D4(id *a1)
{
  v1 = [*a1 applicationIdentifier];
  sub_100027BA8();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004B278(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Removing manifest download as extension did not handle manifest. %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004B2E0()
{
  sub_1000083FC();
  v1 = [*v0 applicationIdentifier];
  sub_100027B40();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004B378(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Failed to notify extension about failed manifest download due to sandbox extension issue: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004B488(uint64_t a1)
{
  sub_100027BC0(a1, __stack_chk_guard);
  sub_100027BB4();
  sub_100005010(&_mh_execute_header, v1, v2, "Extension failed to be removed with launchd: %{public}@", v3, v4, v5, v6, v7);
}

void sub_10004B4F0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to load serialized application state with error: %{public}@", buf, 0xCu);
}

void sub_10004B618(void *a1)
{
  v1 = [a1 error];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004B774(void *a1)
{
  v1 = [a1 error];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004BA98()
{
  v0 = 136315138;
  v1 = "NSErrorWithBAErrorDomainCodeUserInfo() called with unsupported NSErrorDomain.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004BBE0()
{
  v0 = 136315138;
  v1 = "BAUnhandledDownloadEvent initialized with a failure event but a nil error.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004BC68()
{
  v0 = 136315138;
  v1 = "BAUnhandledDownloadEvent initialized from coder as a failure event but with a nil error.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004BD8C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  sub_10000502C();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Application bundle (%{public}@) is not the same as the bundle id (%{public}@). Failing.", v6, 0x16u);
}

void sub_10004BE38(void *a1, NSObject *a2)
{
  v3 = [a1 bundleIdentifier];
  sub_10000502C();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Extension (%{public}@) is not part of a application bundle. Failing.", v4, 0xCu);
}

void sub_10004BF40(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Download %{public}@ rejected as we are out of download allowance.", &v2, 0xCu);
}

void *sub_10004BFB8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1 initPrivately];
    if (a1)
    {
      if ([v3 hasLaunchedApplication])
      {
        v4 = a1[1];
        a1[1] = 0;

        v5 = 0;
      }

      else
      {
        v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 remainingDownloadAllowanceWithNecessity:0]);
        v7 = a1[1];
        a1[1] = v6;

        v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 remainingDownloadAllowanceWithNecessity:1]);
      }

      v8 = a1[2];
      a1[2] = v5;
    }
  }

  return a1;
}

void sub_10004C080(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_10004C0D8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_10004C130(void *a1, uint64_t a2)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    obj[4] = a2;
    objc_sync_exit(obj);
  }
}

void sub_10004C18C(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 80);
  }
}

void sub_10004C1A0(void *a1, char a2)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    obj[12] = a2;
    objc_sync_exit(obj);
  }
}

uint64_t sub_10004C1FC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[6];
  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_10004C244(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  objc_sync_enter(v1);
  v2 = v1[4];
  objc_sync_exit(v1);

  return v2;
}

uint64_t sub_10004C28C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[12];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_10004C614(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 80, 1);
  }

  return result;
}

void sub_10004C628(void *a1, NSObject *a2)
{
  v3 = [a1 applicationIdentifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Dropping download because application identifier is invalid: %{public}@", &v4, 0xCu);
}

void sub_10004C6C0()
{
  v0 = 136315138;
  v1 = "The provided fileSize for BADownload must be a positive number that matches the actual file size on the server.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004C748(void *a1, uint64_t a2)
{
  obj = a1;
  objc_sync_enter(obj);
  obj[6] = a2;
  objc_sync_exit(obj);
}

void sub_10004C79C()
{
  v0 = 136315138;
  v1 = "Cannot provide an unsupported BADownloadNecessity.";
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v0, 0xCu);
}

void sub_10004C838(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 applicationBundleIdentifier];
  sub_1000365EC();
  sub_1000083EC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10004C9C4()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CA54()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CA90()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CACC()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CB08()
{
  sub_10000502C();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CB78()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004CBB4()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CC44(void *a1)
{
  v1 = [a1 applicationBundleIdentifier];
  v2 = NSStringFromFBSApplicationTrustState();
  sub_1000365EC();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10004CCF8(void *a1)
{
  v1 = [a1 applicationBundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CD84(void *a1)
{
  v1 = [a1 clientBundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CE10()
{
  sub_10000502C();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004CE80(void *a1)
{
  v1 = [a1 applicationBundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CF0C(void *a1)
{
  v1 = [a1 applicationBundleIdentifier];
  sub_10000502C();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10004CF98()
{
  sub_10000502C();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10004D008()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D044()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D080()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D0BC()
{
  sub_10000BDE8();
  sub_100008420();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10004D0F8(void *a1)
{
  v1 = [a1 description];
  sub_1000365EC();
  sub_1000083EC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10004D194(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D234(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D2D4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D374(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D414(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D4B4(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10004D554(uint64_t a1, uint64_t a2)
{
  v2 = [sub_1000365DC(a1 a2)];
  sub_1000083D0();
  sub_1000083EC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}