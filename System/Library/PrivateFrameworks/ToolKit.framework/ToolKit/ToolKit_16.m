uint64_t sub_1C8DDAA4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  v21 = *a1;

  swift_bridgeObjectRetain_n();

  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v2 + 48) + ((v9 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1C8CAE064();
    v17 = v16;

    if (v17)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v18 = v3[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
      sub_1C90648EC();
      v19 = *(v3[6] + 16 * v15 + 8);

      v20 = *(v3[7] + 8 * v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
      result = sub_1C906490C();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      *a2 = v21;
      a2[1] = v2;
      a2[2] = v3;
      return result;
    }

    v6 = *(v2 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DDAC0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315498, &qword_1C907D0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3154A0, &qword_1C907D0D8);
  sub_1C8D28184(&qword_1EC3154A8, &qword_1EC315498, &qword_1C907D0D0);
  v74 = sub_1C9063E2C();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 48);
    while (1)
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v3;
      swift_bridgeObjectRetain_n();

      sub_1C8CC7E94(v8);
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_1C8D59B8C();
      if (__OFADD__(*(v74 + 16), (v10 & 1) == 0))
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3154B0, &unk_1C907D0E0);
      v13 = v74;
      if (sub_1C90648EC())
      {
        v14 = sub_1C8D59B8C();
        if ((v12 & 1) != (v15 & 1))
        {
          goto LABEL_57;
        }

        v11 = v14;
        v13 = v74;
      }

      if (v12)
      {

        v13 = v74;
      }

      else
      {
        v13[(v11 >> 6) + 8] |= 1 << v11;
        *(v13[6] + 8 * v11) = v5;
        *(v13[7] + 8 * v11) = MEMORY[0x1E69E7CC0];
        v16 = v13[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_55;
        }

        v13[2] = v18;
      }

      v19 = v13[7];
      v20 = *(v19 + 8 * v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v11) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v20 + 16);
        sub_1C8D014F4();
        v20 = v25;
        *(v19 + 8 * v11) = v25;
      }

      v22 = *(v20 + 16);
      if (v22 >= *(v20 + 24) >> 1)
      {
        sub_1C8D014F4();
        v20 = v26;
        *(v19 + 8 * v11) = v26;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (v20 + 24 * v22);
      v23[4] = v5;
      v23[5] = v6;
      v23[6] = v7;
      v4 += 3;
      v3 = sub_1C8DDB378;
      if (!--v2)
      {
        goto LABEL_18;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_18:
    v27 = 0;
    v28 = v74;
    v29 = v74 + 64;
    v30 = 1 << *(v74 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v74 + 64);
    v33 = (v30 + 63) >> 6;
    v69 = MEMORY[0x1E69E7CC0];
    v64 = v3;
    v63 = v33;
    if (!v32)
    {
      goto LABEL_22;
    }

LABEL_26:
    while (1)
    {
      v35 = (v27 << 9) | (8 * __clz(__rbit64(v32)));
      v36 = *(*(v28 + 56) + v35);
      if (!*(v36 + 16))
      {
        break;
      }

      v65 = v32;
      v66 = v27;
      v37 = *(v36 + 40);
      v68 = *(*(v28 + 48) + v35);

      v67 = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
      v38 = sub_1C9063E2C();
      v72 = *(v36 + 16);
      if (v72)
      {
        v39 = 0;
        v70 = v36;
        v71 = v36 + 32;
        while (2)
        {
          if (v39 >= *(v36 + 16))
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v40 = *(v71 + 24 * v39 + 16);
          v73 = v39 + 1;
          v41 = 1 << *(v40 + 32);
          if (v41 < 64)
          {
            v42 = ~(-1 << v41);
          }

          else
          {
            v42 = -1;
          }

          v43 = v42 & *(v40 + 64);
          v44 = (v41 + 63) >> 6;

          v45 = 0;
          if (!v43)
          {
            goto LABEL_35;
          }

          do
          {
            v46 = v45;
LABEL_39:
            v47 = __clz(__rbit64(v43));
            v43 &= v43 - 1;
            v48 = v47 | (v46 << 6);
            v49 = (*(v40 + 48) + 16 * v48);
            v50 = *v49;
            v51 = v49[1];
            v52 = *(*(v40 + 56) + 8 * v48);

            v53 = sub_1C8CB26F8(v50);
            v54 = MEMORY[0x1E69E7CD0];
            if (v53)
            {
              v54 = v53;
            }

            v75 = v54;
            sub_1C9036768(v52);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            sub_1C8D64654(v75, v50, v51, v55);
          }

          while (v43);
          while (1)
          {
LABEL_35:
            v46 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
              goto LABEL_52;
            }

            if (v46 >= v44)
            {
              break;
            }

            v43 = *(v40 + 64 + 8 * v46);
            ++v45;
            if (v43)
            {
              v45 = v46;
              goto LABEL_39;
            }
          }

          v39 = v73;
          v36 = v70;
          if (v73 != v72)
          {
            continue;
          }

          break;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = *(v69 + 16);
        sub_1C8D014F4();
        v69 = v59;
      }

      v56 = *(v69 + 16);
      if (v56 >= *(v69 + 24) >> 1)
      {
        sub_1C8D014F4();
        v69 = v60;
      }

      *(v69 + 16) = v56 + 1;
      v57 = (v69 + 24 * v56);
      v57[4] = v68;
      v57[5] = v67;
      v57[6] = v38;
      v32 = (v65 - 1) & v65;

      v28 = v74;
      v29 = v74 + 64;
      v3 = v64;
      v27 = v66;
      v33 = v63;
      if (!v32)
      {
LABEL_22:
        while (1)
        {
          v34 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_54;
          }

          if (v34 >= v33)
          {
            v61 = v3;

            sub_1C8CC7E94(v61);
            return v69;
          }

          v32 = *(v29 + 8 * v34);
          ++v27;
          if (v32)
          {
            v27 = v34;
            goto LABEL_26;
          }
        }
      }
    }
  }

  __break(1u);
LABEL_57:
  result = sub_1C9064CBC();
  __break(1u);
  return result;
}

