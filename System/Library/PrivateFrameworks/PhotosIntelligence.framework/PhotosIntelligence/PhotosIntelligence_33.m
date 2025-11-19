void sub_1C71CB888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
LABEL_5:
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = *a4;
    if (*(*a4 + 16))
    {
      v28 = v9;
      v29 = v4;
      v25 = v11 | (v5 << 6);
      v15 = (*(a3 + 48) + 16 * v25);
      v16 = *v15;
      v17 = v15[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v18 = sub_1C7551FAC();
      v19 = ~(-1 << *(v14 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v14 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v29;
          v9 = v28;
          goto LABEL_5;
        }

        v21 = (*(v14 + 48) + 16 * v20);
        if (*v21 == v16 && v21[1] == v17)
        {
          break;
        }

        v23 = sub_1C7551DBC();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      *(a1 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v4 = v29 + 1;
      v9 = v28;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      sub_1C71FFA70();
      return;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C71CBAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C75504FC();
  v5 = sub_1C755097C();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_0_11();
    v5 = sub_1C71CC418();
    v47 = v46;

    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_11();
      sub_1C75518FC();
    }

    OUTLINED_FUNCTION_128_4();
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_70_1();
          if (v23 ^ v24 | v22)
          {
            v27 = 65;
          }

          if (!(v23 ^ v24 | v22))
          {
            v28 = 58;
          }

          if (v25)
          {
            v29 = 0;
            v30 = (v25 + 1);
            while (1)
            {
              v31 = *v30;
              if (v31 < 0x30 || v31 >= v28)
              {
                if (v31 < 0x41 || v31 >= v27)
                {
                  OUTLINED_FUNCTION_66_3();
                  if (!v20 || v31 >= v33)
                  {
                    goto LABEL_137;
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

              v34 = v29 * a3;
              if ((v29 * a3) >> 64 == (v29 * a3) >> 63)
              {
                v29 = v34 + (v31 + v32);
                if (!__OFADD__(v34, (v31 + v32)))
                {
                  ++v30;
                  if (--v26)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_137;
            }
          }
        }

        goto LABEL_137;
      }

      goto LABEL_140;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_106_4();
        if (v36 ^ v37 | v35)
        {
          v39 = v42;
        }

        if (v36 ^ v37 | v35)
        {
          v40 = 65;
        }

        if (!(v36 ^ v37 | v35))
        {
          v41 = 58;
        }

        if (v38)
        {
          v43 = 0;
          while (1)
          {
            v44 = *v38;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                if (v44 < 0x61 || v44 >= v39)
                {
                  goto LABEL_137;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if ((v43 * a3) >> 64 == (v43 * a3) >> 63 && !__OFADD__(v43 * a3, (v44 + v45)))
            {
              v38 = OUTLINED_FUNCTION_124_5(v38);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_137;
          }
        }
      }

      goto LABEL_137;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_70_1();
        if (v9 ^ v10 | v8)
        {
          v13 = 65;
        }

        if (!(v9 ^ v10 | v8))
        {
          v14 = 58;
        }

        if (v11)
        {
          v15 = 0;
          v16 = (v11 + 1);
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v14)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                OUTLINED_FUNCTION_66_3();
                if (!v20 || v17 >= v19)
                {
                  break;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v21 = v15 * a3;
            if ((v15 * a3) >> 64 == (v15 * a3) >> 63)
            {
              v15 = v21 - (v17 + v18);
              if (!__OFSUB__(v21, (v17 + v18)))
              {
                ++v16;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_137:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_102_8();
  if (!v8)
  {
    if (v49 != 45)
    {
      if (v48)
      {
        OUTLINED_FUNCTION_20_2();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v20 && v65 < v64)
          {
            v66 = -48;
          }

          else if (v65 < 0x41 || v65 >= v63)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v20 || v65 >= v67)
            {
              goto LABEL_137;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }

          if ((v62 * a3) >> 64 == (v62 * a3) >> 63 && !__OFADD__(v62 * a3, (v65 + v66)))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    if (v48)
    {
      if (v48 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_58_15();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v20 && v53 < v52)
          {
            v54 = -48;
          }

          else if (v53 < 0x41 || v53 >= v51)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v20 || v53 >= v55)
            {
              goto LABEL_137;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }

          if ((v50 * a3) >> 64 == (v50 * a3) >> 63 && !__OFSUB__(v50 * a3, (v53 + v54)))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_137;
        }
      }

      goto LABEL_137;
    }

    goto LABEL_139;
  }

  if (v48)
  {
    if (v48 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_58_15();
      while (1)
      {
        OUTLINED_FUNCTION_66_15();
        if (v20 && v59 < v58)
        {
          v60 = -48;
        }

        else if (v59 < 0x41 || v59 >= v57)
        {
          OUTLINED_FUNCTION_66_3();
          if (!v20 || v59 >= v61)
          {
            goto LABEL_137;
          }

          v60 = -87;
        }

        else
        {
          v60 = -55;
        }

        if ((v56 * a3) >> 64 == (v56 * a3) >> 63 && !__OFADD__(v56 * a3, (v59 + v60)))
        {
          OUTLINED_FUNCTION_65_14();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_137;
      }
    }

    goto LABEL_137;
  }

LABEL_141:
  __break(1u);
}

void sub_1C71CBF68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1C75504FC();
  v5 = sub_1C755097C();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_0_11();
    v5 = sub_1C71CC418();
    v35 = v34;

    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) == 0)
    {
      OUTLINED_FUNCTION_0_11();
      sub_1C75518FC();
    }

    OUTLINED_FUNCTION_128_4();
    if (v23)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_70_1();
          if (v16)
          {
            while (1)
            {
              OUTLINED_FUNCTION_66_15();
              if (v13 && v20 < v18)
              {
                v21 = -48;
              }

              else if (v20 < 0x41 || v20 >= v17)
              {
                OUTLINED_FUNCTION_66_3();
                if (!v13 || v20 >= v22)
                {
                  goto LABEL_129;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }

              if (is_mul_ok(v19, a3) && !__CFADD__(v19 * a3, (v20 + v21)))
              {
                OUTLINED_FUNCTION_65_14();
                if (!v23)
                {
                  continue;
                }
              }

              goto LABEL_129;
            }
          }
        }

        goto LABEL_129;
      }

      goto LABEL_132;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_106_4();
        if (v24 ^ v25 | v23)
        {
          v27 = v30;
        }

        if (v24 ^ v25 | v23)
        {
          v28 = 65;
        }

        if (!(v24 ^ v25 | v23))
        {
          v29 = 58;
        }

        if (v26)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v26;
            if (v32 < 0x30 || v32 >= v29)
            {
              if (v32 < 0x41 || v32 >= v28)
              {
                if (v32 < 0x61 || v32 >= v27)
                {
                  goto LABEL_129;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            if (is_mul_ok(v31, a3) && !__CFADD__(v31 * a3, (v32 + v33)))
            {
              v26 = OUTLINED_FUNCTION_124_5(v26);
              if (!v23)
              {
                continue;
              }
            }

            goto LABEL_129;
          }
        }
      }

      goto LABEL_129;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_70_1();
        if (v8)
        {
          while (1)
          {
            OUTLINED_FUNCTION_66_15();
            if (v13 && v12 < v10)
            {
              v14 = -48;
            }

            else if (v12 < 0x41 || v12 >= v9)
            {
              OUTLINED_FUNCTION_66_3();
              if (!v13 || v12 >= v15)
              {
                break;
              }

              v14 = -87;
            }

            else
            {
              v14 = -55;
            }

            if (is_mul_ok(v11, a3) && v11 * a3 >= (v12 + v14))
            {
              OUTLINED_FUNCTION_65_14();
              if (!v23)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_129:

      return;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_102_8();
  if (!v23)
  {
    if (v37 != 45)
    {
      if (v36)
      {
        OUTLINED_FUNCTION_20_2();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v13 && v53 < v52)
          {
            v54 = -48;
          }

          else if (v53 < 0x41 || v53 >= v51)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v13 || v53 >= v55)
            {
              goto LABEL_129;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }

          if (is_mul_ok(v50, a3) && !__CFADD__(v50 * a3, (v53 + v54)))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    if (v36)
    {
      if (v36 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        OUTLINED_FUNCTION_58_15();
        while (1)
        {
          OUTLINED_FUNCTION_66_15();
          if (v13 && v41 < v40)
          {
            v42 = -48;
          }

          else if (v41 < 0x41 || v41 >= v39)
          {
            OUTLINED_FUNCTION_66_3();
            if (!v13 || v41 >= v43)
            {
              goto LABEL_129;
            }

            v42 = -87;
          }

          else
          {
            v42 = -55;
          }

          if (is_mul_ok(v38, a3) && v38 * a3 >= (v41 + v42))
          {
            OUTLINED_FUNCTION_65_14();
            if (!v23)
            {
              continue;
            }
          }

          goto LABEL_129;
        }
      }

      goto LABEL_129;
    }

    goto LABEL_131;
  }

  if (v36)
  {
    if (v36 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_58_15();
      while (1)
      {
        OUTLINED_FUNCTION_66_15();
        if (v13 && v47 < v46)
        {
          v48 = -48;
        }

        else if (v47 < 0x41 || v47 >= v45)
        {
          OUTLINED_FUNCTION_66_3();
          if (!v13 || v47 >= v49)
          {
            goto LABEL_129;
          }

          v48 = -87;
        }

        else
        {
          v48 = -55;
        }

        if (is_mul_ok(v44, a3) && !__CFADD__(v44 * a3, (v47 + v48)))
        {
          OUTLINED_FUNCTION_65_14();
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_129;
      }
    }

    goto LABEL_129;
  }

LABEL_133:
  __break(1u);
}

uint64_t sub_1C71CC418()
{
  v0 = sub_1C71CC484();
  v4 = sub_1C71CC4B8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C71CC4B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C75514CC();
    if (!v9 || (v10 = v9, v11 = sub_1C6F76F28(v9, 0), v12 = sub_1C71CC618(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1C75504FC(), , v12 == v10))
    {
      v13 = sub_1C755079C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C755079C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C75518FC();
LABEL_4:

  return sub_1C755079C();
}

unint64_t sub_1C71CC618(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1C7491B74(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C75508DC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C75518FC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C7491B74(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1C75508AC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C71CC99C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1C75516BC();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1C71CCA40(uint64_t a1, void *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD108F0);
  v3 = sub_1C7550B3C();
  [a2 setSortDescriptors_];
}

uint64_t sub_1C71CCABC(void *a1)
{
  v1 = [a1 personUUIDs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550B5C();

  return v3;
}

id sub_1C71CCB14(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  v5 = [a3 uuidFromLocalIdentifier_];

  return v5;
}

unint64_t sub_1C71CCB78()
{
  result = qword_1EDD0DC00;
  if (!qword_1EDD0DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DC00);
  }

  return result;
}

unint64_t sub_1C71CCBE8()
{
  result = qword_1EC218CE0;
  if (!qword_1EC218CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218CE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationUtilities(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationUtilities.AdapterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C71CCDC4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C71CCE10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationUtilities.RepresentativeMomentConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C71CCF4C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

unint64_t sub_1C71CCF78()
{
  result = qword_1EC218CE8;
  if (!qword_1EC218CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218CE8);
  }

  return result;
}

unint64_t sub_1C71CCFD0()
{
  result = qword_1EDD0DBF0;
  if (!qword_1EDD0DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DBF0);
  }

  return result;
}

unint64_t sub_1C71CD028()
{
  result = qword_1EDD0DBF8;
  if (!qword_1EDD0DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DBF8);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{

  OUTLINED_FUNCTION_30();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C71CD0F0()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C71CD17C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C71CD1D4()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t objectdestroy_70Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_73Tm()
{

  v0 = OUTLINED_FUNCTION_66_2();

  return MEMORY[0x1EEE6BDD0](v0, v1, 7);
}

uint64_t sub_1C71CD2B8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_16()
{

  return sub_1C71CD1D4();
}

uint64_t OUTLINED_FUNCTION_50_16()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_18()
{

  return swift_once();
}

void OUTLINED_FUNCTION_55_15(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 - 48) = v2;
  *(v1 - 40) = v3;
}

uint64_t OUTLINED_FUNCTION_75_8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, __int128 a17, uint64_t a18, char a19, double a20, char a21, uint64_t a22, char a23)
{
  a17 = *a5;
  a18 = v16;
  a19 = v17;
  a20 = a2;
  a21 = v18;

  return static StoryGenerationUtilities.representativeMomentUUIDsAndAssetUUIDs(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(a1, &a23, a4, &a17);
}

uint64_t OUTLINED_FUNCTION_76_10()
{

  return sub_1C71CD1D4();
}

void OUTLINED_FUNCTION_81_10()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_90_10()
{
  *(v1 - 312) = v0;
  v3 = *(v1 - 280);

  return __swift_mutable_project_boxed_opaque_existential_0(v1 - 304, v3);
}

void *OUTLINED_FUNCTION_110_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __dst)
{

  return memcpy(&__dst, (v11 - 192), 0x78uLL);
}

uint64_t OUTLINED_FUNCTION_111_4()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_112_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_113_6()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_114_6(id a1, SEL a2)
{

  return [a1 a2];
}

__n128 *OUTLINED_FUNCTION_115_7(__n128 a1, __n128 a2, uint64_t a3, __n128 *a4)
{
  *a4 = a1;
  a4[1] = a2;
  return a4;
}

__n128 *OUTLINED_FUNCTION_116_7(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1C6F79794(va, (v1 + v3 * v2 + 32));
}

void OUTLINED_FUNCTION_118_5()
{
  *(v2 - 248) = v1;
  v4 = *(v0 + 16);
  *(v2 - 240) = *(v2 - 208);
  *(v2 - 224) = v4;

  sub_1C72D36F8();
}

void *OUTLINED_FUNCTION_119_7()
{

  return memcpy((v0 - 328), (v0 - 176), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_121_5()
{

  return sub_1C71CD17C();
}

uint64_t OUTLINED_FUNCTION_146_3()
{

  return sub_1C754DF6C();
}

uint64_t OUTLINED_FUNCTION_147_2()
{

  return sub_1C755196C();
}

uint64_t OUTLINED_FUNCTION_148_4()
{

  return sub_1C755195C();
}

uint64_t OUTLINED_FUNCTION_149_2()
{

  return sub_1C755196C();
}

void OUTLINED_FUNCTION_150_3()
{
  v2 = *(v0 - 264);
}

size_t sub_1C71CD7B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_1C70CEA24(*(a1 + 16), 0);
  v2 = sub_1C754E15C() - 8;
  OUTLINED_FUNCTION_13_43(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  sub_1C70D084C();
  OUTLINED_FUNCTION_0_98();
  if (!v10)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1C71CD888(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_1C70CEB10();
      if (sub_1C70D0BE4(v6, v5 + 32, v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t sub_1C71CDB18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_46();
  v6(v5);
  OUTLINED_FUNCTION_14_38();
  a3();
  OUTLINED_FUNCTION_0_98();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C71CDBCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_10_46();
  v8 = v7(v6);
  v9 = a3(0) - 8;
  v17 = OUTLINED_FUNCTION_13_43(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
  a4(v17);
  OUTLINED_FUNCTION_0_98();
  if (!v18)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1C71CDD0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_10_46();
  v6(v5);
  OUTLINED_FUNCTION_14_38();
  a3();
  OUTLINED_FUNCTION_0_98();
  if (!v7)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id sub_1C71CDE24(uint64_t a1, __int16 a2, void *a3)
{
  v4 = v3;
  result = [*(v3 + OBJC_IVAR___PNAssetFetcherOptions_fetchOptions) photoLibrary];
  if (result)
  {
    v9 = result;
    v10 = [result librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C7565670;
    v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v11 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
    sub_1C71F8834(v11, v10);
    [v10 setIncludeGuestAssets_];
    v13 = [v10 setFetchLimit_];
    v40 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v14 = a3;
      MEMORY[0x1CCA5D040]();
      OUTLINED_FUNCTION_4_51();
      if (v16)
      {
        OUTLINED_FUNCTION_15(v15);
        OUTLINED_FUNCTION_22_34();
      }

      v13 = OUTLINED_FUNCTION_21_31();
    }

    v17 = AssetFetcherOptions.filters.getter(v13);
    v18 = sub_1C705FC40(4u, v17);

    v20 = MEMORY[0x1E69E6158];
    if (v18)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v21 = OUTLINED_FUNCTION_20_0();
      *(v21 + 16) = xmmword_1C75604F0;
      *(v21 + 56) = v20;
      *(v21 + 64) = sub_1C6F6D524();
      *(v21 + 32) = 1684957547;
      *(v21 + 40) = 0xE400000000000000;
      *(v21 + 96) = MEMORY[0x1E69E7290];
      *(v21 + 104) = MEMORY[0x1E69E72E8];
      OUTLINED_FUNCTION_19_33(1);
      MEMORY[0x1CCA5D040]();
      OUTLINED_FUNCTION_4_51();
      if (v16)
      {
        OUTLINED_FUNCTION_15(v22);
        OUTLINED_FUNCTION_22_34();
      }

      v19 = OUTLINED_FUNCTION_21_31();
    }

    v23 = AssetFetcherOptions.filters.getter(v19);
    v24 = sub_1C705FC40(5u, v23);

    if (v24)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v25 = OUTLINED_FUNCTION_20_0();
      *(v25 + 16) = xmmword_1C75604F0;
      *(v25 + 56) = v20;
      *(v25 + 64) = sub_1C6F6D524();
      *(v25 + 32) = 0xD000000000000016;
      *(v25 + 40) = 0x80000001C75A3A50;
      *(v25 + 96) = MEMORY[0x1E69E7290];
      *(v25 + 104) = MEMORY[0x1E69E72E8];
      OUTLINED_FUNCTION_19_33(3);
      MEMORY[0x1CCA5D040]();
      OUTLINED_FUNCTION_4_51();
      if (v16)
      {
        OUTLINED_FUNCTION_15(v26);
        OUTLINED_FUNCTION_22_34();
      }

      OUTLINED_FUNCTION_21_31();
    }

    if (*(a1 + 16))
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v27 = OUTLINED_FUNCTION_20_0();
      *(v27 + 16) = xmmword_1C75604F0;
      *(v27 + 56) = v20;
      *(v27 + 64) = sub_1C6F6D524();
      *(v27 + 32) = 1684632949;
      *(v27 + 40) = 0xE400000000000000;
      *(v27 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      *(v27 + 104) = sub_1C71D0360();
      *(v27 + 72) = a1;
      sub_1C75504FC();
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      v28 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
      {
        OUTLINED_FUNCTION_15(v28);
        OUTLINED_FUNCTION_22_34();
      }

      sub_1C7550BEC();
    }

    if (a2 >= 1)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v29 = OUTLINED_FUNCTION_20_0();
      *(v29 + 16) = xmmword_1C75604F0;
      *(v29 + 56) = v20;
      *(v29 + 64) = sub_1C6F6D524();
      *(v29 + 32) = 0xD000000000000029;
      *(v29 + 40) = 0x80000001C75A2F40;
      *(v29 + 96) = MEMORY[0x1E69E7290];
      *(v29 + 104) = MEMORY[0x1E69E72E8];
      *(v29 + 72) = a2;
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      v30 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v30 >> 1)
      {
        OUTLINED_FUNCTION_15(v30);
        OUTLINED_FUNCTION_22_34();
      }

      sub_1C7550BEC();
    }

    v31 = sub_1C6FB6304();
    if (v31 >= 1)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      sub_1C75504FC();
      v32 = sub_1C6F6E5C4();
      [v10 setInternalPredicate_];
    }

    v33 = *(AssetFetcherOptions.filters.getter(v31) + 16);

    if (v33)
    {
    }

    else
    {
      OUTLINED_FUNCTION_5();
      v34 = sub_1C6FB6304();

      if (v34 < 1)
      {
        return v10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C755F060;
    *(v35 + 32) = sub_1C755068C();
    *(v35 + 40) = v36;
    *(v35 + 48) = sub_1C755068C();
    *(v35 + 56) = v37;
    *(v35 + 64) = sub_1C755068C();
    *(v35 + 72) = v38;
    *(v35 + 80) = sub_1C755068C();
    *(v35 + 88) = v39;
    sub_1C6FCA0EC(v35, v10);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C71CE494()
{
  v1 = OBJC_IVAR___PNAssetFetcherOptions_minimumCurationQuality;
  OUTLINED_FUNCTION_5();
  result = 0;
  switch(*(v0 + v1))
  {
    case 1:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v3 = OUTLINED_FUNCTION_20_0();
      *(v3 + 16) = xmmword_1C75604F0;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      v6 = sub_1C6F6D524();
      OUTLINED_FUNCTION_2_66(v6);
      v5 = &CLSCurationItemScoreDefault;
      goto LABEL_4;
    case 2:
      sub_1C6F65BE8(0, &qword_1EDD0FA80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C7564A90;
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v10 = OUTLINED_FUNCTION_20_0();
      *(v10 + 16) = xmmword_1C75604F0;
      v11 = MEMORY[0x1E69E6158];
      *(v10 + 56) = MEMORY[0x1E69E6158];
      v12 = sub_1C6F6D524();
      *(v10 + 64) = v12;
      *(v10 + 32) = 0xD000000000000034;
      *(v10 + 40) = 0x80000001C75A39D0;
      v13 = MEMORY[0x1E69E63B0];
      v14 = *MEMORY[0x1E69BECC8];
      v15 = MEMORY[0x1E69E6438];
      *(v10 + 96) = MEMORY[0x1E69E63B0];
      *(v10 + 104) = v15;
      *(v10 + 72) = v14;
      *(v9 + 32) = sub_1C755112C();
      v16 = OUTLINED_FUNCTION_20_0();
      *(v16 + 16) = xmmword_1C75604F0;
      *(v16 + 56) = v11;
      *(v16 + 64) = v12;
      *(v16 + 32) = 0xD000000000000033;
      *(v16 + 40) = 0x80000001C75A3A10;
      *(v16 + 96) = v13;
      *(v16 + 104) = v15;
      *(v16 + 72) = v14;
      *(v9 + 40) = sub_1C755112C();
      result = sub_1C74B8340();
      break;
    case 3:
      return result;
    default:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v3 = OUTLINED_FUNCTION_20_0();
      *(v3 + 16) = xmmword_1C75604F0;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      v4 = sub_1C6F6D524();
      OUTLINED_FUNCTION_2_66(v4);
      v5 = &CLSCurationItemScoreImproved;
LABEL_4:
      v7 = *v5;
      v8 = MEMORY[0x1E69E6438];
      *(v3 + 96) = MEMORY[0x1E69E63B0];
      *(v3 + 104) = v8;
      *(v3 + 72) = v7;
      result = sub_1C755112C();
      break;
  }

  return result;
}

id sub_1C71CE784()
{
  v1 = OBJC_IVAR___PNAssetFetcherOptions_seed;
  OUTLINED_FUNCTION_1_6();
  v2 = *(v0 + v1);
  if (!v2)
  {
    v4[0] = 0;
    MEMORY[0x1CCA5F900](v4, 8);
    v2 = v4[0];
  }

  return [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
}

id sub_1C71CE890()
{
  v1 = OBJC_IVAR___PNAssetFetcherOptions____lazy_storage___curationContext;
  v2 = *(v0 + OBJC_IVAR___PNAssetFetcherOptions____lazy_storage___curationContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___PNAssetFetcherOptions____lazy_storage___curationContext);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [*(v0 + OBJC_IVAR___PNAssetFetcherOptions_fetchOptions) photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(CLSCurationContext) initWithPhotoLibrary_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id AssetFetcherOptions.__allocating_init(fetchOptions:limit:sampleBatchSize:)()
{
  OUTLINED_FUNCTION_3_38();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_24_24();
  return AssetFetcherOptions.init(fetchOptions:limit:sampleBatchSize:)();
}

id AssetFetcherOptions.init(fetchOptions:limit:sampleBatchSize:)()
{
  OUTLINED_FUNCTION_3_38();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PNAssetFetcherOptions____lazy_storage___curationContext] = 0;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions_fetchOptions] = v3;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions_limit] = v2;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions_sampleBatchSize] = v0;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions__sources] = &unk_1F46A84A8;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions__filters] = &unk_1F46A84D0;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions_limiters] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR___PNAssetFetcherOptions_minimumCurationQuality] = 2;
  *&v1[OBJC_IVAR___PNAssetFetcherOptions_seed] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AssetFetcherOptions.__allocating_init(photoLibrary:limit:sampleBatchSize:)()
{
  OUTLINED_FUNCTION_3_38();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_24_24();
  return AssetFetcherOptions.init(photoLibrary:limit:sampleBatchSize:)();
}

id AssetFetcherOptions.init(photoLibrary:limit:sampleBatchSize:)()
{
  OUTLINED_FUNCTION_3_38();
  v5 = [v4 librarySpecificFetchOptions];
  v6 = [v1 initWithFetchOptions:v5 limit:v2 sampleBatchSize:v0];

  return v6;
}

uint64_t AssetFetcherOptions.sources.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_7(a1);
  *v1 = AssetFetcherOptions.sources.getter(v2);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t AssetFetcherOptions.filters.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_7(a1);
  *v1 = AssetFetcherOptions.filters.getter(v2);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t AssetFetcherOptions.limiters.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PNAssetFetcherOptions_limiters;
  OUTLINED_FUNCTION_0_27();
  *(v1 + v3) = a1;
}

uint64_t AssetFetcherOptions.minimumCurationQuality.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___PNAssetFetcherOptions_minimumCurationQuality;
  result = OUTLINED_FUNCTION_5();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AssetFetcherOptions.minimumCurationQuality.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___PNAssetFetcherOptions_minimumCurationQuality;
  result = OUTLINED_FUNCTION_0_27();
  *(v1 + v3) = v2;
  return result;
}

uint64_t AssetFetcherOptions.seed.getter()
{
  v1 = OBJC_IVAR___PNAssetFetcherOptions_seed;
  OUTLINED_FUNCTION_1_6();
  return *(v0 + v1);
}

uint64_t AssetFetcherOptions.seed.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___PNAssetFetcherOptions_seed;
  result = OUTLINED_FUNCTION_0_27();
  *(v1 + v3) = a1;
  return result;
}

id AssetFetcherOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetFetcherOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C71CF464(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v6 = sub_1C7550B5C();
  v7 = a1;
  a4(v6);
}

unint64_t AssetFetcherOptions.fetchSources.setter(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = OUTLINED_FUNCTION_20_36();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    if (v2 < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1CCA5DDD0](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 integerValue];
      if (v7 >= 5)
      {
      }

      else
      {
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_18_7();
          sub_1C6FB2BD0();
          v4 = v11;
        }

        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_15(v9);
          sub_1C6FB2BD0();
          v4 = v12;
        }

        *(v4 + 16) = v10 + 1;
        *(v4 + v10 + 32) = v8;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v13 + OBJC_IVAR___PNAssetFetcherOptions__sources) = v4;
}

uint64_t AssetFetcherOptions.fetchSources.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = AssetFetcherOptions.fetchSources.getter();
  return OUTLINED_FUNCTION_16_0();
}

id sub_1C71CF6F8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1C6F65BE8(0, &qword_1EDD108E0);
  v5 = sub_1C7550B3C();

  return v5;
}

uint64_t sub_1C71CF78C(uint64_t (*a1)(void))
{
  v1 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  v2 = a1();
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1C6F65BE8(0, &qword_1EDD108E0);
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1C75513CC();
      MEMORY[0x1CCA5D040]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      --v3;
    }

    while (v3);
    v1 = v6;
  }

  return v1;
}

unint64_t AssetFetcherOptions.fetchFilters.setter(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = OUTLINED_FUNCTION_20_36();
    v2 = result;
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    if (v2 < 1)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1CCA5DDD0](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = [v5 integerValue];
      if (v7 >= 6)
      {
      }

      else
      {
        v8 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_18_7();
          sub_1C6FB2BF8();
          v4 = v11;
        }

        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_15(v9);
          sub_1C6FB2BF8();
          v4 = v12;
        }

        *(v4 + 16) = v10 + 1;
        *(v4 + v10 + 32) = v8;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *(v13 + OBJC_IVAR___PNAssetFetcherOptions__filters) = v4;
}

uint64_t AssetFetcherOptions.fetchFilters.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = AssetFetcherOptions.fetchFilters.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t AssetFetcherOptions.fetchLimiters.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR___PNAssetFetcherOptions_limiters;
  OUTLINED_FUNCTION_5();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v3 = OUTLINED_FUNCTION_20_36();
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  result = objc_opt_self();
  if (v3 >= 1)
  {
    v5 = result;
    sub_1C75504FC();
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA5DDD0](i, v2);
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v5 fetchLimiterWithType:*&v7[OBJC_IVAR___PNAssetFetcherLimiter_type] limit:*&v7[OBJC_IVAR___PNAssetFetcherLimiter_limit]];
      MEMORY[0x1CCA5D040]();
      v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        OUTLINED_FUNCTION_22_34();
      }

      sub_1C7550BEC();
    }

    v11 = v12;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t AssetFetcherOptions.fetchLimiters.setter(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1C6FB6304();
  v14 = v1;
  if (!result)
  {
LABEL_13:

    v13 = OBJC_IVAR___PNAssetFetcherOptions_limiters;
    swift_beginAccess();
    *(v14 + v13) = v3;
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA5DDD0](i, a1);
      }

      else
      {
        v7 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      v8 = [v7 limitType];
      if (v8 >= 2)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = v8;
        v10 = [v7 limit];
        v11 = objc_allocWithZone(type metadata accessor for AssetFetcherLimiter());
        AssetFetcherLimiter.init(type:limit:)(v9, v10);
        MEMORY[0x1CCA5D040]();
        v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
        {
          OUTLINED_FUNCTION_15(v12);
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        swift_unknownObjectRelease();
        v3 = v15;
      }
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t AssetFetcherOptions.fetchLimiters.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_15_7(a1);
  *v1 = AssetFetcherOptions.fetchLimiters.getter();
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C71CFF04(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v4 = sub_1C75504FC();
  a3(v4);
}

unint64_t sub_1C71CFF78()
{
  result = qword_1EC218E80;
  if (!qword_1EC218E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E80);
  }

  return result;
}

unint64_t sub_1C71CFFD0()
{
  result = qword_1EC218E88;
  if (!qword_1EC218E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E88);
  }

  return result;
}

unint64_t sub_1C71D0028()
{
  result = qword_1EC218E90;
  if (!qword_1EC218E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetFetcherSources(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetFetcherCuration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetFetcherFilters(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C71D0360()
{
  result = qword_1EDD0FAF0;
  if (!qword_1EDD0FAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0FAF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_31()
{

  return sub_1C7550BEC();
}

uint64_t StoryOrchestrator.Error.errorCode.getter()
{
  type metadata accessor for StoryOrchestrator.Error(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_66_2();
  sub_1C71F29A0();
  OUTLINED_FUNCTION_57_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 100;
  switch(EnumCaseMultiPayload)
  {
    case 1:

      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      sub_1C6FB5FC8(v3 + *(v6 + 48), &unk_1EC219230);
      result = 105;
      break;
    case 2:

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      sub_1C6FB5FC8(v3 + *(v7 + 48), &unk_1EC219230);
      result = 106;
      break;
    case 3:
      sub_1C71F29F8(v3, type metadata accessor for StoryOrchestrator.Error);
      result = 107;
      break;
    case 4:
      sub_1C71F29F8(v3, type metadata accessor for StoryOrchestrator.Error);
      result = 108;
      break;
    case 5:

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      sub_1C6FB5FC8(v3 + *(v8 + 48), &unk_1EC219230);
      result = 109;
      break;
    case 6:
      sub_1C71F29F8(v3, type metadata accessor for StoryOrchestrator.Error);
      result = 112;
      break;
    case 7:
      sub_1C71F29F8(v3, type metadata accessor for StoryOrchestrator.Error);
      result = 113;
      break;
    case 8:
      return result;
    case 9:
      result = 101;
      break;
    case 10:
      result = 102;
      break;
    case 11:
      result = 103;
      break;
    case 12:
      result = 110;
      break;
    case 13:
      result = 111;
      break;
    default:
      sub_1C71F29F8(v3, type metadata accessor for StoryOrchestrator.Error);
      result = 104;
      break;
  }

  return result;
}

unint64_t StoryOrchestrator.Error.errorDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_232_1();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  OUTLINED_FUNCTION_61_0();
  sub_1C71F29A0();
  v6 = 0x727245206B636F4DLL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      OUTLINED_FUNCTION_239_1();
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();
      OUTLINED_FUNCTION_315_1();
      OUTLINED_FUNCTION_246_1();
      v26 = v25 + 8;
      goto LABEL_15;
    case 2u:
      v23 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      OUTLINED_FUNCTION_239_1();
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_246_1();
      v43 = v27 - 1;
      goto LABEL_16;
    case 3u:
      v16 = *(v5 + 16);
      v17 = *(v5 + 24);
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_246_1();
      v44 = v18 | 3;
      v19 = FreeformStoryGenerator.Error.errorDescription.getter();
      MEMORY[0x1CCA5CD70](v19);

      OUTLINED_FUNCTION_345();
      v20 = OUTLINED_FUNCTION_57_0();
      sub_1C70551BC(v20, v21, v16, v17);
      return v44;
    case 4u:
      v28 = *v5;
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_246_1();
      v43 = v30 - 2;
      v31 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v29 = sub_1C75506EC();
      goto LABEL_12;
    case 5u:
      v23 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38);
      OUTLINED_FUNCTION_239_1();
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();
      OUTLINED_FUNCTION_315_1();
      OUTLINED_FUNCTION_246_1();
      v26 = v33 + 10;
LABEL_15:
      MEMORY[0x1CCA5CD70](v26, v24 | 0x8000000000000000);
LABEL_16:
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v35 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v35);

      MEMORY[0x1CCA5CD70](0x207972746572202CLL, 0xEF203A7265746661);
      sub_1C6FD7F70();
      v36 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v36);

      OUTLINED_FUNCTION_345();

      v6 = v43;
      v37 = OUTLINED_FUNCTION_105_7();
      sub_1C6FB5FC8(v37, v38);
      return v6;
    case 6u:
      v28 = *v5;
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      v43 = 0xD00000000000001DLL;
      swift_getErrorValue();
      v29 = sub_1C7551EAC();
LABEL_12:
      MEMORY[0x1CCA5CD70](v29);

      goto LABEL_19;
    case 7u:
      v28 = *v5;
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();
      OUTLINED_FUNCTION_315_1();
      OUTLINED_FUNCTION_246_1();
      MEMORY[0x1CCA5CD70](v40 | 2, v41 | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      sub_1C75519EC();
LABEL_19:
      OUTLINED_FUNCTION_345();

      return v43;
    case 8u:
      OUTLINED_FUNCTION_212_1();
      return v22 + 9;
    case 9u:
      OUTLINED_FUNCTION_212_1();
      return v39 + 28;
    case 0xAu:
      return 0xD000000000000018;
    case 0xBu:
      return 0xD000000000000018;
    case 0xCu:
      return v6;
    case 0xDu:
      OUTLINED_FUNCTION_212_1();
      return v32 + 16;
    default:
      v7 = *v5;
      v8 = *(v5 + 8);
      OUTLINED_FUNCTION_98_9();
      sub_1C755180C();
      OUTLINED_FUNCTION_315_1();
      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A3BC0);
      v9 = [v7 description];
      sub_1C755068C();
      OUTLINED_FUNCTION_89_0();

      v10 = OUTLINED_FUNCTION_15_1();
      MEMORY[0x1CCA5CD70](v10);

      MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75A3BE0);
      MEMORY[0x1CCA5D090](v8, &type metadata for QueryToken);
      OUTLINED_FUNCTION_43_0();

      v11 = OUTLINED_FUNCTION_55();
      MEMORY[0x1CCA5CD70](v11);

      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A3C00);
      v12 = OUTLINED_FUNCTION_49_3();
      v13 = MEMORY[0x1CCA5D090](v12);
      v15 = v14;

      MEMORY[0x1CCA5CD70](v13, v15);

      OUTLINED_FUNCTION_345();

      return v43;
  }
}

uint64_t StoryGenerationSession.init(curationContext:diagnosticContext:performanceMetricsReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1C754DF5C();
  v8 = type metadata accessor for StoryGenerationSession(0);
  *(a4 + v8[5]) = a1;
  *(a4 + v8[6]) = a2;
  v9 = a4 + v8[7];

  return sub_1C6F699F8(a3, v9);
}

unint64_t StoryOrchestrator.StoryOrchestratorCancellationError.description.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t StoryOrchestrator.StoryOrchestratorCancellationError.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C71F07F0();
  sub_1C755059C();
  return sub_1C7551FAC();
}

