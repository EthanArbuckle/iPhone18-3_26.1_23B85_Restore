uint64_t sub_1C049E6A8()
{
  v15 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C68DAC70](*v0, v0[1]) >= 1)
  {
    v14 = 0;
    v1 = *v0;
    v2 = 0;
    switch(v0[1] >> 62)
    {
      case 1:
        v2 = v1;
        break;
      case 2:
        v2 = *(v1 + 16);
        break;
      default:
        break;
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else if (v2 + 1 >= v2)
    {
      v9 = OUTLINED_FUNCTION_309();
      sub_1C048087C(v9, v10);
      OUTLINED_FUNCTION_317(&v14);
      v11 = OUTLINED_FUNCTION_309();
      sub_1C04A1144(v11, v12);
      OUTLINED_FUNCTION_141();
      sub_1C04F5360();
      result = v14;
      goto LABEL_9;
    }

    __break(1u);
  }

  v3 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  OUTLINED_FUNCTION_141();
  sub_1C049E964(v4, v5, v6, v7);
  result = swift_willThrow();
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C049E7E0()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1C049E82C();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C049E82C()
{
  v15 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1C68DAC70](*v0, v0[1]) >= 4)
  {
    v14 = 0;
    v7 = *v0;
    v8 = 0;
    switch(v0[1] >> 62)
    {
      case 1:
        v8 = v7;
        break;
      case 2:
        v8 = *(v7 + 16);
        break;
      default:
        break;
    }

    if (__OFADD__(v8, 4))
    {
      __break(1u);
    }

    else if (v8 + 4 >= v8)
    {
      v9 = OUTLINED_FUNCTION_309();
      sub_1C048087C(v9, v10);
      OUTLINED_FUNCTION_317(&v14);
      v11 = OUTLINED_FUNCTION_309();
      sub_1C04A1144(v11, v12);
      OUTLINED_FUNCTION_141();
      sub_1C04F5360();
      result = v14;
      goto LABEL_9;
    }

    __break(1u);
  }

  v1 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  OUTLINED_FUNCTION_141();
  sub_1C049E964(v2, v3, v4, v5);
  result = swift_willThrow();
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C049E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C04F6740();

  if (a4)
  {
    v8 = sub_1C04F66B0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1C049EA14(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C049EA60(a1, a2);
  sub_1C049EB78(&unk_1F3F866D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C049EA60(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1C04F6850())
  {
    result = sub_1C049EC5C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C04F6C20();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1C04F6C70();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C049EB78(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1C049ECCC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C049EC5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE70, &qword_1C04F8590);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1C049ECCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE70, &qword_1C04F8590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unsigned __int8 *sub_1C049EDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;

  result = sub_1C04F68C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C049F2D8();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C04F6C70();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_292();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_290();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
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

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_292();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_290();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_153();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_290();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_153();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_290();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_153();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_290();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
            }

            v66 = -87;
          }

          else
          {
            v66 = -55;
          }
        }

        else
        {
          v66 = -48;
        }

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1C049F2D8()
{
  v0 = sub_1C049F344();
  v4 = sub_1C049F378(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C049F378(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C04F67D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C04F6B40();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C049EC5C(v9, 0);
  v12 = sub_1C049F4D8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C04F67D0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C04F6C70();
LABEL_4:

  return sub_1C04F67D0();
}

unint64_t sub_1C049F4D8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1C049F6E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C04F6880();
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
          result = sub_1C04F6C70();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1C049F6E8(v12, a6, a7);
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

    result = sub_1C04F6860();
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

uint64_t sub_1C049F6E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C04F6890();
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
    v5 = MEMORY[0x1C68DC110](15, a1 >> 16);
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

unint64_t sub_1C049F764(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C04F6BD0();

  return sub_1C049F85C(a1, v5);
}

unint64_t sub_1C049F7A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C04F6E60();
  sub_1C04F54B0();
  sub_1C04A1764(&qword_1EDE41560, MEMORY[0x1E69695A8]);
  sub_1C04F6710();
  v4 = sub_1C04F6E80();

  return sub_1C049F920(a1, v4);
}

unint64_t sub_1C049F85C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1C04A0CCC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1C68DC480](v8, a1);
    sub_1C04A0D28(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1C049F920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    sub_1C04A0DC8(*(v2 + 48) + *(v5 + 72) * i, v8);
    v11 = sub_1C04F5480();
    sub_1C04A0E2C(v8);
    if (v11)
    {
      break;
    }
  }

  return i;
}

void sub_1C049FA54()
{
  v2 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_108(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    sub_1C04F6DD0();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE50, &qword_1C04F8558);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    v9 = *v1;
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_314();
  }

  else
  {
    OUTLINED_FUNCTION_310();
    sub_1C04A10FC(v16, v17, v18, v0, v19);
    OUTLINED_FUNCTION_314();
  }
}

uint64_t sub_1C049FB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_312();
  v10 = *v4;
  v11 = sub_1C047D36C();
  OUTLINED_FUNCTION_108(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
  if ((sub_1C04F6CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v7;
  v19 = sub_1C047D36C();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v7;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v6;
    v22[1] = v5;
    OUTLINED_FUNCTION_6();
  }

  else
  {
    sub_1C04A0D7C(v16, a3, a4, v6, v5, v21);
    OUTLINED_FUNCTION_6();
  }
}

unint64_t sub_1C049FC7C()
{
  result = qword_1EDE41AA0;
  if (!qword_1EDE41AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41AA0);
  }

  return result;
}

