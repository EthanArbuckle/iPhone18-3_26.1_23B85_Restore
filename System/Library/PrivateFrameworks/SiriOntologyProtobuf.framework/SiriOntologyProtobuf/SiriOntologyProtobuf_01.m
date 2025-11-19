uint64_t sub_2685BEF9C(int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = sub_2686897E4();
  v9 = *a1;
  v10 = a1[1];
  if (v10 < v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(a1 + 1);

  result = sub_268689764();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  result = sub_268689794();
  v13 = v9 - result;
  if (__OFSUB__(v9, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v10 - v9;
  v15 = sub_268689784();
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  sub_2685BAB8C((v12 + v13), v12 + v13 + v16, a2, a3, a4);
}

uint64_t sub_2685BF074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *, uint64_t))
{
  result = sub_268689764();
  v11 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = sub_268689784();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = sub_2685BD784(v11, v17, a4, a5, &v18);
  if (!v5)
  {
    return v18;
  }

  return result;
}

unint64_t sub_2685BF134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_268689764();
  v9 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = sub_268689784();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  result = sub_2685BD18C(v9, v15, a4, &v16);
  if (!v4)
  {
    return v16 | (v17 << 32);
  }

  return result;
}

uint64_t sub_2685BF1F0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26861C48C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_268689D24();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_268689A84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26861C48C(v10, 0);
        result = sub_268689CC4();
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2685BF3A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2685BF3EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2685BF44C(unint64_t a1, unint64_t a2)
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
    v8 = MEMORY[0x277D84F90];
LABEL_202:
    v60 = sub_2685B4E1C(v8 + 32, *(v8 + 2));

    return v60;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = MEMORY[0x277D84F90];
  v9 = 15;
  while (1)
  {
    v10 = v9 & 0xC;
    result = v9;
    if (v10 == v7)
    {
      result = sub_26866A0F8(v9, a1, a2);
    }

    v12 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268689AB4();
      v13 = result;
      if (v10 != v7)
      {
        goto LABEL_20;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v62 = a1;
      v63 = a2 & 0xFFFFFFFFFFFFFFLL;
      v13 = *(&v62 + v12);
      if (v10 != v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_268689D24();
      }

      v13 = *(result + v12);
      if (v10 != v7)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }
    }

    result = sub_26866A0F8(v9, a1, a2);
    v9 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_21:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_26;
    }

LABEL_24:
    if (v4 <= v9 >> 16)
    {
      goto LABEL_206;
    }

    v9 = sub_268689A94();
LABEL_26:
    if (v13 != 92)
    {
      goto LABEL_48;
    }

    if (v5 == v9 >> 14)
    {
      goto LABEL_203;
    }

    v14 = v9 & 0xC;
    result = v9;
    if (v14 == v7)
    {
      result = sub_26866A0F8(v9, a1, a2);
    }

    v15 = result >> 16;
    if (result >> 16 >= v4)
    {
      goto LABEL_207;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268689AB4();
      v13 = result;
      if (v14 != v7)
      {
        goto LABEL_38;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v62 = a1;
      v63 = a2 & 0xFFFFFFFFFFFFFFLL;
      v13 = *(&v62 + v15);
      if (v14 != v7)
      {
        goto LABEL_38;
      }
    }

    else
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = sub_268689D24();
      }

      v13 = *(result + v15);
      if (v14 != v7)
      {
LABEL_38:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }
    }

    result = sub_26866A0F8(v9, a1, a2);
    v9 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_39:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_44;
    }

LABEL_42:
    if (v4 <= v9 >> 16)
    {
      goto LABEL_208;
    }

    v9 = sub_268689A94();
LABEL_44:
    if ((v13 - 56) >= 0xF8u)
    {
      v19 = v5;
      v20 = v13 - 48;
      if (v19 == v9 >> 14)
      {
        goto LABEL_152;
      }

      result = v9;
      if ((v9 & 0xC) == v7)
      {
        result = sub_26866A0F8(v9, a1, a2);
      }

      v21 = result >> 16;
      if (result >> 16 >= v4)
      {
        goto LABEL_209;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v23 = sub_268689AB4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v62 = a1;
        v63 = a2 & 0xFFFFFFFFFFFFFFLL;
        v23 = *(&v62 + v21);
      }

      else
      {
        v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v22 = sub_268689D24();
        }

        v23 = *(v22 + v21);
      }

      result = v9;
      if ((v9 & 0xC) == v7)
      {
        result = sub_26866A0F8(v9, a1, a2);
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_149;
        }

LABEL_87:
        v29 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      }

      else
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_87;
        }

LABEL_149:
        if (v4 <= result >> 16)
        {
          goto LABEL_210;
        }

        v29 = sub_268689A94();
      }

      if ((v23 - 56) < 0xF8u)
      {
LABEL_152:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
        }

        v49 = *(v8 + 2);
        v48 = *(v8 + 3);
        if (v49 >= v48 >> 1)
        {
          v8 = sub_2685B3F48((v48 > 1), v49 + 1, 1, v8);
        }

        *(v8 + 2) = v49 + 1;
        v8[v49 + 32] = v20;

        v5 = 4 * v4;
        goto LABEL_9;
      }

      v61 = v23 - 48;
      if (4 * v4 == v29 >> 14)
      {
        goto LABEL_175;
      }

      result = v29;
      if ((v29 & 0xC) == v7)
      {
        result = sub_26866A0F8(v29, a1, a2);
      }

      v50 = result >> 16;
      if (result >> 16 >= v4)
      {
        goto LABEL_211;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v52 = sub_268689AB4();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v62 = a1;
        v63 = a2 & 0xFFFFFFFFFFFFFFLL;
        v52 = *(&v62 + v50);
      }

      else
      {
        v51 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v51 = sub_268689D24();
        }

        v52 = *(v51 + v50);
      }

      result = v29;
      if ((v29 & 0xC) == v7)
      {
        result = sub_26866A0F8(v29, a1, a2);
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_172;
        }

LABEL_170:
        v9 = (result & 0xFFFFFFFFFFFF0000) + 65540;
      }

      else
      {
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_170;
        }

LABEL_172:
        if (v4 <= result >> 16)
        {
          goto LABEL_213;
        }

        result = sub_268689A94();
        v9 = result;
      }

      if ((v52 - 56) < 0xF8u)
      {
LABEL_175:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
        }

        v54 = *(v8 + 2);
        v53 = *(v8 + 3);
        if (v54 >= v53 >> 1)
        {
          v8 = sub_2685B3F48((v53 > 1), v54 + 1, 1, v8);
        }

        *(v8 + 2) = v54 + 1;
        v8[v54 + 32] = v61 | (8 * v20);

        v9 = v29;
        v5 = 4 * v4;
        goto LABEL_9;
      }

      if ((v13 - 48) > 3u)
      {
        goto LABEL_214;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      }

      v56 = *(v8 + 2);
      v55 = *(v8 + 3);
      if (v56 >= v55 >> 1)
      {
        v8 = sub_2685B3F48((v55 > 1), v56 + 1, 1, v8);
      }

      *(v8 + 2) = v56 + 1;
      v8[v56 + 32] = v52 + ((8 * v61) | (v13 << 6)) - 48;
      v5 = 4 * v4;
      goto LABEL_9;
    }

    if (v13 > 0x65u)
    {
      if (v13 > 0x73u)
      {
        if (v13 == 116)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v41 = *(v8 + 2);
          v40 = *(v8 + 3);
          if (v41 >= v40 >> 1)
          {
            v8 = sub_2685B3F48((v40 > 1), v41 + 1, 1, v8);
          }

          *(v8 + 2) = v41 + 1;
          v8[v41 + 32] = 9;
          goto LABEL_9;
        }

        if (v13 == 118)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v37 = *(v8 + 2);
          v36 = *(v8 + 3);
          if (v37 >= v36 >> 1)
          {
            v8 = sub_2685B3F48((v36 > 1), v37 + 1, 1, v8);
          }

          *(v8 + 2) = v37 + 1;
          v8[v37 + 32] = 11;
          goto LABEL_9;
        }

        if (v13 != 120 || v5 == v9 >> 14)
        {
LABEL_203:

          return 0;
        }

        v26 = v9 & 0xC;
        result = v9;
        if (v26 == v7)
        {
          result = sub_26866A0F8(v9, a1, a2);
        }

        v27 = result >> 16;
        if (result >> 16 >= v4)
        {
          goto LABEL_212;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          result = sub_268689AB4();
          v28 = result;
          if (v26 == v7)
          {
            goto LABEL_124;
          }
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v62 = a1;
          v63 = a2 & 0xFFFFFFFFFFFFFFLL;
          v28 = *(&v62 + v27);
          if (v26 == v7)
          {
            goto LABEL_124;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_268689D24();
          }

          v28 = *(result + v27);
          if (v26 == v7)
          {
LABEL_124:
            result = sub_26866A0F8(v9, a1, a2);
            v9 = result;
            if ((a2 & 0x1000000000000000) != 0)
            {
LABEL_125:
              if (v4 <= v9 >> 16)
              {
                goto LABEL_215;
              }

              v9 = sub_268689A94();
LABEL_127:
              if ((v28 - 58) > 0xF5u)
              {
                v42 = -48;
              }

              else if ((v28 - 71) > 0xF9u)
              {
                v42 = -55;
              }

              else
              {
                if (v28 < 0x61u || v28 >= 0x67u)
                {
                  goto LABEL_203;
                }

                v42 = -87;
              }

              v43 = v28 + v42;
              if (v5 == v9 >> 14)
              {
                goto LABEL_196;
              }

              result = v9;
              if ((v9 & 0xC) == v7)
              {
                result = sub_26866A0F8(v9, a1, a2);
              }

              v44 = result >> 16;
              if (result >> 16 >= v4)
              {
                goto LABEL_216;
              }

              if ((a2 & 0x1000000000000000) != 0)
              {
                v46 = sub_268689AB4();
              }

              else if ((a2 & 0x2000000000000000) != 0)
              {
                v62 = a1;
                v63 = a2 & 0xFFFFFFFFFFFFFFLL;
                v46 = *(&v62 + v44);
              }

              else
              {
                v45 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
                if ((a1 & 0x1000000000000000) == 0)
                {
                  v45 = sub_268689D24();
                }

                v46 = *(v45 + v44);
              }

              result = v9;
              if ((v9 & 0xC) == v7)
              {
                result = sub_26866A0F8(v9, a1, a2);
                if ((a2 & 0x1000000000000000) != 0)
                {
                  goto LABEL_187;
                }

LABEL_147:
                v47 = (result & 0xFFFFFFFFFFFF0000) + 65540;
              }

              else
              {
                if ((a2 & 0x1000000000000000) == 0)
                {
                  goto LABEL_147;
                }

LABEL_187:
                if (v4 <= result >> 16)
                {
                  goto LABEL_217;
                }

                v47 = sub_268689A94();
              }

              if ((v46 - 58) > 0xF5u)
              {
                v57 = -48;
              }

              else
              {
                if ((v46 - 71) <= 0xF9u)
                {
                  if ((v46 - 103) >= 0xFAu)
                  {
                    v57 = -87;
                    goto LABEL_195;
                  }

LABEL_196:

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
                  }

                  v59 = *(v8 + 2);
                  v58 = *(v8 + 3);
                  if (v59 >= v58 >> 1)
                  {
                    v8 = sub_2685B3F48((v58 > 1), v59 + 1, 1, v8);
                  }

                  *(v8 + 2) = v59 + 1;
                  v8[v59 + 32] = v43;
                  goto LABEL_9;
                }

                v57 = -55;
              }

LABEL_195:
              v43 = v46 + v57 + 16 * v43;
              v9 = v47;
              goto LABEL_196;
            }

LABEL_122:
            v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_127;
          }
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_125;
        }

        goto LABEL_122;
      }

      switch(v13)
      {
        case 'f':
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v39 = *(v8 + 2);
          v38 = *(v8 + 3);
          if (v39 >= v38 >> 1)
          {
            v8 = sub_2685B3F48((v38 > 1), v39 + 1, 1, v8);
          }

          *(v8 + 2) = v39 + 1;
          v8[v39 + 32] = 12;
          break;
        case 'n':
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v35 = *(v8 + 2);
          v34 = *(v8 + 3);
          if (v35 >= v34 >> 1)
          {
            v8 = sub_2685B3F48((v34 > 1), v35 + 1, 1, v8);
          }

          *(v8 + 2) = v35 + 1;
          v8[v35 + 32] = 10;
          break;
        case 'r':
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v25 = *(v8 + 2);
          v24 = *(v8 + 3);
          if (v25 >= v24 >> 1)
          {
            v8 = sub_2685B3F48((v24 > 1), v25 + 1, 1, v8);
          }

          *(v8 + 2) = v25 + 1;
          v8[v25 + 32] = 13;
          break;
        default:
          goto LABEL_203;
      }
    }

    else
    {
      v16 = v13 - 34;
      if (v16 <= 0x3F)
      {
        if (((1 << (v13 - 34)) & 0x400000020000021) != 0)
        {
LABEL_48:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          if (v18 >= v17 >> 1)
          {
            v8 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v8[v18 + 32] = v13;
          goto LABEL_9;
        }

        if (v16 == 63)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
          }

          v31 = *(v8 + 2);
          v30 = *(v8 + 3);
          if (v31 >= v30 >> 1)
          {
            v8 = sub_2685B3F48((v30 > 1), v31 + 1, 1, v8);
          }

          *(v8 + 2) = v31 + 1;
          v8[v31 + 32] = 7;
          goto LABEL_9;
        }
      }

      if (v13 != 98)
      {
        goto LABEL_203;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      }

      v33 = *(v8 + 2);
      v32 = *(v8 + 3);
      if (v33 >= v32 >> 1)
      {
        v8 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v8);
      }

      *(v8 + 2) = v33 + 1;
      v8[v33 + 32] = 8;
    }

LABEL_9:
    if (v5 == v9 >> 14)
    {
      goto LABEL_202;
    }
  }

  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
  return result;
}

void sub_2685C01A0()
{
  v2 = *(v0 + 40);
  for (i = *(v0 + 48); v2 != i; *(v0 + 40) = v2)
  {
    v3 = *v2;
    if (v3 > 0x23)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) != 0)
    {
      ++v2;
    }

    else
    {
      if (v3 != 35)
      {
        return;
      }

      *(v0 + 40) = ++v2;
      while (v2 != i)
      {
        v5 = *v2++;
        v4 = v5;
        if (v5 == 10 || v4 == 13)
        {
          goto LABEL_4;
        }
      }

      v2 = i;
    }

LABEL_4:
    ;
  }
}