uint64_t sub_1C71D10D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C714F600();

  return MEMORY[0x1EEDED5E0](a1, a2, a3, v6);
}

uint64_t sub_1C71D1130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C714F600();

  return MEMORY[0x1EEDED5E8](a1, a2, v4);
}

uint64_t sub_1C71D117C()
{
  sub_1C7551F3C();
  sub_1C755059C();
  return sub_1C7551FAC();
}

uint64_t sub_1C71D11DC(uint64_t a1)
{
  v2 = sub_1C714F230();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C71D1218(uint64_t a1)
{
  v2 = sub_1C714F230();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C71D1260(uint64_t a1)
{
  v2 = sub_1C71F28F0(&qword_1EC217F60, type metadata accessor for StoryOrchestrator.Error);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C71D12CC(uint64_t a1)
{
  v2 = sub_1C71F28F0(&qword_1EC217F60, type metadata accessor for StoryOrchestrator.Error);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t _s18PhotosIntelligence15StoryMusicCacheC5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void *StoryOrchestrator.Configuration.init(maximumNumberOfTokensForLifeContext:computeNumberOfTokens:traitGeneratorConfiguration:freeformStoryGeneratorConfiguration:numberOfTraitsPerStory:enableStorytellingMomentFiltering:useDedupedAssetsForStorytellingMomentFiltering:forceFallbackGeneration:simulateSlowCreation:skipPreheat:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, void (*a3)(uint64_t a1, uint64_t a2)@<X1>, uint64_t a4@<X2>, const void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12)
{
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = sub_1C71D1468;
  }

  if (a3)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  *a9 = a2;
  *(a9 + 8) = v17;
  *(a9 + 16) = v18;
  memcpy((a9 + 24), __src, 0xA8uLL);
  result = memcpy((a9 + 192), a5, 0x4CuLL);
  *(a9 + 272) = a6;
  *(a9 + 280) = a7;
  *(a9 + 281) = a8;
  *(a9 + 282) = a10;
  *(a9 + 283) = a11;
  *(a9 + 284) = a12;
  return result;
}

void sub_1C71D1468(uint64_t a1, uint64_t a2)
{
  if ((a1 || a2 != 0xE000000000000000) && (sub_1C7551DBC() & 1) == 0)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
    v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
    if (v2)
    {
    }

    else
    {
      v7 = v6;
      if (v6)
      {
        v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
        v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
        v11 = v9;
        if (v9)
        {
          sub_1C6FB5E8C();
          v17 = *(sub_1C755152C() + 16);

          v12 = sub_1C75507FC();
          v13 = sub_1C755065C();
          v14 = [v7 numberOfMatchesInString:v13 options:0 range:{0, v12, 32, 0xE100000000000000, a1, a2}];

          v15 = sub_1C755065C();
          v16 = [v11 numberOfMatchesInString:v15 options:0 range:{0, v12}];

          if (!__OFADD__(v17, v14))
          {
            if (!__OFADD__(&v14[v17], v16))
            {
              return;
            }

            __break(1u);
          }

          __break(1u);
          return;
        }
      }
    }

    sub_1C7196EF4();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 2;
    swift_willThrow();
  }
}

uint64_t sub_1C71D16A0(uint64_t a1, uint64_t a2)
{
  sub_1C755124C();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v4 = sub_1C755125C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v11 = sub_1C755006C();
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0;
  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  sub_1C755005C();
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8098], v4);
  sub_1C71F28F0(&qword_1EDD0FAA0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30);
  sub_1C75515FC();
  *(v2 + 40) = sub_1C75512AC();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C71D1908(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v22 = sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_3_16();
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_1C71F402C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_16;
  v20 = _Block_copy(aBlock);

  sub_1C755003C();
  sub_1C71F28F0(&qword_1EDD0D0C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0);
  sub_1C75515FC();
  MEMORY[0x1CCA5D7B0](0, v18, v12, v20);
  _Block_release(v20);
  (*(v8 + 8))(v12, v6);
  (*(v14 + 8))(v18, v22);
}

uint64_t sub_1C71D1BAC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 24);
    swift_beginAccess();
    a2(v5, v6, a1 + 32);
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C71D1C38()
{
  sub_1C71F3F64(v0 + 16);

  OUTLINED_FUNCTION_99_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71D1C74()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0EC28);
  __swift_project_value_buffer(v0, qword_1EDD0EC28);
  return sub_1C754FEFC();
}

uint64_t StoryOrchestrator.__allocating_init(configuration:photoLibrary:delegate:eventRecorder:sharingFilter:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  swift_allocObject();
  v12 = OUTLINED_FUNCTION_132_4();
  StoryOrchestrator.init(configuration:photoLibrary:delegate:eventRecorder:sharingFilter:)(v12, a2, a3, a4, a5, a6);
  return v6;
}