uint64_t sub_1C049FCDC()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C048A184;

  return sub_1C048CA1C(v2, v3, v4, v5, v6, v7);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.flightSearchResponse(for:)()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_168();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_137(v6);

  return v9(v8);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.subscribe(to:pushMessagesHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  OUTLINED_FUNCTION_168();
  v20 = (v13 + *v13);
  v15 = *(v14 + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_81(v16);
  *v17 = v18;
  v17[1] = sub_1C04A1810;

  return v20(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.unsubscribe(channelId:)()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_168();
  v8 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1C04A1810;
  OUTLINED_FUNCTION_237();

  return v8();
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.fetchUpdate(for:)()
{
  OUTLINED_FUNCTION_188();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 40);
  OUTLINED_FUNCTION_168();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_81(v14);
  *v15 = v16;
  v15[1] = sub_1C04A1810;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of FlightSearchResponseFetcher.subscribe(to:)()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_168();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_137(v6);

  return v9(v8);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.flightSearchResponse(for:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v7 = (*(v0 + 552) + **(v0 + 552));
  v1 = *(*(v0 + 552) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_226(v3);

  return v7(v5);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.subscribe(to:pushMessagesHandler:)()
{
  OUTLINED_FUNCTION_188();
  OUTLINED_FUNCTION_156();
  v1 = *(*v0 + 560);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_81(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_137(v4);

  return v7(v6);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.subscribe(to:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v7 = (*(v0 + 568) + **(v0 + 568));
  v1 = *(*(v0 + 568) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_226(v3);

  return v7(v5);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.unsubscribe(channelId:)()
{
  return (*(*v0 + 576))();
}

{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v7 = (*(v3 + 584) + **(v3 + 584));
  v4 = *(*(v3 + 584) + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C04A1810;

  return v7(v1, v0);
}

uint64_t dispatch thunk of PegasusProxyForFlightSearch.fetchUpdate(for:)()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v0 + 592);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_81(v9);
  *v10 = v11;
  v10[1] = sub_1C04A1810;

  return v13(v6, v4, v2);
}

_OWORD *sub_1C04A0980()
{
  v4 = v1;
  v5 = OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_108(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    v12 = *v1;
    OUTLINED_FUNCTION_293();
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v4;
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1((v15[7] + 32 * v10));
    OUTLINED_FUNCTION_314();

    return sub_1C04A1208(v16, v17);
  }

  else
  {
    sub_1C04A0E88(v10, v3, v2, v0, v15);
    OUTLINED_FUNCTION_314();
  }
}

void sub_1C04A0A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CancellableStoreKey();
  v7 = OUTLINED_FUNCTION_152(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = *v2;
  v14 = sub_1C049F7A8(a2);
  OUTLINED_FUNCTION_108(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE58, &qword_1C04F8560);
  if ((sub_1C04F6CC0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v3;
  v22 = sub_1C049F7A8(a2);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_1C04F6DD0();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v3;
  if (v20)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = a1;
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_136();
    sub_1C04A0DC8(v28, v29);
    sub_1C04A0EF4(v19, v12, a1, v24);
    OUTLINED_FUNCTION_6();
  }
}

uint64_t sub_1C04A0BD8()
{
  v2 = OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_108(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_1C04F6DD0();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE88, &qword_1C04FAD80);
  OUTLINED_FUNCTION_224();
  if (sub_1C04F6CC0())
  {
    v9 = *v1;
    sub_1C047D36C();
    OUTLINED_FUNCTION_281();
    if (!v11)
    {
      goto LABEL_14;
    }

    v7 = v10;
  }

  if (v8)
  {
    v12 = *(*v1 + 56);
    v13 = *(v12 + 8 * v7);
    *(v12 + 8 * v7) = v0;
    OUTLINED_FUNCTION_314();
  }

  else
  {
    OUTLINED_FUNCTION_310();
    sub_1C04A10FC(v16, v17, v18, v0, v19);
    OUTLINED_FUNCTION_314();
  }
}

unint64_t sub_1C04A0D7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1C04A0DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04A0E2C(uint64_t a1)
{
  v2 = type metadata accessor for CancellableStoreKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1C04A0E88(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C04A1208(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1C04A0EF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CancellableStoreKey();
  result = sub_1C04A0F94(a2, v8 + *(*(v9 - 8) + 72) * a1);
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

uint64_t sub_1C04A0F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CancellableStoreKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C04A0FF8()
{
  result = qword_1EDE41AA8;
  if (!qword_1EDE41AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41AA8);
  }

  return result;
}

uint64_t sub_1C04A104C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1C04F5460();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1C04A10FC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C04A1144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *sub_1C04A1208(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C04A1218(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_312();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEB8, &qword_1C04F8628);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_293();

  return sub_1C048DC08(v7, v8, a3, v9);
}

uint64_t sub_1C04A12A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C048087C(a1, a2);
  }

  return a1;
}

uint64_t sub_1C04A12B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_152(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1C04A130C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE0, &qword_1C04F8640);
  OUTLINED_FUNCTION_66(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1C048D400(a1, v1 + v8, v10, v11);
}

uint64_t sub_1C04A13B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_152(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C04A1410(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C04A1504;

  return v6(v2 + 32);
}

uint64_t sub_1C04A1504()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = v1;
  OUTLINED_FUNCTION_64();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_49();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_150();

  return v9();
}

uint64_t sub_1C04A15FC()
{
  OUTLINED_FUNCTION_172();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_81(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_235(v4);

  return v7(v6);
}

uint64_t sub_1C04A1690(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CEE8, &qword_1C04F8668);
  OUTLINED_FUNCTION_66(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_1C04F60B0();
  OUTLINED_FUNCTION_2_1(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1C048C5F0(a1, v1 + v5, v10);
}

uint64_t sub_1C04A1764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C04A1814()
{
  OUTLINED_FUNCTION_144();
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_222();
  v1 = *MEMORY[0x1E69E9840];

  return sub_1C0493F90();
}

uint64_t OUTLINED_FUNCTION_4_2()
{
  result = *(v0 - 144);
  v2 = *(result + 64);
  v3 = -1 << *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[41];
  return v0[47];
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_15()
{

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = v23[40];
  v28 = v23[31];
  v29 = v23[27];
  v30 = v29[1];
  *(v25 - 144) = *v29;
  *(v25 - 128) = v30;
  *(v25 - 112) = v29[2];

  return sub_1C04CA360(v27, v25 - 144, v22, v24, a22);
}

uint64_t OUTLINED_FUNCTION_18()
{
  v2 = *(v0 + 232);

  return sub_1C04E9F48(0x6D69742D63707267, 0xEC00000074756F65, v2);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2)
{
  *(v3 + 416) = a1;
  *(v3 + 424) = a2;
  v5 = *(v4 + 8);
  return v2;
}

uint64_t OUTLINED_FUNCTION_20@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 80) = a1;
  v3 = v1[58];
  v4 = v1[52];
  v5 = v1[53];
  result = v1[34];
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[26];
  return result;
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 320);
  result = *(v2 + 272);
  v6 = *(v2 + 477);
  v7 = *(v3 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_26()
{
  result = v1;
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_28()
{
  result = v0[37];
  v2 = v0[35];
  v3 = *(v0[36] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{
  v4 = v2[48];
  v5 = v2[43];
  v6 = v2[44];
  v8 = v2[39];
  v7 = v2[40];
  v9 = v2[38];

  return sub_1C04A1144(v1, v0);
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{
  v27 = v24[48];
  v28 = v24[43];
  v29 = v24[44];
  v30 = v25;
  v32 = v24[39];
  v31 = v24[40];
  v34 = v24[37];
  v33 = v24[38];
  v35 = v24[35];
  v36 = v24[36];

  return sub_1C04A1144(v30, a24);
}

uint64_t OUTLINED_FUNCTION_31()
{
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[40];
  v8 = v0[31];
  v9 = v0[29];
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, unint64_t a2)
{
  v5 = v2[48];
  v6 = v2[44];
  *(v3 - 112) = v2[43];
  *(v3 - 104) = v5;
  v8 = v2[39];
  v7 = v2[40];
  v9 = v2[38];
  v10 = v2[33];
  v11 = v2[34];
  v12 = v2[32];

  return sub_1C04A1144(a1, a2);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_34()
{
  v2 = v1[43];
  v3 = v1[40];
  v4 = v1[41];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v0);

  return sub_1C04F5200();
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  v10 = v0[37];
  v11 = v0[34];
}

uint64_t OUTLINED_FUNCTION_36()
{
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  v10 = v0[37];
  v11 = v0[34];
}

uint64_t OUTLINED_FUNCTION_37()
{
  v3 = *(v1 + 320);
  *(v1 + 472) = bswap32(v0);

  return sub_1C04F5380();
}

uint64_t OUTLINED_FUNCTION_38()
{
  *(v5 - 144) = v1;

  return sub_1C049FB48(v0, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 + 4) = v26;
  *(v27 + 12) = 2082;

  return sub_1C047D76C(a23, a26, (v28 - 144));
}

uint64_t OUTLINED_FUNCTION_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(v27 + 4) = v26;
  *(v27 + 12) = 2082;

  return sub_1C047D76C(a23, a26, (v28 - 144));
}

void OUTLINED_FUNCTION_42()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[28];
}

uint64_t OUTLINED_FUNCTION_51()
{
  v4 = *(v1 - 272);
  v2 = *(v0 + 16);
  return v1 - 128;
}

uint64_t OUTLINED_FUNCTION_52()
{
  v2 = v0[48];
  v3 = v0[43];
  v4 = v0[44];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_1C04F6D80();
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *(v24 + 4) = v23;
  *(v24 + 12) = 2080;

  return sub_1C047D76C(a23, v25, (v26 - 144));
}

void OUTLINED_FUNCTION_56(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_t log)
{

  _os_log_impl(a1, log, a13, a4, v19, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v22 + 24) = v20;
  *(v22 + 32) = 2085;

  return sub_1C047D76C(a20, v21, (v23 - 144));
}

void OUTLINED_FUNCTION_58(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_log_type_t a19)
{

  _os_log_impl(a1, log, a19, a4, v19, 0x2Au);
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v23 + 24) = v21;
  *(v23 + 32) = v20;

  return sub_1C047D76C(a20, v22, (v24 - 144));
}

uint64_t OUTLINED_FUNCTION_60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 + 14) = a1;
  *(v26 + 22) = v25;

  return sub_1C047D76C(a25, a16, (v27 - 144));
}

uint64_t OUTLINED_FUNCTION_62()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_68()
{
  v2 = *(v0 + 224);

  return sub_1C04F6350();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return sub_1C04F51F0();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_72()
{

  return sub_1C04F5210();
}

uint64_t OUTLINED_FUNCTION_73(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_74()
{
  *(v0 + 476) = 1;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  return sub_1C048087C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v27 + 14) = a1;
  *(v27 + 22) = v25;

  return sub_1C047D76C(a25, v26, (v28 - 144));
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_78()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1C68DCEB0);
}

void OUTLINED_FUNCTION_79()
{
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[56];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
}

void OUTLINED_FUNCTION_80(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void OUTLINED_FUNCTION_84()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
}

uint64_t OUTLINED_FUNCTION_98()
{
  result = v1[55];
  v4 = v1[56];
  v6 = v1[53];
  v5 = v1[54];
  *(v2 - 96) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_100()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

void OUTLINED_FUNCTION_103()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[43];
}

uint64_t OUTLINED_FUNCTION_106()
{
  v2 = v0[60];
  result = v0[61];
  v3 = v0[57];
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[46];
  v10 = v0[47];
  return result;
}

void OUTLINED_FUNCTION_107()
{
  v1 = v0[57];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_111()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114()
{
  v2 = v0[48];
  v3 = v0[46];
  v4 = v0[43];

  return sub_1C04F6400();
}

void OUTLINED_FUNCTION_115(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1C047D76C(v1, v0, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_117(float a1)
{
  *v3 = a1;

  return sub_1C047D76C(v2, v1, (v4 - 144));
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_1C04A1144(v1, v0);
}

void OUTLINED_FUNCTION_119()
{

  JUMPOUT(0x1C68DCEB0);
}

uint64_t OUTLINED_FUNCTION_120()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_122()
{

  return sub_1C04F5210();
}

void OUTLINED_FUNCTION_123(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_124()
{

  return sub_1C04F51A0();
}

uint64_t OUTLINED_FUNCTION_125()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);

  return sub_1C04F5330();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_1C04F6320();
}

uint64_t OUTLINED_FUNCTION_127()
{
  v3 = v0[1];
  *(v1 - 144) = *v0;
  *(v1 - 136) = v3;
}

uint64_t OUTLINED_FUNCTION_128()
{

  return sub_1C04F6330();
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_130(float a1)
{
  *v1 = a1;

  return sub_1C047D76C(v3, v2, (v4 - 144));
}

uint64_t OUTLINED_FUNCTION_132()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C048087C(v2, v3);
}

void *OUTLINED_FUNCTION_169()
{
  v3 = *(v1 - 344);
  v4 = *(v1 - 144);

  return __swift_project_boxed_opaque_existential_1((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_170()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return sub_1C04F5380();
}

uint64_t OUTLINED_FUNCTION_174()
{
}

uint64_t OUTLINED_FUNCTION_175()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_176()
{

  return sub_1C047D76C(v0, v1, (v2 - 144));
}

void OUTLINED_FUNCTION_177()
{
  v2 = *(v0 - 144);
  v3 = *(v0 - 136);
  v4 = *(v0 - 128);

  sub_1C04D31F4(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *(a25 + a24);
}

uint64_t OUTLINED_FUNCTION_179()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_180()
{
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_181(float a1)
{
  *v2 = a1;
  v5 = *(v1 + *v3);

  return sub_1C047D6CC();
}

uint64_t OUTLINED_FUNCTION_182()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_183()
{
}

uint64_t OUTLINED_FUNCTION_184()
{
  v4 = *(v2 - 144);
  v5 = *(v2 - 136);
  *(v2 - 144) = v0;
  *(v2 - 136) = v1;
}

void OUTLINED_FUNCTION_185()
{

  JUMPOUT(0x1C68DC0D0);
}

uint64_t OUTLINED_FUNCTION_186()
{
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[31];
  v5 = v0[27];

  return sub_1C047B774();
}

uint64_t OUTLINED_FUNCTION_187()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 280);

  return sub_1C04A13B0(v6, v4 - 176, a3, a4);
}

uint64_t OUTLINED_FUNCTION_200()
{
  v3 = v0[46];
  v4 = v0[45];
  v5 = v0[42];
  v6 = v0[41];
  v7 = v0[38];
}

void OUTLINED_FUNCTION_201(uint64_t a1@<X8>)
{
  v2 = a1 + 16;
  v3 = *(a1 + 16);
  v1 = *(v2 + 8);
}

void *OUTLINED_FUNCTION_219()
{
  v3 = *(v1 - 144);

  return __swift_project_boxed_opaque_existential_1((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_221(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_223(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_233@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_234()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

unint64_t OUTLINED_FUNCTION_239()
{
  v2 = *v0;

  return sub_1C047D36C();
}

uint64_t OUTLINED_FUNCTION_240()
{
  v3 = v0[43];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[38];
}

BOOL OUTLINED_FUNCTION_243()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_244()
{
}

uint64_t OUTLINED_FUNCTION_245()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_246(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 272);
  return result;
}

void OUTLINED_FUNCTION_247(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_250()
{
}

uint64_t OUTLINED_FUNCTION_251()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_253(uint64_t a1@<X8>)
{
  *(v1 + a1) = 52;

  sub_1C0483574();
}

uint64_t OUTLINED_FUNCTION_254()
{
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;

  return sub_1C04A1144(v4, v5);
}

uint64_t OUTLINED_FUNCTION_255()
{
}

uint64_t OUTLINED_FUNCTION_256(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3[12] = a3;
  v3[29].n128_u8[12] = 0;

  return sub_1C048087C(a1, a2);
}

void OUTLINED_FUNCTION_257()
{
}

uint64_t OUTLINED_FUNCTION_258()
{
  v2 = *(v0 + 320);
}

uint64_t OUTLINED_FUNCTION_259()
{
  v2 = *(v0 + 320);
}

uint64_t OUTLINED_FUNCTION_260()
{
}

uint64_t OUTLINED_FUNCTION_261()
{

  return sub_1C04F51E0();
}

uint64_t OUTLINED_FUNCTION_262()
{
}

BOOL OUTLINED_FUNCTION_263()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_264()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_265()
{
  v2 = *(v0 + 336);
}

uint64_t OUTLINED_FUNCTION_266()
{
  v2 = *(v0 + 248);
}

uint64_t OUTLINED_FUNCTION_267()
{
}

uint64_t OUTLINED_FUNCTION_268()
{
}

uint64_t OUTLINED_FUNCTION_269(uint64_t a1)
{
  *(v1 + 14) = a1;
}

uint64_t OUTLINED_FUNCTION_270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24)
{

  return sub_1C04A1144(v24, a24);
}

uint64_t OUTLINED_FUNCTION_271(uint64_t a1, uint64_t a2)
{

  return sub_1C047D76C(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_272()
{
  v2 = *(v0 + 248);

  return sub_1C04F6400();
}

id OUTLINED_FUNCTION_273(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_274()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_275()
{
}

BOOL OUTLINED_FUNCTION_276()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_277()
{
}

void OUTLINED_FUNCTION_278()
{
  v3 = v0[65];
  v2 = v0[59];
  v1 = v0[60];
}

void OUTLINED_FUNCTION_279()
{
  v1 = v0[68];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[60];
}

void OUTLINED_FUNCTION_280()
{
  v1 = v0[65];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
}

void OUTLINED_FUNCTION_283()
{
  v3 = v0[68];
  v2 = v0[61];
  v1 = v0[62];
}

uint64_t OUTLINED_FUNCTION_285()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_286()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_287()
{

  return swift_task_alloc();
}

double OUTLINED_FUNCTION_288()
{
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_289()
{
  v3 = *(v1 + 272);
  v4 = *(v2 + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_296(float a1)
{
  *v1 = a1;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_297()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_298@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_299@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 24) = a2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_300()
{
  v3 = *(v0 + 280);
}

void OUTLINED_FUNCTION_301(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_1C0483574();
}

uint64_t OUTLINED_FUNCTION_302()
{

  return sub_1C04F6730();
}

void OUTLINED_FUNCTION_306()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[48];
  v5 = v0[44];
  v6 = v0[45];
}

uint64_t OUTLINED_FUNCTION_313(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_315@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_316@<X0>(_OWORD *a1@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = v3;

  return sub_1C04B7354();
}

uint64_t OUTLINED_FUNCTION_317(uint64_t a1)
{

  return MEMORY[0x1EEDC4538](a1, v3, v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_318()
{
  v3 = v0[43];
  v4 = v0[42];
  v5 = v0[39];
  v6 = v0[38];
}

uint64_t OUTLINED_FUNCTION_319()
{

  return sub_1C0482664(0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_320(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_321()
{
  *(v0 + 216) = v1;

  return v1;
}

void OUTLINED_FUNCTION_322(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

BOOL OUTLINED_FUNCTION_323()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_324(uint64_t a1@<X8>)
{
  *(v1 + a1) = 49;

  sub_1C0483574();
}

uint64_t AtomicValue.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AtomicValue.init(_:)(a1);
  return v5;
}

char *AtomicValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 2) = Lock.init()();
  OUTLINED_FUNCTION_2();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v4 + 96)], a1);
  return v1;
}

void AtomicValue.load()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 2);
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 16))(a1, &v2[v7]);
  Lock.unlock()();
}

void AtomicValue.store(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 2);
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(&v2[v7], a1);
  swift_endAccess();
  Lock.unlock()();
}

void AtomicValue.store(resultOf:)(void (*a1)(_BYTE *))
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v12 = v1[2];
  Lock.lock()();
  OUTLINED_FUNCTION_2();
  v14 = *(v13 + 96);
  swift_beginAccess();
  (*(v5 + 16))(v9, v2 + v14, v4);
  v15 = v17;
  a1(v9);
  (*(v5 + 8))(v9, v4);
  if (!v15)
  {
    swift_beginAccess();
    (*(v5 + 40))(v2 + v14, v11, v4);
    swift_endAccess();
  }

  sub_1C04A3984(v2);
}

char *AtomicValue.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04A3A80(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C04A3B7C(uint64_t *a1, int a2)
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

uint64_t sub_1C04A3BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C04A3C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C04A5380(0, v1, 0);
    v2 = v9;
    do
    {
      v9 = v2;
      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_1C04A5380(v3 > 1, v4 + 1, 1);
        v2 = v9;
      }

      v7 = &unk_1F3F88040;
      v8 = &off_1F3F88050;
      *(v2 + 16) = v4 + 1;
      sub_1C047E140(&v6, v2 + 40 * v4 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C04A3CE4()
{
  sub_1C04F66F0();
  v0 = sub_1C04A3C0C(&unk_1F3F86770);
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C04A61B0(v2, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = (*(v5 + 8))(v4, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_1(v14);
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v3 + 16);
          sub_1C04E7C34();
          v3 = v12;
        }

        v9 = *(v3 + 16);
        if (v9 >= *(v3 + 24) >> 1)
        {
          sub_1C04E7C34();
          v3 = v13;
        }

        *(v3 + 16) = v9 + 1;
        v10 = v3 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v8;
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C04A3E60(v3);
  OUTLINED_FUNCTION_2_4();
}

uint64_t sub_1C04A3E60(uint64_t a1)
{
  result = MEMORY[0x1C68DC270](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1C04D4C24(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A3F20(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v88[0] = 38;
  v88[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](a1);
  v78[2] = v88;

  v4 = sub_1C04A4FE4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C04A6214, v78, a1, a2);
  v5 = 0;
  v6 = *(v4 + 16);
  v7 = v4 + 32;
  v79 = MEMORY[0x1E69E7CC8];
  v80 = v4 + 32;
  v81 = v6;
  v82 = v4;
  while (1)
  {
    if (v5 == v6)
    {

      return v79;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v8 = (v7 + 32 * v5);
    v9 = *v8;
    ++v5;
    v10 = v8[1] >> 14;
    if (v10 != *v8 >> 14)
    {
      v85 = v5;
      v12 = v8[2];
      v11 = v8[3];
      swift_bridgeObjectRetain_n();
      v13 = v9;
      v14 = MEMORY[0x1E69E7CC0];
      v87 = v11;
LABEL_7:
      v86 = v14;
      for (i = v13; ; i = sub_1C04F6B30())
      {
        v16 = i >> 14;
        v17 = v13 >> 14;
        if (i >> 14 == v10)
        {
          break;
        }

        if (sub_1C04F6B50() == 61 && v18 == 0xE100000000000000)
        {

LABEL_16:
          if (v17 == v16)
          {
            v14 = v86;
          }

          else
          {
            if (v16 < v17)
            {
              goto LABEL_48;
            }

            v21 = sub_1C04F6B60();
            v23 = v22;
            v25 = v24;
            v83 = v26;
            v14 = v86;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v84 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v31 = v14[2];
              sub_1C04E7DE4();
              v14 = v32;
            }

            v28 = v14[2];
            if (v28 >= v14[3] >> 1)
            {
              sub_1C04E7DE4();
              v14 = v33;
            }

            v14[2] = v28 + 1;
            v29 = &v14[4 * v28];
            v29[4] = v21;
            v29[5] = v23;
            v30 = v83;
            v29[6] = v84;
            v29[7] = v30;
          }

          v13 = sub_1C04F6B30();
          goto LABEL_7;
        }

        v20 = sub_1C04F6D80();

        if (v20)
        {
          goto LABEL_16;
        }
      }

      if (v17 == v10)
      {

        v34 = v86;
        v35 = v86[2];
      }

      else
      {
        if (v10 < v17)
        {
          goto LABEL_49;
        }

        v36 = sub_1C04F6B60();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v34 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = v34[2];
          sub_1C04E7DE4();
          v34 = v75;
        }

        v43 = v34[2];
        v35 = v43 + 1;
        if (v43 >= v34[3] >> 1)
        {
          sub_1C04E7DE4();
          v34 = v76;
        }

        v34[2] = v35;
        v44 = &v34[4 * v43];
        v44[4] = v36;
        v44[5] = v38;
        v44[6] = v40;
        v44[7] = v42;
      }

      if (v35 == 2)
      {
        v45 = v34[4];
        v46 = v34[5];
        v47 = v34[6];
        v48 = v34[7];

        v49 = MEMORY[0x1C68DC060](v45, v46, v47, v48);
        v51 = v50;

        if (v34[2] < 2uLL)
        {
          goto LABEL_50;
        }

        v52 = v34[8];
        v53 = v34[9];
        v54 = v34[10];
        v55 = v34[11];

        v56 = MEMORY[0x1C68DC060](v52, v53, v54, v55);
        v58 = v57;

        v59 = v79;
        swift_isUniquelyReferenced_nonNull_native();
        v88[0] = v59;
        v60 = sub_1C047D36C();
        if (__OFADD__(*(v59 + 16), (v61 & 1) == 0))
        {
          goto LABEL_51;
        }

        v62 = v60;
        v63 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
        if (sub_1C04F6CC0())
        {
          v64 = sub_1C047D36C();
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_53;
          }

          v62 = v64;
        }

        v66 = v88[0];
        v79 = v88[0];
        if (v63)
        {
          v67 = (*(v88[0] + 56) + 16 * v62);
          v68 = v67[1];
          *v67 = v56;
          v67[1] = v58;
        }

        else
        {
          *(v88[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
          v69 = (v66[6] + 16 * v62);
          *v69 = v49;
          v69[1] = v51;
          v70 = (v66[7] + 16 * v62);
          *v70 = v56;
          v70[1] = v58;
          v71 = v66[2];
          v72 = __OFADD__(v71, 1);
          v73 = v71 + 1;
          if (v72)
          {
            goto LABEL_52;
          }

          v66[2] = v73;
        }
      }

      else
      {
      }

      v6 = v81;
      v4 = v82;
      v5 = v85;
      v7 = v80;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1C04F6DD0();
  __break(1u);
  return result;
}

uint64_t sub_1C04A4478(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = a2;
    v9 = result;
    v10 = *a5;
    v71 = a5[1];
    v72 = a5;
    v11 = sub_1C04A3F20(v10, v71);
    if (!v11)
    {
      v11 = sub_1C04F66F0();
    }

    v12 = v11;
    v13 = sub_1C04E9F48(a3, a4, v11);
    v74 = 44;
    v75 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v13);
    v66[2] = &v74;
    v16 = sub_1C04A4FE4(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C04A6118, v66, v14, v15);
    v17 = *(v16 + 16);
    v70 = 0;
    if (v17)
    {
      v68 = v9;
      v69 = v12;
      v73 = a3;
      v67 = a4;
      v74 = MEMORY[0x1E69E7CC0];
      sub_1C04A53A0(0, v17, 0);
      v18 = v74;
      v19 = (v16 + 56);
      do
      {
        v20 = *(v19 - 3);
        v21 = *(v19 - 2);
        v22 = *(v19 - 1);
        v23 = *v19;

        v24 = MEMORY[0x1C68DC060](v20, v21, v22, v23);
        v26 = v25;

        v74 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C04A53A0(v27 > 1, v28 + 1, 1);
          v18 = v74;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v19 += 4;
        --v17;
      }

      while (v17);

      a4 = v67;
      v9 = v68;
      a3 = v73;
      v12 = v69;
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v30 = (v18 + 40);
    v31 = *(v18 + 16) + 1;
    while (--v31)
    {
      if (*(v30 - 1) != v9 || *v30 != v8)
      {
        v30 += 2;
        if ((sub_1C04F6D80() & 1) == 0)
        {
          continue;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_42:
      v63 = *(v18 + 16);
      sub_1C04E7C34();
      v18 = v64;
    }

    v33 = *(v18 + 16);
    if (v33 >= *(v18 + 24) >> 1)
    {
      sub_1C04E7C34();
      v18 = v65;
    }

    *(v18 + 16) = v33 + 1;
    v34 = v18 + 16 * v33;
    *(v34 + 32) = v9;
    *(v34 + 40) = v8;
    v74 = v18;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF20, &qword_1C04F9210);
    v68 = sub_1C04A6138();
    v69 = v35;
    v36 = sub_1C04F6720();
    v38 = v37;

    swift_isUniquelyReferenced_nonNull_native();
    v74 = v12;
    sub_1C049FB48(v36, v38, a3, a4);
    v9 = v74;
    a4 = v74 + 64;
    v39 = 1 << *(v74 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    a3 = v40 & *(v74 + 64);
    v41 = (v39 + 63) >> 6;

    v8 = 0;
    v42 = MEMORY[0x1E69E7CC0];
    v73 = v9;
    if (a3)
    {
      while (1)
      {
        v43 = v42;
LABEL_32:
        v45 = (v8 << 10) | (16 * __clz(__rbit64(a3)));
        v46 = (*(v9 + 48) + v45);
        v47 = v46[1];
        v48 = (*(v9 + 56) + v45);
        v49 = *v48;
        v50 = v48[1];
        v74 = *v46;
        v75 = v47;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1C68DC0D0](61, 0xE100000000000000);
        MEMORY[0x1C68DC0D0](v49, v50);

        v51 = v74;
        v52 = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v43 + 16);
          sub_1C04E7C34();
          v43 = v56;
        }

        v12 = *(v43 + 16);
        v53 = v43;
        if (v12 >= *(v43 + 24) >> 1)
        {
          sub_1C04E7C34();
          v53 = v57;
        }

        a3 &= a3 - 1;
        *(v53 + 16) = v12 + 1;
        v42 = v53;
        v54 = v53 + 16 * v12;
        *(v54 + 32) = v51;
        *(v54 + 40) = v52;
        v9 = v73;
        if (!a3)
        {
          goto LABEL_28;
        }
      }
    }

    while (1)
    {
LABEL_28:
      v44 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v44 >= v41)
      {
        break;
      }

      a3 = *(a4 + 8 * v44);
      ++v8;
      if (a3)
      {
        v43 = v42;
        v8 = v44;
        goto LABEL_32;
      }
    }

    v74 = v42;

    v58 = v70;
    sub_1C04A55D8(&v74);
    if (v58)
    {

      __break(1u);
    }

    else
    {

      v59 = sub_1C04F6720();
      v61 = v60;

      v62 = v72;
      *v72 = v59;
      v62[1] = v61;
    }
  }

  return result;
}

void sub_1C04A49C4(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = sub_1C04A3F20(a1, a2);
  if (v6)
  {
    v7 = v6;
    v9 = v6 + 64;
    v8 = *(v6 + 64);
    v10 = *(v6 + 32);
    OUTLINED_FUNCTION_0_3();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    v16 = 0;
    v39 = v15;
    v40 = v9;

    v42 = v2;
    if (v13)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_3:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v17 >= v15)
      {

        OUTLINED_FUNCTION_2_4();

        return;
      }

      v13 = *(v9 + 8 * v17);
      ++v16;
    }

    while (!v13);
    v16 = v17;
LABEL_7:
    while (1)
    {
      v18 = (v16 << 10) | (16 * __clz(__rbit64(v13)));
      v19 = (*(v7 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(v7 + 56) + v18);
      v23 = v22[1];
      v43 = *v22;
      swift_bridgeObjectRetain_n();

      v24 = v2[1];
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v2[1];
      v25 = sub_1C047D36C();
      if (__OFADD__(v44[2], (v26 & 1) == 0))
      {
        break;
      }

      v27 = v25;
      v28 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF10, &unk_1C04F8680);
      if (sub_1C04F6CC0())
      {
        v29 = sub_1C047D36C();
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v27 = v29;
      }

      if (v28)
      {
        v31 = (v44[7] + 16 * v27);
        v32 = v31[1];
        *v31 = v43;
        v31[1] = v23;
      }

      else
      {
        v44[(v27 >> 6) + 8] |= 1 << v27;
        v33 = (v44[6] + 16 * v27);
        *v33 = v21;
        v33[1] = v20;
        v34 = (v44[7] + 16 * v27);
        *v34 = v43;
        v34[1] = v23;
        v35 = v44[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v44[2] = v37;
      }

      v13 &= v13 - 1;

      v7 = v41;
      v42[1] = v44;
      v2 = v42;
      v15 = v39;
      v9 = v40;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C04F6DD0();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
  }
}

uint64_t sub_1C04A4C18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  for (i = 0; v10; result = )
  {
    v14 = i;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (*(a1 + 48) + ((v14 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];

    sub_1C04A4478(v17, v18, 0x636967616DuLL, 0xE500000000000000, a5);
  }

  while (1)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++i;
    if (v10)
    {
      i = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A4D5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C04F6740();
  v6 = [a1 stringForKey_];

  if (v6)
  {
    v7 = sub_1C04F6750();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v39[0] = v7;
  v39[1] = v9;
  v10 = *(a2 + 64);
  v11 = *(a2 + 32);
  OUTLINED_FUNCTION_0_3();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;

  v18 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = (v19 << 10) | (16 * v20);
      v22 = (*(a2 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(a2 + 56) + v21);
      v26 = *v25;
      v27 = v25[1];

      sub_1C04A4478(v26, v27, v23, v24, v39);

      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v14 = *(a2 + 64 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  result = OUTLINED_FUNCTION_1_4(v28, v29, v30, v31, v32, v33, v34, v35, v37, a3, v39[0]);
  if (!v36)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C04A4F08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04A4D5C(a1, a2, a3);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  v24[0] = v8;
  v24[1] = v9;
  v10 = a1;

  v12 = sub_1C04A4C18(v11, v10, a2, a3, v24);
  result = OUTLINED_FUNCTION_1_4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24[0]);
  if (!v21)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1C04A4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1C04F6D80() & 1;
  }
}

uint64_t sub_1C04A4FE4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1C04F68D0();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1C04E7DE4();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1C04E7DE4();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_1C04F68B0();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1C04F6800();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_1C04F68D0();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_1C04E7DE4();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_1C04E7DE4();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_1C04F6800();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1C04F68D0();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1C04E7DE4();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A5380(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C04A53C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C04A53A0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C04A54D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C04A53C0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF38, &qword_1C04F8700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C04E81C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF40, &qword_1C04F8708);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A54D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF30, &qword_1C04FADA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C04E81F0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04A55D8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C04A619C(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1C04A5644(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C04A5644(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C04F6D50();
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
        v6 = sub_1C04F6920();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C04A5800(v7, v8, a1, v4);
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
    return sub_1C04A5738(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C04A5738(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

        result = sub_1C04F6D80();
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

void sub_1C04A5800(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
          v14 = sub_1C04F6D80();
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

          else if ((v14 ^ sub_1C04F6D80()))
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
                if (v37 || (sub_1C04F6D80() & 1) == 0)
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
        sub_1C04E7ECC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1C04E7ECC();
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
          sub_1C04A5E34((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
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

  sub_1C04A5D08(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1C04A5D08(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C04A5FD8(v5);
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
    sub_1C04A5E34((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1C04A5E34(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C04E81F0(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C04F6D80() & 1) == 0)
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

  sub_1C04E81F0(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1C04F6D80() & 1) != 0)
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

char *sub_1C04A5FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF28, &qword_1C04F86F8);
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

unint64_t sub_1C04A6138()
{
  result = qword_1EDE44048;
  if (!qword_1EDE44048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE0CF20, &qword_1C04F9210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44048);
  }

  return result;
}

uint64_t sub_1C04A61B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C04A625C(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C04A6290@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C04A625C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C04A62D4()
{
  result = qword_1EBE0CF48;
  if (!qword_1EBE0CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF48);
  }

  return result;
}

uint64_t sub_1C04A6328()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE445B8);
  __swift_project_value_buffer(v0, qword_1EDE445B8);
  return sub_1C04F63F0();
}

uint64_t sub_1C04A63E0(unsigned __int8 a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04A6444()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

id sub_1C04A6488()
{
  result = [objc_allocWithZone(type metadata accessor for ParsecdConnection()) init];
  qword_1EDE44DD0 = result;
  return result;
}

void *sub_1C04A64B8()
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnection);
  v0 = sub_1C04D3130();

  return v0;
}

uint64_t sub_1C04A64F4()
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnection);
  sub_1C04D3274();
}

uint64_t sub_1C04A653C()
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnectionInvalid);
  v0 = sub_1C047BBA0();

  return v0 & 1;
}

uint64_t sub_1C04A6578(char a1)
{
  OUTLINED_FUNCTION_24_0(OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnectionInvalid);
  sub_1C047AC48(a1);
}

void sub_1C04A65C0(void *a1@<X8>)
{
  v2 = sub_1C04A64B8();
  if (v2)
  {
    v3 = v2;
    if ((sub_1C04A653C() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_1EDE446E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE445B8);
  v5 = sub_1C04F63E0();
  v6 = sub_1C04F6A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C0479000, v5, v6, "creating new ParsecdConnection", v7, 2u);
    MEMORY[0x1C68DCEB0](v7, -1, -1);
  }

  sub_1C04A9000();
  v8 = sub_1C04A68E0(0xD000000000000011, 0x80000001C04FCF20, 0);
  sub_1C04A6578(0);
  v9 = [objc_opt_self() interfaceWithProtocol_];
  [v8 setRemoteObjectInterface_];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1C04A945C;
  v20 = v10;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C047C214;
  v18 = &block_descriptor_16;
  v11 = _Block_copy(&v15);

  [v8 setInvalidationHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1C04A9044;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C047C214;
  v18 = &block_descriptor_20;
  v13 = _Block_copy(&v15);

  [v8 setInterruptionHandler_];
  _Block_release(v13);
  [v8 resume];
  v14 = v8;
  sub_1C04A64F4();
  v3 = sub_1C04A64B8();

LABEL_9:
  *a1 = v3;
}

id sub_1C04A68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C04F6740();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_1C04A695C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C04A6578(1);
  }
}

id sub_1C04A69B4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker;
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v3 = swift_allocObject();
  v4 = swift_slowAlloc();
  *(v3 + 16) = v4;
  *v4 = 0;
  *&v1[v2] = v3;
  v5 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF80, &qword_1C04F8808);
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  *&v1[v5] = sub_1C04D3018(0);
  v6 = OBJC_IVAR____TtC10PegasusKit17ParsecdConnection___xpcConnectionInvalid;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  *&v1[v6] = sub_1C04D271C(0);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ParsecdConnection();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C04A6ABC()
{
  v1 = *&v0[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker];
  v2 = v0;

  sub_1C04BD4AC(v3, v2);

  v5.receiver = v2;
  v5.super_class = type metadata accessor for ParsecdConnection();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C04A6BCC(uint64_t a1)
{
  v4 = *(*&v1[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v5 = v1;
  v6 = OUTLINED_FUNCTION_11_1();
  os_unfair_lock_lock(v6);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v4);

  v7 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_12_0(v8);
    OUTLINED_FUNCTION_7_5();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_23_0(v9);

    sub_1C04A6F84(sub_1C04A924C, v2, sub_1C04A925C, a1);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v10, v11);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      OUTLINED_FUNCTION_4_3();
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A70D0;
      v16 = &block_descriptor_70;
      v12 = _Block_copy(aBlock);

      [v7 getBagDataWithReply_];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    v13 = v17;
  }

  else
  {
    sub_1C04A8E9C(v17);
    v13 = aBlock;
  }

  return sub_1C04A8E9C(v13);
}

void sub_1C04A6DB8(uint64_t a1, void (*a2)(void, unint64_t, void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v9 = swift_allocError();
      *v10 = 1;
      a2(0, 0xF000000000000000, v9);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C04F6400();
      __swift_project_value_buffer(v13, qword_1EDE445B8);
      v14 = sub_1C04F63E0();
      v15 = sub_1C04F6A10();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C0479000, v14, v15, "retrying bag data fetch once more on interruption", v16, 2u);
        MEMORY[0x1C68DCEB0](v16, -1, -1);
      }

      sub_1C04A6BCC(1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v11 = swift_allocError();
    *v12 = 0;
    a2(0, 0xF000000000000000, v11);
  }
}

uint64_t sub_1C04A6F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_3();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v14[4] = sub_1C04A8F9C;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1C04A8DDC;
  v14[3] = &block_descriptor;
  v11 = _Block_copy(v14);

  v12 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_1C04F6BB0();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C04A70D0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1C04F53C0();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1C047E0BC(v4, v9);
}

uint64_t sub_1C04A717C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*&v5[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v12 = v5;
  os_unfair_lock_lock(v11);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v11);

  v13 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    *(v15 + 32) = a5;
    *(v15 + 40) = a3 & 1;
    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    OUTLINED_FUNCTION_7_5();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
    swift_retain_n();

    sub_1C04A6F84(sub_1C04A91C8, v15, sub_1C04A91DC, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v17, v18);
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      v19 = v27;
      v25 = a4;
      v26 = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A70D0;
      v24 = &block_descriptor_60;
      v20 = _Block_copy(aBlock);

      [v19 getQueryContextDataForClient:a1 activity:a2 reply:v20];
      _Block_release(v20);
      swift_unknownObjectRelease();
    }

    v21 = v28;
  }

  else
  {
    sub_1C04A8E9C(v28);
    v21 = aBlock;
  }

  return sub_1C04A8E9C(v21);
}

void sub_1C04A73C4(uint64_t a1, void (*a2)(void, unint64_t, void *), uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v13 = swift_allocError();
      *v14 = 1;
      a2(0, 0xF000000000000000, v13);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v17 = sub_1C04F6400();
      __swift_project_value_buffer(v17, qword_1EDE445B8);
      v18 = sub_1C04F63E0();
      v19 = sub_1C04F6A10();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C0479000, v18, v19, "retrying query context fetch once more on interruption", v20, 2u);
        MEMORY[0x1C68DCEB0](v20, -1, -1);
      }

      sub_1C04A717C(a5, a6, 1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v15 = swift_allocError();
    *v16 = 0;
    a2(0, 0xF000000000000000, v15);
  }
}

uint64_t sub_1C04A75A8(void *a1, uint64_t (*a2)(void, unint64_t, void *), uint64_t a3, const char *a4)
{
  if (qword_1EDE446E0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v7 = sub_1C04F6400();
  __swift_project_value_buffer(v7, qword_1EDE445B8);
  v8 = a1;
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v14 = sub_1C04F6790();
    v16 = sub_1C047D76C(v14, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1C0479000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  return a2(0, 0xF000000000000000, a1);
}

uint64_t sub_1C04A772C(uint64_t a1)
{
  v4 = *(*&v1[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v5 = v1;
  v6 = OUTLINED_FUNCTION_11_1();
  os_unfair_lock_lock(v6);
  sub_1C04A65C0(aBlock);
  os_unfair_lock_unlock(v4);

  v7 = aBlock[0];
  if (aBlock[0])
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_12_0(v8);
    OUTLINED_FUNCTION_7_5();
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_23_0(v9);

    sub_1C04A6F84(sub_1C04A91B0, v2, sub_1C04A91C0, a1);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v10, v11);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      OUTLINED_FUNCTION_4_3();
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C04A7C7C;
      v16 = &block_descriptor_50;
      v12 = _Block_copy(aBlock);

      [v7 getIsDeviceSetupCompleteWithReply_];
      _Block_release(v12);
      swift_unknownObjectRelease();
    }

    v13 = v17;
  }

  else
  {
    sub_1C04A8E9C(v17);
    v13 = aBlock;
  }

  return sub_1C04A8E9C(v13);
}

void sub_1C04A7918(uint64_t a1, void (*a2)(void, void *), uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      sub_1C04A8FAC();
      v9 = swift_allocError();
      *v10 = 1;
      a2(0, v9);
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v13 = sub_1C04F6400();
      __swift_project_value_buffer(v13, qword_1EDE445B8);
      v14 = sub_1C04F63E0();
      v15 = sub_1C04F6A10();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1C0479000, v14, v15, "retrying setup state fetch once more on interruption", v16, 2u);
        MEMORY[0x1C68DCEB0](v16, -1, -1);
      }

      sub_1C04A772C(1, a2, a3);
    }
  }

  else
  {
    sub_1C04A8FAC();
    v11 = swift_allocError();
    *v12 = 0;
    a2(0, v11);
  }
}

uint64_t sub_1C04A7ADC(void *a1, uint64_t (*a2)(void, void *))
{
  if (qword_1EDE446E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE445B8);
  v5 = a1;
  v6 = sub_1C04F63E0();
  v7 = sub_1C04F6A20();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v11 = sub_1C04F6790();
    v13 = sub_1C047D76C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C0479000, v6, v7, "fetchIsDeviceSetupCompleteFromDaemon failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1C68DCEB0](v9, -1, -1);
    MEMORY[0x1C68DCEB0](v8, -1, -1);
  }

  return a2(0, a1);
}

void sub_1C04A7C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1C04A7CF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(), uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_18_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v41);

    OUTLINED_FUNCTION_17_0(sub_1C04A9134, v42, sub_1C04A7EE0);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v43, v44);
  if (a13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v45 = sub_1C04F6740();
      OUTLINED_FUNCTION_7_5();
      v46 = swift_allocObject();
      *(v46 + 16) = v34;
      *(v46 + 24) = v32;
      a14 = sub_1C04A90C0;
      a15 = v46;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_5_3();
      a12 = v47;
      a13 = &block_descriptor_43;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v48, sel_subscribeToPushNotificationsWithChannelId_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

void sub_1C04A7EEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1C04A7F58(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, uint64_t a12, void *a13, uint64_t (*a14)(), uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_18_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v41);

    OUTLINED_FUNCTION_17_0(sub_1C04A9090, v42, sub_1C04A83BC);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v43, v44);
  if (a13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v45 = sub_1C04F6740();
      OUTLINED_FUNCTION_7_5();
      v46 = swift_allocObject();
      *(v46 + 16) = v34;
      *(v46 + 24) = v32;
      a14 = sub_1C04A9480;
      a15 = v46;
      aBlock = MEMORY[0x1E69E9820];
      OUTLINED_FUNCTION_5_3();
      a12 = v47;
      a13 = &block_descriptor_33;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v48, sel_unsubscribeFromPushNotificationsWithChannelId_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

void sub_1C04A8144(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, const char *a10, void (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), const char *a12)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      if (qword_1EDE446E0 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v21 = sub_1C04F6400();
      __swift_project_value_buffer(v21, qword_1EDE445B8);
      v22 = sub_1C04F63E0();
      v23 = sub_1C04F6A20();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = OUTLINED_FUNCTION_25_0();
        *v24 = 0;
        _os_log_impl(&dword_1C0479000, v22, v23, a9, v24, 2u);
        OUTLINED_FUNCTION_10_0();
      }
    }

    else
    {
      if (qword_1EDE446E0 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v28 = sub_1C04F6400();
      __swift_project_value_buffer(v28, qword_1EDE445B8);
      v29 = sub_1C04F63E0();
      v30 = sub_1C04F6A10();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_25_0();
        *v31 = 0;
        _os_log_impl(&dword_1C0479000, v29, v30, a10, v31, 2u);
        OUTLINED_FUNCTION_10_0();
      }

      a11(1, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    if (qword_1EDE446E0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v25 = sub_1C04F6400();
    __swift_project_value_buffer(v25, qword_1EDE445B8);
    v20 = sub_1C04F63E0();
    v26 = sub_1C04F6A20();
    if (os_log_type_enabled(v20, v26))
    {
      v27 = OUTLINED_FUNCTION_25_0();
      *v27 = 0;
      _os_log_impl(&dword_1C0479000, v20, v26, a12, v27, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }
}

void sub_1C04A83C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, uint64_t a11, uint64_t (*a12)(uint64_t a1, void *a2, void *a3), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_0();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_1_5();
  v38 = *(*&v33[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v39 = v33;
  os_unfair_lock_lock(v38);
  sub_1C04A65C0(&aBlock);
  os_unfair_lock_unlock(v38);

  v40 = aBlock;
  if (aBlock)
  {
    OUTLINED_FUNCTION_6_3();
    swift_allocObject();
    OUTLINED_FUNCTION_13_1();
    OUTLINED_FUNCTION_18_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_2_5(v41);

    OUTLINED_FUNCTION_17_0(sub_1C04A9060, v42, sub_1C04A85A0);
  }

  else
  {
    v44 = OUTLINED_FUNCTION_9_0();
  }

  OUTLINED_FUNCTION_16_0(v43, v44);
  if (a13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if (OUTLINED_FUNCTION_3_4())
    {
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_11_1();
      v45 = sub_1C04F6740();
      a14 = v34;
      a15 = v32;
      aBlock = MEMORY[0x1E69E9820];
      a11 = 1107296256;
      a12 = sub_1C04A70D0;
      a13 = &block_descriptor_23;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_14_0();

      OUTLINED_FUNCTION_8_1(v46, sel_fetchLatestPushUpdateWithChannel_topic_completionHandler_);
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    p_aBlock = &a17;
  }

  else
  {
    sub_1C04A8E9C(&a17);
    p_aBlock = &aBlock;
  }

  sub_1C04A8E9C(p_aBlock);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_1C04A85AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = a4;
  v8 = sub_1C04F55B0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*&v4[OBJC_IVAR____TtC10PegasusKit17ParsecdConnection_locker] + 16);
  v16 = v4;
  os_unfair_lock_lock(v15);
  sub_1C04A65C0(v41);
  os_unfair_lock_unlock(v15);

  v17 = *&v41[0];
  if (*&v41[0])
  {
    OUTLINED_FUNCTION_6_3();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v11 + 16))(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v36 = a1;
    v20 = a2;
    v21 = a3;
    v22 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v37 & 1;
    *(v23 + 24) = v18;
    (*(v11 + 32))(v23 + v19, v14, v8);
    v24 = (v23 + v22);
    *v24 = v20;
    v24[1] = v21;

    sub_1C04A6F84(sub_1C04A8F04, v23, sub_1C04A8AB0, 0);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1C04A8E44();
  sub_1C04F6350();
  sub_1C04820C0(v41, v39);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF70, &unk_1C04F87F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C04A8E9C(v41);
      v34 = OUTLINED_FUNCTION_20_0();
      return sub_1C04A1144(v34, v35);
    }

    v25 = v38;
    OUTLINED_FUNCTION_20_0();
    v26 = sub_1C04F53B0();
    v27 = sub_1C04F6740();
    [v25 reportPegasusFeedbackWithPayloadData:v26 forUseragent:v27];
    v28 = OUTLINED_FUNCTION_20_0();
    sub_1C04A1144(v28, v29);
    swift_unknownObjectRelease();

    v30 = v41;
  }

  else
  {
    sub_1C04A8E9C(v41);
    v32 = OUTLINED_FUNCTION_20_0();
    sub_1C04A1144(v32, v33);
    v30 = v39;
  }

  return sub_1C04A8E9C(v30);
}

void sub_1C04A8968(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      if (qword_1EDE446E0 != -1)
      {
        swift_once();
      }

      v10 = sub_1C04F6400();
      __swift_project_value_buffer(v10, qword_1EDE445B8);
      v11 = sub_1C04F63E0();
      v12 = sub_1C04F6A10();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C0479000, v11, v12, "retrying report payload once more on interruption", v13, 2u);
        MEMORY[0x1C68DCEB0](v13, -1, -1);
      }

      sub_1C04A85AC(a3, a4, a5, 1);
    }
  }
}

void sub_1C04A8ABC(void *a1, const char *a2)
{
  if (qword_1EDE446E0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE445B8);
  v5 = a1;
  oslog = sub_1C04F63E0();
  v6 = sub_1C04F6A20();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v10 = sub_1C04F6790();
    v12 = sub_1C047D76C(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C0479000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
  }
}

void sub_1C04A8C40(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1C04A8FAC();
    v19 = swift_allocError();
    *v20 = 0;
    a3();

    return;
  }

  v9 = Strong;
  [Strong invalidate];
  v10 = sub_1C04F52C0();
  v11 = [v10 domain];
  v12 = sub_1C04F6750();
  v14 = v13;

  v15 = *MEMORY[0x1E696A250];
  if (v12 == sub_1C04F6750() && v14 == v16)
  {
  }

  else
  {
    v18 = sub_1C04F6D80();

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v10 code] != 4097)
  {
LABEL_12:
    (a3)(a1);
    goto LABEL_13;
  }

  a5();
LABEL_13:
}

void sub_1C04A8DDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_1C04A8E44()
{
  result = qword_1EBE0CF68;
  if (!qword_1EBE0CF68)
  {
    sub_1C04F55B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF68);
  }

  return result;
}

uint64_t sub_1C04A8E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB20, &unk_1C04F8B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C04A8F04()
{
  v1 = *(sub_1C04F55B0() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1C04A8968(v3, v4, v0 + v2, v6, v7);
}

unint64_t sub_1C04A8FAC()
{
  result = qword_1EBE0CF78;
  if (!qword_1EBE0CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF78);
  }

  return result;
}

unint64_t sub_1C04A9000()
{
  result = qword_1EDE446A8;
  if (!qword_1EDE446A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE446A8);
  }

  return result;
}

uint64_t sub_1C04A90C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t objectdestroy_53Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t getEnumTagSinglePayload for ParsecdConnectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ParsecdConnectionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C04A93E8()
{
  result = qword_1EBE0CF88;
  if (!qword_1EBE0CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CF88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{
  *(a1 + 16) = v7;
  *(a1 + 24) = v8 & 1;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  *(a1 + 56) = v3;
  *(a1 + 64) = v2;
  *(a1 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_8_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v2;
  *(result + 32) = v1;
  *(result + 40) = v3 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return sub_1C04F6740();
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_1C04820C0(va1, va);
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C04A6F84(a1, v3, a3, 0);
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;

  return swift_retain_n();
}

uint64_t sub_1C04A963C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40978);
  __swift_project_value_buffer(v0, qword_1EDE40978);
  return sub_1C04F63F0();
}

uint64_t sub_1C04A96C0()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE41050 = v10;
  *algn_1EDE41058 = v12;
  return result;
}

uint64_t PegasusProxyForSpotlightZKW.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04A98DC()
{
  *&xmmword_1EDE41078 = 0xD000000000000030;
  *(&xmmword_1EDE41078 + 1) = 0x80000001C04FCFD0;
  qword_1EDE41088 = 0x74736567677553;
  unk_1EDE41090 = 0xE700000000000000;
  *&xmmword_1EDE41098 = 0xD00000000000001CLL;
  *(&xmmword_1EDE41098 + 1) = 0x80000001C04FD010;
}

void *PegasusProxyForSpotlightZKW.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1EDE41048 != -1)
  {
    OUTLINED_FUNCTION_3_5();
  }

  v6 = qword_1EDE41050;
  v7 = *algn_1EDE41058;

  sub_1C04A12A0(a1, a2);
  v8 = a3;
  v9 = sub_1C04B8AAC(v6, v7, 0, a1, a2, a3);

  sub_1C047AAE0();

  sub_1C047E0BC(a1, a2);

  return v9;
}

uint64_t sub_1C04A9A54()
{
  v1 = sub_1C04F6130();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F6200();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  (*(v4 + 104))(v9, *MEMORY[0x1E69BDAF8], v1);

  sub_1C04F6230();
  v16 = type metadata accessor for ResourceAccessSpan();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v15, 17, v14, 0, 1);
}

uint64_t sub_1C04A9B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v51 = *v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  OUTLINED_FUNCTION_152(v52);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v8);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC8, &qword_1C04F8A60);
  OUTLINED_FUNCTION_0(v55);
  v53 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFD0, &qword_1C04F8A68);
  v14 = OUTLINED_FUNCTION_0(v13);
  v47 = v15;
  v48 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFD8, &unk_1C04F8A70);
  v22 = OUTLINED_FUNCTION_0(v21);
  v49 = v23;
  v50 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - v27;
  if (qword_1EDE41048 != -1)
  {
    OUTLINED_FUNCTION_3_5();
  }

  v30 = qword_1EDE41050;
  v29 = *algn_1EDE41058;

  v31 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  *&v57[0] = v31;
  sub_1C049FB48(v30, v29, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(*&v57[0]);
  sub_1C047ACAC();
  if (qword_1EDE41070 != -1)
  {
    swift_once();
  }

  v57[0] = xmmword_1EDE41078;
  v57[1] = *&qword_1EDE41088;
  v57[2] = xmmword_1EDE41098;
  v32 = sub_1C04B7354();
  v33 = sub_1C04D9214(v57, a1, v32, v54, 0);
  v35 = v34;

  v36 = v33;

  v37 = nw_activity_create();
  v38 = v36;
  sub_1C04E0B04(v38, v37, 0, 0xE000000000000000, a2);
  swift_unknownObjectRelease();

  v56 = v35;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFE0, &qword_1C04F8A80);
  OUTLINED_FUNCTION_2_6();
  sub_1C047C1A4(v39, v40, &qword_1C04F8A80);
  OUTLINED_FUNCTION_4_4(&qword_1EDE40870, &qword_1EBE0CFC8, &qword_1C04F8A60);
  sub_1C04F6530();

  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = a2;
  *(v41 + 24) = v42;
  sub_1C047C1A4(&qword_1EDE408C8, &qword_1EBE0CFD0, &qword_1C04F8A68);

  v43 = v48;
  sub_1C04F6500();

  (*(v47 + 8))(v20, v43);
  sub_1C047C1A4(&qword_1EDE40900, &qword_1EBE0CFD8, &unk_1C04F8A70);
  v44 = v50;
  v45 = sub_1C04F64E0();

  (*(v49 + 8))(v28, v44);
  return v45;
}