unsigned __int8 *sub_2685C021C()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = result;
  if (result != v2)
  {
    v3 = *(v0 + 40);
    do
    {
      v4 = *v3;
      if ((v4 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v4 != 95 && (v4 - 48) > 9)
      {
        break;
      }

      *(v0 + 40) = ++v3;
    }

    while (v3 != v2);
  }

  if (v3 != v2)
  {
    v6 = v3;
    do
    {
      v7 = *v6;
      if (v7 > 0x23)
      {
        break;
      }

      if (((1 << v7) & 0x100002600) != 0)
      {
        ++v6;
      }

      else
      {
        if (v7 != 35)
        {
          return result;
        }

        *(v0 + 40) = ++v6;
        while (v6 != v2)
        {
          v9 = *v6++;
          v8 = v9;
          if (v9 == 10 || v8 == 13)
          {
            goto LABEL_13;
          }
        }

        v6 = v2;
      }

LABEL_13:
      *(v0 + 40) = v6;
    }

    while (v6 != v2);
  }

  return result;
}

uint64_t (*sub_2685C02E8())()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v1 == v2)
  {
    return 0;
  }

  if ((*v1 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    return 0;
  }

  *(v0 + 40) = v1 + 1;
  if (v1 + 1 == v2)
  {
    return 0;
  }

  v3 = 1;
  while (1)
  {
    v4 = v1[v3];
    v5 = (v4 - 58) > 0xFFFFFFF5 || (v4 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
    if (!v5 && (v4 - 46) >= 2 && v4 != 95)
    {
      break;
    }

    *(v0 + 40) = &v1[++v3];
    if (&v1[v3] == v2)
    {
      return 0;
    }
  }

  if (v4 != 93)
  {
    return 0;
  }

  else
  {
    return sub_2685B4E1C(v1, v3);
  }
}

uint64_t sub_2685C039C(uint64_t result, char *a2)
{
  v3 = *(v2 + 40);
  *a2 = 0;
  v4 = *(v2 + 48);
  if (v3 == v4)
  {
    v6 = 0;
    v5 = 0;
LABEL_40:
    *a2 = v5;
    sub_2685C1CBC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return v6;
  }

  v5 = 0;
  v6 = 0;
  v7 = result;
  v8 = v3;
  v9 = v3;
  while (1)
  {
    v12 = *v9++;
    v11 = v12;
    *(v2 + 40) = v9;
    if (v12 == v7)
    {
      *a2 = v5 & 1;
      *(v2 + 40) = v3;
      return v6;
    }

    if (v11 == 92)
    {
      if (v9 == v4)
      {
        v5 = 1;
        goto LABEL_40;
      }

      v13 = v8[1];
      v9 = v8 + 2;
      *(v2 + 40) = v8 + 2;
      if (v13 - 56 >= 0xFFFFFFF8)
      {
        if (v9 != v4 && *v9 - 56 >= 0xFFFFFFF8)
        {
          v9 = v8 + 3;
          *(v2 + 40) = v8 + 3;
          if (v8 + 3 != v4 && *v9 - 56 >= 0xFFFFFFF8)
          {
            if (v13 > 0x33)
            {
LABEL_42:
              v5 = 1;
              goto LABEL_40;
            }

            v9 = v8 + 4;
            *(v2 + 40) = v8 + 4;
          }
        }

        v10 = __OFADD__(v6++, 1);
        if (v10)
        {
          goto LABEL_44;
        }

        goto LABEL_36;
      }

      if (v13 - 97 <= 0x17)
      {
        result = (1 << (v13 - 97));
        if ((result & 0x2A2023) != 0)
        {
          goto LABEL_35;
        }

        if (v13 == 120)
        {
          if (v9 == v4)
          {
            goto LABEL_42;
          }

          v14 = *v9;
          if ((v14 - 58) <= 0xF5u)
          {
            v5 = 1;
            v15 = v14 - 65;
            if (v15 > 0x25 || ((1 << v15) & 0x3F0000003FLL) == 0)
            {
              goto LABEL_40;
            }
          }

          v9 = v8 + 3;
          *(v2 + 40) = v8 + 3;
          if (v8 + 3 != v4)
          {
            if ((*v9 - 58) > 0xF5u || (v16 = *v9 - 65, v16 <= 0x25) && ((1 << v16) & 0x3F0000003FLL) != 0)
            {
              v9 = v8 + 4;
              *(v2 + 40) = v8 + 4;
            }
          }

          v10 = __OFADD__(v6++, 1);
          if (v10)
          {
            goto LABEL_46;
          }

LABEL_36:
          v5 = 1;
          goto LABEL_4;
        }
      }

      v5 = 1;
      if (v13 - 34 > 0x3A || ((1 << (v13 - 34)) & 0x400000020000021) == 0)
      {
        goto LABEL_40;
      }

LABEL_35:
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        goto LABEL_45;
      }

      goto LABEL_36;
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      break;
    }

LABEL_4:
    v8 = v9;
    if (v9 == v4)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

_BYTE *sub_2685C05EC(_BYTE *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (result && a2 - result >= 1)
  {
    v4 = *(a3 + 40);
    v5 = *v4;
    if (v5 == a4)
    {
LABEL_4:
      *(a3 + 40) = v4 + 1;
      return result;
    }

    while (1)
    {
      *(a3 + 40) = v4 + 1;
      if (v5 == 92)
      {
        v7 = v4[1];
        v8 = (v4 + 2);
        *(a3 + 40) = v4 + 2;
        if ((v7 - 56) >= 0xF8u)
        {
          LOBYTE(v5) = v7 - 48;
          v10 = *v8;
          if ((v10 - 56) >= 0xF8u)
          {
            *(a3 + 40) = v4 + 3;
            v11 = v10 - 48;
            v12 = v4[3];
            if ((v12 - 56) >= 0xF8u)
            {
              *(a3 + 40) = v4 + 4;
              LOBYTE(v5) = v12 + ((8 * v11) | (v7 << 6)) - 48;
            }

            else
            {
              LOBYTE(v5) = v11 | (8 * v5);
            }
          }

          goto LABEL_19;
        }

        if (v7 <= 113)
        {
          if (v7 == 110)
          {
            v6 = 10;
          }

          else
          {
            v6 = v7;
          }

          if (v7 == 102)
          {
            v6 = 12;
          }

          if (v7 == 98)
          {
            LOBYTE(v5) = 8;
          }

          else
          {
            LOBYTE(v5) = v7;
          }

          if (v7 == 97)
          {
            LOBYTE(v5) = 7;
          }

          if (v7 > 101)
          {
            LOBYTE(v5) = v6;
          }

          goto LABEL_19;
        }

        if (v7 <= 117)
        {
          if (v7 == 116)
          {
            v9 = 9;
          }

          else
          {
            v9 = v7;
          }

          if (v7 == 114)
          {
            LOBYTE(v5) = 13;
          }

          else
          {
            LOBYTE(v5) = v9;
          }

          goto LABEL_19;
        }

        if (v7 == 118)
        {
          LOBYTE(v5) = 11;
        }

        else if (v7 == 120)
        {
          v13 = *v8;
          if ((*v8 - 58) > 0xF5u)
          {
            v14 = -48;
          }

          else if ((v13 - 71) > 0xF9u)
          {
            v14 = -55;
          }

          else
          {
            if ((v13 - 103) < 0xFAu)
            {
              __break(1u);
              return result;
            }

            v14 = -87;
          }

          LOBYTE(v5) = v13 + v14;
          *(a3 + 40) = v4 + 3;
          v15 = v4[3];
          if ((v15 - 58) > 0xF5u)
          {
            v16 = -48;
            goto LABEL_50;
          }

          if ((v15 - 71) > 0xF9u)
          {
            v16 = -55;
            goto LABEL_50;
          }

          if ((v15 - 103) >= 0xFAu)
          {
            v16 = -87;
LABEL_50:
            LOBYTE(v5) = v15 + v16 + 16 * v5;
            *(a3 + 40) = v4 + 4;
          }
        }

        else
        {
          LOBYTE(v5) = v7;
        }
      }

LABEL_19:
      *result++ = v5;
      v4 = *(a3 + 40);
      v5 = *v4;
      if (v5 == a4)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t (*sub_2685C07F4(unsigned __int8 a1))()
{
  v2 = 0;
  v3 = a1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v4;
LABEL_2:
  v7 = v6 - v4;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v8 = *v6;
    if (v8 == v3)
    {
      break;
    }

    *(v1 + 40) = ++v6;
    ++v7;
    if (v8 == 92)
    {
      if (v6 != v5)
      {
        *(v1 + 40) = ++v6;
        v2 = 1;
        goto LABEL_2;
      }

      return 0;
    }
  }

  v10 = sub_2685B4E1C(v4, v7);
  v12 = v11;
  *(v1 + 40) = v6 + 1;
  sub_2685C01A0();
  result = v10;
  if (v12 != 0 && (v2 & 1) != 0)
  {
    v13 = sub_2685BF44C(v10, v12);

    return v13;
  }

  return result;
}

unint64_t sub_2685C08D4()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v3 == v2)
  {
    goto LABEL_16;
  }

  v4 = v3 + 1;
  v5 = *v3;
  *(v0 + 40) = v3 + 1;
  if (v5 != 48)
  {
    if ((v5 - 58) >= 0xF7u)
    {
      for (i = (v5 - 48); ; i = 10 * i + v12)
      {
        if (v4 == v2)
        {
          goto LABEL_37;
        }

        v11 = *v4;
        if (v11 == 117)
        {
          goto LABEL_35;
        }

        if ((v11 - 58) <= 0xF5u)
        {
          goto LABEL_37;
        }

        if (i > 0x1999999999999999)
        {
          break;
        }

        v12 = (v11 - 48);
        if (__CFADD__(v12, 10 * i))
        {
          break;
        }

        *(v0 + 40) = ++v4;
      }
    }

    goto LABEL_16;
  }

  v6 = *v4;
  if (v6 != 120)
  {
    if (v4 == v2)
    {
      goto LABEL_27;
    }

    if (v6 == 117)
    {
      i = 0;
      v10 = v3 + 2;
      goto LABEL_36;
    }

    i = 0;
    v13 = v3 + 2;
    while (1)
    {
      if ((v6 - 56) <= 0xF7u)
      {
        goto LABEL_37;
      }

      if (i >> 61)
      {
        break;
      }

      *(v0 + 40) = v13;
      i = (v6 - 48) | (8 * i);
      if (v13 == v2)
      {
        goto LABEL_37;
      }

      v14 = *v13++;
      LOBYTE(v6) = v14;
      if (v14 == 117)
      {
        v10 = v13;
        goto LABEL_36;
      }
    }

LABEL_16:
    sub_2685C1CBC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return i;
  }

  v4 = v3 + 2;
  *(v0 + 40) = v3 + 2;
  if (v3 + 2 == v2)
  {
LABEL_27:
    i = 0;
    goto LABEL_37;
  }

  i = 0;
  while (1)
  {
    v8 = *v4;
    if ((v8 - 58) > 0xF5u)
    {
      v7 = -48;
      if (i >> 60)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    if ((v8 - 103) <= 0xF9u)
    {
      break;
    }

    v7 = -87;
    if (i >> 60)
    {
      goto LABEL_16;
    }

LABEL_7:
    *(v0 + 40) = ++v4;
    i = 16 * i + (v8 + v7);
    if (v4 == v2)
    {
      goto LABEL_37;
    }
  }

  if ((v8 - 71) > 0xF9u)
  {
    v7 = -55;
    if (i >> 60)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v8 == 117)
  {
LABEL_35:
    v10 = v4 + 1;
LABEL_36:
    *(v0 + 40) = v10;
  }

LABEL_37:
  sub_2685C01A0();
  return i;
}

unint64_t sub_2685C0AEC()
{
  v2 = *(v0 + 40);
  if (v2 == *(v0 + 48))
  {
    goto LABEL_9;
  }

  if (*v2 != 45)
  {
    result = sub_2685C08D4();
    if (v1 || (result & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    sub_2685C1CBC();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }

  *(v0 + 40) = v2 + 1;
  if (v2[1] - 58 <= 0xFFFFFFF5)
  {
    goto LABEL_9;
  }

  result = sub_2685C08D4();
  if (!v1)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return -result;
    }

    v5 = result;
    result = 0x8000000000000000;
    if (v5 != 0x8000000000000000)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_2685C0BA8()
{
  v1 = v0;
  sub_2685C01A0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (v2 != v3 && ((v4 = *v2, v4 == 39) || v4 == 34) && (*(v0 + 40) = v2 + 1, v5 = sub_2685C07F4(v4), v6))
  {
    v25 = v5;
    v7 = *(v0 + 40);
    if (v7 != v3)
    {
      while (2)
      {
        v8 = *v7;
        if (v8 == 34 || v8 == 39)
        {
          v9 = 0;
          *(v1 + 40) = v7 + 1;
          v10 = (v7 + 1);
LABEL_9:
          v11 = &v10[~v7];
          v12 = v10;
          while (1)
          {
            if (v12 == v3)
            {
              v12 = v3;
              goto LABEL_34;
            }

            v13 = *v12;
            if (v13 == v8)
            {
              break;
            }

            ++v12;
            ++v11;
            if (v13 == 92)
            {
              v10 = v12 + 1;
              v9 = 1;
              if (v12 != v3)
              {
                goto LABEL_9;
              }

LABEL_34:
              *(v1 + 40) = v12;
LABEL_35:

              goto LABEL_36;
            }
          }

          *(v1 + 40) = v12;
          v14 = sub_2685B4E1C(v7 + 1, v11);
          v16 = v15;
          v7 = (v12 + 1);
LABEL_17:
          while (1)
          {
            *(v1 + 40) = v7;
            if (v7 == v3)
            {
              break;
            }

            v17 = *v7;
            if (v17 > 0x23)
            {
              break;
            }

            if (((1 << v17) & 0x100002600) != 0)
            {
              ++v7;
            }

            else
            {
              if (v17 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v7;
              while (v7 != v3)
              {
                v19 = *v7++;
                v18 = v19;
                if (v19 == 10 || v18 == 13)
                {
                  goto LABEL_17;
                }
              }

              v7 = v3;
            }
          }

          if (!v15)
          {
            goto LABEL_35;
          }

          if (v9)
          {
            v20 = sub_2685BF44C(v14, v15);
            v22 = v21;

            if (!v22)
            {
              goto LABEL_35;
            }

            v14 = v20;
            v16 = v22;
          }

          MEMORY[0x26D61D4B0](v14, v16);

          if (v7 != v3)
          {
            continue;
          }
        }

        break;
      }
    }

    return v25;
  }

  else
  {
LABEL_36:
    sub_2685C1CBC();
    swift_allocError();
    *v24 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2685C0DB8()
{
  v3 = v0;
  sub_2685C01A0();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (v4 != v5 && ((v6 = *v4, v6 == 34) || v6 == 39))
  {
    *(v0 + 40) = v4 + 1;
    v34 = 0;
    result = sub_2685C039C(v6, &v34);
    if (!v1)
    {
      if (v34 == 1)
      {
        v31 = sub_2685B5DAC(result);
        v32 = v8;
        sub_2685C1954(&v31, v0, v6);
        goto LABEL_13;
      }

      v10 = *(v0 + 40);
      v11 = result;
      result = sub_26863BA00(*(v3 + 40), result);
      v31 = result;
      v32 = v12;
      if (!__OFADD__(v11, 1))
      {
        for (*(v3 + 40) = v10 + v11 + 1; ; *(v3 + 40) = v27 + v19 + 1)
        {
          while (1)
          {
LABEL_13:
            for (i = *(v3 + 40); i != v5; *(v3 + 40) = i)
            {
              v24 = *i;
              if (v24 > 0x23)
              {
                break;
              }

              if (((1 << v24) & 0x100002600) == 0)
              {
                if (v24 == 35)
                {
                  *(v3 + 40) = ++i;
                  while (i != v5)
                  {
                    v26 = *i++;
                    v25 = v26;
                    if (v26 == 10 || v25 == 13)
                    {
                      goto LABEL_26;
                    }
                  }

                  i = v5;
                  *(v3 + 40) = v5;
                }

                break;
              }

              ++i;
LABEL_26:
              ;
            }

            if (i == v5)
            {
              return v31;
            }

            v18 = *i;
            if (v18 != 39 && v18 != 34)
            {
              return v31;
            }

            *(v3 + 40) = i + 1;
            v33 = 0;
            result = sub_2685C039C(v18, &v33);
            v19 = result;
            if (v33 != 1)
            {
              break;
            }

            if (result)
            {
              if (result <= 14)
              {
                if (result < 0)
                {
                  goto LABEL_43;
                }

                v13 = 0;
                v2 = v2 & 0xF00000000000000 | (v19 << 48);
                v14 = v2;
              }

              else
              {
                v20 = sub_2686897B4();
                v21 = *(v20 + 48);
                v22 = *(v20 + 52);
                swift_allocObject();
                v23 = sub_268689774();
                if (v19 >= 0x7FFFFFFF)
                {
                  sub_268689804();
                  v13 = swift_allocObject();
                  *(v13 + 16) = 0;
                  *(v13 + 24) = v19;
                  v14 = v23 | 0x8000000000000000;
                }

                else
                {
                  v13 = v19 << 32;
                  v14 = v23 | 0x4000000000000000;
                }
              }
            }

            else
            {
              v13 = 0;
              v14 = 0xC000000000000000;
            }

            v29 = v13;
            v30 = v14;
            sub_2685C1954(&v29, v3, v18);
            v15 = v29;
            v16 = v30;
            sub_268689854();
            sub_2685B593C(v15, v16);
          }

          v27 = *(v3 + 40);
          if (result)
          {
            v28 = *(v3 + 40);
            result = sub_268689824();
          }

          if (__OFADD__(v19, 1))
          {
            break;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_2685C1CBC();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

char *sub_2685C10C4()
{
  v1 = v0[5];
  v2 = v0[6];
  if (v1 != v2)
  {
    v3 = *v1;
    v4 = v0[5];
    if (v3 == 45)
    {
      v4 = v1 + 1;
      v0[5] = v1 + 1;
      if (v1 + 1 == v2)
      {
        goto LABEL_18;
      }

      v3 = *v4;
    }

    if (v3 == 46)
    {
      v0[5] = ++v4;
      if (v4 == v2 || *v4 - 58 <= 0xFFFFFFF5)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (v3 == 48)
    {
      v0[5] = ++v4;
      if (v4 != v2 && *v4 - 58 >= 0xFFFFFFF6)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (v4 == v2)
      {
LABEL_14:
        v4 = v2;
        goto LABEL_15;
      }

LABEL_20:
      v8 = v4 - v1;
      while (1)
      {
        v9 = *v4;
        if ((v9 - 58) <= 0xFFFFFFF5)
        {
          v10 = (v9 - 43);
          if (v10 > 0x3B)
          {
            goto LABEL_15;
          }

          if (((1 << v10) & 0x40000000400000DLL) == 0)
          {
            break;
          }
        }

        v0[5] = ++v4;
        ++v8;
        if (v4 == v2)
        {
          goto LABEL_14;
        }
      }

      if (v10 == 59)
      {
        v11 = v0;
        v12 = v0[7];
        v5 = sub_26861A074(v1, v8);
        v11[5] = v4 + 1;
        goto LABEL_16;
      }

LABEL_15:
      v6 = v0[7];
      v5 = sub_26861A074(v1, v4 - v1);
LABEL_16:
      sub_2685C01A0();
      return v5;
    }

    if ((v3 - 58) > 0xFFFFFFF6)
    {
      goto LABEL_20;
    }

LABEL_18:
    v5 = 0;
    v0[5] = v1;
    return v5;
  }

  return 0;
}

uint64_t sub_2685C124C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = *(v1 + 48);
    v6 = *(v1 + 40);
    while (v6 != v5)
    {
      v7 = *v6;
      if ((v7 - 91) >= 0xFFFFFFE6)
      {
        v7 |= 0x20u;
      }

      if (v7 != *v4)
      {
        break;
      }

      *(v1 + 40) = ++v6;
      ++v4;
      if (!--v3)
      {
        if (v6 != v5)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    goto LABEL_14;
  }

  v6 = *(v1 + 40);
  if (v2 == *(v1 + 48))
  {
    return 1;
  }

LABEL_11:
  if ((*v6 & 0xDFu) - 91 < 0xFFFFFFE6)
  {
    sub_2685C01A0();
    return 1;
  }

LABEL_14:
  result = 0;
  *(v1 + 40) = v2;
  return result;
}

unint64_t sub_2685C12FC()
{
  v1 = *(v0 + 40);
  if (v1 == *(v0 + 48))
  {
    goto LABEL_9;
  }

  v2 = *v1;
  if (v2 == 45)
  {
    *(v0 + 40) = v1 + 1;
  }

  if (sub_2685C124C(&unk_2879283D8) & 1) != 0 || (sub_2685C124C(&unk_287928400))
  {
    v3 = 0;
    v4 = 2139095040;
    if (v2 == 45)
    {
      v4 = 4286578688;
    }
  }

  else
  {
LABEL_9:
    v4 = 0;
    v3 = 1;
  }

  return v4 | (v3 << 32);
}

uint64_t sub_2685C138C()
{
  v3 = *(v0 + 40);
  for (i = *(v0 + 48); v3 != i; *(v0 + 40) = v3)
  {
    v4 = *v3;
    if (v4 > 0x23)
    {
      break;
    }

    if (((1 << v4) & 0x100002600) != 0)
    {
      ++v3;
    }

    else
    {
      if (v4 != 35)
      {
        break;
      }

      *(v0 + 40) = ++v3;
      while (v3 != i)
      {
        v6 = *v3++;
        v5 = v6;
        if (v6 == 10 || v5 == 13)
        {
          goto LABEL_4;
        }
      }

      v3 = i;
    }

LABEL_4:
    ;
  }

  if (v3 == i)
  {
    goto LABEL_57;
  }

  v10 = *v3;
  v8 = v3 + 1;
  v9 = v10;
  *(v0 + 40) = v8;
  if (v10 > 83)
  {
    if (v9 != 84)
    {
      if (v9 == 102)
      {
LABEL_33:
        if (v8 != i)
        {
          v14 = qword_287928488;
          if (qword_287928488)
          {
            v15 = aAlse;
            v13 = v8;
            while (v13 != i && *v13 == *v15)
            {
              *(v0 + 40) = ++v13;
              ++v15;
              if (!--v14)
              {
                goto LABEL_48;
              }
            }

            *(v0 + 40) = v8;
          }
        }

        v13 = v8;
LABEL_48:
        v1 = 0;
        goto LABEL_49;
      }

      if (v9 != 116)
      {
LABEL_57:
        sub_2685C1CBC();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
        return v1 & 1;
      }
    }

    if (v8 != i)
    {
      v11 = qword_2879284B0;
      if (qword_2879284B0)
      {
        v12 = &byte_2879284C0;
        v13 = v8;
        while (v13 != i && *v13 == *v12)
        {
          *(v0 + 40) = ++v13;
          ++v12;
          if (!--v11)
          {
            v1 = 1;
            goto LABEL_49;
          }
        }

        *(v0 + 40) = v8;
      }
    }

    v13 = v8;
    v1 = 1;
LABEL_49:
    v8 = v13;
    if (v13 == i)
    {
      return v1 & 1;
    }

    goto LABEL_50;
  }

  switch(v9)
  {
    case '0':
      v1 = 0;
      if (v8 == i)
      {
        return v1 & 1;
      }

      break;
    case '1':
      v1 = 1;
      if (v8 == i)
      {
        return v1 & 1;
      }

      break;
    case 'F':
      goto LABEL_33;
    default:
      goto LABEL_57;
  }

LABEL_50:
  v16 = *v8;
  v17 = v16 > 0x3E || ((1 << v16) & 0x4800100900002600) == 0;
  if (v17 && v16 != 125 && v16 != 93)
  {
    goto LABEL_57;
  }

  sub_2685C01A0();
  return v1 & 1;
}

unsigned __int8 *sub_2685C15D0()
{
  v1 = *(v0 + 40);
  for (i = *(v0 + 48); v1 != i; *(v0 + 40) = v1)
  {
    v3 = *v1;
    if (v3 > 0x23)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) != 0)
    {
      ++v1;
    }

    else
    {
      if (v3 != 35)
      {
        break;
      }

      *(v0 + 40) = ++v1;
      while (v1 != i)
      {
        v5 = *v1++;
        v4 = v5;
        if (v5 == 10 || v4 == 13)
        {
          goto LABEL_4;
        }
      }

      v1 = i;
    }

LABEL_4:
    ;
  }

  if (v1 == i)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else if ((*v1 & 0xDFu) - 91 >= 0xFFFFFFE6)
  {
    return sub_2685C021C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685C16D4()
{
  v1 = *(v0 + 40);
  for (i = *(v0 + 48); v1 != i; *(v0 + 40) = v1)
  {
    v3 = *v1;
    if (v3 > 0x23)
    {
      break;
    }

    if (((1 << v3) & 0x100002600) != 0)
    {
      ++v1;
    }

    else
    {
      if (v3 != 35)
      {
        break;
      }

      *(v0 + 40) = ++v1;
      while (v1 != i)
      {
        v5 = *v1++;
        v4 = v5;
        if (v5 == 10 || v4 == 13)
        {
          goto LABEL_4;
        }
      }

      v1 = i;
    }

LABEL_4:
    ;
  }

  if (v1 == i || *v1 != 91)
  {
    return 0;
  }

  *(v0 + 40) = v1 + 1;
  v7 = sub_2685C02E8();
  if (v8)
  {
    v9 = *(v0 + 40);
    if (v9 != i && *v9 == 93)
    {
      *(v0 + 40) = v9 + 1;
      v10 = v7;
      sub_2685C01A0();
      return v10;
    }
  }

  sub_2685C1CBC();
  swift_allocError();
  *v12 = 0;
  return swift_willThrow();
}

uint64_t sub_2685C1818(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4)
  {
    return 0;
  }

  v5 = *v3;
  if ((v5 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
  {
    v2 = *(a1 + 16);
    v7 = sub_2685C021C();
    if (!*(v2 + 16))
    {
      goto LABEL_15;
    }

    v9 = sub_2685C32C0(v7, v8);
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    return *(*(v2 + 56) + 8 * v9);
  }

  else
  {
    if ((v5 - 58) < 0xFFFFFFF7)
    {
      v6 = 0;
LABEL_16:
      sub_2685C1CBC();
      swift_allocError();
      *v15 = v6;
      swift_willThrow();
      return v2;
    }

    v11 = *(a1 + 8);
    v2 = v5 - 48;
    v12 = v3 + 1;
    *(v1 + 40) = v3 + 1;
    if (v3 + 1 != v4)
    {
      while (1)
      {
        v13 = *v12;
        if ((v13 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        v2 = v13 + 10 * v2 - 48;
        if (++v12 == v4)
        {
          v12 = v4;
          break;
        }
      }
    }

    *(v1 + 40) = v12;
    sub_2685C01A0();
    if (!*(v11 + 16) || (sub_2685B351C(v2), (v14 & 1) == 0))
    {
LABEL_15:
      v6 = 7;
      goto LABEL_16;
    }
  }

  return v2;
}

uint64_t sub_2685C1954(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_2685B593C(v7, v6);
      *&v25 = v7;
      *(&v25 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26868A5E0;
      sub_2685B593C(0, 0xC000000000000000);
      result = sub_2685C1BF0(&v25, a2, a3);
      v10 = v25;
      v11 = *(&v25 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_2685B593C(v7, v6);
      *&v25 = v7;
      WORD4(v25) = v6;
      BYTE10(v25) = BYTE2(v6);
      BYTE11(v25) = BYTE3(v6);
      BYTE12(v25) = BYTE4(v6);
      BYTE13(v25) = BYTE5(v6);
      BYTE14(v25) = BYTE6(v6);
      result = sub_2685C05EC(&v25, &v25 + BYTE6(v6), a2, a3);
      v10 = v25;
      v11 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
    }

    *a1 = v10;
    a1[1] = v11;
    goto LABEL_15;
  }

  if (v8 != 2)
  {
    *(&v25 + 7) = 0;
    *&v25 = 0;
    result = sub_2685C05EC(&v25, &v25, a2, a3);
LABEL_15:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_2685B593C(v7, v6);
  *&v25 = v7;
  *(&v25 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  sub_2686897D4();
  v12 = *(&v25 + 1);
  v14 = *(v25 + 16);
  v13 = *(v25 + 24);
  result = sub_268689764();
  if (result)
  {
    v15 = result;
    v16 = sub_268689794();
    v17 = v14 - v16;
    if (__OFSUB__(v14, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = __OFSUB__(v13, v14);
      v19 = v13 - v14;
      if (!v18)
      {
        v20 = sub_268689784();
        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        result = sub_2685C05EC((v15 + v17), v15 + v17 + v21, a2, a3);
        *a1 = v25;
        a1[1] = v12 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2685C1BF0(int *a1, uint64_t a2, unsigned __int8 a3)
{
  result = sub_2686897E4();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(a1 + 1);

  result = sub_268689764();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_268689794();
  v11 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v8 - v7;
  v13 = sub_268689784();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_2685C05EC((v10 + v11), v10 + v11 + v14, a2, a3);
}

unint64_t sub_2685C1CBC()
{
  result = qword_28028C060;
  if (!qword_28028C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C060);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2685C1D24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2685C1D6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2685C1DCC@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_268689C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - v15;
  v17 = swift_conformsToProtocol2();
  if (v17 && a3)
  {
    v26 = v12;
    v27 = v5;
    v28 = a5;
    (*(v17 + 8))(&v29, a3, v17);
    v18 = v30;
    if (*(v30 + 16) && (v19 = sub_2685C32C0(a1, a2), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      (*(a4 + 32))(v21, a3, a4);
      v22 = *(a3 - 8);
      if (!(*(v22 + 48))(v16, 1, a3))
      {
        v24 = v28;
        (*(v22 + 32))(v28, v16, a3);
        return (*(v22 + 56))(v24, 0, 1, a3);
      }

      (*(v26 + 8))(v16, v11);
    }

    else
    {
    }

    a5 = v28;
  }

  return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
}

uint64_t sub_2685C206C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_268689C74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - v15;
  v17 = swift_conformsToProtocol2();
  if (v17 && a3)
  {
    v26 = v12;
    v27 = v5;
    v28 = a5;
    (*(v17 + 8))(v29, a3, v17);
    v18 = v29[3];
    v19 = sub_2685BF1F0(a1, a2);
    if (*(v18 + 16) && (v20 = sub_2685C32C0((v19 + 32), *(v19 + 16)), (v21 & 1) != 0))
    {
      v25 = *(*(v18 + 56) + 8 * v20);

      (*(a4 + 32))(v25, a3, a4);
      v22 = *(a3 - 8);
      if (!(*(v22 + 48))(v16, 1, a3))
      {
        v24 = v28;
        (*(v22 + 32))(v28, v16, a3);
        return (*(v22 + 56))(v24, 0, 1, a3);
      }

      (*(v26 + 8))(v16, v11);
    }

    else
    {
    }

    a5 = v28;
  }

  else
  {
  }

  return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
}

uint64_t sub_2685C23CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_conformsToProtocol2();
  v7 = 0;
  v8 = 0uLL;
  v9 = -256;
  if (result && a1)
  {
    (*(result + 8))(v20, a1, result, 0);
    v10 = v20[1];
    v11 = (*(a2 + 40))(a1, a2);
    if (*(v10 + 16) && (v12 = sub_2685B351C(v11), (v13 & 1) != 0))
    {
      v14 = *(v10 + 56) + 80 * v12;
      v19 = *(v14 + 40);
      v7 = *(v14 + 56);
      v15 = *(v14 + 64);
      v16 = *(v14 + 72);
      v17 = *(v14 + 73);
      sub_2685C255C(v7, v15, *(v14 + 72), *(v14 + 73));

      v8 = v19;
      if (v17)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v9 = v18 | v16;
    }

    else
    {

      v7 = 0;
      v15 = 0;
      v9 = -256;
      v8 = 0uLL;
    }
  }

  else
  {
    v15 = 0;
  }

  *a3 = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v15;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_2685C255C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t ExtensibleMessage.setExtensionValue<A>(ext:value:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v23[-v13];
  v15 = v6;
  v16 = a1[2];
  v17 = *(v15 + 88);
  v18 = *(a3 + 8);
  v25[0] = v8;
  v25[1] = v17;
  v25[2] = v7;
  v26 = v18;
  v24[3] = type metadata accessor for MessageExtension();
  v24[4] = &protocol witness table for MessageExtension<A, B>;
  v24[0] = a1;
  (*(v10 + 16))(v14, a2, AssociatedTypeWitness);
  v19 = *(v7 + 56);
  v26 = v8;
  v27 = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1(v25);

  v19(v24, v14, v8, v7);
  v20 = (*(a3 + 32))(v23, v17, a3);
  sub_2685C2780(v25, v24);
  sub_2685C2E1C(v24, v16);
  sub_2685C2F18(v25);
  return v20(v23, 0);
}

uint64_t sub_2685C2780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ExtensibleMessage.getExtensionValue<A>(ext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *a1;
  v5 = v29;
  v30 = a3;
  v6 = *(v29 + 80);
  v7 = sub_268689C74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v29 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = &v29 - v17;
  (*(a2 + 16))(&v33, *(v5 + 88), a2);
  v19 = v33;
  if (*(v33 + 16) && (v20 = sub_2685B351C(a1[2]), (v21 & 1) != 0))
  {
    sub_2685B1724(*(v19 + 56) + 40 * v20, v31);
  }

  else
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  v22 = swift_dynamicCast();
  v23 = *(v14 + 56);
  if (v22)
  {
    v23(v13, 0, 1, v6);
    (*(v14 + 32))(v18, v13, v6);
    v24 = v30;
    (*(*(v29 + 96) + 32))(v6, *(v29 + 96));
    (*(v14 + 8))(v18, v6);
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v23(v13, 1, 1, v6);
    (*(v8 + 8))(v13, v7);
    v24 = v30;
    v26 = *(v29 + 96);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 56))(v24, v25, 1, AssociatedTypeWitness);
}

BOOL ExtensibleMessage.hasExtensionValue<A>(ext:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = sub_268689C74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - v10;
  (*(a2 + 16))(&v21, *(v4 + 88), a2);
  v12 = v21;
  if (*(v21 + 16) && (v13 = sub_2685B351C(a1[2]), (v14 & 1) != 0))
  {
    sub_2685B1724(*(v12 + 56) + 40 * v13, v19);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  v15 = swift_dynamicCast();
  v16 = *(v5 - 8);
  (*(v16 + 56))(v11, v15 ^ 1u, 1, v5);
  v17 = (*(v16 + 48))(v11, 1, v5) == 0;
  (*(v7 + 8))(v11, v6);
  return v17;
}

uint64_t ExtensibleMessage.clearExtensionValue<A>(ext:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[2];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = (*(a2 + 32))(v7, *(v2 + 88), a2);
  sub_2685C2780(v8, v6);
  sub_2685C2E1C(v6, v3);
  sub_2685C2F18(v8);
  return v4(v7, 0);
}

uint64_t sub_2685C2E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2685B17CC(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    *v2 = 0x8000000000000000;
    result = sub_268687D88(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_2685C2F18(a1);
    v8 = *v2;
    v9 = sub_2685B351C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      *v3 = 0x8000000000000000;
      if (!v13)
      {
        sub_2686886D0();
        v14 = v16;
      }

      sub_2685B17CC((*(v14 + 56) + 40 * v11), v17);
      sub_2685D9724(v11, v14);
      *v3 = v14;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return sub_2685C2F18(v17);
  }

  return result;
}

uint64_t sub_2685C2F18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C068, &unk_26868A6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2685C2F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = *v5;
    *v5 = 0x8000000000000000;
    sub_268687EB8(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v14[0];
  }

  else
  {
    sub_2685D966C(a4, a5, v14);

    return sub_2685C31B4(v14[0], v14[1], v14[2]);
  }

  return result;
}

unint64_t sub_2685C3084(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268689E94();
  sub_268689A24();
  v6 = sub_268689EF4();

  return sub_2685C30FC(a1, a2, v6);
}

unint64_t sub_2685C30FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_268689E14())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2685C31B4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_2685B593C(result, a2);
  }

  return result;
}

unint64_t sub_2685C31F4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = &a1[a2];
    if (!a1)
    {
      v8 = 0;
    }

    do
    {
      v9 = (*(v3 + 48) + 40 * result);
      if (v9[1] == a2)
      {
        v10 = *v9;
        v11 = &a2[v10];
        if (!v10)
        {
          v11 = 0;
        }

        v12 = a1;
        while (1)
        {
          v13 = !v12 || v12 == v8;
          v14 = v13;
          if (!v10 || v10 == v11)
          {
            break;
          }

          if (!v14)
          {
            v16 = *v10++;
            v15 = v16;
            v17 = *v12++;
            if (v15 == v17)
            {
              continue;
            }
          }

          goto LABEL_6;
        }

        if (v14)
        {
          break;
        }
      }

LABEL_6:
      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2685C32C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(v2 + 40);
  sub_268689E94();
  if (a1 && a2)
  {
    v6 = a2;
    v7 = a1;
    do
    {
      v8 = *v7++;
      sub_268689EB4();
      --v6;
    }

    while (v6);
  }

  v9 = sub_268689EF4();

  return sub_2685C31F4(a1, a2, v9);
}

uint64_t ExtensionFieldValueSet.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_2685C2780(a1, v5);
  sub_2685C2E1C(v5, a2);
  return sub_2685C2F18(a1);
}

double ExtensionFieldValueSet.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_2685B351C(a1), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 40 * v5;

    sub_2685B1724(v7, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t ExtensionFieldValueSet.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 16777619;
  if (v7)
  {
    while (1)
    {
      v12 = v10;
LABEL_12:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(*(v3 + 48) + 8 * v16);
      sub_2685B1724(*(v3 + 56) + 40 * v16, &v28);
      *&v23 = v17;
      sub_2685B17CC(&v28, &v23 + 8);
      v14 = v12;
LABEL_13:
      v31[1] = v24;
      v31[2] = v25;
      v31[0] = v23;
      if (!v25)
      {
        break;
      }

      v18 = *&v31[0];
      sub_2685B17CC((v31 + 8), &v28);
      v19 = a1[3];
      v25 = a1[2];
      v26 = v19;
      v27 = *(a1 + 8);
      v20 = a1[1];
      v23 = *a1;
      v24 = v20;
      MEMORY[0x26D61D8F0](v18);
      v21 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      (*(v22 + 16))(&v23, v21, v22);
      v31[5] = v25;
      v31[6] = v26;
      v32 = v27;
      v31[3] = v23;
      v31[4] = v24;
      v11 += sub_268689EE4();
      result = __swift_destroy_boxed_opaque_existential_1(&v28);
      v10 = v14;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x26D61D8F0](v11);
  }

  else
  {
LABEL_5:
    if (v8 <= v10 + 1)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v8;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        v7 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ExtensionFieldValueSet.traverse<A>(visitor:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v38 = a5;
  v10 = *v5;
  v11 = *v5 + 64;
  v12 = 1 << *(*v5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(*v5 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(v10[6] + ((v16 << 9) | (8 * v19)));
    if (v20 >= a2 && v20 < a3)
    {
      v35[0] = v17;
      v32 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v17 + 2) + 1, 1);
        v17 = v35[0];
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_2685C4674((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v17 = v35[0];
      }

      *(v17 + 2) = v23;
      *&v17[8 * v22 + 32] = v20;
      a3 = v32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v35[0] = v17;

  sub_2685C3CDC(v35);
  v15 = v7;
  if (v7)
  {
    goto LABEL_28;
  }

  v24 = v35[0];
  v25 = *(v35[0] + 2);
  if (!v25)
  {
  }

  v26 = 0;
  while (v26 < *(v24 + 2))
  {
    if (!v10[2])
    {
      goto LABEL_26;
    }

    v27 = sub_2685B351C(*&v24[8 * v26 + 32]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(v10[7] + 40 * v27, v35);
    v29 = v36;
    v30 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v30 + 48))(a1, a4, v38, v29, v30);
    ++v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v25 == v26)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v15);

  __break(1u);
  return result;
}

uint64_t sub_2685C38AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_2685C2780(a1, v6);
  sub_2685C2780(v6, v5);
  sub_2685C2E1C(v5, v3);
  return sub_2685C2F18(v6);
}

void (*ExtensionFieldValueSet.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 120) = a2;
  *(v5 + 128) = v2;
  v7 = *v2;
  if (*(v7 + 16) && (v8 = sub_2685B351C(a2), (v9 & 1) != 0))
  {
    sub_2685B1724(*(v7 + 56) + 40 * v8, v6);
  }

  else
  {
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_2685C39B0;
}

void sub_2685C39B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 120);
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_2685C2780(*a1, v2 + 40);
    sub_2685C2780(v2 + 40, v2 + 80);
    sub_2685C2E1C(v2 + 80, v4);
    sub_2685C2F18(v2 + 40);
  }

  else
  {
    sub_2685C2780(*a1, v2 + 40);
    sub_2685C2E1C(v2 + 40, v4);
  }

  sub_2685C2F18(v2);

  free(v2);
}

uint64_t ExtensionFieldValueSet.isInitialized.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_12:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(v1 + 48) + 8 * v13);
      sub_2685B1724(*(v1 + 56) + 40 * v13, v18);
      *&v19 = v14;
      sub_2685B17CC(v18, &v19 + 8);
      v11 = v9;
LABEL_13:
      v22[1] = v20;
      v22[2] = v21;
      v22[0] = v19;
      v15 = v21;
      if (!v21)
      {

        return v15 == 0;
      }

      sub_2685B17CC((v22 + 8), &v19);
      v16 = *(&v20 + 1);
      v17 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      if (((*(v17 + 56))(v16, v17) & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v19);
      v8 = v11;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v19);
    return v15 == 0;
  }

  else
  {
LABEL_5:
    if (v6 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        v5 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ExtensionFieldValueSet.hashValue.getter()
{
  v3 = *v0;
  sub_268689E94();
  ExtensionFieldValueSet.hash(into:)(v2);
  return sub_268689EF4();
}

uint64_t sub_2685C3C40()
{
  v3 = *v0;
  sub_268689E94();
  ExtensionFieldValueSet.hash(into:)(v2);
  return sub_268689EF4();
}

uint64_t sub_2685C3C90()
{
  v3 = *v0;
  sub_268689E94();
  ExtensionFieldValueSet.hash(into:)(v2);
  return sub_268689EF4();
}

uint64_t sub_2685C3CDC(char **a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2685C4960(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v4;
  result = sub_268689DE4();
  if (result >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = v2 + 32;
      do
      {
        v12 = *&v2[8 * v10 + 32];
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (v12 >= *v14)
          {
            break;
          }

          *v14 = v12;
          *(v14 + 1) = v15;
          v14 -= 8;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        v11 += 8;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = result;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      v8 = sub_268689B54();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v17[1] = v7;
    v18 = 0;
    v17[0] = v8 + 32;
    sub_2685C3E1C(v17, &v18, v19, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2685C3E1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2685C455C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_2685C4368((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2685C4570(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2685C4570((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_2685C4368((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2685C4368(char *__dst, char *__src, char *a3, char *a4)
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
      if (*v6 < *v4)
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
      if (v21 < *v17)
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

char *sub_2685C4570(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C098, &qword_26868A798);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_2685C4674(char *a1, int64_t a2, char a3)
{
  result = sub_2685C4714(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2685C4694(void *a1, int64_t a2, char a3)
{
  result = sub_2685C4818(a1, a2, a3, *v3, &qword_28028C088, &qword_26868A788, &qword_28028C090, &qword_26868A790);
  *v3 = result;
  return result;
}

void *sub_2685C46D4(void *a1, int64_t a2, char a3)
{
  result = sub_2685C4818(a1, a2, a3, *v3, &qword_28028C078, &unk_268692750, &qword_28028C080, &qword_26868A780);
  *v3 = result;
  return result;
}

char *sub_2685C4714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C0A0, &unk_26868A7A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2685C4818(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t _s20SiriOntologyProtobuf22ExtensionFieldValueSetV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *a1;

  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_13:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = *(*(v2 + 48) + 8 * v15);
      sub_2685B1724(*(v2 + 56) + 40 * v15, &v25);
      *&v27 = v16;
      sub_2685B17CC(&v25, &v27 + 8);
      v13 = v11;
LABEL_14:
      v30[1] = v28;
      v30[2] = v29;
      v30[0] = v27;
      if (!v29)
      {

        return 1;
      }

      v17 = *&v30[0];
      sub_2685B17CC((v30 + 8), &v27);
      if (!*(v3 + 16))
      {
        break;
      }

      v18 = sub_2685B351C(v17);
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_2685B1724(*(v3 + 56) + 40 * v18, v24);
      sub_2685B17CC(v24, &v25);
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      DynamicType = swift_getDynamicType();
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      if (DynamicType != swift_getDynamicType())
      {
        __swift_destroy_boxed_opaque_existential_1(&v25);
        break;
      }

      v21 = *(&v28 + 1);
      v22 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
      v23 = (*(v22 + 32))(&v25, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v25);
      if ((v23 & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v27);
      v10 = v13;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v27);
    return 0;
  }

LABEL_6:
  if (v7 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v6 = 0;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      goto LABEL_14;
    }

    v6 = *(v2 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2685C4BCC()
{
  result = qword_28028C070;
  if (!qword_28028C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C070);
  }

  return result;
}

uint64_t sub_2685C4C2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2685C4C74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t Google_Protobuf_Syntax.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Google_Protobuf_Syntax.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_2685C4D1C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2685C4D34()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_2685C4D50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_2685C4D6C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_2685C4D8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  if (v2)
  {
    v3 = v1 != 0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D61D8F0](v3);
  return sub_268689EF4();
}

uint64_t sub_2685C4DE4()
{
  v1 = *v0 == 0;
  if (*(v0 + 8))
  {
    v2 = *v0 != 0;
  }

  else
  {
    v2 = *v0;
  }

  return MEMORY[0x26D61D8F0](v2);
}

uint64_t sub_2685C4E24()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  if (v2)
  {
    v3 = v1 != 0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D61D8F0](v3);
  return sub_268689EF4();
}

BOOL sub_2685C4E78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void (*Google_Protobuf_Type.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_2685C5064;
}

void (*Google_Protobuf_Type.fields.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685C515C;
}

void (*Google_Protobuf_Type.oneofs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);

  return sub_2685C5254;
}

uint64_t Google_Protobuf_Type.options.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 48);
}

uint64_t sub_2685C52C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v7 = sub_2685CE694(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  v8 = *(v6 + 48);
  *(v6 + 48) = v3;
}

uint64_t Google_Protobuf_Type.options.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v7 = sub_2685CE694(v6);

    *(v2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  v8 = *(v6 + 48);
  *(v6 + 48) = a1;
}

void (*Google_Protobuf_Type.options.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 48);

  return sub_2685C5498;
}

void sub_2685C5498(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_Type._StorageClass();
      swift_allocObject();
      v11 = sub_2685CE694(v9);

      *(v10 + 16) = v11;
      v9 = v11;
    }

    swift_beginAccess();
    v12 = *(v9 + 48);
    *(v9 + 48) = v3;

    v13 = *v4;
  }

  else
  {
    v14 = *(v5 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[10];
      type metadata accessor for Google_Protobuf_Type._StorageClass();
      swift_allocObject();
      v18 = sub_2685CE694(v16);

      *(v17 + 16) = v18;
      v16 = v18;
    }

    swift_beginAccess();
    v19 = *(v16 + 48);
    *(v16 + 48) = v3;
  }

  free(v2);
}

void Google_Protobuf_Type.sourceContext.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[7];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[8];
    v11 = v3[9];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[10];
  }

  *a1 = v10;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685C563C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[7];
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[9];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[8];
    v11 = v3[7];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[10];
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685C56AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];

  sub_2685BA80C(v5, v6);
  v7 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v10 = sub_2685CE694(v9);

    *(a2 + 16) = v10;
    v9 = v10;
  }

  swift_beginAccess();
  v11 = v9[7];
  v12 = v9[8];
  v13 = v9[9];
  v14 = v9[10];
  v9[7] = v4;
  v9[8] = v3;
  v9[9] = v5;
  v9[10] = v6;
  sub_2685CE920(v11, v12, v13, v14);
}

void Google_Protobuf_Type.sourceContext.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v10 = sub_2685CE694(v9);

    *(v2 + 16) = v10;
    v9 = v10;
  }

  swift_beginAccess();
  v11 = v9[7];
  v12 = v9[8];
  v13 = v9[9];
  v14 = v9[10];
  v9[7] = v3;
  v9[8] = v4;
  v9[9] = v5;
  v9[10] = v6;
  sub_2685CE920(v11, v12, v13, v14);
}

void (*Google_Protobuf_Type.sourceContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[7];
  v7 = v5[8];
  v8 = v5[9];
  v9 = v5[10];
  v10 = 0xC000000000000000;
  v11 = 0xE000000000000000;
  if (v7)
  {
    v12 = v5[7];
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v11 = v5[8];
    v13 = v5[9];
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v10 = v5[10];
  }

  *v4 = v12;
  v4[1] = v11;
  v4[2] = v13;
  v4[3] = v10;
  sub_2685CE8D4(v6, v7, v8, v9);
  return sub_2685C58E0;
}

void sub_2685C58E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[13];
  if (a2)
  {
    v8 = (*a1)[1];

    sub_2685BA80C(v6, v5);
    v9 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v7 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v2[13];
      type metadata accessor for Google_Protobuf_Type._StorageClass();
      swift_allocObject();
      v13 = sub_2685CE694(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    v14 = v11[7];
    v15 = v11[8];
    v16 = v11[9];
    v17 = v11[10];
    v11[7] = v4;
    v11[8] = v3;
    v11[9] = v6;
    v11[10] = v5;
    sub_2685CE920(v14, v15, v16, v17);
    v18 = v2[1];
    v19 = v2[2];
    v20 = v2[3];

    sub_2685B593C(v19, v20);
  }

  else
  {
    v21 = *(v7 + 16);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v7 + 16);
    if ((v22 & 1) == 0)
    {
      v24 = v2[13];
      type metadata accessor for Google_Protobuf_Type._StorageClass();
      swift_allocObject();
      v25 = sub_2685CE694(v23);

      *(v24 + 16) = v25;
      v23 = v25;
    }

    swift_beginAccess();
    v26 = v23[7];
    v27 = v23[8];
    v28 = v23[9];
    v29 = v23[10];
    v23[7] = v4;
    v23[8] = v3;
    v23[9] = v6;
    v23[10] = v5;
    sub_2685CE920(v26, v27, v28, v29);
  }

  free(v2);
}

BOOL Google_Protobuf_Type.hasSourceContext.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_Type.clearSourceContext()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v5 = sub_2685CE694(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  v9 = v4[10];
  *(v4 + 7) = 0u;
  *(v4 + 9) = 0u;
  sub_2685CE920(v6, v7, v8, v9);
}

uint64_t Google_Protobuf_Type.syntax.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 96);
  *a1 = *(v3 + 88);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_2685C5B84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v8 = sub_2685CE694(v7);

    *(a2 + 16) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 88) = v3;
  *(v7 + 96) = v4;
  return result;
}

uint64_t Google_Protobuf_Type.syntax.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v8 = sub_2685CE694(v7);

    *(v2 + 16) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 88) = v3;
  *(v7 + 96) = v4;
  return result;
}

void (*Google_Protobuf_Type.syntax.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 96);
  *(v4 + 72) = *(v5 + 88);
  *(v4 + 80) = v6;
  return sub_2685C5D5C;
}

void sub_2685C5D5C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v1[11];
    type metadata accessor for Google_Protobuf_Type._StorageClass();
    swift_allocObject();
    v9 = sub_2685CE694(v7);

    *(v8 + 16) = v9;
    v7 = v9;
  }

  swift_beginAccess();
  *(v7 + 88) = v2;
  *(v7 + 96) = v4;

  free(v1);
}

void Google_Protobuf_Field.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Google_Protobuf_Field.kind.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Google_Protobuf_Field.cardinality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Google_Protobuf_Field.cardinality.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Google_Protobuf_Field.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Google_Protobuf_Field.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Google_Protobuf_Field.typeURL.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Google_Protobuf_Field.typeURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Google_Protobuf_Field.options.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Google_Protobuf_Field.jsonName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Google_Protobuf_Field.jsonName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Google_Protobuf_Field.defaultValue.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Google_Protobuf_Field.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Google_Protobuf_Field.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Field.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

unint64_t Google_Protobuf_Field.Kind.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x13;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2685C6290@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_Field.Cardinality.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2685C62B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  sub_2685C4CC0(v4, v1);
  return sub_268689EF4();
}

uint64_t sub_2685C6314()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  sub_2685C4CC0(v4, v1);
  return sub_268689EF4();
}

unint64_t Google_Protobuf_Field.Cardinality.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_2685C63C4()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

uint64_t sub_2685C6438()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

double Google_Protobuf_Field.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 112) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685C65EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a2;
  *a2 = a1;
}

uint64_t sub_2685C66A0@<X0>(void *a1@<X2>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t sub_2685C66F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = *a1;
  v10 = a1[1];

  v12 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v15 = a7(v14);

    *(a2 + 16) = v15;
    v14 = v15;
  }

  swift_beginAccess();
  v16 = *(v14 + 24);
  *(v14 + 16) = v11;
  *(v14 + 24) = v10;
}

uint64_t sub_2685C67E4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  v11 = *(v5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v14 = a5(v13);

    *(v8 + 16) = v14;
    v13 = v14;
  }

  swift_beginAccess();
  v15 = *(v13 + 24);
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
}

void (*Google_Protobuf_Enum.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_2685C693C;
}

void sub_2685C696C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  if (a2)
  {
    v11 = *(*a1 + 80);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[11];
      a3(0);
      swift_allocObject();
      v16 = a5(v14);

      *(v15 + 16) = v16;
      v14 = v16;
    }

    swift_beginAccess();
    v17 = *(v14 + 24);
    *(v14 + 16) = v8;
    *(v14 + 24) = v9;

    v18 = v7[10];
  }

  else
  {
    v19 = *(v10 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v10 + 16);
    if ((v20 & 1) == 0)
    {
      v22 = v7[11];
      a3(0);
      swift_allocObject();
      v23 = a5(v21);

      *(v22 + 16) = v23;
      v21 = v23;
    }

    swift_beginAccess();
    v24 = *(v21 + 24);
    *(v21 + 16) = v8;
    *(v21 + 24) = v9;
  }

  free(v7);
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV5fieldSayAA0d1_c6_FieldeF0VGvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_2685C6B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v14 = a7(v13);

    *(a2 + 16) = v14;
    v13 = v14;
  }

  swift_beginAccess();
  v15 = *(v13 + 32);
  *(v13 + 32) = v10;
}