uint64_t StoryOrchestrator.init(configuration:photoLibrary:delegate:eventRecorder:sharingFilter:)(const void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v131 = a6;
  v130 = a5;
  v123 = a4;
  v126 = a2;
  v122 = type metadata accessor for StoryPlaceholderAssetsGenerator();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v125 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v14 = OUTLINED_FUNCTION_76(v13);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v117 - v15;
  v16 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v119 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA0);
  v23 = OUTLINED_FUNCTION_76(v22);
  MEMORY[0x1EEE9AC00](v23);
  memcpy(v146, a1, 0x11DuLL);
  v24 = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_logger;
  if (qword_1EDD0EC20 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v16, qword_1EDD0EC28);
  v120 = v18;
  v26 = *(v18 + 16);
  v26(v7 + v24, v25, v16);
  v27 = (v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA8);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  *v27 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB0);
  v118 = v24;
  v33 = *(v32 + 28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB8);
  OUTLINED_FUNCTION_76(v34);
  bzero(v27 + v33, *(v35 + 64));
  sub_1C7091CBC();
  v36 = v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationCleanupTime;
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  memcpy((v7 + 40), v146, 0x11DuLL);
  type metadata accessor for StoryGenerationCache();
  OUTLINED_FUNCTION_227_1();
  swift_allocObject();
  sub_1C71F0844(v146, v145);
  v37 = v126;
  v38 = StoryGenerationCache.init()();
  *(v7 + 16) = v37;
  *(v7 + 24) = v131;
  *(v7 + 32) = v38;
  type metadata accessor for StoryOrchestrator.DelegateChannel();
  OUTLINED_FUNCTION_99_0();
  v39 = swift_allocObject();
  v40 = v37;

  v41 = swift_unknownObjectRetain();
  v124 = a3;
  sub_1C71D16A0(v41, v123);
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_delegateChannel) = v39;
  type metadata accessor for StoryAppleIntelligenceEventReporter();
  OUTLINED_FUNCTION_40_4();
  v123 = v42;
  swift_allocObject();
  StoryAppleIntelligenceEventReporter.init()();
  v126 = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_aiEventReporter;
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_aiEventReporter) = v43;
  static FreeformStoryFetching.fetcher(with:isForTesting:)(v40, 0, v144);
  v128 = v18 + 16;
  v129 = v16;
  v127 = v26;
  if (BYTE4(v146[35]) == 1)
  {
    v44 = v119;
    v26(v119, v7 + v118, v16);
    v45 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    v47 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_96_0();
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v45, v46, "Generation preheat was skipped due its configuration", v49, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    (*(v120 + 8))(v44, v16);
    v50 = v131;
    v51 = v121;
  }

  else
  {
    sub_1C7550D5C();
    v51 = v121;
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    sub_1C6FB5E28(v144, v145);
    sub_1C6FB5E28(v130, &v135);
    OUTLINED_FUNCTION_227_1();
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    *(v56 + 24) = 0;
    sub_1C6F699F8(v145, v56 + 32);
    sub_1C6F699F8(&v135, v56 + 72);
    OUTLINED_FUNCTION_149();
    sub_1C7293D70();

    v50 = v131;
  }

  *&v145[0] = v40;
  WORD4(v145[0]) = v50;
  *&v145[1] = v38;
  type metadata accessor for MomentGroundingProcessor();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v57 = v40;

  v58 = MomentGroundingProcessor.init(storyPhotoLibraryContext:)(v145);
  v120 = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_momentGroundingProcessor;
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_momentGroundingProcessor) = v58;
  sub_1C6FB5E28(v144, v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetsFetcher);
  *&v145[0] = v57;
  WORD4(v145[0]) = v50;
  *&v145[1] = v38;
  type metadata accessor for StoryAsset.Manager();
  OUTLINED_FUNCTION_328();
  swift_allocObject();
  v59 = v57;

  v60 = StoryAsset.Manager.init(storyPhotoLibraryContext:)(v145);
  v61 = type metadata accessor for SafetyController(0);
  *&v145[0] = v59;
  WORD4(v145[0]) = v50;
  *&v145[1] = v38;
  v119 = v59;

  v62 = v38;
  v63 = SafetyController.__allocating_init(storyPhotoLibraryContext:)(v145);
  sub_1C7550D5C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  sub_1C6FB5E28(v130, v145);
  v68 = swift_allocObject();
  v68[2] = 0;
  v68[3] = 0;
  v68[4] = v63;
  sub_1C6F699F8(v145, (v68 + 5));

  v69 = OUTLINED_FUNCTION_149();
  sub_1C6FEB80C(v69, v70, v51, v71, v68);

  v72 = (v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController);
  v121 = v61;
  v72[3] = v61;
  v72[4] = &protocol witness table for SafetyController;
  *v72 = v63;
  v73 = v125;
  sub_1C6FB5E28(v144, v125 + 24);
  v74 = v50;
  v75 = qword_1EDD07B20;
  v76 = v119;
  OUTLINED_FUNCTION_132_4();

  if (v75 != -1)
  {
    swift_once();
  }

  v77 = qword_1EDD07B28;
  sub_1C754FF2C();
  *v73 = v68;
  *(v73 + 8) = v74;
  *(v73 + 16) = v62;
  *(v73 + 64) = v60;
  sub_1C71F2C28();
  type metadata accessor for ExtendedTokenGenerator();
  OUTLINED_FUNCTION_40_4();
  v78 = v60;
  v79 = swift_allocObject();
  v80 = v68;
  OUTLINED_FUNCTION_132_4();

  v125 = v78;
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_extendedTokenGenerator) = sub_1C71F26EC(v68, v74, v62, v63, v78, v79);
  sub_1C6FB5E28(v144, v145);
  type metadata accessor for FinalTokenGenerator();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v81 = v68;
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_finalTokenGenerator) = FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(v81, v145);
  type metadata accessor for PromptSanitizer();
  OUTLINED_FUNCTION_40_4();
  v82 = swift_allocObject();
  v83 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  v84 = v62;
  v85 = v127;
  v86 = v63;
  if (qword_1EDD0B9A0 != -1)
  {
    swift_once();
  }

  v87 = v129;
  v88 = __swift_project_value_buffer(v129, qword_1EDD0B9A8);
  v85(v82 + v83, v88, v87);
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_promptSanitizer) = v82;
  memcpy(v145, &v146[3], 0xA8uLL);
  sub_1C6FB5E28(v144, &v141);
  v89 = *(v7 + v120);
  v90 = *&v126[v7];
  type metadata accessor for TraitGenerator();
  OUTLINED_FUNCTION_40_4();
  v91 = swift_allocObject();
  v92 = v81;
  v122 = v92;
  v93 = v84;

  v94 = v86;

  v95 = v125;

  sub_1C71F27B4(&v146[3], &v135);

  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_traitGenerator) = sub_1C71F226C(v145, v92, v131, v93, &v141, v89, v86, v95, v90, v91);
  v119 = v146[0];
  v120 = v146[1];
  v96 = v146[2];
  objc_opt_self();
  OUTLINED_FUNCTION_312_1();

  v97 = [v89 numberOfTraitsToSelect];
  v98 = [v97 integerValue];

  v99 = [v89 numberOfChaptersPerStory];
  v100 = [v99 integerValue];

  v101 = [v89 numberOfShotsPerChapter];
  v102 = [v101 integerValue];

  v103 = [v89 shufflePromptParameters];
  *&v135 = v119;
  *(&v135 + 1) = v98;
  v136 = v100;
  v137 = v102;
  v138 = v120;
  v139 = v96;
  v140 = v103;
  type metadata accessor for FreeformStoryRequestGenerator();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  OUTLINED_FUNCTION_312_1();

  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyRequestGenerator) = FreeformStoryRequestGenerator.init(configuration:)(&v135);
  sub_1C6FB5E28(v144, &v135);
  v104 = *&v126[v7];
  type metadata accessor for FreeformStoryGenerator();
  OUTLINED_FUNCTION_40_4();
  v105 = swift_allocObject();
  v142 = v121;
  v143 = &protocol witness table for SafetyController;
  *&v141 = v94;
  v133 = v123;
  v134 = &protocol witness table for StoryAppleIntelligenceEventReporter;
  *&v132 = v104;
  v106 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  v107 = qword_1EDD09CF0;
  swift_retain_n();
  v108 = v122;

  v109 = v107 == -1;
  v110 = v93;
  if (!v109)
  {
    swift_once();
  }

  v111 = v129;
  v112 = __swift_project_value_buffer(v129, qword_1EDD28B68);
  v127(v105 + v106, v112, v111);
  sub_1C71F2810(v146);

  memcpy((v105 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration), &v146[24], 0x4CuLL);
  v113 = v105 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  *v113 = v108;
  v114 = v131;
  *(v113 + 8) = v131;
  *(v113 + 16) = v110;
  sub_1C6F699F8(&v141, v105 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_safetyController);
  sub_1C6F699F8(&v135, v105 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher);
  sub_1C6F699F8(&v132, v105 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting);
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyGenerator) = v105;
  *&v135 = v108;
  WORD4(v135) = v114;
  v136 = v110;
  type metadata accessor for MomentExpansionProcessor();
  OUTLINED_FUNCTION_40_4();
  v115 = swift_allocObject();
  MomentExpansionProcessor.init(storyPhotoLibraryContext:)(&v135);
  OUTLINED_FUNCTION_51();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(v144);
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_momentExpansionProcessor) = v115;
  *(v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetManager) = v125;
  return v7;
}

uint64_t sub_1C71D2980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C71D29A0, 0, 0);
}

uint64_t sub_1C71D29A0()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[2];
  v2 = v1[4];
  OUTLINED_FUNCTION_10_3(v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1C71D2AB8;
  OUTLINED_FUNCTION_61_3(v0[3]);
  OUTLINED_FUNCTION_16_6();

  return v5();
}

uint64_t sub_1C71D2AB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C71D2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C71D2BB8, a4, 0);
}

uint64_t sub_1C71D2BB8()
{
  OUTLINED_FUNCTION_42();
  SafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t StoryOrchestrator.generateStory(in:storySession:eventRecorder:progressReporter:resultIterator:)()
{
  OUTLINED_FUNCTION_42();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v1[81] = v5;
  v1[80] = v6;
  v1[79] = v7;
  v1[86] = *v0;
  v8 = sub_1C754DD2C();
  v1[87] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[88] = v9;
  v1[89] = OUTLINED_FUNCTION_77();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FD0);
  OUTLINED_FUNCTION_76(v10);
  v1[90] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754F04C();
  v1[91] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[92] = v12;
  v1[93] = OUTLINED_FUNCTION_77();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FD8);
  OUTLINED_FUNCTION_76(v13);
  v1[94] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F05C();
  v1[95] = v14;
  OUTLINED_FUNCTION_18(v14);
  v1[96] = v15;
  v1[97] = OUTLINED_FUNCTION_281_1();
  v1[98] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v16);
  v1[99] = OUTLINED_FUNCTION_77();
  v17 = sub_1C754DF6C();
  v1[100] = v17;
  OUTLINED_FUNCTION_18(v17);
  v1[101] = v18;
  v1[102] = OUTLINED_FUNCTION_77();
  v19 = sub_1C754FA9C();
  v1[103] = v19;
  OUTLINED_FUNCTION_18(v19);
  v1[104] = v20;
  v1[105] = OUTLINED_FUNCTION_77();
  v21 = sub_1C754FABC();
  v1[106] = v21;
  OUTLINED_FUNCTION_18(v21);
  v1[107] = v22;
  v1[108] = OUTLINED_FUNCTION_77();
  v23 = sub_1C754FCAC();
  v1[109] = v23;
  OUTLINED_FUNCTION_18(v23);
  v1[110] = v24;
  v1[111] = OUTLINED_FUNCTION_77();
  v25 = sub_1C754FC9C();
  v1[112] = v25;
  OUTLINED_FUNCTION_18(v25);
  v1[113] = v26;
  v1[114] = OUTLINED_FUNCTION_77();
  v27 = sub_1C754FCCC();
  v1[115] = v27;
  OUTLINED_FUNCTION_18(v27);
  v1[116] = v28;
  v1[117] = OUTLINED_FUNCTION_77();
  v29 = sub_1C754FB1C();
  v1[118] = v29;
  OUTLINED_FUNCTION_18(v29);
  v1[119] = v30;
  v1[120] = OUTLINED_FUNCTION_77();
  v31 = sub_1C754FB0C();
  v1[121] = v31;
  OUTLINED_FUNCTION_18(v31);
  v1[122] = v32;
  v1[123] = OUTLINED_FUNCTION_77();
  v33 = sub_1C754FCEC();
  v1[124] = v33;
  OUTLINED_FUNCTION_18(v33);
  v1[125] = v34;
  v1[126] = OUTLINED_FUNCTION_281_1();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v35 = sub_1C754FB3C();
  v1[129] = v35;
  OUTLINED_FUNCTION_18(v35);
  v1[130] = v36;
  v1[131] = OUTLINED_FUNCTION_77();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FE0);
  OUTLINED_FUNCTION_76(v37);
  v1[132] = OUTLINED_FUNCTION_77();
  v38 = sub_1C754FD2C();
  v1[133] = v38;
  OUTLINED_FUNCTION_18(v38);
  v1[134] = v39;
  v1[135] = OUTLINED_FUNCTION_77();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA8);
  v1[136] = v40;
  OUTLINED_FUNCTION_76(v40);
  v1[137] = OUTLINED_FUNCTION_281_1();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA0);
  OUTLINED_FUNCTION_76(v41);
  v1[140] = OUTLINED_FUNCTION_77();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FE8);
  OUTLINED_FUNCTION_76(v42);
  v1[141] = OUTLINED_FUNCTION_77();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v43);
  v1[142] = OUTLINED_FUNCTION_77();
  v44 = sub_1C754DFFC();
  v1[143] = v44;
  OUTLINED_FUNCTION_18(v44);
  v1[144] = v45;
  v1[145] = OUTLINED_FUNCTION_77();
  v46 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v46, v47, v48);
}

uint64_t sub_1C71D32C0()
{
  OUTLINED_FUNCTION_75_1();
  v21 = v0;
  v1 = *(v0 + 640);
  v2 = type metadata accessor for StoryGenerationSession(0);
  *(v0 + 1168) = v2;
  v3 = *(v1 + *(v2 + 24));
  *(v0 + 1176) = v3;
  if (v3)
  {
    v20 = 1;
    StoryGenerationDiagnosticContext.generationStage.setter(&v20);
    v1 = *(v0 + 640);
  }

  v4 = *(v0 + 680);
  *(v0 + 1184) = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_aiEventReporter);
  v19 = *(v0 + 664);
  sub_1C705A46C();
  sub_1C7550D5C();
  v5 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_3_16();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;

  OUTLINED_FUNCTION_149();
  sub_1C7293D70();
  *(v0 + 1192) = v10;
  v11 = swift_task_alloc();
  *(v0 + 1200) = v11;
  *(v11 + 16) = v19;
  *(v11 + 32) = v1;
  v12 = swift_task_alloc();
  *(v0 + 1208) = v12;
  *v12 = v0;
  v12[1] = sub_1C71D345C;
  v13 = OUTLINED_FUNCTION_61_3(*(v0 + 632));

  return sub_1C71D6644(v13, v14, v15, v16, v17, v11);
}

uint64_t sub_1C71D345C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1216) = v0;

  OUTLINED_FUNCTION_181_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71D3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_326_0();
  a37 = v39;
  a38 = v40;
  a36 = v38;
  v41 = v38[147];
  sub_1C705B128();
  if (v41)
  {
    v42 = v38[80];
    v43 = *(v38[146] + 28);
    type metadata accessor for StoryAnalyticsSender();
    OUTLINED_FUNCTION_24_2();

    sub_1C7433254(v44, (v42 + v43), 0);
    v45 = swift_task_alloc();
    v38[153] = v45;
    *v45 = v38;
    v45[1] = sub_1C71D3810;
    OUTLINED_FUNCTION_235_0();

    return sub_1C71DD82C();
  }

  else
  {
    v48 = v38[147];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C7550E1C();

    if (v48)
    {
      OUTLINED_FUNCTION_199();
      HIBYTE(a27) = 0;
      StoryGenerationDiagnosticContext.generationStage.setter(&a27 + 7);
      v49 = OUTLINED_FUNCTION_57_0();
      v50(v49);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_120_6();
      v52(v51);
    }

    OUTLINED_FUNCTION_34_17();
    OUTLINED_FUNCTION_52_17();
    OUTLINED_FUNCTION_250_1();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_235_0();

    return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }
}

uint64_t sub_1C71D3810()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C71D3908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_326_0();
  a37 = v39;
  a38 = v40;
  a36 = v38;

  v41 = *(v38 + 1176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C7550E1C();

  if (v41)
  {
    OUTLINED_FUNCTION_199();
    HIBYTE(a27) = 0;
    StoryGenerationDiagnosticContext.generationStage.setter(&a27 + 7);
    v42 = OUTLINED_FUNCTION_57_0();
    v43(v42);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_120_6();
    v45(v44);
  }

  OUTLINED_FUNCTION_34_17();
  OUTLINED_FUNCTION_52_17();
  OUTLINED_FUNCTION_250_1();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_235_0();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1C71D59FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C71D5AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_325_0();
  a39 = v41;
  a40 = v42;
  a38 = v40;
  v43 = *(v40 + 1248);

  v44 = v43;
  v45 = sub_1C754FEEC();
  v46 = sub_1C755119C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = *(v40 + 1248);
    v48 = *(v40 + 1176);
    v49 = *(v40 + 712);
    v50 = *(v40 + 704);
    v51 = *(v40 + 696);
    v52 = OUTLINED_FUNCTION_20_1();
    v100 = swift_slowAlloc();
    a28 = swift_slowAlloc();
    *v52 = 138412802;
    v53 = v47;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 4) = v54;
    *v100 = v54;
    *(v52 + 12) = 2080;
    StoryGenerationDiagnosticContext.generationStage.getter((v40 + 217));
    v55 = sub_1C755070C();
    v57 = sub_1C6F765A4(v55, v56, &a28);

    *(v52 + 14) = v57;
    *(v52 + 22) = 2080;
    (*(v50 + 16))(v49, v48 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL, v51);
    sub_1C71F28F0(&qword_1EDD0CBD8, MEMORY[0x1E6968FB0]);
    v58 = sub_1C7551D8C();
    v60 = v59;
    (*(v50 + 8))(v49, v51);
    v61 = sub_1C6F765A4(v58, v60, &a28);

    *(v52 + 24) = v61;
    _os_log_impl(&dword_1C6F5C000, v45, v46, "Story generation stopping with error %@ at stage %s, saved story diagnostics at %s", v52, 0x20u);
    sub_1C6FB5FC8(v100, &qword_1EC215190);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v62 = *(v40 + 1248);
  if (sub_1C71656D8())
  {
    v63 = (*(v40 + 1176) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v63);
    sub_1C71DF0C4(&v63[2]);
    os_unfair_lock_unlock(v63);
  }

  v64 = *(v40 + 1248);

  v65 = *(v40 + 1248);
  v66 = *(v40 + 1216);
  v67 = *(v40 + 1176);
  v68 = v65;
  sub_1C705B128();

  swift_willThrow();
  sub_1C7550E1C();

  if (v67)
  {
    OUTLINED_FUNCTION_199();
    LOBYTE(a28) = 0;
    StoryGenerationDiagnosticContext.generationStage.setter(&a28);
    v69 = OUTLINED_FUNCTION_57_0();
    v70(v69);
  }

  else
  {
    v71 = OUTLINED_FUNCTION_120_6();
    v72(v71);
  }

  OUTLINED_FUNCTION_34_17();
  v84 = v74;
  v85 = v73;
  v86 = *(v40 + 1008);
  v87 = *(v40 + 984);
  v88 = *(v40 + 960);
  v89 = *(v40 + 936);
  v90 = *(v40 + 912);
  v91 = *(v40 + 888);
  v92 = *(v40 + 864);
  v93 = *(v40 + 840);
  v94 = *(v40 + 816);
  v95 = *(v40 + 792);
  v96 = *(v40 + 784);
  v97 = *(v40 + 776);
  v98 = *(v40 + 752);
  v99 = *(v40 + 744);
  v101 = *(v40 + 720);
  v102 = *(v40 + 712);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_260();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v101, v102, a28, a29, a30, a31, a32);
}

uint64_t sub_1C71D5FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219078);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for PhotoAnalysisExecutiveService(0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71D60B4, 0, 0);
}

uint64_t sub_1C71D60B4()
{
  OUTLINED_FUNCTION_123();
  PhotoAnalysisExecutiveService.init(for:)(*(v0[2] + 16), v0[3]);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_90();
  sub_1C71F2C28();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1C71D62B8;

  return sub_1C729A254(v5, 0x414441507065656BLL, 0xED00006576697463, &unk_1C757E5D0, 0, 0, 0);
}

uint64_t sub_1C71D62B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1C71D642C;
  }

  else
  {
    v5 = sub_1C71D63BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C71D63BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_176_0();
  sub_1C71F29F8(v0, v1);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C71D642C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_176_0();
  sub_1C71F29F8(v1, v2);

  OUTLINED_FUNCTION_43();

  return v3();
}

void sub_1C71D64A4(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - v9);
  a2(a1, v8);
  sub_1C6FD7F70();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    v12 = *(a4 + *(type metadata accessor for StoryGenerationSession(0) + 24));
    if (v12)
    {
      v13 = *(*(v12 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 48);
      swift_beginAccess();

      v14 = v11;
      sub_1C6FB0964();
      v15 = *(*(v13 + 16) + 16);
      sub_1C6FB11D4();
      v16 = *(v13 + 16);
      *(v16 + 16) = v15 + 1;
      *(v16 + 8 * v15 + 32) = v11;
      *(v13 + 16) = v16;
      swift_endAccess();
    }

    else
    {
    }
  }

  else
  {
    sub_1C6FB5FC8(v10, &qword_1EC218FF0);
  }
}

uint64_t sub_1C71D6644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[65] = v6;
  v7[63] = a5;
  v7[64] = a6;
  v7[61] = a3;
  v7[62] = a4;
  v7[59] = a1;
  v7[60] = a2;
  v9 = sub_1C75519BC();
  v7[66] = v9;
  v7[67] = *(v9 - 8);
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v10 = sub_1C75519CC();
  v7[70] = v10;
  v7[71] = *(v10 - 8);
  v7[72] = swift_task_alloc();
  v11 = sub_1C754F2FC();
  v7[73] = v11;
  v7[74] = *(v11 - 8);
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v7[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0);
  v7[85] = swift_task_alloc();
  v7[86] = swift_task_alloc();
  type metadata accessor for StoryState.PromptOrigin(0);
  v7[87] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v7[88] = v12;
  v7[89] = *(v12 - 8);
  v7[90] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71D6910, a1, 0);
}

uint64_t sub_1C71D7578()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[67];
  sub_1C71F28F0(&qword_1EDD06868, MEMORY[0x1E69E8820]);
  OUTLINED_FUNCTION_0_11();
  sub_1C7551E5C();
  sub_1C71F28F0(&qword_1EDD06870, MEMORY[0x1E69E87E8]);
  sub_1C75519DC();
  v0[94] = *(v1 + 8);
  v0[95] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2 = OUTLINED_FUNCTION_55();
  v3(v2);
  v4 = swift_task_alloc();
  v0[96] = v4;
  *v4 = v0;
  v4[1] = sub_1C71D76FC;
  v5 = OUTLINED_FUNCTION_61_3(v0[69]);

  return MEMORY[0x1EEE6DE58](v5);
}

uint64_t sub_1C71D76FC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[97] = v0;

  if (v0)
  {
    v7 = v3[94];

    v8 = OUTLINED_FUNCTION_0_11();
    v7(v8);
    v9 = sub_1C71D8014;
    v10 = 0;
  }

  else
  {
    v11 = v3[94];
    v12 = v3[69];
    v13 = v3[66];
    v14 = v3[59];
    v11(v12, v13);
    v15 = OUTLINED_FUNCTION_43_2();
    v16(v15);
    v9 = sub_1C71D7868;
    v10 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, 0);
}

uint64_t sub_1C71D8014()
{
  OUTLINED_FUNCTION_42();
  (*(v0[71] + 8))(v0[72], v0[70]);
  v1 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C71D8834()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 792) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C71D8948()
{
  v1 = v0[99];
  sub_1C754F2EC();
  v2 = v0[90];
  v3 = v0[88];
  if (v1)
  {
    v4 = v0[65];
    v6 = v0[60];
    v5 = v0[61];
    __swift_destroy_boxed_opaque_existential_1((v0 + 26));
    sub_1C71DFB44(v5, v2, v4, v6);
    v7 = OUTLINED_FUNCTION_322_0();
    v8(v7, v3);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v9 = v0[60];
    __swift_destroy_boxed_opaque_existential_1((v0 + 26));
    OUTLINED_FUNCTION_298_1();
    sub_1C71DFB44(v10, v11, v12, v9);
    v13 = OUTLINED_FUNCTION_322_0();
    v14(v13, v3);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_130_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C71D8C04()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 808) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71D9460()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 824) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71D9CBC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 840) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DA518()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 856) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DAD74()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 872) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DB5D0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 888) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DBE2C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 904) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DC688()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 920) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71DCEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 792);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DCFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 808);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 824);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 840);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 856);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 872);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 888);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 904);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_17_39();
  v21 = OUTLINED_FUNCTION_82_10();
  v22(v21);
  v23 = OUTLINED_FUNCTION_81_11();
  v24(v23);
  v34 = *(v20 + 920);
  OUTLINED_FUNCTION_12_41();

  OUTLINED_FUNCTION_73_11();
  OUTLINED_FUNCTION_20_4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_1C71DD82C()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v5 = sub_1C75506DC();
  v1[18] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71DD8D8()
{
  OUTLINED_FUNCTION_123();
  v0[21] = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_logger;
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_96_0();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v10 = v0[17];

  v11 = *(v10 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController + 32);
  OUTLINED_FUNCTION_10_3((v10 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController));
  v15 = (*(v11 + 104) + **(v11 + 104));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[22] = v12;
  *v12 = v13;
  v12[1] = sub_1C71DDA64;
  OUTLINED_FUNCTION_16_6();

  return v15();
}