uint64_t sub_1C8DDB20C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C8CA6480();
    v3 = (a1 + 48);
    do
    {
      v12 = *(v3 - 1);
      v13 = *v3;
      ToolInvocationSignature.debugDescription.getter();
      v5 = v4;
      v7 = v6;
      v8 = *(v14 + 16);
      if (v8 >= *(v14 + 24) >> 1)
      {
        sub_1C8CA6480();
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
  sub_1C8D28184(&qword_1EDA6D4A0, &qword_1EC312558, &qword_1C9066990);
  v10 = sub_1C9063E9C();

  return v10;
}

uint64_t sub_1C8DDB388(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C8DDC758(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C8DDB3F4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C8DDB3F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9064BCC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C906421C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C8DDB5B0(v7, v8, a1, v4);
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
    return sub_1C8DDB4E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C8DDB4E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1C9064C2C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C8DDB5B0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C9064C2C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C9064C2C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1C9064C2C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1C8D00D94();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C8D00D94();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C8DDBBE4((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1C8DDBAB8(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1C8DDBAB8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C8DDBD88(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C8DDBBE4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C8DDBBE4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C8D091D4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C9064C2C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1C8D091D4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C9064C2C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

char *sub_1C8DDBD9C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C8DDBDC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A38, &qword_1C9068E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C8DDBEC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v24 = a4;
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 16 * v15;
    v22 = *v16;
    v23 = *(v16 + 8);
    sub_1C8D07154(v22, v23);
    v17 = v24(&v22);
    sub_1C8D07168(v22, v23);
    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1C904488C(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t *sub_1C8DDC040(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C8DDBEC8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t *sub_1C8DDC0D0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C8DDC160(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C8DDC160(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v44 = 0;
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
LABEL_25:
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v43 = (v26 - 1) & v26;
LABEL_32:
      v40 = v28 | (v23 << 6);
      v31 = *(a4 + 40);
      v48 = *(*(a3 + 48) + 8 * v40);
      sub_1C9064D7C();

      TypedValue.hash(into:)();
      v32 = sub_1C9064DBC();
      v33 = ~(-1 << *(a4 + 32));
      do
      {
        v34 = v32 & v33;
        if (((*(a4 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
        {

          v26 = v43;
          goto LABEL_25;
        }

        v46 = *(*(a4 + 48) + 8 * v34);

        static TypedValue.== infix(_:_:)();
        v36 = v35;

        v32 = v34 + 1;
      }

      while ((v36 & 1) == 0);

      *(a1 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v26 = v43;
      v22 = __OFADD__(v44++, 1);
      if (v22)
      {
        goto LABEL_43;
      }
    }

    v29 = v23;
    while (1)
    {
      v23 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_39:

        sub_1C9044B04(a1, a2, v44, a3);
        return;
      }

      v30 = *(a3 + 56 + 8 * v23);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v43 = (v30 - 1) & v30;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v44 = 0;
    v6 = 0;
    v37 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v39 = v10;
    if (v9)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v42 = (v9 - 1) & v9;
LABEL_12:
        v14 = *(a3 + 40);
        v47 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
        sub_1C9064D7C();

        TypedValue.hash(into:)();
        v15 = sub_1C9064DBC();
        v16 = ~(-1 << *(a3 + 32));
        do
        {
          v17 = v15 & v16;
          v18 = (v15 & v16) >> 6;
          v19 = 1 << (v15 & v16);
          if ((v19 & *(a3 + 56 + 8 * v18)) == 0)
          {

            goto LABEL_19;
          }

          v45 = *(*(a3 + 48) + 8 * v17);

          static TypedValue.== infix(_:_:)();
          v21 = v20;

          v15 = v17 + 1;
        }

        while ((v21 & 1) == 0);

        a1[v18] |= v19;
        v22 = __OFADD__(v44++, 1);
        if (v22)
        {
          goto LABEL_42;
        }

LABEL_19:
        v10 = v39;
        v9 = v42;
      }

      while (v42);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_39;
      }

      v13 = *(v37 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_1C8DDC4F8()
{
  result = qword_1EDA60DF0;
  if (!qword_1EDA60DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DF0);
  }

  return result;
}

unint64_t sub_1C8DDC550()
{
  result = qword_1EC315478;
  if (!qword_1EC315478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315478);
  }

  return result;
}

unint64_t sub_1C8DDC5A8()
{
  result = qword_1EC315480;
  if (!qword_1EC315480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315480);
  }

  return result;
}

unint64_t sub_1C8DDC600()
{
  result = qword_1EC315488;
  if (!qword_1EC315488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315488);
  }

  return result;
}

uint64_t sub_1C8DDC678(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8DDC6B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C8DDC704()
{
  result = qword_1EC3154B8;
  if (!qword_1EC3154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154B8);
  }

  return result;
}

uint64_t sub_1C8DDC814(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t WFEncodedTypedValue.decode()()
{
  if (qword_1EC311340 != -1)
  {
    swift_once();
  }

  v1 = [v0 data];
  v2 = sub_1C9061F3C();
  v4 = v3;

  sub_1C8D39E40();
  sub_1C9061C2C();
  return sub_1C8CE7B78(v2, v4);
}

id TypedValue.encode()()
{
  v2 = *v0;
  if (qword_1EC311348 != -1)
  {
    swift_once();
  }

  sub_1C8D381AC();
  result = sub_1C9061C5C();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    sub_1C8DDC9F8();
    return sub_1C8D5CF20(v5, v6);
  }

  return result;
}

unint64_t sub_1C8DDC9F8()
{
  result = qword_1EC3154D0;
  if (!qword_1EC3154D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3154D0);
  }

  return result;
}

uint64_t NSUnit.toolkitUnitType.getter()
{
  swift_getObjectType();
  v0 = objc_opt_self();
  v1 = [v0 unitTypeForUnitClass_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

__C::WFMeasurementUnitType_optional __swiftcall WFMeasurementUnitType.init(from:)(ToolKit::TypeIdentifier::MeasurementUnitType from)
{
  v1 = **(&unk_1E832F1C0 + from);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t LNMeasurementUnitType.toolkitUnitType.getter(uint64_t a1)
{
  v1 = [objc_opt_self() unitTypeFromLinkMeasurementUnitType_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

uint64_t INIntentSlotDescription.toolkitUnitType.getter()
{
  v1 = [objc_opt_self() unitTypeFromIntentSlotValueType_];
  if (!v1)
  {
    return 22;
  }

  v2 = v1;
  v3 = WFMeasurementUnitType.toolkitUnitType.getter(v1);

  return v3;
}

uint64_t sub_1C8DDCC2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701667182 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DDCD3C(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x656C61636F6CLL;
  }

  return 1701667182;
}

uint64_t sub_1C8DDCD90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315518, &qword_1C907D3B8);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DDD978();
  sub_1C9064E1C();
  v14 = *v3;
  v20[15] = 0;
  sub_1C9064B9C();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v20[14] = 1;
    sub_1C9064B2C();
    v17 = v3[3];
    v18 = v3[4];
    v20[13] = 2;
    sub_1C9064B2C();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C8DDCF10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315510, &qword_1C907D3B0);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DDD978();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  OUTLINED_FUNCTION_3_3();
  v14 = sub_1C9064A7C();
  v27 = 1;
  OUTLINED_FUNCTION_3_3();
  v15 = sub_1C9064A0C();
  v17 = v16;
  v25 = v15;
  v26 = 2;
  OUTLINED_FUNCTION_3_3();
  v18 = sub_1C9064A0C();
  v19 = v12;
  v21 = v20;
  (*(v8 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v23 = v25;
  *a2 = v14;
  a2[1] = v23;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v21;
  return result;
}

uint64_t sub_1C8DDD10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDCC2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDD134(uint64_t a1)
{
  v2 = sub_1C8DDD978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DDD170(uint64_t a1)
{
  v2 = sub_1C8DDD978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C8DDD1AC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C8DDCF10(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1C8DDD20C@<D0>(uint64_t a1@<X8>)
{
  sub_1C8DDD250(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1C8DDD250@<X0>(void *a1@<X8>)
{
  if (qword_1EDA694B0 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v2 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v2, qword_1EDA6EAB0);
  sub_1C9062E5C();
  sub_1C8E2B4F8();
  v4 = v3;

  if (qword_1EDA69498 != -1)
  {
    OUTLINED_FUNCTION_2_32();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EA80);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v6 = v5;
  v8 = v7;

  if (qword_1EDA694A0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  OUTLINED_FUNCTION_10(v2, qword_1EDA6EA98);
  sub_1C9062E5C();
  sub_1C8E2B294();
  v10 = v9;
  v12 = v11;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  return result;
}

uint64_t sub_1C8DDD3D4()
{
  sub_1C8DDD744();

  return sub_1C9062B4C();
}

uint64_t sub_1C8DDD4CC()
{
  if (qword_1EDA694B0 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v1 = sub_1C9062E6C();
  OUTLINED_FUNCTION_10(v1, qword_1EDA6EAB0);
  sub_1C9062E5C();
  v3 = *v0;
  sub_1C9062BFC();
  if (qword_1EDA69498 != -1)
  {
    OUTLINED_FUNCTION_2_32();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EA80);
  sub_1C9062E5C();
  v4 = v0[1];
  v6 = v0[2];

  sub_1C9062BFC();
  if (qword_1EDA694A0 != -1)
  {
    OUTLINED_FUNCTION_1_41();
  }

  OUTLINED_FUNCTION_10(v1, qword_1EDA6EA98);
  sub_1C9062E5C();
  v5 = v0[3];
  v7 = v0[4];

  return sub_1C9062BFC();
}

unint64_t sub_1C8DDD658()
{
  result = qword_1EC3154E8;
  if (!qword_1EC3154E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154E8);
  }

  return result;
}

unint64_t sub_1C8DDD6B0(void *a1)
{
  a1[1] = sub_1C8DDD6F0();
  a1[2] = sub_1C8DDD744();
  a1[3] = sub_1C8DDD798();
  result = sub_1C8DDD7EC();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DDD6F0()
{
  result = qword_1EC3154F0;
  if (!qword_1EC3154F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154F0);
  }

  return result;
}

unint64_t sub_1C8DDD744()
{
  result = qword_1EC3154F8;
  if (!qword_1EC3154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3154F8);
  }

  return result;
}

unint64_t sub_1C8DDD798()
{
  result = qword_1EDA69480;
  if (!qword_1EDA69480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69480);
  }

  return result;
}

unint64_t sub_1C8DDD7EC()
{
  result = qword_1EC315500;
  if (!qword_1EC315500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315500);
  }

  return result;
}

uint64_t sub_1C8DDD840()
{
  v0 = qword_1EC3154D8;

  return v0;
}

unint64_t sub_1C8DDD87C()
{
  result = qword_1EC315508;
  if (!qword_1EC315508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315508);
  }

  return result;
}

uint64_t sub_1C8DDD900(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  OUTLINED_FUNCTION_10(v3, a2);
  sub_1C8DDD978();
  return sub_1C9062E8C();
}

unint64_t sub_1C8DDD978()
{
  result = qword_1EDA694C8;
  if (!qword_1EDA694C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContainerMetadataLocalizationRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8DDDAAC()
{
  result = qword_1EC315520;
  if (!qword_1EC315520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315520);
  }

  return result;
}

unint64_t sub_1C8DDDB04()
{
  result = qword_1EDA694B8;
  if (!qword_1EDA694B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694B8);
  }

  return result;
}

unint64_t sub_1C8DDDB5C()
{
  result = qword_1EDA694C0;
  if (!qword_1EDA694C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA694C0);
  }

  return result;
}

void TypedValue.typeIdentifier.getter()
{
  OUTLINED_FUNCTION_422();
  v5 = OUTLINED_FUNCTION_386();
  v6 = type metadata accessor for TypedValue.CodableValue(v5);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = OUTLINED_FUNCTION_32_7();
  v11 = type metadata accessor for TypedValue.EntityIdentifierValue(v10);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  Value = type metadata accessor for TypedValue.QueryValue(0);
  v16 = OUTLINED_FUNCTION_9(Value);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_12();
  v19 = type metadata accessor for TypedValue.EntityValue(0);
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v25 = (v24 - v23);
  v26 = type metadata accessor for TypedValue.EnumerationValue(0);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v30 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v34 = OUTLINED_FUNCTION_336_1();
  switch(v35)
  {
    case 1:
      swift_projectBox();
      OUTLINED_FUNCTION_13_15();
      sub_1C8CC5734();
      v37 = *v4;

      OUTLINED_FUNCTION_41_8();
      goto LABEL_11;
    case 2:
      swift_projectBox();
      OUTLINED_FUNCTION_15_15();
      sub_1C8CC5734();
      v37 = *v25;

      OUTLINED_FUNCTION_73_2();
      goto LABEL_11;
    case 3:
      v42 = *((v34 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((v34 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      TypedValue.CollectionValue.type.getter(v0);
      break;
    case 4:
      swift_projectBox();
      OUTLINED_FUNCTION_16_15();
      sub_1C8CC5734();
      v37 = *v3;

      OUTLINED_FUNCTION_42_8();
      goto LABEL_11;
    case 5:
    case 7:
      *v0 = *((v34 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_421();

      return;
    case 6:
      swift_projectBox();
      OUTLINED_FUNCTION_12_15();
      sub_1C8CC5734();
      v37 = *v2;

      OUTLINED_FUNCTION_40_9();
LABEL_11:
      sub_1C8CC6AB4();
      *v0 = v37;
      break;
    case 8:
      swift_projectBox();
      OUTLINED_FUNCTION_11_17();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_2();
      v39 = swift_allocObject();
      v41 = *v1;
      v40 = v1[1];

      OUTLINED_FUNCTION_72_2();
      sub_1C8CC6AB4();
      *(v39 + 16) = v41;
      *(v39 + 24) = v40;
      *v0 = v39 | 0x8000000000000000;
      break;
    default:
      swift_projectBox();
      OUTLINED_FUNCTION_0_47();
      sub_1C8CC5734();
      v38 = swift_allocObject();
      TypedValue.PrimitiveValue.primitiveType.getter();
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      *v0 = v38;
      break;
  }

  OUTLINED_FUNCTION_421();
}

void *TypedValue.CollectionValue.init(typeInstance:values:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t TypedValue.CollectionValue.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_238_1();
  TypeInstance.typeIdentifiers.getter();
  v5 = v4;
  v6 = sub_1C8D3F274();
  v8 = v7;
  v10 = v9;
  result = sub_1C8D39D78(v5);
  if (v10 & 1) != 0 || (v13)
  {
    goto LABEL_9;
  }

  if (v8 != v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v6 == result)
  {

    result = swift_allocObject();
    *(result + 16) = 23;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_249();
    sub_1C8D3F264(v16, v14, v15, 0, v5);

    result = v17;
  }

  *a1 = result;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.init(type:displayRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_165_3();
  *(a2 + v4) = v3;
  v5 = OUTLINED_FUNCTION_94();

  return sub_1C8D60F48(v5, v6);
}

uint64_t TypedValue.ID.identifier.getter()
{
  OUTLINED_FUNCTION_386();
  v0 = sub_1C906204C();
  OUTLINED_FUNCTION_13_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_94();

  return v4(v3);
}

uint64_t TypedValue.ID.serializedVariable.getter()
{
  v1 = (v0 + *(type metadata accessor for TypedValue.ID(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v4, v5);
  return OUTLINED_FUNCTION_94();
}

uint64_t TypedValue.ID.typeInstance.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  *v0 = *(v1 + *(type metadata accessor for TypedValue.ID(v2) + 24));
}

uint64_t static TypedValue.ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  if (_s7ToolKit0A8DatabaseC7VersionV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v2 = type metadata accessor for TypedValue.ID(0), (MEMORY[0x1CCA7F9A0](*(v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 8), *(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8))))
  {
    v3 = *(v2 + 24);
    v17 = *(v0 + v3);
    v18 = *(v1 + v3);

    v12 = OUTLINED_FUNCTION_106(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
    static TypeInstance.== infix(_:_:)(v12, v13);
    v15 = v14;
    OUTLINED_FUNCTION_345_1();
    OUTLINED_FUNCTION_344();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C8DDE170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD10 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DDE294(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x74736E4965707974;
}

uint64_t sub_1C8DDE304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDE170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDE32C(uint64_t a1)
{
  v2 = sub_1C8DF0C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DDE368(uint64_t a1)
{
  v2 = sub_1C8DF0C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.ID.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315528, &qword_1C907D4D8);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0C34();
  OUTLINED_FUNCTION_358();
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v6);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B8C();
  if (!v0)
  {
    v7 = type metadata accessor for TypedValue.ID(0);
    v8 = (v1 + *(v7 + 20));
    v14 = *v8;
    v15 = v8[1];
    OUTLINED_FUNCTION_276_0();
    sub_1C8CE9144(v9, v10);
    sub_1C8D02AA8();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    sub_1C8CE7B78(v14, v15);
    v11 = *(v1 + *(v7 + 24));
    sub_1C8CA6D90();
    OUTLINED_FUNCTION_295_0();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v12 = OUTLINED_FUNCTION_111_0();
  v13(v12);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.ID.hash(into:)()
{
  OUTLINED_FUNCTION_258();
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v1);
  OUTLINED_FUNCTION_145();
  sub_1C9063E7C();
  v2 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_265_0(v2);
  sub_1C9061F4C();
  v3 = *(v0 + *(v2 + 24));
  OUTLINED_FUNCTION_238_1();
  TypeInstance.hash(into:)();
}

uint64_t TypedValue.ID.hashValue.getter()
{
  OUTLINED_FUNCTION_298();
  sub_1C906204C();
  OUTLINED_FUNCTION_10_19();
  sub_1C8CC8068(v1);
  sub_1C9063E7C();
  v2 = type metadata accessor for TypedValue.ID(0);
  OUTLINED_FUNCTION_265_0(v2);
  v3 = sub_1C9061F4C();
  OUTLINED_FUNCTION_252_1(v3, v4, v5, v6, v7, v8, v9, v10, *(v0 + *(v2 + 24)), v12);
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypedValue.ID.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = sub_1C906204C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v24 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_0();
  v25 = v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315530, &qword_1C907D4E0);
  OUTLINED_FUNCTION_11(v26);
  v23 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_86();
  v14 = type metadata accessor for TypedValue.ID(0);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8DF0C34();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v27) = 0;
    OUTLINED_FUNCTION_10_19();
    sub_1C8CC8068(v19);
    sub_1C9064A6C();
    (*(v24 + 32))(v1, v25, v4);
    OUTLINED_FUNCTION_275();
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_105_1();
    sub_1C9064A6C();
    *(v1 + *(v14 + 20)) = v27;
    sub_1C8CAC450();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_105_1();
    sub_1C9064A6C();
    v20 = *(v23 + 8);
    v21 = OUTLINED_FUNCTION_129_1();
    v22(v21);
    *(v1 + *(v14 + 24)) = v27;
    OUTLINED_FUNCTION_152();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDE9E8(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  sub_1C906204C();
  sub_1C8CC8068(&qword_1EDA666F0);
  sub_1C9063E7C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_1C9061F4C();
  v8 = *(v2 + *(a2 + 24));
  TypeInstance.hash(into:)();
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.primitiveType.getter()
{
  OUTLINED_FUNCTION_422();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = type metadata accessor for TypedValue.PrimitiveValue(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_0_47();
  OUTLINED_FUNCTION_254();
  sub_1C8CC5734();
  OUTLINED_FUNCTION_136();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = 25;
      goto LABEL_27;
    case 2u:
      v13 = 26;
      goto LABEL_27;
    case 3u:
      v13 = 27;
      goto LABEL_27;
    case 4u:
      sub_1C8CC6AB4();
      v13 = 28;
      goto LABEL_27;
    case 5u:
      v14 = 29;
      goto LABEL_25;
    case 6u:
      v14 = 30;
      goto LABEL_25;
    case 7u:
      v14 = 31;
      goto LABEL_25;
    case 8u:
      v14 = 33;
      goto LABEL_25;
    case 9u:
      v15 = *(v5 + 32);
      v16 = OUTLINED_FUNCTION_119();
      v17(v16);
      v18 = sub_1C90618BC();
      v19 = NSUnit.toolkitUnitType.getter();

      (*(v5 + 8))(v0, v3);
      *v2 = v19;
      goto LABEL_28;
    case 0xAu:
      v14 = 34;
      goto LABEL_25;
    case 0xBu:
      v14 = 35;
      goto LABEL_25;
    case 0xCu:
      v14 = 36;
      goto LABEL_25;
    case 0xDu:
      v14 = 37;
      goto LABEL_25;
    case 0xEu:
      v14 = 38;
      goto LABEL_25;
    case 0xFu:
      v14 = 39;
      goto LABEL_25;
    case 0x10u:
      sub_1C8CC6AB4();
      v13 = 40;
      goto LABEL_27;
    case 0x11u:
      v14 = 43;
      goto LABEL_25;
    case 0x12u:
      v14 = 41;
      goto LABEL_25;
    case 0x13u:
      v14 = 44;
      goto LABEL_25;
    case 0x14u:
      v13 = 45;
      goto LABEL_27;
    case 0x15u:
      v14 = 46;
LABEL_25:
      *v2 = v14;
      OUTLINED_FUNCTION_14_20();
      sub_1C8CC6AB4();
      goto LABEL_28;
    case 0x16u:
      sub_1C8CC6AB4();
      v13 = 42;
      goto LABEL_27;
    case 0x17u:
      v13 = 23;
      goto LABEL_27;
    default:
      v13 = 24;
LABEL_27:
      *v2 = v13;
LABEL_28:
      OUTLINED_FUNCTION_421();
      return;
  }
}

uint64_t sub_1C8DDEDA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C96C0 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C8DDEE78(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8DDEEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDEDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDEEE4(uint64_t a1)
{
  v2 = sub_1C8DF0CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DDEF20(uint64_t a1)
{
  v2 = sub_1C8DF0CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.AppValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315538, &qword_1C907D4E8);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0CF8();
  OUTLINED_FUNCTION_100_3();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_97_3();
  sub_1C9064B2C();
  if (!v0)
  {
    v8 = *(type metadata accessor for TypedValue.PrimitiveValue.AppValue(0) + 20);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v9);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v10 = OUTLINED_FUNCTION_86_2();
  v11(v10);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.AppValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315540, &qword_1C907D4F0);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_5();
  v13 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v12);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  v20 = v3[3];
  v21 = v3[4];
  OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF0CF8();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v19 = OUTLINED_FUNCTION_288_1();
    v19[1] = v22;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v23);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v24 = OUTLINED_FUNCTION_109();
    v25(v24);
    sub_1C8D60F48(v1, v19 + *(v13 + 20));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDF388()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_108_1(*(v2 + 20));

  return sub_1C8DF0C88(v3, v4);
}

uint64_t TypedValue.PrimitiveValue.Shortcut.init(identifier:)()
{
  OUTLINED_FUNCTION_223();
  v3 = v2;
  v4 = *(type metadata accessor for TypedValue.PrimitiveValue.Shortcut(0) + 20);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *v3 = v1;
  v3[1] = v0;
  return result;
}

uint64_t sub_1C8DDF438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v6 = a5 + *(a4(0) + 20);

  return sub_1C8D60F48(a3, v6);
}

void sub_1C8DDF4A0()
{
  OUTLINED_FUNCTION_164();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_262_1();
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_17();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_116_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51();
  v17 = *v2 == *v1 && v2[1] == v1[1];
  if (v17 || (sub_1C9064C2C() & 1) != 0)
  {
    v18 = *(v4(0) + 20);
    v19 = *(v13 + 48);
    sub_1C8DF0C88(v2 + v18, v0);
    sub_1C8DF0C88(v1 + v18, v0 + v19);
    OUTLINED_FUNCTION_92_0(v0);
    if (!v17)
    {
      v20 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v20, v21);
      OUTLINED_FUNCTION_92_0(v0 + v19);
      if (!v22)
      {
        OUTLINED_FUNCTION_348_1();
        OUTLINED_FUNCTION_134();
        static DisplayRepresentation.== infix(_:_:)();
        OUTLINED_FUNCTION_30_13();
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_181_0();
        sub_1C8CC6AB4();
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_15;
      }

      sub_1C8CC6AB4();
LABEL_14:
      sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_92_0(v0 + v19);
    if (!v17)
    {
      goto LABEL_14;
    }

    sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
  }

LABEL_15:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DDF6B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DDF788(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1C8DDF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDF6B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DDF7F8(uint64_t a1)
{
  v2 = sub_1C8DF0D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DDF834(uint64_t a1)
{
  v2 = sub_1C8DF0D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.Shortcut.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315548, &qword_1C907D4F8);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0D4C();
  OUTLINED_FUNCTION_100_3();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_97_3();
  sub_1C9064B2C();
  if (!v0)
  {
    v8 = *(type metadata accessor for TypedValue.PrimitiveValue.Shortcut(0) + 20);
    OUTLINED_FUNCTION_223_0();
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v9);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v10 = OUTLINED_FUNCTION_86_2();
  v11(v10);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t sub_1C8DDF9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for DisplayRepresentation(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_17();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_72();
  v13 = *v2;
  v14 = v2[1];
  sub_1C9063FBC();
  v15 = a2(0);
  sub_1C8DF0C88(v2 + *(v15 + 20), v3);
  OUTLINED_FUNCTION_78_4(v3);
  if (v16)
  {
    return sub_1C9064D9C();
  }

  OUTLINED_FUNCTION_93();
  sub_1C8CCEB64();
  sub_1C9064D9C();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_2_33();
  return sub_1C8CC6AB4();
}

uint64_t sub_1C8DDFB00(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_298();
  a1(v3);
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.Shortcut.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315558, &qword_1C907D500);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_5();
  v13 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v12);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v19 = (v18 - v17);
  v20 = v3[3];
  v21 = v3[4];
  OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF0D4C();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    *v19 = OUTLINED_FUNCTION_288_1();
    v19[1] = v22;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v23);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v24 = OUTLINED_FUNCTION_109();
    v25(v24);
    sub_1C8D60F48(v1, v19 + *(v13 + 20));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DDFDF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

id sub_1C8DDFE34(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C9063EBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

BOOL static TypedValue.PrimitiveValue.PlacemarkValue.Type.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      v4 = v3;
      v5 = v2;
      v6 = v4;
      v7 = v5;
      v8 = sub_1C90645BC();

      return v8 & 1;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1C8DDFF74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DE004C(char a1)
{
  if (a1)
  {
    return 0x72616D6563616C70;
  }

  else
  {
    return 0x4C746E6572727563;
  }
}

uint64_t sub_1C8DE009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DDFF74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE00C4(uint64_t a1)
{
  v2 = sub_1C8DF0DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE0100(uint64_t a1)
{
  v2 = sub_1C8DF0DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE013C(uint64_t a1)
{
  v2 = sub_1C8DF0E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE0178(uint64_t a1)
{
  v2 = sub_1C8DF0E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE01B4(uint64_t a1)
{
  v2 = sub_1C8DF0DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE01F0(uint64_t a1)
{
  v2 = sub_1C8DF0DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315560, &qword_1C907D508);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_73();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315568, &qword_1C907D510);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_86();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315570, &qword_1C907D518);
  OUTLINED_FUNCTION_11(v24);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_0();
  v17 = *v0;
  v18 = v3[4];
  OUTLINED_FUNCTION_217(v3, v3[3]);
  sub_1C8DF0DA0();
  OUTLINED_FUNCTION_103_0();
  sub_1C9064E1C();
  if (v17)
  {
    OUTLINED_FUNCTION_275();
    sub_1C8DF0DF4();
    sub_1C9064ACC();
    v19 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_6_18();
    OUTLINED_FUNCTION_290_1(v21);
    sub_1C9064B8C();
    v22 = OUTLINED_FUNCTION_55_4();
  }

  else
  {
    sub_1C8DF0E48();
    OUTLINED_FUNCTION_104_0();
    sub_1C9064ACC();
    v22 = OUTLINED_FUNCTION_107_3();
  }

  v23(v22);
  (*(v13 + 8))(v1, v24);
  OUTLINED_FUNCTION_198();
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x1CCA82810](1);
    v2 = v1;
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.Type.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  if (v1)
  {
    MEMORY[0x1CCA82810](1);
    v2 = v1;
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }

  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.PlacemarkValue.Type.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v54 = v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315598, &qword_1C907D528);
  OUTLINED_FUNCTION_11(v56);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155A0, &qword_1C907D530);
  OUTLINED_FUNCTION_7_21(v9);
  v53 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155A8, &qword_1C907D538);
  OUTLINED_FUNCTION_11(v14);
  v55 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_73();
  v19 = v4[3];
  v20 = v4[4];
  v21 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_217(v21, v22);
  sub_1C8DF0DA0();
  sub_1C9064DEC();
  if (!v1)
  {
    v57 = v4;
    v23 = sub_1C9064A9C();
    sub_1C8CB8914(v23, 0);
    if (v25 != v24 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v28 == v29)
      {
        __break(1u);
        return;
      }

      v59 = *(v27 + v26);
      sub_1C8CB891C(v26 + 1);
      v31 = v30;
      v33 = v32;
      swift_unknownObjectRelease();
      if (v31 == v33 >> 1)
      {
        if (v59)
        {
          OUTLINED_FUNCTION_275();
          sub_1C8DF0DF4();
          OUTLINED_FUNCTION_41_4();
          sub_1C906498C();
          v34 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315588, &qword_1C907D520);
          OUTLINED_FUNCTION_5_24();
          sub_1C8D24EA8(v35);
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          v47 = OUTLINED_FUNCTION_235_0();
          v48(v47, v56);
          v49 = *(v55 + 8);
          v50 = OUTLINED_FUNCTION_278();
          v51(v50);
          v52 = v58;
        }

        else
        {
          sub_1C8DF0E48();
          OUTLINED_FUNCTION_41_4();
          sub_1C906498C();
          v34 = v54;
          swift_unknownObjectRelease();
          (*(v53 + 8))(v2, v0);
          v45 = OUTLINED_FUNCTION_241();
          v46(v45, v14);
          v52 = 0;
        }

        *v34 = v52;
        v44 = v4;
        goto LABEL_10;
      }
    }

    v36 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v38 = &type metadata for TypedValue.PrimitiveValue.PlacemarkValue.Type;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v40 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v36);
    (*(v41 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v42 = OUTLINED_FUNCTION_241();
    v43(v42, v14);
    v4 = v57;
  }

  v44 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.PlacemarkValue.placemark.getter()
{
  OUTLINED_FUNCTION_165_3();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    sub_1C8CB78AC(0, &qword_1EDA6CBB8, 0x1E695FC20);
    v4 = sub_1C8DDFE34([objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:1.79769313e308 longitude:1.79769313e308], 0, 0, 0);
    v3 = [objc_allocWithZone(MEMORY[0x1E695FC20]) initWithPlacemark_];

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id TypedValue.PrimitiveValue.PlacemarkValue.type.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_165_3();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void TypedValue.PrimitiveValue.PlacemarkValue.init(placemark:)()
{
  OUTLINED_FUNCTION_422();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_116_3();
  v9 = sub_1C8CADD44(v2);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = type metadata accessor for DisplayRepresentation(0);
    v14 = v13[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
    OUTLINED_FUNCTION_115();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    *v0 = v11;
    v0[1] = v12;
    OUTLINED_FUNCTION_278_1();
    v19 = (v0 + v13[8]);
    *v19 = 0u;
    v19[1] = 0u;
    *(v0 + v13[9]) = MEMORY[0x1E69E7CC0];
    v20 = v0;
    v21 = 0;
    v22 = 1;
    v23 = v13;
  }

  else
  {
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_115();
  }

  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_206();
  sub_1C8D60F48(v24, v25);
  OUTLINED_FUNCTION_165_3();
  *(v4 + v26) = v2;
  OUTLINED_FUNCTION_421();
}

uint64_t static TypedValue.PrimitiveValue.PlacemarkValue.currentLocation.getter()
{
  v1 = OUTLINED_FUNCTION_386();
  v2 = type metadata accessor for DisplayRepresentation(v1);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  v10 = *(v9 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312530, &unk_1C9090E80);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *v8 = 0xD000000000000010;
  v8[1] = 0x80000001C90CAC40;
  OUTLINED_FUNCTION_278_1();
  v15 = (v8 + *(v2 + 32));
  *v15 = 0u;
  v15[1] = 0u;
  *(v8 + *(v2 + 36)) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_134();
  sub_1C8CCEB64();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  result = OUTLINED_FUNCTION_165_3();
  *(v0 + v17) = 0;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PlacemarkValue.init(codablePlacemark:displayRepresentation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_165_3();
  *(a2 + v4) = v3;
  v5 = OUTLINED_FUNCTION_94();

  return sub_1C8D60F48(v5, v6);
}

void static TypedValue.PrimitiveValue.PlacemarkValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_223();
  v3 = type metadata accessor for DisplayRepresentation(0);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_72();
  v16 = *(v15 + 56);
  v17 = OUTLINED_FUNCTION_181();
  sub_1C8DF0C88(v17, v18);
  sub_1C8DF0C88(v0, v2 + v16);
  OUTLINED_FUNCTION_78_4(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_78_4(v2 + v16);
    if (v21)
    {
      sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v19 = OUTLINED_FUNCTION_288();
  sub_1C8DF0C88(v19, v20);
  OUTLINED_FUNCTION_78_4(v2 + v16);
  if (v21)
  {
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
LABEL_9:
    sub_1C8D16D78(v2, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_3_29();
  sub_1C8CCEB64();
  static DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_177_3();
  sub_1C8CC6AB4();
  sub_1C8CC6AB4();
  sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
  if (v3)
  {
LABEL_11:
    OUTLINED_FUNCTION_165_3();
    v23 = *(v1 + v22);
    v24 = *(v0 + v22);
    if (v23)
    {
      if (v24)
      {
        sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
        v25 = v24;
        v26 = v23;
        v27 = v25;
        v28 = v26;
        v29 = v27;
        v30 = v28;
        sub_1C90645BC();

        goto LABEL_19;
      }

      v31 = v23;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_19;
      }

      v31 = 0;
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE10CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DE119C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE11D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE10CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE1200(uint64_t a1)
{
  v2 = sub_1C8DF0E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE123C(uint64_t a1)
{
  v2 = sub_1C8DF0E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.PlacemarkValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155B0, &qword_1C907D540);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0E9C();
  OUTLINED_FUNCTION_358();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v6);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v0)
  {
    v11 = *(v1 + *(type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(0) + 20));
    OUTLINED_FUNCTION_276_0();
    sub_1C8DF0EF0();
    v7 = v11;
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v9 = OUTLINED_FUNCTION_111_0();
  v10(v9);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PlacemarkValue.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_258();
  v3 = type metadata accessor for DisplayRepresentation(v2);
  v4 = OUTLINED_FUNCTION_13_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51();
  v11 = OUTLINED_FUNCTION_206();
  sub_1C8DF0C88(v11, v12);
  OUTLINED_FUNCTION_108_2(v1, 1, v3);
  if (v13)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_3_29();
    OUTLINED_FUNCTION_181();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_165_3();
  v15 = *(v1 + v14);
  if (v15)
  {
    MEMORY[0x1CCA82810](1);
    v16 = v15;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
  }
}

void TypedValue.PrimitiveValue.PlacemarkValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_110();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155C0, &qword_1C907D548);
  OUTLINED_FUNCTION_11(v9);
  v25 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_16_5();
  v15 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v14);
  v16 = OUTLINED_FUNCTION_13_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v19 = v0[3];
  v20 = v0[4];
  OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF0E9C();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v21);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v3, v2);
    OUTLINED_FUNCTION_223_0();
    sub_1C8DF0F44();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    v22 = *(v25 + 8);
    v23 = OUTLINED_FUNCTION_114();
    v24(v23);
    *(v2 + *(v15 + 20)) = v26;
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.PersonValue.person.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0) + 20));

  return v1;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.init(person:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  result = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PersonValue.init(person:displayRepresentation:)()
{
  OUTLINED_FUNCTION_223();
  *(v1 + *(type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0) + 20)) = v0;
  v2 = OUTLINED_FUNCTION_145();

  return sub_1C8D60F48(v2, v3);
}

uint64_t sub_1C8DE18C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656C6261646F63 && a2 == 0xED00006E6F737265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DE199C(char a1)
{
  if (a1)
  {
    return 0x50656C6261646F63;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE19EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE18C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE1A14(uint64_t a1)
{
  v2 = sub_1C8DF0F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE1A50(uint64_t a1)
{
  v2 = sub_1C8DF0F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.PersonValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155D0, &qword_1C907D550);
  OUTLINED_FUNCTION_7_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0F98();
  OUTLINED_FUNCTION_358();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v5);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v0)
  {
    v6 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(0);
    OUTLINED_FUNCTION_292_1(v6);
    v7 = OUTLINED_FUNCTION_276();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v9);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v11 = OUTLINED_FUNCTION_111_0();
  v12(v11);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PersonValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155E0, &qword_1C907D560);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_5();
  v13 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v12);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_12();
  v17 = v0[3];
  v18 = v0[4];
  OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF0F98();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_341_1();
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v19);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v2, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155D8, &qword_1C907D558);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v20);
    OUTLINED_FUNCTION_245_0();
    v21 = OUTLINED_FUNCTION_139_1();
    v22(v21);
    OUTLINED_FUNCTION_323_1();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.amount.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.currencyIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_94();
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.init(amount:currencyIdentifier:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0) + 24);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *v11 = v9;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v1;
  OUTLINED_FUNCTION_421();
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.init(amount:currencyIdentifier:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v6 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  v7 = OUTLINED_FUNCTION_216_0(v6);

  return sub_1C8D60F48(v7, v8);
}

void static TypedValue.PrimitiveValue.CurrencyAmountValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  v4 = OUTLINED_FUNCTION_262_1();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_17();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_116_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  if (MEMORY[0x1CCA82070](*v2, *(v2 + 8), *(v2 + 16), *v1, *(v1 + 8), *(v1 + 16)))
  {
    v16 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
    if (v16 || (sub_1C9064C2C() & 1) != 0)
    {
      v17 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
      OUTLINED_FUNCTION_340_1(v17);
      sub_1C8DF0C88(v1 + v3, v0 + v12);
      OUTLINED_FUNCTION_92_0(v0);
      if (!v16)
      {
        v18 = OUTLINED_FUNCTION_209();
        sub_1C8DF0C88(v18, v19);
        OUTLINED_FUNCTION_92_0(v0 + v12);
        if (!v20)
        {
          OUTLINED_FUNCTION_3_29();
          OUTLINED_FUNCTION_348_1();
          OUTLINED_FUNCTION_134();
          static DisplayRepresentation.== infix(_:_:)();
          OUTLINED_FUNCTION_30_13();
          sub_1C8CC6AB4();
          OUTLINED_FUNCTION_181_0();
          sub_1C8CC6AB4();
          sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
LABEL_15:
        sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_92_0(v0 + v12);
      if (!v16)
      {
        goto LABEL_15;
      }

      sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE21E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD30 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DE22F8(char a1)
{
  if (!a1)
  {
    return 0x746E756F6D61;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE2358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE21E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE2380(uint64_t a1)
{
  v2 = sub_1C8DF0FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE23BC(uint64_t a1)
{
  v2 = sub_1C8DF0FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3155E8, &qword_1C907D568);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF0FEC();
  OUTLINED_FUNCTION_100_3();
  v13 = *v1;
  v14 = *(v1 + 4);
  type metadata accessor for Decimal(0);
  OUTLINED_FUNCTION_37_11();
  sub_1C8CC8068(v6);
  OUTLINED_FUNCTION_47_7();
  sub_1C9064B8C();
  if (!v0)
  {
    v7 = *(v1 + 3);
    v8 = *(v1 + 4);
    OUTLINED_FUNCTION_385();
    OUTLINED_FUNCTION_97_3();
    sub_1C9064B2C();
    v9 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
    OUTLINED_FUNCTION_275_1(v9);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v10);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v11 = OUTLINED_FUNCTION_86_2();
  v12(v11);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t TypedValue.PrimitiveValue.CurrencyAmountValue.hash(into:)()
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = *(v0 + 4);
  v11 = *v0;
  v12 = v0[1];
  sub_1C90645FC();
  v13 = v0[3];
  v14 = v0[4];
  sub_1C9063FBC();
  v15 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(0);
  sub_1C8DF0C88(v0 + *(v15 + 24), v1);
  OUTLINED_FUNCTION_92_0(v1);
  if (v16)
  {
    return OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_148();
  sub_1C8CCEB64();
  OUTLINED_FUNCTION_419();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_2_33();
  return sub_1C8CC6AB4();
}

void TypedValue.PrimitiveValue.CurrencyAmountValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_110();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315600, &qword_1C907D570);
  OUTLINED_FUNCTION_11(v9);
  v27 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_16_5();
  v15 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v14);
  v16 = OUTLINED_FUNCTION_13_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_12();
  v19 = v4[3];
  v20 = v4[4];
  OUTLINED_FUNCTION_122_3(v4);
  sub_1C8DF0FEC();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    type metadata accessor for Decimal(0);
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_37_11();
    sub_1C8CC8068(v21);
    OUTLINED_FUNCTION_202_2();
    sub_1C9064A6C();
    *v1 = v28;
    *(v1 + 16) = v29;
    OUTLINED_FUNCTION_223_0();
    *(v1 + 24) = sub_1C9064A0C();
    *(v1 + 32) = v22;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v23);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v24 = *(v27 + 8);
    v25 = OUTLINED_FUNCTION_162();
    v26(v25);
    sub_1C8D60F48(v2, v1 + *(v15 + 24));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v4);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DE2A34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696B63656863 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73676E69766173 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676172656B6F7262 && a2 == 0xE900000000000065;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469626564 && a2 == 0xE500000000000000;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746964657263 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696170657270 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x796150656C707061 && a2 == 0xE800000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1C8DE2CF0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x676E696B63656863;
      break;
    case 2:
      result = 0x73676E69766173;
      break;
    case 3:
      result = 0x676172656B6F7262;
      break;
    case 4:
      result = 0x7469626564;
      break;
    case 5:
      result = 0x746964657263;
      break;
    case 6:
      result = 0x64696170657270;
      break;
    case 7:
      result = 0x65726F7473;
      break;
    case 8:
      result = 0x796150656C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DE2DDC(uint64_t a1)
{
  v2 = sub_1C8DF1094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE2E18(uint64_t a1)
{
  v2 = sub_1C8DF1094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE2E54(uint64_t a1)
{
  v2 = sub_1C8DF1238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE2E90(uint64_t a1)
{
  v2 = sub_1C8DF1238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE2ECC(uint64_t a1)
{
  v2 = sub_1C8DF12E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE2F08(uint64_t a1)
{
  v2 = sub_1C8DF12E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE2F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE2A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE2F74(uint64_t a1)
{
  v2 = sub_1C8DF1040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE2FB0(uint64_t a1)
{
  v2 = sub_1C8DF1040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE2FEC(uint64_t a1)
{
  v2 = sub_1C8DF1190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE3028(uint64_t a1)
{
  v2 = sub_1C8DF1190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE3064(uint64_t a1)
{
  v2 = sub_1C8DF11E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE30A0(uint64_t a1)
{
  v2 = sub_1C8DF11E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE30DC(uint64_t a1)
{
  v2 = sub_1C8DF113C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE3118(uint64_t a1)
{
  v2 = sub_1C8DF113C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE3154(uint64_t a1)
{
  v2 = sub_1C8DF128C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE3190(uint64_t a1)
{
  v2 = sub_1C8DF128C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE31CC(uint64_t a1)
{
  v2 = sub_1C8DF10E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE3208(uint64_t a1)
{
  v2 = sub_1C8DF10E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE3244(uint64_t a1)
{
  v2 = sub_1C8DF1334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE3280(uint64_t a1)
{
  v2 = sub_1C8DF1334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.PaymentMethodValue.Type.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315610, &qword_1C907D578);
  v29 = OUTLINED_FUNCTION_11(v28);
  v128 = v30;
  v129 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315618, &qword_1C907D580);
  v36 = OUTLINED_FUNCTION_11(v35);
  v125 = v37;
  v126 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_97();
  v124 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315620, &qword_1C907D588);
  v43 = OUTLINED_FUNCTION_11(v42);
  v122 = v44;
  v123 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_97();
  v121 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315628, &qword_1C907D590);
  v50 = OUTLINED_FUNCTION_11(v49);
  v119 = v51;
  v120 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v118 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315630, &qword_1C907D598);
  v57 = OUTLINED_FUNCTION_11(v56);
  v116 = v58;
  v117 = v57;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_97();
  v115 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315638, &qword_1C907D5A0);
  v64 = OUTLINED_FUNCTION_11(v63);
  v113 = v65;
  v114 = v64;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  v112 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315640, &qword_1C907D5A8);
  OUTLINED_FUNCTION_4_22(v70, &a18);
  v111[4] = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_94_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315648, &qword_1C907D5B0);
  OUTLINED_FUNCTION_4_22(v76, &a15);
  v111[1] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_110();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315650, &qword_1C907D5B8);
  OUTLINED_FUNCTION_11(v81);
  v111[0] = v82;
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v85);
  v87 = v111 - v86;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315658, &qword_1C907D5C0);
  OUTLINED_FUNCTION_11(v130);
  v89 = v88;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_233();
  v93 = *v25;
  v94 = *(v27 + 24);
  v95 = *(v27 + 32);
  v96 = OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_217(v96, v97);
  sub_1C8DF1040();
  OUTLINED_FUNCTION_197();
  sub_1C9064E1C();
  v98 = (v89 + 8);
  switch(v93)
  {
    case 1:
      OUTLINED_FUNCTION_277_0();
      sub_1C8DF12E0();
      v87 = v130;
      OUTLINED_FUNCTION_104_0();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(&a14);
      v109 = v22;
      v110 = &a15;
      goto LABEL_8;
    case 2:
      sub_1C8DF128C();
      v107 = v111[3];
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_296(&a17);
      v109 = v107;
      v110 = &a18;
LABEL_8:
      v105 = *(v110 - 32);
      goto LABEL_13;
    case 3:
      sub_1C8DF1238();
      v104 = v112;
      OUTLINED_FUNCTION_79_3();
      v106 = v113;
      v105 = v114;
      goto LABEL_12;
    case 4:
      sub_1C8DF11E4();
      v104 = v115;
      OUTLINED_FUNCTION_79_3();
      v106 = v116;
      v105 = v117;
      goto LABEL_12;
    case 5:
      sub_1C8DF1190();
      v104 = v118;
      OUTLINED_FUNCTION_79_3();
      v106 = v119;
      v105 = v120;
      goto LABEL_12;
    case 6:
      sub_1C8DF113C();
      v104 = v121;
      OUTLINED_FUNCTION_79_3();
      v106 = v122;
      v105 = v123;
      goto LABEL_12;
    case 7:
      sub_1C8DF10E8();
      v104 = v124;
      OUTLINED_FUNCTION_79_3();
      v106 = v125;
      v105 = v126;
      goto LABEL_12;
    case 8:
      sub_1C8DF1094();
      v104 = v127;
      OUTLINED_FUNCTION_79_3();
      v106 = v128;
      v105 = v129;
LABEL_12:
      v108 = *(v106 + 8);
      v109 = v104;
LABEL_13:
      v108(v109, v105);
      v103 = *v98;
      v101 = v21;
      v102 = v87;
      break;
    default:
      v131 = 0;
      sub_1C8DF1334();
      OUTLINED_FUNCTION_34();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_296(&a13);
      v99(v87, v81);
      v100 = *v98;
      v101 = OUTLINED_FUNCTION_162();
      break;
  }

  v103(v101, v102);
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.Type.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_298();
  v2 = OUTLINED_FUNCTION_297();
  MEMORY[0x1CCA82810](v2);
  return sub_1C9064DBC();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.Type.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v25;
  a20 = v26;
  v150 = v21;
  v28 = v27;
  v146 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156B0, &qword_1C907D5C8);
  v31 = OUTLINED_FUNCTION_11(v30);
  v140 = v32;
  v141 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_97();
  v145 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156B8, &qword_1C907D5D0);
  v38 = OUTLINED_FUNCTION_11(v37);
  v138 = v39;
  v139 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_97();
  v142 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156C0, &qword_1C907D5D8);
  v45 = OUTLINED_FUNCTION_11(v44);
  v136 = v46;
  v137 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v148 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156C8, &qword_1C907D5E0);
  v52 = OUTLINED_FUNCTION_11(v51);
  v134 = v53;
  v135 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v147 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156D0, &qword_1C907D5E8);
  v59 = OUTLINED_FUNCTION_11(v58);
  v132 = v60;
  v133 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v144 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156D8, &qword_1C907D5F0);
  OUTLINED_FUNCTION_4_22(v65, &a18);
  v131 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  v143 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156E0, &qword_1C907D5F8);
  OUTLINED_FUNCTION_4_22(v71, &a16);
  v130 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_320(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156E8, &qword_1C907D600);
  OUTLINED_FUNCTION_4_22(v77, &a14);
  v129 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_15_0();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156F0, &qword_1C907D608);
  OUTLINED_FUNCTION_11(v82);
  v128 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_38();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3156F8, &qword_1C907D610);
  OUTLINED_FUNCTION_7_21(v87);
  v89 = v88;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_86();
  v93 = v28[3];
  v94 = v28[4];
  v149 = v28;
  v95 = OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_217(v95, v96);
  sub_1C8DF1040();
  sub_1C9064DEC();
  if (!v21)
  {
    v126 = v22;
    v125 = v82;
    v127 = v23;
    v150 = v89;
    v97 = sub_1C9064A9C();
    sub_1C8CB8914(v97, 0);
    if (v99 != v98 >> 1)
    {
      OUTLINED_FUNCTION_119_0();
      OUTLINED_FUNCTION_282_1();
      if (v102 == v103)
      {
        __break(1u);
        return;
      }

      v124 = *(v101 + v100);
      sub_1C8CB891C(v100 + 1);
      v105 = v104;
      v107 = v106;
      swift_unknownObjectRelease();
      if (v105 == v107 >> 1)
      {
        v108 = v146;
        switch(v124)
        {
          case 1:
            OUTLINED_FUNCTION_277_0();
            sub_1C8DF12E0();
            OUTLINED_FUNCTION_161_1(&a11);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v109 = OUTLINED_FUNCTION_62_0(&a13);
            v111 = &a14;
            goto LABEL_16;
          case 2:
            BYTE1(a10) = 2;
            sub_1C8DF128C();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v109 = OUTLINED_FUNCTION_62_0(&a15);
            v111 = &a16;
            goto LABEL_16;
          case 3:
            BYTE2(a10) = 3;
            sub_1C8DF1238();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v109 = OUTLINED_FUNCTION_62_0(&a17);
            v111 = &a18;
            goto LABEL_16;
          case 4:
            BYTE3(a10) = 4;
            sub_1C8DF11E4();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 5:
            BYTE4(a10) = 5;
            sub_1C8DF1190();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 6:
            BYTE5(a10) = 6;
            sub_1C8DF113C();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 7:
            BYTE6(a10) = 7;
            sub_1C8DF10E8();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            goto LABEL_20;
          case 8:
            HIBYTE(a10) = 8;
            sub_1C8DF1094();
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
LABEL_20:
            v109 = OUTLINED_FUNCTION_47_3();
            break;
          default:
            v151 = 0;
            sub_1C8DF1334();
            OUTLINED_FUNCTION_161_1(&a10);
            OUTLINED_FUNCTION_71_4();
            sub_1C906498C();
            swift_unknownObjectRelease();
            v109 = OUTLINED_FUNCTION_62_0(&a12);
            v111 = &a9;
LABEL_16:
            v121 = *(v111 - 32);
            break;
        }

        v110(v109, v121);
        v122 = OUTLINED_FUNCTION_107_3();
        v123(v122, v20);
        v120 = v149;
        *v108 = v124;
        goto LABEL_10;
      }
    }

    v112 = v20;
    v113 = v150;
    v114 = sub_1C90647DC();
    OUTLINED_FUNCTION_6_3();
    v116 = v115;
    v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v116 = &type metadata for TypedValue.PrimitiveValue.PaymentMethodValue.Type;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v118 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v114);
    (*(v119 + 104))(v116);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v113 + 8))(v24, v112);
  }

  v120 = v149;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v120);
  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.identificationHint.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t sub_1C8DE43EC()
{
  v0 = OUTLINED_FUNCTION_386();
  v2 = v1(v0);
  v3 = OUTLINED_FUNCTION_108_1(*(v2 + 24));

  return sub_1C8DF0C88(v3, v4);
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.init(type:identificationHint:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0) + 24);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *a4 = v7;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t TypedValue.PrimitiveValue.PaymentMethodValue.init(type:identificationHint:displayRepresentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v4 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  v5 = OUTLINED_FUNCTION_216_0(v4);

  return sub_1C8D60F48(v5, v6);
}

void static TypedValue.PrimitiveValue.PaymentMethodValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_422();
  v4 = OUTLINED_FUNCTION_262_1();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22_17();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_116_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  if (*v2 != *v1)
  {
    goto LABEL_20;
  }

  v16 = *(v2 + 2);
  v17 = *(v1 + 2);
  if (!v16)
  {
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_11:
    v19 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
    OUTLINED_FUNCTION_340_1(v19);
    sub_1C8DF0C88(&v1[v3], v0 + v12);
    OUTLINED_FUNCTION_92_0(v0);
    if (v18)
    {
      OUTLINED_FUNCTION_92_0(v0 + v12);
      if (v18)
      {
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_20;
      }
    }

    else
    {
      v20 = OUTLINED_FUNCTION_209();
      sub_1C8DF0C88(v20, v21);
      OUTLINED_FUNCTION_92_0(v0 + v12);
      if (!v22)
      {
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_348_1();
        OUTLINED_FUNCTION_134();
        static DisplayRepresentation.== infix(_:_:)();
        OUTLINED_FUNCTION_30_13();
        sub_1C8CC6AB4();
        OUTLINED_FUNCTION_181_0();
        sub_1C8CC6AB4();
        sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_2_33();
      sub_1C8CC6AB4();
    }

    sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_20;
  }

  if (v17)
  {
    v18 = *(v2 + 1) == *(v1 + 1) && v16 == v17;
    if (v18 || (sub_1C9064C2C() & 1) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE46DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C90CAD50 == a2;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DE47F8(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE4854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE46DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE487C(uint64_t a1)
{
  v2 = sub_1C8DF1388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE48B8(uint64_t a1)
{
  v2 = sub_1C8DF1388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.PaymentMethodValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315700, &qword_1C907D618);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1388();
  OUTLINED_FUNCTION_100_3();
  v12 = *v1;
  sub_1C8DF13DC();
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  if (!v0)
  {
    v6 = *(v1 + 1);
    v7 = *(v1 + 2);
    OUTLINED_FUNCTION_97_3();
    sub_1C9064ADC();
    v8 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
    OUTLINED_FUNCTION_275_1(v8);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v9);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v10 = OUTLINED_FUNCTION_86_2();
  v11(v10);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.hash(into:)()
{
  OUTLINED_FUNCTION_422();
  v2 = type metadata accessor for DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  MEMORY[0x1CCA82810](*v0);
  if (*(v0 + 2))
  {
    v10 = *(v0 + 1);
    sub_1C9064D9C();
    OUTLINED_FUNCTION_208_0();
    sub_1C9063FBC();
  }

  else
  {
    sub_1C9064D9C();
  }

  v11 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  sub_1C8DF0C88(&v0[*(v11 + 24)], v1);
  OUTLINED_FUNCTION_108_2(v1, 1, v2);
  if (v12)
  {
    sub_1C9064D9C();
  }

  else
  {
    OUTLINED_FUNCTION_3_29();
    OUTLINED_FUNCTION_148();
    sub_1C8CCEB64();
    sub_1C9064D9C();
    OUTLINED_FUNCTION_241_1();
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_421();
}

void TypedValue.PrimitiveValue.PaymentMethodValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_196();
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_110();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315718, &qword_1C907D620);
  OUTLINED_FUNCTION_11(v21);
  v40 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15_0();
  v26 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(0);
  v27 = OUTLINED_FUNCTION_13_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v32 = v31 - v30;
  v33 = v16[3];
  v34 = v16[4];
  OUTLINED_FUNCTION_122_3(v16);
  sub_1C8DF1388();
  OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_303_1();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1C8DF1430();
    sub_1C9064A6C();
    *v32 = a13;
    *(v32 + 8) = sub_1C90649AC();
    *(v32 + 16) = v35;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v36);
    sub_1C90649EC();
    v37 = *(v40 + 8);
    v38 = OUTLINED_FUNCTION_136();
    v39(v38);
    sub_1C8D60F48(v14, v32 + *(v26 + 24));
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_333();
  OUTLINED_FUNCTION_198();
}

id TypedValue.PrimitiveValue.FileValue.file.getter()
{
  v1 = *(v0 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20));

  return v1;
}

void TypedValue.PrimitiveValue.FileValue.init(file:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_116_3();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_145();
  TypedValue.PrimitiveValue.FileValue.init(file:displayRepresentation:)();
}

void TypedValue.PrimitiveValue.FileValue.init(file:displayRepresentation:)()
{
  OUTLINED_FUNCTION_164();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C9061ECC();
  v7 = OUTLINED_FUNCTION_11(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1C9061EBC();
  v16 = OUTLINED_FUNCTION_11(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_120_1();
  MEMORY[0x1EEE9AC00](v21);
  *(v5 + *(type metadata accessor for TypedValue.PrimitiveValue.FileValue(0) + 20)) = v3;
  v22 = [v3 fileURL];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v22;
  v42 = v9;
  v43 = v5;
  sub_1C9061E3C();

  OUTLINED_FUNCTION_206_2();
  v24 = OUTLINED_FUNCTION_181_1();
  v25(v24);
  v26 = sub_1C9061E4C();
  if ((v26 & 1) == 0)
  {
    v27 = [objc_opt_self() defaultManager];
    sub_1C9061E6C();
    v28 = sub_1C9063EBC();

    v29 = [v27 isWritableFileAtPath_];

    if (!v29)
    {
LABEL_9:
      v39 = *(v18 + 8);
      v40 = OUTLINED_FUNCTION_181();
      v41(v40);
      v5 = v43;
LABEL_10:
      sub_1C8D60F48(v1, v5);
      OUTLINED_FUNCTION_163();
      return;
    }
  }

  v30 = *MEMORY[0x1E69E9BB0];
  sub_1C9061E6C();
  v31 = *MEMORY[0x1E69E9BE0];
  sub_1C9063F7C();

  v32 = sandbox_extension_issue_file();

  if (!v32)
  {
LABEL_7:
    if (v26)
    {
      sub_1C9061E2C();
    }

    goto LABEL_9;
  }

  v33 = strlen(v32);
  v34 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    (*(v42 + 104))(v14, *MEMORY[0x1E6969000], v6);
    MEMORY[0x1CCA7F960](v32, v34, v14);
    v35 = sub_1C9061DDC();
    OUTLINED_FUNCTION_117();
    v36 = sub_1C9061EFC();
    MEMORY[0x1CCA82A40](v35, v36);

    v37 = OUTLINED_FUNCTION_117();
    sub_1C8CE7B78(v37, v38);
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C8DE52B8()
{
  OUTLINED_FUNCTION_422();
  v5 = v4;
  OUTLINED_FUNCTION_223();
  v6 = type metadata accessor for DisplayRepresentation(0);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_73();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_38();
  v19 = *(v18 + 56);
  v20 = OUTLINED_FUNCTION_276();
  sub_1C8DF0C88(v20, v21);
  sub_1C8DF0C88(v0, v2 + v19);
  OUTLINED_FUNCTION_108_2(v2, 1, v6);
  if (v22)
  {
    OUTLINED_FUNCTION_108_2(v2 + v19, 1, v6);
    if (v22)
    {
      sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
LABEL_12:
      v25 = *(v5(0) + 20);
      v26 = *(v1 + v25);
      v27 = *(v0 + v25);
      sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
      OUTLINED_FUNCTION_95_0();
      sub_1C90645BC();
      goto LABEL_13;
    }

LABEL_9:
    sub_1C8D16D78(v2, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_13;
  }

  sub_1C8DF0C88(v2, v3);
  OUTLINED_FUNCTION_108_2(v2 + v19, 1, v6);
  if (v22)
  {
    sub_1C8CC6AB4();
    goto LABEL_9;
  }

  sub_1C8CCEB64();
  OUTLINED_FUNCTION_278();
  static DisplayRepresentation.== infix(_:_:)();
  v24 = v23;
  sub_1C8CC6AB4();
  sub_1C8CC6AB4();
  sub_1C8D16D78(v2, &qword_1EC312788, &unk_1C906A3A0);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_421();
}

uint64_t sub_1C8DE550C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46656C6261646F63 && a2 == 0xEB00000000656C69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DE55E0(char a1)
{
  if (a1)
  {
    return 0x46656C6261646F63;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1C8DE562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE550C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE5654(uint64_t a1)
{
  v2 = sub_1C8DF1484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5690(uint64_t a1)
{
  v2 = sub_1C8DF1484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.FileValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_214_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315728, &qword_1C907D628);
  OUTLINED_FUNCTION_7_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1484();
  OUTLINED_FUNCTION_358();
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_1_42();
  sub_1C8CC8068(v5);
  OUTLINED_FUNCTION_90_1();
  sub_1C9064B0C();
  if (!v0)
  {
    v6 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(0);
    OUTLINED_FUNCTION_292_1(v6);
    v7 = OUTLINED_FUNCTION_276();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v9);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_12_0();
    sub_1C9064B8C();
    OUTLINED_FUNCTION_320_0();
  }

  v11 = OUTLINED_FUNCTION_111_0();
  v12(v11);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void sub_1C8DE5854(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = OUTLINED_FUNCTION_258();
  v7 = type metadata accessor for DisplayRepresentation(v6);
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_12();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51();
  v15 = OUTLINED_FUNCTION_206();
  sub_1C8DF0C88(v15, v16);
  OUTLINED_FUNCTION_78_4(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_276();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    v2 = v3;
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  v18 = *&v5[*(a2(0) + 20)];
  OUTLINED_FUNCTION_45_2();
  sub_1C90645CC();
}

void TypedValue.PrimitiveValue.FileValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_264_1(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_110();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315738, &qword_1C907D638);
  OUTLINED_FUNCTION_11(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_5();
  v13 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v12);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_12();
  v17 = v0[3];
  v18 = v0[4];
  OUTLINED_FUNCTION_122_3(v0);
  sub_1C8DF1484();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_291_0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0);
  }

  else
  {
    OUTLINED_FUNCTION_341_1();
    OUTLINED_FUNCTION_328_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v19);
    OUTLINED_FUNCTION_212_1();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    sub_1C8D60F48(v2, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315730, &qword_1C907D630);
    OUTLINED_FUNCTION_223_0();
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v20);
    OUTLINED_FUNCTION_245_0();
    v21 = OUTLINED_FUNCTION_139_1();
    v22(v21);
    OUTLINED_FUNCTION_323_1();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v0);
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DE5C50(uint64_t a1)
{
  v2 = sub_1C8DF1724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5C8C(uint64_t a1)
{
  v2 = sub_1C8DF1724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5CC8(uint64_t a1)
{
  v2 = sub_1C8DF1970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5D04(uint64_t a1)
{
  v2 = sub_1C8DF1970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5D40(uint64_t a1)
{
  v2 = sub_1C8DF1C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5D7C(uint64_t a1)
{
  v2 = sub_1C8DF1C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8DE5BF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8DE5DE0(uint64_t a1)
{
  v2 = sub_1C8CCA1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5E1C(uint64_t a1)
{
  v2 = sub_1C8CCA1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5E58(uint64_t a1)
{
  v2 = sub_1C8DF18C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5E94(uint64_t a1)
{
  v2 = sub_1C8DF18C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5ED0(uint64_t a1)
{
  v2 = sub_1C8DF1A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5F0C(uint64_t a1)
{
  v2 = sub_1C8DF1A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5F48(uint64_t a1)
{
  v2 = sub_1C8DF1A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5F84(uint64_t a1)
{
  v2 = sub_1C8DF1A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE5FC0(uint64_t a1)
{
  v2 = sub_1C8DF15D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE5FFC(uint64_t a1)
{
  v2 = sub_1C8DF15D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6038(uint64_t a1)
{
  v2 = sub_1C8DF1B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6074(uint64_t a1)
{
  v2 = sub_1C8DF1B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE60B0(uint64_t a1)
{
  v2 = sub_1C8DF1580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE60EC(uint64_t a1)
{
  v2 = sub_1C8DF1580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6128(uint64_t a1)
{
  v2 = sub_1C8DF1778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6164(uint64_t a1)
{
  v2 = sub_1C8DF1778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE61A0(uint64_t a1)
{
  v2 = sub_1C8DF1BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE61DC(uint64_t a1)
{
  v2 = sub_1C8DF1BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6218(uint64_t a1)
{
  v2 = sub_1C8DF14D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6254(uint64_t a1)
{
  v2 = sub_1C8DF14D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6290(uint64_t a1)
{
  v2 = sub_1C8DF191C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE62CC(uint64_t a1)
{
  v2 = sub_1C8DF191C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6308(uint64_t a1)
{
  v2 = sub_1C8CCA238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6344(uint64_t a1)
{
  v2 = sub_1C8CCA238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6380(uint64_t a1)
{
  v2 = sub_1C8DF1B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE63BC(uint64_t a1)
{
  v2 = sub_1C8DF1B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE63F8(uint64_t a1)
{
  v2 = sub_1C8DF1874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6434(uint64_t a1)
{
  v2 = sub_1C8DF1874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6470(uint64_t a1)
{
  v2 = sub_1C8DF17CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE64AC(uint64_t a1)
{
  v2 = sub_1C8DF17CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE64E8(uint64_t a1)
{
  v2 = sub_1C8DF152C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6524(uint64_t a1)
{
  v2 = sub_1C8DF152C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6560(uint64_t a1)
{
  v2 = sub_1C8DF1820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE659C(uint64_t a1)
{
  v2 = sub_1C8DF1820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE65D8(uint64_t a1)
{
  v2 = sub_1C8DF1628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6614(uint64_t a1)
{
  v2 = sub_1C8DF1628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6650(uint64_t a1)
{
  v2 = sub_1C8DF16D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE668C(uint64_t a1)
{
  v2 = sub_1C8DF16D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE66C8(uint64_t a1)
{
  v2 = sub_1C8DF167C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE6704(uint64_t a1)
{
  v2 = sub_1C8DF167C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE6740(uint64_t a1)
{
  v2 = sub_1C8DF1AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE677C(uint64_t a1)
{
  v2 = sub_1C8DF1AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DE67B8(uint64_t a1)
{
  v2 = sub_1C8DF19C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE67F4(uint64_t a1)
{
  v2 = sub_1C8DF19C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.PrimitiveValue.hash(into:)(uint64_t a1)
{
  v194 = a1;
  v7 = sub_1C9061D4C();
  v8 = OUTLINED_FUNCTION_11(v7);
  v190 = v9;
  v191 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v189[1] = v12;
  OUTLINED_FUNCTION_111();
  v13 = sub_1C906194C();
  v14 = OUTLINED_FUNCTION_11(v13);
  v188 = v15;
  v189[0] = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_111();
  v18 = sub_1C90622FC();
  v19 = OUTLINED_FUNCTION_11(v18);
  v186 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_0();
  v23 = OUTLINED_FUNCTION_111();
  v182 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v23);
  v24 = OUTLINED_FUNCTION_13_1(v182);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_0();
  v187 = v27;
  v28 = OUTLINED_FUNCTION_111();
  v29 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v28);
  v30 = OUTLINED_FUNCTION_23_16(v29, &v203);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_0();
  v185 = v33;
  v34 = OUTLINED_FUNCTION_111();
  v183 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v34);
  v35 = OUTLINED_FUNCTION_13_1(v183);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_7_0();
  v184 = v38;
  v39 = OUTLINED_FUNCTION_111();
  v192 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v39);
  v40 = OUTLINED_FUNCTION_13_1(v192);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7_0();
  v44 = OUTLINED_FUNCTION_27_0(v43);
  v45 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v44);
  v46 = OUTLINED_FUNCTION_23_16(v45, &v201);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_7_0();
  v50 = OUTLINED_FUNCTION_27_0(v49);
  v51 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v50);
  v52 = OUTLINED_FUNCTION_23_16(v51, &v200);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_7_0();
  v56 = OUTLINED_FUNCTION_27_0(v55);
  v193 = type metadata accessor for DisplayRepresentation(v56);
  v57 = OUTLINED_FUNCTION_13_1(v193);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_320(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  v62 = OUTLINED_FUNCTION_9(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_147();
  v72 = OUTLINED_FUNCTION_27_0(v71);
  v73 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v72);
  v74 = OUTLINED_FUNCTION_23_16(v73, &v194);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_94_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  OUTLINED_FUNCTION_4_22(v78, &v193);
  v174 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_27_0(v83);
  v84 = sub_1C9061C0C();
  v85 = OUTLINED_FUNCTION_4_22(v84, v189);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_17_12();
  v88 = sub_1C9061EBC();
  v89 = OUTLINED_FUNCTION_11(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_67_4();
  v92 = sub_1C9061BAC();
  v93 = OUTLINED_FUNCTION_7_21(v92);
  v173 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_14();
  v97 = sub_1C9061FEC();
  v98 = OUTLINED_FUNCTION_11(v97);
  v100 = v99;
  v102 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_15();
  v103 = OUTLINED_FUNCTION_32_7();
  v104 = type metadata accessor for TypedValue.PrimitiveValue(v103);
  v105 = OUTLINED_FUNCTION_13_1(v104);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  OUTLINED_FUNCTION_0_47();
  sub_1C8CC5734();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v134 = *v2;
      MEMORY[0x1CCA82810](2);
      v135 = v134;
      goto LABEL_44;
    case 2u:
      v120 = *v2;
      MEMORY[0x1CCA82810](3);
      v121 = 0.0;
      if (v120 != 0.0)
      {
        v121 = v120;
      }

      MEMORY[0x1CCA82830](*&v121);
      return;
    case 3u:
      v125 = *(v2 + 4);
      v127 = *v2;
      v126 = *(v2 + 1);
      MEMORY[0x1CCA82810](4);
      OUTLINED_FUNCTION_181();
      sub_1C90645FC();
      return;
    case 4u:
      v113 = *v2;
      v114 = *(v2 + 1);
      MEMORY[0x1CCA82810](5);
      OUTLINED_FUNCTION_95_0();
      sub_1C9063FBC();

      return;
    case 5u:
      v141 = *(v100 + 32);
      v142 = OUTLINED_FUNCTION_206();
      v143(v142);
      MEMORY[0x1CCA82810](6);
      OUTLINED_FUNCTION_36_9();
      sub_1C8CC8068(v144);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      (*(v100 + 8))(v3, v97);
      return;
    case 6u:
      v117 = v173;
      v148 = OUTLINED_FUNCTION_120_3();
      v149(v148);
      MEMORY[0x1CCA82810](7);
      OUTLINED_FUNCTION_34_9();
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_263_1(&v190);
      v128(v6, v2, v88);
      MEMORY[0x1CCA82810](8);
      OUTLINED_FUNCTION_38_10();
      sub_1C8CC8068(v129);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v130 = *(v1 + 8);
      v131 = OUTLINED_FUNCTION_219();
      goto LABEL_38;
    case 8u:
      OUTLINED_FUNCTION_263_1(&v191);
      v158 = OUTLINED_FUNCTION_254();
      v159(v158);
      MEMORY[0x1CCA82810](9);
      OUTLINED_FUNCTION_33_8();
      sub_1C8CC8068(v160);
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v133 = *(v1 + 8);
      v131 = v5;
      v132 = v172;
LABEL_38:
      v133(v131, v132);
      return;
    case 9u:
      v117 = v174;
      OUTLINED_FUNCTION_206_2();
      v118 = OUTLINED_FUNCTION_119();
      v119(v118);
      MEMORY[0x1CCA82810](10);
      sub_1C8D24EA8(&unk_1EC3158E0);
      goto LABEL_42;
    case 0xAu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_220_1(&v197);
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](11);
      v152 = *(v3 + 16);
      OUTLINED_FUNCTION_339_1();
      sub_1C90645FC();
      v153 = *(v3 + 24);
      v154 = *(v3 + 32);
      sub_1C9063FBC();
      v155 = v3 + *(v175 + 24);
      OUTLINED_FUNCTION_130_0(v196);
      sub_1C8DF0C88(v156, v157);
      OUTLINED_FUNCTION_108_2(v1, 1, v193);
      if (!v111)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    case 0xBu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1(&v202);
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](12);
      MEMORY[0x1CCA82810](*v4);
      if (*(v4 + 2))
      {
        v112 = *(v4 + 1);
        sub_1C9064D9C();
        OUTLINED_FUNCTION_209();
        sub_1C9063FBC();
      }

      else
      {
        sub_1C9064D9C();
      }

      v171 = v193;
      sub_1C8DF0C88(&v4[*(v179 + 24)], v178);
      OUTLINED_FUNCTION_108_2(v178, 1, v171);
      if (v111)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_3_29();
      sub_1C8CCEB64();
      sub_1C9064D9C();
      OUTLINED_FUNCTION_241_1();
      DisplayRepresentation.hash(into:)();
      OUTLINED_FUNCTION_2_33();
      sub_1C8CC6AB4();
      goto LABEL_56;
    case 0xCu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1(&v205);
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](13);
      OUTLINED_FUNCTION_130_0(&v195);
      sub_1C8DF0C88(v115, v116);
      OUTLINED_FUNCTION_108_2(v1, 1, v193);
      if (v111)
      {
        OUTLINED_FUNCTION_308();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_254_0();
        OUTLINED_FUNCTION_419();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v168 = *&v4[*(v180 + 20)];
      if (v168)
      {
        MEMORY[0x1CCA82810](1);
        v169 = v168;
        sub_1C90645CC();
      }

      else
      {
        MEMORY[0x1CCA82810](0);
      }

      goto LABEL_56;
    case 0xDu:
      OUTLINED_FUNCTION_152();
      OUTLINED_FUNCTION_207_1(&v204);
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](14);
      v110 = v176;
      sub_1C8DF0C88(v4, v176);
      OUTLINED_FUNCTION_108_2(v176, 1, v193);
      if (v111)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_346_1();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v170 = *&v4[*(v192 + 20)];
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();
      goto LABEL_49;
    case 0xEu:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](15);
      v110 = v177;
      sub_1C8DF0C88(v184, v177);
      OUTLINED_FUNCTION_108_2(v177, 1, v193);
      if (v111)
      {
        OUTLINED_FUNCTION_283();
      }

      else
      {
        OUTLINED_FUNCTION_3_29();
        sub_1C8CCEB64();
        OUTLINED_FUNCTION_284();
        OUTLINED_FUNCTION_346_1();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

      v167 = *(v184 + *(v183 + 20));
      OUTLINED_FUNCTION_45_2();
      sub_1C90645CC();
LABEL_49:
      sub_1C8CC6AB4();
      goto LABEL_50;
    case 0xFu:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](16);
      OUTLINED_FUNCTION_339_1();
      sub_1C9063FBC();
      v122 = v185 + *(v181 + 20);
      OUTLINED_FUNCTION_130_0(&v198);
      sub_1C8DF0C88(v123, v124);
      OUTLINED_FUNCTION_108_2(v1, 1, v193);
      if (!v111)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    case 0x10u:
      v109 = *v2;
      MEMORY[0x1CCA82810](17);
      OUTLINED_FUNCTION_241_1();
      sub_1C90645CC();

      return;
    case 0x11u:
      OUTLINED_FUNCTION_152();
      sub_1C8CCEB64();
      MEMORY[0x1CCA82810](18);
      OUTLINED_FUNCTION_339_1();
      sub_1C9063FBC();
      v136 = v187 + *(v182 + 20);
      OUTLINED_FUNCTION_130_0(&v199);
      sub_1C8DF0C88(v137, v138);
      OUTLINED_FUNCTION_108_2(v1, 1, v193);
      if (v111)
      {
LABEL_54:
        sub_1C9064D9C();
      }

      else
      {
LABEL_35:
        OUTLINED_FUNCTION_3_29();
        OUTLINED_FUNCTION_254_0();
        sub_1C9064D9C();
        OUTLINED_FUNCTION_241_1();
        DisplayRepresentation.hash(into:)();
        OUTLINED_FUNCTION_2_33();
        sub_1C8CC6AB4();
      }

LABEL_56:
      sub_1C8CC6AB4();
      return;
    case 0x12u:
      v117 = v186;
      v150 = OUTLINED_FUNCTION_120_3();
      v151(v150);
      MEMORY[0x1CCA82810](19);
      OUTLINED_FUNCTION_70_1();
      goto LABEL_41;
    case 0x13u:
      v117 = v188;
      v162 = OUTLINED_FUNCTION_120_3();
      v163(v162);
      MEMORY[0x1CCA82810](20);
      OUTLINED_FUNCTION_32_8();
      goto LABEL_41;
    case 0x14u:
      v139 = *v2;
      v140 = *(v2 + 1);
      MEMORY[0x1CCA82810](21);
      OUTLINED_FUNCTION_95_0();
      sub_1C9064E6C();
      return;
    case 0x15u:
      v117 = v190;
      v145 = OUTLINED_FUNCTION_120_3();
      v146(v145);
      MEMORY[0x1CCA82810](22);
      OUTLINED_FUNCTION_35_11();
LABEL_41:
      sub_1C8CC8068(v147);
LABEL_42:
      OUTLINED_FUNCTION_165_1();
      sub_1C9063E7C();
      v164 = *(v117 + 8);
      v165 = OUTLINED_FUNCTION_93();
      v166(v165);
      break;
    case 0x16u:
      v161 = *v2;
      MEMORY[0x1CCA82810](23);
      v110 = v161;
      sub_1C90645CC();

LABEL_50:
      break;
    case 0x17u:
      v135 = 0.0;
LABEL_44:
      MEMORY[0x1CCA82810](*&v135);
      break;
    default:
      v108 = *v2;
      MEMORY[0x1CCA82810](1);
      sub_1C9064D9C();
      break;
  }
}

uint64_t == infix(_:_:)(uint64_t a1, void *a2)
{
  v262 = a1;
  v263 = a2;
  v4 = sub_1C9061D4C();
  v5 = OUTLINED_FUNCTION_11(v4);
  v259 = v6;
  v260 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v10);
  v11 = sub_1C906194C();
  v12 = OUTLINED_FUNCTION_11(v11);
  v257 = v13;
  v258 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v17);
  v18 = sub_1C90622FC();
  v19 = OUTLINED_FUNCTION_11(v18);
  v255 = v20;
  v256 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_147();
  v25 = OUTLINED_FUNCTION_27_0(v24);
  v26 = type metadata accessor for TypedValue.PrimitiveValue.Shortcut(v25);
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_147();
  v32 = OUTLINED_FUNCTION_27_0(v31);
  v33 = type metadata accessor for TypedValue.PrimitiveValue.AppValue(v32);
  v34 = OUTLINED_FUNCTION_9(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_147();
  v39 = OUTLINED_FUNCTION_27_0(v38);
  v40 = type metadata accessor for TypedValue.PrimitiveValue.FileValue(v39);
  v41 = OUTLINED_FUNCTION_9(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_147();
  v46 = OUTLINED_FUNCTION_27_0(v45);
  v47 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue(v46);
  v48 = OUTLINED_FUNCTION_9(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_147();
  v53 = OUTLINED_FUNCTION_27_0(v52);
  v54 = type metadata accessor for TypedValue.PrimitiveValue.PlacemarkValue(v53);
  v55 = OUTLINED_FUNCTION_9(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_147();
  v60 = OUTLINED_FUNCTION_27_0(v59);
  v61 = type metadata accessor for TypedValue.PrimitiveValue.PaymentMethodValue(v60);
  v62 = OUTLINED_FUNCTION_9(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_147();
  v67 = OUTLINED_FUNCTION_27_0(v66);
  v68 = type metadata accessor for TypedValue.PrimitiveValue.CurrencyAmountValue(v67);
  v69 = OUTLINED_FUNCTION_9(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_94_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313A00, &qword_1C906F540);
  v75 = OUTLINED_FUNCTION_11(v74);
  v253 = v76;
  v254 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v80);
  v81 = sub_1C9061C0C();
  v82 = OUTLINED_FUNCTION_11(v81);
  v251 = v83;
  v252 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v87);
  v88 = sub_1C9061EBC();
  v89 = OUTLINED_FUNCTION_11(v88);
  v249 = v90;
  v250 = v89;
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v94);
  v95 = sub_1C9061BAC();
  v96 = OUTLINED_FUNCTION_11(v95);
  v247 = v97;
  v248 = v96;
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_27_0(v101);
  v102 = sub_1C9061FEC();
  v103 = OUTLINED_FUNCTION_11(v102);
  v245 = v104;
  v246 = v103;
  v106 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_147();
  v109 = OUTLINED_FUNCTION_27_0(v108);
  v261 = type metadata accessor for TypedValue.PrimitiveValue(v109);
  v110 = OUTLINED_FUNCTION_13_1(v261);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_337_1();
  MEMORY[0x1EEE9AC00](v129);
  v131 = (v234 - v130);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_59_5();
  MEMORY[0x1EEE9AC00](v133);
  v135 = v234 - v134;
  MEMORY[0x1EEE9AC00](v136);
  v138 = (v234 - v137);
  MEMORY[0x1EEE9AC00](v139);
  v141 = (v234 - v140);
  MEMORY[0x1EEE9AC00](v142);
  v144 = v234 - v143;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A10, &qword_1C907D7D8);
  OUTLINED_FUNCTION_9(v145);
  v147 = *(v146 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_15_0();
  v150 = v2 + *(v149 + 56);
  sub_1C8CC5734();
  v263 = v150;
  sub_1C8CC5734();
  OUTLINED_FUNCTION_146_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C8CC5734();
      v196 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_84;
      }

      v186 = *v141 == *v196;
      goto LABEL_35;
    case 2u:
      OUTLINED_FUNCTION_347();
      sub_1C8CC5734();
      v185 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_84;
      }

      v186 = *v138 == *v185;
LABEL_35:
      v152 = v186;
      goto LABEL_63;
    case 3u:
      sub_1C8CC5734();
      v188 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_84;
      }

      v189 = MEMORY[0x1CCA82070](*v135, *(v135 + 1), *(v135 + 4), *v188, v188[1], *(v188 + 4));
      goto LABEL_42;
    case 4u:
      sub_1C8CC5734();
      v159 = *v3;
      v158 = v3[1];
      v160 = v263;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_84;
      }

      v161 = *v160;
      v162 = v160[1];
      if (v159 == v161 && v158 == v162)
      {
        v152 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_134();
        v152 = sub_1C9064C2C();
      }

      goto LABEL_63;
    case 5u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_378();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_288();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v204 = v245;
        v205 = *(v245 + 32);
        v206 = v234[0];
        v207 = v131;
        v208 = v246;
        (v205)(v234[0], v207, v246);
        v209 = v234[1];
        v210 = OUTLINED_FUNCTION_278();
        v205(v210);
        OUTLINED_FUNCTION_219();
        v152 = sub_1C9061FCC();
        v211 = *(v204 + 8);
        v211(v209, v208);
        v211(v206, v208);
        goto LABEL_63;
      }

      (*(v245 + 8))(v131, v246);
      goto LABEL_84;
    case 6u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_203();
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v191 = v247;
        v194 = v248;
        OUTLINED_FUNCTION_274_2();
        v144 = v234[2];
        v215 = OUTLINED_FUNCTION_219();
        v131(v215);
        v216 = OUTLINED_FUNCTION_87_3(v237);
        v131(v216);
        v217 = OUTLINED_FUNCTION_219();
        v195 = MEMORY[0x1CCA7F4B0](v217);
        goto LABEL_62;
      }

      v230 = OUTLINED_FUNCTION_241();
      goto LABEL_83;
    case 7u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(&v262);
      sub_1C8CC5734();
      v190 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v191 = v249;
        v192 = *(v249 + 32);
        v193 = OUTLINED_FUNCTION_142_2(v238);
        v194 = v250;
        v192(v193);
        (v192)(v234[5], v190, v194);
        OUTLINED_FUNCTION_219();
        v195 = sub_1C9061E1C();
        goto LABEL_62;
      }

      v229 = v249;
      v228 = v250;
      goto LABEL_82;
    case 8u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(&v263);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v191 = v251;
        OUTLINED_FUNCTION_274_2();
        v222 = OUTLINED_FUNCTION_142_2(v239);
        v194 = v252;
        v131(v222);
        v223 = OUTLINED_FUNCTION_87_3(v240);
        v131(v223);
        OUTLINED_FUNCTION_219();
        v195 = sub_1C9061BFC();
        goto LABEL_62;
      }

      v229 = v251;
      v228 = v252;
      goto LABEL_82;
    case 9u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(v264);
      sub_1C8CC5734();
      v165 = v263;
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v229 = v253;
        v228 = v254;
        goto LABEL_82;
      }

      v167 = v253;
      v166 = v254;
      v168 = *(v253 + 32);
      v169 = v235;
      v168(v235, v135, v254);
      v170 = v236;
      v168(v236, v165, v166);
      sub_1C90618DC();
      v172 = v171;
      sub_1C90618DC();
      if (v172 == v173)
      {
        v174 = sub_1C90618BC();
        v175 = [v174 symbol];

        v176 = sub_1C9063EEC();
        v178 = v177;

        v179 = sub_1C90618BC();
        v180 = [v179 symbol];

        v181 = sub_1C9063EEC();
        v183 = v182;

        if (v176 == v181 && v178 == v183)
        {
          v152 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_134();
          v152 = sub_1C9064C2C();
        }
      }

      else
      {
        v152 = 0;
      }

      v233 = *(v167 + 8);
      v233(v170, v166);
      v233(v169, v166);
      goto LABEL_63;
    case 0xAu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v265);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(v241);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.CurrencyAmountValue.== infix(_:_:)();
      v152 = v221;
      goto LABEL_55;
    case 0xBu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v266);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(v242);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PaymentMethodValue.== infix(_:_:)();
      v152 = v157;
      goto LABEL_55;
    case 0xCu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v267);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(v244);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PlacemarkValue.== infix(_:_:)();
      v152 = v164;
      goto LABEL_55;
    case 0xDu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v268);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(&v248);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.PersonValue.== infix(_:_:)();
      v152 = v214;
      goto LABEL_55;
    case 0xEu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v270);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(&v250);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.FileValue.== infix(_:_:)();
      v152 = v156;
      goto LABEL_55;
    case 0xFu:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v271);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_79;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(&v252);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.AppValue.== infix(_:_:)();
      v152 = v187;
      goto LABEL_55;
    case 0x10u:
      OUTLINED_FUNCTION_130_0(&v269);
      sub_1C8CC5734();
      v153 = *type metadata accessor for TypedValue.PrimitiveValue;
      v154 = v263;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_5;
      }

      goto LABEL_59;
    case 0x11u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_220_1(&v272);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_79:
        sub_1C8CC6AB4();
        goto LABEL_84;
      }

      sub_1C8CCEB64();
      OUTLINED_FUNCTION_193_2(&v254);
      OUTLINED_FUNCTION_119();
      static TypedValue.PrimitiveValue.Shortcut.== infix(_:_:)();
      v152 = v197;
LABEL_55:
      sub_1C8CC6AB4();
      OUTLINED_FUNCTION_93();
      sub_1C8CC6AB4();
      goto LABEL_63;
    case 0x12u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(&v273);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v191 = v255;
        OUTLINED_FUNCTION_274_2();
        v218 = OUTLINED_FUNCTION_142_2(&v255);
        v194 = v256;
        v131(v218);
        v219 = OUTLINED_FUNCTION_87_3(&v256);
        v131(v219);
        v220 = OUTLINED_FUNCTION_219();
        v195 = MEMORY[0x1CCA7FC00](v220);
        goto LABEL_62;
      }

      v229 = v255;
      v228 = v256;
      goto LABEL_82;
    case 0x13u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(&v274);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        v191 = v257;
        OUTLINED_FUNCTION_274_2();
        v224 = OUTLINED_FUNCTION_142_2(&v257);
        v194 = v258;
        v131(v224);
        v225 = OUTLINED_FUNCTION_87_3(&v258);
        v131(v225);
        OUTLINED_FUNCTION_219();
        v195 = sub_1C90618EC();
        goto LABEL_62;
      }

      v229 = v257;
      v228 = v258;
      goto LABEL_82;
    case 0x14u:
      v198 = v243;
      sub_1C8CC5734();
      v199 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_84;
      }

      v200 = *v198;
      v201 = v198[1];
      v202 = *v199;
      v203 = v199[1];
      v189 = sub_1C9064E5C();
LABEL_42:
      v152 = v189;
      goto LABEL_63;
    case 0x15u:
      OUTLINED_FUNCTION_0_47();
      OUTLINED_FUNCTION_207_1(&v275);
      sub_1C8CC5734();
      OUTLINED_FUNCTION_181_0();
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v191 = v259;
        OUTLINED_FUNCTION_274_2();
        v212 = OUTLINED_FUNCTION_142_2(&v259);
        v194 = v260;
        v131(v212);
        v213 = OUTLINED_FUNCTION_87_3(&v260);
        v131(v213);
        OUTLINED_FUNCTION_219();
        v195 = sub_1C9061D1C();
LABEL_62:
        v152 = v195;
        v226 = *(v191 + 8);
        v227 = OUTLINED_FUNCTION_278();
        v226(v227);
        (v226)(v144, v194);
        goto LABEL_63;
      }

      v229 = v259;
      v228 = v260;
LABEL_82:
      v231 = *(v229 + 8);
      v230 = v135;
LABEL_83:
      v231(v230, v228);
      goto LABEL_84;
    case 0x16u:
      OUTLINED_FUNCTION_130_0(&v261);
      sub_1C8CC5734();
      v153 = *type metadata accessor for TypedValue.PrimitiveValue;
      v154 = v263;
      OUTLINED_FUNCTION_276();
      if (swift_getEnumCaseMultiPayload() == 22)
      {
LABEL_5:
        v155 = *v154;
        sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
        OUTLINED_FUNCTION_45_2();
        v152 = sub_1C90645BC();

LABEL_63:
        sub_1C8CC6AB4();
      }

      else
      {
LABEL_59:

LABEL_84:
        sub_1C8D16D78(v2, &qword_1EC315A10, &qword_1C907D7D8);
        v152 = 0;
      }

      return v152 & 1;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_84;
      }

      sub_1C8CC6AB4();
      v152 = 1;
      return v152 & 1;
    default:
      sub_1C8CC5734();
      v151 = v263;
      OUTLINED_FUNCTION_117();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_84;
      }

      v152 = *v144 ^ *v151 ^ 1;
      goto LABEL_63;
  }
}

uint64_t TypedValue.EnumerationValue.case.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

uint64_t TypedValue.EnumerationValue.init(type:case:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for TypedValue.EnumerationValue(0) + 24);
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  result = __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *a4 = v7;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1C8DE8F78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702060387 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DE9098(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1702060387;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DE90EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE8F78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DE9114(uint64_t a1)
{
  v2 = sub_1C8DF1C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DE9150(uint64_t a1)
{
  v2 = sub_1C8DF1C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.EnumerationValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A18, &qword_1C907D7E0);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1C64();
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_294_1();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v0)
  {
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    OUTLINED_FUNCTION_97_3();
    sub_1C9064B2C();
    v8 = type metadata accessor for TypedValue.EnumerationValue(0);
    OUTLINED_FUNCTION_275_1(v8);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v9);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v10 = OUTLINED_FUNCTION_86_2();
  v11(v10);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

void TypedValue.EnumerationValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_86();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A20, &qword_1C907D7E8);
  OUTLINED_FUNCTION_11(v22);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_16_5();
  v12 = type metadata accessor for TypedValue.EnumerationValue(v11);
  v13 = OUTLINED_FUNCTION_13_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_94_1();
  v16 = v3[3];
  v17 = v3[4];
  OUTLINED_FUNCTION_122_3(v3);
  sub_1C8DF1C64();
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_303_1();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    *(v1 + 8) = OUTLINED_FUNCTION_228_1();
    *(v1 + 16) = v18;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v19);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v20 = OUTLINED_FUNCTION_0_2();
    v21(v20);
    sub_1C8D60F48(v1, v1 + *(v12 + 24));
    OUTLINED_FUNCTION_13_15();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_41_8();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.EntityValue.displayRepresentation.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  v1 = type metadata accessor for TypedValue.EntityValue(v0);
  v2 = OUTLINED_FUNCTION_108_1(*(v1 + 28));

  return sub_1C8DF0C88(v2, v3);
}

id TypedValue.EntityValue.hydratedAppEntity.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(v1 + *(type metadata accessor for TypedValue.EntityValue(v2) + 32));
  *v0 = v3;

  return v3;
}

id TypedValue.EntityValue.siriKitEntity.getter()
{
  v2 = OUTLINED_FUNCTION_386();
  v3 = *(v1 + *(type metadata accessor for TypedValue.EntityValue(v2) + 36));
  *v0 = v3;

  return v3;
}

uint64_t TypedValue.EntityValue.init(type:identifier:properties:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_73();
  v15 = *a1;
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *a5 = v15;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  v20 = type metadata accessor for TypedValue.EntityValue(0);
  result = sub_1C8D60F48(v5, a5 + v20[7]);
  *(a5 + v20[8]) = 0;
  *(a5 + v20[9]) = 0;
  return result;
}

uint64_t TypedValue.EntityValue.init(type:identifier:properties:displayRepresentation:hydratedAppEntity:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = *a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v9 = type metadata accessor for TypedValue.EntityValue(0);
  result = OUTLINED_FUNCTION_343_1(v9);
  *(a6 + *(v6 + 32)) = a5;
  *(a6 + *(v6 + 36)) = 0;
  return result;
}

void TypedValue.EntityValue.init(type:transientAppEntity:)()
{
  OUTLINED_FUNCTION_422();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = [v0 identifier];
  v7 = [v6 instanceIdentifier];

  v8 = sub_1C9063EEC();
  v10 = v9;

  v11 = sub_1C9063E2C();
  v12 = type metadata accessor for TypedValue.EntityValue(0);
  v13 = v12[7];
  type metadata accessor for DisplayRepresentation(0);
  OUTLINED_FUNCTION_115();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *v3 = v5;
  v3[1] = v8;
  v3[2] = v10;
  v3[3] = v11;
  *(v3 + v12[8]) = v1;
  *(v3 + v12[9]) = 0;
  OUTLINED_FUNCTION_421();
}

uint64_t TypedValue.EntityValue.init(identifier:type:displayRepresentation:object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a3;
  a5[1] = a1;
  a5[2] = a2;
  *a5 = v8;
  a5[3] = sub_1C9063E2C();
  v9 = type metadata accessor for TypedValue.EntityValue(0);
  result = OUTLINED_FUNCTION_343_1(v9);
  *(a5 + *(v5 + 32)) = 0;
  *(a5 + *(v5 + 36)) = a4;
  return result;
}

uint64_t TypedValue.EntityValue.init(identifier:type:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a3;
  a5[1] = a1;
  a5[2] = a2;
  *a5 = v7;
  a5[3] = sub_1C9063E2C();
  v8 = type metadata accessor for TypedValue.EntityValue(0);
  result = sub_1C8D60F48(a4, a5 + v8[7]);
  *(a5 + v8[8]) = 0;
  *(a5 + v8[9]) = 0;
  return result;
}

void static TypedValue.EntityValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for DisplayRepresentation(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_290();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_38();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A20, &qword_1C9068E00);
  OUTLINED_FUNCTION_13_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_72();
  v17 = *v4;
  v37 = *v2;
  v38 = v17;

  LOBYTE(v17) = static TypeIdentifier.== infix(_:_:)(&v38, &v37);

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = v4[1] == v2[1] && v4[2] == v2[2];
  if (!v18 && (sub_1C9064C2C() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1C8F55F9C(v4[3], v2[3]);
  if ((v19 & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = type metadata accessor for TypedValue.EntityValue(0);
  v21 = v20[7];
  v22 = *(v13 + 48);
  sub_1C8DF0C88(v4 + v21, v0);
  sub_1C8DF0C88(v2 + v21, v0 + v22);
  OUTLINED_FUNCTION_78_4(v0);
  if (!v18)
  {
    v23 = OUTLINED_FUNCTION_288();
    sub_1C8DF0C88(v23, v24);
    OUTLINED_FUNCTION_78_4(v0 + v22);
    if (!v25)
    {
      OUTLINED_FUNCTION_3_29();
      sub_1C8CCEB64();
      OUTLINED_FUNCTION_254();
      static DisplayRepresentation.== infix(_:_:)();
      OUTLINED_FUNCTION_177_3();
      sub_1C8CC6AB4();
      sub_1C8CC6AB4();
      sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
      if ((v5 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
LABEL_16:
    sub_1C8D16D78(v0, &qword_1EC312A20, &qword_1C9068E00);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_78_4(v0 + v22);
  if (!v18)
  {
    goto LABEL_16;
  }

  sub_1C8D16D78(v0, &qword_1EC312788, &unk_1C906A3A0);
LABEL_19:
  v26 = v20[8];
  v27 = *(v4 + v26);
  v28 = *(v2 + v26);
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_17;
    }

    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v29 = v27;
    v30 = v28;
    OUTLINED_FUNCTION_288();
    v31 = sub_1C90645BC();

    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v28)
  {
    goto LABEL_17;
  }

  v32 = v20[9];
  v33 = *(v4 + v32);
  v34 = *(v2 + v32);
  if (v33 && v34)
  {
    sub_1C8CB78AC(0, &qword_1EDA60460, 0x1E69E58C0);
    v35 = v33;
    v36 = v34;
    OUTLINED_FUNCTION_145();
    sub_1C90645BC();
  }

LABEL_17:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DE9D08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C90CAD70 == a2;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x4574694B69726973 && a2 == 0xED0000797469746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C8DE9F0C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x69747265706F7270;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x4574694B69726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DE9FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DE9D08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEA00C(uint64_t a1)
{
  v2 = sub_1C8DF1CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEA048(uint64_t a1)
{
  v2 = sub_1C8DF1CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.EntityValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A28, &qword_1C907D7F0);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1CB8();
  OUTLINED_FUNCTION_358();
  v25 = *v0;
  sub_1C8C9FB9C();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  if (v1)
  {
    OUTLINED_FUNCTION_157();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    v8 = v0[1];
    v9 = v0[2];
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
    v26 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A30, &qword_1C907D7F8);
    OUTLINED_FUNCTION_168_3();
    sub_1C8DF1D0C(v10);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
    v11 = type metadata accessor for TypedValue.EntityValue(0);
    v12 = v11[7];
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v13);
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
    v27 = *(v0 + v11[8]);
    v14 = v27;
    v15 = OUTLINED_FUNCTION_181_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v17);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();

    v28 = *(v0 + v11[9]);
    v18 = v28;
    v19 = OUTLINED_FUNCTION_136();
    __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
    OUTLINED_FUNCTION_6_18();
    sub_1C8D24EA8(v21);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B0C();
  }

  v22 = *(v4 + 8);
  v23 = OUTLINED_FUNCTION_93();
  v24(v23);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void TypedValue.EntityValue.hash(into:)()
{
  OUTLINED_FUNCTION_422();
  v4 = v1;
  v5 = OUTLINED_FUNCTION_258();
  v6 = type metadata accessor for DisplayRepresentation(v5);
  v7 = OUTLINED_FUNCTION_13_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_342_1();
  v14 = v1[1];
  v15 = v1[2];
  sub_1C9063FBC();
  sub_1C8DC752C(v0, v1[3]);
  v16 = type metadata accessor for TypedValue.EntityValue(0);
  sub_1C8DF0C88(v1 + v16[7], v3);
  OUTLINED_FUNCTION_78_4(v3);
  if (v17)
  {
    OUTLINED_FUNCTION_283();
  }

  else
  {
    OUTLINED_FUNCTION_3_29();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_284();
    v1 = v2;
    DisplayRepresentation.hash(into:)();
    OUTLINED_FUNCTION_2_33();
    sub_1C8CC6AB4();
  }

  v18 = *(v4 + v16[8]);
  if (v18)
  {
    OUTLINED_FUNCTION_284();
    v19 = v18;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  v20 = *(v4 + v16[9]);
  if (v20)
  {
    OUTLINED_FUNCTION_284();
    v21 = v20;
    OUTLINED_FUNCTION_45_2();
    sub_1C90645CC();
  }

  else
  {
    OUTLINED_FUNCTION_283();
  }

  OUTLINED_FUNCTION_421();
}

void TypedValue.EntityValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_110();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A50, &qword_1C907D810);
  OUTLINED_FUNCTION_11(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_86();
  v40 = type metadata accessor for TypedValue.EntityValue(0);
  v22 = OUTLINED_FUNCTION_13_1(v40);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_0();
  v26 = v25;
  v28 = v13[3];
  v27 = v13[4];
  v29 = OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_217(v29, v30);
  sub_1C8DF1CB8();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_105_1();
    sub_1C9064A6C();
    *v26 = a10;
    OUTLINED_FUNCTION_277_0();
    OUTLINED_FUNCTION_210_1();
    v26[1] = sub_1C9064A0C();
    v26[2] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A30, &qword_1C907D7F8);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_167_1();
    sub_1C8DF1D0C(v32);
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_210_1();
    sub_1C9064A6C();
    v26[3] = a10;
    type metadata accessor for DisplayRepresentation(0);
    LOBYTE(a10) = 3;
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v33);
    OUTLINED_FUNCTION_315_0();
    OUTLINED_FUNCTION_210_1();
    sub_1C90649EC();
    sub_1C8D60F48(v11, v26 + v40[7]);
    v34 = OUTLINED_FUNCTION_276();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v36);
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_210_1();
    sub_1C90649EC();
    *(v26 + v40[8]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A40, &qword_1C907D808);
    OUTLINED_FUNCTION_5_24();
    sub_1C8D24EA8(v37);
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_210_1();
    sub_1C90649EC();
    v38 = OUTLINED_FUNCTION_107_3();
    v39(v38, v18);
    *(v26 + v40[9]) = a10;
    OUTLINED_FUNCTION_15_15();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_73_2();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.CodableValue.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_94();
}

uint64_t TypedValue.CodableValue.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_94();
  sub_1C8CE9144(v3, v4);
  return OUTLINED_FUNCTION_94();
}

uint64_t TypedValue.CodableValue.init(identifier:data:displayRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  v5 = type metadata accessor for TypedValue.CodableValue(0);
  v6 = OUTLINED_FUNCTION_216_0(v5);

  return sub_1C8D60F48(v6, v7);
}

uint64_t static TypedValue.CodableValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {
    v4 = v1[2];
    v5 = v1[3];
    v6 = v0[2];
    v7 = v0[3];

    JUMPOUT(0x1CCA7F9A0);
  }

  return 0;
}

uint64_t sub_1C8DEAB88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C90C9740 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8DEACA8(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 1635017060;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C8DEAD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEAB88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEAD30(uint64_t a1)
{
  v2 = sub_1C8DF1D88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEAD6C(uint64_t a1)
{
  v2 = sub_1C8DF1D88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.CodableValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A60, &qword_1C907D818);
  OUTLINED_FUNCTION_7_21(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1D88();
  OUTLINED_FUNCTION_100_3();
  v6 = *v1;
  v7 = v1[1];
  OUTLINED_FUNCTION_97_3();
  sub_1C9064B2C();
  if (!v0)
  {
    v14 = v1[2];
    v15 = v1[3];
    OUTLINED_FUNCTION_276_0();
    sub_1C8CE9144(v8, v9);
    sub_1C8D02AA8();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_118_1();
    sub_1C9064B8C();
    sub_1C8CE7B78(v14, v15);
    v10 = type metadata accessor for TypedValue.CodableValue(0);
    OUTLINED_FUNCTION_275_1(v10);
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v11);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B0C();
  }

  v12 = OUTLINED_FUNCTION_86_2();
  v13(v12);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t TypedValue.CodableValue.hash(into:)()
{
  v2 = type metadata accessor for DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_17();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38();
  v10 = *v0;
  v11 = v0[1];
  sub_1C9063FBC();
  v12 = v0[2];
  v13 = v0[3];
  sub_1C9061F4C();
  v14 = type metadata accessor for TypedValue.CodableValue(0);
  sub_1C8DF0C88(v0 + *(v14 + 24), v1);
  OUTLINED_FUNCTION_92_0(v1);
  if (v15)
  {
    return OUTLINED_FUNCTION_308();
  }

  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_148();
  sub_1C8CCEB64();
  OUTLINED_FUNCTION_419();
  DisplayRepresentation.hash(into:)();
  OUTLINED_FUNCTION_2_33();
  return sub_1C8CC6AB4();
}

void TypedValue.CodableValue.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312788, &unk_1C906A3A0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_86();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A70, &qword_1C907D820);
  v23 = OUTLINED_FUNCTION_11(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_16_5();
  v14 = type metadata accessor for TypedValue.CodableValue(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_12();
  v18 = v4[4];
  OUTLINED_FUNCTION_217(v4, v4[3]);
  sub_1C8DF1D88();
  OUTLINED_FUNCTION_197();
  sub_1C9064DEC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    LOBYTE(v24) = 0;
    *v1 = sub_1C9064A0C();
    *(v1 + 8) = v19;
    OUTLINED_FUNCTION_275();
    sub_1C8D02AFC();
    OUTLINED_FUNCTION_314_1();
    OUTLINED_FUNCTION_153_0();
    sub_1C9064A6C();
    *(v1 + 16) = v24;
    type metadata accessor for DisplayRepresentation(0);
    OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_1_42();
    sub_1C8CC8068(v20);
    OUTLINED_FUNCTION_202_2();
    sub_1C90649EC();
    v21 = OUTLINED_FUNCTION_235_0();
    v22(v21, v23);
    sub_1C8D60F48(v2, v1 + *(v14 + 24));
    OUTLINED_FUNCTION_11_17();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_72_2();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_248_1();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.ReferenceValue.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_94();
}

void *TypedValue.ReferenceValue.init(type:identifier:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static TypedValue.ReferenceValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v19 = *a2;
  v20 = *a1;

  v14 = OUTLINED_FUNCTION_106(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20);
  v16 = static TypeIdentifier.== infix(_:_:)(v14, v15);
  OUTLINED_FUNCTION_345_1();
  OUTLINED_FUNCTION_344();
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_94();

  return sub_1C9064C2C();
}

uint64_t sub_1C8DEB478(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DEB548(char a1)
{
  if (a1)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C8DEB584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEB478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEB5AC(uint64_t a1)
{
  v2 = sub_1C8DF1DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEB5E8(uint64_t a1)
{
  v2 = sub_1C8DF1DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.ReferenceValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A78, &qword_1C907D828);
  OUTLINED_FUNCTION_7_21(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_72();
  v9 = *v0;
  v15 = v0[2];
  v16 = v0[1];
  v10 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  v11 = sub_1C8DF1DDC();

  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  sub_1C8C9FB9C();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v11)
  {
    OUTLINED_FUNCTION_205();
    sub_1C9064B2C();
  }

  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_93();
  v14(v13);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.ReferenceValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_238_1();
  TypeIdentifier.hash(into:)(v4);
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t TypedValue.ReferenceValue.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = OUTLINED_FUNCTION_298();
  v12 = OUTLINED_FUNCTION_252_1(v4, v5, v6, v7, v8, v9, v10, v11, v2, v14);
  TypeIdentifier.hash(into:)(v12);
  OUTLINED_FUNCTION_234_0();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void TypedValue.ReferenceValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A88, &qword_1C907D830);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_0();
  v17 = v10[4];
  OUTLINED_FUNCTION_217(v10, v10[3]);
  sub_1C8DF1DDC();
  OUTLINED_FUNCTION_208();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_91_2();
    sub_1C9064A6C();
    OUTLINED_FUNCTION_42_0();
    v18 = sub_1C9064A0C();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_10_2();
    v22(v21);
    *v12 = a10;
    v12[1] = v18;
    v12[2] = v20;

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DEB9FC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  TypeIdentifier.hash(into:)(v5);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t TypedValue.CollectionValue.init(type:values:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  a3[1] = a2;
  result = swift_allocObject();
  *(result + 16) = v4;
  *a3 = result;
  return result;
}

uint64_t static TypedValue.CollectionValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v19 = *a2;
  v20 = *a1;

  v12 = OUTLINED_FUNCTION_106(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20);
  static TypeInstance.== infix(_:_:)(v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_345_1();
  OUTLINED_FUNCTION_344();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = OUTLINED_FUNCTION_94();

  return sub_1C8CEC2D4(v16, v17);
}

uint64_t sub_1C8DEBB40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736E4965707974 && a2 == 0xEC00000065636E61;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DEBC08(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 0x74736E4965707974;
  }
}

uint64_t sub_1C8DEBC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEBB40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEBC74(uint64_t a1)
{
  v2 = sub_1C8DF1E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEBCB0(uint64_t a1)
{
  v2 = sub_1C8DF1E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.CollectionValue.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A90, &qword_1C907D838);
  OUTLINED_FUNCTION_7_21(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72();
  v7 = *v0;
  v13 = v0[1];
  v8 = v2[4];
  OUTLINED_FUNCTION_217(v2, v2[3]);
  v9 = sub_1C8DF1E30();

  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  sub_1C8CA6D90();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_205();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v9)
  {
    OUTLINED_FUNCTION_276_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
    OUTLINED_FUNCTION_168_3();
    sub_1C8DF1E84(v10);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_205();
    sub_1C9064B8C();
  }

  v11 = OUTLINED_FUNCTION_111_0();
  v12(v11);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

void TypedValue.CollectionValue.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_238_1();
  TypeInstance.hash(into:)();
  v3 = OUTLINED_FUNCTION_145();

  sub_1C8D03430(v3, v4);
}

uint64_t TypedValue.CollectionValue.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = OUTLINED_FUNCTION_298();
  OUTLINED_FUNCTION_252_1(v3, v4, v5, v6, v7, v8, v9, v10, v2, v12[0]);
  TypeInstance.hash(into:)();
  sub_1C8D03430(v12, v1);
  return sub_1C9064DBC();
}

void TypedValue.CollectionValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_267();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315A98, &qword_1C907D848);
  OUTLINED_FUNCTION_11(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15_0();
  v17 = v10[4];
  OUTLINED_FUNCTION_217(v10, v10[3]);
  sub_1C8DF1E30();
  OUTLINED_FUNCTION_208();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1C8CAC450();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_91_2();
    sub_1C9064A6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC316410, &qword_1C907D840);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_167_1();
    sub_1C8DF1E84(v18);
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_42_0();
    sub_1C9064A6C();
    v19 = OUTLINED_FUNCTION_10_2();
    v20(v19);
    *v12 = a10;
    v12[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DEC11C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1C9064D7C();
  TypeInstance.hash(into:)();
  sub_1C8D03430(v4, v1);
  return sub_1C9064DBC();
}

uint64_t TypedValue.QueryValue.query.getter()
{
  v0 = OUTLINED_FUNCTION_386();
  Value = type metadata accessor for TypedValue.QueryValue(v0);
  OUTLINED_FUNCTION_108_1(*(Value + 20));
  return sub_1C8CC5734();
}

uint64_t TypedValue.QueryValue.init(type:query:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  OUTLINED_FUNCTION_285_1();
  OUTLINED_FUNCTION_183_3();
  return sub_1C8CCEB64();
}

uint64_t static TypedValue.QueryValue.== infix(_:_:)()
{
  OUTLINED_FUNCTION_223();
  v17 = *v3;
  v18 = *v2;

  v12 = OUTLINED_FUNCTION_106(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  v14 = static TypeIdentifier.== infix(_:_:)(v12, v13);
  OUTLINED_FUNCTION_345_1();
  OUTLINED_FUNCTION_344();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_285_1();

  return static Query.== infix(_:_:)(v1 + v15, v0 + v15);
}

uint64_t sub_1C8DEC294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DEC358(char a1)
{
  if (a1)
  {
    return 0x7972657571;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1C8DEC38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DEC294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DEC3B4(uint64_t a1)
{
  v2 = sub_1C8DF1EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DEC3F0(uint64_t a1)
{
  v2 = sub_1C8DF1EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.QueryValue.encode(to:)()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_88_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AA0, &qword_1C907D850);
  OUTLINED_FUNCTION_7_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24_15();
  sub_1C8DF1EF4();
  OUTLINED_FUNCTION_100_3();
  OUTLINED_FUNCTION_294_1();
  OUTLINED_FUNCTION_295_0();
  OUTLINED_FUNCTION_251_1();
  OUTLINED_FUNCTION_118_1();
  sub_1C9064B8C();
  OUTLINED_FUNCTION_157();
  if (!v0)
  {
    v5 = *(type metadata accessor for TypedValue.QueryValue(0) + 20);
    type metadata accessor for Query();
    OUTLINED_FUNCTION_182_3();
    sub_1C8CC8068(v6);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_47_7();
    sub_1C9064B8C();
  }

  v7 = OUTLINED_FUNCTION_86_2();
  v8(v7);
  OUTLINED_FUNCTION_159_0();
  OUTLINED_FUNCTION_301_1();
}

uint64_t TypedValue.QueryValue.hash(into:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238_1();
  TypeIdentifier.hash(into:)(v2);
  OUTLINED_FUNCTION_285_1();
  return Query.hash(into:)();
}

uint64_t TypedValue.QueryValue.hashValue.getter()
{
  v1 = OUTLINED_FUNCTION_298();
  v9 = OUTLINED_FUNCTION_252_1(v1, v2, v3, v4, v5, v6, v7, v8, *v0, v11);
  TypeIdentifier.hash(into:)(v9);
  OUTLINED_FUNCTION_285_1();
  Query.hash(into:)();
  return sub_1C9064DBC();
}

void TypedValue.QueryValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_196();
  v13 = v12;
  v35 = type metadata accessor for Query();
  v14 = OUTLINED_FUNCTION_13_1(v35);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AB0, &qword_1C907D858);
  OUTLINED_FUNCTION_11(v36);
  v34 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_110();
  Value = type metadata accessor for TypedValue.QueryValue(0);
  v22 = OUTLINED_FUNCTION_13_1(Value);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v27 = (v26 - v25);
  v28 = v13[3];
  v29 = v13[4];
  v30 = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_217(v30, v31);
  sub_1C8DF1EF4();
  sub_1C9064DEC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1C8CB892C();
    OUTLINED_FUNCTION_196_3();
    OUTLINED_FUNCTION_305_0();
    *v27 = a10;
    OUTLINED_FUNCTION_182_3();
    sub_1C8CC8068(v32);
    OUTLINED_FUNCTION_305_0();
    (*(v34 + 8))(v11, v36);
    v33 = *(Value + 20);
    OUTLINED_FUNCTION_183_3();
    sub_1C8CCEB64();
    OUTLINED_FUNCTION_16_15();
    sub_1C8CC5734();
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_42_8();
    sub_1C8CC6AB4();
  }

  OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1C8DEC8D0(uint64_t a1, uint64_t a2)
{
  sub_1C9064D7C();
  v6 = *v2;
  TypeIdentifier.hash(into:)(v7);
  v4 = v2 + *(a2 + 20);
  Query.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t TypedValue.DeferredValue.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1C8D4F44C(v2, v3, v4, v5, v6);
}

unint64_t TypedValue.DeferredValue.Storage.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[4])
  {
    v4 = *v0;
    v3 = v0[1];
    sub_1C906478C();

    v8 = 0xD00000000000001CLL;
    MEMORY[0x1CCA81A90](v4, v3);
    MEMORY[0x1CCA81A90](58, 0xE100000000000000);
    v5 = OUTLINED_FUNCTION_145();
  }

  else
  {
    sub_1C906478C();

    v8 = 0xD000000000000014;
    v6 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA81A90](v6);
    v5 = OUTLINED_FUNCTION_203_2();
  }

  MEMORY[0x1CCA81A90](v5);
  return v8;
}

void static TypedValue.DeferredValue.Storage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_164();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  if ((v4 & 1) == 0)
  {
    if ((*(v1 + 32) & 1) == 0)
    {
      v39 = OUTLINED_FUNCTION_49_6();
      sub_1C8D4F44C(v39, v40, v41, v42, 0);
      v43 = OUTLINED_FUNCTION_29_11();
      sub_1C8D4F44C(v43, v44, v45, v46, 0);
      v47 = OUTLINED_FUNCTION_114();
      if (MEMORY[0x1CCA7F9A0](v47))
      {
        if (v3 == v6 && v2 == v5)
        {
          v81 = OUTLINED_FUNCTION_29_11();
          sub_1C8D43CA8(v81, v82, v83, v84, 0);
          v85 = OUTLINED_FUNCTION_95_0();
          sub_1C8D43CA8(v85, v86, v3, v2, 0);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_293_1();
        v49 = OUTLINED_FUNCTION_29_11();
        sub_1C8D43CA8(v49, v50, v51, v52, 0);
        v22 = OUTLINED_FUNCTION_49_6();
        v26 = 0;
      }

      else
      {
        v53 = OUTLINED_FUNCTION_29_11();
        sub_1C8D43CA8(v53, v54, v55, v56, 0);
        v22 = OUTLINED_FUNCTION_49_6();
        v26 = 0;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((*(v1 + 32) & 1) == 0)
  {
LABEL_14:
    v27 = OUTLINED_FUNCTION_49_6();
    sub_1C8D4F44C(v27, v28, v29, v30, v7);
    v31 = OUTLINED_FUNCTION_29_11();
    sub_1C8D4F44C(v31, v32, v33, v34, v4);
    v35 = OUTLINED_FUNCTION_29_11();
    sub_1C8D43CA8(v35, v36, v37, v38, v4);
    v22 = OUTLINED_FUNCTION_49_6();
    v26 = v7;
    goto LABEL_15;
  }

  v8 = *v0 == *v1 && *(v0 + 8) == *(v1 + 8);
  if (v8 || (OUTLINED_FUNCTION_114(), (sub_1C9064C2C() & 1) != 0))
  {
    if (v3 == v6 && v2 == v5)
    {
      v57 = OUTLINED_FUNCTION_95_0();
      sub_1C8D4F44C(v57, v58, v3, v2, 1);
      v59 = OUTLINED_FUNCTION_29_11();
      sub_1C8D4F44C(v59, v60, v61, v62, 1);
      v63 = OUTLINED_FUNCTION_29_11();
      sub_1C8D43CA8(v63, v64, v65, v66, 1);
      v67 = OUTLINED_FUNCTION_95_0();
      sub_1C8D43CA8(v67, v68, v3, v2, 1);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_293_1();
    v10 = OUTLINED_FUNCTION_49_6();
    sub_1C8D4F44C(v10, v11, v12, v13, 1);
    v14 = OUTLINED_FUNCTION_29_11();
    sub_1C8D4F44C(v14, v15, v16, v17, 1);
    v18 = OUTLINED_FUNCTION_29_11();
    sub_1C8D43CA8(v18, v19, v20, v21, 1);
    v22 = OUTLINED_FUNCTION_49_6();
    v26 = 1;
  }

  else
  {
    v69 = OUTLINED_FUNCTION_49_6();
    sub_1C8D4F44C(v69, v70, v71, v72, 1);
    v73 = OUTLINED_FUNCTION_29_11();
    sub_1C8D4F44C(v73, v74, v75, v76, 1);
    v77 = OUTLINED_FUNCTION_29_11();
    sub_1C8D43CA8(v77, v78, v79, v80, 1);
    v22 = OUTLINED_FUNCTION_49_6();
    v26 = 1;
  }

LABEL_15:
  sub_1C8D43CA8(v22, v23, v24, v25, v26);
LABEL_16:
  OUTLINED_FUNCTION_163();
}

uint64_t sub_1C8DECC64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C90C9C20 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEC00000079654B72)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DECD38(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C8DECD7C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C90CAD90 == a2;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C90CADB0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C8DECE50(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C8DECE84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xEB0000000079654BLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9064C2C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C8DECF50(char a1)
{
  if (a1)
  {
    return 0x79747265706F7270;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1C8DECF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DECC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DECFB8(uint64_t a1)
{
  v2 = sub_1C8DF1F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DECFF4(uint64_t a1)
{
  v2 = sub_1C8DF1F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DED038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DECD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DED060(uint64_t a1)
{
  v2 = sub_1C8DF1F48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DED09C(uint64_t a1)
{
  v2 = sub_1C8DF1F48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DED0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DECE84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DED108(uint64_t a1)
{
  v2 = sub_1C8DF1FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DED144(uint64_t a1)
{
  v2 = sub_1C8DF1FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TypedValue.DeferredValue.Storage.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AC0, &qword_1C907D860);
  v7 = OUTLINED_FUNCTION_11(v6);
  v34 = v8;
  v35 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AC8, &qword_1C907D868);
  v33 = OUTLINED_FUNCTION_11(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_86();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315AD0, &qword_1C907D870);
  v17 = OUTLINED_FUNCTION_11(v16);
  v37 = v18;
  v38 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_72();
  v22 = *v0;
  v36 = v0[1];
  v31 = v0[3];
  v32 = v0[2];
  v23 = *(v0 + 32);
  v24 = v5[4];
  OUTLINED_FUNCTION_217(v5, v5[3]);
  sub_1C8DF1F48();
  OUTLINED_FUNCTION_200();
  sub_1C9064E1C();
  if (v23)
  {
    sub_1C8DF1F9C();
    sub_1C9064ACC();
    sub_1C9064B2C();
    if (!v1)
    {
      sub_1C9064B2C();
    }

    (*(v34 + 8))(v3, v35);
    (*(v37 + 8))(v2, v38);
  }

  else
  {
    sub_1C8DF1FF0();
    OUTLINED_FUNCTION_104_0();
    sub_1C9064ACC();
    sub_1C8D02AA8();
    sub_1C9064B8C();
    if (!v1)
    {
      OUTLINED_FUNCTION_385();
      sub_1C9064B2C();
    }

    v25 = OUTLINED_FUNCTION_107_3();
    v26(v25, v33);
    v27 = *(v37 + 8);
    v28 = OUTLINED_FUNCTION_93();
    v30(v28, v29);
  }

  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_198();
}

uint64_t TypedValue.DeferredValue.Storage.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v0[4])
  {
    MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_278();
    sub_1C9063FBC();
  }

  else
  {
    MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_278();
    sub_1C9061F4C();
  }

  OUTLINED_FUNCTION_234_0();

  return sub_1C9063FBC();
}

uint64_t TypedValue.DeferredValue.Storage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_298();
  if (v5)
  {
    v6 = MEMORY[0x1CCA82810](1);
    OUTLINED_FUNCTION_215_0(v6, v7, v8, v9, v10, v11, v12, v13, v23, v24);
    sub_1C9063FBC();
  }

  else
  {
    v14 = MEMORY[0x1CCA82810](0);
    OUTLINED_FUNCTION_215_0(v14, v15, v16, v17, v18, v19, v20, v21, v23, v24);
    sub_1C9061F4C();
  }

  OUTLINED_FUNCTION_234_0();
  sub_1C9063FBC();
  return sub_1C9064DBC();
}