uint64_t sub_1C04AA2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = sub_1C04F5D20();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = sub_1C04F5ED0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE40970 != -1)
  {
    swift_once();
  }

  v19 = sub_1C04F6400();
  v20 = __swift_project_value_buffer(v19, qword_1EDE40978);
  v21 = *(v15 + 16);
  v56 = a1;
  v50 = v21;
  v51 = v15 + 16;
  v21(v18, a1, v14);
  v48 = v20;
  v22 = sub_1C04F63E0();
  v23 = sub_1C04F6A40();
  v24 = os_log_type_enabled(v22, v23);
  v49 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v46 = v7;
    v26 = v25;
    v45 = swift_slowAlloc();
    v57 = v45;
    *v26 = 136315138;
    sub_1C04F5EC0();
    v27 = sub_1C04F6790();
    v47 = v4;
    v29 = v28;
    (*(v15 + 8))(v18, v14);
    v30 = sub_1C047D76C(v27, v29, &v57);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1C0479000, v22, v23, "received rpc response with search status: %s", v26, 0xCu);
    v31 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1C68DCEB0](v31, -1, -1);
    v32 = v26;
    v7 = v46;
    MEMORY[0x1C68DCEB0](v32, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

  v33 = v56;
  sub_1C04F5EC0();
  v35 = v52;
  v34 = v53;
  (*(v53 + 104))(v52, *MEMORY[0x1E69BD3A0], v8);
  sub_1C04AC2DC(&qword_1EDE41520, MEMORY[0x1E69BD3A8]);
  v36 = sub_1C04F6730();
  v37 = *(v34 + 8);
  v37(v35, v8);
  v37(v13, v8);
  if (v36)
  {
    *(v54 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v7 = 6;
  }

  else
  {
    *(v54 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v38 = sub_1C04F63E0();
    v39 = sub_1C04F6A40();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v7;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C0479000, v38, v39, "publishing successful rpc response", v41, 2u);
      v42 = v41;
      v7 = v40;
      v33 = v56;
      MEMORY[0x1C68DCEB0](v42, -1, -1);
    }

    v50(v7, v33, v49);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04AA7C8(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *a1;
  v37 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v10, v11, v12, v13);
    goto LABEL_3;
  }

  v37 = v8;
  v14 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v8;
    v18 = v8;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04AB63C();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v7 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40970 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EDE40978);
    v23 = v8;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v8;
      v28 = v8;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