uint64_t sub_1C71DDA64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C71DDB5C()
{
  OUTLINED_FUNCTION_58_9();
  static SafetyControllerDiagnosticsGenerator.save(with:diagnosticReport:)();

  v1 = v0[16];
  v2 = OUTLINED_FUNCTION_15_1();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v4 = OUTLINED_FUNCTION_55();
  v5(v4);
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v9 = swift_task_alloc();
  *(v9 + 16) = v0 + 2;
  sub_1C7164850(0xD000000000000011, 0x80000001C75A45A0, sub_1C71F4038, v9);

  v10 = v6 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationCleanupTime;
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationCleanupTime));
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  os_unfair_lock_unlock(v10);
  v14 = *(v1 + 24);
  v13 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v7, v14);
  v15 = *(v8 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v16 = *(v15 + 40) + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_llmQULatency;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  (*(v13 + 24))(v11, v12, *v16, *(v16 + 8), v14, v13);
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[18];
  sub_1C75506CC();
  sub_1C755069C();
  v21 = v20;

  (*(v18 + 8))(v17, v19);
  if (v21 >> 60 != 15)
  {
    sub_1C7161C08();
    v22 = OUTLINED_FUNCTION_49_3();
    sub_1C70B5C10(v22, v23);
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v24 = sub_1C754FEEC();
  sub_1C75511BC();
  v25 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_96_0();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v27);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v33 = v0[17];
  v34 = v0[14];

  static PromptSuggestionDiagnosticsGenerator.save(with:photoLibrary:)(v34, *(v33 + 16));
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_96_0();
    v37 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v37);
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Saving story state", 0, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C71930BC();
  sub_1C75506CC();
  sub_1C755069C();
  v39 = v38;

  v40 = OUTLINED_FUNCTION_15_1();
  v41(v40);
  if (v39 >> 60 != 15)
  {
    sub_1C7161C08();
    v42 = OUTLINED_FUNCTION_57_0();
    sub_1C70B5C10(v42, v43);
  }

  v44 = StoryGenerationDiagnosticContext.debugAlbumInfo.getter();
  if (*(v44 + 16))
  {
    v45 = v0[14];
    sub_1C75504FC();
    sub_1C71645D0(0xD000000000000012, 0x80000001C75A4500, v45, v44);
  }

  v46 = v0[14];

  StoryGenerationDiagnosticContext.writeStoredFiles()();
  StoryGenerationDiagnosticContext.writeGenerationDiagnosticFiles(to:)(v46 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

id sub_1C71DE33C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
  inited = swift_initStackObject();
  v49 = xmmword_1C755BAB0;
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1C7551D8C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v6 = sub_1C75504DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(sub_1C754F8CC() + 16);

  if (v7)
  {
    sub_1C755068C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v8 = sub_1C754F8CC();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D20);
    *&v64 = v8;
    sub_1C6FCABEC(&v64, &v60);
    swift_isUniquelyReferenced_nonNull_native();
    *&v52 = v6;
    v9 = __swift_mutable_project_boxed_opaque_existential_0(&v60, v62);
    v10 = MEMORY[0x1EEE9AC00](v9);
    (*(v12 + 16))(&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    sub_1C709D704();
    __swift_destroy_boxed_opaque_existential_1(&v60);

    v6 = v52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1C754F8CC();
  sub_1C710DB44(v13, &v60);

  if (v62)
  {
    sub_1C6F699F8(&v60, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
    v14 = swift_initStackObject();
    *(v14 + 16) = v49;
    *(v14 + 32) = sub_1C755068C();
    *(v14 + 40) = v15;
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    *(v14 + 48) = sub_1C7551D8C();
    *(v14 + 56) = v16;
    v17 = sub_1C75504DC();
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    v18 = sub_1C754F8DC();
    v20 = v19;
    v21 = v66;
    v22 = v67;
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    v23 = MEMORY[0x1CCA5BE00](v21, v22);
    sub_1C70C0CE8(v17, v24, v25, v26, v27, v28, v29, v30, v49, *(&v49 + 1), v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71);
    v32 = v31;

    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v34 = sub_1C71F04B4(v18, v20, v23, v32);
    sub_1C755068C();
    v62 = sub_1C6F65BE8(0, &qword_1EC216D18);
    *&v60 = v34;
    sub_1C6FCABEC(&v60, &v52);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = v6;
    v35 = __swift_mutable_project_boxed_opaque_existential_0(&v52, v54);
    v36 = MEMORY[0x1EEE9AC00](v35);
    (*(v38 + 16))(&v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    sub_1C709D718();
    __swift_destroy_boxed_opaque_existential_1(&v52);

    __swift_destroy_boxed_opaque_existential_1(&v64);
  }

  else
  {
    sub_1C6FB5FC8(&v60, &qword_1EC216628);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = sub_1C754F8DC();
  v41 = v40;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = MEMORY[0x1CCA5BE00](v42, v43);
  sub_1C70C0EC0();
  v46 = v45;

  v47 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return sub_1C71F04B4(v39, v41, v44, v46);
}

uint64_t sub_1C71DE8B4(void *a1)
{
  v2 = sub_1C754F8AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F8FC();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E698C328])
  {
    type metadata accessor for StoryOrchestrator.Error(0);
    sub_1C71F28F0(&qword_1EC217F78, type metadata accessor for StoryOrchestrator.Error);
    v7 = swift_allocError();
    v9 = v8;
    v10 = a1[3];
    v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1C7551D9C();
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E698C2C0])
  {
    type metadata accessor for StoryOrchestrator.Error(0);
    sub_1C71F28F0(&qword_1EC217F78, type metadata accessor for StoryOrchestrator.Error);
    v7 = swift_allocError();
    v9 = v17;
    v10 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v10 - 8);
    v19 = MEMORY[0x1EEE9AC00](v18);
    v15 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v19);
    v16 = sub_1C7551D9C();
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v6 == *MEMORY[0x1E698C338])
  {
    type metadata accessor for StoryOrchestrator.Error(0);
    sub_1C71F28F0(&qword_1EC217F78, type metadata accessor for StoryOrchestrator.Error);
    v7 = swift_allocError();
    v9 = v21;
    v10 = a1[3];
    v22 = __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(v10 - 8);
    v23 = MEMORY[0x1EEE9AC00](v22);
    v15 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v23);
    v16 = sub_1C7551D9C();
    if (v16)
    {
LABEL_9:
      v25 = v16;
      (*(v12 + 8))(v15, v10);
LABEL_17:
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217F38) + 48);
      *v9 = v25;
      v38 = sub_1C754DF6C();
      __swift_storeEnumTagSinglePayload(v9 + v37, 1, 1, v38);
LABEL_20:
      swift_storeEnumTagMultiPayload();
      return v7;
    }

LABEL_16:
    v25 = swift_allocError();
    (*(v12 + 32))(v36, v15, v10);
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x1E698C2A8])
  {
    type metadata accessor for StoryOrchestrator.Error(0);
    sub_1C71F28F0(&qword_1EC217F78, type metadata accessor for StoryOrchestrator.Error);
    v7 = swift_allocError();
    v27 = v26;
    v28 = a1[3];
    v29 = __swift_project_boxed_opaque_existential_1(a1, v28);
    v30 = *(v28 - 8);
    v31 = MEMORY[0x1EEE9AC00](v29);
    v33 = &v41 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, v31);
    v34 = sub_1C7551D9C();
    if (v34)
    {
      v35 = v34;
      (*(v30 + 8))(v33, v28);
    }

    else
    {
      v35 = swift_allocError();
      (*(v30 + 32))(v39, v33, v28);
    }

    *v27 = v35;
    goto LABEL_20;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1C71DF0C4(uint64_t a1)
{
  sub_1C755180C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75A44E0);
  swift_getErrorValue();
  v2 = sub_1C7551EAC();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);

  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  return result;
}

void StoryOrchestrator.setStoryGenerationCancellationReason(_:)(void **a1)
{
  v2 = *a1;
  v3 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate);
  os_unfair_lock_lock(v3);
  v4 = (&v3->_os_unfair_lock_opaque + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB0) + 28));
  sub_1C6FB5FC8(v4, &qword_1EC218FA0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA8);
  *v4 = v2;
  sub_1C71F2938(v2);
  sub_1C754DF3C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);

  os_unfair_lock_unlock(v3);
}

Swift::Void __swiftcall StoryOrchestrator.clearStoryGenerationCancellationReason()()
{
  v1 = (v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB0);
  sub_1C6FB5FC8(v1 + *(v2 + 28), &qword_1EC218FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FA8);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

  os_unfair_lock_unlock(v1);
}

id sub_1C71DF320()
{
  v0 = sub_1C754FCAC();
  v40 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_1C754FB1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  if ([v10 enableMockRateLimitingError])
  {
    v11 = sub_1C754FEEC();
    v12 = sub_1C75511BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
    }

    sub_1C754DF3C();
    v14 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v14);
    sub_1C754FAFC();
    (*(v7 + 104))(v9, *MEMORY[0x1E69A0940], v6);
    sub_1C754FD2C();
    sub_1C71F28F0(&qword_1EC216750, MEMORY[0x1E69A0A68]);
    swift_allocError();
    sub_1C754FB4C();
    (*(v7 + 8))(v9, v6);
  }

  else if ([v10 enableMockNetworkError])
  {
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    sub_1C754DF3C();
    v18 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v18);
    sub_1C754FD2C();
    sub_1C71F28F0(&qword_1EC216750, MEMORY[0x1E69A0A68]);
    swift_allocError();
    sub_1C754FADC();
    sub_1C6FB5FC8(v5, &unk_1EC219230);
  }

  else if ([v10 enableMockNotEnoughAssetsError])
  {
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
    }

    sub_1C6FE0D14();
    swift_allocError();
    *v22 = xmmword_1C7576300;
    *(v22 + 16) = 0;
    *(v22 + 24) = 5;
  }

  else if ([v10 enableMockServerRequestTimeout])
  {
    v23 = sub_1C754FEEC();
    v24 = sub_1C75511BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      MEMORY[0x1CCA5F8E0](v25, -1, -1);
    }

    sub_1C754DF3C();
    v26 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v26);
    sub_1C754FC8C();
    v27 = v40;
    (*(v40 + 104))(v2, *MEMORY[0x1E69A0A38], v0);
    sub_1C754FD2C();
    sub_1C71F28F0(&qword_1EC216750, MEMORY[0x1E69A0A68]);
    swift_allocError();
    sub_1C754FCDC();
    (*(v27 + 8))(v2, v0);
  }

  else if ([v10 enableMockCocoaDomainError])
  {
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      MEMORY[0x1CCA5F8E0](v30, -1, -1);
    }

    v31 = sub_1C755068C();
    v33 = v32;
    v34 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C71F04B4(v31, v33, 101, 0);
  }

  else
  {
    result = [v10 enableMockGeneralMCError];
    if (!result)
    {
      return result;
    }

    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      MEMORY[0x1CCA5F8E0](v38, -1, -1);
    }

    type metadata accessor for StoryOrchestrator.Error(0);
    sub_1C71F28F0(&qword_1EC217F78, type metadata accessor for StoryOrchestrator.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  return swift_willThrow();
}

void sub_1C71DFB44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_1C754DF6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1AC();
  v16 = (a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate);
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationReasonAndIssuedDate));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FB0);
  sub_1C71F0564(v8);
  os_unfair_lock_unlock(v16);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C6FB5FC8(v8, &unk_1EC219230);
    v17 = v38;
    goto LABEL_11;
  }

  (*(v10 + 32))(v15, v8, v9);
  sub_1C754DF3C();
  sub_1C754DEAC();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = sub_1C754FEEC();
  if (v19 >= 1.0)
  {
    v22 = sub_1C75511AC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_9;
    }

    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19;
    v24 = "Story generation took very long (%f seconds) to clean up after being cancelled!";
  }

  else
  {
    v22 = sub_1C75511BC();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_9;
    }

    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19;
    v24 = "Story generation took %f seconds to clean up after being cancelled.";
  }

  _os_log_impl(&dword_1C6F5C000, v21, v22, v24, v23, 0xCu);
  MEMORY[0x1CCA5F8E0](v23, -1, -1);
LABEL_9:

  v25 = a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationCleanupTime;
  os_unfair_lock_lock((a3 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_cancellationCleanupTime));
  *(v25 + 8) = v19;
  *(v25 + 16) = 0;
  os_unfair_lock_unlock(v25);
  v20(v15, v9);
  v26 = type metadata accessor for StoryGenerationSession(0);
  v17 = v38;
  v27 = *(v38 + *(v26 + 24));
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    swift_beginAccess();
    v29 = *(v28 + 40) + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_cancellationCleanupTime;
    *v29 = v19;
    *(v29 + 8) = 0;
  }

LABEL_11:
  if (*(v17 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {

    v30 = sub_1C717B25C();
    v32 = v31;

    sub_1C75504FC();
    v33 = sub_1C754FEEC();
    v34 = sub_1C75511BC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v35 = 136315138;
      v37 = sub_1C6F765A4(v30, v32, &v39);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1C6F5C000, v33, v34, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1CCA5F8E0](v36, -1, -1);
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C71E0008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[136] = a7;
  v7[135] = a6;
  v7[134] = a5;
  v7[133] = a4;
  v7[132] = a3;
  v7[131] = a2;
  v7[130] = a1;
  v7[137] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FF0);
  v7[138] = swift_task_alloc();
  type metadata accessor for FreeformStory();
  v7[139] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v7[140] = v9;
  v7[141] = *(v9 - 8);
  v7[142] = swift_task_alloc();
  v7[143] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v7[144] = v10;
  v7[145] = *(v10 - 8);
  v7[146] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71E01B4, a1, 0);
}