uint64_t sub_2685C6BF8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v12 = a4(v11);

    *(v7 + 16) = v12;
    v11 = v12;
  }

  swift_beginAccess();
  v13 = *(v11 + 32);
  *(v11 + 32) = a1;
}

void (*Google_Protobuf_Enum.enumvalue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685C6D4C;
}

void sub_2685C6D7C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v16 = a5(v14);

      *(v15 + 16) = v16;
      v14 = v16;
    }

    swift_beginAccess();
    v17 = *(v14 + 32);
    *(v14 + 32) = v8;

    v18 = *v9;
  }

  else
  {
    v19 = *(v10 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v10 + 16);
    if ((v20 & 1) == 0)
    {
      v22 = v7[10];
      a3(0);
      swift_allocObject();
      v23 = a5(v21);

      *(v22 + 16) = v23;
      v21 = v23;
    }

    swift_beginAccess();
    v24 = *(v21 + 32);
    *(v21 + 32) = v8;
  }

  free(v7);
}

uint64_t sub_2685C6ED8()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_2685C6F1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v14 = a7(v13);

    *(a2 + 16) = v14;
    v13 = v14;
  }

  swift_beginAccess();
  v15 = *(v13 + 40);
  *(v13 + 40) = v10;
}

uint64_t sub_2685C7008(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v12 = a4(v11);

    *(v7 + 16) = v12;
    v11 = v12;
  }

  swift_beginAccess();
  v13 = *(v11 + 40);
  *(v11 + 40) = a1;
}