LABEL_3:
    *v7 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

uint64_t sub_1C04AAB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a5;
  v69 = a4;
  v75 = a2;
  v81 = a7;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0) - 8) + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v64 - v14;
  v73 = sub_1C04F65C0();
  v15 = OUTLINED_FUNCTION_0(v73);
  v71 = v16;
  v76 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C04F6A80();
  v20 = OUTLINED_FUNCTION_0(v19);
  v79 = v21;
  v80 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v70 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF98, &qword_1C04F88E8);
  OUTLINED_FUNCTION_0(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA0, &qword_1C04F88F0);
  v77 = OUTLINED_FUNCTION_0(v34);
  v78 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v38);
  v82 = &v64 - v39;
  v40 = sub_1C04A9A54();
  v68 = v7;
  v41 = sub_1C04A9B94(a1, v40, a4);
  *&v83[0] = v41;
  v72 = v41;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v41;
  v43[4] = a3;
  v43[5] = v40;
  v44 = v66;
  v43[6] = v66;
  v43[7] = a6;

  v65 = a3;

  sub_1C047BFEC(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA8, &qword_1C04F88F8);
  OUTLINED_FUNCTION_2_6();
  sub_1C047C1A4(v45, v46, &qword_1C04F88F8);
  sub_1C04F64F0();

  sub_1C047C1A4(&qword_1EDE40920, &qword_1EBE0CF98, &qword_1C04F88E8);
  v47 = sub_1C04F64E0();
  (*(v28 + 8))(v33, v26);
  *&v83[0] = v47;
  sub_1C04AB63C();
  sub_1C04F6580();

  v48 = v71;
  v49 = *(v71 + 16);
  v50 = v67;
  v51 = v75;
  v52 = v73;
  v49(v67, v75, v73);
  v53 = v70;
  sub_1C04F6A90();
  v85 = v65;
  v54 = sub_1C04F6A70();
  v55 = v74;
  __swift_storeEnumTagSinglePayload(v74, 1, 1, v54);
  v56 = swift_allocObject();
  swift_weakInit();
  sub_1C04A13B0(v69, v83, &qword_1EBE0CE40, &qword_1C04F8900);
  v49(v50, v51, v52);
  v57 = (*(v48 + 80) + 72) & ~*(v48 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = v40;
  v59 = v83[1];
  *(v58 + 32) = v83[0];
  *(v58 + 48) = v59;
  *(v58 + 64) = v84;
  (*(v48 + 32))(v58 + v57, v50, v52);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EDE40910, &qword_1EBE0CFA0, &qword_1C04F88F0);
  sub_1C04AC2DC(qword_1EDE41568, sub_1C04ABCD8);

  v60 = v55;
  v61 = v77;
  v62 = v82;
  sub_1C04F6550();

  sub_1C04A12B4(v60, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v79 + 8))(v53, v80);
  return (*(v78 + 8))(v62, v61);
}