uint64_t sub_1C71E0738()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1200) = v0;

  v7 = *(v3 + 1040);
  if (v0)
  {
    v8 = sub_1C71E0A7C;
  }

  else
  {
    v8 = sub_1C71E0838;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C71E0838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  if (*(v15 + 1184))
  {
    v14 = *(v15 + 1112);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    sub_1C717BEC4(v14);

    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    v17 = OUTLINED_FUNCTION_224_1();
    StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(v17);

    OUTLINED_FUNCTION_10_2();
    sub_1C7161CDC(0xD00000000000001CLL, v18);
  }

  OUTLINED_FUNCTION_256_1();
  v19 = *(v15 + 1080);
  OUTLINED_FUNCTION_57_0();
  sub_1C71F29A0();
  OUTLINED_FUNCTION_49_3();
  swift_storeEnumTagMultiPayload();
  v19(v14);
  sub_1C6FE0DC0(v15 + 320);
  sub_1C6FB5FC8(v14, &qword_1EC218FF0);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_283_1();
  v20 = OUTLINED_FUNCTION_65_15();
  sub_1C71D1908(v20, v16);

  sub_1C754F2EC();
  OUTLINED_FUNCTION_294_1();
  if (v14)
  {
    OUTLINED_FUNCTION_34_12(*(v15 + 1056));
    OUTLINED_FUNCTION_105_7();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_457();
    v22(v21);
    OUTLINED_FUNCTION_206_2();
    OUTLINED_FUNCTION_215_0();

    OUTLINED_FUNCTION_43();
  }

  else
  {
    OUTLINED_FUNCTION_114_7();
    a10 = v23;
    OUTLINED_FUNCTION_91_8(*(v15 + 1056));
    OUTLINED_FUNCTION_223_0();
    v24 = OUTLINED_FUNCTION_457();
    v25(v24);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_17_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t StoryOrchestrator.generateMemory(in:storySession:eventRecorder:progressReporter:resultIterator:)()
{
  OUTLINED_FUNCTION_42();
  v1[136] = v0;
  v1[135] = v2;
  v1[134] = v3;
  v1[133] = v4;
  v1[132] = v5;
  v1[131] = v6;
  v1[130] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218FF0);
  v1[137] = v8;
  OUTLINED_FUNCTION_76(v8);
  v1[138] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_76(v9);
  v1[139] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754F2FC();
  v1[140] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[141] = v11;
  v1[142] = OUTLINED_FUNCTION_81_0();
  v1[143] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v1[144] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[145] = v13;
  v1[146] = OUTLINED_FUNCTION_77();
  v14 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C71E1490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1200) = v0;

  v7 = *(v3 + 1040);
  if (v0)
  {
    v8 = sub_1C71E17D4;
  }

  else
  {
    v8 = sub_1C71E1590;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C71E1590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  if (*(v15 + 1184))
  {
    v14 = *(v15 + 1112);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    sub_1C717BEC4(v14);

    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    v17 = OUTLINED_FUNCTION_224_1();
    StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(v17);

    OUTLINED_FUNCTION_10_2();
    sub_1C7161CDC(0xD00000000000001CLL, v18);
  }

  OUTLINED_FUNCTION_256_1();
  v19 = *(v15 + 1072);
  OUTLINED_FUNCTION_57_0();
  sub_1C71F29A0();
  OUTLINED_FUNCTION_49_3();
  swift_storeEnumTagMultiPayload();
  v19(v14);
  sub_1C6FE0DC0(v15 + 320);
  sub_1C6FB5FC8(v14, &qword_1EC218FF0);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_283_1();
  v20 = OUTLINED_FUNCTION_64_10();
  sub_1C71D1908(v20, v16);

  sub_1C754F2EC();
  OUTLINED_FUNCTION_294_1();
  if (v14)
  {
    OUTLINED_FUNCTION_34_12(*(v15 + 1056));
    OUTLINED_FUNCTION_105_7();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_457();
    v22(v21);
    OUTLINED_FUNCTION_206_2();
    OUTLINED_FUNCTION_215_0();

    OUTLINED_FUNCTION_43();
  }

  else
  {
    OUTLINED_FUNCTION_114_7();
    a10 = v23;
    OUTLINED_FUNCTION_91_8(*(v15 + 1056));
    OUTLINED_FUNCTION_223_0();
    v24 = OUTLINED_FUNCTION_457();
    v25(v24);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_17_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t StoryOrchestrator.generateStoryPrompt(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[33] = v5;
  v6 = sub_1C754F2FC();
  v1[38] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[39] = v7;
  v1[40] = OUTLINED_FUNCTION_81_0();
  v1[41] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[42] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[43] = v9;
  v1[44] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1C71E1C10()
{
  v2 = v1[35];
  OUTLINED_FUNCTION_119_8();
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_204_2();
  sub_1C754F2CC();
  if (v0)
  {
    OUTLINED_FUNCTION_87_1(v1[35], *(v2 + 24));
    OUTLINED_FUNCTION_299_1();
    sub_1C754F1AC();
    v3 = OUTLINED_FUNCTION_6_35();
    v4(v3);
    v5 = OUTLINED_FUNCTION_229_0();
    v6(v5);
  }

  else
  {
    v7 = v1[33];

    v8 = OUTLINED_FUNCTION_16_0();
    sub_1C71D1908(v8, v9);

    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v10 = *(v7 + 112);
    if (v10 >> 62 == 2)
    {
      v11 = v1[33];
      v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1C75504FC();
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v14 = *(v11 + 120);
      if (v14 >> 61 == 4)
      {
        v15 = v1[33];
        memcpy(v1 + 2, ((v14 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);

        sub_1C6FD7F70();

        OUTLINED_FUNCTION_0_53();
        swift_beginAccess();
        v16 = *(v15 + 136);
        v48 = v1[36];
        v51 = v1[35];
        if (v16 >> 62 == 1)
        {
          v42 = v1[40];
          v43 = v1[34];
          v45 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1C75504FC();

          sub_1C754F2BC();
          OUTLINED_FUNCTION_234_1(v55);
          v17 = OUTLINED_FUNCTION_98_1();
          v18(v17);
          OUTLINED_FUNCTION_111_5();
          sub_1C730E9A0(v13, v12, v45, v51, v42, *(v43 + v19), __src);

          sub_1C7027A58((v1 + 2));
          v38 = swift_allocObject();
          v39 = OUTLINED_FUNCTION_155_0(v38);
          memcpy(v39, __src, 0x41uLL);
          *(v12 + 88) = v10;
          v56[0] = v12 | 0xC000000000000000;

          sub_1C719487C(v56);

          sub_1C754F2EC();

          OUTLINED_FUNCTION_44_16();
          OUTLINED_FUNCTION_112_1();
          sub_1C754F1AC();
          v40 = OUTLINED_FUNCTION_228_1();
          v41(v40);

          OUTLINED_FUNCTION_25();
          goto LABEL_11;
        }

        v32 = v1[43];
        v33 = v1[44];
        v34 = v1[39];
        v44 = v1[42];
        v47 = v1[38];

        sub_1C7027A58((v1 + 2));

        sub_1C7195E04();
        OUTLINED_FUNCTION_9_10();
        swift_allocError();
        *v35 = v16;
        OUTLINED_FUNCTION_137_5(v35, 3);
        swift_willThrow();

        OUTLINED_FUNCTION_58_16(v51);
        OUTLINED_FUNCTION_75();
        sub_1C754F1AC();
        (*(v32 + 8))(v33, v44);
        (*(v34 + 8))(v48, v47);
      }

      else
      {
        v26 = v1[39];
        v53 = v1[38];
        v27 = v1[35];
        v46 = v1[42];
        v50 = v1[36];

        sub_1C7195E04();
        OUTLINED_FUNCTION_9_10();
        v28 = swift_allocError();
        *v29 = v14;
        OUTLINED_FUNCTION_71_9(v28, v29);
        swift_willThrow();

        OUTLINED_FUNCTION_58_16(v27);
        OUTLINED_FUNCTION_75();
        sub_1C754F1AC();
        v30 = OUTLINED_FUNCTION_323_0();
        v31(v30, v46);
        (*(v26 + 8))(v50, v53);
      }
    }

    else
    {
      v20 = v1[39];
      v21 = v1[35];
      v49 = v1[36];
      v52 = v1[38];
      sub_1C7195E04();
      OUTLINED_FUNCTION_9_10();
      v22 = swift_allocError();
      *v23 = v10;
      OUTLINED_FUNCTION_340_0(v22, v23);
      OUTLINED_FUNCTION_58_16(v21);

      OUTLINED_FUNCTION_131_3();
      sub_1C754F1AC();
      v24 = OUTLINED_FUNCTION_55();
      v25(v24);
      (*(v20 + 8))(v49, v52);
    }
  }

  OUTLINED_FUNCTION_43();
LABEL_11:
  OUTLINED_FUNCTION_327_0();

  __asm { BRAA            X1, X16 }
}

uint64_t StoryOrchestrator.generateStorytellingAssets(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[45] = v2;
  v1[46] = v0;
  v1[43] = v3;
  v1[44] = v4;
  v1[42] = v5;
  v6 = sub_1C754F38C();
  v1[47] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[48] = v7;
  v1[49] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C71E2394()
{
  v151 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_1C754F1CC();
  OUTLINED_FUNCTION_58_16(v1);
  sub_1C754F15C();
  OUTLINED_FUNCTION_111_5();
  v6 = *(v2 + v5);
  if (v6)
  {
    LOBYTE(v147) = 9;
    StoryGenerationDiagnosticContext.generationStage.setter(&v147);
  }

  sub_1C754F2CC();
  v7 = v0[42];

  sub_1C71D1908(sub_1C71F2A74, v7);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v8 = *(v7 + 120);
  if (v8 >> 61 != 4)
  {
    v15 = v0[45];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v16 = swift_allocError();
    *v17 = v8;
    OUTLINED_FUNCTION_71_9(v16, v17);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 20));
    v18 = OUTLINED_FUNCTION_289_1();
LABEL_9:
    OUTLINED_FUNCTION_58_16(v18);
    OUTLINED_FUNCTION_100_7();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_98_1();
    v22(v21);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v23 + 8))(v15);
LABEL_10:

    OUTLINED_FUNCTION_43();
    goto LABEL_11;
  }

  v9 = v0[42];
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v10 = *(v9 + 128);
  if (v10 >> 62 != 1 || (v11 = v10 & 0x3FFFFFFFFFFFFFFFLL, v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x30), v12 >> 62))
  {

    v19 = v0[44];
    v15 = v0[45];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v20 = v10;
    OUTLINED_FUNCTION_137_5(v20, 2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 20));
    v18 = v19;
    goto LABEL_9;
  }

  v128 = v6;
  v129 = v10;
  v14 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v143 = *(v11 + 40);
  v144 = *(v11 + 32);
  memcpy(v0 + 2, (v12 + 16), 0x48uLL);
  v120 = v0[2];
  v121 = v0[3];
  v122 = v0[4];
  v125 = v0[5];
  v130 = v0[6];
  v133 = v0[7];
  v135 = v0[8];
  v137 = v0[9];
  v146[0] = *(v7 + 120);

  v141 = v14;
  sub_1C75504FC();
  v142 = v13;
  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C6FD7F70();

  sub_1C71910A4(&v147);
  if (v147 >> 61 != 1)
  {
    v31 = v0[48];
    v30 = v0[49];
    v139 = v0[47];
    v32 = v0[45];

    v33 = *(v7 + 120);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v34 = swift_allocError();
    *v35 = v33;
    OUTLINED_FUNCTION_71_9(v34, v35);
    swift_willThrow();

    OUTLINED_FUNCTION_233_1();

    sub_1C6FB5FC8((v0 + 2), &qword_1EC219000);
    __swift_destroy_boxed_opaque_existential_1((v0 + 20));
    v36 = OUTLINED_FUNCTION_289_1();
    OUTLINED_FUNCTION_58_16(v36);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    (*(v31 + 8))(v30, v139);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v37 + 8))(v32);
    goto LABEL_10;
  }

  v26 = v0[46];
  v27 = v0[42];
  v118 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1C75504FC();

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v28 = *(v27 + 160);
  v29 = *(v26 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetManager);
  v147 = v130;
  v148 = v133;
  v149 = v135;
  v150 = v137;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  StoryAsset.Manager.collection(from:matching:)(v146, &v147, v28);
  v134 = v27;

  v38 = v146[0];
  v136 = v146[1];
  v138 = v146[2];
  v140 = v146[3];
  v147 = v141;
  v148 = v13;
  v149 = v144;
  v150 = v143;
  StoryAsset.Manager.collection(from:matching:)(v146, &v147, v28);
  v131 = v28;
  v117 = v29;
  v147 = v38;
  v148 = v136;
  v149 = v138;
  v150 = v140;
  StoryAsset.Collection.union(with:)(&v147, v145);
  v116 = v38;
  v39 = v145[0];
  v40 = v145[1];
  v42 = v145[2];
  v41 = v145[3];
  sub_1C754F2DC();
  v43 = sub_1C705FC40(0, v131);
  v44 = sub_1C705FC40(2u, v131);
  v115 = v43;
  if (v43)
  {
    if (!v44)
    {
      v147 = v131;
      sub_1C6FD3488(&unk_1F46A8640);
    }

    v147 = v39;
    v148 = v40;
    v149 = v42;
    v150 = v41;
    OUTLINED_FUNCTION_268_1();
    v132 = OUTLINED_FUNCTION_339_0();

    v111 = *(v132 + 16);
    v112 = v111;
    v45 = v111;
    v114 = v111;
  }

  else
  {
    v113 = v44;
    v147 = v39;
    v148 = v40;
    v149 = v42;
    v150 = v41;
    OUTLINED_FUNCTION_268_1();
    v46 = OUTLINED_FUNCTION_339_0();
    v47 = v0[46];

    if (*(v47 + 320) == 1 && *(v0[46] + 321) != 1)
    {
      v48 = sub_1C71EE030(v46, v118);
    }

    else
    {
      sub_1C75504FC();
      v48 = v46;
    }

    sub_1C754F2DC();
    v62 = v0[45];
    v61 = v0[46];
    Current = CFAbsoluteTimeGetCurrent();
    __swift_project_boxed_opaque_existential_1(v0 + 20, v0[23]);
    v64 = swift_task_alloc();
    v64[2] = v62;
    v64[3] = v48;
    v64[4] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C754F1DC();

    v66 = v0[37];
    sub_1C75504FC();
    sub_1C75504FC();
    v67 = sub_1C754FEEC();
    v68 = sub_1C75511BC();
    v69 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v69, v70))
    {
      v72 = OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_332_0(v72, 3.8522e-34);
      *(v72 + 12) = 2048;
      *(v72 + 14) = *(v66 + 16);

      *(v72 + 22) = 2048;
      *(v72 + 24) = CFAbsoluteTimeGetCurrent() - Current;
      _os_log_impl(&dword_1C6F5C000, v67, v68, "Deduped %ld to %ld storytelling assets in %f seconds", v72, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    if (v113)
    {
      sub_1C75504FC();
      v132 = v66;
    }

    else
    {
      v73 = v0[46];
      v74 = *(v73 + 16);
      v75 = *(v73 + 32);
      v76 = *(v73 + 24);
      sub_1C75504FC();
      v77 = v74;

      v78 = objc_autoreleasePoolPush();
      sub_1C71C70B8(v77, v76, v75, v66, &v147);
      objc_autoreleasePoolPop(v78);

      v132 = v147;
    }

    v114 = *(v46 + 16);
    sub_1C75504FC();

    v112 = *(v48 + 16);

    v111 = *(v66 + 16);

    v45 = *(v132 + 16);
  }

  sub_1C754F2DC();
  v49 = v0[46];
  if (*(v49 + 320) == 1 && ((*(v49 + 321) | v115) & 1) != 0)
  {
    sub_1C71EE030(v132, v118);
    OUTLINED_FUNCTION_51();

    sub_1C75504FC();
    v132 = v49;
  }

  else
  {

    sub_1C75504FC();
  }

  sub_1C75504FC();
  v50 = sub_1C754FEEC();
  sub_1C75511BC();
  v51 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_41_0();
    *v53 = 134217984;
    v54 = *(v132 + 16);

    *(v53 + 4) = v54;

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    v60 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v60);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_1C754F2DC();
  OUTLINED_FUNCTION_30();
  v65 = swift_allocObject();
  *(v65 + 16) = v132;
  *(v65 + 24) = v129;
  v119 = v65 | 0x8000000000000000;
  v147 = v65 | 0x8000000000000000;

  sub_1C75504FC();
  sub_1C7193E1C();
  if (v128)
  {
    v79 = *(v134 + 160);
    v147 = v120;
    v148 = v121;
    v149 = v122;
    v150 = v125;

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    OUTLINED_FUNCTION_268_1();
    OUTLINED_FUNCTION_339_0();
    if (v122)
    {
      v80 = v0[48];
      v81 = v0[49];
      v123 = v0[47];
      v126 = v0[45];
      OUTLINED_FUNCTION_233_1();

      sub_1C6FB5FC8((v0 + 2), &qword_1EC219000);

      OUTLINED_FUNCTION_33_20();
      OUTLINED_FUNCTION_282();
      sub_1C754F1AC();
      (*(v80 + 8))(v81, v123);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v82 + 8))(v126);
      goto LABEL_10;
    }

    sub_1C75504FC();
    sub_1C7069A44();
    v127 = v86;
    v147 = v116;
    v148 = v136;
    v149 = v138;
    v150 = v140;
    v87 = OUTLINED_FUNCTION_268_1();
    v89 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(v87, v79, v88);
    sub_1C75504FC();
    v90 = OUTLINED_FUNCTION_55();
    sub_1C7238810(v90, v91);

    sub_1C7069A44();
    v124 = v92;
    v147 = v141;
    v148 = v142;
    v149 = v144;
    v150 = v143;
    OUTLINED_FUNCTION_268_1();
    v93 = OUTLINED_FUNCTION_339_0();

    sub_1C7238810(v89, v93);
    OUTLINED_FUNCTION_132_4();

    OUTLINED_FUNCTION_140_4();
    sub_1C7069A44();
    v95 = v94;
    v147 = 0;
    v148 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD00000000000001ELL, 0x80000001C75A4020);
    v0[38] = *(v132 + 16);
    v96 = OUTLINED_FUNCTION_346_0();
    MEMORY[0x1CCA5CD70](v96);

    v97 = OUTLINED_FUNCTION_213_1();
    MEMORY[0x1CCA5CD70](v97, 0xEC0000002820746ELL);
    v98 = *(v127 + 16);

    v0[39] = v98;
    v99 = OUTLINED_FUNCTION_346_0();
    MEMORY[0x1CCA5CD70](v99);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v100 = *(v124 + 16);

    v0[40] = v100;
    v101 = OUTLINED_FUNCTION_346_0();
    MEMORY[0x1CCA5CD70](v101);

    MEMORY[0x1CCA5CD70](47, 0xE100000000000000);
    v102 = *(v95 + 16);

    v0[41] = v102;
    v103 = OUTLINED_FUNCTION_346_0();
    MEMORY[0x1CCA5CD70](v103);

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000012);
    sub_1C7161CDC(v147, v148);

    v147 = v119;
    static AssetStateDiagnosticsGenerator.save(assetState:to:storyAssetManager:)(&v147, v128, v117);
    v104 = *(v132 + 16);
    *(*(*&v128[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics] + 32) + 16) = v104;
    sub_1C703FD7C();
    OUTLINED_FUNCTION_277_1();

    OUTLINED_FUNCTION_61_9();
    sub_1C7164AD8(v105, v106, v107, v108, v109);
    OUTLINED_FUNCTION_51();

    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    sub_1C717C130();

    if (sub_1C71656D8())
    {
      v110 = &v128[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock];
      os_unfair_lock_lock(&v128[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock]);
      sub_1C71EEDE4(&v110[2], v114, v112, v111, v45, v104);
      os_unfair_lock_unlock(v110);
    }
  }

  else
  {
  }

  sub_1C754F2EC();
  v84 = v0[48];
  v83 = v0[49];
  v85 = v0[47];
  OUTLINED_FUNCTION_233_1();

  sub_1C6FB5FC8((v0 + 2), &qword_1EC219000);

  OUTLINED_FUNCTION_33_20();
  OUTLINED_FUNCTION_112_1();
  sub_1C754F1AC();
  (*(v84 + 8))(v83, v85);

  OUTLINED_FUNCTION_25();
LABEL_11:

  return v24();
}