void (*Google_Protobuf_Enum.options.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);

  return sub_2685C715C;
}

void sub_2685C718C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v9 = (*a1 + 72);
  v8 = *v9;
  v10 = *(*a1 + 80);
  if (a2)
  {
    v11 = *(*a1 + 72);

    v12 = *(v10 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v16 = a5(v14);

      *(v15 + 16) = v16;
      v14 = v16;
    }

    swift_beginAccess();
    v17 = *(v14 + 40);
    *(v14 + 40) = v8;

    v18 = *v9;
  }

  else
  {
    v19 = *(v10 + 16);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v10 + 16);
    if ((v20 & 1) == 0)
    {
      v22 = v7[10];
      a3(0);
      swift_allocObject();
      v23 = a5(v21);

      *(v22 + 16) = v23;
      v21 = v23;
    }

    swift_beginAccess();
    v24 = *(v21 + 40);
    *(v21 + 40) = v8;
  }

  free(v7);
}

void Google_Protobuf_Enum.sourceContext.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[6];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[7];
    v11 = v3[8];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[9];
  }

  *a1 = v10;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685C7354(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[8];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[7];
    v11 = v3[6];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[9];
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685C73C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];

  sub_2685BA80C(v5, v6);
  v7 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v10 = sub_2685CE990(v9);

    *(a2 + 16) = v10;
    v9 = v10;
  }

  swift_beginAccess();
  v11 = v9[6];
  v12 = v9[7];
  v13 = v9[8];
  v14 = v9[9];
  v9[6] = v4;
  v9[7] = v3;
  v9[8] = v5;
  v9[9] = v6;
  sub_2685CE920(v11, v12, v13, v14);
}