uint64_t sub_1C04AB1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v39 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFB8, &qword_1C04F8A50);
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = type metadata accessor for CancellableStoreKey();
  v38 = *(v18 - 8);
  v19 = *(v38 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04F54A0();
    v42 = a4;
    v43 = a3;
    v25 = sub_1C04F6A70();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFA8, &qword_1C04F88F8);
    v36 = a7;
    sub_1C04ABCD8();
    v37 = v14;
    sub_1C047C1A4(&qword_1EDE40880, &qword_1EBE0CFA8, &qword_1C04F88F8);
    sub_1C04AC2DC(qword_1EDE41568, sub_1C04ABCD8);
    sub_1C04F6540();
    sub_1C04A12B4(v13, &qword_1EBE0CF90, &qword_1C04F88E0);
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1C04AC474(v23, v21, type metadata accessor for CancellableStoreKey);
    v27 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v28 = (v19 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    sub_1C04A0F94(v21, v29 + v27);
    *(v29 + v28) = v39;
    v30 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
    v31 = v41;
    v32 = v36;
    *v30 = v41;
    v30[1] = v32;

    sub_1C047BFEC(v31);
    sub_1C047C1A4(&qword_1EDE408B0, &qword_1EBE0CFB8, &qword_1C04F8A50);
    v33 = v37;
    v34 = sub_1C04F6590();

    (*(v40 + 8))(v17, v33);

    sub_1C04B8074(v34, v23);

    return sub_1C04A0E2C(v23);
  }

  return result;
}