uint64_t StoryOrchestrator.generateSanitizedPrompt(in:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[44] = v2;
  v1[45] = v0;
  v1[42] = v3;
  v1[43] = v4;
  v5 = sub_1C754F2FC();
  v1[46] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[47] = v6;
  v1[48] = OUTLINED_FUNCTION_81_0();
  v1[49] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71E4424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  sub_1C754F2CC();
  v25 = v22[42];

  sub_1C71D1908(sub_1C71F2AB4, v25);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v26 = *(v25 + 112);
  v22[50] = v26;
  if (v26 >> 62 == 1)
  {
    v27 = v22[42];
    v28 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v22[51] = v28;

    v29 = v28;

    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v30 = *(v27 + 120);
    v22[52] = v30;
    if (v30 >> 61 == 3)
    {
      memcpy(v22 + 2, ((v30 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x60uLL);
      swift_retain_n();
      OUTLINED_FUNCTION_156_2();
      sub_1C6FD7F70();

      a9 = v30;
      sub_1C71910A4(&a10);
      if (a10 >> 61 == 1)
      {
        v22[53] = *((a10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1C75504FC();

        sub_1C754F2BC();
        OUTLINED_FUNCTION_234_1(v22 + 26);
        v50 = OUTLINED_FUNCTION_131_3();
        v51(v50);
        v52 = swift_task_alloc();
        v22[54] = v52;
        *v52 = v22;
        v52[1] = sub_1C71E47D0;
        OUTLINED_FUNCTION_17_1();

        return PromptSanitizer.sanitizePrompt(from:extendedTokens:queryTokens:eventRecorder:progressReporter:)(v53, v54, v55, v56, v57);
      }

      sub_1C7027A58((v22 + 2));
    }

    else
    {
    }

    v36 = v22[46];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v37 = swift_allocError();
    *v38 = v30;
    OUTLINED_FUNCTION_71_9(v37, v38);
    swift_willThrow();

    v39 = OUTLINED_FUNCTION_323_0();
    v40(v39, v36);
  }

  else
  {
    v31 = v22[47];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v32 = swift_allocError();
    *v33 = v26;
    OUTLINED_FUNCTION_340_0(v32, v33);
    v34 = *(v31 + 8);

    v35 = OUTLINED_FUNCTION_140_4();
    v34(v35);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C71E47D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[55] = v5;
  v3[56] = v6;
  v3[57] = v7;
  v3[58] = v8;
  v3[59] = v0;

  if (v0)
  {
    v9 = v3[42];

    v10 = sub_1C71E4B80;
  }

  else
  {
    v9 = v3[42];

    sub_1C7027A58((v3 + 2));
    v10 = sub_1C71E48FC;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C71E48FC()
{
  OUTLINED_FUNCTION_31();
  v25 = v0;
  sub_1C75504FC();
  sub_1C75504FC();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();

  if (OUTLINED_FUNCTION_200())
  {
    v3 = *(v0 + 440);
    v2 = *(v0 + 448);
    v4 = OUTLINED_FUNCTION_23_1();
    v24[0] = swift_slowAlloc();
    *v4 = 136643075;
    *(v4 + 4) = sub_1C6F765A4(v3, v2, v24);
    *(v4 + 12) = 2085;
    v5 = OUTLINED_FUNCTION_117_0();
    *(v4 + 14) = sub_1C6F765A4(v5, v6, v7);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v13 = *(v0 + 464);
  v14 = *(v0 + 472);
  v15 = *(v0 + 456);
  v23 = *(v0 + 440);
  v16 = *(v0 + 400);
  OUTLINED_FUNCTION_328();
  v17 = swift_allocObject();
  *(v17 + 16) = v23;
  *(v17 + 32) = v15;
  *(v17 + 40) = v13;
  *(v17 + 48) = v16;
  v24[0] = v17 | 0x8000000000000000;

  sub_1C719487C(v24);
  if (v14)
  {
    v18 = *(v0 + 408);

    v19 = OUTLINED_FUNCTION_90();
    v20(v19);

    OUTLINED_FUNCTION_43();
  }

  else
  {

    sub_1C754F2EC();

    OUTLINED_FUNCTION_25();
  }

  return v21();
}

uint64_t sub_1C71E4B80()
{
  OUTLINED_FUNCTION_123();

  sub_1C7027A58(v0 + 16);
  v1 = OUTLINED_FUNCTION_90();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t StoryOrchestrator.generateTraits(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[107] = v0;
  v1[106] = v2;
  v1[105] = v3;
  v1[104] = v4;
  v1[103] = v5;
  v1[108] = *v0;
  v6 = sub_1C754F2FC();
  v1[109] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[110] = v7;
  v1[111] = OUTLINED_FUNCTION_281_1();
  v1[112] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[113] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[114] = v9;
  v1[115] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C71E4D6C()
{
  v1 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v3 = *(v0 + 824);
  *(v0 + 928) = *(*(v0 + 856) + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_delegateChannel);

  sub_1C71D1908(sub_1C71F2AD4, v3);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v0 + 936) = v4;
  if (v4 >> 62 != 2)
  {

LABEL_12:
    v26 = *(v0 + 880);
    v53 = *(v0 + 872);
    v27 = *(v0 + 848);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v28 = swift_allocError();
    *v29 = v4;
    OUTLINED_FUNCTION_340_0(v28, v29);
    v30 = OUTLINED_FUNCTION_289_1();
    OUTLINED_FUNCTION_58_16(v30);
    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    v31 = OUTLINED_FUNCTION_55();
    v32(v31);
    (*(v26 + 8))(v27, v53);
    goto LABEL_18;
  }

  v5 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  *(v0 + 944) = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v6 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  *(v0 + 952) = v6;
  v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1C75504FC();

  if (v6 >> 62 != 1)
  {

    goto LABEL_12;
  }

  v8 = *(v0 + 824);
  v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  *(v0 + 960) = v9;
  v10 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  LODWORD(v52) = *(v7 + 41);
  sub_1C75504FC();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v11 = *(v8 + 120);
  *(v0 + 968) = v11;
  if (v11 >> 61 != 3)
  {

LABEL_17:
    v33 = *(v0 + 920);
    v34 = *(v0 + 912);
    v35 = *(v0 + 880);
    OUTLINED_FUNCTION_305_0();
    v36 = *(v0 + 840);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v37 = swift_allocError();
    *v38 = v11;
    OUTLINED_FUNCTION_71_9(v37, v38);
    swift_willThrow();

    OUTLINED_FUNCTION_58_16(v36);
    OUTLINED_FUNCTION_100_7();
    sub_1C754F1AC();
    (*(v34 + 8))(v33, v50);
    (*(v35 + 8))(v51, v52);
    goto LABEL_18;
  }

  LODWORD(v50) = v10;
  v51 = v5;
  memcpy((v0 + 16), ((v11 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x60uLL);
  v12 = *(v0 + 104);
  *(v0 + 976) = v12;

  OUTLINED_FUNCTION_156_2();
  sub_1C6FD7F70();

  if (v12 >> 61 != 2)
  {

LABEL_16:

    sub_1C7027A58(v0 + 16);
    goto LABEL_17;
  }

  memcpy((v0 + 208), ((v12 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);
  v13 = *(v0 + 288);
  *(v0 + 984) = v13;
  sub_1C6FD7F70();
  sub_1C7027A58(v0 + 208);
  if (v13 >> 61 != 1)
  {

    goto LABEL_16;
  }

  v14 = *(v0 + 824);
  *(v0 + 992) = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1C75504FC();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v15 = *(v14 + 128);
  *(v0 + 1000) = v15;
  if (!(v15 >> 62))
  {
    v16 = *(v0 + 880);
    v44 = *(v0 + 872);
    v46 = *(v0 + 888);
    v41 = *(v0 + 896);
    v48 = *(v0 + 832);
    v42 = *(v0 + 824);
    memcpy((v0 + 464), (v15 + 16), 0x48uLL);
    v17 = *(v0 + 464);
    v18 = *(v0 + 472);
    *(v0 + 1008) = v17;
    *(v0 + 1016) = v18;
    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    *(v0 + 1024) = v20;
    *(v0 + 1032) = v19;

    sub_1C6FD7F70();
    sub_1C754F2BC();
    OUTLINED_FUNCTION_234_1((v0 + 384));
    *(v0 + 640) = v17;
    *(v0 + 648) = v18;
    *(v0 + 656) = v20;
    *(v0 + 664) = v19;
    *(v0 + 792) = v9;
    *(v0 + 800) = v50;
    *(v0 + 801) = v52;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    *(v0 + 1040) = *(v42 + 160);
    (*(v16 + 32))(v46, v41, v44);
    OUTLINED_FUNCTION_111_5();
    *(v0 + 1048) = *(v48 + v21);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1056) = v22;
    *v22 = v23;
    v22[1] = sub_1C71E54D8;
    OUTLINED_FUNCTION_329();

    return sub_1C7117E3C();
  }

  v45 = *(v0 + 920);
  v47 = *(v0 + 912);
  v49 = *(v0 + 904);
  OUTLINED_FUNCTION_305_0();
  v43 = *(v0 + 840);

  sub_1C7027A58(v0 + 16);

  sub_1C7195E04();
  OUTLINED_FUNCTION_9_10();
  swift_allocError();
  *v40 = v15;
  OUTLINED_FUNCTION_137_5(v40, 2);
  swift_willThrow();

  OUTLINED_FUNCTION_58_16(v43);
  OUTLINED_FUNCTION_131_3();
  sub_1C754F1AC();
  (*(v47 + 8))(v45, v49);
  (*(v50 + 8))(v51, v52);
LABEL_18:

  OUTLINED_FUNCTION_43();

  return v39();
}

uint64_t sub_1C71E54D8()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[133] = v5;
  v3[134] = v0;

  if (v0)
  {

    v6 = OUTLINED_FUNCTION_16_0();
  }

  else
  {
    v8 = v3[103];

    sub_1C7027A58((v3 + 2));
    v6 = sub_1C71E5650;
    v7 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1C71E5650()
{
  v70 = v0;
  v1 = *(v0 + 1072);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 608);
  v4 = *(v0 + 616);
  v5 = *(v0 + 624);
  v6 = *(v0 + 632);
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *&v68 = v7;
  sub_1C75504FC();
  sub_1C7194268(&v68);
  v60 = v4;
  if (v1)
  {
    OUTLINED_FUNCTION_272_0();
    v8 = *(v0 + 912);
    v51 = *(v0 + 920);
    v53 = *(v0 + 904);
    v9 = *(v0 + 880);
    v55 = *(v0 + 848);
    v56 = *(v0 + 872);
    v10 = *(v0 + 840);

    sub_1C6FB5FC8(v0 + 464, &qword_1EC219000);
    OUTLINED_FUNCTION_58_16(v10);
    OUTLINED_FUNCTION_75();
    sub_1C754F1AC();
    (*(v8 + 8))(v51, v53);
    (*(v9 + 8))(v55, v56);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v58 = *(v0 + 1008);
    v57 = *(v0 + 1024);

    v64 = v3;
    v65 = v4;
    v66 = v5;
    v67 = v6;
    v68 = v58;
    v69 = v57;
    StoryAsset.Collection.subtracting(_:)(&v68, &v61);
    v48 = v3;
    v54 = v61;
    v11 = *(*(v0 + 856) + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetManager);
    v12 = v63;
    *&v57 = v62;
    *&v68 = v3;
    *(&v68 + 1) = v4;
    *&v69 = v5;
    *(&v69 + 1) = v6;
    sub_1C75504FC();
    v52 = OUTLINED_FUNCTION_335_0();

    v68 = v54;
    *&v69 = v57;
    *(&v69 + 1) = v12;
    sub_1C75504FC();
    v15 = OUTLINED_FUNCTION_335_0();

    v59 = *(v15 + 16);
    sub_1C75504FC();
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_23_1();
      *v19 = 134218240;
      *(v19 + 4) = *(v52 + 16);

      *(v19 + 12) = 2048;
      *(v19 + 14) = *(v15 + 16);

      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v25 = *(v0 + 1048);
    v50 = v11;
    if (v25)
    {
      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;

      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      *&v68 = 0xD000000000000021;
      *(&v68 + 1) = v26;
      *(v0 + 808) = *(v15 + 16);
      OUTLINED_FUNCTION_457();
      v27 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v27);

      OUTLINED_FUNCTION_348_0();
      sub_1C7161CDC(v68, *(&v68 + 1));

      *&v68 = 0;
      *(&v68 + 1) = 0xE000000000000000;
      sub_1C755180C();

      OUTLINED_FUNCTION_3_1();
      *&v68 = 0xD00000000000001ALL;
      *(&v68 + 1) = v28;
      *(v0 + 816) = *(v52 + 16);
      OUTLINED_FUNCTION_457();
      v29 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v29);

      OUTLINED_FUNCTION_348_0();
      sub_1C7161CDC(v68, *(&v68 + 1));

      sub_1C71CD85C(v15);
      OUTLINED_FUNCTION_61_9();
      sub_1C7164AD8(v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_24_2();

      sub_1C75504FC();
      if (sub_1C71656D8())
      {
        v35 = &v25[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock];
        os_unfair_lock_lock(&v25[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock]);
        sub_1C71EDC24(&v35[2], v52, v59);
        os_unfair_lock_unlock(v35);
      }
    }

    v36 = *(v0 + 1000);

    OUTLINED_FUNCTION_328();
    v37 = swift_allocObject();
    *(v37 + 16) = v48;
    *(v37 + 24) = v60;
    *(v37 + 32) = v5;
    *(v37 + 40) = v6;
    *(v37 + 48) = v36;
    *&v68 = v37 | 0x4000000000000000;

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C7193E1C();
    if (v25)
    {
      v38 = *(v0 + 1048);
      *&v68 = v37 | 0x4000000000000000;

      static AssetStateDiagnosticsGenerator.save(assetState:to:storyAssetManager:)(&v68, v38, v50);
      v39 = *(v0 + 824);
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();

      sub_1C717C130();

      *&v68 = v48;
      *(&v68 + 1) = v60;
      *&v69 = v5;
      *(&v69 + 1) = v6;
      v40 = *(v39 + 160);
      sub_1C75504FC();
      sub_1C7167ED4(&v68, 0x6465646E65747845, 0xE800000000000000, v40, v50);
    }

    sub_1C754F2EC();
    v49 = *(v0 + 1064);
    v45 = *(v0 + 920);
    v46 = *(v0 + 912);
    v47 = *(v0 + 904);
    v41 = *(v0 + 864);
    v44 = *(v0 + 840);
    v42 = *(v0 + 824);
    OUTLINED_FUNCTION_99_0();
    v43 = swift_allocObject();
    v43[2] = v49;
    v43[3] = v52;
    v43[4] = v42;
    v43[5] = v41;

    sub_1C71D1908(sub_1C71F2AF4, v43);

    sub_1C6FB5FC8(v0 + 464, &qword_1EC219000);

    OUTLINED_FUNCTION_10_3(v44);
    OUTLINED_FUNCTION_0_11();
    sub_1C754F1AC();
    (*(v46 + 8))(v45, v47);

    OUTLINED_FUNCTION_25();
  }

  return v13();
}

uint64_t sub_1C71E6668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v36 = v20[128];
  v37 = v20[129];
  v34 = v20[126];
  v35 = v20[127];
  v33 = v20[125];
  v21 = v20[114];
  v38 = v20[115];
  v39 = v20[113];
  v22 = v20[110];
  v40 = v20[106];
  v41 = v20[109];
  v23 = v20[105];
  sub_1C6FB5FC8((v20 + 58), &qword_1EC219000);

  sub_1C7027A58((v20 + 2));
  OUTLINED_FUNCTION_10_3(v23);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v21 + 8))(v38, v39);
  (*(v22 + 8))(v40, v41);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41, a18, a19, a20);
}

uint64_t StoryOrchestrator.generateFinalTokens(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[122] = v0;
  v1[121] = v2;
  v1[120] = v3;
  v1[119] = v4;
  v1[118] = v5;
  v1[123] = *v0;
  v6 = sub_1C754F2FC();
  v1[124] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[125] = v7;
  v1[126] = OUTLINED_FUNCTION_281_1();
  v1[127] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C71E68EC()
{
  OUTLINED_FUNCTION_115_0();
  sub_1C754F2CC();
  v1 = v0[118];
  v0[128] = *(v0[122] + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_delegateChannel);

  v2 = OUTLINED_FUNCTION_16_0();
  sub_1C71D1908(v2, v3);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v4 = *(v1 + 120);
  v0[129] = v4;
  if (v4 >> 61 != 2)
  {
    v15 = v0[125];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v16 = swift_allocError();
    *v17 = v4;
    OUTLINED_FUNCTION_71_9(v16, v17);
    swift_willThrow();
    v18 = *(v15 + 8);

    v19 = OUTLINED_FUNCTION_140_4();
    v18(v19);
    goto LABEL_8;
  }

  v5 = v0[118];
  memcpy(v0 + 2, ((v4 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);

  sub_1C6FD7F70();

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v6 = *(v5 + 128);
  v0[130] = v6;
  if (v6 >> 62)
  {

    sub_1C7027A58((v0 + 2));
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v20 = v6;
    OUTLINED_FUNCTION_137_5(v20, 2);
    swift_willThrow();

    v21 = OUTLINED_FUNCTION_117_0();
    v22(v21);
LABEL_8:

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[119];
  memcpy(v0 + 94, (v6 + 16), 0x48uLL);
  v0[131] = v0[102];

  sub_1C6FD7F70();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_234_1(v0 + 44);
  v8 = OUTLINED_FUNCTION_117_0();
  v9(v8);
  OUTLINED_FUNCTION_111_5();
  v0[132] = *(v7 + v10);
  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[133] = v11;
  *v11 = v12;
  v11[1] = sub_1C71E6C5C;
  OUTLINED_FUNCTION_44();

  return FinalTokenGenerator.generate(from:previousAssetScopingTokens:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)();
}

uint64_t sub_1C71E6C5C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1072) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C7027A58(v2 + 16);
  }

  OUTLINED_FUNCTION_181_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71E6D8C()
{
  v25 = v1;
  v2 = v1[132];
  memcpy(v1 + 24, v1 + 34, 0x50uLL);
  if (v2)
  {

    v3 = sub_1C71656D8();
    v0 = v1[131];
    if (v3)
    {
      memcpy(__dst, v1 + 24, sizeof(__dst));
      sub_1C7027A20((v1 + 24), (v1 + 74));
      sub_1C7027A20((v1 + 24), (v1 + 84));
      sub_1C701260C();
      v5 = v4;

      sub_1C7027A58((v1 + 24));
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = MEMORY[0x1E69E7CD0];
      }

      v0 = sub_1C71CD85C(v6);
      OUTLINED_FUNCTION_61_9();
      v12 = sub_1C7164AD8(v7, v8, v9, v10, v11);
    }

    else
    {
    }

    sub_1C7027A20((v1 + 24), (v1 + 64));
    sub_1C7161A34();
  }

  else
  {
  }

  v13 = v1[134];
  v14 = v1[129];
  OUTLINED_FUNCTION_227_1();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_155_0(v15);
  memcpy(v16, v1 + 24, 0x50uLL);
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = v14;
  __dst[0] = v0 | 0x6000000000000000;

  sub_1C7027A20((v1 + 24), (v1 + 54));
  sub_1C71937C4();

  if (v13)
  {

    sub_1C7027A58((v1 + 24));
    sub_1C6FB5FC8((v1 + 94), &qword_1EC219000);
    v17 = OUTLINED_FUNCTION_41_3();
    v18(v17);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    sub_1C754F2EC();
    v21 = v1[123];
    v22 = v1[118];
    OUTLINED_FUNCTION_227_1();
    v23 = swift_allocObject();
    memcpy(v23 + 2, v1 + 24, 0x50uLL);
    v23[12] = v22;
    v23[13] = v21;

    sub_1C71D1908(sub_1C71F2B20, v23);

    sub_1C6FB5FC8((v1 + 94), &qword_1EC219000);

    OUTLINED_FUNCTION_25();
  }

  return v19();
}

uint64_t sub_1C71E70D4()
{
  OUTLINED_FUNCTION_49_0();

  sub_1C6FB5FC8(v0 + 752, &qword_1EC219000);
  sub_1C7027A58(v0 + 16);
  v1 = OUTLINED_FUNCTION_90();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t StoryOrchestrator.generateStoryPromptAttributes(in:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = sub_1C754F38C();
  v1[21] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[22] = v6;
  v1[23] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71E7244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_31();
  a20 = v23;
  v26 = v23[18];
  OUTLINED_FUNCTION_119_8();
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_204_2();
  sub_1C754F2CC();
  if (v22)
  {
    v27 = v23[19];
    OUTLINED_FUNCTION_80_0(v23[18], *(v26 + 24));
    sub_1C754F1AC();
    v28 = OUTLINED_FUNCTION_112_1();
    v29(v28);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v30 + 8))(v27);
  }

  else
  {
    v31 = v23[17];
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v32 = *(v31 + 120);
    if (v32 >> 61 == 1)
    {

      v33 = sub_1C75504FC();
      StoryPromptAttributes.init(queryTokens:)(v33, (v23 + 2));
      v34 = swift_allocObject();
      OUTLINED_FUNCTION_290_1(v34);
      a10 = v35;
      sub_1C71F2B2C((v23 + 2), (v23 + 8));
      sub_1C7194DF4(&a10);

      sub_1C754F2EC();
      v53 = v23[17];
      v52 = v23[18];
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_290_1(v54);
      *(v55 + 64) = v53;

      sub_1C71D1908(sub_1C71F2BDC, v54);

      OUTLINED_FUNCTION_49_14(v52);
      sub_1C754F1AC();
      v56 = OUTLINED_FUNCTION_207_1();
      v57(v56);

      OUTLINED_FUNCTION_25();
      goto LABEL_7;
    }

    v36 = v23[18];
    v37 = v23[19];
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v38 = swift_allocError();
    *v39 = v32;
    OUTLINED_FUNCTION_71_9(v38, v39);
    swift_willThrow();
    OUTLINED_FUNCTION_58_16(v36);

    OUTLINED_FUNCTION_75();
    sub_1C754F1AC();
    v40 = OUTLINED_FUNCTION_98_1();
    v41(v40);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v42 + 8))(v37);
  }

  OUTLINED_FUNCTION_43();
LABEL_7:
  OUTLINED_FUNCTION_17_1();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t StoryOrchestrator.generateExtendedTokens(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[61] = v2;
  v1[62] = v0;
  v1[59] = v3;
  v1[60] = v4;
  v1[58] = v5;
  v6 = sub_1C754F2FC();
  v1[63] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[64] = v7;
  v1[65] = OUTLINED_FUNCTION_81_0();
  v1[66] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[67] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[68] = v9;
  v1[69] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C71E76C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_95_3();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_111_0();
  a24 = v27;
  v30 = *(v27 + 480);
  OUTLINED_FUNCTION_119_8();
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_204_2();
  sub_1C754F2CC();
  if (v26)
  {
    v83 = v26;
    OUTLINED_FUNCTION_87_1(*(v27 + 480), *(v30 + 24));
    OUTLINED_FUNCTION_299_1();
    sub_1C754F1AC();
    v31 = OUTLINED_FUNCTION_6_35();
    v32(v31);
    v33 = OUTLINED_FUNCTION_229_0();
    v34(v33);
LABEL_12:

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, v83, a14, a15, a16, a17, a18);
  }

  v35 = *(v27 + 464);

  v36 = OUTLINED_FUNCTION_16_0();
  sub_1C71D1908(v36, v37);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v38 = *(v35 + 120);
  *(v27 + 560) = v38;
  if (v38 >> 61 != 1)
  {
    v63 = *(v27 + 512);
    v64 = *(v27 + 480);
    a12 = *(v27 + 488);
    v83 = *(v27 + 504);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v65 = swift_allocError();
    *v66 = v38;
    OUTLINED_FUNCTION_71_9(v65, v66);
    swift_willThrow();
    OUTLINED_FUNCTION_58_16(v64);

    OUTLINED_FUNCTION_131_3();
    sub_1C754F1AC();
    v67 = OUTLINED_FUNCTION_55();
    v68(v67);
    (*(v63 + 8))(a12, v83);
    goto LABEL_12;
  }

  v39 = *(v27 + 464);
  *(v27 + 568) = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  sub_1C75504FC();
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v40 = *(v39 + 128);
  *(v27 + 576) = v40;
  if (v40 >> 62)
  {
    v69 = *(v27 + 552);
    v70 = *(v27 + 544);
    v71 = *(v27 + 512);
    v83 = *(v27 + 504);
    v72 = *(v27 + 480);
    a11 = *(v27 + 536);
    a12 = *(v27 + 488);

    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v73 = v40;
    OUTLINED_FUNCTION_137_5(v73, 2);
    swift_willThrow();

    OUTLINED_FUNCTION_58_16(v72);
    OUTLINED_FUNCTION_75();
    sub_1C754F1AC();
    (*(v70 + 8))(v69, a11);
    (*(v71 + 8))(a12, v83);
    goto LABEL_12;
  }

  v41 = *(v27 + 472);
  memcpy((v27 + 176), (v40 + 16), 0x48uLL);
  v42 = *(v27 + 208);
  v43 = *(v27 + 232);
  v82 = *(v27 + 216);
  v84 = *(v27 + 224);

  sub_1C6FD7F70();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_111_5();
  v45 = *(v41 + v44);
  *(v27 + 584) = v45;
  if (v45)
  {
    HIBYTE(a14) = 5;
    StoryGenerationDiagnosticContext.generationStage.setter(&a14 + 7);
  }

  v46 = *(v27 + 528);
  v47 = *(v27 + 520);
  v48 = *(v27 + 504);
  v49 = *(v27 + 512);
  v50 = *(v27 + 464);
  *(v27 + 360) = v42;
  *(v27 + 368) = v82;
  *(v27 + 376) = v84;
  *(v27 + 384) = v43;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  *(v27 + 592) = *(v50 + 160);
  (*(v49 + 32))(v47, v46, v48);
  *(v27 + 616) = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v27 + 600) = v51;
  *v51 = v52;
  v51[1] = sub_1C71E7B38;
  OUTLINED_FUNCTION_94_1();

  return sub_1C7319574(v53, v54, v55, v56, v57, v58, v59, v60);
}

uint64_t sub_1C71E7B38()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 608) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_224_1();
  }

  else
  {
    v9 = *(v3 + 464);

    v7 = sub_1C71E7CC4;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C71E7CC4()
{
  v28 = v0;
  v1 = v0[73];
  OUTLINED_FUNCTION_234_1(v0 + 12);
  v2 = v0[76];
  if (!v1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_234_1(&v25);

  v27 = ExtendedTokenCollection.allTokens.getter(v3);
  sub_1C75504FC();
  sub_1C71F0430(&v27, sub_1C7422DEC, sub_1C71F09F4);
  if (!v2)
  {

    v6 = *(v27 + 16);
    if (v6)
    {
      v7 = v27 + 32;
      do
      {
        sub_1C6FB5E28(v7, (v0 + 40));
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_1C755180C();

        v25 = 0xD000000000000014;
        v26 = 0x80000001C75A40F0;
        v8 = v0[43];
        v9 = v0[44];
        __swift_project_boxed_opaque_existential_1(v0 + 40, v8);
        sub_1C6FFBCDC(v8, v9);
        OUTLINED_FUNCTION_43_0();
        __swift_destroy_boxed_opaque_existential_1((v0 + 40));
        v10 = OUTLINED_FUNCTION_55();
        MEMORY[0x1CCA5CD70](v10);

        sub_1C7161CDC(v25, v26);

        v7 += 40;
        --v6;
      }

      while (v6);
    }

    v2 = 0;
LABEL_10:
    v11 = v0[70];
    OUTLINED_FUNCTION_153_1();
    v12 = swift_allocObject();
    v13 = OUTLINED_FUNCTION_155_0(v12);
    memcpy(v13, v0 + 12, 0x50uLL);
    *(v1 + 96) = v11;
    v25 = v1 | 0x4000000000000000;

    sub_1C71937C4();
    if (v2)
    {
      v14 = v0[64];
      v15 = v0[60];
      v23 = v0[61];
      v24 = v0[63];

      sub_1C6FB5FC8((v0 + 22), &qword_1EC219000);
      OUTLINED_FUNCTION_91_8(v15);
      OUTLINED_FUNCTION_223_0();
      v16 = OUTLINED_FUNCTION_457();
      v17(v16);
      (*(v14 + 8))(v23, v24);

      OUTLINED_FUNCTION_43();
    }

    else
    {

      sub_1C754F2EC();
      OUTLINED_FUNCTION_314_1();
      v20 = v0[60];

      sub_1C6FB5FC8((v0 + 22), &qword_1EC219000);
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      OUTLINED_FUNCTION_24_2();
      OUTLINED_FUNCTION_307_0();
      sub_1C754F1AC();
      v21 = OUTLINED_FUNCTION_457();
      v22(v21);

      OUTLINED_FUNCTION_25();
    }

    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_130_0();
}

void sub_1C71E808C()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_314_1();
  v1 = *(v0 + 480);

  sub_1C6FB5FC8(v0 + 176, &qword_1EC219000);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_307_0();
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_117_0();
  v5(v4);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

uint64_t StoryOrchestrator.generateQuery(in:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[184] = v0;
  v1[183] = v2;
  v1[182] = v3;
  v1[181] = v4;
  v1[180] = v5;
  v1[185] = *v0;
  v6 = type metadata accessor for StoryState.PromptOrigin(0);
  OUTLINED_FUNCTION_76(v6);
  v1[186] = OUTLINED_FUNCTION_77();
  Generator = type metadata accessor for QueryGenerator();
  OUTLINED_FUNCTION_18(Generator);
  v1[187] = v8;
  v1[188] = *(v9 + 64);
  v1[189] = OUTLINED_FUNCTION_281_1();
  v1[190] = swift_task_alloc();
  v10 = type metadata accessor for StoryGenerationSession(0);
  v1[191] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[192] = v11;
  v1[193] = *(v12 + 64);
  v1[194] = OUTLINED_FUNCTION_77();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v13);
  v1[195] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F2FC();
  v1[196] = v14;
  OUTLINED_FUNCTION_18(v14);
  v1[197] = v15;
  v1[198] = OUTLINED_FUNCTION_281_1();
  v1[199] = swift_task_alloc();
  v16 = sub_1C754F38C();
  v1[200] = v16;
  OUTLINED_FUNCTION_18(v16);
  v1[201] = v17;
  v1[202] = OUTLINED_FUNCTION_77();
  v18 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C71E83C0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 1456);
  v2 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1440);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1456), *(v1 + 24));
  OUTLINED_FUNCTION_113_7(0x72657551u);
  sub_1C754F15C();
  *(v0 + 1624) = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_delegateChannel);

  sub_1C71D1908(sub_1C71F2C08, v5);

  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v6 = *(v5 + 112);
  *(v0 + 1632) = v6;
  if (v6 >> 62)
  {
    v17 = *(v0 + 1576);
    v58 = *(v0 + 1464);
    v61 = *(v0 + 1568);
    v18 = *(v0 + 1456);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v19 = swift_allocError();
    *v20 = v6;
    OUTLINED_FUNCTION_340_0(v19, v20);

    __swift_destroy_boxed_opaque_existential_1(v0 + 1192);
    OUTLINED_FUNCTION_58_16(v18);
    OUTLINED_FUNCTION_100_7();
    sub_1C754F1AC();
    v21 = OUTLINED_FUNCTION_98_1();
    v22(v21);
    (*(v17 + 8))(v58, v61);
  }

  else
  {
    v7 = *(v0 + 1440);
    v8 = *(v6 + 16);
    *(v0 + 1640) = v8;
    v9 = *(v6 + 24);
    *(v0 + 1648) = v9;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v10 = *(v7 + 120);
    *(v0 + 1656) = v10;
    if (!(v10 >> 61))
    {
      v11 = *(v0 + 1528);
      v12 = *(v0 + 1448);
      *(v0 + 1664) = *(v10 + 16);
      v13 = *(v12 + *(v11 + 24));
      *(v0 + 1672) = v13;
      sub_1C75504FC();
      if (v13)
      {
        v14 = v8;

        v15 = v14;
        OUTLINED_FUNCTION_277_1();

        v16 = v9;

        OUTLINED_FUNCTION_457();
        sub_1C7161AC0();
      }

      else
      {
        v32 = v8;

        v33 = v9;
      }

      v34 = *(v0 + 1568);
      v56 = *(v0 + 1536);
      v63 = *(v0 + 1472);
      v57 = *(v0 + 1544);
      v60 = *(v0 + 1440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
      *(v0 + 1680) = swift_allocBox();
      sub_1C754F2BC();
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v34);
      sub_1C754F2BC();
      OUTLINED_FUNCTION_34_12((v0 + 1192));
      OUTLINED_FUNCTION_457();
      sub_1C754F15C();
      v38 = swift_allocBox();
      *(v0 + 1688) = v38;
      OUTLINED_FUNCTION_457();
      sub_1C754F29C();
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v34);
      *(v0 + 1696) = sub_1C7550D5C();
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      OUTLINED_FUNCTION_182_1();
      sub_1C71F29A0();
      sub_1C6FB5E28(v0 + 952, v0 + 992);
      v46 = sub_1C71F28F0(qword_1EDD0C850, type metadata accessor for StoryState);
      *(v0 + 1704) = v46;
      v47 = *(v56 + 80);
      *(v0 + 948) = v47;
      v48 = ((v57 + ((v47 + 64) & ~v47) + 7) & 0xFFFFFFFFFFFFFFF8);
      v49 = swift_allocObject();
      v49[2] = v60;
      v49[3] = v46;
      v49[4] = v63;
      v49[5] = v38;
      v49[6] = v60;
      v49[7] = v8;
      OUTLINED_FUNCTION_180_1();
      sub_1C71F2C28();
      sub_1C6F699F8((v0 + 992), v48 + v49);
      swift_retain_n();
      v50 = v8;
      OUTLINED_FUNCTION_277_1();

      OUTLINED_FUNCTION_149();
      sub_1C7293D70();

      v51 = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController;
      *(v0 + 1712) = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_safetyController;
      v52 = *(v63 + v51 + 32);
      OUTLINED_FUNCTION_10_3((v63 + v51));
      v53 = [v48 string];
      sub_1C755068C();
      OUTLINED_FUNCTION_43_0();

      *(v0 + 1720) = v8;
      *(v0 + 945) = 1;
      v64 = (*(v52 + 16) + **(v52 + 16));
      v54 = swift_task_alloc();
      *(v0 + 1728) = v54;
      *v54 = v0;
      v54[1] = sub_1C71E8B30;
      v55 = OUTLINED_FUNCTION_55();

      return v64(v55);
    }

    v23 = *(v0 + 1600);
    v24 = *(v0 + 1576);
    v59 = *(v0 + 1464);
    v62 = *(v0 + 1568);
    sub_1C7195E04();
    OUTLINED_FUNCTION_9_10();
    v25 = swift_allocError();
    *v26 = v10;
    OUTLINED_FUNCTION_71_9(v25, v26);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v0 + 1192);
    v27 = OUTLINED_FUNCTION_289_1();
    OUTLINED_FUNCTION_58_16(v27);
    OUTLINED_FUNCTION_100_7();
    sub_1C754F1AC();
    v28 = OUTLINED_FUNCTION_322_0();
    v29(v28, v23);
    (*(v24 + 8))(v59, v62);
  }

  OUTLINED_FUNCTION_331_0();

  OUTLINED_FUNCTION_43();

  return v30();
}