void Google_Protobuf_Enum.sourceContext.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v10 = sub_2685CE990(v9);

    *(v2 + 16) = v10;
    v9 = v10;
  }

  swift_beginAccess();
  v11 = v9[6];
  v12 = v9[7];
  v13 = v9[8];
  v14 = v9[9];
  v9[6] = v3;
  v9[7] = v4;
  v9[8] = v5;
  v9[9] = v6;
  sub_2685CE920(v11, v12, v13, v14);
}

void (*Google_Protobuf_Enum.sourceContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[6];
  v7 = v5[7];
  v8 = v5[8];
  v9 = v5[9];
  v10 = 0xC000000000000000;
  v11 = 0xE000000000000000;
  if (v7)
  {
    v12 = v5[6];
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v11 = v5[7];
    v13 = v5[8];
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v10 = v5[9];
  }

  *v4 = v12;
  v4[1] = v11;
  v4[2] = v13;
  v4[3] = v10;
  sub_2685CE8D4(v6, v7, v8, v9);
  return sub_2685C75F8;
}

void sub_2685C75F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[13];
  if (a2)
  {
    v8 = (*a1)[1];

    sub_2685BA80C(v6, v5);
    v9 = *(v7 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v7 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v2[13];
      type metadata accessor for Google_Protobuf_Enum._StorageClass();
      swift_allocObject();
      v13 = sub_2685CE990(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    v14 = v11[6];
    v15 = v11[7];
    v16 = v11[8];
    v17 = v11[9];
    v11[6] = v4;
    v11[7] = v3;
    v11[8] = v6;
    v11[9] = v5;
    sub_2685CE920(v14, v15, v16, v17);
    v18 = v2[1];
    v19 = v2[2];
    v20 = v2[3];

    sub_2685B593C(v19, v20);
  }

  else
  {
    v21 = *(v7 + 16);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v7 + 16);
    if ((v22 & 1) == 0)
    {
      v24 = v2[13];
      type metadata accessor for Google_Protobuf_Enum._StorageClass();
      swift_allocObject();
      v25 = sub_2685CE990(v23);

      *(v24 + 16) = v25;
      v23 = v25;
    }

    swift_beginAccess();
    v26 = v23[6];
    v27 = v23[7];
    v28 = v23[8];
    v29 = v23[9];
    v23[6] = v4;
    v23[7] = v3;
    v23[8] = v6;
    v23[9] = v5;
    sub_2685CE920(v26, v27, v28, v29);
  }

  free(v2);
}