unint64_t sub_1C04AB63C()
{
  result = qword_1EDE41060;
  if (!qword_1EDE41060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE41060);
  }

  return result;
}

uint64_t sub_1C04AB690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v18 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFC0, &qword_1C04F8A58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = sub_1C04F5ED0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + 88) == 1)
  {
    sub_1C04A13B0(a1, v11, &qword_1EBE0CFC0, &qword_1C04F8A58);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C04A12B4(v11, &qword_1EBE0CFC0, &qword_1C04F8A58);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      if (a5)
      {
        a5(v16);
      }

      (*(v13 + 8))(v16, v12);
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04B811C();
  }

  return result;
}

uint64_t sub_1C04AB88C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = sub_1C04F65C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    v33 = a4;
    *(a1 + qword_1EDE44718) = 27;
    sub_1C0483574();
    sub_1C04A13B0(a2, v34, &qword_1EBE0CE40, &qword_1C04F8900);
    v17 = v35;
    if (v35)
    {
      v18 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError();
      sub_1C04AC2DC(qword_1EDE41148, type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError);
      v19 = swift_allocError();
      (*(v9 + 16))(v20, a3, v8);
      (*(v18 + 24))(v19, v17, v18);

      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      sub_1C04A12B4(v34, &qword_1EBE0CE40, &qword_1C04F8900);
    }

    if (qword_1EDE40970 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EDE40978);
    v23 = *(v9 + 16);
    v23(v15, a3, v8);
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      v23(v13, v15, v8);
      v28 = sub_1C04F6790();
      v30 = v29;
      (*(v9 + 8))(v15, v8);
      v31 = sub_1C047D76C(v28, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "Timeout has been exceeded. timeout: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

    else
    {

      result = (*(v9 + 8))(v15, v8);
    }

    v21 = 2;
    a4 = v33;
  }

  else
  {
    v21 = 0;
  }

  *a4 = v21;
  return result;
}

uint64_t sub_1C04ABC60@<X0>(char *a1@<X8>)
{
  v3 = *(sub_1C04F65C0() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_1C04AB88C(v5, v1 + 32, v6, a1);
}

unint64_t sub_1C04ABCD8()
{
  result = qword_1EDE44168;
  if (!qword_1EDE44168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE44168);
  }

  return result;
}

uint64_t sub_1C04ABD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04A9A54();
  v5 = sub_1C04A9B94(a1, v4, a2);

  return v5;
}

uint64_t sub_1C04ABD70()
{
  v1 = sub_1C04F65C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C04AC474(v0, v9, type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError);
  (*(v2 + 32))(v5, v9, v1);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1C04F6C40();
  MEMORY[0x1C68DC0D0](0x2074756F656D6954, 0xE800000000000000);
  sub_1C04F6CB0();
  MEMORY[0x1C68DC0D0](0x6564656563786520, 0xE900000000000064);
  v10 = v12[0];
  (*(v2 + 8))(v5, v1);
  return v10;
}