uint64_t sub_1C71E8B30()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1736) = v0;

  OUTLINED_FUNCTION_181_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71E8C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OUTLINED_FUNCTION_325_0();
  a39 = v41;
  a40 = v42;
  a38 = v40;
  v43 = *(v40 + 1712);
  v44 = *(v40 + 1520);
  v45 = *(v40 + 1472);
  v46 = *(v45 + 16);
  *(v40 + 1744) = v46;
  v47 = *(v45 + 24);
  v48 = *(v45 + 32);
  *(v40 + 1752) = v48;
  sub_1C6FB5E28(v45 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetsFetcher, v40 + 48);
  v49 = *(v45 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_momentGroundingProcessor);
  *(v40 + 120) = &type metadata for MomentBasedGroundingAndAssetsFetchingProcessor;
  *(v40 + 128) = &protocol witness table for MomentBasedGroundingAndAssetsFetchingProcessor;
  *(v40 + 96) = v46;
  *(v40 + 104) = v47;
  *(v40 + 112) = v48;
  sub_1C6FB5E28(v45 + v43, v40 + 136);
  v50 = *(v45 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_aiEventReporter);
  v51 = type metadata accessor for StoryAppleIntelligenceEventReporter();
  *(v40 + 16) = 0;
  v122 = (v40 + 1032);
  *(v40 + 208) = v51;
  *(v40 + 216) = &protocol witness table for StoryAppleIntelligenceEventReporter;
  *(v40 + 184) = v50;
  *(v40 + 24) = v46;
  *(v40 + 32) = v47;
  *(v40 + 40) = v48;
  *(v40 + 88) = v49;
  *(v40 + 176) = 1;
  sub_1C71F2DB4(v40 + 16, v40 + 224);
  v52 = *(v45 + 16);
  v53 = *(v45 + 24);
  v54 = *(v45 + 32);
  a27 = v52;
  LOWORD(a28) = v53;
  a29 = v54;
  v55 = v46;
  swift_retain_n();
  v56 = v55;

  v57 = v52;

  QueryGenerator.init(with:storyPhotoLibraryContext:)(v40 + 224, &a27, v44);
  if (![objc_opt_self() useCachedQueryTokensForSuggestions])
  {
    goto LABEL_8;
  }

  v58 = *(v40 + 1488);
  OUTLINED_FUNCTION_63_13();
  sub_1C71F29A0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218820);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 2, v59);
  v61 = *(v40 + 1488);
  if (EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_179_1();
    sub_1C71F29F8(v62, v63);
LABEL_8:
    v75 = sub_1C754FEEC();
    v76 = sub_1C75511BC();
    v77 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_96_0();
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "Current prompt is not an eligible PromptSuggestion to use customQueryTokenProvider.", v79, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *(v40 + 1064) = 0;
    *v122 = 0u;
    *(v40 + 1048) = 0u;
    goto LABEL_11;
  }

  v64 = *(v59 + 48);
  v65 = *v61;
  sub_1C6FB5FC8(&v61[v64], &qword_1EC2183C0);
  if (!sub_1C705FC40(v65, &unk_1F46A8310))
  {
    goto LABEL_8;
  }

  v66 = sub_1C754FEEC();
  v67 = sub_1C75511BC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_41_0();
    v69 = OUTLINED_FUNCTION_20_1();
    a27 = v69;
    *v68 = 136315138;
    v70 = StoryState.PromptOrigin.description.getter();
    v72 = sub_1C6F765A4(v70, v71, &a27);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_1C6F5C000, v66, v67, "Current prompt is an eligible PromptSuggestion to use PromptSuggestionQueryTokenProvider. %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  *(v40 + 1056) = type metadata accessor for PromptSuggestionQueryTokenProvider();
  *(v40 + 1064) = &off_1F46B90B8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v122);
  v74 = v57;
  sub_1C754FEFC();
  *boxed_opaque_existential_0 = v74;
LABEL_11:
  v115 = *(v40 + 948);
  v116 = *(v40 + 1704);
  v108 = *(v40 + 1696);
  v123 = *(v40 + 1680);
  v118 = *(v40 + 1648);
  v119 = *(v40 + 1664);
  v117 = *(v40 + 1640);
  v120 = *(v40 + 1672);
  v113 = *(v40 + 1544);
  v111 = *(v40 + 1504);
  v110 = *(v40 + 1496);
  v121 = *(v40 + 1472);
  v109 = *(v40 + 1448);
  v114 = *(v40 + 1440);
  OUTLINED_FUNCTION_91_8((v40 + 1192));
  OUTLINED_FUNCTION_113_7(0x72657551u);
  sub_1C754F17C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v108);
  OUTLINED_FUNCTION_117_0();
  sub_1C71F29A0();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_182_1();
  sub_1C71F29A0();
  sub_1C6FB5E28(v40 + 1072, v40 + 1152);
  v83 = (v111 + ((*(v110 + 80) + 48) & ~*(v110 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v112 = (v115 + v87 + 40) & ~v115;
  v88 = swift_allocObject();
  v88[2] = v114;
  v88[3] = v116;
  v88[4] = v121;
  v88[5] = v123;
  sub_1C71F2C28();
  *(v88 + v83) = v117;
  *(v88 + v84) = v118;
  *(v88 + v85) = v119;
  *(v88 + v86) = v114;
  v89 = v88 + v87;
  v90 = *(v40 + 1128);
  *v89 = *(v40 + 1112);
  *(v89 + 1) = v90;
  *(v89 + 4) = *(v40 + 1144);
  OUTLINED_FUNCTION_180_1();
  sub_1C71F2C28();
  sub_1C6F699F8((v40 + 1152), v88 + ((v113 + v112 + 7) & 0xFFFFFFFFFFFFFFF8));
  v91 = v118;

  swift_retain_n();
  v92 = v117;
  OUTLINED_FUNCTION_149();
  sub_1C7294000();
  *(v40 + 1760) = v93;
  if (v120)
  {
    v94 = *(v40 + 1640);
    a27 = 5981005;
    a28 = 0xE300000000000000;
    v95 = [v94 string];
    sub_1C755068C();
    OUTLINED_FUNCTION_89_0();

    v96 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1CCA5CD70](v96);

    MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
    sub_1C716845C(a27, a28);
  }

  v97 = swift_task_alloc();
  *(v40 + 1768) = v97;
  *(v40 + 1776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219020);
  *v97 = v40;
  v97[1] = sub_1C71E93FC;
  OUTLINED_FUNCTION_260();

  return MEMORY[0x1EEE6DE18](v98, v99, v100, v101, v102, v103, v104, v105, v108, v109, v110, v112);
}

uint64_t sub_1C71E93FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1784) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_16_0();
  }

  else
  {
    v8 = *(v3 + 1440);
    v7 = sub_1C71E9514;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C71E9514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_326_0();
  a37 = v40;
  a38 = v41;
  a36 = v39;
  v42 = *(v39 + 760);
  *(v39 + 888) = *(v39 + 744);
  *(v39 + 904) = v42;
  *(v39 + 920) = *(v39 + 776);
  *(v39 + 929) = *(v39 + 785);
  v43 = *(v39 + 808);
  *(v39 + 1792) = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_logger;
  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();
  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_96_0();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v46);
    _os_log_impl(&dword_1C6F5C000, v44, v45, "QueryGenerationTask has finished", v38, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v47 = *(v39 + 1784);

  sub_1C754F2DC();
  if (v47)
  {
    OUTLINED_FUNCTION_274_1();

    sub_1C7169EEC(v39 + 888);
    v49 = OUTLINED_FUNCTION_102_1();
    v50(v49);
    *(v39 + 1432) = v47;
    v107 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    if (swift_dynamicCast())
    {
      v108 = *(v39 + 1304);
      v109 = *(v39 + 1312);
      v110 = *(v39 + 1320);
      if (v108 >= 5)
      {
        OUTLINED_FUNCTION_301_1();
        a15 = v118;
        a16 = v117;
        OUTLINED_FUNCTION_67_12();
        a18 = *(v39 + 1616);
        v152 = *(v39 + 1600);
        a17 = *(v39 + 1576);
        OUTLINED_FUNCTION_115_8();
        v154 = v119;
        v156 = v120;

        OUTLINED_FUNCTION_279_1();
        OUTLINED_FUNCTION_0_99();
        sub_1C71F28F0(v121, v122);
        OUTLINED_FUNCTION_9_10();
        v123 = swift_allocError();
        OUTLINED_FUNCTION_230_1(v123, v124);
        *v125 = v108;
        v125[1] = v109;
        v125[2] = v110;
        OUTLINED_FUNCTION_317_1();
        swift_storeEnumTagMultiPayload();
        v157 = v47;
        swift_willThrow();

        sub_1C7550E1C();

        __swift_destroy_boxed_opaque_existential_1(v39 + 1072);
        OUTLINED_FUNCTION_14_39();
        sub_1C71F29F8(a14, v126);
        OUTLINED_FUNCTION_195_1();
        sub_1C6FB5FC8(v39 + 1032, &qword_1EC219018);

        OUTLINED_FUNCTION_53_19();
        OUTLINED_FUNCTION_16_6();
        sub_1C754F1AC();
        v127 = OUTLINED_FUNCTION_144_3();
        v128(v127, v152);
        (*(a17 + 8))(v154, v156);
        goto LABEL_29;
      }

      v111 = OUTLINED_FUNCTION_55();
      sub_1C71F30CC(v111);
    }

    OUTLINED_FUNCTION_271_0();
    v112 = *(v39 + 1648);
    v113 = *(v39 + 1640);
    v114 = *(v39 + 1608);
    OUTLINED_FUNCTION_302_1();
    v154 = *(v39 + 1576);
    v156 = *(v39 + 1568);
    OUTLINED_FUNCTION_115_8();
    v152 = v115;

    v157 = v47;
    swift_willThrow();
    OUTLINED_FUNCTION_117_0();
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v39 + 1072);
    OUTLINED_FUNCTION_14_39();
    sub_1C71F29F8(a14, v116);
    OUTLINED_FUNCTION_195_1();
    sub_1C6FB5FC8(v39 + 1032, &qword_1EC219018);

    OUTLINED_FUNCTION_53_19();
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v114 + 8))(a17, a18);
    (*(v154 + 8))(v152, v156);
LABEL_29:
    OUTLINED_FUNCTION_109_8();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_235_0();

    return v130(v129, v130, v131, v132, v133, v134, v135, v136, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v152, v154, v156, v157, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  v51 = *(v39 + 896);
  *(v39 + 1800) = v51;
  v52 = *(v39 + 904);
  *(v39 + 1808) = v52;
  sub_1C75504FC();
  v155 = v52;
  v53 = *(static StoryGenerationUtilities.queryTokensRequiringRetrieval(queryTokens:)(v51) + 16);

  if (!v53)
  {

    v77 = sub_1C754FEEC();
    sub_1C75511BC();
    v78 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_96_0();
      v80 = swift_slowAlloc();
      *v80 = 0;
      OUTLINED_FUNCTION_145();
      _os_log_impl(v81, v82, v83, v84, v80, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v85 = *(v39 + 1472);

    v86 = *(v85 + 24);
    v87 = *(v85 + 32);
    a23 = *(v85 + 16);
    LOWORD(a24) = v86;
    a25 = v87;
    v88 = a23;

    v43 = static StoryGenerationUtilities.boundedAssetUUIDsForEmptyInitialRetrieval(storyPhotoLibraryContext:eventRecorder:maximumNumberOfMomentsForEntireLibraryRetrieval:)(&a23, (v39 + 1192), 750);
  }

  *(v39 + 1816) = v43;
  v54 = *(v39 + 1440);
  v55 = v43[2];
  sub_1C75504FC();
  v56 = *(v39 + 1672);
  v153 = v51;
  if (v55 >> 3 >= 0x271)
  {
    swift_beginAccess();
    *(v54 + 160) = &unk_1F46A8668;

    if (v56)
    {
      sub_1C7161CDC(0xD00000000000002ELL, 0x80000001C75A41A0);
    }

    v58 = sub_1C754FEEC();
    v59 = sub_1C75511BC();
    v65 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_16;
    }

    v67 = OUTLINED_FUNCTION_41_0();
    *v67 = 134217984;
    *(v67 + 4) = 5000;
    v64 = "More than %ld retrieved assets, switching to extended safe mode";
  }

  else
  {
    swift_beginAccess();
    *(v54 + 160) = &unk_1F46A8690;

    if (v56)
    {
      OUTLINED_FUNCTION_10_2();
      sub_1C7161CDC(0xD000000000000022, v57);
    }

    v58 = sub_1C754FEEC();
    v59 = sub_1C75511BC();
    v60 = OUTLINED_FUNCTION_72();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_16;
    }

    v62 = OUTLINED_FUNCTION_41_0();
    *v62 = 134217984;
    *(v62 + 4) = 5000;
    v64 = "Less than %ld retrieved assets, good with safe mode";
  }

  OUTLINED_FUNCTION_284_0(&dword_1C6F5C000, v63, v59, v64);
  OUTLINED_FUNCTION_235();
  MEMORY[0x1CCA5F8E0]();
LABEL_16:
  v68 = *(v39 + 1472);
  v69 = *(v39 + 1440);

  *(v39 + 1824) = *(v68 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetManager);
  v70 = sub_1C706D154(v43);
  StoryAsset.Manager.collection(with:)(v70, &a23);

  v71 = a23;
  v72 = a24;
  *(v39 + 1832) = a23;
  *(v39 + 1840) = v72;
  v73 = a25;
  v74 = a26;
  *(v39 + 1848) = a25;
  *(v39 + 1856) = v74;
  a23 = v71;
  a24 = v72;
  a25 = v73;
  a26 = v74;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v75 = *(v69 + 160);
  sub_1C75504FC();
  v76 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&a23, v75, v39 + 1192);
  *(v39 + 1864) = v76;
  v89 = v76;

  sub_1C75504FC();
  v90 = sub_1C754FEEC();
  sub_1C75511BC();
  v91 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v91, v92))
  {
    v94 = OUTLINED_FUNCTION_41_0();
    *v94 = 134217984;
    *(v94 + 4) = *(v89 + 16);

    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v100 = *(v39 + 1656);
  v101 = *(v39 + 912);
  *(v39 + 1872) = v101;
  v102 = *(v39 + 920);
  v151 = *(v39 + 921);
  OUTLINED_FUNCTION_30();
  v103 = swift_allocObject();
  *(v103 + 16) = v153;
  *(v103 + 24) = v100;
  a23 = (v103 | 0x2000000000000000);

  sub_1C75504FC();
  v104 = v101;
  sub_1C75504FC();
  sub_1C71937C4();
  v105 = *(v39 + 1632);

  v106 = swift_allocObject();
  *(v106 + 16) = v155;
  *(v106 + 24) = v105;
  *(v106 + 32) = v101;
  *(v106 + 40) = v102;
  *(v106 + 41) = v151;
  a23 = (v106 | 0x4000000000000000);

  v155;
  sub_1C75504FC();
  sub_1C719487C(&a23);
  v138 = *(v39 + 1592);
  v139 = *(v39 + 1584);
  v140 = *(v39 + 1576);
  v141 = *(v39 + 1568);

  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  *(v39 + 1880) = v142;
  *(v39 + 1400) = v104;
  *(v39 + 1408) = v102;
  *(v39 + 1409) = v151;
  (*(v140 + 32))(v139, v138, v141);
  v143 = swift_task_alloc();
  *(v39 + 1888) = v143;
  *v143 = v39;
  v143[1] = sub_1C71EA0DC;
  OUTLINED_FUNCTION_299_1();
  OUTLINED_FUNCTION_235_0();

  return MomentExpansionProcessor.momentExpandedAssetUUIDs(from:anchorPersonUUIDs:queryTokens:sensitiveFlags:eventRecorder:progressReporter:)(v144, v145, v146, v147, v148, v149);
}