BOOL Google_Protobuf_Enum.hasSourceContext.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 56) != 0;
}

Swift::Void __swiftcall Google_Protobuf_Enum.clearSourceContext()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v5 = sub_2685CE990(v4);

    *(v1 + 16) = v5;
    v4 = v5;
  }

  swift_beginAccess();
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[8];
  v9 = v4[9];
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  sub_2685CE920(v6, v7, v8, v9);
}

uint64_t Google_Protobuf_Enum.syntax.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 88);
  *a1 = *(v3 + 80);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_2685C7898(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v8 = sub_2685CE990(v7);

    *(a2 + 16) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 80) = v3;
  *(v7 + 88) = v4;
  return result;
}

uint64_t Google_Protobuf_Enum.syntax.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v8 = sub_2685CE990(v7);

    *(v2 + 16) = v8;
    v7 = v8;
  }

  result = swift_beginAccess();
  *(v7 + 80) = v3;
  *(v7 + 88) = v4;
  return result;
}

void (*Google_Protobuf_Enum.syntax.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 88);
  *(v4 + 72) = *(v5 + 80);
  *(v4 + 80) = v6;
  return sub_2685C7A70;
}

void sub_2685C7A70(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v1[11];
    type metadata accessor for Google_Protobuf_Enum._StorageClass();
    swift_allocObject();
    v9 = sub_2685CE990(v7);

    *(v8 + 16) = v9;
    v7 = v9;
  }

  swift_beginAccess();
  *(v7 + 80) = v2;
  *(v7 + 88) = v4;

  free(v1);
}

uint64_t Google_Protobuf_Enum.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Enum.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_2685C7BC8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_26868A5E0;
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *(a3 + 16) = *a2;
}

uint64_t Google_Protobuf_EnumValue.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Google_Protobuf_EnumValue.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_EnumValue.options.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Google_Protobuf_EnumValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_EnumValue.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

double Google_Protobuf_EnumValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 32) = xmmword_26868A5E0;
  return result;
}

uint64_t _s20SiriOntologyProtobuf07Google_C5_EnumV4nameSSvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_2685C7E14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Option._StorageClass();
    swift_allocObject();
    v7 = sub_2685CD1B8(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[3];
  v7[2] = v4;
  v7[3] = v3;
}

uint64_t Google_Protobuf_Option.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Option._StorageClass();
    swift_allocObject();
    v8 = sub_2685CD1B8(v8);
    *(v3 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[3];
  v8[2] = a1;
  v8[3] = a2;
}

void (*Google_Protobuf_Option.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_2685C7FD8;
}

void sub_2685C7FD8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_Option._StorageClass();
      swift_allocObject();
      v9 = sub_2685CD1B8(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[3];
    v9[2] = v3;
    v9[3] = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 16);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_Option._StorageClass();
      swift_allocObject();
      v15 = sub_2685CD1B8(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    v17 = v15[3];
    v15[2] = v3;
    v15[3] = v5;
  }

  free(v2);
}

uint64_t Google_Protobuf_Option.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  if (v6)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
  }

  else
  {
    *a1 = xmmword_26868A5E0;
    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    a1[2] = qword_28029B270;
  }

  return sub_2685CEBA8(v4, v5, v6);
}

uint64_t sub_2685C81B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v9 = v4;
  }

  else
  {
    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v9 = 0;
    v8 = 0xC000000000000000;
  }

  *a2 = v9;
  a2[1] = v8;
  a2[2] = v7;
  return sub_2685CEBA8(v4, v5, v6);
}

uint64_t sub_2685C8278(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_2685BA80C(*a1, v4);

  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Option._StorageClass();
    swift_allocObject();
    v8 = sub_2685CD1B8(v8);
    *(a2 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[6];
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  return sub_2685C31B4(v9, v10, v11);
}

uint64_t Google_Protobuf_Option.value.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Option._StorageClass();
    swift_allocObject();
    v7 = sub_2685CD1B8(v7);
    *(v1 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[4];
  v9 = v7[5];
  v10 = v7[6];
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  return sub_2685C31B4(v8, v9, v10);
}

void (*Google_Protobuf_Option.value.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  if (v8)
  {
    *v4 = v6;
    v4[1] = v7;
    v4[2] = v8;
  }

  else
  {
    *v4 = xmmword_26868A5E0;
    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v4[2] = qword_28029B270;
  }

  sub_2685CEBA8(v6, v7, v8);
  return sub_2685C84D4;
}

void sub_2685C84D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[12];
  if (a2)
  {
    sub_2685BA80C(**a1, v3);

    v7 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[12];
      type metadata accessor for Google_Protobuf_Option._StorageClass();
      swift_allocObject();
      v9 = sub_2685CD1B8(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[4];
    v12 = v9[5];
    v13 = v9[6];
    v9[4] = v4;
    v9[5] = v3;
    v9[6] = v5;
    sub_2685C31B4(v11, v12, v13);
    v14 = v2[2];
    sub_2685B593C(*v2, v2[1]);
  }

  else
  {
    v15 = *(v6 + 16);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v6 + 16);
    if ((v16 & 1) == 0)
    {
      v18 = v2[12];
      type metadata accessor for Google_Protobuf_Option._StorageClass();
      swift_allocObject();
      v17 = sub_2685CD1B8(v17);
      *(v18 + 16) = v17;
    }

    swift_beginAccess();
    v19 = v17[4];
    v20 = v17[5];
    v21 = v17[6];
    v17[4] = v4;
    v17[5] = v3;
    v17[6] = v5;
    sub_2685C31B4(v19, v20, v21);
  }

  free(v2);
}

BOOL Google_Protobuf_Option.hasValue.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

Swift::Void __swiftcall Google_Protobuf_Option.clearValue()()
{
  v1 = *(v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Option._StorageClass();
    swift_allocObject();
    v3 = sub_2685CD1B8(v3);
    *(v0 + 16) = v3;
  }

  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v3[5] = 0;
  v3[6] = 0;
  v3[4] = 0;
  sub_2685C31B4(v4, v5, v6);
}

uint64_t Google_Protobuf_Option.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Option._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

uint64_t static Google_Protobuf_Syntax._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BBD0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028C0C8;
  v2 = qword_28028C0D0;
  v3 = unk_28028C0D8;
  *a1 = qword_28028C0C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685C8810@<X0>(void *a1@<X8>)
{
  if (qword_28028BBD0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028C0C8;
  v2 = qword_28028C0D0;
  v3 = unk_28028C0D8;
  *a1 = qword_28028C0C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Type._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BBD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C0E8;
  v2 = qword_28028C0F0;
  v3 = unk_28028C0F8;
  *a1 = qword_28028C0E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685C8978()
{
  type metadata accessor for Google_Protobuf_Type._StorageClass();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  result = 0.0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  qword_28028C100 = v0;
  return result;
}

uint64_t sub_2685C89D8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_2685CE920(v0[7], v0[8], v0[9], v0[10]);

  return swift_deallocClassInstance();
}

uint64_t sub_2685C8A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v13 = v4;
            swift_beginAccess();
            v14 = *(a4 + 416);
            v15 = sub_2685CEBE8();
            v16 = a1 + 48;
            v17 = &type metadata for Google_Protobuf_Option;
            goto LABEL_19;
          case 5:
            swift_beginAccess();
            v18 = *(a4 + 408);
            v19 = sub_2685CFDF4();
            v18(a1 + 56, &type metadata for Google_Protobuf_SourceContext, v19, a3, a4);
            goto LABEL_5;
          case 6:
            swift_beginAccess();
            v11 = *(a4 + 384);
            v12 = sub_2685CFDA0();
            v11(a1 + 88, &type metadata for Google_Protobuf_Syntax, v12, a3, a4);
            swift_endAccess();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            swift_beginAccess();
            (*(a4 + 336))(a1 + 16, a3, a4);
            goto LABEL_5;
          case 2:
            v13 = v4;
            swift_beginAccess();
            v14 = *(a4 + 416);
            v15 = sub_2685CF3E4();
            v16 = a1 + 32;
            v17 = &type metadata for Google_Protobuf_Field;
LABEL_19:
            v4 = v13;
            v14(v16, v17, v15, a3, a4);
LABEL_5:
            swift_endAccess();
            break;
          case 3:
            swift_beginAccess();
            (*(a4 + 352))(a1 + 40, a3, a4);
            goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685C8D74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v8 = *(a1 + 32), v9 = , sub_2685D9D28(v9, 2), result = , !v2))
  {
    swift_beginAccess();
    v11 = *(a1 + 40);
    if (*(v11 + 16))
    {
      MEMORY[0x26D61D8F0](3);
      MEMORY[0x26D61D8F0](*(v11 + 16));
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = (v11 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;

          sub_268689A24();

          v13 += 2;
          --v12;
        }

        while (v12);
      }
    }

    swift_beginAccess();
    if (!*(*(a1 + 48) + 16) || (v16 = *(a1 + 48), v17 = , sub_2685D9AB0(v17, 4), result = , !v3))
    {
      swift_beginAccess();
      v18 = *(a1 + 64);
      if (v18)
      {
        v20 = *(a1 + 72);
        v19 = *(a1 + 80);
        v21 = *(a1 + 56);
        MEMORY[0x26D61D8F0](5);

        sub_2685BA80C(v20, v19);
        sub_268619228(a2, v21, v18, v20, v19);
        sub_2685CE920(v21, v18, v20, v19);
      }

      result = swift_beginAccess();
      if (*(a1 + 88))
      {
        if (*(a1 + 96))
        {
          v22 = 1;
        }

        else
        {
          v22 = *(a1 + 88);
        }

        MEMORY[0x26D61D8F0](6);
        return MEMORY[0x26D61D8F0](v22);
      }
    }
  }

  return result;
}

void sub_2685C8FBC(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v9);
    sub_2685B43A4(v6, v5);

    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      *a2 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v14 = *(a1 + 32), v15 = , sub_268674B48(v15, 2), , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 40) + 16) || (v16 = *(a1 + 40), v17 = , sub_2685B530C(v17, 3), , !v2))
    {
      swift_beginAccess();
      if (!*(*(a1 + 48) + 16) || (v18 = *(a1 + 48), v19 = , sub_268674B00(v19, 4), , !v2))
      {
        swift_beginAccess();
        v20 = *(a1 + 64);
        if (!v20)
        {
          goto LABEL_25;
        }

        v22 = *(a1 + 72);
        v21 = *(a1 + 80);
        v23 = *(a1 + 56);
        v24 = *(a1 + 64);

        sub_2685BA80C(v22, v21);
        sub_2686717E0(v23, v20, v22, v21, 5);
        sub_2685CE920(v23, v20, v22, v21);
        if (!v2)
        {
LABEL_25:
          swift_beginAccess();
          v25 = *(a1 + 88);
          if (v25)
          {
            v26 = *(a1 + 96);
            sub_2685B301C(6);
            sub_2685B403C(": ", 2, v27);
            sub_2686711B0(v25, v26);
            v28 = *a2;
            v29 = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v28;
            if ((v29 & 1) == 0)
            {
              v28 = sub_2685B3F48(0, *(v28 + 2) + 1, 1, v28);
              *a2 = v28;
            }

            v31 = *(v28 + 2);
            v30 = *(v28 + 3);
            if (v31 >= v30 >> 1)
            {
              v28 = sub_2685B3F48((v30 > 1), v31 + 1, 1, v28);
              *a2 = v28;
            }

            *(v28 + 2) = v31 + 1;
            v28[v31 + 32] = 10;
          }
        }
      }
    }
  }
}