uint64_t PegasusProxyForSpotlightZKW.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04ABF70()
{
  result = qword_1EBE0CFB0;
  if (!qword_1EBE0CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0CFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusProxyForSpotlightZKW.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForSpotlightZKW.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PegasusProxyForSpotlightZKW.TimeoutError()
{
  result = qword_1EDE41118;
  if (!qword_1EDE41118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C04AC21C(uint64_t a1)
{
  v3 = *(type metadata accessor for CancellableStoreKey() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_1C04AB690(a1, v6, v1 + v4, v7, v9);
}

uint64_t sub_1C04AC2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C04AC324(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F65C0();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1C04AC36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F65C0();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_1C04AC3CC(uint64_t a1)
{
  v2 = sub_1C04F65C0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1C04AC474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_152(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C047C1A4(a1, a2, a3);
}

char *sub_1C04AC540()
{
  v1 = v0;
  v242 = sub_1C04F6780();
  v241 = *(v242 - 8);
  v2 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v240 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFF8, &qword_1C04F8B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v6);
  v249 = &v240 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D000, &qword_1C04FAA20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_1();
  v254 = v11;
  OUTLINED_FUNCTION_11_2();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v240 - v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_1();
  v263 = v21;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_12_1();
  v260 = v25;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12_1();
  v262 = v29;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_12_1();
  v259 = v31;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_12_1();
  v261 = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_12_1();
  v258 = v35;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_1();
  v256 = v37;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_12_1();
  v257 = v39;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12_1();
  v255 = v41;
  OUTLINED_FUNCTION_11_2();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v240 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v240 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v240 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v240 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v240 - v55;
  v57 = [v1 requestStartDate];
  if (v57)
  {
    v58 = v57;
    sub_1C04F5440();

    v59 = sub_1C04F5460();
    v60 = 0;
  }

  else
  {
    v59 = sub_1C04F5460();
    v60 = 1;
  }

  v252 = v19;
  v253 = v15;
  OUTLINED_FUNCTION_22_1(v54, v60);
  sub_1C04AE59C(v54, v56, &qword_1EBE0D000, &qword_1C04FAA20);
  sub_1C04F5460();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v59);
  v62 = MEMORY[0x1E69E63B0];
  v248 = "v1/zkwsuggestservice/suggest";
  if (EnumTagSinglePayload == 1)
  {
    sub_1C0482130(v56, &qword_1EBE0D000, &qword_1C04FAA20);
    v63 = MEMORY[0x1E69E7CC8];
    v64 = sub_1C047D36C();
    if (v65)
    {
      v66 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      v265 = v63;
      v67 = *(v63 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      v68 = v265;
      v69 = *(*(v265 + 48) + 16 * v66 + 8);

      sub_1C04A1208((*(v68 + 56) + 32 * v66), &v266);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
      v68 = MEMORY[0x1E69E7CC8];
    }

    v75 = v1;
    v76 = v262;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = v62;
    OUTLINED_FUNCTION_0_5(v70);
    v72 = *(v71 + 8);
    v73 = OUTLINED_FUNCTION_21_1();
    v74(v73);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    sub_1C04A0980();
    v68 = v264;
    v75 = v1;
    v76 = v262;
  }

  v77 = v255;
  v78 = [v75 requestStartDate];
  if (v78)
  {
    v79 = v78;
    sub_1C04F5440();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  OUTLINED_FUNCTION_22_1(v48, v80);
  sub_1C04AE59C(v48, v51, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v51);
  if (v81)
  {
    sub_1C0482130(v51, &qword_1EBE0D000, &qword_1C04FAA20);
    v82 = sub_1C047D36C();
    if (v83)
    {
      v84 = v82;
      swift_isUniquelyReferenced_nonNull_native();
      v265 = v68;
      v85 = *(v68 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      v76 = v262;
      sub_1C04F6CC0();
      v68 = v265;
      v86 = *(*(v265 + 48) + 16 * v84 + 8);

      sub_1C04A1208((*(v68 + 56) + 32 * v84), &v266);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
    v87 = MEMORY[0x1E69E63B0];
  }

  else
  {
    sub_1C04F5410();
    v87 = MEMORY[0x1E69E63B0];
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v88);
    (*(v89 + 8))(v51, v59);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    sub_1C04A0980();
    v68 = v264;
  }

  v90 = [v75 requestStartDate];
  if (v90)
  {
    v91 = v90;
    sub_1C04F5440();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  OUTLINED_FUNCTION_22_1(v77, v92);
  sub_1C04AE59C(v77, v45, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v45);
  if (v81)
  {
    sub_1C0482130(v45, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v93)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v96 = v261;
    v98 = v256;
    v97 = v257;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = v87;
    OUTLINED_FUNCTION_0_5(v94);
    (*(v95 + 8))(v45, v59);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    sub_1C04A0980();
    v68 = v264;
    v96 = v261;
    v98 = v256;
    v97 = v257;
  }

  v99 = [v75 requestEndDate];
  if (v99)
  {
    v100 = v99;
    sub_1C04F5440();

    v101 = 0;
  }

  else
  {
    v101 = 1;
  }

  OUTLINED_FUNCTION_22_1(v98, v101);
  sub_1C04AE59C(v98, v97, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v97);
  if (v81)
  {
    sub_1C0482130(v97, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v102)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v96 = v261;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v108 = v258;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = v87;
    OUTLINED_FUNCTION_0_5(v103);
    v105 = *(v104 + 8);
    v106 = OUTLINED_FUNCTION_21_1();
    v107(v106);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v68 = v264;
    v108 = v258;
  }

  v109 = [v75 responseStartDate];
  if (v109)
  {
    v110 = v109;
    sub_1C04F5440();

    v111 = 0;
  }

  else
  {
    v111 = 1;
  }

  v112 = OUTLINED_FUNCTION_22_1(v96, v111);
  OUTLINED_FUNCTION_32_0(v112, v113, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v108);
  if (v81)
  {
    sub_1C0482130(v108, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v114)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v120 = v259;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = v87;
    OUTLINED_FUNCTION_0_5(v115);
    v117 = *(v116 + 8);
    v118 = OUTLINED_FUNCTION_21_1();
    v119(v118);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v68 = v264;
    v120 = v259;
  }

  v121 = [v75 responseEndDate];
  if (v121)
  {
    v122 = v121;
    sub_1C04F5440();

    v123 = 0;
  }

  else
  {
    v123 = 1;
  }

  OUTLINED_FUNCTION_22_1(v76, v123);
  sub_1C04AE59C(v76, v120, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v120);
  if (v81)
  {
    sub_1C0482130(v120, &qword_1EBE0D000, &qword_1C04FAA20);
    sub_1C047D36C();
    if (v124)
    {
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_20_1();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = v87;
    OUTLINED_FUNCTION_0_5(v125);
    v127 = *(v126 + 8);
    v128 = OUTLINED_FUNCTION_21_1();
    v129(v128);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v68 = v264;
  }

  v130 = [v75 isReusedConnection];
  v267 = MEMORY[0x1E69E6370];
  LOBYTE(v266) = v130;
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_15_1();
  sub_1C04A0980();
  v131 = [v75 countOfRequestHeaderBytesSent];
  v132 = MEMORY[0x1E69E7360];
  v267 = MEMORY[0x1E69E7360];
  *&v266 = v131;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v133 = [v75 countOfResponseHeaderBytesReceived];
  v267 = v132;
  *&v266 = v133;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v134 = [v75 countOfResponseBodyBytesReceived];
  v267 = v132;
  *&v266 = v134;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v135 = [v75 countOfResponseBodyBytesAfterDecoding];
  v267 = v132;
  *&v266 = v135;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v136 = [v75 countOfRequestBodyBytesSent];
  result = [v75 countOfRequestHeaderBytesSent];
  if (__OFADD__(v136, result))
  {
    __break(1u);
    goto LABEL_144;
  }

  v267 = v132;
  *&v266 = &result[v136];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v138 = [v75 countOfResponseBodyBytesReceived];
  result = [v75 countOfResponseHeaderBytesReceived];
  if (__OFADD__(v138, result))
  {
LABEL_144:
    __break(1u);
    return result;
  }

  v267 = v132;
  *&v266 = &result[v138];
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v139 = v264;
  v140 = sub_1C04AE604(v75, &selRef__interfaceName);
  if (v141)
  {
    v267 = MEMORY[0x1E69E6158];
    *&v266 = v140;
    *(&v266 + 1) = v141;
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_3_6();
    sub_1C04A0980();
    v139 = v264;
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    sub_1C047D36C();
    OUTLINED_FUNCTION_25_1();
    if (v143)
    {
      v144 = v142;
      swift_isUniquelyReferenced_nonNull_native();
      v265 = v139;
      v139 = *(v139 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_30_0();
      sub_1C04A1208((*(v139 + 56) + 32 * v144), &v266);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v145 = [v75 _connectionIdentifier];
  if (v145)
  {
    v146 = v145;
    sub_1C04F5490();

    v147 = 0;
  }

  else
  {
    v147 = 1;
  }

  v148 = sub_1C04F54B0();
  __swift_storeEnumTagSinglePayload(0x1E8117000, v147, 1, v148);
  sub_1C04AE59C(0x1E8117000, 0x1E8117000, &qword_1EBE0CFF8, &qword_1C04F8B10);
  if (__swift_getEnumTagSinglePayload(0x1E8117000, 1, v148) == 1)
  {
    sub_1C0482130(0x1E8117000, &qword_1EBE0CFF8, &qword_1C04F8B10);
    v149 = sub_1C047D36C();
    if (v150)
    {
      v151 = v149;
      swift_isUniquelyReferenced_nonNull_native();
      v265 = v139;
      v152 = *(v139 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_14_1();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_30_0();
      sub_1C04A1208((*(v152 + 56) + 32 * v151), &v266);
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v155 = v263;
    v156 = v260;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    v153 = sub_1C04F5470();
    v267 = MEMORY[0x1E69E6158];
    *&v266 = v153;
    *(&v266 + 1) = v154;
    (*(*(v148 - 8) + 8))(0x1E8117000uLL, v148);
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_3_6();
    sub_1C04A0980();
    v155 = v263;
    v156 = v260;
  }

  v157 = [v75 _redirected];
  v267 = MEMORY[0x1E69E7668];
  LODWORD(v266) = v157;
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_27_0();
  v158 = v264;
  v159 = [v75 connectStartDate];
  if (v159)
  {
    v160 = v159;
    v161 = v250;
    sub_1C04F5440();

    v162 = 0;
    v163 = v251;
  }

  else
  {
    v162 = 1;
    v163 = v251;
    v161 = v250;
  }

  OUTLINED_FUNCTION_22_1(v161, v162);
  sub_1C04AE59C(v161, v163, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v163);
  if (v81)
  {
    sub_1C0482130(v163, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v164)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v155 = v263;
      v156 = v260;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v170 = v243;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v165);
    v167 = *(v166 + 8);
    v168 = OUTLINED_FUNCTION_21_1();
    v169(v168);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
    v170 = v243;
  }

  v171 = [v75 connectEndDate];
  if (v171)
  {
    v172 = v171;
    sub_1C04F5440();

    v173 = 0;
  }

  else
  {
    v173 = 1;
  }

  OUTLINED_FUNCTION_22_1(v170, v173);
  sub_1C04AE59C(v170, v156, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v156);
  if (v81)
  {
    sub_1C0482130(v156, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v174)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      v155 = v263;
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v177 = v244;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v175);
    (*(v176 + 8))(v156, v59);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
    v177 = v244;
  }

  v178 = [v75 domainLookupStartDate];
  if (v178)
  {
    v179 = v178;
    sub_1C04F5440();

    v180 = 0;
  }

  else
  {
    v180 = 1;
  }

  v181 = OUTLINED_FUNCTION_22_1(v155, v180);
  OUTLINED_FUNCTION_32_0(v181, v182, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v177);
  if (v81)
  {
    sub_1C0482130(v177, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v183)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v189 = v245;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v184);
    v186 = *(v185 + 8);
    v187 = OUTLINED_FUNCTION_21_1();
    v188(v187);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
    v189 = v245;
  }

  v190 = [v75 domainLookupEndDate];
  if (v190)
  {
    v191 = v190;
    v192 = v252;
    sub_1C04F5440();

    v193 = 0;
  }

  else
  {
    v193 = 1;
    v192 = v252;
  }

  v194 = OUTLINED_FUNCTION_22_1(v192, v193);
  OUTLINED_FUNCTION_32_0(v194, v195, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v189);
  if (v81)
  {
    sub_1C0482130(v189, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v196)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v202 = v246;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v197);
    v199 = *(v198 + 8);
    v200 = OUTLINED_FUNCTION_21_1();
    v201(v200);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
    v202 = v246;
  }

  v203 = [v75 fetchStartDate];
  if (v203)
  {
    v204 = v203;
    v205 = v253;
    sub_1C04F5440();

    v206 = 0;
  }

  else
  {
    v206 = 1;
    v205 = v253;
  }

  v207 = OUTLINED_FUNCTION_22_1(v205, v206);
  OUTLINED_FUNCTION_32_0(v207, v208, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v202);
  if (v81)
  {
    sub_1C0482130(v202, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_24_1();
    sub_1C047D36C();
    if (v209)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    v215 = v247;
    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v210);
    v212 = *(v211 + 8);
    v213 = OUTLINED_FUNCTION_21_1();
    v214(v213);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
    v215 = v247;
  }

  v216 = [v75 secureConnectionStartDate];
  if (v216)
  {
    v217 = v216;
    sub_1C04F5440();

    v218 = 0;
  }

  else
  {
    v218 = 1;
  }

  OUTLINED_FUNCTION_22_1(v215, v218);
  sub_1C04AE59C(v215, v68, &qword_1EBE0D000, &qword_1C04FAA20);
  OUTLINED_FUNCTION_1_6(v68);
  if (v81)
  {
    sub_1C0482130(v68, &qword_1EBE0D000, &qword_1C04FAA20);
    OUTLINED_FUNCTION_28_0();
    if (v219)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  else
  {
    sub_1C04F5410();
    v267 = MEMORY[0x1E69E63B0];
    OUTLINED_FUNCTION_0_5(v220);
    (*(v221 + 8))(v68, v59);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
  }

  v222 = sub_1C04E596C(v75);
  if (v223)
  {
    v267 = MEMORY[0x1E69E6158];
    *&v266 = v222;
    *(&v266 + 1) = v223;
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    v158 = v264;
  }

  else
  {
    OUTLINED_FUNCTION_28_0();
    if (v224)
    {
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_6_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE90, &qword_1C04F85D0);
      OUTLINED_FUNCTION_2_7();
      sub_1C04F6CC0();
      OUTLINED_FUNCTION_7_6();
      OUTLINED_FUNCTION_18_1();
      OUTLINED_FUNCTION_17_1();
      sub_1C04F6CE0();
    }

    else
    {
      OUTLINED_FUNCTION_13_2();
    }

    sub_1C0482130(&v266, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v225 = sub_1C04AE604(v75, &selRef_remoteAddress);
  if (v226)
  {
    v227 = v225;
    v228 = v226;
    v229 = sub_1C04F6AF0();
    if (v230)
    {
      v231 = 0;
      v232 = 0xE000000000000000;
    }

    else
    {
      *&v266 = 58;
      *(&v266 + 1) = 0xE100000000000000;
      v265 = v229;
      v233 = sub_1C04F6D60();
      MEMORY[0x1C68DC0D0](v233);

      v232 = *(&v266 + 1);
      v231 = v266;
    }

    *&v266 = v227;
    *(&v266 + 1) = v228;
    MEMORY[0x1C68DC0D0](v231, v232);

    v234 = v240;
    sub_1C04F6770();
    v235 = sub_1C04F6760();
    v237 = v236;

    (*(v241 + 8))(v234, v242);
    v267 = MEMORY[0x1E6969080];
    if (v237 >> 60 == 15)
    {
      v238 = 0;
    }

    else
    {
      v238 = v235;
    }

    v239 = 0xC000000000000000;
    if (v237 >> 60 != 15)
    {
      v239 = v237;
    }

    *&v266 = v238;
    *(&v266 + 1) = v239;
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_15_1();
    sub_1C04A0980();
    return v264;
  }

  return v158;
}

char *sub_1C04AE260()
{
  v1 = sub_1C04C95CC(v0);
  if (v1)
  {
    v2 = sub_1C04AE2E4(v1);

    if (v2)
    {
      return v2;
    }
  }

  v4 = [v0 _incompleteCurrentTaskTransactionMetrics];
  v5 = sub_1C04AC540();

  return v5;
}

unint64_t sub_1C04AE2E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CFE8, &qword_1C04F8B00);
    v2 = sub_1C04F6D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1C04A0CCC(*(a1 + 48) + 40 * v10, __src);
    sub_1C047D9A0(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1C04A0CCC(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1C047D9A0(&__dst[40], v22);
    sub_1C0482130(__dst, &qword_1EBE0CFF0, &qword_1C04F8B08);
    v23 = v20;
    sub_1C04A1208(v22, v24);
    v11 = v23;
    sub_1C04A1208(v24, v25);
    sub_1C04A1208(v25, &v23);
    result = sub_1C047D36C();
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = sub_1C04A1208(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1C04A1208(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_1C0482130(__dst, &qword_1EBE0CFF0, &qword_1C04F8B08);

  return 0;
}

uint64_t sub_1C04AE59C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C04AE604(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C04F6750();

  return v4;
}

uint64_t OUTLINED_FUNCTION_7_6()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_10_2()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_13_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{
  sub_1C04A1208((v0 - 128), (v0 - 160));

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_18_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C04A1208(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_19_0()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

_OWORD *OUTLINED_FUNCTION_23_1()
{
  v4 = (*(v1 + 56) + 32 * v0);

  return sub_1C04A1208(v4, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_27_0()
{

  return sub_1C04A0980();
}

unint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_1C047D36C();
}

uint64_t OUTLINED_FUNCTION_30_0()
{
  v3 = *(*(*(v1 - 160) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C04AE59C(v5, v4, a3, a4);
}

uint64_t sub_1C04AE8A8()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE40930);
  __swift_project_value_buffer(v0, qword_1EDE40930);
  return sub_1C04F63F0();
}

void *sub_1C04AE928()
{
  type metadata accessor for PegasusProxyForAssistant();
  swift_allocObject();
  result = PegasusProxyForAssistant.init()();
  qword_1EDE41468 = result;
  return result;
}

uint64_t static PegasusProxyForAssistant.shared.getter()
{
  if (qword_1EDE41460 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04AE9F4()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE41450 = v10;
  *algn_1EDE41458 = v12;
  return result;
}

uint64_t PegasusProxyForAssistant.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

double sub_1C04AEC10()
{
  *&xmmword_1EDE41478 = 0xD000000000000024;
  *(&xmmword_1EDE41478 + 1) = 0x80000001C04FC7D0;
  qword_1EDE41488 = 0x7261655369726953;
  unk_1EDE41490 = 0xEA00000000006863;
  result = 8.89614186e247;
  xmmword_1EDE41498 = xmmword_1C04F80E0;
  return result;
}

void *PegasusProxyForAssistant.init()()
{
  *(v0 + 128) = 0;
  if (qword_1EDE41448 != -1)
  {
    OUTLINED_FUNCTION_8_3();
  }

  v1 = qword_1EDE41450;
  v2 = *algn_1EDE41458;
  v3 = qword_1EDE44538;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_7();
  }

  v4 = qword_1EDE44DC8;
  v5 = qword_1EDE44DC8;
  v6 = sub_1C04B8AAC(v1, v2, 0, 0, 0xF000000000000000, v4);
  v7 = qword_1EDE41E20;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_14();
  }

  if (byte_1EDE44D78 == 1)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v9 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  }

  else
  {
    v9 = 0;
  }

  v10 = v6[16];
  v6[16] = v9;

  return v6;
}

void *PegasusProxyForAssistant.init(endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = 0;
  if (qword_1EDE44538 != -1)
  {
    OUTLINED_FUNCTION_7();
  }

  v5 = qword_1EDE44DC8;
  v6 = qword_1EDE44DC8;

  return sub_1C04B979C(a1, a2, 0, v5);
}

uint64_t sub_1C04AEE50()
{
  v1 = sub_1C04F6200();
  v2 = OUTLINED_FUNCTION_2_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_4();
  v10 = *(v9 + 184);

  v12 = v10(v11);
  sub_1C04F6220();
  v13 = type metadata accessor for ResourceAccessSpan();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v8, v12, v7, 0, 1);
}

uint64_t sub_1C04AEF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F5700();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_1C04B24C0(a1, a2, a3);
  v15 = sub_1C04AF00C();
  (*(v9 + 8))(v14, v6);
  return v15;
}

uint64_t sub_1C04AF00C()
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  OUTLINED_FUNCTION_4();
  (*(v0 + 560))(v1, v2, v3, v4, v5);
  sub_1C04AFAB8();
  v7 = v6;

  sub_1C04A12B4(v9, &qword_1EBE0CE40, &qword_1C04F8900);
  return v7;
}

uint64_t sub_1C04AF0AC()
{
  OUTLINED_FUNCTION_4();
  (*(v0 + 560))();
  sub_1C04AFAB8();
  v2 = v1;

  return v2;
}

void sub_1C04AF124()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  OUTLINED_FUNCTION_152(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D060, &qword_1C04F8C88);
  OUTLINED_FUNCTION_0(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = *v3;
  if (qword_1EDE40928 != -1)
  {
    OUTLINED_FUNCTION_4_6();
  }

  v19 = sub_1C04F6400();
  __swift_project_value_buffer(v19, qword_1EDE40930);
  v20 = sub_1C04F63E0();
  v21 = sub_1C04F6A20();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v34 = v10;
    v23 = v22;
    v32 = swift_slowAlloc();
    v33 = v1;
    v36 = v32;
    *v23 = 136315138;
    v35 = v18;
    v24 = sub_1C04F6790();
    v26 = v12;
    v27 = v18;
    v28 = sub_1C047D76C(v24, v25, &v36);

    *(v23 + 4) = v28;
    v18 = v27;
    v12 = v26;
    _os_log_impl(&dword_1C0479000, v20, v21, "Pegasus for Assistant is disabled: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v1 = v33;
    OUTLINED_FUNCTION_10_0();
    v10 = v34;
    OUTLINED_FUNCTION_10_0();
  }

  if (v18 == 1)
  {
    v29 = 34;
  }

  else
  {
    v29 = 47;
  }

  if (v18 == 1)
  {
    v30 = 3;
  }

  else
  {
    v30 = 4;
  }

  *(v1 + qword_1EDE44718) = v29;
  sub_1C0483574();
  *v9 = v30;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88);
  sub_1C04F64E0();
  (*(v12 + 8))(v17, v10);
  OUTLINED_FUNCTION_6();
}

void sub_1C04AF3FC()
{
  OUTLINED_FUNCTION_7_0();
  v44 = v0;
  v55 = v1;
  v49 = v2;
  v50 = v3;
  v47 = sub_1C04F5700();
  v4 = OUTLINED_FUNCTION_0(v47);
  v6 = v5;
  v48 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  OUTLINED_FUNCTION_0(v51);
  v54 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D048, &unk_1C04F8C70);
  v52 = OUTLINED_FUNCTION_0(v23);
  v53 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v43 - v28;
  v30 = *(v0 + 120);
  *&v56[0] = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  OUTLINED_FUNCTION_3();
  v45 = v31;
  sub_1C047C1A4(v32, &qword_1EBE0D1E0, &qword_1C04F9180);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60);
  sub_1C04F6510();
  (*(v11 + 8))(v16, v9);
  v34 = v46;
  v33 = v47;
  (*(v6 + 16))(v46, v49, v47);
  sub_1C04A13B0(v50, v56, &qword_1EBE0CE40, &qword_1C04F8900);
  v35 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v36 = (v48 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  (*(v6 + 32))(v37 + v35, v34, v33);
  v38 = v37 + v36;
  v39 = v56[1];
  *v38 = v56[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v57;
  *(v37 + ((v36 + 47) & 0xFFFFFFFFFFFFFFF8)) = v55;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540);
  sub_1C047C1A4(&qword_1EDE40890, &qword_1EBE0D018, &qword_1C04F8B38);
  v40 = v51;
  sub_1C04F65B0();

  (*(v54 + 8))(v22, v40);
  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v41, &qword_1EBE0D048, &unk_1C04F8C70);
  v42 = v52;
  sub_1C04F64E0();
  (*(v53 + 8))(v29, v42);
  OUTLINED_FUNCTION_6();
}

void sub_1C04AF8C0(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  if (qword_1EDE40928 != -1)
  {
    swift_once();
  }

  v10 = sub_1C04F6400();
  __swift_project_value_buffer(v10, qword_1EDE40930);
  v11 = sub_1C04F63E0();
  v12 = sub_1C04F6A10();
  if (os_log_type_enabled(v11, v12))
  {
    buf = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *buf = 136315138;
    v13 = sub_1C04F6790();
    v15 = sub_1C047D76C(v13, v14, &v19);

    *(buf + 4) = v15;
    _os_log_impl(&dword_1C0479000, v11, v12, "Retrying with enabledState status: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1C68DCEB0](v18, -1, -1);
    MEMORY[0x1C68DCEB0](buf, -1, -1);
  }

  if (v9 == 4)
  {
    v21 = 0;
LABEL_10:
    sub_1C04AF124();
    goto LABEL_11;
  }

  if (v9 != 5)
  {
    v20 = v9;
    goto LABEL_10;
  }

  v16 = sub_1C04AFAB8(a2, a3, a4);
LABEL_11:
  *a5 = v16;
}

void sub_1C04AFAB8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_4();
  v75 = v8;
  v9 = sub_1C04F5700();
  v10 = OUTLINED_FUNCTION_0(v9);
  v74 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D068, &unk_1C04F8C90);
  v15 = OUTLINED_FUNCTION_0(v14);
  v77 = v16;
  v78 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v68 - v20;
  v72 = sub_1C04F54B0();
  v21 = OUTLINED_FUNCTION_0(v72);
  v71 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v70 = v26 - v25;
  if (qword_1EDE41448 != -1)
  {
    OUTLINED_FUNCTION_8_3();
  }

  v27 = qword_1EDE41450;
  v28 = *algn_1EDE41458;

  v29 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v83[0] = v29;
  sub_1C049FB48(v27, v28, 0x6567612D72657375, 0xEA0000000000746ELL);
  v30 = sub_1C04B7390(v83[0]);
  if ((*(*v1 + 184))(v30) == 13)
  {
    if (qword_1EDE40928 != -1)
    {
      OUTLINED_FUNCTION_4_6();
    }

    v31 = sub_1C04F6400();
    __swift_project_value_buffer(v31, qword_1EDE40930);

    v32 = sub_1C04F63E0();
    v33 = sub_1C04F6A10();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v68 = v7;
      v35 = v34;
      v36 = swift_slowAlloc();
      v69 = v9;
      v37 = v36;
      v83[0] = v36;
      *v35 = 136315138;
      v38 = *(v1[15] + 16);
      sub_1C04F6490();
      v80 = v81;
      v39 = sub_1C04F6790();
      v41 = v5;
      v42 = v3;
      v43 = v13;
      v44 = sub_1C047D76C(v39, v40, v83);

      *(v35 + 4) = v44;
      v13 = v43;
      v3 = v42;
      v5 = v41;
      _os_log_impl(&dword_1C0479000, v32, v33, "Processing enabledState status: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      v9 = v69;
      OUTLINED_FUNCTION_10_0();
      v7 = v68;
      OUTLINED_FUNCTION_10_0();
    }

    v45 = *(v1[15] + 16);
    sub_1C04F6490();
    if (LOBYTE(v83[0]) == 4)
    {
      sub_1C04AF3FC();
      goto LABEL_19;
    }

    if (LOBYTE(v83[0]) != 5)
    {
      LOBYTE(v81) = v83[0];
      sub_1C04AF124();
      goto LABEL_19;
    }
  }

  sub_1C04A13B0(v5, &v81, &qword_1EBE0CE40, &qword_1C04F8900);
  if (v82)
  {
    sub_1C047E140(&v81, v83);
  }

  else
  {
    v46 = swift_allocObject();
    swift_weakInit();
    v83[3] = &type metadata for NetworkFeedbackGenerator;
    v83[4] = &protocol witness table for NetworkFeedbackGenerator;
    v47 = swift_allocObject();
    v83[0] = v47;

    v48 = v70;
    sub_1C04F54A0();
    v49 = v3;
    v50 = sub_1C04F5470();
    v51 = v13;
    v52 = v7;
    v54 = v53;
    (*(v71 + 8))(v48, v72);

    *(v47 + 16) = v50;
    *(v47 + 24) = v54;
    v3 = v49;
    v7 = v52;
    v13 = v51;
    *(v47 + 32) = 0;
    *(v47 + 40) = sub_1C04B310C;
    *(v47 + 48) = v46;
    if (v82)
    {
      sub_1C04A12B4(&v81, &qword_1EBE0CE40, &qword_1C04F8900);
    }
  }

  v72 = v3;
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v55 = sub_1C04D0244(3, 0);
  v71 = v55;

  v79 = v55;
  v57 = v73;
  v56 = v74;
  (*(v74 + 16))(v73, v7, v9);
  sub_1C04A61B0(v83, &v81);
  v58 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v59 = (v13 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  (*(v56 + 32))(v62 + v58, v57, v9);
  *(v62 + v59) = v1;
  *(v62 + v60) = v72;
  sub_1C047E140(&v81, v62 + v61);
  *(v62 + ((v61 + 47) & 0xFFFFFFFFFFFFFFF8)) = v75;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350);
  sub_1C047C1A4(&qword_1EDE40890, &qword_1EBE0D018, &qword_1C04F8B38);
  v63 = v76;
  sub_1C04F65B0();

  OUTLINED_FUNCTION_2_8();
  sub_1C047C1A4(v64, v65, v66);
  v67 = v78;
  sub_1C04F64E0();
  (*(v77 + 8))(v63, v67);
  __swift_destroy_boxed_opaque_existential_1(v83);
LABEL_19:
  OUTLINED_FUNCTION_6();
}