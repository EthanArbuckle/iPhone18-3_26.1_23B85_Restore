uint64_t sub_10007FC4C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 > 5)
  {
    sub_10004E820(0, v2, 0);
    v12 = (v1 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15._countAndFlagsBits = v13;
      v15._object = v14;
      String.append(_:)(v15);

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_10004E820((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = 539828256;
      v18[5] = 0xE400000000000000;
      v12 += 2;
      --v2;
    }

    while (v2);
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v28 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;

    _StringGuts.grow(_:)(41);

    v35 = 0xD000000000000027;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    return v35;
  }

  sub_10004E820(0, v2, 0);
  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3;

    v6._countAndFlagsBits = v4;
    v6._object = v5;
    String.append(_:)(v6);
    v7._countAndFlagsBits = 39;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_10004E820((v8 > 1), v9 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    v10 = &_swiftEmptyArrayStorage[2 * v9 + 4];
    *v10 = 39;
    v10[1] = 0xE100000000000000;
    v3 += 2;
    --v2;
  }

  while (v2);
  if (v9 <= 1)
  {
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v32;

    goto LABEL_18;
  }

  sub_100072474(1uLL, _swiftEmptyArrayStorage);

  sub_1000021C0(&qword_1000B5F10, &qword_100096020);
  sub_10000BD8C(qword_1000B5F18, &qword_1000B5F10, &qword_100096020);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;
  result = swift_unknownObjectRelease();
  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    v23 = &_swiftEmptyArrayStorage[2 * v22 + 4];
    v24 = *(v23 - 2);
    v25 = *(v23 - 1);

    v26._countAndFlagsBits = v24;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 544370464;
    v27._object = 0xE400000000000000;
    String.append(_:)(v27);

LABEL_18:
    _StringGuts.grow(_:)(27);

    v35 = 0xD000000000000018;
    v33._countAndFlagsBits = v19;
    v33._object = v21;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    return v35;
  }

  __break(1u);
  return result;
}