uint64_t sub_2685C92E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = a4[14], v13 = *(a1 + 24), , v12(v9, v10, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v15 = a4[35], v16 = sub_2685CF3E4(), v17 = , v15(v17, 2, &type metadata for Google_Protobuf_Field, v16, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 40) + 16) || (v18 = a4[32], v19 = *(a1 + 40), v20 = , v18(v20, 3, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        if (!*(*(a1 + 48) + 16) || (v21 = a4[35], v22 = sub_2685CEBE8(), v23 = , v21(v23, 4, &type metadata for Google_Protobuf_Option, v22, a3, a4), result = , !v5))
        {
          swift_beginAccess();
          v24 = *(a1 + 64);
          if (!v24 || (v30[0] = *(a1 + 56), v30[1] = v24, v31 = *(a1 + 72), v25 = a4[17], v26 = sub_2685CFDF4(), result = v25(v30, 5, &type metadata for Google_Protobuf_SourceContext, v26, a3, a4), !v5))
          {
            result = swift_beginAccess();
            if (*(a1 + 88))
            {
              v27 = *(a1 + 96);
              v32 = *(a1 + 88);
              v33 = v27;
              v28 = a4[16];
              v29 = sub_2685CFDA0();
              return v28(&v32, 6, &type metadata for Google_Protobuf_Syntax, v29, a3, a4);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685C95B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v3)
    {
      if (a2 == a2 >> 32)
      {
        return result;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v3 == 2 && *(a2 + 16) != *(a2 + 24))
  {
LABEL_9:
    if (*(result + 64) == 1)
    {
      return sub_26863B108(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685C962C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v3)
    {
      if (a2 == a2 >> 32)
      {
        return result;
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v3 == 2 && *(a2 + 16) != *(a2 + 24))
  {
    return sub_268689844();
  }

  return result;
}

BOOL sub_2685C96C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(a2 + 32);

  v9 = sub_26860F4C4(v7, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v10 = *(a1 + 40);
  swift_beginAccess();
  if ((sub_26860EBDC(v10, *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  v12 = *(a2 + 48);

  v13 = sub_26860D254(v11, v12);

  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  swift_beginAccess();
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v21 = *(a2 + 72);
  v20 = *(a2 + 80);
  if (!v15)
  {
    sub_2685CE8D4(v14, 0, v17, v16);
    if (!v19)
    {
      sub_2685CE8D4(v18, 0, v21, v20);
      sub_2685CE920(v14, 0, v17, v16);
      goto LABEL_21;
    }

    sub_2685CE8D4(v18, v19, v21, v20);

LABEL_19:
    sub_2685CE920(v14, v15, v17, v16);
    sub_2685CE920(v18, v19, v21, v20);
    return 0;
  }

  if (!v19)
  {
    sub_2685CE8D4(v14, v15, v17, v16);
    sub_2685CE8D4(v18, 0, v21, v20);
    sub_2685CE8D4(v14, v15, v17, v16);
    sub_2685CE8D4(v18, 0, v21, v20);
    sub_2685CE8D4(v14, v15, v17, v16);

    sub_2685CE920(v18, 0, v21, v20);
    sub_2685CE920(v14, v15, v17, v16);

    sub_2685B593C(v17, v16);
    goto LABEL_19;
  }

  if (v14 != v18 || v15 != v19)
  {
    v22 = *(a2 + 56);
    v23 = *(a2 + 64);
    if ((sub_268689E14() & 1) == 0)
    {
      sub_2685CE8D4(v14, v15, v17, v16);
      sub_2685CE8D4(v18, v19, v21, v20);
      sub_2685CE8D4(v14, v15, v17, v16);
      sub_2685CE920(v18, v19, v21, v20);

      sub_2685B593C(v17, v16);
      sub_2685CE920(v14, v15, v17, v16);
LABEL_30:

      return 0;
    }
  }

  sub_2685CE8D4(v14, v15, v17, v16);
  sub_2685CE8D4(v18, v19, v21, v20);
  sub_2685CE8D4(v14, v15, v17, v16);
  sub_2685CE8D4(v18, v19, v21, v20);
  sub_2685CE8D4(v14, v15, v17, v16);
  sub_2685BA80C(v17, v16);
  sub_2685BA80C(v21, v20);
  v30 = sub_2686131DC(v17, v16, v21, v20);
  sub_2685B593C(v21, v20);
  sub_2685B593C(v17, v16);
  sub_2685CE920(v18, v19, v21, v20);
  sub_2685CE920(v14, v15, v17, v16);
  sub_2685CE920(v18, v19, v21, v20);

  sub_2685B593C(v17, v16);
  sub_2685CE920(v14, v15, v17, v16);
  if ((v30 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  swift_beginAccess();
  v24 = *(a1 + 88);
  v25 = *(a1 + 96);

  swift_beginAccess();
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);

  v28 = v24 != 0;
  if (!v25)
  {
    v28 = v24;
  }

  if (v27 != 1)
  {
    return v28 == v26;
  }

  if (v26)
  {
    return v28 == 1;
  }

  return !v28;
}

uint64_t sub_2685C9D00@<X0>(void *a1@<X8>)
{
  if (qword_28028BBD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C0E8;
  v2 = qword_28028C0F0;
  v3 = unk_28028C0F8;
  *a1 = qword_28028C0E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Field._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BBE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C110;
  v2 = qword_28028C118;
  v3 = unk_28028C120;
  *a1 = qword_28028C108;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Field.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while (1)
    {
      if (v9)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 8)
        {
          if (result == 7)
          {
            (*(a3 + 72))(v3 + 64, a2, a3);
          }

          else
          {
            (*(a3 + 312))(v3 + 68, a2, a3);
          }
        }

        else
        {
          switch(result)
          {
            case 9:
              v15 = *(a3 + 416);
              v16 = sub_2685CEBE8();
              v15(v3 + 72, &type metadata for Google_Protobuf_Option, v16, a2, a3);
              break;
            case 10:
              (*(a3 + 336))(v3 + 80, a2, a3);
              break;
            case 11:
              (*(a3 + 336))(v3 + 96, a2, a3);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v10 = *(a3 + 384);
          v11 = v4;
          v12 = sub_2685CEC90();
          v13 = v3;
          v14 = &type metadata for Google_Protobuf_Field.Kind;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v10 = *(a3 + 384);
          v11 = v4;
          v12 = sub_2685CEC3C();
          v13 = v3 + 16;
          v14 = &type metadata for Google_Protobuf_Field.Cardinality;
        }

        v4 = v11;
        v10(v13, v14, v12, a2, a3);
      }

      else
      {
        switch(result)
        {
          case 3:
            (*(a3 + 72))(v3 + 28, a2, a3);
            break;
          case 4:
            (*(a3 + 336))(v3 + 32, a2, a3);
            break;
          case 6:
            (*(a3 + 336))(v3 + 48, a2, a3);
            break;
        }
      }

LABEL_5:
      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685CA148(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);
    MEMORY[0x26D61D8F0](1);
    sub_2685C4CC0(a1, v5);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D8F0](v7);
  }

  v8 = *(v3 + 28);
  if (v8)
  {
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D920](v8);
  }

  v9 = *(v3 + 40);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    MEMORY[0x26D61D8F0](4);
    sub_268689A24();
  }

  v11 = *(v3 + 56);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x26D61D8F0](6);
    sub_268689A24();
  }

  v13 = *(v3 + 64);
  if (v13)
  {
    MEMORY[0x26D61D8F0](7);
    MEMORY[0x26D61D920](v13);
  }

  if (*(v3 + 68))
  {
    MEMORY[0x26D61D8F0](8);
    sub_268689EB4();
  }

  result = *(v3 + 72);
  if (!*(result + 16) || (result = sub_2685D9AB0(result, 9), !v2))
  {
    v15 = *(v3 + 88);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v3 + 80) & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      MEMORY[0x26D61D8F0](10);
      result = sub_268689A24();
    }

    v17 = *(v3 + 104);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v3 + 96) & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      MEMORY[0x26D61D8F0](11);
      result = sub_268689A24();
    }

    v19 = *(v3 + 112);
    v20 = *(v3 + 120);
    v21 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        return result;
      }

      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
    }

    else
    {
      if (!v21)
      {
        if ((v20 & 0xFF000000000000) == 0)
        {
          return result;
        }

        return sub_268689844();
      }

      v22 = v19;
      v23 = v19 >> 32;
    }

    if (v22 == v23)
    {
      return result;
    }

    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685CA330(char **a1)
{
  v3 = v1;
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2686712EC(v5, v6);
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a1 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
    *a1 = v8;
  }

  v12 = *(v3 + 16);
  if (v12)
  {
    v13 = *(v3 + 24);
    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v14);
    sub_268671310(v12, v13);
    v15 = *a1;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v15;
    if ((v16 & 1) == 0)
    {
      v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
      *a1 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    v15[v18 + 32] = 10;
    *a1 = v15;
  }

  v19 = *(v3 + 28);
  if (!v19 || (result = sub_2686440C0(v19, 3), !v2))
  {
    v21 = *(v3 + 32);
    v22 = *(v3 + 40);
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      sub_2685B301C(4);
      sub_2685B403C(": ", 2, v24);
      sub_2685B43A4(v21, v22);
      v25 = *a1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
        *a1 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v25[v28 + 32] = 10;
      *a1 = v25;
    }

    v29 = *(v3 + 48);
    v30 = *(v3 + 56);
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_2685B301C(6);
      sub_2685B403C(": ", 2, v32);
      sub_2685B43A4(v29, v30);
      v33 = *a1;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v33;
      if ((v34 & 1) == 0)
      {
        v33 = sub_2685B3F48(0, *(v33 + 2) + 1, 1, v33);
        *a1 = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      if (v36 >= v35 >> 1)
      {
        v33 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v33);
      }

      *(v33 + 2) = v36 + 1;
      v33[v36 + 32] = 10;
      *a1 = v33;
    }

    v37 = *(v3 + 64);
    if (!v37 || (result = sub_2686440C0(v37, 7), !v2))
    {
      if (*(v3 + 68) != 1 || (result = sub_2685B33F4(1, 8), !v2))
      {
        v38 = *(v3 + 72);
        if (!*(v38 + 16) || (result = sub_268674B00(v38, 9), !v2))
        {
          v39 = *(v3 + 80);
          v40 = *(v3 + 88);
          v41 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v41 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v41)
          {
            sub_2685B301C(10);
            sub_2685B403C(": ", 2, v42);
            sub_2685B43A4(v39, v40);
            v43 = *a1;
            v44 = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v43;
            if ((v44 & 1) == 0)
            {
              v43 = sub_2685B3F48(0, *(v43 + 2) + 1, 1, v43);
              *a1 = v43;
            }

            v46 = *(v43 + 2);
            v45 = *(v43 + 3);
            if (v46 >= v45 >> 1)
            {
              v43 = sub_2685B3F48((v45 > 1), v46 + 1, 1, v43);
            }

            *(v43 + 2) = v46 + 1;
            v43[v46 + 32] = 10;
            *a1 = v43;
          }

          v47 = *(v3 + 96);
          v48 = *(v3 + 104);
          v49 = HIBYTE(v48) & 0xF;
          if ((v48 & 0x2000000000000000) == 0)
          {
            v49 = v47 & 0xFFFFFFFFFFFFLL;
          }

          if (v49)
          {
            sub_2685B301C(11);
            sub_2685B403C(": ", 2, v50);
            sub_2685B43A4(v47, v48);
            v51 = *a1;
            v52 = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v51;
            if ((v52 & 1) == 0)
            {
              v51 = sub_2685B3F48(0, *(v51 + 2) + 1, 1, v51);
              *a1 = v51;
            }

            v54 = *(v51 + 2);
            v53 = *(v51 + 3);
            if (v54 >= v53 >> 1)
            {
              v51 = sub_2685B3F48((v53 > 1), v54 + 1, 1, v51);
            }

            *(v51 + 2) = v54 + 1;
            v51[v54 + 32] = 10;
            *a1 = v51;
          }

          return sub_2685C95B0(a1, *(v3 + 112), *(v3 + 120));
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Field.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = a1;
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 28);
  v13 = *(v3 + 40);
  v43 = *(v3 + 32);
  v39 = *(v3 + 48);
  v40 = v13;
  v38 = *(v3 + 56);
  v36 = *(v3 + 68);
  v37 = *(v3 + 64);
  v31 = *(v3 + 88);
  v32 = *(v3 + 80);
  v14 = *(v3 + 96);
  v34 = v14;
  v35 = *(v3 + 72);
  v33 = *(v3 + 104);
  v29 = *(v3 + 120);
  v30 = *(v3 + 112);
  if (v9)
  {
    v15 = *(v3 + 8);
    v41 = v9;
    LOBYTE(v42) = v15;
    v17 = *(a3 + 128);
    v18 = sub_2685CEC90();
    result = v17(&v41, 1, &type metadata for Google_Protobuf_Field.Kind, v18, a2, a3);
    if (v4)
    {
      return result;
    }

    v5 = 0;
    v8 = a1;
  }

  if (v10)
  {
    v41 = v10;
    LOBYTE(v42) = v11;
    v20 = *(a3 + 128);
    v21 = sub_2685CEC3C();
    v22 = v5;
    result = v20(&v41, 2, &type metadata for Google_Protobuf_Field.Cardinality, v21, a2, a3);
    if (v5)
    {
      return result;
    }

    if (!v12)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = (*(a3 + 24))(v12, 3, a2, a3);
    if (v22)
    {
      return result;
    }

    goto LABEL_10;
  }

  v22 = v5;
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v23 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v23 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (result = (*(a3 + 112))(), !v22))
  {
    v24 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v24 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24 || (result = (*(a3 + 112))(), !v22))
    {
      if (!v37 || (result = (*(a3 + 24))(), !v22))
      {
        if (!v36 || (result = (*(a3 + 104))(1, 8, a2, a3), !v22))
        {
          if (!*(v35 + 16) || (v25 = *(a3 + 280), v26 = sub_2685CEBE8(), result = v25(v35, 9, &type metadata for Google_Protobuf_Option, v26, a2, a3), !v22))
          {
            v27 = HIBYTE(v31) & 0xF;
            if ((v31 & 0x2000000000000000) == 0)
            {
              v27 = v32 & 0xFFFFFFFFFFFFLL;
            }

            if (!v27 || (result = (*(a3 + 112))(), !v22))
            {
              v28 = HIBYTE(v33) & 0xF;
              if ((v33 & 0x2000000000000000) == 0)
              {
                v28 = v34 & 0xFFFFFFFFFFFFLL;
              }

              if (!v28 || (result = (*(a3 + 112))(v34, v33, 11, a2, a3), !v22))
              {
                v41 = v30;
                v42 = v29;
                sub_2685BA80C(v30, v29);
                UnknownStorage.traverse<A>(visitor:)(v8, a2, a3);
                return sub_2685B593C(v41, v42);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Field.hashValue.getter()
{
  v1 = v0[5];
  v20 = v0[4];
  v21 = v1;
  v2 = v0[7];
  v22 = v0[6];
  v23 = v2;
  v3 = v0[1];
  v16 = *v0;
  v17 = v3;
  v4 = v0[3];
  v18 = v0[2];
  v19 = v4;
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2685CA148(&v6);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

double sub_2685CAC78@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 112) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685CACE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_2685CACF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 112), *(v1 + 120));
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  return result;
}

uint64_t sub_2685CAD74@<X0>(void *a1@<X8>)
{
  if (qword_28028BBE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C110;
  v2 = qword_28028C118;
  v3 = unk_28028C120;
  *a1 = qword_28028C108;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685CAE10()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_26866E638();
}

uint64_t sub_2685CAE5C()
{
  v1 = v0[5];
  v20 = v0[4];
  v21 = v1;
  v2 = v0[7];
  v22 = v0[6];
  v23 = v2;
  v3 = v0[1];
  v16 = *v0;
  v17 = v3;
  v4 = v0[3];
  v18 = v0[2];
  v19 = v4;
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2685CA148(&v6);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

__n128 sub_2685CAF14(__int128 *a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v24 = v1[5];
  v25 = v4;
  v26 = v5;
  v6 = v1[1];
  v19 = *v1;
  v20 = v6;
  v7 = v1[3];
  v21 = v1[2];
  v22 = v7;
  v23 = v3;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v18 = *(a1 + 8);
  v16 = v10;
  v17 = v11;
  v14 = v8;
  v15 = v9;
  sub_2685CA148(&v14);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_2685CAFB8()
{
  v1 = v0[5];
  v20 = v0[4];
  v21 = v1;
  v2 = v0[7];
  v22 = v0[6];
  v23 = v2;
  v3 = v0[1];
  v16 = *v0;
  v17 = v3;
  v4 = v0[3];
  v18 = v0[2];
  v19 = v4;
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2685CA148(&v6);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Field.Kind._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BBF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C130;
  v2 = qword_28028C138;
  v3 = unk_28028C140;
  *a1 = qword_28028C128;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685CB120@<X0>(void *a1@<X8>)
{
  if (qword_28028BBF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C130;
  v2 = qword_28028C138;
  v3 = unk_28028C140;
  *a1 = qword_28028C128;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Field.Cardinality._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BBF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C150;
  v2 = qword_28028C158;
  v3 = unk_28028C160;
  *a1 = qword_28028C148;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685CB26C@<X0>(void *a1@<X8>)
{
  if (qword_28028BBF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C150;
  v2 = qword_28028C158;
  v3 = unk_28028C160;
  *a1 = qword_28028C148;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Enum._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C170;
  v2 = qword_28028C178;
  v3 = unk_28028C180;
  *a1 = qword_28028C168;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685CB3D4()
{
  type metadata accessor for Google_Protobuf_Enum._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  qword_28028C188 = v0;
  return result;
}

uint64_t sub_2685CB42C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  sub_2685CE920(v0[6], v0[7], v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_2685CB4D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v13 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v7 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = a7;
    v16 = *(v7 + 16);
    a4(0);
    swift_allocObject();
    v17 = a6(v16);
    a7 = v19;

    *(v7 + 16) = v17;
    v15 = v17;
  }

  return a7(v15, a1, a2, a3);
}

uint64_t sub_2685CB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          (*(a4 + 336))(a1 + 16, a3, a4);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v15 = v4;
          swift_beginAccess();
          v16 = *(a4 + 416);
          v17 = sub_2685CF734();
          v18 = a1 + 32;
          v19 = &type metadata for Google_Protobuf_EnumValue;
          goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v15 = v4;
            swift_beginAccess();
            v16 = *(a4 + 416);
            v17 = sub_2685CEBE8();
            v18 = a1 + 40;
            v19 = &type metadata for Google_Protobuf_Option;
LABEL_17:
            v4 = v15;
            v16(v18, v19, v17, a3, a4);
LABEL_5:
            swift_endAccess();
            break;
          case 4:
            swift_beginAccess();
            v11 = *(a4 + 408);
            v12 = sub_2685CFDF4();
            v11(a1 + 48, &type metadata for Google_Protobuf_SourceContext, v12, a3, a4);
            goto LABEL_5;
          case 5:
            swift_beginAccess();
            v13 = *(a4 + 384);
            v14 = sub_2685CFDA0();
            v13(a1 + 80, &type metadata for Google_Protobuf_Syntax, v14, a3, a4);
            goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685CB82C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v7 = *(a1 + 32), v8 = , sub_2685D9E4C(v8, 2), result = , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 40) + 16) || (v10 = *(a1 + 40), v11 = , sub_2685D9AB0(v11, 3), result = , !v2))
    {
      swift_beginAccess();
      v12 = *(a1 + 56);
      if (v12)
      {
        v14 = *(a1 + 64);
        v13 = *(a1 + 72);
        v15 = *(a1 + 48);
        MEMORY[0x26D61D8F0](4);

        sub_2685BA80C(v14, v13);
        sub_268619228(a2, v15, v12, v14, v13);
        sub_2685CE920(v15, v12, v14, v13);
      }

      result = swift_beginAccess();
      if (*(a1 + 80))
      {
        if (*(a1 + 88))
        {
          v16 = 1;
        }

        else
        {
          v16 = *(a1 + 80);
        }

        MEMORY[0x26D61D8F0](5);
        return MEMORY[0x26D61D8F0](v16);
      }
    }
  }

  return result;
}

void sub_2685CB9F8(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v9);
    sub_2685B43A4(v6, v5);

    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      *a2 = v10;
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v14 = *(a1 + 32), v15 = , sub_268674FF0(v15, 2), , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 40) + 16) || (v16 = *(a1 + 40), v17 = , sub_268674B00(v17, 3), , !v2))
    {
      swift_beginAccess();
      v18 = *(a1 + 56);
      if (!v18)
      {
        goto LABEL_23;
      }

      v20 = *(a1 + 64);
      v19 = *(a1 + 72);
      v21 = *(a1 + 48);
      v22 = *(a1 + 56);

      sub_2685BA80C(v20, v19);
      sub_2686717E0(v21, v18, v20, v19, 4);
      sub_2685CE920(v21, v18, v20, v19);
      if (!v2)
      {
LABEL_23:
        swift_beginAccess();
        v23 = *(a1 + 80);
        if (v23)
        {
          v24 = *(a1 + 88);
          sub_2685B301C(5);
          sub_2685B403C(": ", 2, v25);
          sub_2686711B0(v23, v24);
          v26 = *a2;
          v27 = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v26;
          if ((v27 & 1) == 0)
          {
            v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
            *a2 = v26;
          }

          v29 = *(v26 + 2);
          v28 = *(v26 + 3);
          if (v29 >= v28 >> 1)
          {
            v26 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v26);
            *a2 = v26;
          }

          *(v26 + 2) = v29 + 1;
          v26[v29 + 32] = 10;
        }
      }
    }
  }
}