uint64_t sub_1C71EA0DC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1896) = v5;
  *(v3 + 1904) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_181_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C71EA250()
{
  v116 = v0;
  v1 = v0[238];
  v2 = v0[180];
  StoryAsset.Manager.collection(with:)(v0[237], __dst);
  v3 = __dst[0];
  v4 = __dst[1];
  v6 = __dst[2];
  v5 = __dst[3];
  v7 = *(v2 + 160);
  sub_1C75504FC();
  v8 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v7, v0 + 149);
  if (!v1)
  {
    v102 = v3;
    v103 = v8;

    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    sub_1C75511BC();
    v12 = OUTLINED_FUNCTION_72();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[233];
    if (v14)
    {
      v16 = OUTLINED_FUNCTION_41_0();
      *v16 = 134217984;
      *(v16 + 4) = *(v15 + 16);

      OUTLINED_FUNCTION_145();
      _os_log_impl(v17, v18, v19, v20, v16, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v22 = v0[231];
    v23 = v0[230];
    v21 = v0[232];
    v24 = v0[116];
    v0[102] = v0[229];
    v0[103] = v23;
    v0[104] = v22;
    v0[105] = v21;
    v0[106] = v102;
    v0[107] = v4;
    v0[108] = v6;
    v0[109] = v5;
    v0[110] = v24;
    v25 = swift_allocObject();
    memcpy((v25 + 16), v0 + 102, 0x48uLL);
    __dst[0] = v25;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C71F311C((v0 + 102), (v0 + 84));
    sub_1C7193E1C();
    v48 = v0[209];
    if (v48)
    {

      if (sub_1C71656D8())
      {
        __dst[0] = v0[225];
        sub_1C75504FC();
        sub_1C71F0430(__dst, sub_1C7422E04, sub_1C71F0AF8);
        OUTLINED_FUNCTION_274_1();

        v51 = __dst[0];
        v52 = *(__dst[0] + 16);
        if (v52)
        {
          v53 = v52 - 1;
          for (i = 32; ; i += 120)
          {
            memcpy(v0 + 69, (v51 + i), 0x78uLL);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_1C6FCA6E4((v0 + 69), (v0 + 54));
            sub_1C755180C();

            memcpy(__dst, v0 + 69, 0x78uLL);
            QueryToken.shortDescription.getter();
            sub_1C6FDD548((v0 + 69));
            v55 = OUTLINED_FUNCTION_49_3();
            MEMORY[0x1CCA5CD70](v55);

            sub_1C7161CDC(0xD000000000000011, 0x80000001C75A4110);

            if (!v53)
            {
              break;
            }

            --v53;
          }
        }

        v56 = v0[237];
        v57 = v0[233];
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C755180C();

        OUTLINED_FUNCTION_3_1();
        __dst[0] = 0xD00000000000001BLL;
        __dst[1] = v58;
        v0[177] = *(v57 + 16);
        v59 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v59);

        OUTLINED_FUNCTION_213_1();
        OUTLINED_FUNCTION_348_0();
        sub_1C7161CDC(__dst[0], __dst[1]);

        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C755180C();

        OUTLINED_FUNCTION_3_1();
        __dst[0] = 0xD000000000000024;
        __dst[1] = v60;
        v0[178] = *(v103 + 16);
        v61 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v61);

        OUTLINED_FUNCTION_213_1();
        OUTLINED_FUNCTION_348_0();
        sub_1C7161CDC(__dst[0], __dst[1]);

        sub_1C75504FC();
        v62 = sub_1C75504FC();
        v63 = sub_1C706D154(v62);
        sub_1C7238810(v63, v56);
        OUTLINED_FUNCTION_364();
        sub_1C71CD85C(v56);
        OUTLINED_FUNCTION_61_9();
        v49 = v48;
        sub_1C7164AD8(v64, v65, v66, v67, v68);
        OUTLINED_FUNCTION_24_2();
      }

      else
      {

        v49 = v0[218];
      }

      __dst[0] = v25;
      OUTLINED_FUNCTION_298_1();
      static AssetStateDiagnosticsGenerator.save(assetState:to:storyAssetManager:)(v69, v70, v71);
      v72 = v0[233];
      v73 = v0[205];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (sub_1C71656D8())
      {
        OUTLINED_FUNCTION_293_1();
        v74 = (v48 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock((v48 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
        OUTLINED_FUNCTION_75();
        sub_1C71ED578(v75, v76, v77, v72, v48, v103);
        os_unfair_lock_unlock(v74);
      }

      OUTLINED_FUNCTION_293_1();

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();

      sub_1C717C130();
    }

    else
    {
    }

    sub_1C754F2DC();
    v78 = v0[233];
    v79 = v0[225];
    v80 = v0[209];
    v81 = v0[185];
    v82 = v0[180];
    OUTLINED_FUNCTION_99_0();
    v83 = swift_allocObject();
    v83[2] = v79;
    v83[3] = v82;
    v83[4] = v78;
    v83[5] = v81;

    v84 = OUTLINED_FUNCTION_224_1();
    sub_1C71D1908(v84, v85);

    v86 = v0[232];
    v87 = v0[231];
    v88 = v0[230];
    if (v80)
    {
      v89 = v0[228];
      v90 = v0[226];
      v91 = v0[180];
      __dst[0] = v0[229];
      __dst[1] = v88;
      __dst[2] = v87;
      __dst[3] = v86;
      v92 = *(v91 + 160);
      sub_1C75504FC();
      sub_1C7167ED4(__dst, 0x6576656972746552, 0xE900000000000064, v92, v89);

      sub_1C71F3178((v0 + 102));

      sub_1C7169EEC((v0 + 111));
    }

    else
    {

      sub_1C71F3178((v0 + 102));

      sub_1C7169EEC((v0 + 111));
    }

    sub_1C754F2EC();
    v93 = v0[206];
    v94 = v0[205];
    v114 = v0[202];
    v95 = v0[201];
    v111 = v0[200];
    v96 = v0[190];
    v97 = v0[182];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_98_1();
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 134));
    OUTLINED_FUNCTION_14_39();
    sub_1C71F29F8(v96, v98);
    OUTLINED_FUNCTION_195_1();
    sub_1C6FB5FC8((v0 + 129), &qword_1EC219018);

    __swift_destroy_boxed_opaque_existential_1((v0 + 149));
    OUTLINED_FUNCTION_34_12(v97);
    OUTLINED_FUNCTION_105_7();
    sub_1C754F1AC();
    (*(v95 + 8))(v114, v111);

    OUTLINED_FUNCTION_25();
LABEL_13:
    OUTLINED_FUNCTION_327_0();

    __asm { BRAA            X1, X16 }
  }

  v105 = v0[233];
  v106 = v0[237];
  v9 = v0[226];
  OUTLINED_FUNCTION_274_1();

  sub_1C7169EEC((v0 + 111));

  v0[179] = v1;
  v26 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (swift_dynamicCast())
  {
    v27 = v0[163];
    v28 = v0[164];
    v29 = v0[165];
    if (v27 >= 5)
    {
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_67_12();
      v104 = v0[197];
      v113 = v0[196];
      OUTLINED_FUNCTION_115_8();
      v108 = v37;
      v110 = v36;

      OUTLINED_FUNCTION_279_1();
      OUTLINED_FUNCTION_0_99();
      sub_1C71F28F0(v38, v39);
      OUTLINED_FUNCTION_9_10();
      v40 = swift_allocError();
      OUTLINED_FUNCTION_230_1(v40, v41);
      *v42 = v27;
      v42[1] = v28;
      v42[2] = v29;
      OUTLINED_FUNCTION_317_1();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1((v0 + 134));
      OUTLINED_FUNCTION_14_39();
      sub_1C71F29F8(v101, v43);
      OUTLINED_FUNCTION_195_1();
      sub_1C6FB5FC8((v0 + 129), &qword_1EC219018);

      OUTLINED_FUNCTION_53_19();
      OUTLINED_FUNCTION_16_6();
      sub_1C754F1AC();
      v44 = OUTLINED_FUNCTION_144_3();
      v45(v44, v108);
      (*(v104 + 8))(v110, v113);
      goto LABEL_12;
    }

    v30 = OUTLINED_FUNCTION_55();
    sub_1C71F30CC(v30);
  }

  OUTLINED_FUNCTION_271_0();
  v31 = v0[206];
  v32 = v0[205];
  v33 = v0[201];
  OUTLINED_FUNCTION_302_1();
  v109 = v0[197];
  v112 = v0[196];
  OUTLINED_FUNCTION_115_8();
  v107 = v34;

  swift_willThrow();
  OUTLINED_FUNCTION_117_0();
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v0 + 134));
  OUTLINED_FUNCTION_14_39();
  sub_1C71F29F8(v101, v35);
  OUTLINED_FUNCTION_195_1();
  sub_1C6FB5FC8((v0 + 129), &qword_1EC219018);

  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v33 + 8))(v105, v106);
  (*(v109 + 8))(v107, v112);
LABEL_12:
  OUTLINED_FUNCTION_109_8();

  OUTLINED_FUNCTION_43();
  goto LABEL_13;
}

void sub_1C71EB2BC()
{
  OUTLINED_FUNCTION_58_9();
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1592);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 1568);
  v12 = *(v0 + 1464);
  v13 = *(v0 + 1600);

  __swift_destroy_boxed_opaque_existential_1(v0 + 952);

  v7 = *(v5 + 8);
  v7(v4, v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + 1192);
  v8 = OUTLINED_FUNCTION_455();
  OUTLINED_FUNCTION_80_0(v8, v9);
  OUTLINED_FUNCTION_307_0();
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v13);
  v7(v12, v6);
  OUTLINED_FUNCTION_331_0();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

void sub_1C71EB444()
{
  (*(*(v1 + 1576) + 8))(*(v1 + 1592), *(v1 + 1568));
  v3 = *(v1 + 1784);
  *(v1 + 1432) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (OUTLINED_FUNCTION_336_0())
  {
    OUTLINED_FUNCTION_291_1();
    if (v5)
    {
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_67_12();
      v10 = *(v1 + 1608);
      OUTLINED_FUNCTION_302_1();
      v11 = *(v1 + 1576);
      OUTLINED_FUNCTION_115_8();
      v27 = v12;
      v28 = v13;
      v14 = *(v1 + 1456);

      type metadata accessor for StoryOrchestrator.Error(0);
      OUTLINED_FUNCTION_0_99();
      sub_1C71F28F0(v15, v16);
      OUTLINED_FUNCTION_9_10();
      v17 = swift_allocError();
      OUTLINED_FUNCTION_249_1(v17, v18);
      swift_willThrow();

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1(v1 + 1072);
      OUTLINED_FUNCTION_14_39();
      sub_1C71F29F8(v25, v19);
      OUTLINED_FUNCTION_195_1();
      sub_1C6FB5FC8(v1 + 1032, &qword_1EC219018);

      __swift_destroy_boxed_opaque_existential_1(v1 + 1192);
      OUTLINED_FUNCTION_58_16(v14);
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      (*(v10 + 8))();
      (*(v11 + 8))(v27, v28);
LABEL_6:
      OUTLINED_FUNCTION_109_8();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_329();

      __asm { BRAA            X1, X16 }
    }

    v6 = OUTLINED_FUNCTION_98_1();
    sub_1C71F30CC(v6);
  }

  OUTLINED_FUNCTION_130_3();
  swift_willThrow();
  OUTLINED_FUNCTION_180();
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1(v1 + 1072);
  OUTLINED_FUNCTION_14_39();
  sub_1C71F29F8(v24, v7);
  OUTLINED_FUNCTION_195_1();
  sub_1C6FB5FC8(v1 + 1032, &qword_1EC219018);

  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  v8 = OUTLINED_FUNCTION_144_3();
  v9(v8);
  (*(v26 + 8))();
  goto LABEL_6;
}

void sub_1C71EB780()
{
  v2 = *(v0 + 1856);

  sub_1C7169EEC(v0 + 888);

  v3 = *(v0 + 1904);
  *(v0 + 1432) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (OUTLINED_FUNCTION_336_0())
  {
    OUTLINED_FUNCTION_291_1();
    if (v5)
    {
      OUTLINED_FUNCTION_301_1();
      OUTLINED_FUNCTION_67_12();
      v10 = *(v0 + 1608);
      OUTLINED_FUNCTION_302_1();
      v11 = *(v0 + 1576);
      OUTLINED_FUNCTION_115_8();
      v27 = v12;
      v28 = v13;
      v14 = *(v0 + 1456);

      type metadata accessor for StoryOrchestrator.Error(0);
      OUTLINED_FUNCTION_0_99();
      sub_1C71F28F0(v15, v16);
      OUTLINED_FUNCTION_9_10();
      v17 = swift_allocError();
      OUTLINED_FUNCTION_249_1(v17, v18);
      swift_willThrow();

      sub_1C7550E1C();

      __swift_destroy_boxed_opaque_existential_1(v0 + 1072);
      OUTLINED_FUNCTION_14_39();
      sub_1C71F29F8(v25, v19);
      OUTLINED_FUNCTION_195_1();
      sub_1C6FB5FC8(v0 + 1032, &qword_1EC219018);

      __swift_destroy_boxed_opaque_existential_1(v0 + 1192);
      OUTLINED_FUNCTION_58_16(v14);
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      (*(v10 + 8))();
      (*(v11 + 8))(v27, v28);
LABEL_6:
      OUTLINED_FUNCTION_109_8();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_329();

      __asm { BRAA            X1, X16 }
    }

    v6 = OUTLINED_FUNCTION_98_1();
    sub_1C71F30CC(v6);
  }

  OUTLINED_FUNCTION_130_3();
  swift_willThrow();
  OUTLINED_FUNCTION_180();
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 1072);
  OUTLINED_FUNCTION_14_39();
  sub_1C71F29F8(v24, v7);
  OUTLINED_FUNCTION_195_1();
  sub_1C6FB5FC8(v0 + 1032, &qword_1EC219018);

  OUTLINED_FUNCTION_53_19();
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  v8 = OUTLINED_FUNCTION_144_3();
  v9(v8);
  (*(v26 + 8))();
  goto LABEL_6;
}

uint64_t sub_1C71EBAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v6[13] = a5;
  v6[14] = v7;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v6[15] = *v7;
  v9 = sub_1C754F2FC();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71EBC04, a1, 0);
}

uint64_t sub_1C71EBC04()
{
  OUTLINED_FUNCTION_58_9();
  v33 = v0;
  sub_1C754F2CC();
  v2 = *(v0 + 88);
  sub_1C754F2BC();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_111_5();
  v4 = *(v2 + v3);
  *(v0 + 176) = v4;
  if (v4)
  {
    v32[0] = 2;
    StoryGenerationDiagnosticContext.generationStage.setter(v32);
  }

  v5 = *(*(v0 + 136) + 32);
  (v5)(*(v0 + 152), *(v0 + 168), *(v0 + 128));
  v6 = OUTLINED_FUNCTION_41_3();
  StoryPlaceholderAssetsGenerator.generateRandomPlaceholderAssetUUIDs(eventRecorder:progressReporter:forPrewarming:)(v6, v7, 0);
  *(v0 + 184) = v8;
  v9 = v8;
  v10 = *(v0 + 112);
  v11 = *(v0 + 72);
  *(v0 + 192) = *(v10 + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_delegateChannel);
  OUTLINED_FUNCTION_30();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  sub_1C75504FC();

  v13 = OUTLINED_FUNCTION_224_1();
  sub_1C71D1908(v13, v14);

  *(v0 + 200) = OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_logger;
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  sub_1C75511BC();
  v16 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_41_0();
    *v18 = 134217984;
    *(v18 + 4) = *(v9 + 16);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    v24 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v24);
  }

  else
  {
  }

  v25 = [*(v0 + 80) string];
  sub_1C755068C();
  OUTLINED_FUNCTION_43_0();

  *(v0 + 208) = v1;
  v26 = OUTLINED_FUNCTION_90();
  v5(v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 216) = v27;
  *v27 = v28;
  v27[1] = sub_1C71EBF74;
  v29 = *(v0 + 144);
  v30 = *(v0 + 96);

  return StoryPlaceholderAssetsGenerator.generatePlaceholderAssets(from:eventRecorder:progressReporter:)(v0 + 16, v10, v1, v30, v29);
}

uint64_t sub_1C71EBF74()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_1C71EC520;
    v6 = v4;
  }

  else
  {
    v7 = *(v2 + 72);

    v5 = sub_1C71EC0C0;
    v6 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1C71EC0C0()
{
  v41 = v0;
  v1 = v0[28];
  v2 = v0[12];
  v3 = v0[9];
  v5 = v0[2];
  v4 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v0[14] + OBJC_IVAR____TtC18PhotosIntelligence17StoryOrchestrator_storyAssetManager);
  v37 = v5;
  v38 = v4;
  v39 = v7;
  v40 = v6;
  OUTLINED_FUNCTION_0_53();
  swift_beginAccess();
  v9 = *(v3 + 160);
  sub_1C75504FC();
  v10 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v37, v9, v2);
  if (v1)
  {

    v11 = OUTLINED_FUNCTION_90();
    v12(v11);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    v15 = v10;
    v34 = v8;
    v35 = v4;
    v36 = v6;
    v16 = v0[15];
    v17 = v0[9];

    OUTLINED_FUNCTION_3_16();
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v17;
    v18[4] = v16;

    sub_1C75504FC();
    sub_1C71D1908(sub_1C71F3FDC, v18);

    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();
    v21 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_332_0(v23, 3.852e-34);
      OUTLINED_FUNCTION_284_0(&dword_1C6F5C000, v24, v20, "Generated %ld placeholder assets based on the user prompt");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v25 = v0[22];
    v26 = v0[23];
    if (v25)
    {

      sub_1C744F770(v26, 0xD00000000000001BLL, 0x80000001C75A4460, v25);
      sub_1C744F924(v15, 0xD00000000000001FLL, 0x80000001C75A4480, v25);

      OUTLINED_FUNCTION_61_9();
      v32 = sub_1C7164AD8(v27, v28, v29, v30, v31);

      v37 = v5;
      v38 = v35;
      v39 = v7;
      v40 = v36;
      v33 = *(v3 + 160);
      sub_1C75504FC();
      sub_1C7167ED4(&v37, 0xD000000000000015, 0x80000001C75A44C0, v33, v34);
    }

    else
    {
    }

    sub_1C754F2EC();

    OUTLINED_FUNCTION_25();
  }

  return v13();
}

uint64_t sub_1C71EC520()
{
  OUTLINED_FUNCTION_49_0();
  (*(v0[17] + 8))(v0[13], v0[16]);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C71EC5B8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if ((*a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    return (*(a2 + 40))(a4, a5, ObjectType, a2);
  }

  return result;
}

void sub_1C71EC624(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if ((*a3 & 1) == 0)
  {
    swift_getObjectType();
    v6 = sub_1C75504FC();
    sub_1C71CD85C(v6);
    (*(a2 + 48))();

    if (qword_1EDD0EC20 != -1)
    {
      swift_once();
    }

    v7 = sub_1C754FF1C();
    __swift_project_value_buffer(v7, qword_1EDD0EC28);
    sub_1C75504FC();
    oslog = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(a4 + 16);

      _os_log_impl(&dword_1C6F5C000, oslog, v8, "Sent %ld placeholder assets that match with the user prompt to UI", v9, 0xCu);
      MEMORY[0x1CCA5F8E0](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C71EC7E4(uint64_t a1, void *a2)
{
  v6 = type metadata accessor for StoryState.PromptOrigin(0);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = (v9 - v8);
  v11 = [a2 string];
  sub_1C755068C();
  OUTLINED_FUNCTION_89_0();

  *a1 = v2;
  *(a1 + 8) = v3;
  OUTLINED_FUNCTION_63_13();
  sub_1C71F29A0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218820);
  if (__swift_getEnumTagSinglePayload(v10, 2, v12))
  {
    OUTLINED_FUNCTION_179_1();
    return sub_1C71F29F8(v10, v13);
  }

  else
  {
    v15 = *v10;
    result = sub_1C6FB5FC8(&v10[*(v12 + 48)], &qword_1EC2183C0);
    *(a1 + 16) = v15;
  }

  return result;
}

uint64_t sub_1C71EC908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v8[10] = swift_task_alloc();
  v10 = sub_1C754F2FC();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C71ECA38, a6, 0);
}

uint64_t sub_1C71ECA38()
{
  OUTLINED_FUNCTION_75_1();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_96_0();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_287_1();
  OUTLINED_FUNCTION_457();
  sub_1C7091CBC();
  v10 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_349_0(v10, v11, v12);
  if (v13)
  {
    v14 = v0[10];
    if (__swift_getEnumTagSinglePayload(v14, 1, v0[11]) != 1)
    {
      sub_1C6FB5FC8(v14, &unk_1EC218C90);
    }

    return OUTLINED_FUNCTION_242_0();
  }

  else
  {
    v16 = *(v0[12] + 32);
    v16(v0[14], v0[10], v0[11]);
    v17 = OUTLINED_FUNCTION_90();
    (v16)(v17);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_1C71ECC24;
    v19 = OUTLINED_FUNCTION_61_3(v0[6]);

    return sub_1C71EBAEC(v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1C71ECC24()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_186_1();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71ECD38()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1C71ECDA4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C71ECE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = v15;
  *(v8 + 248) = v14;
  *(v8 + 232) = v12;
  *(v8 + 240) = v13;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a4;
  *(v8 + 208) = a6;
  *(v8 + 192) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  *(v8 + 272) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C71ECF54, v13, 0);
}

uint64_t sub_1C71ECF54()
{
  OUTLINED_FUNCTION_115_0();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_96_0();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  OUTLINED_FUNCTION_287_1();
  OUTLINED_FUNCTION_457();
  sub_1C7091CBC();
  v10 = OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_349_0(v10, v11, v12);
  if (v13)
  {
    v14 = v0[34];
    if (__swift_getEnumTagSinglePayload(v14, 1, v0[35]) != 1)
    {
      sub_1C6FB5FC8(v14, &unk_1EC218C90);
    }

    return OUTLINED_FUNCTION_242_0();
  }

  else
  {
    v16 = v0[32];
    v17 = *(v0[36] + 32);
    (v17)(v0[38], v0[34], v0[35]);
    OUTLINED_FUNCTION_111_5();
    v0[40] = *(v16 + v18);
    v19 = OUTLINED_FUNCTION_90();
    v17(v19);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[41] = v20;
    *v20 = v21;
    v20[1] = sub_1C71ED18C;

    return QueryGenerator.performQueryUnderstanding(for:previousUserPrompt:previousQueryTokens:userSuggestionByRange:customQueryTokenProvider:storyGenerationDiagnosticsContext:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C71ED18C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 336) = v0;

  v7 = *(v3 + 240);
  if (v0)
  {
    v8 = sub_1C71ED3B0;
  }

  else
  {
    v8 = sub_1C71ED28C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C71ED28C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 16);
  v2 = *(v0 + 320);
  v3 = *(v0 + 40);
  *(v0 + 80) = *(v0 + 24);
  *(v0 + 96) = v3;
  v4 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 56);
  v5 = *(v0 + 72);
  if (v2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v7 = *(v6 + 40) + OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_llmQULatency;
    OUTLINED_FUNCTION_287_1();
    *v7 = v4;
    *(v7 + 8) = v5 & 1;
  }

  v8 = *(v0 + 192);
  *v8 = v1;
  v9 = *(v0 + 80);
  v10 = *(v0 + 112);
  *(v8 + 24) = *(v0 + 96);
  *(v8 + 8) = v9;
  *(v8 + 40) = v10;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  *(v8 + 64) = v1;
  sub_1C75504FC();

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_1C71ED3B0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C71ED420(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219020);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  *v5 = v2;
  v5[1] = sub_1C6F738F4;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v6, v7, v8);
}

uint64_t sub_1C71ED508()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);

  return sub_1C7550E1C();
}

void sub_1C71ED578(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 16);
  v11 = [a3 string];
  v12 = sub_1C755068C();
  v14 = v13;

  sub_1C6FB0C38();
  v15 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v16 = *(a1 + 48);
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 32 * v15;
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;
  *(v17 + 48) = v14;
  *(v17 + 56) = 0;
  *(a1 + 48) = v16;
  v18 = *(a4 + 16);
  v19 = [a3 string];
  v20 = sub_1C755068C();
  v22 = v21;

  sub_1C6FB0C38();
  v23 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v24 = *(a1 + 48);
  *(v24 + 16) = v23 + 1;
  v25 = v24 + 32 * v23;
  *(v25 + 32) = v18;
  *(v25 + 40) = v20;
  *(v25 + 48) = v22;
  *(v25 + 56) = 1;
  *(a1 + 48) = v24;
  v26 = *(a5 + 16);
  sub_1C6FB0C38();
  v27 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v28 = *(a1 + 48);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 32 * v27;
  *(v29 + 40) = 0;
  *(v29 + 48) = 0;
  *(v29 + 32) = v26;
  *(v29 + 56) = 2;
  *(a1 + 48) = v28;
  v30 = *(a6 + 16);
  sub_1C6FB0C38();
  v31 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v32 = *(a1 + 48);
  *(v32 + 16) = v31 + 1;
  v33 = v32 + 32 * v31;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 32) = v30;
  *(v33 + 56) = 3;
  *(a1 + 48) = v32;
}

void sub_1C71ED734(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a3 = 1;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(a4, a5, ObjectType, a2);
  v11 = sub_1C75504FC();
  sub_1C71CD85C(v11);
  (*(a2 + 56))();

  if (qword_1EDD0EC20 != -1)
  {
    swift_once();
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD0EC28);
  sub_1C75504FC();
  sub_1C75504FC();
  oslog = sub_1C754FEEC();
  v13 = sub_1C75511BC();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = *(a6 + 16);

    *(v14 + 12) = 2048;
    *(v14 + 14) = *(a4 + 16);

    _os_log_impl(&dword_1C6F5C000, oslog, v13, "Sent %ld safe retrieved assets and %ld query tokens from initial retrieval to UI", v14, 0x16u);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C71ED934(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 32))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 32))(v8, v9) && v7 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1C7551DBC();
  }

  return v12 & 1;
}