Swift::Int sub_100080110(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100078CD0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10008017C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10008017C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100080338(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100080274(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100080274(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if (*(v8 + 41))
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v9 = v8 + 24;
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      if ((*(v8 + 17) & 1) == 0 && v10 >= *v8)
      {
        if (v10 != *v8)
        {
          goto LABEL_4;
        }

        v13 = *(v8 + 16);
        if (*(v8 + 40))
        {
          if (*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        else if ((*(v8 + 16) & 1) != 0 || v11 >= *(v8 + 8))
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v14 = *v8;
      v15 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 8) = v11;
      *(v8 + 16) = v12;
      *(v8 + 17) = 0;
      v8 -= 24;
      *v9 = v14;
      *(v9 + 16) = v15;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100080338(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v106 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_120:
    v107 = *v106;
    if (!*v106)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_122:
      v98 = v8 + 2;
      v99 = v8[2];
      if (v99 >= 2)
      {
        while (*a3)
        {
          v100 = &v8[2 * v99];
          v101 = *v100;
          v102 = &v98[2 * v99];
          v103 = v102[1];
          sub_1000809E0((*a3 + 24 * *v100), (*a3 + 24 * *v102), *a3 + 24 * v103, v107);
          if (v5)
          {
          }

          if (v103 < v101)
          {
            goto LABEL_146;
          }

          if (v99 - 2 >= *v98)
          {
            goto LABEL_147;
          }

          *v100 = v101;
          v100[1] = v103;
          v104 = *v98 - v99;
          if (*v98 < v99)
          {
            goto LABEL_148;
          }

          v99 = *v98 - 1;
          result = memmove(v102, v102 + 2, 16 * v104);
          *v98 = v99;
          if (v99 <= 1)
          {
          }
        }

        goto LABEL_158;
      }
    }

LABEL_154:
    result = sub_100078CA8(v8);
    v8 = result;
    goto LABEL_122;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v105 = a4;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_40;
    }

    v11 = *a3;
    v12 = *a3 + 24 * v10;
    if (*(v12 + 17))
    {
LABEL_6:
      v13 = 0;
      goto LABEL_11;
    }

    v14 = v11 + 24 * v7;
    if ((*(v14 + 17) & 1) != 0 || *v12 < *v14)
    {
      v13 = 1;
    }

    else
    {
      if (*v12 != *v14)
      {
        goto LABEL_6;
      }

      v94 = *(v14 + 8);
      v95 = *(v14 + 16);
      v96 = (*(v12 + 8) < v94) & ~v95;
      v97 = v95 ^ 1;
      v13 = (*(v12 + 16) & 1) != 0 ? v97 : v96;
    }

LABEL_11:
    v7 += 2;
    if (v9 + 2 < v6)
    {
      v10 = v6 - 1;
      v15 = v11 + 24 * v9 + 32;
      v16 = v15;
      while (1)
      {
        v18 = *(v16 + 24);
        v16 += 24;
        v17 = v18;
        if ((*(v15 + 33) & 1) == 0)
        {
          if ((*(v15 + 9) & 1) != 0 || (v19 = *(v15 + 16), v20 = *(v15 - 8), v19 < v20))
          {
LABEL_18:
            if ((v13 & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_14;
          }

          if (v19 == v20)
          {
            v21 = *(v15 + 8);
            if (*(v15 + 32))
            {
              if ((*(v15 + 8) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            else if ((*(v15 + 8) & 1) == 0 && v17 < *v15)
            {
              goto LABEL_18;
            }
          }
        }

        if (v13)
        {
          v10 = v7 - 1;
          if (v7 < v9)
          {
            goto LABEL_151;
          }

LABEL_32:
          if (v9 <= v10)
          {
            v22 = 24 * v7 - 24;
            v23 = 24 * v9;
            v24 = v7;
            v25 = v9;
            do
            {
              if (v25 != --v24)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_157;
                }

                v26 = (v32 + v23);
                v27 = (v32 + v22);
                v28 = *(v26 + 16);
                v29 = *(v26 + 17);
                v30 = *v26;
                v31 = *(v27 + 2);
                *v26 = *v27;
                *(v26 + 2) = v31;
                *v27 = v30;
                *(v27 + 16) = v28;
                *(v27 + 17) = v29;
              }

              ++v25;
              v22 -= 24;
              v23 += 24;
            }

            while (v25 < v24);
            v6 = a3[1];
          }

          goto LABEL_40;
        }

LABEL_14:
        ++v7;
        v15 = v16;
        if (v6 == v7)
        {
          v7 = v6;
          break;
        }
      }
    }

    if (v13)
    {
      if (v7 < v9)
      {
        goto LABEL_151;
      }

      goto LABEL_32;
    }

LABEL_40:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_150;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_65:
    if (v7 < v9)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100043390(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v47 = v8[2];
    v46 = v8[3];
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100043390((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v48;
    v49 = v8 + 4;
    v50 = &v8[2 * v47 + 4];
    *v50 = v9;
    v50[1] = v7;
    v107 = *v106;
    if (!*v106)
    {
      goto LABEL_159;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = v8[4];
          v53 = v8[5];
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_85:
          if (v55)
          {
            goto LABEL_136;
          }

          v68 = &v8[2 * v48];
          v70 = *v68;
          v69 = v68[1];
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_138;
          }

          v74 = &v49[2 * v51];
          v76 = *v74;
          v75 = v74[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_143;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v48 < 2)
        {
          goto LABEL_144;
        }

        v78 = &v8[2 * v48];
        v80 = *v78;
        v79 = v78[1];
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_100:
        if (v73)
        {
          goto LABEL_140;
        }

        v81 = &v49[2 * v51];
        v83 = *v81;
        v82 = v81[1];
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_142;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_107:
        if (v51 - 1 >= v48)
        {
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
          goto LABEL_153;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v89 = &v49[2 * v51 - 2];
        v90 = *v89;
        v91 = &v49[2 * v51];
        v92 = v91[1];
        sub_1000809E0((*a3 + 24 * *v89), (*a3 + 24 * *v91), *a3 + 24 * v92, v107);
        if (v5)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_131;
        }

        if (v51 > v8[2])
        {
          goto LABEL_132;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = v8[2];
        if (v51 >= v93)
        {
          goto LABEL_133;
        }

        v48 = v93 - 1;
        result = memmove(&v49[2 * v51], v91 + 2, 16 * (v93 - 1 - v51));
        v8[2] = v93 - 1;
        if (v93 <= 2)
        {
          goto LABEL_3;
        }
      }

      v56 = &v49[2 * v48];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_134;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_135;
      }

      v63 = &v8[2 * v48];
      v65 = *v63;
      v64 = v63[1];
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_137;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_139;
      }

      if (v67 >= v59)
      {
        v85 = &v49[2 * v51];
        v87 = *v85;
        v86 = v85[1];
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_145;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v105;
    if (v7 >= v6)
    {
      goto LABEL_120;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_152;
  }

  if (v9 + a4 < v6)
  {
    v6 = v9 + a4;
  }

  if (v6 < v9)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v7 == v6)
  {
    goto LABEL_65;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v7 - 24;
  v35 = v9 - v7;
LABEL_50:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    if (*(v37 + 41))
    {
LABEL_49:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 == v6)
      {
        v7 = v6;
        goto LABEL_65;
      }

      goto LABEL_50;
    }

    v38 = v37 + 24;
    v39 = *(v37 + 24);
    v40 = *(v37 + 32);
    v41 = *(v37 + 40);
    if ((*(v37 + 17) & 1) == 0 && v39 >= *v37)
    {
      if (v39 != *v37)
      {
        goto LABEL_49;
      }

      v42 = *(v37 + 16);
      if (*(v37 + 40))
      {
        if (*(v37 + 16))
        {
          goto LABEL_49;
        }
      }

      else if ((*(v37 + 16) & 1) != 0 || v40 >= *(v37 + 8))
      {
        goto LABEL_49;
      }
    }

    if (!v33)
    {
      break;
    }

    v43 = *v37;
    v44 = *(v37 + 16);
    *v37 = v39;
    *(v37 + 8) = v40;
    *(v37 + 16) = v41;
    *(v37 + 17) = 0;
    v37 -= 24;
    *v38 = v43;
    *(v38 + 16) = v44;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1000809E0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
LABEL_48:
      v21 = v7;
      goto LABEL_50;
    }

    while ((v6[17] & 1) == 0)
    {
      if ((v4[17] & 1) == 0 && *v6 >= *v4)
      {
        if (*v6 != *v4)
        {
          break;
        }

        v17 = v4[16];
        if (v6[16])
        {
          if (v4[16])
          {
            break;
          }
        }

        else if ((v4[16] & 1) != 0 || *(v6 + 1) >= *(v4 + 1))
        {
          break;
        }
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_48;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_10;
  }

  v18 = 24 * v11;
  if (a4 != __dst || &__dst[v18] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v18];
  if (v10 < 24 || v6 <= v7)
  {
LABEL_49:
    v21 = v6;
    goto LABEL_50;
  }

  do
  {
    v19 = 0;
    v20 = v13;
    v21 = v6 - 24;
    while (1)
    {
      v22 = &v20[v19];
      v23 = *&v20[v19 - 24];
      if (v20[v19 - 7])
      {
        goto LABEL_41;
      }

      if (*(v6 - 7))
      {
        break;
      }

      v24 = *(v6 - 3);
      if (v23 < v24)
      {
        break;
      }

      if (v23 == v24)
      {
        v25 = *(v6 - 8);
        if (*(v22 - 8))
        {
          if ((*(v6 - 8) & 1) == 0)
          {
            break;
          }
        }

        else if ((*(v6 - 8) & 1) == 0 && *(v22 - 2) < *(v6 - 2))
        {
          break;
        }
      }

LABEL_41:
      if ((v5 + v19) != v22)
      {
        v26 = v5 + v19 - 24;
        v27 = *&v20[v19 - 24];
        *(v26 + 16) = *&v20[v19 - 8];
        *v26 = v27;
      }

      v19 -= 24;
      v13 = &v20[v19];
      if (&v20[v19] <= v4)
      {
        goto LABEL_49;
      }
    }

    v28 = (v5 + v19);
    v5 = v5 + v19 - 24;
    if (v28 != v6)
    {
      v29 = *v21;
      *(v5 + 16) = *(v6 - 1);
      *v5 = v29;
    }

    v13 = &v20[v19];
    if (&v20[v19] <= v4)
    {
      break;
    }

    v6 -= 24;
  }

  while (v21 > v7);
  v13 = &v20[v19];
LABEL_50:
  v30 = 24 * ((v13 - v4) / 24);
  if (v21 != v4 || v21 >= &v4[v30])
  {
    memmove(v21, v4, v30);
  }

  return 1;
}

uint64_t sub_100080CA8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        if (a1 == a4 && a2 == a5 || (v6 = a3, v7 = a6, v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), a3 = v6, a6 = v7, (v8 & 1) != 0))
        {
          v9 = a6 ^ a3 ^ 1;
          return v9 & 1;
        }
      }

LABEL_13:
      v9 = 0;
      return v9 & 1;
    }

    if ((a6 & 0xC0) != 0x80)
    {
      goto LABEL_13;
    }
  }

  else if (a6 >= 0x40u)
  {
    goto LABEL_13;
  }

  if (a1 == a4 && a2 == a5)
  {
    v9 = 1;
    return v9 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t sub_100080D88(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_100055CD4(v2, v3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100080E4C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(111);
  v4._object = 0x80000001000997E0;
  v4._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xD000000000000044;
  v6._object = 0x8000000100099810;
  String.append(_:)(v6);
  sub_10004E820(0, 3, 0);
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  v9 = v8 + 1;

  if (v8 >= v7 >> 1)
  {
    sub_10004E820((v7 > 1), v8 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9;
  v10 = &_swiftEmptyArrayStorage[2 * v8];
  v10[4] = 6845306;
  v10[5] = 0xE300000000000000;
  v11 = _swiftEmptyArrayStorage[3];
  v12 = v8 + 2;

  if (v9 >= v11 >> 1)
  {
    sub_10004E820((v11 > 1), v12, 1);
  }

  _swiftEmptyArrayStorage[2] = v12;
  v13 = &_swiftEmptyArrayStorage[2 * v9];
  v13[4] = *"bash";
  v13[5] = 0xE400000000000000;
  v15 = _swiftEmptyArrayStorage[2];
  v14 = _swiftEmptyArrayStorage[3];

  if (v15 >= v14 >> 1)
  {
    sub_10004E820((v14 > 1), v15 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v15 + 1;
  v16 = &_swiftEmptyArrayStorage[2 * v15];
  v16[4] = *"fish";
  v16[5] = 0xE400000000000000;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
  v17 = BidirectionalCollection<>.joined(separator:)();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  String.append(_:)(v20);

  return 0;
}

uint64_t sub_1000810A4()
{
  _StringGuts.grow(_:)(103);
  v0._object = 0x8000000100099860;
  v0._countAndFlagsBits = 0xD000000000000065;
  String.append(_:)(v0);
  sub_10004E820(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;

  if (v2 >= v1 >> 1)
  {
    sub_10004E820((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = &_swiftEmptyArrayStorage[2 * v2];
  v4[4] = 6845306;
  v4[5] = 0xE300000000000000;
  v5 = _swiftEmptyArrayStorage[3];
  v6 = v2 + 2;

  if (v3 >= v5 >> 1)
  {
    sub_10004E820((v5 > 1), v6, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  v7 = &_swiftEmptyArrayStorage[2 * v3];
  v7[4] = *"bash";
  v7[5] = 0xE400000000000000;
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];

  if (v9 >= v8 >> 1)
  {
    sub_10004E820((v8 > 1), v9 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 1;
  v10 = &_swiftEmptyArrayStorage[2 * v9];
  v10[4] = *"fish";
  v10[5] = 0xE400000000000000;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
  v11 = BidirectionalCollection<>.joined(separator:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  return 0;
}

unint64_t sub_100081DEC(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      _StringGuts.grow(_:)(24);

      v21 = 0xD000000000000015;
      v3 = a1[5];
      v4 = a1[6];

      v5._countAndFlagsBits = v3;
      v5._object = v4;
      String.append(_:)(v5);
    }

    else
    {
      sub_10004E820(0, v1, 0);
      v6 = a1 + 6;
      v7 = v1;
      do
      {
        v9 = *(v6 - 1);
        v8 = *v6;
        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];

        if (v11 >= v10 >> 1)
        {
          sub_10004E820((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = v9;
        v12[5] = v8;
        v6 += 3;
        --v7;
      }

      while (v7);
      sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
      sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
      v13 = BidirectionalCollection<>.joined(separator:)();
      v15 = v14;

      _StringGuts.grow(_:)(29);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();

      v21 = v16;
      v17._countAndFlagsBits = 0xD000000000000018;
      v17._object = 0x8000000100099930;
      String.append(_:)(v17);
      v18._countAndFlagsBits = v13;
      v18._object = v15;
      String.append(_:)(v18);
    }

    v19._countAndFlagsBits = 39;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    return v21;
  }

  return v1;
}

uint64_t sub_100082044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007F7DC(a2, a3);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v9._countAndFlagsBits = 0x6E6F697469736F70;
    v9._object = 0xE900000000000020;
    String.append(_:)(v9);
    _print_unlocked<A, B>(_:_:)();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = sub_10007F7DC(a1, a3);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v14._countAndFlagsBits = 0x6E6F697469736F70;
    v14._object = 0xE900000000000020;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  _StringGuts.grow(_:)(52);
  v15._object = 0x8000000100099970;
  v15._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v15);
  v16._countAndFlagsBits = v7;
  v16._object = v8;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x8000000100099990;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v12;
  v18._object = v13;
  String.append(_:)(v18);

  return 0;
}

__n128 sub_100082740(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_10008276C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000827B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100082868()
{
  result = static CommandLine.arguments.getter();
  qword_1000B66D0 = result;
  return result;
}

unint64_t sub_100082888(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
LABEL_26:
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = 15;
  while (1)
  {
    v9 = v7 & 0xC;
    result = v7;
    if (v9 == v6)
    {
      result = sub_100082D44(v7, a1, a2);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v12 = result;
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v13[0] = a1;
      v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v12 = *(v13 + v11);
      if (v9 != v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *(result + v11);
      if (v9 != v6)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    result = sub_100082D44(v7, a1, a2);
    v7 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v7 = (v7 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_21:
    if (v4 <= v7 >> 16)
    {
      goto LABEL_30;
    }

    v7 = String.UTF8View._foreignIndex(after:)();
LABEL_9:
    v8 = stderr.getter();
    putc(v12, v8);
    if (4 * v4 == v7 >> 14)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100082A44(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100082DC0(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100082D44(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

unsigned __int8 *sub_100082DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10008334C()
{
  if (getenv("COLUMNS"))
  {
    result = String.init(cString:)();
    v2 = HIBYTE(v1) & 0xF;
    v3 = result & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v1) & 0xF;
    }

    else
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v31 = 0;
        v6 = sub_100082DC0(result, v1, 10);
        v24 = v28;
LABEL_64:

        if (v24)
        {
          v6 = 0;
        }

        goto LABEL_69;
      }

      if ((v1 & 0x2000000000000000) != 0)
      {
        v30[0] = result;
        v30[1] = v1 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v2)
          {
            v3 = v2 - 1;
            if (v2 != 1)
            {
              v6 = 0;
              v16 = v30 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  break;
                }

                v6 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v2)
          {
            v6 = 0;
            v21 = v30;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v2)
              {
                goto LABEL_61;
              }
            }
          }

          goto LABEL_62;
        }

        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v10 = v30 + 1;
            while (1)
            {
              v11 = *v10 - 48;
              if (v11 > 9)
              {
                break;
              }

              v12 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v12 - v11;
              if (__OFSUB__(v12, v11))
              {
                break;
              }

              ++v10;
              if (!--v3)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v3 = v29;
        }

        v5 = *result;
        if (v5 == 43)
        {
          if (v3 >= 1)
          {
            if (--v3)
            {
              v6 = 0;
              if (result)
              {
                v13 = (result + 1);
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_62;
                  }

                  v15 = 10 * v6;
                  if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v6 = v15 + v14;
                  if (__OFADD__(v15, v14))
                  {
                    goto LABEL_62;
                  }

                  ++v13;
                  if (!--v3)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_62;
          }

          goto LABEL_77;
        }

        if (v5 != 45)
        {
          if (v3)
          {
            v6 = 0;
            if (result)
            {
              while (1)
              {
                v19 = *result - 48;
                if (v19 > 9)
                {
                  goto LABEL_62;
                }

                v20 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_62;
                }

                ++result;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_62:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_63;
        }

        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v7 = (result + 1);
              while (1)
              {
                v8 = *v7 - 48;
                if (v8 > 9)
                {
                  goto LABEL_62;
                }

                v9 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_62;
                }

                v6 = v9 - v8;
                if (__OFSUB__(v9, v8))
                {
                  goto LABEL_62;
                }

                ++v7;
                if (!--v3)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_61:
            LOBYTE(v3) = 0;
LABEL_63:
            v31 = v3;
            v24 = v3;
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v6 = 0;
  v24 = 1;
LABEL_69:
  if (getenv("LINES"))
  {
    v25 = String.init(cString:)();
    sub_100082A44(v25, v26);
  }

  else
  {
    v27 = 1;
  }

  LOBYTE(v30[0]) = v24 & 1;
  v31 = v27 & 1;
  return v6;
}

uint64_t sub_1000836A4()
{
  TIOCGWINSZ.getter();
  if (ioctl(_:_:_:)())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v19 = Set.init()();
  (*(v8 + 16))(v11, v4, a1);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = &v19;
  v12 = Sequence.filter(_:)();

  return v12;
}

uint64_t sub_100083884(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  type metadata accessor for Set();
  v9 = Set.insert(_:)();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_1000839E4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_100083884(a1) & 1;
}

uint64_t sub_100083A08(uint64_t a1)
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

uint64_t sub_100083AB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100083B60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v13[2] = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 3;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100083C24(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      sub_10002BB8C(v8, v9, v10);
      v11 = a1(v14);
      sub_100028AE8(v8, v9, v10);
      if (v3)
      {
        break;
      }

      v7 += 24;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_100083CF8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_100083E34(Swift::UInt a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_100056308(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_100083EF4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  swift_weakDestroy();
  v2 = *(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_100083F9C()
{
  sub_100083EF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_100084044()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000840D4()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_100084018();
  return Hasher._finalize()();
}

void *sub_100084154(Swift::UInt a1, uint64_t a2)
{
  v47 = a2;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_76;
  }

LABEL_2:
  v3 = &_swiftEmptySetSingleton;
LABEL_3:
  v56 = v3;
  sub_1000021C0(&qword_1000B5FA0, &unk_100096540);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100091370;
  *(v4 + 32) = a1;
  v55 = v4;
  v49 = sub_100075678(_swiftEmptyArrayStorage);

  v5 = 0;
  v39 = 0;
LABEL_4:
  a1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 < 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v48 = v4 & 0xC000000000000001;
  v46 = a1 + 32;
  v7 = v4 >> 62;
  while (!v7)
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 < v5)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_13:
    if (v9 < 0)
    {
      goto LABEL_69;
    }

    if (!v48 || v5 == v9)
    {

      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v5 >= v9)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_2;
        }

        v3 = sub_1000854F8(_swiftEmptyArrayStorage);
        goto LABEL_3;
      }

      v10 = v5;
      do
      {
        sub_1000021C0(&qword_1000B59C0, &unk_100093050);
        _ArrayBuffer._typeCheckSlowPath(_:)(v10++);
      }

      while (v9 != v10);
      if (!v7)
      {
LABEL_20:
        v11 = v46;
        v12 = v5;
        v13 = v5 < v9;
        if (v5 == v9)
        {
          goto LABEL_65;
        }

        goto LABEL_24;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v13 = v12 < (v14 >> 1);
    if (v12 == v14 >> 1)
    {
LABEL_65:

      swift_unknownObjectRelease();

      return _swiftEmptyArrayStorage;
    }

LABEL_24:
    if (!v13)
    {
      goto LABEL_70;
    }

    v15 = *(v11 + 8 * v12);

    swift_unknownObjectRelease();
    v16 = __OFADD__(v5++, 1);
    if (v16)
    {
      goto LABEL_71;
    }

    if (*(v15 + 16) == v47)
    {

      v36 = swift_allocObject();
      *(v36 + 16) = v49;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1000857CC;
      *(v37 + 24) = v36;
      v50 = v15;
      v51 = 1;
      v52 = sub_100085834;
      v53 = v37;
      v54 = 0;
      return sub_1000847C8();
    }

    v17 = v6;

    sub_100056BF0(&v50, v15);

    swift_beginAccess();
    v18 = *(v15 + 40);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    if (v18 < 0)
    {
      v20 = *(v15 + 40);
    }

    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
LABEL_35:
      v44 = v19;
      v45 = v56 & 0xC000000000000001;
      v46 = v18 & 0xC000000000000001;
      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      v41 = v18 + 32;
      v21 = v56 & 0xFFFFFFFFFFFFFF8;
      if (v56 < 0)
      {
        v21 = v56;
      }

      v43 = v21;
      v48 = v56;
      v40 = v56 + 56;

      v22 = 0;
      v23 = v39;
      v24 = v49;
      while (1)
      {
        v49 = v24;
        if (v46)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *(v42 + 16))
          {
            goto LABEL_75;
          }

          a1 = *(v41 + 8 * v22);
        }

        v16 = __OFADD__(v22++, 1);
        if (v16)
        {
          goto LABEL_72;
        }

        if (v45)
        {

          v25 = __CocoaSet.contains(_:)();

          if ((v25 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (!*(v48 + 16) || (v26 = *(v48 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(a1), v27 = Hasher._finalize()(), v28 = -1 << *(v48 + 32), v29 = v27 & ~v28, ((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0))
          {
LABEL_53:
            v50 = a1;
            __chkstk_darwin();
            v38[2] = &v50;
            if ((sub_100083CF8(sub_10008577C, v38, v4) & 1) == 0)
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v34 = v23;
                v35 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v23 = v34;
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v4 = v55;
            }

            v31 = v49;
            if ((v49 & 0xC000000000000001) != 0)
            {
              if (v49 >= 0)
              {
                v31 = v49 & 0xFFFFFFFFFFFFFF8;
              }

              v32 = __CocoaDictionary.count.getter();
              if (__OFADD__(v32, 1))
              {
                goto LABEL_74;
              }

              v31 = sub_1000849A4(v31, v32 + 1);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v31;
            sub_10006C5C4(v15, a1, isUniquelyReferenced_nonNull_native);

            v24 = v50;
            goto LABEL_39;
          }

          v30 = ~v28;
          while (*(*(v48 + 48) + 8 * v29) != a1)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v40 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        v24 = v49;
LABEL_39:
        if (v22 == v44)
        {
          v49 = v24;
          v39 = v23;

          goto LABEL_4;
        }
      }
    }

LABEL_30:

    v6 = v17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v5)
  {
    v9 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v5)
    {
      goto LABEL_79;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v9)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

unint64_t sub_1000847C8()
{
  v1 = sub_100084FE0(v0);
  v19 = *v0;
  v20 = *(v0 + 8);
  sub_100085860(&v19);
  v2 = *(v0 + 24);

  if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v3 = *(v1 + 16);
  v4 = v3 >> 1;
  while (v3 + 1 >= 3)
  {
    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      v9 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v10)
          {
            goto LABEL_30;
          }

          if (v8 >= v10)
          {
            goto LABEL_31;
          }

          v11 = *(v1 + 8 * v7);
          v12 = *(v1 + 8 * v8 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1000588A0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          v1 = sub_1000588A0(v1);
          v14 = v1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v8 >= *(v14 + 16))
        {
          goto LABEL_32;
        }

        v16 = v14 + 8 * v8;
        v17 = *(v16 + 32);
        *(v16 + 32) = v11;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18 < -1)
    {
      __break(1u);
    }

    v3 = v18;
    v4 = v18 / 2;
  }

  return v1;
}

Swift::Int sub_1000849A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    for (; __CocoaDictionary.Iterator.next()(); ++*(v2 + 16))
    {
      sub_1000021C0(&qword_1000B59C0, &unk_100093050);
      swift_dynamicCast();
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_10006BDC0(v10 + 1, 1);
        v2 = v17;
      }

      v3 = *(v2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v5 = v2 + 64;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 64 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v16;
      *(*(v2 + 56) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100084BE4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
  }

  else if (v2)
  {
    v7 = *a1;

    a2(&v8, &v7);

    v5 = v8;

    *a1 = v5;
    return v5;
  }

  return v2;
}

uint64_t sub_100084C84(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v49 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
  v48 = result + 56;
LABEL_3:
  v8 = *(v1 + 16);
  if (v4 == v8)
  {
    goto LABEL_33;
  }

  v50 = v3;
  if (v4 >= v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = v5;
  v10 = 16 * v4;
  v11 = (v49 + 16 * v4);
  v13 = *v11;
  v12 = v11[1];

  result = sub_10004CDB4(v2);
  ++v4;
  v14 = (v48 + v10);
  v2 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_6:
  v7 = *(v2 + 16);
  if (v7)
  {
    v18 = 0;
    v5 = v9;
    v3 = v50;
    while (v18 < v7)
    {
      v19 = (v2 + 192 * v18);
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[5];
      v55 = v19[4];
      v56 = v22;
      v53 = v20;
      v54 = v21;
      v23 = v19[6];
      v24 = v19[7];
      v25 = v19[9];
      v59 = v19[8];
      v60 = v25;
      v57 = v23;
      v58 = v24;
      v26 = v19[10];
      v27 = v19[11];
      v28 = v19[13];
      v63 = v19[12];
      v64 = v28;
      v61 = v26;
      v62 = v27;
      if (v3)
      {
        result = sub_1000289DC(&v53, v52);
        v29 = v5;
        v30 = __OFSUB__(v3--, 1);
        if (v30)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v31 = v5[3];
        if (((v31 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v32 = v31 & 0xFFFFFFFFFFFFFFFELL;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
        v29 = swift_allocObject();
        v34 = (j__malloc_size(v29) - 32) / 192;
        v29[2] = v33;
        v29[3] = 2 * v34;
        v35 = v5[3] >> 1;
        v6 = &v29[24 * v35 + 4];
        v51 = (v34 & 0x7FFFFFFFFFFFFFFFLL) - v35;
        if (v5[2])
        {
          if (v29 >= v5 && v29 + 4 < &v5[24 * v35 + 4] && v29 == v5)
          {
            sub_1000289DC(&v53, v52);
          }

          else
          {
            sub_1000289DC(&v53, v52);
            memmove(v29 + 4, v5 + 4, 192 * v35);
          }

          v5[2] = 0;
        }

        else
        {
          sub_1000289DC(&v53, v52);
        }

        v3 = v51 - 1;
        if (__OFSUB__(v51, 1))
        {
          goto LABEL_39;
        }
      }

      ++v18;
      v36 = v53;
      v37 = v54;
      v38 = v56;
      v6[2] = v55;
      v6[3] = v38;
      *v6 = v36;
      v6[1] = v37;
      v39 = v57;
      v40 = v58;
      v41 = v60;
      v6[6] = v59;
      v6[7] = v41;
      v6[4] = v39;
      v6[5] = v40;
      v42 = v61;
      v43 = v62;
      v44 = v64;
      v6[10] = v63;
      v6[11] = v44;
      v6[8] = v42;
      v6[9] = v43;
      v6 += 12;
      v5 = v29;
      if (v2)
      {
        v7 = *(v2 + 16);
        if (v18 != v7)
        {
          continue;
        }
      }

      goto LABEL_3;
    }

    goto LABEL_38;
  }

LABEL_7:
  while (1)
  {
    v15 = *(v1 + 16);
    if (v4 == v15)
    {
      break;
    }

    if (v4 >= v15)
    {
      goto LABEL_37;
    }

    v17 = *(v14 - 1);
    v16 = *v14;

    result = sub_10004CDB4(v2);
    ++v4;
    v14 += 2;
    v2 = v17;
    if (v17)
    {
      goto LABEL_6;
    }
  }

  v5 = v9;
  v3 = v50;
LABEL_33:
  result = sub_10004CDB4(v2);
  v45 = v5[3];
  if (v45 < 2)
  {
    return v5;
  }

  v46 = v45 >> 1;
  v30 = __OFSUB__(v46, v3);
  v47 = v46 - v3;
  if (!v30)
  {
    v5[2] = v47;
    return v5;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_100084FE0(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(a1 + 32);
  v25 = *a1;
  v26 = v1;

  if (v4)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  else
  {
    result = v3(&v24, &v25);
    v8 = v24;
    v6 = _swiftEmptyArrayStorage;
    v5 = 0;
    if (v24)
    {
      v9 = &_swiftEmptyArrayStorage[4];
      while (1)
      {
        if (!v5)
        {
          v10 = v6[3];
          if (((v10 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_25;
          }

          v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          sub_1000021C0(&qword_1000B5FA0, &unk_100096540);
          v13 = swift_allocObject();
          v14 = j__malloc_size(v13);
          v15 = v14 - 32;
          if (v14 < 32)
          {
            v15 = v14 - 25;
          }

          v16 = v15 >> 3;
          v13[2] = v12;
          v13[3] = (2 * (v15 >> 3)) | 1;
          v17 = (v13 + 4);
          v18 = v6[3] >> 1;
          if (v6[2])
          {
            v19 = v6 + 4;
            if (v13 != v6 || v17 >= v19 + 8 * v18)
            {
              memmove(v13 + 4, v19, 8 * v18);
            }

            v6[2] = 0;
          }

          v9 = (v17 + 8 * v18);
          v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

          v6 = v13;
        }

        v20 = __OFSUB__(v5--, 1);
        if (v20)
        {
          break;
        }

        *v9++ = v8;
        result = v3(&v24, &v25);
        v8 = v24;
        if (!v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

LABEL_20:

  v21 = v6[3];
  if (v21 < 2)
  {
    return v6;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v5);
  v23 = v22 - v5;
  if (!v20)
  {
    v6[2] = v23;
    return v6;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100085194(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = a1;
  v5[3] = a2;
  swift_weakAssign();
  v5[5] = _swiftEmptyArrayStorage;
  v6 = *(a2 + 16);
  v28 = a1;
  v6(v31, a1, a2);
  CommandConfiguration.subcommands.getter();
  v8 = v7;
  result = sub_100027BE4(v31);
  v27 = *(v8 + 16);
  if (!v27)
  {
    goto LABEL_15;
  }

  v10 = 0;
  v11 = (v8 + 40);
  v25 = v5 + 5;
  v26 = v5;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 - 1);
    v13 = *v11;
    if (v12 == v28)
    {

      sub_10006720C();
      sub_1000858E0();
      swift_allocError();
      *v21 = v28;
      v21[1] = v13;
      swift_willThrow();
LABEL_13:

      return v5;
    }

    v29 = v10;
    v14 = v8;
    (*(v13 + 16))(v32, v12, v13);
    v15 = v32[18];

    sub_100027BE4(v32);
    v16 = (*(v13 + 24))(v12, v13);
    v32[21] = &v24;
    v30[0] = v16;
    v30[1] = v17;
    __chkstk_darwin();
    v23[2] = v30;
    v18 = sub_100083AB4(sub_100062BC0, v23, v15);

    if (v18)
    {

      sub_10006720C();
      sub_1000858E0();
      swift_allocError();
      *v22 = v12;
      v22[1] = v13 | 0x8000000000000000;
      swift_willThrow();
      v5 = v26;
      goto LABEL_13;
    }

    sub_100085194(v12, v13);
    v5 = v26;
    v8 = v14;
    if (v2)
    {
      break;
    }

    v19 = v25;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v10 = v29 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();

    v11 += 2;
    if (v27 == v10)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  return v5;
}

unint64_t sub_1000854F8(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000021C0(&qword_1000B59C8, &qword_100096550);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = (v3 + 7);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = v3[5];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *&v6[8 * v13];
      v15 = 1 << (result & v11);
      v16 = v3[6];
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v9)
        {
          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *&v6[8 * (v12 >> 6)];
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_16:
        *&v6[8 * v13] = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v17 = v3[2];
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_28;
        }

        v3[2] = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v22 = *(v20 + 8 * v19);
      v23 = v3[5];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v24 = ~(-1 << *(v3 + 32));
      v25 = result & v24;
      v26 = (result & v24) >> 6;
      v27 = *&v6[8 * v26];
      v28 = 1 << (result & v24);
      v29 = v3[6];
      if ((v28 & v27) != 0)
      {
        while (*(v29 + 8 * v25) != v22)
        {
          v25 = (v25 + 1) & v24;
          v26 = v25 >> 6;
          v27 = *&v6[8 * (v25 >> 6)];
          v28 = 1 << v25;
          if (((1 << v25) & v27) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *&v6[8 * v26] = v28 | v27;
        *(v29 + 8 * v25) = v22;
        v30 = v3[2];
        v8 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v8)
        {
          goto LABEL_30;
        }

        v3[2] = v31;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100085794()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000857CC@<X0>(Swift::UInt *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100083E34(*a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1000857FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100085834@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  result = sub_100084BE4(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_100085860(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B5FA8, &qword_100096558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000858E0()
{
  result = qword_1000B5FB0[0];
  if (!qword_1000B5FB0[0])
  {
    sub_10006720C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5FB0);
  }

  return result;
}

uint64_t sub_100085940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 16))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000859B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_100085A40(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_100085A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100099B50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100085B10(uint64_t a1)
{
  v2 = sub_100085CDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085B4C(uint64_t a1)
{
  v2 = sub_100085CDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolInfoHeader.init(from:)(uint64_t *a1)
{
  v3 = sub_1000021C0(&qword_1000B6038, &qword_1000965E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100002AA0(a1, a1[3]);
  sub_100085CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002B38(a1);
  return v9;
}

unint64_t sub_100085CDC()
{
  result = qword_1000BE760;
  if (!qword_1000BE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE760);
  }

  return result;
}

uint64_t sub_100085D30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000021C0(&qword_1000B6038, &qword_1000965E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_100085CDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B38(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100002B38(a1);
  *a2 = v11;
  return result;
}

__n128 ToolInfoV0.init(command:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 32);
  *(a2 + 56) = v2;
  *(a2 + 72) = *(a1 + 64);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *a2 = 0;
  *(a2 + 88) = *(a1 + 80);
  *(a2 + 24) = v4;
  return result;
}

unint64_t sub_100085F6C()
{
  if (*v0)
  {
    result = 0x646E616D6D6F63;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_100085FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000100099B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100086094(uint64_t a1)
{
  v2 = sub_10008A004();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000860D0(uint64_t a1)
{
  v2 = sub_10008A004();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static ToolInfoV0.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v13 = v2;
  v14 = v3;
  v4 = *(a1 + 56);
  v11[2] = *(a1 + 40);
  v11[3] = v4;
  v11[4] = *(a1 + 72);
  v12 = *(a1 + 88);
  v5 = *(a1 + 24);
  v11[0] = *(a1 + 8);
  v11[1] = v5;
  v6 = *(a2 + 56);
  v9[2] = *(a2 + 40);
  v9[3] = v6;
  v9[4] = *(a2 + 72);
  v10 = *(a2 + 88);
  v7 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v7;
  return _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v11, v9) & 1;
}

uint64_t ToolInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B6040, &qword_1000965E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v15 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008A004();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v15[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 56);
    v19 = *(v3 + 40);
    v20 = v13;
    v21 = *(v3 + 72);
    v22 = *(v3 + 88);
    v14 = *(v3 + 24);
    v17 = *(v3 + 8);
    v18 = v14;
    v23 = 1;
    sub_10008A058(v3, v15);
    sub_10008A090();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    sub_10008A0E4(v15);
  }

  return (*(v6 + 8))(v9, v5);
}

void ToolInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  CommandInfoV0.hash(into:)(a1);
}

Swift::Int ToolInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  CommandInfoV0.hash(into:)(v2);
  return Hasher._finalize()();
}

double ToolInfoV0.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008A114(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100086484(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return ToolInfoV0.encode(to:)(a1);
}

Swift::Int sub_1000864C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  CommandInfoV0.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100086528()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  CommandInfoV0.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100086584(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 7);
  v12[2] = *(a1 + 5);
  v12[3] = v3;
  v12[4] = *(a1 + 9);
  v13 = a1[11];
  v4 = *(a1 + 3);
  v12[0] = *(a1 + 1);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 3);
  v14[0] = *(a2 + 1);
  v14[1] = v6;
  v7 = *(a2 + 5);
  v8 = *(a2 + 7);
  v9 = *(a2 + 9);
  v15 = a2[11];
  v14[3] = v8;
  v14[4] = v9;
  v14[2] = v7;
  if (v2 == v5)
  {
    v10 = _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t CommandInfoV0.superCommands.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ArgumentInfoV0.sectionTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ArgumentInfoV0.sectionTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommandInfoV0.abstract.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CommandInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CommandInfoV0.discussion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t CommandInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CommandInfoV0.defaultSubcommand.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CommandInfoV0.defaultSubcommand.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CommandInfoV0.subcommands.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t CommandInfoV0.arguments.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

double CommandInfoV0.init(superCommands:commandName:abstract:discussion:defaultSubcommand:subcommands:arguments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = a1;
  if (!*(a1 + 16))
  {

    v17 = 0;
  }

  v19 = a10;
  v20 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v20 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    a4 = 0;
    a5 = 0;
  }

  v21 = a11;
  v22 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v22 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    a6 = 0;
    a7 = 0;
    v23 = a12;
    if (a10)
    {
      goto LABEL_11;
    }

LABEL_18:
    a8 = 0;
    if (!*(a11 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v23 = a12;
  if (!a10)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = HIBYTE(a10) & 0xF;
  if ((a10 & 0x2000000000000000) == 0)
  {
    v24 = a8 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    if (*(a11 + 16))
    {
      goto LABEL_15;
    }

LABEL_21:

    v21 = 0;
    if (*(v23 + 16))
    {
      goto LABEL_16;
    }

LABEL_22:

    v23 = 0;
    goto LABEL_16;
  }

  a8 = 0;
  v19 = 0;
  if (!*(a11 + 16))
  {
    goto LABEL_21;
  }

LABEL_15:
  if (!*(v23 + 16))
  {
    goto LABEL_22;
  }

LABEL_16:
  *&v32 = v17;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = a5;
  *(&v34 + 1) = a6;
  *&v35 = a7;
  *(&v35 + 1) = a8;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  v37 = v23;
  v38[0] = v17;
  v38[1] = a2;
  v38[2] = a3;
  v38[3] = a4;
  v38[4] = a5;
  v38[5] = a6;
  v38[6] = a7;
  v38[7] = a8;
  v38[8] = v19;
  v38[9] = v21;
  v38[10] = v23;
  sub_100085EA4(&v32, v31);
  sub_10008A0E4(v38);
  v25 = v35;
  v26 = v36;
  *(a9 + 32) = v34;
  *(a9 + 48) = v25;
  *(a9 + 64) = v26;
  *(a9 + 80) = v37;
  result = *&v32;
  v28 = v33;
  *a9 = v32;
  *(a9 + 16) = v28;
  return result;
}

uint64_t sub_100086A84()
{
  v1 = *v0;
  v2 = 0x6D6F437265707573;
  v3 = 0x616D6D6F63627573;
  if (v1 != 5)
  {
    v3 = 0x746E656D75677261;
  }

  v4 = 0x6973737563736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4E646E616D6D6F63;
  if (v1 != 1)
  {
    v5 = 0x7463617274736261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100086B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008A594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100086BB0(uint64_t a1)
{
  v2 = sub_10008A37C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086BEC(uint64_t a1)
{
  v2 = sub_10008A37C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CommandInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B6050, &qword_1000965F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008A37C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = *v3;
  HIBYTE(v20) = 0;
  sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
  sub_10008CC04(&qword_1000B6060);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v21) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = v3[9];
    HIBYTE(v20) = 5;
    sub_1000021C0(&qword_1000B6068, &qword_100096600);
    sub_10008A3D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = v3[10];
    HIBYTE(v20) = 6;
    sub_1000021C0(&qword_1000B6078, &qword_100096608);
    sub_10008A454();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void CommandInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v5 = *(v4 + 16);
    Hasher._combine(_:)(v5);
    if (v5)
    {
      v6 = (v4 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        String.hash(into:)();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = v2[1];
  v10 = v2[2];
  String.hash(into:)();
  if (v2[4])
  {
    v11 = v2[3];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v2[6])
    {
      goto LABEL_9;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    if (v2[8])
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  Hasher._combine(_:)(0);
  if (!v2[6])
  {
    goto LABEL_12;
  }

LABEL_9:
  v12 = v2[5];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (v2[8])
  {
LABEL_10:
    v13 = v2[7];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_14;
  }

LABEL_13:
  Hasher._combine(_:)(0);
LABEL_14:
  v14 = v2[9];
  if (v14)
  {
    Hasher._combine(_:)(1u);
    v15 = *(v14 + 16);
    Hasher._combine(_:)(v15);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        v17 = *(v16 + 16);
        v33[0] = *v16;
        v33[1] = v17;
        v18 = *(v16 + 32);
        v19 = *(v16 + 48);
        v20 = *(v16 + 64);
        v34 = *(v16 + 80);
        v33[3] = v19;
        v33[4] = v20;
        v33[2] = v18;
        sub_100085EA4(v33, v31);
        CommandInfoV0.hash(into:)(a1);
        sub_10008A0E4(v33);
        v16 += 88;
        --v15;
      }

      while (v15);
    }

    v21 = v2[10];
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_24:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  v21 = v2[10];
  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_19:
  Hasher._combine(_:)(1u);
  v22 = *(v21 + 16);
  Hasher._combine(_:)(v22);
  if (v22)
  {
    v23 = v21 + 32;
    do
    {
      v31[0] = *v23;
      v24 = *(v23 + 16);
      v25 = *(v23 + 32);
      v26 = *(v23 + 64);
      v31[3] = *(v23 + 48);
      v31[4] = v26;
      v31[1] = v24;
      v31[2] = v25;
      v27 = *(v23 + 80);
      v28 = *(v23 + 96);
      v29 = *(v23 + 112);
      v32 = *(v23 + 128);
      v31[6] = v28;
      v31[7] = v29;
      v31[5] = v27;
      sub_10008A52C(v31, v30);
      ArgumentInfoV0.hash(into:)(a1);
      sub_10008A564(v31);
      v23 += 136;
      --v22;
    }

    while (v22);
  }
}

Swift::Int CommandInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  CommandInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

double CommandInfoV0.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008A804(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_100087260()
{
  Hasher.init(_seed:)();
  CommandInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10008729C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t ArgumentInfoV0.NameInfoV0.KindV0.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1735290732;
  }

  if (a1 == 1)
  {
    return 0x74726F6873;
  }

  return 0xD000000000000012;
}

uint64_t sub_10008735C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x74726F6873;
  v5 = 0x8000000100099B20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000100099B20;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1735290732;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x74726F6873;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1735290732;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100087448@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22ArgumentParserToolInfo0aD2V0V04NamedE0V04KindE0O8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100087478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000100099B20;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1735290732;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100087580()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008761C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000876A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100087778()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_10008779C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_100087878(uint64_t a1)
{
  v2 = sub_10008AF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000878B4(uint64_t a1)
{
  v2 = sub_10008AF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArgumentInfoV0.NameInfoV0.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_1000021C0(&qword_1000B6090, &qword_100096610);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008AF64();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_10008AFB8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t ArgumentInfoV0.NameInfoV0.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int ArgumentInfoV0.NameInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100087C28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008B00C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_100087C78()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *v0;
  return ArgumentInfoV0.NameInfoV0.hashValue.getter();
}

uint64_t sub_100087C84()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100087D2C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  String.hash(into:)();

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ArgumentInfoV0.KindV0.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E6F697469736F70;
  }

  if (a1 == 1)
  {
    return 0x6E6F6974706FLL;
  }

  return 1734437990;
}

uint64_t sub_100087E4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v4 = 1734437990;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F697469736F70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v8 = 1734437990;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F697469736F70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100087F38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22ArgumentParserToolInfo0aD2V0V04KindE0O8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100087F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v2 != 1)
  {
    v5 = 1734437990;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697469736F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100088070()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10008810C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100088194()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t ArgumentInfoV0.names.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ArgumentInfoV0.preferredName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];

  return v1;
}

uint64_t ArgumentInfoV0.preferredName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[7];

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t ArgumentInfoV0.allValueStrings.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t (*ArgumentInfoV0.allValueStrings.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_1000883EC;
}

uint64_t sub_1000883EC(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    *(v3 + 96) = v4;
  }

  else
  {
    v7 = a1[2];

    *(v3 + 96) = v4;
  }

  return result;
}

uint64_t ArgumentInfoV0.abstract.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t ArgumentInfoV0.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t ArgumentInfoV0.discussion.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t ArgumentInfoV0.discussion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

__n128 ArgumentInfoV0.init(kind:shouldDisplay:sectionTitle:isOptional:isRepeating:names:preferredName:valueName:defaultValue:allValues:abstract:discussion:)@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  v20 = a14;
  v21 = a12;
  if (a7 && !*(a7 + 16))
  {

    a7 = 0;
    v22 = a15;
    if (a12)
    {
      goto LABEL_4;
    }

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v22 = a15;
  if (!a12)
  {
    goto LABEL_9;
  }

LABEL_4:
  v23 = a11;
  v24 = HIBYTE(a12) & 0xF;
  if ((a12 & 0x2000000000000000) == 0)
  {
    v24 = a11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    v25 = a7;

    a7 = v25;
    v23 = 0;
    v21 = 0;
  }

LABEL_10:
  v26 = a17;
  v49 = a7;
  if (a14)
  {
    v27 = a13;
    v28 = HIBYTE(a14) & 0xF;
    if ((a14 & 0x2000000000000000) == 0)
    {
      v28 = a13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {
      v29 = v23;

      v23 = v29;
      v27 = 0;
      v20 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = a19;
  if (v22 && !*(v22 + 16))
  {
    v35 = v27;
    v36 = v23;

    v27 = v35;
    v23 = v36;
    v22 = 0;
    if (a17)
    {
      goto LABEL_19;
    }

LABEL_24:
    v31 = 0;
    goto LABEL_25;
  }

  if (!a17)
  {
    goto LABEL_24;
  }

LABEL_19:
  v31 = a16;
  v32 = HIBYTE(a17) & 0xF;
  if ((a17 & 0x2000000000000000) == 0)
  {
    v32 = a16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    v33 = v27;
    v34 = v23;

    v27 = v33;
    v23 = v34;
    v31 = 0;
    v26 = 0;
  }

LABEL_25:
  if (a19)
  {
    v37 = a18;
    v38 = HIBYTE(a19) & 0xF;
    if ((a19 & 0x2000000000000000) == 0)
    {
      v38 = a18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      v44 = v27;
      v39 = v23;

      v27 = v44;
      v23 = v39;
      v37 = 0;
      v30 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  LOBYTE(v54) = a1;
  BYTE1(v54) = a2 & 1;
  *(&v54 + 1) = a3;
  v55.n128_u64[0] = a4;
  v55.n128_u8[8] = a5 & 1;
  v55.n128_u8[9] = a6 & 1;
  *&v56 = v49;
  *(&v56 + 1) = a8;
  v57 = a10;
  *&v58 = v23;
  *(&v58 + 1) = v21;
  *&v59 = v27;
  *(&v59 + 1) = v20;
  *&v60 = v22;
  *(&v60 + 1) = v31;
  *&v61 = v26;
  *(&v61 + 1) = v37;
  v62 = v30;
  v63[0] = a1;
  v63[1] = a2 & 1;
  v64 = a3;
  v65 = a4;
  v66 = a5 & 1;
  v67 = a6 & 1;
  v68 = v49;
  v69 = a8;
  v70 = a10;
  v71 = v23;
  v72 = v21;
  v73 = v27;
  v74 = v20;
  v75 = v22;
  v76 = v31;
  v77 = v26;
  v78 = v37;
  v79 = v30;
  sub_10008A52C(&v54, v53);
  sub_10008A564(v63);
  v40 = v61;
  *(a9 + 96) = v60;
  *(a9 + 112) = v40;
  *(a9 + 128) = v62;
  v41 = v57;
  *(a9 + 32) = v56;
  *(a9 + 48) = v41;
  v42 = v59;
  *(a9 + 64) = v58;
  *(a9 + 80) = v42;
  result = v55;
  *a9 = v54;
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_1000887B0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65756C61566C6C61;
    v7 = 0x7463617274736261;
    if (a1 != 10)
    {
      v7 = 0x6973737563736964;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6572726566657270;
    v9 = 0x6D614E65756C6176;
    if (a1 != 7)
    {
      v9 = 0x56746C7561666564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684957547;
    v2 = 0x6E6F6974704F7369;
    v3 = 0x7461657065527369;
    if (a1 != 4)
    {
      v3 = 0x73656D616ELL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6944646C756F6873;
    if (a1 != 1)
    {
      v4 = 0x546E6F6974636573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100088974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008B39C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000889A8(uint64_t a1)
{
  v2 = sub_10008B21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000889E4(uint64_t a1)
{
  v2 = sub_10008B21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ArgumentInfoV0.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000021C0(&qword_1000B60A0, &qword_100096618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008B21C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = *v3;
  v27 = 0;
  sub_10008B270();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 1);
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    LOBYTE(v25) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 24);
    LOBYTE(v25) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 25);
    LOBYTE(v25) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v25 = *(v3 + 32);
    v27 = 5;
    sub_1000021C0(&qword_1000B60B0, &qword_100096620);
    sub_10008B2C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *(v3 + 40);
    v26 = *(v3 + 56);
    v27 = 6;
    sub_10008B348();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);
    LOBYTE(v25) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + 80);
    v19 = *(v3 + 88);
    LOBYTE(v25) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v25 = *(v3 + 96);
    v27 = 9;
    sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
    sub_10008CC04(&qword_1000B6060);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 104);
    v21 = *(v3 + 112);
    LOBYTE(v25) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 120);
    v23 = *(v3 + 128);
    LOBYTE(v25) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void ArgumentInfoV0.hash(into:)(uint64_t a1)
{
  v2 = v1;
  *v1;
  String.hash(into:)();

  Hasher._combine(_:)(v2[1] & 1);
  if (*(v2 + 2))
  {
    v4 = *(v2 + 1);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2[24] & 1);
  Hasher._combine(_:)(v2[25] & 1);
  v5 = *(v2 + 4);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    sub_10008992C(a1, v5);
    if (*(v2 + 7))
    {
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v2 + 7))
    {
LABEL_6:
      v6 = *(v2 + 6);
      v7 = v2[40];
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      String.hash(into:)();
      if (*(v2 + 9))
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  Hasher._combine(_:)(0);
  if (*(v2 + 9))
  {
LABEL_7:
    v8 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v2 + 11))
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  Hasher._combine(_:)(0);
  if (*(v2 + 11))
  {
LABEL_8:
    v9 = *(v2 + 10);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v10 = *(v2 + 12);
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_21:
    Hasher._combine(_:)(0);
    if (*(v2 + 14))
    {
      goto LABEL_13;
    }

LABEL_22:
    Hasher._combine(_:)(0);
    if (*(v2 + 16))
    {
      goto LABEL_14;
    }

LABEL_23:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  v10 = *(v2 + 12);
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_9:
  Hasher._combine(_:)(1u);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      String.hash(into:)();

      v12 += 2;
      --v11;
    }

    while (v11);
  }

  if (!*(v2 + 14))
  {
    goto LABEL_22;
  }

LABEL_13:
  v15 = *(v2 + 13);
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v2 + 16))
  {
    goto LABEL_23;
  }

LABEL_14:
  v16 = *(v2 + 15);
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int ArgumentInfoV0.hashValue.getter()
{
  Hasher.init(_seed:)();
  ArgumentInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 ArgumentInfoV0.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008B790(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9;
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_100089180()
{
  Hasher.init(_seed:)();
  ArgumentInfoV0.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000891BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100089240(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v8 = *(v3 - 16);
      v9 = *(v4 - 16);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v8 == 1)
      {
        v12 = 0x74726F6873;
      }

      else
      {
        v12 = 0xD000000000000012;
      }

      if (v8 == 1)
      {
        v13 = 0xE500000000000000;
      }

      else
      {
        v13 = 0x8000000100099B20;
      }

      if (*(v3 - 16))
      {
        v14 = v12;
      }

      else
      {
        v14 = 1735290732;
      }

      if (*(v3 - 16))
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (v9 == 1)
      {
        v16 = 0x74726F6873;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (v9 == 1)
      {
        v17 = 0xE500000000000000;
      }

      else
      {
        v17 = 0x8000000100099B20;
      }

      if (*(v4 - 16))
      {
        v18 = v16;
      }

      else
      {
        v18 = 1735290732;
      }

      if (*(v4 - 16))
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      if (v14 == v18 && v15 == v19)
      {
        v20 = *v3;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {

          return 0;
        }
      }

      if (v7 == v11 && v6 == v10)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100089440(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  while (1)
  {
    v6 = v4 + 88 * v3;
    v7 = *(v6 + 48);
    *&v38[32] = *(v6 + 32);
    *&v38[48] = v7;
    *&v38[64] = *(v6 + 64);
    v39 = *(v6 + 80);
    v8 = *(v6 + 16);
    *v38 = *v6;
    *&v38[16] = v8;
    v9 = v5 + 88 * v3;
    v10 = *(v9 + 48);
    *&v40[32] = *(v9 + 32);
    *&v40[48] = v10;
    *&v40[64] = *(v9 + 64);
    v41 = *(v9 + 80);
    v11 = *(v9 + 16);
    *v40 = *v9;
    *&v40[16] = v11;
    if (!*v38)
    {
      if (*v40)
      {
        return 0;
      }

      goto LABEL_19;
    }

    if (!*v40)
    {
      return 0;
    }

    v12 = *(*v38 + 16);
    if (v12 != *(*v40 + 16))
    {
      return 0;
    }

    if (v12 && *v38 != *v40)
    {
      break;
    }

LABEL_19:
    if (*&v38[8] != *&v40[8] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (*&v38[32])
    {
      if (!*&v40[32] || *&v38[24] != *&v40[24] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[32])
    {
      return 0;
    }

    if (*&v38[48])
    {
      if (!*&v40[48] || *&v38[40] != *&v40[40] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[48])
    {
      return 0;
    }

    if (*&v38[64])
    {
      if (!*&v40[64] || *&v38[56] != *&v40[56] && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*&v40[64])
    {
      return 0;
    }

    v16 = *&v38[72];
    v17 = *&v40[72];
    if (*&v38[72])
    {
      if (!*&v40[72])
      {
        return 0;
      }

      sub_100085EA4(v38, v37);
      sub_100085EA4(v40, v37);

      v18 = sub_100089440(v16, v17);

      if ((v18 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (*&v40[72])
      {
        return 0;
      }

      sub_100085EA4(v38, v37);
      sub_100085EA4(v40, v37);
    }

    v19 = v39;
    v20 = v41;
    if (v39)
    {
      if (!v41)
      {
        goto LABEL_59;
      }

      v21 = *(v39 + 16);
      if (v21 != *(v41 + 16))
      {
        goto LABEL_59;
      }

      if (v21 && v39 != v41)
      {

        v22 = 32;
        while (1)
        {
          v42[0] = *(v19 + v22);
          v23 = *(v19 + v22 + 16);
          v24 = *(v19 + v22 + 32);
          v25 = *(v19 + v22 + 64);
          v42[3] = *(v19 + v22 + 48);
          v42[4] = v25;
          v42[1] = v23;
          v42[2] = v24;
          v26 = *(v19 + v22 + 80);
          v27 = *(v19 + v22 + 96);
          v28 = *(v19 + v22 + 112);
          v43 = *(v19 + v22 + 128);
          v42[6] = v27;
          v42[7] = v28;
          v42[5] = v26;
          v44[0] = *(v20 + v22);
          v29 = *(v20 + v22 + 16);
          v30 = *(v20 + v22 + 32);
          v31 = *(v20 + v22 + 64);
          v44[3] = *(v20 + v22 + 48);
          v44[4] = v31;
          v44[1] = v29;
          v44[2] = v30;
          v32 = *(v20 + v22 + 80);
          v33 = *(v20 + v22 + 96);
          v34 = *(v20 + v22 + 112);
          v45 = *(v20 + v22 + 128);
          v44[6] = v33;
          v44[7] = v34;
          v44[5] = v32;
          sub_10008A52C(v42, v37);
          sub_10008A52C(v44, v37);
          v35 = _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v42, v44);
          sub_10008A564(v44);
          sub_10008A564(v42);
          if ((v35 & 1) == 0)
          {
            break;
          }

          v22 += 136;
          if (!--v21)
          {

            goto LABEL_54;
          }
        }

LABEL_59:
        sub_10008A0E4(v40);
        sub_10008A0E4(v38);
        return 0;
      }

LABEL_54:
      sub_10008A0E4(v40);
      sub_10008A0E4(v38);
    }

    else
    {
      sub_10008A0E4(v40);
      sub_10008A0E4(v38);
      if (v20)
      {
        return 0;
      }
    }

    if (++v3 == v2)
    {
      return 1;
    }
  }

  v13 = (*v38 + 40);
  v14 = (*v40 + 40);
  while (1)
  {
    v15 = *(v13 - 1) == *(v14 - 1) && *v13 == *v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v13 += 2;
    v14 += 2;
    if (!--v12)
    {
      goto LABEL_19;
    }
  }
}

uint64_t sub_100089810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v13 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v5 = *(v3 + 112);
        v16[6] = *(v3 + 96);
        v16[7] = v5;
        v17 = *(v3 + 128);
        v6 = *(v3 + 48);
        v16[2] = *(v3 + 32);
        v16[3] = v6;
        v7 = *(v3 + 80);
        v16[4] = *(v3 + 64);
        v16[5] = v7;
        v8 = *(v3 + 16);
        v16[0] = *v3;
        v16[1] = v8;
        v9 = *(v4 + 112);
        v18[6] = *(v4 + 96);
        v18[7] = v9;
        v19 = *(v4 + 128);
        v10 = *(v4 + 48);
        v18[2] = *(v4 + 32);
        v18[3] = v10;
        v11 = *(v4 + 80);
        v18[4] = *(v4 + 64);
        v18[5] = v11;
        v12 = *(v4 + 16);
        v18[0] = *v4;
        v18[1] = v12;
        sub_10008A52C(v16, v15);
        sub_10008A52C(v18, v15);
        v13 = _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(v16, v18);
        sub_10008A564(v18);
        sub_10008A564(v16);
        if ((v13 & 1) == 0)
        {
          break;
        }

        v3 += 136;
        v4 += 136;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_10008992C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 48);
    do
    {
      v5 = *(v4 - 16);
      v7 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      String.hash(into:)();
      swift_bridgeObjectRelease_n();
      v4 += 3;
      --v3;
    }

    while (v3);
  }
}

uint64_t _s22ArgumentParserToolInfo0aD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F6974706FLL;
  if (v3 != 1)
  {
    v5 = 1734437990;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E6F697469736F70;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000006C61;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6E6F6974706FLL;
  if (*a2 != 1)
  {
    v10 = 1734437990;
    v9 = 0xE400000000000000;
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E6F697469736F70;
  }

  if (*a2)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xEA00000000006C61;
  }

  if (v6 == v11 && v7 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[1] ^ *(a2 + 1)))
  {
    return 0;
  }

  v15 = *(a1 + 2);
  v16 = *(a2 + 16);
  if (v15)
  {
    if (!v16 || (*(a1 + 1) != *(a2 + 8) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((a1[24] ^ *(a2 + 24)) & 1) != 0 || ((a1[25] ^ *(a2 + 25)))
  {
    return 0;
  }

  v17 = *(a1 + 4);
  v18 = *(a2 + 32);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *(a2 + 32);

    v20 = sub_100089240(v17, v18);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v21 = *(a1 + 7);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *(a1 + 6);
    v24 = *(a2 + 48);
    v25 = 1735290732;
    if (*(a1 + 5))
    {
      if (*(a1 + 5) == 1)
      {
        v26 = 0xE500000000000000;
        v27 = 0x74726F6873;
      }

      else
      {
        v27 = 0xD000000000000012;
        v26 = 0x8000000100099B20;
      }
    }

    else
    {
      v26 = 0xE400000000000000;
      v27 = 1735290732;
    }

    if (*(a2 + 40))
    {
      if (*(a2 + 40) == 1)
      {
        v28 = 0xE500000000000000;
        v25 = 0x74726F6873;
      }

      else
      {
        v25 = 0xD000000000000012;
        v28 = 0x8000000100099B20;
      }
    }

    else
    {
      v28 = 0xE400000000000000;
    }

    if (v27 == v25 && v26 == v28)
    {
      v29 = *(a2 + 56);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {

        return 0;
      }
    }

    if (v23 == v24 && v21 == v22)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v32 = *(a1 + 9);
  v33 = *(a2 + 72);
  if (v32)
  {
    if (!v33 || (*(a1 + 8) != *(a2 + 64) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(a1 + 11);
  v35 = *(a2 + 88);
  if (v34)
  {
    if (!v35 || (*(a1 + 10) != *(a2 + 80) || v34 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  v36 = *(a1 + 12);
  v37 = *(a2 + 96);
  if (v36)
  {
    if (!v37 || (sub_100055CD4(v36, v37) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = *(a1 + 14);
  v39 = *(a2 + 112);
  if (v38)
  {
    if (!v39 || (*(a1 + 13) != *(a2 + 104) || v38 != v39) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = *(a1 + 16);
  v41 = *(a2 + 128);
  if (v40)
  {
    if (!v41 || (*(a1 + 15) != *(a2 + 120) || v40 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  return 1;
}

uint64_t _s22ArgumentParserToolInfo07CommandD2V0V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4)
  {
    if (!v5 || (sub_100055CD4(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[6];
  v10 = a2[6];
  if (v9)
  {
    if (!v10 || (a1[5] != a2[5] || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[8];
  v12 = a2[8];
  if (v11)
  {
    if (!v12 || (a1[7] != a2[7] || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[9];
  v14 = a2[9];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = a2[9];

    v16 = sub_100089440(v13, v14);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v17 = a1[10];
  v18 = a2[10];
  if (v17)
  {
    if (v18)
    {

      v19 = sub_100089810(v17, v18);

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!v18)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10008A004()
{
  result = qword_1000BE768;
  if (!qword_1000BE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE768);
  }

  return result;
}

unint64_t sub_10008A090()
{
  result = qword_1000B6048;
  if (!qword_1000B6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6048);
  }

  return result;
}

uint64_t sub_10008A114@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v4 = sub_1000021C0(&qword_1000B6168, &unk_100097200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008A004();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002B38(a1);
  }

  v10 = v5;
  v11 = v38;
  LOBYTE(v18) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  sub_10008CD48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v4);
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v32 = v26;
  v33 = v27;
  *&v17[0] = v12;
  *(&v17[4] + 8) = v30;
  *(&v17[5] + 1) = v31;
  *(&v17[3] + 8) = v29;
  *(&v17[2] + 8) = v28;
  *(v17 + 8) = v26;
  *(&v17[1] + 8) = v27;
  sub_10008A058(v17, &v18);
  sub_100002B38(a1);
  v18 = v12;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v19 = v32;
  v20 = v33;
  result = sub_10008CE74(&v18);
  v14 = v17[3];
  v11[2] = v17[2];
  v11[3] = v14;
  v15 = v17[5];
  v11[4] = v17[4];
  v11[5] = v15;
  v16 = v17[1];
  *v11 = v17[0];
  v11[1] = v16;
  return result;
}

unint64_t sub_10008A37C()
{
  result = qword_1000BE770;
  if (!qword_1000BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE770);
  }

  return result;
}

unint64_t sub_10008A3D0()
{
  result = qword_1000B6070;
  if (!qword_1000B6070)
  {
    sub_100002B84(&qword_1000B6068, &qword_100096600);
    sub_10008A090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6070);
  }

  return result;
}

unint64_t sub_10008A454()
{
  result = qword_1000B6080;
  if (!qword_1000B6080)
  {
    sub_100002B84(&qword_1000B6078, &qword_100096608);
    sub_10008A4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6080);
  }

  return result;
}

unint64_t sub_10008A4D8()
{
  result = qword_1000B6088;
  if (!qword_1000B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6088);
  }

  return result;
}

uint64_t sub_10008A594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F437265707573 && a2 == 0xED000073646E616DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E646E616D6D6F63 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100099B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D6D6F63627573 && a2 == 0xEB0000000073646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
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

uint64_t sub_10008A804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000021C0(&qword_1000B6140, &qword_1000971F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v30 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008A37C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
    LOBYTE(v40) = 0;
    sub_10008CC04(&qword_1000B6128);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v46[0];
    LOBYTE(v46[0]) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v12;
    LOBYTE(v46[0]) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = a2;
    v37 = v14;
    LOBYTE(v46[0]) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v34 = v15;
    v35 = v13;
    LOBYTE(v46[0]) = 4;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    v33 = v18;
    sub_1000021C0(&qword_1000B6068, &qword_100096600);
    LOBYTE(v40) = 5;
    sub_10008CCC4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v11;
    v21 = v46[0];
    sub_1000021C0(&qword_1000B6078, &qword_100096608);
    v47 = 6;
    sub_10008CD9C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v31 = v48;
    v22 = v38;
    *&v40 = v38;
    v23 = v32;
    *(&v40 + 1) = v32;
    v24 = v39;
    *&v41 = v39;
    *(&v41 + 1) = v35;
    v25 = v37;
    *&v42 = v37;
    *(&v42 + 1) = v34;
    *&v43 = v17;
    *(&v43 + 1) = v33;
    *&v44 = v20;
    *(&v44 + 1) = v21;
    v45 = v48;
    sub_100085EA4(&v40, v46);
    sub_100002B38(a1);
    v46[0] = v22;
    v46[1] = v23;
    v46[2] = v24;
    v46[3] = v35;
    v46[4] = v25;
    v46[5] = v34;
    v46[6] = v17;
    v46[7] = v33;
    v46[8] = v20;
    v46[9] = v21;
    v46[10] = v31;
    result = sub_10008A0E4(v46);
    v27 = v43;
    v28 = v36;
    *(v36 + 32) = v42;
    *(v28 + 48) = v27;
    *(v28 + 64) = v44;
    *(v28 + 80) = v45;
    v29 = v41;
    *v28 = v40;
    *(v28 + 16) = v29;
  }

  return result;
}

unint64_t _s22ArgumentParserToolInfo0aD2V0V04NamedE0V04KindE0O8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AF950, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s22ArgumentParserToolInfo0aD2V0V04NamedE0V23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  if (!a1)
  {
    v12 = 0xE400000000000000;
    v11 = 1735290732;
    v13 = a4;
    if (a4)
    {
      goto LABEL_9;
    }

LABEL_18:
    v15 = 0xE400000000000000;
    if (v11 != 1735290732)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v11 = 0x74726F6873;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (v10 == 1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0x8000000100099B20;
  }

  v13 = a4;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v13 == 1)
  {
    v14 = 0x74726F6873;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (v13 == 1)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0x8000000100099B20;
  }

  if (v11 != v14)
  {
LABEL_21:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v16 & 1) == 0)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v12 != v15)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10008AF64()
{
  result = qword_1000BE778;
  if (!qword_1000BE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BE778);
  }

  return result;
}

unint64_t sub_10008AFB8()
{
  result = qword_1000B6098;
  if (!qword_1000B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6098);
  }

  return result;
}

uint64_t sub_10008B00C(uint64_t *a1)
{
  v3 = sub_1000021C0(&qword_1000B6130, &qword_1000971F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100002AA0(a1, v8);
  sub_10008AF64();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    sub_10008CC70();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002B38(a1);
  return v8;
}

unint64_t _s22ArgumentParserToolInfo0aD2V0V04KindE0O8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000AF9B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008B21C()
{
  result = qword_1000BE780[0];
  if (!qword_1000BE780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BE780);
  }

  return result;
}

unint64_t sub_10008B270()
{
  result = qword_1000B60A8;
  if (!qword_1000B60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60A8);
  }

  return result;
}

unint64_t sub_10008B2C4()
{
  result = qword_1000B60B8;
  if (!qword_1000B60B8)
  {
    sub_100002B84(&qword_1000B60B0, &qword_100096620);
    sub_10008B348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60B8);
  }

  return result;
}

unint64_t sub_10008B348()
{
  result = qword_1000B60C0;
  if (!qword_1000B60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60C0);
  }

  return result;
}

uint64_t sub_10008B39C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6944646C756F6873 && a2 == 0xED000079616C7073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEC000000656C7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461657065527369 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xED0000656D614E64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D614E65756C6176 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65756C61566C6C61 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463617274736261 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6973737563736964 && a2 == 0xEA00000000006E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10008B790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_1000021C0(&qword_1000B6108, &qword_1000971E8);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10008B21C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v50 = v2;
LABEL_4:
    sub_100002B38(a1);
  }

  LOBYTE(v51) = 0;
  sub_10008CAD8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v60;
  LOBYTE(v60) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v60) = 2;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = v13;
  LOBYTE(v60) = 3;
  v76 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v60) = 4;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v11;
  sub_1000021C0(&qword_1000B60B0, &qword_100096620);
  LOBYTE(v51) = 5;
  sub_10008CB2C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v60;
  LOBYTE(v51) = 6;
  sub_10008CBB0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v60;
  v43 = v61;
  LOBYTE(v60) = 7;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v5;
  v42 = v15;
  LOBYTE(v60) = 8;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v17;
  v50 = 0;
  v18 = v16;
  sub_1000021C0(&qword_1000B6058, &qword_1000965F8);
  LOBYTE(v51) = 9;
  sub_10008CC04(&qword_1000B6128);
  v19 = v50;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50 = v19;
  if (v19)
  {
    (*(v41 + 8))(v8, v49);
    goto LABEL_4;
  }

  v38 = v60;
  LOBYTE(v60) = 10;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = 0;
  v21 = v20;
  v77 = 11;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v22;
  v50 = 0;
  v23 = v46 & 1;
  v34 = v46 & 1;
  v76 &= 1u;
  v46 = v45 & 1;
  (*(v41 + 8))(v8, v49);
  HIDWORD(v32) = v10;
  LOBYTE(v51) = v10;
  BYTE1(v51) = v23;
  v24 = v48;
  *(&v51 + 1) = v47;
  *&v52 = v48;
  BYTE8(v52) = v76;
  BYTE9(v52) = v46;
  *&v53 = v44;
  *(&v53 + 1) = v14;
  v33 = v14;
  v54 = v43;
  v25 = v40;
  *&v55 = v39;
  *(&v55 + 1) = v42;
  *&v56 = v18;
  *(&v56 + 1) = v40;
  v26 = v38;
  *&v57 = v38;
  *(&v57 + 1) = v37;
  v27 = v35;
  *&v58 = v21;
  *(&v58 + 1) = v35;
  v59 = v36;
  sub_10008A52C(&v51, &v60);
  sub_100002B38(a1);
  LOBYTE(v60) = BYTE4(v32);
  BYTE1(v60) = v34;
  *&v61 = v47;
  *(&v61 + 1) = v24;
  v62 = v76;
  v63 = v46;
  v64 = v44;
  v65 = v33;
  v66 = v43;
  v67 = v39;
  v68 = v42;
  v69 = v18;
  v70 = v25;
  v71 = v26;
  v72 = v37;
  v73 = v21;
  v74 = v27;
  v75 = v36;
  result = sub_10008A564(&v60);
  v28 = v58;
  *(a2 + 96) = v57;
  *(a2 + 112) = v28;
  *(a2 + 128) = v59;
  v29 = v54;
  *(a2 + 32) = v53;
  *(a2 + 48) = v29;
  v30 = v56;
  *(a2 + 64) = v55;
  *(a2 + 80) = v30;
  v31 = v52;
  *a2 = v51;
  *(a2 + 16) = v31;
  return result;
}

unint64_t sub_10008BE6C()
{
  result = qword_1000B60C8;
  if (!qword_1000B60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60C8);
  }

  return result;
}

unint64_t sub_10008BEC4()
{
  result = qword_1000B60D0;
  if (!qword_1000B60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60D0);
  }

  return result;
}

unint64_t sub_10008BF1C()
{
  result = qword_1000B60D8;
  if (!qword_1000B60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60D8);
  }

  return result;
}

unint64_t sub_10008BF74()
{
  result = qword_1000B60E0;
  if (!qword_1000B60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60E0);
  }

  return result;
}

unint64_t sub_10008BFCC()
{
  result = qword_1000B60E8;
  if (!qword_1000B60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60E8);
  }

  return result;
}

unint64_t sub_10008C024()
{
  result = qword_1000B60F0;
  if (!qword_1000B60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60F0);
  }

  return result;
}

__n128 sub_10008C088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 sub_10008C0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10008C0D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10008C120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10008C184(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10008C1B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10008C214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10008C298(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10008C2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10008C2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArgumentInfoV0.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008C50C()
{
  result = qword_1000BF610[0];
  if (!qword_1000BF610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BF610);
  }

  return result;
}

unint64_t sub_10008C564()
{
  result = qword_1000BF820[0];
  if (!qword_1000BF820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BF820);
  }

  return result;
}

unint64_t sub_10008C5BC()
{
  result = qword_1000BFA30[0];
  if (!qword_1000BFA30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFA30);
  }

  return result;
}

unint64_t sub_10008C614()
{
  result = qword_1000BFC40[0];
  if (!qword_1000BFC40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFC40);
  }

  return result;
}

unint64_t sub_10008C66C()
{
  result = qword_1000BFE50[0];
  if (!qword_1000BFE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFE50);
  }

  return result;
}

unint64_t sub_10008C6C4()
{
  result = qword_1000BFF60;
  if (!qword_1000BFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BFF60);
  }

  return result;
}

unint64_t sub_10008C71C()
{
  result = qword_1000BFF68[0];
  if (!qword_1000BFF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFF68);
  }

  return result;
}

unint64_t sub_10008C774()
{
  result = qword_1000BFFF0;
  if (!qword_1000BFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BFFF0);
  }

  return result;
}

unint64_t sub_10008C7CC()
{
  result = qword_1000BFFF8[0];
  if (!qword_1000BFFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BFFF8);
  }

  return result;
}

unint64_t sub_10008C824()
{
  result = qword_1000C0080;
  if (!qword_1000C0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0080);
  }

  return result;
}

unint64_t sub_10008C87C()
{
  result = qword_1000C0088[0];
  if (!qword_1000C0088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C0088);
  }

  return result;
}

unint64_t sub_10008C8D4()
{
  result = qword_1000C0110;
  if (!qword_1000C0110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0110);
  }

  return result;
}

unint64_t sub_10008C92C()
{
  result = qword_1000C0118[0];
  if (!qword_1000C0118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C0118);
  }

  return result;
}

unint64_t sub_10008C984()
{
  result = qword_1000C01A0;
  if (!qword_1000C01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C01A0);
  }

  return result;
}

unint64_t sub_10008C9DC()
{
  result = qword_1000C01A8[0];
  if (!qword_1000C01A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C01A8);
  }

  return result;
}

unint64_t sub_10008CA30()
{
  result = qword_1000B60F8;
  if (!qword_1000B60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B60F8);
  }

  return result;
}

unint64_t sub_10008CA84()
{
  result = qword_1000B6100;
  if (!qword_1000B6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6100);
  }

  return result;
}

unint64_t sub_10008CAD8()
{
  result = qword_1000B6110;
  if (!qword_1000B6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6110);
  }

  return result;
}

unint64_t sub_10008CB2C()
{
  result = qword_1000B6118;
  if (!qword_1000B6118)
  {
    sub_100002B84(&qword_1000B60B0, &qword_100096620);
    sub_10008CBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6118);
  }

  return result;
}

unint64_t sub_10008CBB0()
{
  result = qword_1000B6120;
  if (!qword_1000B6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6120);
  }

  return result;
}

uint64_t sub_10008CC04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(&qword_1000B6058, &qword_1000965F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008CC70()
{
  result = qword_1000B6138;
  if (!qword_1000B6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6138);
  }

  return result;
}

unint64_t sub_10008CCC4()
{
  result = qword_1000B6148;
  if (!qword_1000B6148)
  {
    sub_100002B84(&qword_1000B6068, &qword_100096600);
    sub_10008CD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6148);
  }

  return result;
}

unint64_t sub_10008CD48()
{
  result = qword_1000B6150;
  if (!qword_1000B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6150);
  }

  return result;
}

unint64_t sub_10008CD9C()
{
  result = qword_1000B6158;
  if (!qword_1000B6158)
  {
    sub_100002B84(&qword_1000B6078, &qword_100096608);
    sub_10008CE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6158);
  }

  return result;
}

unint64_t sub_10008CE20()
{
  result = qword_1000B6160;
  if (!qword_1000B6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6160);
  }

  return result;
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = Character.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

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

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}