uint64_t sub_2685CBCD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = a4[14], v13 = *(a1 + 24), , v12(v9, v10, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v15 = a4[35], v16 = sub_2685CF734(), v17 = , v15(v17, 2, &type metadata for Google_Protobuf_EnumValue, v16, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 40) + 16) || (v18 = a4[35], v19 = sub_2685CEBE8(), v20 = , v18(v20, 3, &type metadata for Google_Protobuf_Option, v19, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        v21 = *(a1 + 56);
        if (!v21 || (v27[0] = *(a1 + 48), v27[1] = v21, v28 = *(a1 + 64), v22 = a4[17], v23 = sub_2685CFDF4(), result = v22(v27, 4, &type metadata for Google_Protobuf_SourceContext, v23, a3, a4), !v5))
        {
          result = swift_beginAccess();
          if (*(a1 + 80))
          {
            v24 = *(a1 + 88);
            v29 = *(a1 + 80);
            v30 = v24;
            v25 = a4[16];
            v26 = sub_2685CFDA0();
            return v25(&v29, 5, &type metadata for Google_Protobuf_Syntax, v26, a3, a4);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2685CBF7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(a2 + 32);

  v9 = sub_26860F630(v7, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v10 = *(a1 + 40);
  swift_beginAccess();
  v11 = *(a2 + 40);

  v12 = sub_26860D254(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  v19 = *(a2 + 72);
  if (!v14)
  {
    sub_2685CE8D4(v13, 0, v16, v15);
    if (!v18)
    {
      sub_2685CE8D4(v17, 0, v20, v19);
      sub_2685CE920(v13, 0, v16, v15);
      goto LABEL_20;
    }

    sub_2685CE8D4(v17, v18, v20, v19);

LABEL_18:
    sub_2685CE920(v13, v14, v16, v15);
    sub_2685CE920(v17, v18, v20, v19);
    return 0;
  }

  if (!v18)
  {
    sub_2685CE8D4(v13, v14, v16, v15);
    sub_2685CE8D4(v17, 0, v20, v19);
    sub_2685CE8D4(v13, v14, v16, v15);
    sub_2685CE8D4(v17, 0, v20, v19);
    sub_2685CE8D4(v13, v14, v16, v15);

    sub_2685CE920(v17, 0, v20, v19);
    sub_2685CE920(v13, v14, v16, v15);

    sub_2685B593C(v16, v15);
    goto LABEL_18;
  }

  if (v13 != v17 || v14 != v18)
  {
    v21 = *(a2 + 48);
    v22 = *(a2 + 56);
    if ((sub_268689E14() & 1) == 0)
    {
      sub_2685CE8D4(v13, v14, v16, v15);
      sub_2685CE8D4(v17, v18, v20, v19);
      sub_2685CE8D4(v13, v14, v16, v15);
      sub_2685CE920(v17, v18, v20, v19);

      sub_2685B593C(v16, v15);
      sub_2685CE920(v13, v14, v16, v15);
LABEL_29:

      return 0;
    }
  }

  sub_2685CE8D4(v13, v14, v16, v15);
  sub_2685CE8D4(v17, v18, v20, v19);
  sub_2685CE8D4(v13, v14, v16, v15);
  sub_2685CE8D4(v17, v18, v20, v19);
  sub_2685CE8D4(v13, v14, v16, v15);
  sub_2685BA80C(v16, v15);
  sub_2685BA80C(v20, v19);
  v29 = sub_2686131DC(v16, v15, v20, v19);
  sub_2685B593C(v20, v19);
  sub_2685B593C(v16, v15);
  sub_2685CE920(v17, v18, v20, v19);
  sub_2685CE920(v13, v14, v16, v15);
  sub_2685CE920(v17, v18, v20, v19);

  sub_2685B593C(v16, v15);
  sub_2685CE920(v13, v14, v16, v15);
  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  swift_beginAccess();
  v23 = *(a1 + 80);
  v24 = *(a1 + 88);

  swift_beginAccess();
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);

  v27 = v23 != 0;
  if (!v24)
  {
    v27 = v23;
  }

  if (v26 != 1)
  {
    return v27 == v25;
  }

  if (v25)
  {
    return v27 == 1;
  }

  return !v27;
}

uint64_t sub_2685CC50C@<X0>(void *a1@<X2>, void *a2@<X3>, uint64_t a3@<X8>)
{
  *a3 = xmmword_26868A5E0;
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *(a3 + 16) = *a2;
}

uint64_t sub_2685CC5C4@<X0>(void *a1@<X8>)
{
  if (qword_28028BC00 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C170;
  v2 = qword_28028C178;
  v3 = unk_28028C180;
  *a1 = qword_28028C168;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_EnumValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C198;
  v2 = qword_28028C1A0;
  v3 = unk_28028C1A8;
  *a1 = qword_28028C190;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_EnumValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v10 = *(a3 + 416);
          v11 = sub_2685CEBE8();
          v10(v3 + 24, &type metadata for Google_Protobuf_Option, v11, a2, a3);
          break;
        case 2:
          (*(a3 + 72))(v3 + 16, a2, a3);
          break;
        case 1:
          (*(a3 + 336))(v3, a2, a3);
          break;
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685CC8F8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v5 = *(v0 + 4);
  if (v5)
  {
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v5);
  }

  result = v0[3];
  if (!*(result + 16) || (result = sub_2685D9AB0(result, 3), !v1))
  {
    v7 = v0[4];
    v8 = v0[5];
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        return result;
      }

      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
    }

    else
    {
      if (!v9)
      {
        if ((v8 & 0xFF000000000000) == 0)
        {
          return result;
        }

        return sub_268689844();
      }

      v10 = v7;
      v11 = v7 >> 32;
    }

    if (v10 == v11)
    {
      return result;
    }

    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685CC9E4(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v5, v6);
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a1 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
    *a1 = v9;
  }

  v13 = *(v3 + 16);
  if (!v13 || (result = sub_2686440C0(v13, 2), !v2))
  {
    v15 = *(v3 + 24);
    if (!*(v15 + 16) || (result = sub_268674B00(v15, 3), !v2))
    {
      result = *(v3 + 32);
      v16 = *(v3 + 40);
      v17 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v17 != 2)
        {
          return result;
        }

        v18 = *(result + 16);
        v19 = *(result + 24);
      }

      else
      {
        if (!v17)
        {
          if ((v16 & 0xFF000000000000) == 0)
          {
            return result;
          }

          goto LABEL_21;
        }

        v18 = result;
        v19 = result >> 32;
      }

      if (v18 == v19)
      {
        return result;
      }

LABEL_21:
      if (*(a1 + 64) == 1)
      {
        return sub_26863B108(result, v16);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_EnumValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 4);
  v12 = v3[3];
  v11 = v3[4];
  v13 = v3[5];
  v14 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = (*(a3 + 112))(), !v4))
  {
    if (!v10 || (result = (*(a3 + 24))(v10, 2, a2, a3), !v4))
    {
      if (!*(v12 + 16) || (v16 = *(a3 + 280), v17 = sub_2685CEBE8(), result = v16(v12, 3, &type metadata for Google_Protobuf_Option, v17, a2, a3), !v4))
      {
        sub_2685BA80C(v11, v13);
        UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
        return sub_2685B593C(v11, v13);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_EnumValue.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_268689E94();
  sub_2685CC8F8();
  return sub_268689EF4();
}

double sub_2685CCD64@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 32) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685CCDA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_2685CCDB4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_2685CCE38@<X0>(void *a1@<X8>)
{
  if (qword_28028BC10 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C198;
  v2 = qword_28028C1A0;
  v3 = unk_28028C1A8;
  *a1 = qword_28028C190;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685CCED4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_26866E810();
}

uint64_t sub_2685CCF10()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_268689E94();
  sub_2685CC8F8();
  return sub_268689EF4();
}

__n128 sub_2685CCFB8(__int128 *a1)
{
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 8);
  v4 = *a1;
  v5 = a1[1];
  sub_2685CC8F8();
  a1[2] = v6;
  a1[3] = v7;
  *(a1 + 8) = v8;
  result = v5;
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_2685CD044()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_268689E94();
  sub_2685CC8F8();
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Option._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C1B8;
  v2 = qword_28028C1C0;
  v3 = unk_28028C1C8;
  *a1 = qword_28028C1B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}