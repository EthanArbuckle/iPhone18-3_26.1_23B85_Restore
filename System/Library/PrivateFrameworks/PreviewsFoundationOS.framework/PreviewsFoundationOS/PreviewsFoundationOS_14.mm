unint64_t sub_25F2E16B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_25F2925C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25F304FFC();
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
          result = sub_25F30605C();
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

    result = sub_25F2925C8(v12, a6, a7);
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

    result = sub_25F304FBC();
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

unsigned __int8 *sub_25F2E18D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_25F2E327C();

  result = sub_25F3050BC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_25F2E14DC();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_25F30605C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unint64_t sub_25F2E1E5C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_25F2E1FAC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_25F305F9C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_25F30605C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_25F2E1FAC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F2E2044(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F2E20B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F2E2044(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F2925C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F2E20B8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_25F30605C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_25F2E21DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_25F305CBC();
      v12 = v11;
      v13 = sub_25F305C7C();
      v14 = sub_25F304F9C();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_25F30659C();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_25F304F9C();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_25F2E234C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  if ((a4 ^ a3) >= 0x4000)
  {
    while (1)
    {
      v9 = sub_25F305C8C();
      v10 = sub_25F305CBC();
      v12 = v11;
      if (v6 < 0x4000)
      {
        break;
      }

      v13 = v10;
      v6 = sub_25F304F4C();
      if (v13 == sub_25F30509C() && v12 == v14)
      {
      }

      else
      {
        v8 = sub_25F30659C();

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      if ((v9 ^ a3) < 0x4000)
      {
        goto LABEL_14;
      }
    }

    v16 = 1;
    goto LABEL_17;
  }

LABEL_14:
  if (v6 >= 0x4000)
  {
    sub_25F304F4C();
    sub_25F30509C();
    v16 = 0;
LABEL_17:

    return v16;
  }

  return 1;
}

unint64_t sub_25F2E2504(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_25F2E259C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_25F2E20B8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_25F2E259C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_25F2925C8(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25F2E2610(unint64_t result, int64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v7 = a3;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((a3 & 0xC) == 4 << v9)
  {
LABEL_53:
    v28 = result;
    v7 = sub_25F2925C8(v7, a4, a5);
    result = v28;
  }

  v11 = result;
  if ((result & 0xC) == v10)
  {
    v29 = result;
    v11 = sub_25F2925C8(result, a4, a5);
    result = v29;
  }

  result = sub_25F2E2504(result, a4, a5);
  v7 >>= 14;
  if (a2 < 0)
  {
    v10 = 0;
    v18 = v11 >> 14;
    v19 = &v31 + 7;
    v20 = &v31 + 6;
    while (v18 < v7 || v7 < result >> 14)
    {
      if (result < 0x10000)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        v31 = v19;
        v27 = v20;
        result = sub_25F304EEC();
        v20 = v27;
        v19 = v31;
      }

      else
      {
        v21 = result >> 16;
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          if ((v19[v21] & 0xC0) == 0x80)
          {
            v24 = &v20[v21];
            v25 = 1;
            do
            {
              ++v25;
              v26 = *v24--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v25 = 1;
          }

          v21 -= v25;
        }

        else
        {
          v22 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v30 = v20;
            v31 = v19;
            v22 = sub_25F30605C();
            v20 = v30;
            v19 = v31;
          }

          do
          {
            v23 = *(v22 - 1 + v21--) & 0xC0;
          }

          while (v23 == 128);
        }

        result = (v21 << 16) | 5;
      }

      if (--v10 <= a2)
      {
        if (v18 < v7 || result >> 14 >= v7)
        {
          return result;
        }

        return 0;
      }
    }

    return 0;
  }

  v12 = v11 >> 14;
  if (a2)
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a5) & 0xF;
    }

    else
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
    }

    while (v7 < v12 || result >> 14 < v7)
    {
      v16 = result >> 16;
      if (result >> 16 >= v10)
      {
        __break(1u);
        goto LABEL_52;
      }

      if ((a5 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EDC();
        if (!--a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if ((a5 & 0x2000000000000000) != 0)
        {
          v32 = a4;
          v33 = a5 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v32 + v16);
        }

        else
        {
          v17 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a4 & 0x1000000000000000) == 0)
          {
            v17 = sub_25F30605C();
          }

          v13 = *(v17 + v16);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        result = ((v16 + v15) << 16) | 5;
        if (!--a2)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  if (v7 >= v12 && v7 < result >> 14)
  {
    return 0;
  }

  return result;
}

unint64_t sub_25F2E28E8(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      v3 = v1[1];
      v4 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      v5 = 7;
      if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
      {
        v5 = 11;
      }

      result = sub_25F2E2610(0xFuLL, result, v5 | (v4 << 16), v2, v3);
      if ((v6 & 1) == 0)
      {
        sub_25F2E33DC();
        return sub_25F30590C();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F2E2974(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_25F3049FC();
      sub_25F2E3010();
      result = sub_25F3049AC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_25F2E2AF4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F2E2AF4(uint64_t a1, uint64_t a2)
{
  result = sub_25F3042CC();
  if (!result || (result = sub_25F3042FC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25F3042EC();
      sub_25F3049FC();
      sub_25F2E3010();
      return sub_25F3049AC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2E2BA4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_25F2925C8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_25F304FEC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_25F2925C8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_25F2925C8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_25F304FEC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_25F2E3010()
{
  result = qword_27FD58828;
  if (!qword_27FD58828)
  {
    sub_25F3049FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58828);
  }

  return result;
}

uint64_t sub_25F2E3068@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  v14[2] = v4;
  v9 = sub_25F232CE0(sub_25F2E32D0, v14, v7, v8);
  v10 = (v9 & 1) == 0;
  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v5;
  }

  *a2 = v12;
  a2[1] = v11;
}

uint64_t sub_25F2E30E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58840, &qword_25F315AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F2E3150()
{
  result = qword_27FD58850;
  if (!qword_27FD58850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58850);
  }

  return result;
}

unint64_t sub_25F2E31A4()
{
  result = qword_27FD58858;
  if (!qword_27FD58858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58858);
  }

  return result;
}

unint64_t sub_25F2E3218()
{
  result = qword_27FD58860;
  if (!qword_27FD58860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58860);
  }

  return result;
}

unint64_t sub_25F2E327C()
{
  result = qword_27FD58868;
  if (!qword_27FD58868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58868);
  }

  return result;
}

uint64_t sub_25F2E32D0(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_25F30425C() & 1;
}

unint64_t sub_25F2E3304()
{
  result = qword_27FD58878;
  if (!qword_27FD58878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD58870, &unk_25F315B48);
    sub_25F2E3388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58878);
  }

  return result;
}

unint64_t sub_25F2E3388()
{
  result = qword_27FD58880;
  if (!qword_27FD58880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58880);
  }

  return result;
}

unint64_t sub_25F2E33DC()
{
  result = qword_27FD58888[0];
  if (!qword_27FD58888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD58888);
  }

  return result;
}

uint64_t Sequence.firstMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25F305FEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  MEMORY[0x25F8D7310](a3, a5);
  swift_getWitnessTable();
  v12 = sub_25F30511C();
  (*(v8 + 8))(v11, v7);
  v14 = v12;
  sub_25F30539C();
  swift_getWitnessTable();
  sub_25F30583C();
}

uint64_t Sequence.keyedMap<A, B>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a1;
  v18[8] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  result = sub_25F2E3888(sub_25F2E425C, v18, a3, TupleTypeMetadata2, v11, a6, MEMORY[0x277D84950], &v19);
  if (!v7)
  {
    v13 = result;
    v14 = sub_25F304B4C();
    v19 = v13;
    v15 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    KeyValueMap.init<A>(_:)(&v19, v14, v15, WitnessTable, v17, &v20);
    return v20;
  }

  return result;
}

uint64_t Sequence.compactKeyedMap<A, B>(_:)()
{
  swift_getTupleTypeMetadata2();
  result = sub_25F30511C();
  if (!v0)
  {
    v2 = result;
    v3 = sub_25F304B4C();
    v7 = v2;
    v4 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v6 = swift_getWitnessTable();
    KeyValueMap.init<A>(_:)(&v7, v3, v4, WitnessTable, v6, &v8);
    return v8;
  }

  return result;
}

uint64_t sub_25F2E3888(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_25F305C1C();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_25F3050EC();
  v70 = sub_25F30611C();
  v65 = sub_25F30612C();
  sub_25F3060CC();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_25F3050DC();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25F305CDC();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_25F30610C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_25F305CDC();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_25F30610C();
      sub_25F305CDC();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

void Sequence.orderedKeyedMap<A, B>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a1;
  v20[8] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v17 = sub_25F2E3888(sub_25F2E7FA8, v20, a3, TupleTypeMetadata2, v16, a6, MEMORY[0x277D84950], &v21);
  if (!v8)
  {
    v21 = v17;
    v18 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    OrderedDictionary.init<A>(_:)(&v21, a4, a5, v18, a7, WitnessTable, a8);
  }
}

uint64_t Sequence.coiterate<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, a2);
  (*(v12 + 16))(v16, a1, a3);
  return sub_25F2E73D4(v20, v16, a2, a3, a4, a5, type metadata accessor for Coiteration, a6);
}

uint64_t Sequence.identified<A>(by:)(uint64_t *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.keyedMap<A, B>(_:)(sub_25F2E74AC, v6, a2, *(v4 + *MEMORY[0x277D84DE8] + 8), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

void Sequence.orderedKeyedMap<A, B>(_:uniquingKeysWith:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *)@<X2>, uint64_t a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10;
  v28 = a1;
  v29 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v18 = sub_25F2E3888(sub_25F2E7FA8, v22, a5, TupleTypeMetadata2, v17, a8, MEMORY[0x277D84950], &v30);
  if (!v10)
  {
    v30 = v18;
    v19 = sub_25F30539C();
    swift_getWitnessTable();
    OrderedDictionary.init<A>(_:uniquingKeysWith:)(&v30, a3, a4, a6, a7, v19, a10, a9);
  }
}

void (*Sequence.groupElements<A, B>(using:)(void (*a1)(char *, char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void, void, void)
{
  v92 = a7;
  v89 = a1;
  v90 = a2;
  v11 = sub_25F30539C();
  swift_getWitnessTable();
  v88 = v11;
  v12 = type metadata accessor for Inhabited();
  v74 = sub_25F305C1C();
  v68 = *(v74 - 8);
  v13 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v87 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v97 = &v64 - v17;
  v77 = *(v12 - 8);
  v18 = *(v77 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v73 = &v64 - v20;
  v67 = *(a5 - 8);
  v21 = *(v67 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v72 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v76 = *(a4 - 8);
  v27 = *(v76 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v96 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v65 = &v64 - v30;
  v85 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v32 = *(v93 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v91 = &v64 - v33;
  v34 = sub_25F305C1C();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v64 - v37;
  v39 = *(a3 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v84 = &v64 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = swift_getAssociatedTypeWitness();
  v66 = *(v95 - 8);
  v42 = *(v66 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v64 - v43;
  swift_getTupleTypeMetadata2();
  v44 = sub_25F3052DC();
  v81 = sub_25F1CCBBC(v44, a4, v12, v92);

  v98 = v81;
  (*(v39 + 16))(v84, AssociatedConformanceWitness, a3);
  v45 = AssociatedTypeWitness;
  v46 = v38;
  v47 = v65;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v48 = v93;
  v49 = v91;
  v84 = *(v93 + 48);
  v85 = v93 + 48;
  if ((v84)(v46, 1, v45) != 1)
  {
    v81 = *(v48 + 32);
    v80 = (v77 + 48);
    v71 = (v77 + 32);
    v79 = (v76 + 16);
    v70 = (v77 + 16);
    v78 = (v77 + 56);
    v69 = (v77 + 8);
    v77 = v67 + 8;
    v76 += 8;
    v93 = v48 + 32;
    v75 = (v48 + 8);
    v68 += 8;
    v67 += 16;
    v82 = v46;
    v83 = v45;
    v81(v49, v46, v45);
    while (1)
    {
      v89(v47, v26, v49);
      v60 = v97;
      sub_25F304B8C();
      if ((*v80)(v60, 1, v12) == 1)
      {
        (*v68)(v97, v74);
        (*v79)(v96, v47, a4);
        v51 = v47;
        v52 = v72;
        (*v67)(v72, v26, a5);
        v53 = sub_25F3052DC();
        v54 = v26;
        v55 = v88;
        WitnessTable = swift_getWitnessTable();
        v57 = v87;
        Inhabited<>.init(_:otherElements:)(v52, v53, v55, WitnessTable, v87);
        (*v78)(v57, 0, 1, v12);
        sub_25F304B4C();
        sub_25F304B9C();
      }

      else
      {
        v61 = v73;
        (*v71)(v73, v97, v12);
        v62 = swift_getWitnessTable();
        Inhabited<>.append(_:)(v26, v12, v62);
        v51 = v47;
        (*v79)(v96, v47, a4);
        v54 = v26;
        v63 = v87;
        (*v70)(v87, v61, v12);
        (*v78)(v63, 0, 1, v12);
        sub_25F304B4C();
        sub_25F304B9C();
        (*v69)(v61, v12);
      }

      (*v77)(v54, a5);
      (*v76)(v51, a4);
      v49 = v91;
      v58 = v83;
      (*v75)(v91, v83);
      v59 = v82;
      sub_25F305CDC();
      v26 = v54;
      v47 = v51;
      if ((v84)(v59, 1, v58) == 1)
      {
        break;
      }

      v81(v49, v59, v58);
    }
  }

  (*(v66 + 8))(v94, v95);
  return v98;
}

void (*Sequence.groupElements<A>(by:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void, void, void)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.groupElements<A, B>(using:)(sub_25F2E7E2C, v6, a2, *(v4 + *MEMORY[0x277D84DE8] + 8), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

uint64_t Sequence.compactGroupElements<A>(by:)(uint64_t *a1, unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5] = a1;
  return Sequence.compactGroupElements<A, B>(_:)(sub_25F2E7EDC, v6, a2, *(*(v4 + *MEMORY[0x277D84DE8] + 8) + 16), *(v4 + *MEMORY[0x277D84DE8]), a3, a4);
}

uint64_t sub_25F2E4F5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = MEMORY[0x277D84DE8];
  v13 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v22[-v16];
  swift_getAtKeyPath();
  v23 = a3;
  v24 = *(v13 + 16);
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v18 = *(v11 + *v12);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F20977C(sub_25F2E7F7C, v22, MEMORY[0x277D84A98], TupleTypeMetadata2, v20, a6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_25F2E50E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  return (*(*(AssociatedTypeWitness - 8) + 16))(a4 + v9, a2, AssociatedTypeWitness);
}

uint64_t Sequence.compactGroupElements<A, B>(_:)(void (*a1)(char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v99 = a7;
  v110 = a1;
  v111 = a2;
  v11 = sub_25F30539C();
  swift_getWitnessTable();
  v97 = v11;
  v12 = type metadata accessor for Inhabited();
  v84 = sub_25F305C1C();
  v85 = *(v84 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x28223BE20](v84);
  v96 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v75 - v17;
  v102 = *(v12 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x28223BE20](v16);
  v83 = &v75 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = sub_25F305C1C();
  v75 = *(v95 - 8);
  v21 = *(v75 + 64);
  v22 = MEMORY[0x28223BE20](v95);
  v24 = &v75 - v23;
  v101 = a5;
  v77 = *(a5 - 8);
  v25 = *(v77 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v82 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v109 = &v75 - v29;
  v86 = *(a4 - 8);
  v30 = *(v86 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v94 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  v114 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  v35 = *(v100 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v116 = &v75 - v36;
  v37 = sub_25F305C1C();
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v75 - v40;
  v42 = *(a3 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  v107 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = swift_getAssociatedTypeWitness();
  v76 = *(v112 - 8);
  v45 = *(v76 + 64);
  MEMORY[0x28223BE20](v112);
  v113 = &v75 - v46;
  swift_getTupleTypeMetadata2();
  v47 = sub_25F3052DC();
  v48 = sub_25F1CCBBC(v47, a4, v12, v99);

  v117 = v48;
  v49 = AssociatedTypeWitness;
  v50 = *(v42 + 16);
  v106 = a3;
  v50(v107, v115, a3);
  v51 = v100;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v106 = *(v51 + 48);
  v107 = (v51 + 48);
  if (v106(v41, 1, v49) != 1)
  {
    v55 = *(v51 + 32);
    v54 = v51 + 32;
    v103 = TupleTypeMetadata2 - 8;
    v104 = v55;
    v92 = (v86 + 32);
    v91 = (v77 + 32);
    v90 = (v102 + 48);
    v81 = (v102 + 32);
    v89 = (v86 + 16);
    v80 = (v102 + 16);
    v88 = (v102 + 56);
    v79 = (v102 + 8);
    v87 = (v77 + 8);
    v86 += 8;
    v102 = v54 - 24;
    v78 = (v85 + 8);
    v77 += 16;
    v85 = v75 + 8;
    v114 = v12;
    v115 = a4;
    v93 = TupleTypeMetadata2;
    v100 = v54;
    v105 = v41;
    do
    {
      v56 = v41;
      v57 = v116;
      v104(v116, v56, v49);
      v110(v57);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v24, 1, TupleTypeMetadata2) == 1)
      {
        (*v102)(v57, v49);
        (*v85)(v24, v95);
      }

      else
      {
        v58 = *(TupleTypeMetadata2 + 48);
        (*v92)(v34, v24, a4);
        v59 = v101;
        (*v91)(v109, &v24[v58], v101);
        v60 = v108;
        sub_25F304B8C();
        if ((*v90)(v60, 1, v12) == 1)
        {
          (*v78)(v108, v84);
          (*v89)(v94, v34, a4);
          v61 = v109;
          v62 = v24;
          v63 = v82;
          (*v77)(v82, v109, v59);
          v64 = sub_25F3052DC();
          v65 = v97;
          WitnessTable = swift_getWitnessTable();
          v67 = AssociatedConformanceWitness;
          v68 = v96;
          v69 = v63;
          v24 = v62;
          v70 = v65;
          v12 = v114;
          Inhabited<>.init(_:otherElements:)(v69, v64, v70, WitnessTable, v96);
          (*v88)(v68, 0, 1, v12);
          sub_25F304B4C();
          AssociatedConformanceWitness = v67;
          sub_25F304B9C();
          a4 = v115;
          (*v87)(v61, v101);
        }

        else
        {
          v71 = v83;
          (*v81)(v83, v108, v12);
          v72 = swift_getWitnessTable();
          v73 = v109;
          Inhabited<>.append(_:)(v109, v12, v72);
          (*v89)(v94, v34, v115);
          v74 = v96;
          (*v80)(v96, v71, v114);
          (*v88)(v74, 0, 1, v114);
          sub_25F304B4C();
          v12 = v114;
          sub_25F304B9C();
          (*v79)(v71, v12);
          a4 = v115;
          (*v87)(v73, v59);
        }

        (*v86)(v34, a4);
        v49 = AssociatedTypeWitness;
        (*v102)(v116, AssociatedTypeWitness);
        TupleTypeMetadata2 = v93;
      }

      v41 = v105;
      sub_25F305CDC();
    }

    while (v106(v41, 1, v49) != 1);
  }

  (*(v76 + 8))(v113, v112);
  return v117;
}

unsigned int (**Sequence.groupElements<A, B>(using:)(void (*a1)(char *, char *, char *), uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7))(void, void, void)
{
  v76 = a2;
  v83 = a7;
  v78 = a1;
  v10 = sub_25F30539C();
  swift_getWitnessTable();
  v63 = v10;
  v11 = type metadata accessor for Inhabited();
  v62 = sub_25F305C1C();
  v59 = *(v62 - 8);
  v12 = *(v59 + 64);
  v13 = MEMORY[0x28223BE20](v62);
  v79 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v84 = &v57 - v16;
  v66 = *(v11 - 8);
  v17 = *(v66 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v57 - v21;
  v65 = *(a4 - 8);
  v23 = *(v65 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v77 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v74 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = v29[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v32 = &v57 - v31;
  v33 = sub_25F305C1C();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v80 = &v57 - v36;
  v37 = *(a3 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v73 = &v57 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = swift_getAssociatedTypeWitness();
  v58 = *(v81 - 8);
  v40 = *(v58 + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v57 - v41;
  swift_getTupleTypeMetadata2();
  v42 = sub_25F3052DC();
  v70 = sub_25F1CCBBC(v42, a4, v11, v83);

  v85 = v70;
  v43 = *(v37 + 16);
  v71 = a3;
  v43(v73, AssociatedConformanceWitness, a3);
  v44 = v80;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v73 = v29[6];
  v74 = v29 + 6;
  if ((v73)(v44, 1, AssociatedTypeWitness) != 1)
  {
    v46 = v29[4];
    v47 = v66;
    v70 = (v66 + 48);
    v71 = v46;
    v60 = (v66 + 32);
    v68 = (v66 + 16);
    v69 = (v65 + 16);
    v66 += 8;
    v67 = (v47 + 56);
    v65 += 8;
    v64 = (v29 + 1);
    v59 += 8;
    v72 = v22;
    v46(v32, v44, AssociatedTypeWitness);
    while (1)
    {
      v78(v27, v22, v32);
      v50 = v84;
      sub_25F304B8C();
      if ((*v70)(v50, 1, v11) == 1)
      {
        (*v59)(v84, v62);
        (*v69)(v77, v27, a4);
        v48 = v79;
        (*v68)(v79, v22, v11);
        (*v67)(v48, 0, 1, v11);
        sub_25F304B4C();
        sub_25F304B9C();
        (*v66)(v22, v11);
      }

      else
      {
        v51 = v61;
        (*v60)(v61, v84, v11);
        WitnessTable = swift_getWitnessTable();
        v53 = swift_getWitnessTable();
        Inhabited<>.append<A>(contentsOf:)(v72, v11, v11, WitnessTable, v53);
        (*v69)(v77, v27, a4);
        v54 = v79;
        (*v68)(v79, v51, v11);
        (*v67)(v54, 0, 1, v11);
        sub_25F304B4C();
        sub_25F304B9C();
        v55 = *v66;
        v56 = v51;
        v22 = v72;
        (*v66)(v56, v11);
        v55(v22, v11);
      }

      (*v65)(v27, a4);
      (*v64)(v32, AssociatedTypeWitness);
      v49 = v80;
      sub_25F305CDC();
      if ((v73)(v49, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v71(v32, v49, AssociatedTypeWitness);
    }
  }

  (*(v58 + 8))(v82, v81);
  return v85;
}

double Sequence.orderedGroupElements<A, B>(using:)@<D0>(void (*a1)(char *, char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v100 = a7;
  v104 = a6;
  v96 = a1;
  v97 = a2;
  v73 = a8;
  v11 = sub_25F30539C();
  swift_getWitnessTable();
  v95 = v11;
  v12 = type metadata accessor for Inhabited();
  v82 = sub_25F305C1C();
  v75 = *(v82 - 8);
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v82);
  v94 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  v85 = *(v12 - 8);
  v19 = *(v85 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v81 = &v70 - v21;
  v98 = a5;
  v74 = *(a5 - 8);
  v22 = *(v74 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v80 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v70 - v26;
  v84 = *(a4 - 8);
  v28 = *(v84 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v103 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v105 = &v70 - v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = v32[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v35 = &v70 - v34;
  v36 = sub_25F305C1C();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v99 = &v70 - v39;
  v40 = *(a3 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v43 = &v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = swift_getAssociatedTypeWitness();
  v72 = *(v102 - 8);
  v44 = *(v72 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v70 - v45;
  OrderedDictionary.init()(a4, v12, v100, &v106);
  (*(v40 + 16))(v43, AssociatedConformanceWitness, a3);
  v46 = v99;
  sub_25F3050DC();
  v47 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  v91 = v32[6];
  v92 = v32 + 6;
  if (v91(v46, 1, v47) != 1)
  {
    v50 = v32[4];
    v49 = v32 + 4;
    v89 = v50;
    v88 = (v85 + 48);
    v78 = (v85 + 32);
    v87 = (v84 + 16);
    v77 = (v85 + 16);
    v86 = (v85 + 56);
    v76 = (v85 + 8);
    v85 = v74 + 8;
    v84 += 8;
    v83 = (v49 - 3);
    v75 += 8;
    v74 += 16;
    v79 = v49;
    v90 = v35;
    v50(v35, v46, v47);
    while (1)
    {
      v65 = v105;
      v96(v105, v27, v35);
      v104 = type metadata accessor for OrderedDictionary();
      OrderedDictionary.subscript.getter(v65, v104);
      if ((*v88)(v18, 1, v12) == 1)
      {
        (*v75)(v18, v82);
        (*v87)(v103, v105, a4);
        v51 = v80;
        v52 = a4;
        v53 = v98;
        (*v74)(v80, v27, v98);
        v54 = sub_25F3052DC();
        v55 = v47;
        v56 = v12;
        v57 = v27;
        v58 = v95;
        WitnessTable = swift_getWitnessTable();
        v60 = v18;
        v61 = v94;
        v62 = v58;
        v27 = v57;
        v12 = v56;
        v47 = v55;
        Inhabited<>.init(_:otherElements:)(v51, v54, v62, WitnessTable, v94);
        (*v86)(v61, 0, 1, v12);
        v63 = v61;
        v18 = v60;
        OrderedDictionary.subscript.setter(v63, v103, v104);
      }

      else
      {
        v66 = v81;
        (*v78)(v81, v18, v12);
        v67 = swift_getWitnessTable();
        Inhabited<>.append(_:)(v27, v12, v67);
        v68 = v103;
        (*v87)(v103, v105, a4);
        v69 = v94;
        (*v77)(v94, v66, v12);
        (*v86)(v69, 0, 1, v12);
        OrderedDictionary.subscript.setter(v69, v68, v104);
        (*v76)(v66, v12);
        v52 = a4;
        v53 = v98;
      }

      (*v85)(v27, v53);
      (*v84)(v105, v52);
      v35 = v90;
      (*v83)(v90, v47);
      v64 = v99;
      sub_25F305CDC();
      a4 = v52;
      if (v91(v64, 1, v47) == 1)
      {
        break;
      }

      v89(v35, v64, v47);
    }
  }

  (*(v72 + 8))(v101, v102);
  result = *&v106;
  *v73 = v106;
  return result;
}

uint64_t Coiteration.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = *(a1 + 24);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v7 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v28 - v12;
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v28 - v21;
  (*(v14 + 16))(v17, v3, v13);
  sub_25F3050DC();
  (*(v31 + 16))(v9, v3 + *(a1 + 52), v5);
  v23 = v29;
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = AssociatedTypeWitness;
  v26 = swift_getAssociatedConformanceWitness();
  return sub_25F2E73D4(v22, v23, v19, v25, AssociatedConformanceWitness, v26, type metadata accessor for Coiterator, v33);
}

uint64_t sub_25F2E73D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

uint64_t sub_25F2E74AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(v3 + 40);
  swift_getAtKeyPath();
  return (*(*(*(v6 + *MEMORY[0x277D84DE8]) - 8) + 16))(a2, a3);
}

uint64_t sub_25F2E7558@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v11 = v3[7];
  v10 = v3[8];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v11(a3, a3 + *(TupleTypeMetadata2 + 48), a1);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_25F2E75D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Coiteration.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t Coiterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v27 = *(a1 + 40);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_25F305C1C();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_25F305CDC();
  v17 = v2 + *(a1 + 52);
  sub_25F305CDC();
  if ((*(*(v11 - 8) + 48))(v16, 1, v11) == 1 && (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v18 = v29;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v30, 1, 1, TupleTypeMetadata2);
    v20 = v28;
  }

  else
  {
    v18 = v29;
    v21 = swift_getTupleTypeMetadata2();
    v22 = *(v21 + 48);
    v23 = v30;
    (*(v13 + 32))(v30, v16, v12);
    v20 = v28;
    (*(v28 + 16))(v23 + v22, v8, v18);
    (*(*(v21 - 8) + 56))(v23, 0, 1, v21);
  }

  return (*(v20 + 8))(v8, v18);
}

uint64_t Sequence.stableSorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_25F3062EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23[-v12];
  MEMORY[0x25F8D72E0](a3, a4);
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  swift_getWitnessTable();
  v14 = v13;
  v15 = sub_25F3051AC();
  if (v4)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = v15;
    v17 = (*(v10 + 8))(v13, v9);
    v28 = v16;
    MEMORY[0x28223BE20](v17);
    *&v23[-16] = a3;
    *&v23[-8] = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v19 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    v14 = sub_25F1C1AC4(sub_25F2E7F0C, &v23[-32], v19, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
  }

  return v14;
}

BOOL sub_25F2E7C00(char *a1, char *a2, uint64_t (*a3)(char *, char *))
{
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  v8 = a3(&a1[v7], &a2[v7]);
  if (!v3)
  {
    return (v8 & 1) != 0 || (a3(&a2[v7], &a1[v7]) & 1) == 0 && *a1 < *a2;
  }

  return v9;
}

uint64_t sub_25F2E7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a2, &v8[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
}

uint64_t sub_25F2E7E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(v3 + 40);
  swift_getAtKeyPath();
  v7 = *(*(*(v6 + *MEMORY[0x277D84DE8]) - 8) + 16);

  return v7(a2, a3);
}

BOOL sub_25F2E7EE8(char *a1, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_25F2E7C00(a1, a2, *(v2 + 32));
}

uint64_t sub_25F2E7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F2E7CE4(a1, a2);
}

uint64_t sub_25F2E7F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v5 = v2[5];
  return sub_25F2E50E0(a1, v2[6], v2[3], a2);
}

uint64_t Weak.__allocating_init(_:)()
{
  v0 = sub_25F2E8318();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Weak.init(_:)()
{
  v0 = sub_25F2E82C0();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Weak.hash(into:)()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x25F8D88E0]();
  }

  MEMORY[0x25F8D88E0]();
  return swift_unknownObjectRelease();
}

BOOL static Weak.== infix<A>(_:_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t Weak.__deallocating_deinit()
{
  MEMORY[0x25F8D9600](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Weak.hashValue.getter()
{
  sub_25F30671C();
  Weak.hash(into:)();
  return sub_25F30676C();
}

uint64_t sub_25F2E825C()
{
  sub_25F30671C();
  v1 = *v0;
  Weak.hash(into:)();
  return sub_25F30676C();
}

BOOL sub_25F2E829C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static Weak.== infix<A>(_:_:)();
}

uint64_t sub_25F2E82C0()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t AnyEquatable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyEquatableBoxImpl();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_25F2E8510(v9);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t sub_25F2E8510(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 104) - 8) + 32))(v5 + *(*v5 + 120), a1);
  return v5;
}

uint64_t sub_25F2E8718(uint64_t a1)
{
  v1 = *(a1 + 104);
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

uint64_t sub_25F2E87F8()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 112);
  type metadata accessor for AnyEquatableBoxImpl();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(v1 + 120);
    v6 = *(*result + 120);

    v7 = sub_25F304DCC();

    return v7 & 1;
  }

  return result;
}

uint64_t sub_25F2E88F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t sub_25F2E89E0()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t Actor.makeIsolatedTask(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_25F30546C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a4;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = v4;
  swift_unknownObjectRetain_n();

  return sub_25F1B1524(0, 0, v12, &unk_25F315E20, v14);
}

uint64_t sub_25F2E8C0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_25F1AFDB0;

  return v11(a6);
}

uint64_t sub_25F2E8D10(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD000000000000013, 0x800000025F31BA70);
  sub_25F30653C();
  v3 = MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v4 = a2(v3);
  MEMORY[0x25F8D7130](v4);

  return 0;
}

uint64_t sub_25F2E8DD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  return sub_25F2E8D10(*(v0 + 32), *(v0 + 40));
}

uint64_t sub_25F2E8DE8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2E8C0C(a1, v6, v7, v8, v9, v10);
}

uint64_t JITError.additionalLinkErrorInformation.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t JITError.lowValueTitle.getter()
{
  if (*(*v0 + 16))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

unint64_t JITError.additionalDiagnostics.getter()
{
  if (!*(*v0 + 16))
  {
    return 0;
  }

  sub_25F305FAC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v1 = sub_25F304CAC();
  v3 = v2;

  MEMORY[0x25F8D7130](v1, v3);

  return 0xD00000000000001DLL;
}

unint64_t sub_25F2E9054()
{
  if (*(*v0 + 16))
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

uint64_t HumanReadableError.isJITRelated.getter(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v2, a1);
  while (1)
  {
    v6 = v30;
    if (!v30)
    {
      goto LABEL_2;
    }

    v7 = v31;
    v8 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v9 = *(v6 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    HumanReadableError.unwrapped.getter(v6, v7, &v26);
    (*(v9 + 8))(v12, v6);
    v13 = *(&v27 + 1);
    v14 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    (*(v14 + 56))(&v24, v13, v14);
    v15 = v24;
    LOBYTE(v7) = v25;
    __swift_destroy_boxed_opaque_existential_1(&v26);
    if ((v7 & 1) == 0 && (v15 & 0x40) != 0)
    {
      break;
    }

    v16 = v30;
    if (v30)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v18 = *(v16 - 8);
      v19 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21);
      v22 = HumanReadableError.underlying.getter(v16, &v26);
      (*(v18 + 8))(v21, v16, v22);
      goto LABEL_3;
    }

LABEL_2:
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
LABEL_3:
    sub_25F2E9354(&v26, v29);
    sub_25F2E93C4(v29, &v26);
    v5 = *(&v27 + 1);
    sub_25F2E9434(&v26);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v5 = 1;
LABEL_10:
  sub_25F2E9434(v29);
  return v5;
}

uint64_t sub_25F2E9354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2E93C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2E9434(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54840, &unk_25F30BAD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F2E94AC(uint64_t a1)
{
  *(a1 + 8) = sub_25F2E94DC();
  result = sub_25F2E9530();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25F2E94DC()
{
  result = qword_27FD58A90;
  if (!qword_27FD58A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58A90);
  }

  return result;
}

unint64_t sub_25F2E9530()
{
  result = qword_27FD58A98;
  if (!qword_27FD58A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58A98);
  }

  return result;
}

unint64_t sub_25F2E9588()
{
  result = qword_27FD58AA0;
  if (!qword_27FD58AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58AA0);
  }

  return result;
}

uint64_t sub_25F2E95EC(_OWORD *a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for Future.Activity();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v19[-1] - v8);
  v10 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v10;
  *(v2 + 48) = a1[2];
  *(v2 + 57) = *(a1 + 41);
  *(v2 + 80) = mach_absolute_time();
  type metadata accessor for FutureTermination();
  swift_getFunctionTypeMetadata1();
  *v9 = sub_25F3052DC();
  swift_storeEnumTagMultiPayload();
  v11 = sub_25F203E0C(v9, v5);
  (*(v6 + 8))(v9, v5);
  *(v2 + 88) = v11;
  v20 = 0;
  type metadata accessor for Future();
  v12 = sub_25F305C1C();
  v13 = sub_25F203E0C(&v20, v12);
  *(v2 + 96) = v13;
  v19[1] = v13;
  v18 = v4;
  KeyPath = swift_getKeyPath();
  v19[0] = v2;
  v15 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v19, v15, WitnessTable);

  return v2;
}

uint64_t Future.deinit()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  return v0;
}

uint64_t sub_25F2E9840@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Future.Activity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v19 = v1[11];
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v13 + 1) = 118;
  v14 = 2;
  v15 = xmmword_25F315F60;
  v16 = "recentStateSnapshot";
  v17 = 19;
  v18 = 2;
  v9 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v13, v9, WitnessTable);
  sub_25F2EA450(v4, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F2E99C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for FutureState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_25F2E9840(&v10 - v7);
  FutureState.succeededValue.getter(v4, a1);
  return (*(v5 + 8))(v8, v4);
}

BOOL sub_25F2E9AB0()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for FutureState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_25F2E9840(&v9 - v5);
  v7 = FutureState.isCanceled.getter(v2);
  (*(v3 + 8))(v6, v2);
  return v7;
}

BOOL sub_25F2E9B94()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for FutureState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_25F2E9840(&v9 - v5);
  v7 = FutureState.failedError.getter(v2);
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
  }

  return v7 != 0;
}

uint64_t sub_25F2E9C90()
{
  v1 = *v0;
  v13 = v0[11];
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v7 + 1) = 118;
  v8 = 2;
  v9 = xmmword_25F315F70;
  v10 = "runningTime";
  v11 = 11;
  v12 = 2;
  v6[2] = *(v1 + 80);
  type metadata accessor for Future.Activity();
  v2 = sub_25F30476C();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58AA8, &qword_25F315FC0);
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)(&v7, sub_25F2EA7C0, v6, v2, v3, WitnessTable);
}

uint64_t sub_25F2E9DB4(void (*a1)(void), uint64_t a2)
{
  v25 = a2;
  v4 = *(*v2 + 80);
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23 = &v22 - v8;
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v36 = v2[11];
  *&v30 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v30 + 1) = 118;
  v31 = 2;
  v32 = xmmword_25F315F80;
  v33 = "_observeFinish(_:)";
  v34 = 18;
  v35 = 2;
  v27 = v4;
  v28 = a1;
  v24 = a1;
  v29 = v25;
  type metadata accessor for Future.Activity();
  v17 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v30, sub_25F2ED7D0, v26, v17, v9, WitnessTable);

  (*(v10 + 16))(v14, v16, v9);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    v19 = *(v10 + 8);
    v19(v16, v9);
    return (v19)(v14, v9);
  }

  else
  {
    v21 = v23;
    (*(v6 + 32))(v23, v14, v5);
    v24(v21);
    (*(v6 + 8))(v21, v5);
    return (*(v10 + 8))(v16, v9);
  }
}

uint64_t sub_25F2EA104(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[10];
  v6 = mach_absolute_time();
  v26 = v2[11];
  *&v20 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v20 + 1) = 118;
  v21 = 2;
  v22 = xmmword_25F315F90;
  v23 = "didFinish(_:)";
  v24 = 13;
  v25 = 2;
  v16 = *(v4 + 80);
  v17 = a1;
  v18 = v5;
  v19 = v6;
  type metadata accessor for Future.Activity();
  v7 = sub_25F30476C();
  type metadata accessor for FutureTermination();
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  v8 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v20, sub_25F2ED494, v15, v7, v8, WitnessTable);

  if (v27)
  {
    *&v20 = v27;
    MEMORY[0x28223BE20](v10);
    swift_getWitnessTable();
    sub_25F3051BC();
  }

  v27 = v2[12];
  MEMORY[0x28223BE20](v10);
  KeyPath = swift_getKeyPath();
  v26 = 0;
  type metadata accessor for Future();
  sub_25F305C1C();
  v12 = sub_25F30476C();

  v13 = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, &v26, v12, v13);
}

uint64_t Future<A>.init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v10 = sub_25F2ECDC4(a2, a3, a4, a5, a6, a7, a8, a9, a10);

  return v10;
}

uint64_t sub_25F2EA450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 16);
    v9 = type metadata accessor for FutureTermination();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    v12 = *(a1 + 16);
    v13 = type metadata accessor for FutureTermination();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

__n128 Future.initializationCallsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

uint64_t sub_25F2EA638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Future.Activity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  (*(v5 + 16))(v11 - v7, a1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for FutureTermination();
    *a2 = *&v8[*(swift_getTupleTypeMetadata2() + 48)];
    *(a2 + 16) = 0;
    return (*(*(v9 - 8) + 8))(v8, v9);
  }

  else
  {
    result = (*(v5 + 8))(v8, v4);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t sub_25F2EA7DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Future.Activity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v20 - v13);
  (*(v11 + 16))(v20 - v13, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for FutureTermination();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a5, v14, v15);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }

  else
  {
    (*(v11 + 8))(a1, v10);
    v21 = *v14;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;
    v20[0] = sub_25F2BD03C;
    v20[1] = v18;
    type metadata accessor for FutureTermination();
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();

    sub_25F30533C();
    *a1 = v21;
    swift_storeEnumTagMultiPayload();
    v19 = swift_checkMetadataState();
    return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
  }
}

uint64_t sub_25F2EAA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for Future.Activity();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v20 - v13);
  (*(v11 + 16))(v20 - v13, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, v10);
    v20[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    v20[1] = 118;
    v21 = 2;
    *v22 = *v27;
    *&v22[3] = *&v27[3];
    v23 = xmmword_25F314AB0;
    v24 = "didFinish(_:)";
    v25 = 13;
    v26 = 2;
    result = sub_25F213F98(v20);
    v16 = 0;
  }

  else
  {
    (*(v11 + 8))(a1, v10);
    v16 = *v14;
    v17 = type metadata accessor for FutureTermination();
    v18 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(v17 - 8) + 16))(a1, a2, v17);
    *v18 = a3;
    v18[1] = a4;
    result = swift_storeEnumTagMultiPayload();
  }

  *a5 = v16;
  return result;
}

uint64_t Future.__deallocating_deinit()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t Future<A>.termination.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25F2EAD6C, 0, 0);
}

uint64_t sub_25F2EAD6C()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v5 = type metadata accessor for FutureTermination();
  *v3 = v0;
  v3[1] = sub_25F2EAE50;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822007B8](v6, 0, 0, 0x74616E696D726574, 0xEB000000006E6F69, sub_25F2ECE44, v7, v5);
}

uint64_t sub_25F2EAE50()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F2EAF44(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = sub_25F2EAFE8(a1, v2);
  v5 = v4;
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v5;
  Future.observeFinish(_:)(sub_25F2ED54C, v6);
}

uint64_t (*sub_25F2EAFE8(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  type metadata accessor for FutureTermination();
  v4 = sub_25F30542C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v8, v4);
  return sub_25F2ED558;
}

uint64_t sub_25F2EB138(uint64_t a1)
{
  sub_25F2ED5F8(a1);
  v2 = type metadata accessor for FutureTermination();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_25F2EB1A8(uint64_t a1, uint64_t (*a2)(char *))
{
  v4 = type metadata accessor for FutureTermination();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return a2(v7);
}

uint64_t Future<A>.result.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = *(*v1 + 80);
  v3 = type metadata accessor for FutureTermination();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_25F2EB35C;

  return Future<A>.termination.getter(v5);
}

uint64_t sub_25F2EB35C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2EB458, 0, 0);
}

uint64_t sub_25F2EB458()
{
  v1 = v0[4];
  v2 = v0[5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v2, v0[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[3];
    *v0[2] = *v2;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v5 = v0[5];

    v6 = v0[1];
    goto LABEL_7;
  }

  v9 = *v2;
  v10 = v2[1];
  *v11 = v2[2];
  *&v11[9] = *(v2 + 41);
  sub_25F2DD890();
  swift_allocError();
  *(v7 + 41) = *&v11[9];
  *(v7 + 16) = v10;
  *(v7 + 32) = *v11;
  *v7 = v9;
  *(v7 + 64) = MEMORY[0x277D84F90];
  swift_willThrow();

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t Future<A>.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25F2EB65C, 0, 0);
}

uint64_t sub_25F2EB65C()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  *v3 = v0;
  v3[1] = sub_25F2EB730;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282200830](v5, &unk_25F315FF0, v6, sub_25F2ECEE8, v6, 0, 0, v4);
}

uint64_t sub_25F2EB730()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F2996E4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25F2EB864(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = *(*a2 + 80);
  v3 = type metadata accessor for FutureTermination();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_25F2EB94C;

  return Future<A>.termination.getter(v5);
}

uint64_t sub_25F2EB94C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2EBA48, 0, 0);
}

uint64_t sub_25F2EBA48()
{
  v1 = v0[4];
  v2 = v0[5];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v4 = *v2;
    }

    else
    {
      v9 = *v2;
      v10 = *(v2 + 1);
      *v11 = *(v2 + 2);
      *&v11[9] = *(v2 + 41);
      sub_25F2DD890();
      swift_allocError();
      *(v6 + 41) = *&v11[9];
      *(v6 + 16) = v10;
      *(v6 + 32) = *v11;
      *v6 = v9;
      *(v6 + 64) = MEMORY[0x277D84F90];
      v7 = v0[5];
    }

    swift_willThrow();

    v5 = v0[1];
  }

  else
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v2);

    v5 = v0[1];
  }

  return v5();
}

uint64_t Task<>.future.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-v6];
  type metadata accessor for Future();
  v8 = sub_25F30546C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a2;

  *&v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  *(&v19 + 1) = 118;
  v20 = 2;
  v21 = xmmword_25F315FA0;
  v22 = "future";
  v23 = 6;
  v24 = 2;
  v14 = v7;
  v15 = &unk_25F316008;
  v16 = v9;
  v17 = nullsub_2;
  v18 = v10;
  v11 = sub_25F1D6C6C(&v19, sub_25F2ED6E4);
  sub_25F1B47B0(v7);

  return v11;
}

uint64_t sub_25F2EBD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D857C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  *v8 = v3;
  v8[1] = sub_25F1AFDB0;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, a3, v9, v10);
}

void sub_25F2EBE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_25F1B4740(a2, &v18 - v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a1;
  v16[7] = a5;
  v16[8] = a6;

  v17 = sub_25F1B1524(0, 0, v15, &unk_25F3160E0, v16);
  v18 = 0uLL;

  Promise.observeCancelation(on:_:)(&v18, sub_25F29FE88, v17);

  sub_25F2033DC(v18);
}

uint64_t sub_25F2EBF64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[22] = a6;
  v10 = *a6;
  v11 = sub_25F30543C();
  v8[25] = v11;
  v12 = *(v11 - 8);
  v8[26] = v12;
  v13 = *(v12 + 64) + 15;
  v8[27] = swift_task_alloc();
  v14 = *(v10 + 80);
  v8[28] = v14;
  v15 = *(v14 - 8);
  v8[29] = v15;
  v8[30] = *(v15 + 64);
  v8[31] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[32] = v16;
  v20 = (a4 + *a4);
  v17 = a4[1];
  v18 = swift_task_alloc();
  v8[33] = v18;
  *v18 = v8;
  v18[1] = sub_25F2EC150;

  return v20(v16);
}

uint64_t sub_25F2EC150()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_25F2EC3D4;
  }

  else
  {
    v3 = sub_25F2EC264;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F2EC264()
{
  v17 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  Promise.succeed(with:)(v1);
  (*(v4 + 16))(v2, v1, v5);
  v9 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v5;
  *(v10 + 3) = v7;
  *(v10 + 4) = v6;
  (*(v4 + 32))(&v10[v9], v2, v5);
  v16 = 0uLL;

  Promise.observeCancelation(on:_:)(&v16, sub_25F2C88D8, v10);

  sub_25F2033DC(v16);
  (*(v4 + 8))(v1, v5);
  v12 = v0[31];
  v11 = v0[32];
  v13 = v0[27];

  v14 = v0[1];

  return v14();
}

uint64_t sub_25F2EC3D4()
{
  v22 = v0;
  v1 = *(v0 + 272);
  *(v0 + 160) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  if (swift_dynamicCast())
  {
    v4 = *v2;
    *(v0 + 104) = *(v0 + 32);
    v5 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 48);
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 88) = *v2;
    v6 = *(v0 + 272);
    v7 = *(v0 + 176);
    *(v0 + 152) = *(v0 + 80);
    v20[0] = v4;
    v20[1] = v5;
    v21[0] = *(v0 + 48);
    *(v21 + 9) = *(v0 + 57);
    Promise.cancel(callsite:)(v20);

    sub_25F278DD0(v0 + 88);
  }

  else
  {
    v8 = *(v0 + 272);
    v9 = *(v0 + 216);
    v10 = *(v0 + 200);
    *(v0 + 168) = v8;
    v11 = v8;
    v12 = swift_dynamicCast();
    v13 = *(v0 + 272);
    v14 = *(v0 + 176);
    if (v12)
    {
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      sub_25F1D8FB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift", 118, 2, 285, 39, "init(dsoHandle:file:line:column:function:priority:operation:cleanupOnCancelation:)", 82, 2);
    }

    else
    {
      Promise.fail(with:)(*(v0 + 272));
    }
  }

  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  v17 = *(v0 + 216);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t Future<A>.init(dsoHandle:file:line:column:function:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v25 = a7;
  v26 = a8;
  v23 = a5;
  v24 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v23 - v18;
  sub_25F1B4740(a10, &v23 - v18);
  v20 = swift_allocObject();
  *(v20 + 16) = *(v12 + 80);
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = a9;
  v27 = v19;
  v28 = a11;
  v29 = a12;
  v30 = nullsub_2;
  v31 = v20;
  v21 = sub_25F1D6C6C(&v32, sub_25F2ED6E4);
  sub_25F1B47B0(v19);

  sub_25F1B47B0(a10);
  return v21;
}

uint64_t Sequence.select<A>(file:line:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD58AB0, &qword_25F316010);
  v0 = swift_allocObject();
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  type metadata accessor for Future();
  v1 = sub_25F1D8E58("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift", 118, 2, 329, 23, "select(file:line:)", 18, 2, sub_25F2ED028);

  return v1;
}

void sub_25F2EC810(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a5;
  v32 = *a1;
  v33 = a4;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v31 - v20;
  (*(v13 + 16))(v16, a2, a7);
  sub_25F3050DC();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  if (v36)
  {
    v35 = v18;
    do
    {
      v22 = swift_allocObject();
      v22[2] = a7;
      v22[3] = a8;
      v22[4] = a3;
      v22[5] = a1;

      Future.observeFinish(_:)(sub_25F2ED540, v22);

      sub_25F305CDC();
    }

    while (v36);
    (*(v35 + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v18 + 8))(v21, AssociatedTypeWitness);
    v23 = *(v32 + 80);
    v24 = sub_25F30685C();
    v26 = v25;
    sub_25F2ED4EC();
    v27 = swift_allocError();
    *v28 = v24;
    v28[1] = v26;
    v29 = v34;
    v30 = v35;
    v28[2] = v33;
    v28[3] = v30;
    v28[4] = v29;

    Promise.fail(with:)(v27);
  }
}

void sub_25F2ECB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v18 - v8;
  v10 = type metadata accessor for FutureTermination();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  os_unfair_lock_lock((a2 + 20));
  if (*(a2 + 16))
  {

    os_unfair_lock_unlock((a2 + 20));
  }

  else
  {
    *(a2 + 16) = 1;
    os_unfair_lock_unlock((a2 + 20));
    (*(v11 + 16))(v14, a1, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v16 = *v14;
        Promise.fail(with:)(*v14);
      }

      else
      {
        v17 = *(v14 + 1);
        v18[0] = *v14;
        v18[1] = v17;
        v19[0] = *(v14 + 2);
        *(v19 + 9) = *(v14 + 41);
        Promise.cancel(callsite:)(v18);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v14, v5);
      Promise.succeed(with:)(v9);
      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_25F2ECD6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  return (*(*v8 + 192))(v10);
}

uint64_t sub_25F2ECDC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v9 = sub_25F1D6C6C(&v11, sub_25F2ED6E4);
  sub_25F1B47B0(a9);
  return v9;
}

uint64_t sub_25F2ECE4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F1AFDB0;

  return sub_25F2EB864(a1, v1);
}

uint64_t sub_25F2ECEE8()
{
  v2[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
  v2[1] = 118;
  v3 = 2;
  v4 = xmmword_25F315FB0;
  v5 = "value";
  v6 = 5;
  v7 = 2;
  return (*(*v0 + 192))(v2);
}

uint64_t sub_25F2ECF7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1B51E0;

  return sub_25F2EBD3C(a1, v4, v5);
}

uint64_t sub_25F2ED194(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for FutureTermination();
  swift_getFunctionTypeMetadata1();
  result = sub_25F30539C();
  if (v3 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2ED24C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x39)
  {
    v3 = 57;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v5 = v4 | 1;
  if ((v4 | 1) <= 3)
  {
    v6 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v6 = 2;
  }

  if (v6 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v6 < 0x100)
  {
    v7 = 1;
  }

  if (v6 >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = *&a1[v5];
      if (*&a1[v5])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = *&a1[v5];
      if (v9)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    v13 = a1[v4];
    if (v13 >= 2)
    {
      return (v13 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = a1[v5];
  if (!a1[v5])
  {
    goto LABEL_29;
  }

LABEL_25:
  v11 = (v9 - 1) << (8 * v5);
  if (v5 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 255;
}

void sub_25F2ED340(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v7 = v6 | 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v7] = 0;
    }

    else if (v10)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      a1[v6] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v7 <= 3)
  {
    v8 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_26;
  }

LABEL_18:
  v11 = a2 - 255;
  v12 = (a2 - 255) >> 8;
  bzero(a1, v6 | 1);
  if (v7 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v7 <= 3)
  {
    *a1 = v11;
    if (v10 > 1)
    {
LABEL_23:
      if (v10 == 2)
      {
        *&a1[v7] = v13;
      }

      else
      {
        *&a1[v7] = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v11;
    if (v10 > 1)
    {
      goto LABEL_23;
    }
  }

  if (v10)
  {
    a1[v7] = v13;
  }
}

uint64_t sub_25F2ED4B4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

unint64_t sub_25F2ED4EC()
{
  result = qword_27FD58BB8[0];
  if (!qword_27FD58BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD58BB8);
  }

  return result;
}

void sub_25F2ED540(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_25F2ECB24(a1, v1[4], v1[5]);
}

uint64_t sub_25F2ED54C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_25F2EB1A8(a1, *(v1 + 24));
}

uint64_t sub_25F2ED558(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for FutureTermination();
  v4 = *(*(sub_25F30542C() - 8) + 80);

  return sub_25F2EB138(a1);
}

uint64_t sub_25F2ED5F8(uint64_t a1)
{
  v2 = type metadata accessor for FutureTermination();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2);
  sub_25F30542C();
  return sub_25F30541C();
}

uint64_t sub_25F2ED6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2EBF64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t WeakSet.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Weak();
  v3 = sub_25F3052DC();
  if (sub_25F30531C())
  {
    WitnessTable = swift_getWitnessTable();
    v5 = sub_25F2EE1A8(v3, v2, WitnessTable);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *a1 = v5;
  return result;
}

uint64_t WeakSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v9 = type metadata accessor for Weak();
  v15[6] = sub_25F2E3888(sub_25F24928C, v15, a3, v9, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], v10);
  v11 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = Collection<>.uniqued()(v11, WitnessTable);
  (*(*(a3 - 1) + 8))(a1, a3);

  *a5 = v13;
  return result;
}

uint64_t WeakSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = a1;
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  result = WeakSet.init<A>(_:)(&v8, a2, v5, WitnessTable, &v9);
  *a3 = v9;
  return result;
}

uint64_t WeakSet.array.getter(uint64_t a1)
{
  v5 = *v1;
  v4 = *(a1 + 16);
  type metadata accessor for Weak();

  swift_getWitnessTable();
  sub_25F3056FC();
  swift_getWitnessTable();
  v2 = sub_25F30511C();

  return v2;
}

uint64_t sub_25F2EDB7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Weak();
  WitnessTable = swift_getWitnessTable();
  return a2(v4, v6, WitnessTable);
}

uint64_t WeakSet.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a4 + 16);
  type metadata accessor for Weak();
  swift_getWitnessTable();
  return sub_25F30566C();
}

uint64_t WeakSet.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a4 + 16);
  type metadata accessor for Weak();
  swift_getWitnessTable();
  sub_25F30571C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t WeakSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for Weak();
  sub_25F2E8318();
  swift_getWitnessTable();
  sub_25F3056FC();
  sub_25F30568C();
}

uint64_t WeakSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  type metadata accessor for Weak();
  sub_25F2E8318();
  swift_getWitnessTable();
  sub_25F3056FC();
  sub_25F30569C();
}

uint64_t sub_25F2EDEA8@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_25F2EDEDC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_25F2EDF6C(v6, *a2, *(a2 + 8), *(a2 + 16), a3);
  v7[4] = v9;
  v7[5] = v8;
  return sub_25F2490BC;
}

uint64_t (*sub_25F2EDF6C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))(uint64_t a1)
{
  *a1 = *v5;
  a1[1] = WeakSet.subscript.getter(a2, a3, a4 & 1, a5);
  return sub_25F24915C;
}

uint64_t sub_25F2EDFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = WeakSet.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_25F2EE010(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = WeakSet.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_25F1AC3CC(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25F2EE08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;

  v5 = WeakSet.startIndex.getter(a1);
  v7 = v6;
  v9 = v8;

  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9 & 1;
  return result;
}

uint64_t sub_25F2EE0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2EE14C()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v2 = *v0;

  return v1;
}

uint64_t sub_25F2EE1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_25F30531C())
  {
    sub_25F305F4C();
    v16 = sub_25F305F3C();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_25F30531C();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_25F3052FC();
    sub_25F30528C();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_25F30601C();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_25F304BCC();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_25F304DCC();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25F2EE59C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void CrashReportError.ConditionInFileError.init(report:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.ConditionInFileError();
  v141 = *(v4 - 8);
  v5 = *(v141 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  v140 = v7;
  v7[8] = 1;
  v8 = type metadata accessor for CrashReport(0);
  v9 = *(v8 + 36);
  v142 = a1;
  v10 = *(a1 + v9);
  if (!v10)
  {
LABEL_70:
    sub_25F1AF760(v142);
    v118 = 1;
    goto LABEL_119;
  }

  v138 = v8;
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = ((v12 + 63) >> 6);
  v147 = v10;
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v17 = v11;
  v18 = 0;
  v19 = 0x27FD52000uLL;
  v20 = &unk_27FD58000;
  v139 = MEMORY[0x277D84F90];
  v145 = a2;
  v146 = v4;
  v144 = v11;
  v143 = v15;
LABEL_5:
  v21 = v18;
  if (!v14)
  {
    goto LABEL_7;
  }

  do
  {
    v22 = v21;
LABEL_10:
    v23 = *(v147 + 56);
    v150 = v22;
    v24 = *(v23 + ((v22 << 9) | (8 * __clz(__rbit64(v14)))));
    v15 = *(v24 + 16);

    if (!v15)
    {
      v27 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }

    v25 = 0;
    v26 = v24 + 40;
    v148 = v15 - 1;
    v27 = MEMORY[0x277D84F90];
    v152 = v24;
    v153 = v14;
    v154 = v15;
    v149 = v24 + 40;
    do
    {
      v151 = v27;
      v28 = (v26 + 16 * v25);
      a2 = v25;
      while (1)
      {
        if (a2 >= *(v24 + 16))
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:

          v134 = 0;
          v133 = 1;
          a2 = v145;
          v4 = v146;
          goto LABEL_118;
        }

        v29 = *(v28 - 1);
        v30 = *v28;

        v31 = sub_25F304DDC();
        if (*(v19 + 2472) != -1)
        {
          break;
        }

        v32 = v20[392];
        if (v32)
        {
          goto LABEL_18;
        }

LABEL_13:

LABEL_14:
        ++a2;

        v28 += 2;
        if (v15 == a2)
        {
          v27 = v151;
          goto LABEL_41;
        }
      }

      v160 = v31;
      swift_once();
      v31 = v160;
      v32 = v20[392];
      if (!v32)
      {
        goto LABEL_13;
      }

LABEL_18:
      v160 = v31;
      v33 = v32;
      v34 = sub_25F304DDC();
      v35 = [v33 firstMatchInString:v34 options:0 range:{0, sub_25F304F2C()}];

      if (!v35)
      {

        v15 = v154;
        goto LABEL_14;
      }

      v155 = v33;
      v36 = sub_25F304DDC();
      v158 = v35;
      v37 = [v35 rangeWithName_];
      v39 = v38;

      if (v39 <= 0)
      {
        v156 = 0;
        v157 = 0;
      }

      else
      {
        v40 = [v160 substringWithRange_];
        v41 = sub_25F304E0C();
        v43 = v42;

        v161 = v41;
        v162 = v43;
        v156 = sub_25F3050BC();
        v157 = v44;
      }

      v45 = sub_25F304DDC();
      v46 = [v158 rangeWithName_];
      v48 = v47;

      v49 = [v160 substringWithRange_];
      v50 = sub_25F304E0C();
      v52 = v51;

      v161 = v50;
      v162 = v52;
      sub_25F3050BC();
      v53 = sub_25F304BFC();
      v55 = v54;

      if (v157)
      {
        v56 = sub_25F304BFC();
        v58 = v57;
      }

      else
      {
        v58 = 0;
        v56 = v156;
      }

      v59 = off_28715BC88;
      v161 = v53;
      v162 = v55;
      v165 = v56;
      v166 = v58;
      v159 = *&qword_28715BC90;
      swift_retain_n();

      (v59)(&v165, &v164);

      if ((v164 & 1) == 0)
      {

        v60 = off_28715BCA8;
        v161 = v53;
        v162 = v55;
        v165 = v56;
        v166 = v58;
        v159 = *&qword_28715BCB0;
        swift_retain_n();

        (v60)(&v161, &v164);

        if ((v164 & 1) == 0)
        {

          v61 = off_28715BCC8;
          v161 = v53;
          v162 = v55;
          v165 = v56;
          v166 = v58;
          v159 = *&qword_28715BCD0;
          swift_retain_n();

          (v61)(&v161, &v164);

          if ((v164 & 1) == 0)
          {

            v62 = off_28715BCE8;
            v161 = v53;
            v162 = v55;
            v165 = v56;
            v166 = v58;
            v159 = *&qword_28715BCF0;
            swift_retain_n();

            (v62)(&v161, &v164);

            if ((v164 & 1) == 0)
            {

              v24 = v152;
              v14 = v153;
              v19 = 0x27FD52000;
              v20 = &unk_27FD58000;
              v15 = v154;
              goto LABEL_14;
            }
          }
        }
      }

      v14 = v153;
      v63 = v155;
      v64 = v157;

      v165 = v156;
      v166 = v64;
      (*(&v159 + 1))(&v161, &v165);

      v65 = v161;
      v66 = v162;
      v67 = v163;
      v68 = v151;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_25F2EFD74(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      v71 = v68;
      v24 = v152;
      if (v70 >= v69 >> 1)
      {
        v71 = sub_25F2EFD74((v69 > 1), v70 + 1, 1, v68);
      }

      v25 = a2 + 1;
      v27 = v71;
      v71[2] = v70 + 1;
      v72 = &v71[5 * v70];
      v72[4] = v160;
      v72[5] = v65;
      v72[6] = v66;
      *(v72 + 56) = v67;
      v72[8] = v158;
      v26 = v149;
      v19 = 0x27FD52000;
      v20 = &unk_27FD58000;
      v15 = v154;
    }

    while (v148 != a2);
LABEL_41:
    v14 &= v14 - 1;
    if (v27[2])
    {
      v73 = v27[5];
      v15 = v27[6];
      v74 = *(v27 + 56);
      v75 = v27[8];
      v76 = v27[4];
      sub_25F2EFEBC(v73, v15, v74);
      v77 = v75;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a2 = v145;
      v79 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v139 = sub_25F2EFD74(0, v139[2] + 1, 1, v139);
      }

      v17 = v144;
      v16 = v143;
      v81 = v139[2];
      v80 = v139[3];
      if (v81 >= v80 >> 1)
      {
        v84 = sub_25F2EFD74((v80 > 1), v81 + 1, 1, v139);
        v16 = v143;
        v17 = v144;
        v139 = v84;
      }

      v82 = v139;
      v139[2] = v81 + 1;
      v83 = &v82[5 * v81];
      v83[4] = v76;
      v83[5] = v73;
      v83[6] = v15;
      *(v83 + 56) = v74;
      v83[8] = v77;
      v4 = v146;
      v14 = v79;
      v19 = 0x27FD52000;
      v20 = &unk_27FD58000;
      v18 = v150;
      goto LABEL_5;
    }

    v21 = v150;
    a2 = v145;
    v4 = v146;
    v17 = v144;
    v16 = v143;
  }

  while (v14);
  while (1)
  {
LABEL_7:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_121;
    }

    if (v22 >= v16)
    {
      break;
    }

    v14 = *(v17 + 8 * v22);
    ++v21;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  if (!v139[2])
  {

    goto LABEL_70;
  }

  v85 = v139[5];
  v86 = v139[6];
  v87 = v139[8];
  v88 = *(v139 + 56);
  v15 = v139[4];
  sub_25F2EFEBC(v85, v86, v88);
  a2 = v87;

  v89 = (v142 + *(v138 + 20));
  v90 = v89[1];
  v91 = v140;
  *(v140 + 2) = *v89;
  *(v91 + 3) = v90;
  *(v91 + 4) = v85;
  *(v91 + 5) = v86;
  v91[48] = v88;

  v92 = sub_25F304DDC();
  v93 = [a2 rangeWithName_];
  v95 = v94;

  v96 = [v15 substringWithRange_];
  v97 = sub_25F304E0C();
  v99 = v98;

  v161 = v97;
  v162 = v99;
  *(v91 + 7) = sub_25F3050BC();
  *(v91 + 8) = v100;
  v101 = sub_25F304DDC();
  v102 = [a2 rangeWithName_];
  v104 = v103;

  v105 = [v15 substringWithRange_];
  v106 = sub_25F304E0C();
  v108 = v107;

  v109 = HIBYTE(v108) & 0xF;
  v110 = v106 & 0xFFFFFFFFFFFFLL;
  if ((v108 & 0x2000000000000000) != 0)
  {
    v111 = HIBYTE(v108) & 0xF;
  }

  else
  {
    v111 = v106 & 0xFFFFFFFFFFFFLL;
  }

  if (!v111)
  {
    goto LABEL_122;
  }

  v4 = v146;
  if ((v108 & 0x1000000000000000) != 0)
  {
    LOBYTE(v165) = 0;
    v114 = sub_25F2F1970(v106, v108, 10);
    v133 = v136;
    goto LABEL_114;
  }

  if ((v108 & 0x2000000000000000) != 0)
  {
    v161 = v106;
    v162 = v108 & 0xFFFFFFFFFFFFFFLL;
    if (v106 == 43)
    {
      if (!v109)
      {
LABEL_128:
        __break(1u);
        return;
      }

      if (--v109)
      {
        v114 = 0;
        v125 = &v161 + 1;
        while (1)
        {
          v126 = *v125 - 48;
          if (v126 > 9)
          {
            break;
          }

          v127 = 10 * v114;
          if ((v114 * 10) >> 64 != (10 * v114) >> 63)
          {
            break;
          }

          v114 = v127 + v126;
          if (__OFADD__(v127, v126))
          {
            break;
          }

          ++v125;
          if (!--v109)
          {
            goto LABEL_113;
          }
        }
      }
    }

    else if (v106 == 45)
    {
      if (!v109)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (--v109)
      {
        v114 = 0;
        v119 = &v161 + 1;
        while (1)
        {
          v120 = *v119 - 48;
          if (v120 > 9)
          {
            break;
          }

          v121 = 10 * v114;
          if ((v114 * 10) >> 64 != (10 * v114) >> 63)
          {
            break;
          }

          v114 = v121 - v120;
          if (__OFSUB__(v121, v120))
          {
            break;
          }

          ++v119;
          if (!--v109)
          {
            goto LABEL_113;
          }
        }
      }
    }

    else if (v109)
    {
      v114 = 0;
      v130 = &v161;
      while (1)
      {
        v131 = *v130 - 48;
        if (v131 > 9)
        {
          break;
        }

        v132 = 10 * v114;
        if ((v114 * 10) >> 64 != (10 * v114) >> 63)
        {
          break;
        }

        v114 = v132 + v131;
        if (__OFADD__(v132, v131))
        {
          break;
        }

        v130 = (v130 + 1);
        if (!--v109)
        {
          goto LABEL_113;
        }
      }
    }

LABEL_112:
    v114 = 0;
    LOBYTE(v109) = 1;
    goto LABEL_113;
  }

  if ((v106 & 0x1000000000000000) != 0)
  {
    v112 = ((v108 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v112 = sub_25F30605C();
  }

  v113 = *v112;
  if (v113 == 43)
  {
    if (v110 < 1)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v109 = v110 - 1;
    if (v110 == 1)
    {
      goto LABEL_112;
    }

    v114 = 0;
    if (!v112)
    {
      goto LABEL_104;
    }

    v122 = v112 + 1;
    while (1)
    {
      v123 = *v122 - 48;
      if (v123 > 9)
      {
        goto LABEL_112;
      }

      v124 = 10 * v114;
      if ((v114 * 10) >> 64 != (10 * v114) >> 63)
      {
        goto LABEL_112;
      }

      v114 = v124 + v123;
      if (__OFADD__(v124, v123))
      {
        goto LABEL_112;
      }

      ++v122;
      if (!--v109)
      {
        goto LABEL_113;
      }
    }
  }

  if (v113 != 45)
  {
    if (!v110)
    {
      goto LABEL_112;
    }

    v114 = 0;
    if (!v112)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v128 = *v112 - 48;
      if (v128 > 9)
      {
        goto LABEL_112;
      }

      v129 = 10 * v114;
      if ((v114 * 10) >> 64 != (10 * v114) >> 63)
      {
        goto LABEL_112;
      }

      v114 = v129 + v128;
      if (__OFADD__(v129, v128))
      {
        goto LABEL_112;
      }

      ++v112;
      if (!--v110)
      {
        goto LABEL_104;
      }
    }
  }

  if (v110 < 1)
  {
    __break(1u);
    goto LABEL_126;
  }

  v109 = v110 - 1;
  if (v110 == 1)
  {
    goto LABEL_112;
  }

  v114 = 0;
  if (v112)
  {
    v115 = v112 + 1;
    while (1)
    {
      v116 = *v115 - 48;
      if (v116 > 9)
      {
        goto LABEL_112;
      }

      v117 = 10 * v114;
      if ((v114 * 10) >> 64 != (10 * v114) >> 63)
      {
        goto LABEL_112;
      }

      v114 = v117 - v116;
      if (__OFSUB__(v117, v116))
      {
        goto LABEL_112;
      }

      ++v115;
      if (!--v109)
      {
        goto LABEL_113;
      }
    }
  }

LABEL_104:
  LOBYTE(v109) = 0;
LABEL_113:
  LOBYTE(v165) = v109;
  v133 = v109;
LABEL_114:

  if (v133)
  {
    v134 = 0;
  }

  else
  {
    v134 = v114;
  }

  a2 = v145;
LABEL_118:
  v135 = v140;
  *(v140 + 9) = v134;
  *(v135 + 80) = v133 & 1;
  sub_25F2F1EFC(v142, v135 + *(v4 + 36), type metadata accessor for CrashReport);
  sub_25F2F1EFC(v135, a2, type metadata accessor for CrashReportError.ConditionInFileError);
  v118 = 0;
LABEL_119:
  (*(v141 + 56))(a2, v118, 1, v4);
}

uint64_t type metadata accessor for CrashReportError.ConditionInFileError()
{
  result = qword_27FD58C48;
  if (!qword_27FD58C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.ConditionInFileError.processName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CrashReportError.ConditionInFileError.kind.getter()
{
  v1 = *(v0 + 32);
  sub_25F2EFEBC(v1, *(v0 + 40), *(v0 + 48));
  return v1;
}

uint64_t CrashReportError.ConditionInFileError.file.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t CrashReportError.ConditionInFileError.line.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t CrashReportError.ConditionInFileError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.ConditionInFileError() + 36);

  return sub_25F1DF920(v3, a1);
}

unint64_t CrashReportError.ConditionInFileError.highValueTitle.getter()
{
  if (*(v0 + 48) > 1u)
  {
    if (*(v0 + 48) == 2)
    {
      sub_25F305FAC();

      v1 = 0x7245206C61746146;
      goto LABEL_6;
    }

    sub_25F305FAC();

    v2 = 0xD000000000000022;
LABEL_9:
    v4 = v2;
    goto LABEL_10;
  }

  if (*(v0 + 48))
  {
    sub_25F305FAC();

    v2 = 0xD000000000000010;
    goto LABEL_9;
  }

  v1 = 0x6920747265737341;
LABEL_6:
  v4 = v1;
LABEL_10:
  MEMORY[0x25F8D7130](*(v0 + 56), *(v0 + 64));
  return v4;
}

uint64_t CrashReportError.ConditionInFileError.additionalInfo.getter()
{
  v1 = v0;
  sub_25F305FAC();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v18 = v3;
  MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F31BBE0);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = 0xE600000000000000;
  v8 = 0x747265737361;
  v9 = 0xEA0000000000726FLL;
  v10 = 0x7272456C61746166;
  if (v6 != 2)
  {
    v10 = 0xD00000000000001DLL;
    v9 = 0x800000025F31BC00;
  }

  if (*(v1 + 48))
  {
    v8 = 0x69646E6F63657270;
    v7 = 0xEC0000006E6F6974;
  }

  if (*(v1 + 48) <= 1u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (*(v1 + 48) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  MEMORY[0x25F8D7130](v11, v12);

  MEMORY[0x25F8D7130](544106784, 0xE400000000000000);
  MEMORY[0x25F8D7130](*(v1 + 56), *(v1 + 64));
  if (*(v1 + 80))
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v17 = *(v1 + 72);
    v15 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v15);

    v13 = 0x656E696C20746120;
    v14 = 0xE900000000000020;
  }

  MEMORY[0x25F8D7130](v13, v14);

  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  if (v6 <= 2 && v5)
  {
    sub_25F2EFEBC(v4, v5, v6);
    MEMORY[0x25F8D7130](v4, v5);
    sub_25F2F2010(v4, v5, v6);

    MEMORY[0x25F8D7130](2570, 0xE200000000000000);
  }

  return v18;
}

id sub_25F2EF934()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000048, 0x800000025F31BCC0, 0);
  qword_27FD58C40 = result;
  return result;
}

char *sub_25F2EFA04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D30, &qword_25F316588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25F2EFB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2EFC2C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D48, &qword_25F3165A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD58D50, qword_25F3165A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2EFD74(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D38, &qword_25F316590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D40, &qword_25F316598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25F2EFEBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

char *sub_25F2EFED4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C98, &qword_25F3164B0);
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

void *sub_25F2EFFD8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CF8, &qword_25F316528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D00, &qword_25F316530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F0120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D28, &qword_25F316578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25F2F0250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C70, &qword_25F316480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25F2F0384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA0, &qword_25F316570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F04A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54D58, &qword_25F30D4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F05C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C90, &unk_25F3164A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD576C8, &qword_25F312A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F070C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D18, &qword_25F316560);
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

char *sub_25F2F084C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E20, &unk_25F308470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_25F2F09D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CB8, &unk_25F3164D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F30, &qword_25F308580);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F0B18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA8, &unk_25F3083F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F0C70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC0, &qword_25F308410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC8, &qword_25F308418);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F2F0DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CB0, &qword_25F3164C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F0F04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C68, &unk_25F316460);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_25F2F1030(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F1164(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CE8, &qword_25F316508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58CF0, &unk_25F316510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F2F12CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
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

char *sub_25F2F1400(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58C88, &qword_25F316498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25F2F14F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58D20, &qword_25F316568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25F2F1624(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

size_t sub_25F2F1794(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

unsigned __int8 *sub_25F2F1970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_25F3050BC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_25F2E14DC();
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
      result = sub_25F30605C();
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

uint64_t sub_25F2F1EFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s20PreviewsFoundationOS16CrashReportErrorV015ConditionInFileF0V4KindO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      return a6 == 3 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  else if (a3)
  {
    if (a6 != 1)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a2)
  {
    return a5 && (a1 == a4 && a2 == a5 || (sub_25F30659C() & 1) != 0);
  }

  return !a5;
}

uint64_t sub_25F2F2010(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_25F2F2050()
{
  sub_25F243F28(319, &qword_27FD53DF0);
  if (v0 <= 0x3F)
  {
    sub_25F243F28(319, &qword_27FD58C58);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CrashReport(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS16CrashReportErrorV015ConditionInFileF0V4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F2F213C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F2F2184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25F2F21C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F2F21F0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_25F1BF118();
  if (sub_25F305D5C())
  {
    v2 = sub_25F305D5C();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t RepeatedInvocation.__allocating_init(scheduler:callback:cadences:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  RepeatedInvocation.init(scheduler:callback:cadences:)(a1, a2, a3, a4);
  return v11;
}

uint64_t RepeatedInvocation.init(scheduler:callback:cadences:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = *v4;
  v16 = *a4;
  v9 = *(a4 + 2);
  v10 = *(a4 + 24);
  *(v4 + v8[16]) = 0;
  v11 = *(*v4 + 136);
  v12 = v8[11];
  v13 = v8[10];
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v4 + v11, 1, 1, TupleTypeMetadata2);
  (*(*(v13 - 8) + 32))(v4 + *(*v4 + 120), a1, v13);
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 16) = v16;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  return v4;
}

Swift::Void __swiftcall RepeatedInvocation.start()()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  v10 = *(v1 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v10, v5);
  LODWORD(v10) = (*(*(TupleTypeMetadata2 - 8) + 48))(v9, 1, TupleTypeMetadata2);
  (*(v6 + 8))(v9, v5);
  if (v10 == 1)
  {
    RepeatedInvocation.restart()();
  }
}

Swift::Void __swiftcall RepeatedInvocation.restart()()
{
  v1 = *v0;
  RepeatedInvocation.cancel()();
  v2 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = v2;
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  type metadata accessor for RepeatedInvocation.Cadence();
  sub_25F30539C();
  swift_getWitnessTable();
  v6 = type metadata accessor for Inhabited();
  Inhabited.first.getter(v6, &v9);
  v7 = v9;
  v8 = v10;
  sub_25F2F2984(&v7, 0);
}

Swift::Void __swiftcall RepeatedInvocation.cancel()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[11];
  v4 = v2[10];
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = v2[16];
  v12 = *&v1[v11];
  if (v12)
  {
    v13 = *(**(v12 + 16) + 112);
    v14 = *&v1[v11];

    v13(v15);
  }

  (*(*(TupleTypeMetadata2 - 8) + 56))(v10, 1, 1, TupleTypeMetadata2);
  v16 = *(*v1 + 136);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v16], v10, v6);
  swift_endAccess();
}

uint64_t sub_25F2F2984(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = *v2;
  v37 = *(*v2 + 88);
  v36 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v33 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = *(v5 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v13, v2 + v15, v7);
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 48);
  LODWORD(a1) = v17(v13, 1, TupleTypeMetadata2);
  v34 = v8;
  v35 = v7;
  v18 = v13;
  v19 = v36;
  (*(v8 + 8))(v18, v7);
  v20 = a1 == 1;
  v21 = v37;
  if (v20 || v17((v3 + v15), 1, TupleTypeMetadata2) || *(v3 + v15) != v38)
  {
    v22 = *(TupleTypeMetadata2 + 48);
    v23 = v33;
    *v33 = v38;
    v24 = v3 + *(*v3 + 120);
    (*(v21 + 24))(v19, v21);
    (*(v16 + 56))(v23, 0, 1, TupleTypeMetadata2);
    swift_beginAccess();
    (*(v34 + 40))(v3 + v15, v23, v35);
    swift_endAccess();
  }

  type metadata accessor for DelayedInvocation();
  v25 = *(*v3 + 120);

  v26 = sub_25F22DC28(v3 + v25, sub_25F2F3AF4, v3);
  v27 = *(*v3 + 128);
  v28 = *(v3 + v27);
  *(v3 + v27) = v26;

  v30 = *(v3 + v27);
  if (v30)
  {
    v31 = *(v30 + 16);
    v39[0] = v14;
    v32 = *(*v31 + 104);

    v32(v39);
  }

  return result;
}

uint64_t sub_25F2F2D38()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2;
  v4 = v2[11];
  v5 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v7 = *(v50 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v48 - v10;
  v51 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_25F305C1C();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = (&v48 - v20);
  v22 = *(v1 + v2[16]);
  if (v22)
  {
    v23 = **(v22 + 16);
    v52 = v18;
    v53 = TupleTypeMetadata2;
    v24 = v4;
    v25 = *(v23 + 112);

    v25(v26);
    v4 = v24;
    v18 = v52;
    TupleTypeMetadata2 = v53;

    v2 = *v1;
  }

  v27 = v2[17];
  swift_beginAccess();
  v28 = v54;
  v29 = v1 + v27;
  v30 = v55;
  (*(v54 + 16))(v17, v29, v55);
  if ((*(v18 + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v28 + 8))(v17, v30);
  }

  (*(v18 + 32))(v21, v17, TupleTypeMetadata2);
  v32 = *(v1 + 40);
  v61 = v1[2];
  v62 = *(v1 + 3);
  v63 = v32;
  v55 = v3[12];
  type metadata accessor for RepeatedInvocation.Cadence();
  sub_25F30539C();
  swift_getWitnessTable();
  v33 = type metadata accessor for Inhabited();
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v33, WitnessTable, &v60);
  v35 = *v21;
  v59 = v60;
  v56 = v35;
  v36 = swift_getWitnessTable();
  RandomAccessCollection.subscript.getter(v36, v57);
  v37 = v58;
  if (v58 == 255)
  {
    (*(v18 + 8))(v21, TupleTypeMetadata2);
  }

  v38 = v57[1];
  v54 = v57[0];

  if (!v37)
  {
    sub_25F2F3344();
    return (*(v18 + 8))(v21, TupleTypeMetadata2);
  }

  if (v37 != 1)
  {
    v61 = v54;
    *&v62 = v38;
    BYTE8(v62) = 2;
    sub_25F2F2984(&v61, v35);
    return (*(v18 + 8))(v21, TupleTypeMetadata2);
  }

  v39 = *(TupleTypeMetadata2 + 48);
  v61 = v38;
  v40 = v51;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = *(AssociatedConformanceWitness + 8);
  v53 = v21;
  v43 = v48;
  v42(&v61, v40, AssociatedConformanceWitness);
  v44 = *(v4 + 24);
  v45 = v1 + *(*v1 + 120);
  v52 = v38;
  v46 = v49;
  v44(v5, v4);
  LOBYTE(v45) = sub_25F304CEC();
  v47 = *(v50 + 8);
  v47(v46, v40);
  v47(v43, v40);
  if (v45)
  {
    sub_25F2F3344();
  }

  else
  {
    v61 = v54;
    *&v62 = v52;
    BYTE8(v62) = 1;
    sub_25F2F2984(&v61, v35);
  }

  return (*(v18 + 8))(v53, TupleTypeMetadata2);
}

uint64_t sub_25F2F3344()
{
  v26[0] = *v0;
  v1 = v26[0];
  v2 = *(v26[0] + 88);
  v3 = *(v26[0] + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = (v26 - v13);
  v15 = *(v1 + 136);
  swift_beginAccess();
  (*(v6 + 16))(v10, v0 + v15, v5);
  if ((*(v11 + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  result = (*(v11 + 32))(v14, v10, TupleTypeMetadata2);
  v17 = *v14 + 1;
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = *(v0 + 40);
    v31 = *(v0 + 16);
    v32 = *(v0 + 24);
    v33 = v18;
    v19 = *(v26[0] + 96);
    type metadata accessor for RepeatedInvocation.Cadence();
    sub_25F30539C();
    swift_getWitnessTable();
    v20 = type metadata accessor for Inhabited();
    WitnessTable = swift_getWitnessTable();
    PredicatedWrapper.value.getter(v20, WitnessTable, &v30);
    v29 = v30;
    v26[1] = v17;
    v22 = swift_getWitnessTable();
    RandomAccessCollection.subscript.getter(v22, v27);
    v23 = v28;
    if (v28 == 255)
    {
      (*(v11 + 8))(v14, TupleTypeMetadata2);
    }

    else
    {
      v25 = v27[0];
      v24 = v27[1];

      v31 = v25;
      *&v32 = v24;
      BYTE8(v32) = v23;
      sub_25F2F2984(&v31, v17);
      return (*(v11 + 8))(v14, TupleTypeMetadata2);
    }
  }

  return result;
}

char *RepeatedInvocation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 7);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)], *(v1 + 80));
  v4 = *&v0[*(*v0 + 128)];

  v5 = *(*v0 + 136);
  v6 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_25F305C1C();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  return v0;
}

uint64_t RepeatedInvocation.__deallocating_deinit()
{
  RepeatedInvocation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F2F38B4(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v7 = sub_25F305C1C();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v11 = *(v7 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t sub_25F2F3A34(uint64_t a1, unsigned int a2)
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
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2F3A70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
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

uint64_t sub_25F2F3AB8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_25F2F3AD4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F2F3AF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v1();

  return sub_25F2F2D38();
}

uint64_t Predicated.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - v19;
  (*(a3 + 24))(a1, a2, a3);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v21 = swift_getAssociatedTypeWitness();
    (*(*(v21 - 8) + 8))(a1, v21);
    (*(v9 + 8))(v13, v8);
    v22 = 1;
    v23 = v28;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v20, v13, AssociatedTypeWitness);
    v24(v18, v20, AssociatedTypeWitness);
    v23 = v28;
    sub_25F2F40D8(a1, v18, v28);
    v22 = 0;
  }

  v25 = type metadata accessor for Predicated();
  return (*(*(v25 - 8) + 56))(v23, v22, 1, v25);
}

uint64_t static Predicated.unverified(value:proof:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  (*(v7 + 16))(v10, a2, AssociatedTypeWitness);
  return sub_25F2F40D8(v14, v10, a3);
}

uint64_t Predicated.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t Predicated.proof.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_25F2F40D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for Predicated() + 36);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_25F2F41DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2F429C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v8 + 64) + v13;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = (v15 & ~v13) + *(*(v10 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v9 >= v12)
        {
          v25 = *(v8 + 48);

          return v25(a1, v9, AssociatedTypeWitness);
        }

        else
        {
          v23 = *(v11 + 48);

          return v23((a1 + v15) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_25F2F455C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v12 + 80);
  v16 = *(v10 + 64) + v15;
  v17 = (v16 & ~v15) + *(v12 + 64);
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v11 >= v13)
  {
    v25 = *(v10 + 56);

    v25(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v24 = *(v12 + 56);

    v24(&a1[v16] & ~v15, a2);
  }
}

uint64_t sub_25F2F4898(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IOPowerSource.Observer();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_25F2F7440(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_25F2F7048(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_25F2F74AC(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25F1BD228(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_25F1BD228(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_25F2F74AC(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_25F2F7048(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

PreviewsFoundationOS::IOPowerSource::State::BatteryInfo __swiftcall IOPowerSource.State.BatteryInfo.init(lowPowerMode:status:level:)(Swift::Bool lowPowerMode, PreviewsFoundationOS::IOPowerSource::State::BatteryInfo::Status status, Swift::Double level)
{
  *v3 = lowPowerMode;
  *(v3 + 1) = status;
  *(v3 + 8) = level;
  result.level = level;
  result.lowPowerMode = lowPowerMode;
  return result;
}

uint64_t IOPowerSource.State.BatteryInfo.Status.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

CFRunLoopSourceRef sub_25F2F4C58()
{
  v0 = [objc_opt_self() mainRunLoop];
  type metadata accessor for IOPowerSource();
  v1 = swift_allocObject();
  result = IOPowerSource.init(observeOn:)(v0);
  qword_27FD58ED8 = v1;
  return result;
}

uint64_t IOPowerSource.__allocating_init(observeOn:)(void *a1)
{
  v2 = swift_allocObject();
  IOPowerSource.init(observeOn:)(a1);
  return v2;
}

uint64_t static IOPowerSource.shared.getter()
{
  if (qword_27FD529B0 != -1)
  {
    swift_once();
  }
}

uint64_t IOPowerSource.currentState.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);

  os_unfair_lock_unlock((v3 + 40));

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t IOPowerSource.addObserver(_:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v24 = a3;
  v6 = sub_25F30467C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IOPowerSource.Observer();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20PreviewsFoundationOS11CrashReportV2IDVAEycfC_0();
  v15 = &v14[*(v11 + 28)];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, v14, v6);
  v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v7 + 32))(v18 + v17, v9, v6);
  v26.n128_u64[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IOPowerSource.swift";
  v26.n128_u64[1] = 125;
  v27 = 2;
  *v28 = v35[0];
  *&v28[3] = *(v35 + 3);
  v29 = xmmword_25F3166A0;
  v30 = "addObserver(_:)";
  v31 = 15;
  v32 = 2;
  CancellationToken.init(callsite:didCancel:)(&v26, sub_25F2F6FC8, v18, &v33);
  v19 = v34;
  v23 = v33;
  v20 = *(v3 + 24);
  v25 = v14;

  os_unfair_lock_lock((v20 + 40));
  sub_25F2F702C((v20 + 16), &v26);
  os_unfair_lock_unlock((v20 + 40));
  a1(&v26);
  v21 = v24;
  *v24 = v23;
  *(v21 + 2) = v19;
  return sub_25F2F7048(v14);
}

uint64_t sub_25F2F5040()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v1 + 10);
    sub_25F2F7510(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

__n128 sub_25F2F50F4@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v6 = type metadata accessor for IOPowerSource.Observer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F2F7440(a2, v10);
  v11 = a1[1].n128_u64[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_25F2F176C(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_25F2F176C(v12 > 1, v13 + 1, 1, v11);
  }

  v11[2] = v13 + 1;
  sub_25F2F74AC(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  a1[1].n128_u64[0] = v11;
  result = *a1;
  *a3 = *a1;
  return result;
}

CFRunLoopSourceRef IOPowerSource.init(observeOn:)(void *a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_25F305A4C();
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34[1] = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F30494C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_25F30491C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F305A9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58EE0, &unk_25F3166C0);
  v17 = swift_allocObject();
  *(v17 + 40) = 0;
  *(v17 + 16) = xmmword_25F3101A0;
  v18 = MEMORY[0x277D84F90];
  *(v17 + 32) = MEMORY[0x277D84F90];
  *(v2 + 24) = v17;
  sub_25F2A7CB0(0, &qword_27FD54668, 0x277D85C78);
  v34[0] = "rSource.swift";
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  (*(v13 + 104))(v16, *MEMORY[0x277D85268], v12);
  (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v7);
  sub_25F305ADC();
  (*(v8 + 8))(v11, v7);
  sub_25F30492C();
  aBlock = v18;
  sub_25F2F754C(&qword_27FD556F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  sub_25F278418(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0);
  sub_25F305E5C();
  *(v2 + 56) = sub_25F305ACC();
  v19 = v36;
  *(v2 + 16) = v36;
  v20 = v19;
  sub_25F2F5E94(&aBlock);
  if (aBlock == 4)
  {
    v21 = 2;
  }

  else
  {
    v21 = aBlock;
  }

  if (aBlock == 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v38;
  }

  v23 = *(v2 + 24);
  os_unfair_lock_lock((v23 + 40));
  *(v23 + 16) = v21;
  *(v23 + 24) = v22;
  os_unfair_lock_unlock((v23 + 40));
  type metadata accessor for IOPowerSource.NotificationCallbackWrapper();
  v24 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v2 + 48) = v24;

  result = IOPSNotificationCreateRunLoopSource(sub_25F2F5AA4, v24);
  if (result)
  {
    v26 = *(v2 + 32);
    *(v2 + 32) = result;

    v27 = [v20 getCFRunLoop];
    CFRunLoopAddSource(v27, *(v2 + 32), *MEMORY[0x277CBF058]);

    v28 = [objc_opt_self() defaultCenter];
    v29 = *MEMORY[0x277CCA5E8];
    v30 = swift_allocObject();
    swift_weakInit();

    v41 = sub_25F2F70C8;
    v42 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_25F2F5B5C;
    v40 = &block_descriptor_13;
    v31 = _Block_copy(&aBlock);

    v32 = [v28 addObserverForName:v29 object:0 queue:0 usingBlock:v31];

    _Block_release(v31);
    v33 = *(v2 + 40);
    *(v2 + 40) = v32;
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F2F57D0()
{
  v1 = sub_25F30490C();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 56);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_25F2F7438;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_39_0;
  v10 = _Block_copy(aBlock);

  sub_25F30492C();
  v15 = MEMORY[0x277D84F90];
  sub_25F2F754C(&qword_27FD53A98, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F278418(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

uint64_t sub_25F2F5AA4(uint64_t result)
{
  if (result)
  {

    if (swift_weakLoadStrong())
    {
      sub_25F2F57D0();
    }
  }

  return result;
}

uint64_t sub_25F2F5B04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25F2F57D0();
  }

  return result;
}

uint64_t sub_25F2F5B5C(uint64_t a1)
{
  v2 = sub_25F30429C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_25F30428C();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t IOPowerSource.deinit()
{
  sub_25F2F5C94();

  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return v0;
}

void sub_25F2F5C94()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[6];
    v3 = v0[2];
    v4 = v1;
    v5 = [v3 getCFRunLoop];
    v6 = *MEMORY[0x277CBF058];
    v7 = v5;
    CFRunLoopRemoveSource(v7, v4, v6);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v15[4] = sub_25F2F7428;
    v15[5] = v8;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_25F1D8C38;
    v15[3] = &block_descriptor_35;
    v9 = _Block_copy(v15);

    CFRunLoopPerformBlock(v7, v6, v9);

    _Block_release(v9);
    v10 = v0[4];
    v0[4] = 0;
  }

  v11 = v0[5];
  if (v11)
  {
    v12 = objc_opt_self();
    swift_unknownObjectRetain();
    v13 = [v12 defaultCenter];
    [v13 removeObserver_];

    swift_unknownObjectRelease();
    v14 = v0[5];
    v0[5] = 0;
    swift_unknownObjectRelease();
  }
}

uint64_t IOPowerSource.__deallocating_deinit()
{
  sub_25F2F5C94();

  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

const void *sub_25F2F5E94@<X0>(double *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F00, &qword_25F3168D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v36 - v4;
  result = IOPSCopyPowerSourcesInfo();
  if (!result)
  {
    goto LABEL_21;
  }

  v7 = result;
  v8 = IOPSCopyPowerSourcesList(result);
  if (!v8)
  {
    result = swift_unknownObjectRelease();
LABEL_21:
    *a1 = xmmword_25F3166B0;
    return result;
  }

  v9 = v8;
  v38 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  swift_unknownObjectRetain_n();
  v11 = v9;

  v37 = v11;
  sub_25F305B3C();
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F08, &qword_25F3168E0) + 44)];
  *v12 = sub_25F2F74A4;
  *(v12 + 1) = v10;
  v36[1] = v10;
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58F10, &qword_25F3168E8) + 36)];
  *v13 = sub_25F2F6EDC;
  *(v13 + 1) = 0;
  v14 = &v5[*(v2 + 44)];
  *v14 = sub_25F2F6EEC;
  *(v14 + 1) = 0;
  sub_25F30440C();
  sub_25F2F754C(&qword_27FD58F18, MEMORY[0x277CC9178]);
  sub_25F305CDC();
  v41 = v43;
  v42 = v44;
  if (!*(&v44 + 1))
  {
LABEL_19:
    swift_unknownObjectRelease();

    v20 = v37;

    sub_25F1AF698(v5, &qword_27FD58F00, &qword_25F3168D8);
    result = swift_unknownObjectRelease();
    *v38 = xmmword_25F3101B0;
    return result;
  }

  while (1)
  {
    sub_25F1B707C(&v41, &v39);
    __swift_project_boxed_opaque_existential_1(&v39, v40);
    v15 = sub_25F30657C();
    v16 = IOPSGetPowerSourceDescription(v7, v15);
    swift_unknownObjectRelease();
    if (!v16)
    {
      __swift_destroy_boxed_opaque_existential_1(&v39);
      goto LABEL_7;
    }

    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(&v39);
    *&v41 = 1701869908;
    *(&v41 + 1) = 0xE400000000000000;
    v18 = [(__CFDictionary *)v17 __swift_objectForKeyedSubscript:sub_25F30662C()];
    swift_unknownObjectRelease();
    if (v18)
    {
      sub_25F305DDC();
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    v43 = v41;
    v44 = v42;
    if (*(&v42 + 1))
    {
      break;
    }

    sub_25F1AF698(&v43, &qword_27FD53DF8, &unk_25F30A470);
LABEL_6:

LABEL_7:
    sub_25F305CDC();
    v41 = v43;
    v42 = v44;
    if (!*(&v44 + 1))
    {
      goto LABEL_19;
    }
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v39 == __PAIR128__(0xEF79726574746142, 0x6C616E7265746E49))
  {

    v21 = v37;

    goto LABEL_22;
  }

  v19 = sub_25F30659C();

  if ((v19 & 1) == 0)
  {
    goto LABEL_6;
  }

  v21 = v37;

LABEL_22:
  swift_unknownObjectRelease();
  sub_25F1AF698(v5, &qword_27FD58F00, &qword_25F3168D8);
  v22 = sub_25F2F6C34(v17);
  *&v41 = 0xD000000000000010;
  *(&v41 + 1) = 0x800000025F31BFE0;
  v23 = [(__CFDictionary *)v17 __swift_objectForKeyedSubscript:sub_25F30662C()];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (*(&v42 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v24 = v39;
      [v39 doubleValue];
      v26 = v25;

      goto LABEL_30;
    }
  }

  else
  {
    sub_25F1AF698(&v43, &qword_27FD53DF8, &unk_25F30A470);
  }

  v26 = 1.0;
LABEL_30:
  strcpy(&v41, "Max Capacity");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v27 = [(__CFDictionary *)v17 __swift_objectForKeyedSubscript:sub_25F30662C()];
  swift_unknownObjectRelease();
  if (v27)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    sub_25F1AF698(&v43, &qword_27FD53DF8, &unk_25F30A470);
LABEL_41:
    v32 = 1.0;
    if (v26 <= 1.0)
    {
      v32 = v26;
    }

    goto LABEL_43;
  }

  sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v28 = v39;
  [v39 doubleValue];
  v30 = v29;

  v31 = 0.0;
  if (v30 == 0.0)
  {
    goto LABEL_46;
  }

  v32 = 1.0;
  if (v26 / v30 <= 1.0)
  {
    if (v26 / v30 > 0.0)
    {
      v31 = v26 / v30;
    }

    else
    {
      v31 = 0.0;
    }

    goto LABEL_46;
  }

LABEL_43:
  if (v32 > 0.0)
  {
    v31 = v32;
  }

  else
  {
    v31 = 0.0;
  }

LABEL_46:
  v33 = [objc_opt_self() processInfo];
  v34 = [v33 isLowPowerModeEnabled];

  result = swift_unknownObjectRelease();
  v35 = v38;
  *v38 = v34 & 0xFFFF00FF | (v22 << 8);
  v35[1] = v31;
  return result;
}

uint64_t sub_25F2F65A8()
{
  v0 = type metadata accessor for IOPowerSource.Observer();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    os_unfair_lock_lock((v7 + 40));
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);

    os_unfair_lock_unlock((v7 + 40));

    sub_25F2F5E94(&v25);
    if (v25 == 4)
    {
      v11 = 2;
    }

    else
    {
      v11 = v25;
    }

    if (v25 == 4)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v26;
    }

    v13 = *(v6 + 24);
    os_unfair_lock_lock((v13 + 40));
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    os_unfair_lock_unlock((v13 + 40));
    v14 = *(v6 + 24);

    os_unfair_lock_lock((v14 + 40));
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);

    os_unfair_lock_unlock((v14 + 40));

    if (v15 == 2)
    {
      if (v8 == 2)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 3)
    {
      if (v8 == 3)
      {
LABEL_18:
      }
    }

    else if ((v8 & 0xFE) != 2 && ((v15 ^ v8) & 0xFF00) == 0 && ((v15 ^ v8) & 1) == 0 && v9 == v16)
    {
      goto LABEL_18;
    }

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
      v20 = *(v1 + 72);
      do
      {
        sub_25F2F7440(v19, v4);
        v21 = &v4[*(v0 + 20)];
        v22 = *v21;
        v23 = *(v21 + 1);
        v25 = v15;
        v26 = v16;
        v22(&v25);
        sub_25F2F7048(v4);
        v19 += v20;
        --v18;
      }

      while (v18);
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_25F2F67F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v6[2] = a2;

  v4 = sub_25F2F4898(sub_25F2F752C, v6, v3);

  *(a1 + 16) = v4;
  return result;
}

BOOL sub_25F2F6870()
{
  sub_25F30467C();
  sub_25F2F754C(qword_27FD58F20, MEMORY[0x277CC95F0]);
  return (sub_25F304DCC() & 1) == 0;
}

uint64_t sub_25F2F6904()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F2F693C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30467C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void IOPowerSource.State.description.getter()
{
  v1 = *v0;
  v2 = *v0;
  if (v2 == 2 || v2 == 3)
  {
    return;
  }

  v3 = v0[1] * 100.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = sub_25F3064DC();
  v8 = v4;
  MEMORY[0x25F8D7130](37, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F31BE50);
  if (LOBYTE(v1))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (LOBYTE(v1))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x25F8D7130](v5, v6);

  MEMORY[0x25F8D7130](0x737574617473202CLL, 0xEA0000000000203ALL);
  sub_25F30619C();
  MEMORY[0x25F8D7130](0x3A6C6576656C202CLL, 0xE900000000000020);
  MEMORY[0x25F8D7130](v7, v8);

  MEMORY[0x25F8D7130](41, 0xE100000000000000);
}

const __CFDictionary *sub_25F2F6BCC@<X0>(void *a1@<X0>, const void *a2@<X1>, CFDictionaryRef *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_25F30657C();
  v6 = IOPSGetPowerSourceDescription(a2, v5);
  result = swift_unknownObjectRelease();
  if (v6)
  {
    result = v6;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25F2F6C34(void *a1)
{
  *&v18 = 0x6772616843207349;
  *(&v18 + 1) = 0xEB00000000676E69;
  v2 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v3 = v15;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    sub_25F1AF698(&v18, &qword_27FD53DF8, &unk_25F30A470);
    v3 = 0;
  }

  *&v18 = 0x6772616843207349;
  *(&v18 + 1) = 0xEA00000000006465;
  v4 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (*(&v17 + 1))
  {
    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v5 = v15;
      goto LABEL_17;
    }
  }

  else
  {
    sub_25F1AF698(&v18, &qword_27FD53DF8, &unk_25F30A470);
  }

  v5 = 0;
LABEL_17:
  sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
  v6 = sub_25F305B6C();
  v7 = v6;
  if (v5)
  {
    v8 = v5;
    v9 = sub_25F305B7C();

    if (v9)
    {

      return 2;
    }
  }

  else
  {
  }

  v11 = sub_25F305B6C();
  v12 = v11;
  if (v3)
  {
    v13 = v3;
    v14 = sub_25F305B7C();

    if (v14)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

id sub_25F2F6EEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s20PreviewsFoundationOS13IOPowerSourceC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    return *a2 == 2;
  }

  if (v2 == 3)
  {
    return *a2 == 3;
  }

  if ((*a2 & 0xFELL) == 2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return (((*a2 ^ *a1) & 0xFF00) == 0) & ~(*a2 ^ *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for IOPowerSource.Observer()
{
  result = qword_27FD58EF0;
  if (!qword_27FD58EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F2F6FC8()
{
  v1 = *(*(sub_25F30467C() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_25F2F5040();
}

uint64_t sub_25F2F7048(uint64_t a1)
{
  v2 = type metadata accessor for IOPowerSource.Observer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F2F70EC()
{
  result = qword_27FD58EE8;
  if (!qword_27FD58EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58EE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IOPowerSource.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[16])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IOPowerSource.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_25F2F7230(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_25F2F724C(void *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IOPowerSource.State.BatteryInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IOPowerSource.State.BatteryInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25F2F735C()
{
  result = sub_25F30467C();
  if (v1 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2F7428()
{
  result = *(v0 + 16);
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F2F7440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IOPowerSource.Observer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F74AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IOPowerSource.Observer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F754C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Staleable.Discriminant.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F2F763C()
{
  sub_25F30671C();
  Staleable.Discriminant.hash(into:)();
  return sub_25F30676C();
}

uint64_t Staleable.discriminant.getter@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  *a2 = swift_getEnumCaseMultiPayload() == 1;
  return (*(v4 + 8))(v7, a1);
}

uint64_t Staleable.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(a1 + 16);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v11 + 56))(a2, 0, 1, v12);
  }

  else
  {
    (*(v10 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v7, a1);
  }
}

uint64_t Staleable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
}

BOOL Staleable.isCurrent.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t Staleable.map<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a4;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v6 + 32);
  v22 = (v6 + 8);
  if (EnumCaseMultiPayload == 1)
  {
    v21(v13, v17, v5);
    v23 = v27;
    a1(v13);
    result = (*v22)(v13, v5);
    if (v23)
    {
      return result;
    }
  }

  else
  {
    v21(v10, v17, v5);
    v25 = v27;
    a1(v10);
    result = (*v22)(v10, v5);
    if (v25)
    {
      return result;
    }
  }

  type metadata accessor for Staleable();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Staleable.flattenedMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v12;
  v13 = sub_25F305C1C();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v24 = v4;
  Staleable.value.getter(a2, v11);
  v17 = v27;
  a1(v11);
  result = (*(v8 + 8))(v11, v7);
  if (!v17)
  {
    MEMORY[0x28223BE20](result);
    v20 = v24;
    v19 = v25;
    *(&v23 - 4) = v7;
    *(&v23 - 3) = v19;
    *(&v23 - 2) = v20;
    v21 = type metadata accessor for Staleable();
    sub_25F20977C(sub_25F2F7F58, (&v23 - 6), MEMORY[0x277D84A98], v21, v22, v26);
    return (*(v23 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_25F2F7F58(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = a1;
  v5 = type metadata accessor for Staleable();
  return Staleable.map<A>(_:)(sub_25F2F8320, v7, v5, v3);
}

uint64_t sub_25F2F7FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2F8050(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_25F2F815C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *&v15 = a2;
  *(&v15 + 1) = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v14 = *a10;
  return sub_25F2F8678(&v15, &v14, a11, a12, a13);
}

uint64_t Future.flatMap<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12)
{
  v13 = *a10;
  v12 = a10[1];
  *&v17 = a2;
  *(&v17 + 1) = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v16[0] = v13;
  v16[1] = v12;
  v15[0] = v13;
  v15[1] = v12;
  return sub_25F2F8434(&v17, v16, v15, a11, a12);
}

uint64_t sub_25F2F8434(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(v8 + 80);
  type metadata accessor for FlatMapFuture();
  *&v17 = v10;
  *(&v17 + 1) = v11;
  *&v16 = v12;
  *(&v16 + 1) = v13;

  sub_25F2033CC(v10);
  sub_25F2033CC(v12);
  swift_allocObject();

  return sub_25F2F9AE4(v18, v5, &v17, &v16, a4, a5);
}

uint64_t Future.tryFlatMap<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  v16 = *a10;
  v15 = a10[1];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v21[0] = v16;
  v21[1] = v15;
  v20[0] = v16;
  v20[1] = v15;
  v17 = swift_allocObject();
  v17[2] = *(v14 + 80);
  v17[3] = a13;
  v17[4] = a11;
  v17[5] = a12;

  v18 = sub_25F2F8434(&v22, v21, v20, sub_25F2F8760, v17);

  return v18;
}

uint64_t sub_25F2F8678(_OWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v15 = *a2;
  v11 = swift_allocObject();
  v11[2] = *(v9 + 80);
  v11[3] = a5;
  v11[4] = a3;
  v11[5] = a4;
  v14[0] = 0;
  v14[1] = 0;

  v12 = sub_25F2F8434(v16, &v15, v14, sub_25F2FB654, v11);

  sub_25F2033DC(v14[0]);
  return v12;
}

uint64_t sub_25F2F8760(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F2F99B0(a1, *(v1 + 32));
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:priority:transform:cleanupOnCancelation:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36 = a7;
  v37 = a8;
  v35 = a6;
  v42 = a14;
  v43 = a13;
  v39 = a15;
  v40 = a11;
  v41 = a12;
  v38 = *v15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v24 = &v35 - v23;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v46 = a4;
  v47 = a5;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = a9;
  v44 = 0uLL;
  sub_25F1B4740(a10, &v35 - v23);
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 16) = *(v38 + 80);
  *(v27 + 24) = v28;
  sub_25F2F8B98(v24, v27 + v25);
  v29 = (v27 + v26);
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v42;
  *v31 = v43;
  v31[1] = v32;

  v33 = sub_25F2F8678(&v45, &v44, sub_25F2F8C08, v27, v28);

  sub_25F2033DC(v44);
  return v33;
}

uint64_t sub_25F2F8978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a3;
  v25 = a5;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v23 - v17;
  v23[1] = type metadata accessor for Future();
  sub_25F1B4740(a2, v18);
  (*(v13 + 16))(v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a7);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a7;
  *(v20 + 3) = a8;
  *(v20 + 4) = v24;
  *(v20 + 5) = a4;
  (*(v13 + 32))(&v20[v19], v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7);

  v21 = sub_25F2ECDC4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 145, 22, "then(dsoHandle:file:line:column:function:priority:transform:cleanupOnCancelation:)", 82, 2, v18);

  return v21;
}

uint64_t sub_25F2F8B98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2F8C08(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);

  return sub_25F2F8978(a1, v1 + v6, v10, v11, v12, v13, v3, v4);
}

uint64_t sub_25F2F8CD8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F1AFDB0;

  return v10(a1, a4);
}

uint64_t Future.then<A>(dsoHandle:file:line:column:function:priority:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v30 = a6;
  v35 = a11;
  v36 = a12;
  v33 = *v13;
  v34 = a13;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - v21;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  v39 = a4;
  v40 = a5;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = a9;
  v37 = 0uLL;
  sub_25F1B4740(a10, &v30 - v21);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 16) = *(v33 + 80);
  *(v24 + 24) = v25;
  sub_25F2F8B98(v22, v24 + v23);
  v26 = (v24 + ((v20 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v36;
  *v26 = v35;
  v26[1] = v27;

  v28 = sub_25F2F8678(&v38, &v37, sub_25F2F91D8, v24, v25);

  sub_25F2033DC(v37);
  return v28;
}

uint64_t sub_25F2F8FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v24 - v17;
  v24[1] = type metadata accessor for Future();
  sub_25F1B4740(a2, v18);
  (*(v12 + 16))(v14, a1, a5);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  *(v20 + 4) = a3;
  *(v20 + 5) = a4;
  (*(v12 + 32))(&v20[v19], v14, a5);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;

  v22 = sub_25F2ECDC4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 165, 22, "then(dsoHandle:file:line:column:function:priority:transform:)", 61, 2, v18);

  return v22;
}

uint64_t sub_25F2F91D8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_25F2F8FA0(a1, v1 + v6, v8, v9, v3, v4);
}

uint64_t sub_25F2F9298(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F1B51E0;

  return v10(a1, a4);
}

uint64_t sub_25F2F93A0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = sub_25F30678C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  (*(v15 + 16))(&v19 - v13, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    type metadata accessor for Future();
    v17 = sub_25F1C15B0("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 181, 31, "then(callsite:on:transform:)", 28, 2, v16);
  }

  else
  {
    (*(v7 + 32))(v10, v14, a4);
    v17 = a2(v10);
    (*(v7 + 8))(v10, a4);
  }

  return v17;
}

uint64_t Future.flatMapFailure(dsoHandle:file:line:column:function:on:resultCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v13 = *v12;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v18 = *a10;
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a11;
  v14[4] = a12;
  v17[0] = 0;
  v17[1] = 0;

  v15 = sub_25F2F8434(&v19, v17, &v18, sub_25F2F98D0, v14);

  sub_25F2033DC(v17[0]);
  return v15;
}

uint64_t sub_25F2F96B0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = sub_25F30678C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  (*(v15 + 16))(&v19 - v13, a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v17 = a2(*v14);
  }

  else
  {
    (*(v7 + 32))(v10, v14, a4);
    type metadata accessor for Future();
    v17 = sub_25F1C1420("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 203, 34, "flatMapFailure(dsoHandle:file:line:column:function:on:resultCallback:)", 70, 2, v10);
    (*(v7 + 8))(v10, a4);
  }

  return v17;
}

uint64_t Future.tryThen<A>(dsoHandle:file:line:column:function:on:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v18 = *a10;
  v15 = swift_allocObject();
  v15[2] = *(v14 + 80);
  v15[3] = a13;
  v15[4] = a11;
  v15[5] = a12;

  v16 = sub_25F2F8678(&v19, &v18, sub_25F2F9A54, v15, a13);

  return v16;
}

uint64_t sub_25F2F9A54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F2F99B0(a1, *(v1 + 32));
}

uint64_t sub_25F2F9AE4(_OWORD *a1, uint64_t a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  v6[13] = a5;
  v6[14] = a6;
  *(v6 + 15) = *a3;
  *(v6 + 17) = *a4;
  v14 = a2;
  v9 = *(v7 + 200);
  v10 = *(v7 + 208);
  v11 = type metadata accessor for FlatMapFuture.Activity();

  v6[19] = sub_25F203E0C(&v14, v11);
  v12 = sub_25F2E95EC(v15);
  swift_retain_n();
  Future.observeCompletion(_:)(sub_25F2FB228, v12);

  Future.observeCancelation(_:)(sub_25F2FB1EC, v12);

  return v12;
}

uint64_t sub_25F2F9C18(uint64_t a1)
{
  v2 = v1;
  v77 = a1;
  v3 = *v1;
  v73 = sub_25F30490C();
  v72 = *(v73 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_25F30494C();
  v70 = *(v71 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 200);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  v80 = *(v9 - 8);
  v10 = v80[8];
  v11 = MEMORY[0x28223BE20](v9);
  v78 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v76 = v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v75 = v63 - v15;
  MEMORY[0x28223BE20](v14);
  v79 = v63 - v16;
  v17 = *(v3 + 208);
  type metadata accessor for Promise();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_25F305C1C();
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v63 - v24;
  v92 = *(v2 + 152);
  *&aBlock = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&aBlock + 1) = 125;
  LOBYTE(v87) = 2;
  v88 = xmmword_25F3169C0;
  v89 = "firstCompleted(_:)";
  v90 = 18;
  v91 = 2;
  v83 = v8;
  v84 = v17;
  v85 = v77;
  v77 = v8;
  v74 = v17;
  type metadata accessor for FlatMapFuture.Activity();
  v26 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&aBlock, sub_25F2FB22C, v82, v26, v19, WitnessTable);
  v28 = v81;

  (*(v28 + 16))(v23, v25, v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
  {
    v29 = *(v28 + 8);
    v29(v25, v19);
    return (v29)(v23, v19);
  }

  else
  {
    v66 = v25;
    v67 = v19;
    v31 = *&v23[*(TupleTypeMetadata2 + 48)];
    v32 = v80;
    v65 = v80[4];
    v33 = v79;
    v65(v79, v23, v9);
    Result.analyze<A>(success:failure:)(sub_25F2FB24C, v2, sub_25F2FB258, v2, v9);
    v34 = *(&aBlock + 1);
    v64 = aBlock;
    v35 = v32 + 2;
    v36 = v32[2];
    v37 = v75;
    v36(v75, v33, v9);
    v38 = v76;
    v36(v76, v37, v9);
    v36(v78, v37, v9);
    v39 = (*(v35 + 64) + 40) & ~*(v35 + 64);
    v40 = (v10 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v74;
    *(v41 + 2) = v77;
    *(v41 + 3) = v42;
    *(v41 + 4) = v2;
    v65(&v41[v39], v37, v9);
    v43 = v64;
    *&v41[v40] = v31;
    *&aBlock = v43;
    *(&aBlock + 1) = v34;
    v44 = v34;
    v45 = v31;
    swift_retain_n();
    swift_retain_n();
    v46 = v9;
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2FAC38(v2, v38);
      sub_25F2033DC(v43);

      v47 = v80[1];
      v47(v78, v9);

      v47(v79, v9);
      (*(v81 + 8))(v66, v67);
      return (v47)(v38, v9);
    }

    else
    {
      if (v43)
      {
        v77 = v45;
        v63[1] = v44;
        if (v43 == 1)
        {
          sub_25F1F54F4();
          v75 = sub_25F305AAC();
          *(&v88 + 1) = sub_25F2FB264;
          v89 = v41;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v87 = sub_25F1D8C38;
          *&v88 = &block_descriptor_19;
          v74 = _Block_copy(&aBlock);

          v48 = v68;
          sub_25F30492C();
          *&aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v49 = v69;
          v50 = v73;
          sub_25F305E5C();
          v51 = v74;
          v52 = v75;
          MEMORY[0x25F8D7C70](0, v48, v49, v74);
          _Block_release(v51);

          (*(v72 + 8))(v49, v50);
          (*(v70 + 8))(v48, v71);
        }

        else
        {
          *(&v88 + 1) = sub_25F2FB264;
          v89 = v41;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v87 = sub_25F1D8C38;
          *&v88 = &block_descriptor_14;
          v58 = _Block_copy(&aBlock);

          sub_25F2033CC(v43);
          v59 = v68;
          sub_25F30492C();
          v92 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v60 = v69;
          v61 = v73;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v59, v60, v58);
          _Block_release(v58);
          sub_25F2033DC(v43);
          (*(v72 + 8))(v60, v61);
          (*(v70 + 8))(v59, v71);
        }

        v55 = v76;
        v57 = v79;
        v56 = v80;
        v54 = v78;
      }

      else
      {
        v53 = v78;
        sub_25F2FAC38(v2, v78);

        v54 = v53;
        v55 = v76;
        v57 = v79;
        v56 = v80;
      }

      v62 = v56[1];
      v62(v54, v46);

      v62(v57, v46);
      (*(v81 + 8))(v66, v67);
      sub_25F2033DC(v43);
      return (v62)(v55, v46);
    }
  }
}

uint64_t sub_25F2FA6F4(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = type metadata accessor for FutureTermination();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - v8);
  v10 = a1[1];
  v36 = *a1;
  v37 = v10;
  v38[0] = a1[2];
  *(v38 + 9) = *(a1 + 41);
  v33 = v2[19];
  *&v27 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v27 + 1) = 125;
  v28 = 2;
  v29 = xmmword_25F3169D0;
  v30 = "cancel(callsite:)";
  v31 = 17;
  v32 = 2;
  v11 = *(v4 + 200);
  v25 = v11;
  v26 = v5;
  type metadata accessor for FlatMapFuture.Activity();
  v12 = sub_25F30476C();
  type metadata accessor for Future();
  type metadata accessor for Future();
  v13 = type metadata accessor for Either();
  v14 = sub_25F305C1C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v27, sub_25F2FB138, v24, v12, v14, WitnessTable);

  v17 = v35;
  if (v35 != 255)
  {
    v22 = &v22;
    v18 = v34;
    *&v27 = v34;
    BYTE8(v27) = v35 & 1;
    v19 = MEMORY[0x28223BE20](result);
    *(&v22 - 4) = v11;
    *(&v22 - 3) = v5;
    *(&v22 - 2) = &v36;
    MEMORY[0x28223BE20](v19);
    *(&v22 - 4) = v11;
    *(&v22 - 3) = v5;
    *(&v22 - 2) = &v36;
    Either.analyze<A>(left:right:)(sub_25F2FB668, v20, sub_25F2FB17C, (&v22 - 6), v13);
    v21 = v37;
    *v9 = v36;
    v9[1] = v21;
    v9[2] = v38[0];
    *(v9 + 41) = *(v38 + 9);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v9);
    sub_25F278658(v18, v17);
    return (*(v23 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_25F2FAA40@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (v5 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    type metadata accessor for Promise();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    sub_25F2CBE24(v5);
    type metadata accessor for Future();
    v7 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift", 125, 2, 337, 77, "firstCompleted(_:)", 18, 2);
    v9 = v8;
    *a1 = v7 | 0x4000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v10 = sub_25F30678C();
    type metadata accessor for Promise();
    v11 = swift_getTupleTypeMetadata2();
    v12 = *(v11 + 48);
    (*(*(v10 - 8) + 16))(a3, a2, v10);
    *(a3 + v12) = v9;
    return (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
  }
}

unint64_t sub_25F2FAC38(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v19 = *(a1 + 152);
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v13 + 1) = 125;
  v14 = 2;
  v15 = xmmword_25F3169E0;
  v16 = "firstCompleted(_:)";
  v17 = 18;
  v18 = 2;
  v5 = *(v4 + 200);
  v6 = *(v4 + 208);
  type metadata accessor for FlatMapFuture.Activity();
  v7 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v13, v7, WitnessTable);
  result = sub_25F2CBE24(v12);
  if (v12 != 0x8000000000000008)
  {
    v10 = *(a1 + 112);
    v11 = (*(a1 + 104))(a2);
    sub_25F229A9C(&v13);
    v12 = v13;
    Promise.track(future:on:)(v11, &v12);
    sub_25F2033DC(v12);

    Future.observeFinish(_:)(sub_25F2FB33C, a1);
  }

  return result;
}

uint64_t sub_25F2FADC8(uint64_t a1)
{
  v3 = *v1;
  v14 = v1[19];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v8 + 1) = 125;
  v9 = 2;
  v10 = xmmword_25F3169F0;
  v11 = "secondFinished(_:)";
  v12 = 18;
  v13 = 2;
  v7[2] = *(v3 + 200);
  v7[3] = *(v3 + 208);
  type metadata accessor for FlatMapFuture.Activity();
  v4 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v8, sub_25F2FB340, v7, v4, MEMORY[0x277D839B0], WitnessTable);

  if (v15 == 1)
  {
    return sub_25F2EA104(a1);
  }

  return result;
}

uint64_t sub_25F2FAF10()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_25F2033DC(*(v0 + 120));
  v3 = *(v0 + 144);
  sub_25F2033DC(*(v0 + 136));
  v4 = *(v0 + 152);
}

uint64_t sub_25F2FAF50()
{
  v0 = Future.deinit();
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  sub_25F2033DC(*(v0 + 120));
  v3 = *(v0 + 144);
  sub_25F2033DC(*(v0 + 136));
  v4 = *(v0 + 152);

  return v0;
}

uint64_t sub_25F2FAF98()
{
  v0 = sub_25F2FAF50();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_25F2FAFE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS13FlatMapFuture33_783C149A83A3080D4FCF99BF469D14F5LLC8ActivityOyxq__G(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_25F2FB038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F2FB094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25F2FB0F4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t *sub_25F2FB138@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 62;
  v4 = *result & 0x3FFFFFFFFFFFFFFFLL;
  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  if (v3)
  {
    v2 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *result = 0x8000000000000008;
  *a2 = v2;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_25F2FB180(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 9) = *(v2 + 41);
  return (*(*v3 + 192))(v6);
}

uint64_t sub_25F2FB1EC(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F2FA6F4(v3);
}

uint64_t sub_25F2FB22C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25F2FAA40(a1, v2[4], a2);
}

id sub_25F2FB24C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

id sub_25F2FB258@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  *a1 = v2;
  a1[1] = v3;
  return sub_25F2033CC(v2);
}

unint64_t sub_25F2FB264()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_25F2FAC38(v4, v0 + v3);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F2FB340@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  result = *a1;
  if (result >> 62 == 1)
  {
    result = sub_25F2CBE24(result);
    *a1 = 0x8000000000000000;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_25F2FB3A0(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1B51E0;

  return sub_25F2F9298(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F2FB558(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1AFDB0;

  return sub_25F2F8CD8(a1, v6, v7, v1 + v5);
}

uint64_t sub_25F2FB66C(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  v9[25] = 2;
  v3 = *(v1 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F2FE130((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  v4 = v6;

  if (v4)
  {
    v10[0] = v7;
    v10[1] = v8;
    *v11 = *v9;
    *&v11[10] = *&v9[10];
    return sub_25F1C0E30(v10);
  }

  return result;
}

uint64_t sub_25F2FB788(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  *v9 = a1[2];
  *&v9[9] = *(a1 + 41);
  v9[25] = 2;
  v3 = *(v1 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F2FDF6C((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  v4 = v6;

  if (v4)
  {
    v10[0] = v7;
    v10[1] = v8;
    *v11 = *v9;
    *&v11[10] = *&v9[10];
    return sub_25F1C0934(v10);
  }

  return result;
}

void sub_25F2FB8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  os_unfair_lock_lock(v3 + 8);
  sub_25F2FE2E4();
  os_unfair_lock_unlock(v3 + 8);
}

uint64_t sub_25F2FB8F8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v22 = sub_25F2784FC;
  v23 = v10;
  v11 = qword_27FD52798;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v13 = *(v12 + 2);
  *(v12 + 2) = v13 + 1;
  os_unfair_lock_unlock(v12 + 6);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = *(a4 + 16);
  MEMORY[0x28223BE20](v15);
  os_unfair_lock_lock(v16 + 8);
  sub_25F2FE1FC();
  os_unfair_lock_unlock(v16 + 8);
  v17 = a1[1];
  v20[0] = *a1;
  v20[1] = v17;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v18 = swift_allocObject();
  v18[2] = sub_25F2FE1A8;
  v18[3] = a4;
  v18[4] = v13;
  CancellationToken.init(callsite:didCancel:)(v20, sub_25F2FE224, v18, a5);
}

uint64_t SingleFireEvent.__allocating_init(description:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SingleFireEvent.init(description:)(a1, a2);
  return v4;
}

BOOL SingleFireEvent.hasFired.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  sub_25F2C403C(v2);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2);
  return v2 == 0;
}

void sub_25F2FBB88(uint64_t a1@<X0>, void (**a2)(void)@<X1>, void *a3@<X8>)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *(a1 + 16);
  _Block_copy(a2);
  os_unfair_lock_lock((v6 + 32));
  sub_25F2FE2CC((v6 + 16), v10);
  os_unfair_lock_unlock((v6 + 32));
  v7 = v10[0];
  if (v10[0])
  {
    v8 = v10[1];
    v9 = v10[2];

    _Block_release(a2);
    *a3 = v7;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
    if (v11)
    {
      a2[2](a2);
    }

    _Block_release(a2);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void SingleFireEvent.observe(_:)(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_25F1DF0E4((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 32));
  if (v7)
  {
    v6 = v8;
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  else
  {
    if (v9)
    {
      a1();
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

void sub_25F2FBD3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock((v2 + 32));
  v3 = *(v2 + 16);
  if (v3 > 1)
  {
    v4 = *(v2 + 24);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    os_unfair_lock_unlock((v2 + 32));
    sub_25F2FDF88(v3);
    v13 = v3;
    _s20PreviewsFoundationOS11EventStreamV4SinkC4sendyyytRszlF_0();
    v5 = *(*(a1 + 24) + 16);
    sub_25F1D71EC(0, 0);
    v14 = *(v4 + 16);
    if (v14)
    {
      v7 = 0;
      v8 = (v4 + 48);
      while (v7 < *(v4 + 16))
      {
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v11 = *v8;
        v16 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
        v17 = 127;
        v18 = 2;
        v19 = xmmword_25F316B50;
        v20 = "fire(inside:)";
        v21 = 13;
        v22 = 2;
        v12 = *(v11 + 152);
        MEMORY[0x28223BE20](v6);

        os_unfair_lock_lock(v12 + 19);
        sub_25F1D3F70(&v12[4], &v15);
        os_unfair_lock_unlock(v12 + 19);
        if ((v15 & 1) == 0)
        {
          v9();
        }

        ++v7;

        v8 += 3;
        if (v14 == v7)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      sub_25F2FDFC8(v13);
    }
  }

  else
  {

    os_unfair_lock_unlock((v2 + 32));
  }
}

void sub_25F2FBF68(uint64_t (*a1)(void (*)(), void *))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  if (v4 > 1)
  {
    v5 = *(v3 + 24);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    os_unfair_lock_unlock((v3 + 32));
    MEMORY[0x28223BE20](v6);
    v17 = v4;
    v18 = v1;
    v19 = v4;

    v7 = a1(sub_25F2FE008, v16);
    v8 = v5;
    v21 = *(v5 + 16);
    if (v21)
    {
      v9 = 0;
      v10 = (v5 + 48);
      v20 = xmmword_25F316B50;
      while (v9 < *(v8 + 16))
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        v23[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
        v23[1] = 127;
        v24 = 2;
        v25 = v20;
        v26 = "fire(inside:)";
        v27 = 13;
        v28 = 2;
        v14 = *(v13 + 152);
        MEMORY[0x28223BE20](v7);
        v16[0] = v23;
        v16[1] = v13;
        v17 = sub_25F1D3340;
        v18 = 0;

        os_unfair_lock_lock(v14 + 19);
        sub_25F1D3F70(&v14[4], &v22);
        os_unfair_lock_unlock(v14 + 19);
        if ((v22 & 1) == 0)
        {
          v11();
        }

        ++v9;

        v10 += 3;
        if (v21 == v9)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:

      v15 = v19;

      sub_25F2FDFC8(v15);
    }
  }

  else
  {

    os_unfair_lock_unlock((v3 + 32));
  }
}

void SingleFireEvent.observeUntilFiredOrCanceled(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_25F2FE2CC((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 32));
  v4 = v5;
  if (v5)
  {
    sub_25F2FC288(&v5);
    sub_25F1DF100(v4);
  }

  else if (v6)
  {
    a1();
  }
}

void sub_25F2FC288(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(v1 + 16);
  v7 = *(a1 + 8);
  os_unfair_lock_lock((v4 + 32));
  sub_25F2FE188((v4 + 16), v9);
  os_unfair_lock_unlock((v4 + 32));
  if ((v9[0] & 1) == 0)
  {
    v9[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v9[1] = 127;
    v12 = "manage(_:)";
    v13 = 10;
    v10 = 2;
    v11 = xmmword_25F316B60;
    v14 = 2;
    v6 = *(v3 + 152);
    MEMORY[0x28223BE20](v5);
    os_unfair_lock_lock(v6 + 19);
    sub_25F1D3F70(&v6[4], v8);
    os_unfair_lock_unlock(v6 + 19);
    if ((v8[0] & 1) == 0)
    {
      v2();
    }
  }
}

uint64_t sub_25F2FC3C8(__int128 *a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v30 = sub_25F30490C();
  v29 = *(v30 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25F30494C();
  v27 = *(v28 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v36 = *a1;
  v37 = v16;
  v38[0] = a1[2];
  v17 = v38[0];
  *(v38 + 10) = *(a1 + 42);
  v39 = v36;
  v40 = v16;
  v41[0] = v17;
  *(v41 + 10) = *(v38 + 10);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = a1[1];
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = a1[2];
  *(v18 + 74) = *(a1 + 42);
  v34 = a2;
  v35 = a3;
  swift_retain_n();
  sub_25F1B7174(a1, &aBlock, &qword_27FD58228, &qword_25F314C90);
  sub_25F1B7174(&v36, &aBlock, &qword_27FD58228, &qword_25F314C90);
  sub_25F1B7174(&v39, &aBlock, &qword_27FD58228, &qword_25F314C90);
  if (ExecutionLane.isCurrentLane.getter())
  {
    aBlock = v36;
    v32 = v37;
    v33[0] = v38[0];
    *(v33 + 10) = *(v38 + 10);
    a4(&aBlock);

    sub_25F1AF698(&v39, &qword_27FD58228, &qword_25F314C90);
    v20 = &v36;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v21 = sub_25F305AAC();
        *&v33[0] = sub_25F2FE058;
        *(&v33[0] + 1) = v18;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v32 = sub_25F1D8C38;
        *(&v32 + 1) = &block_descriptor_17;
        v22 = _Block_copy(&aBlock);

        sub_25F30492C();
        *&aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v23 = v30;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v15, v12, v22);
        _Block_release(v22);

        (*(v29 + 8))(v12, v23);
        (*(v27 + 8))(v15, v28);
      }

      else
      {
        *&v33[0] = sub_25F2FE058;
        *(&v33[0] + 1) = v18;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v32 = sub_25F1D8C38;
        *(&v32 + 1) = &block_descriptor_15;
        v24 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v34 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v25 = v30;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v15, v12, v24);
        _Block_release(v24);
        sub_25F2033DC(a2);
        (*(v29 + 8))(v12, v25);
        (*(v27 + 8))(v15, v28);
      }
    }

    else
    {
      aBlock = v39;
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 10) = *(v41 + 10);
      a4(&aBlock);
    }

    sub_25F1AF698(&v36, &qword_27FD58228, &qword_25F314C90);

    v20 = &v39;
  }

  return sub_25F1AF698(v20, &qword_27FD58228, &qword_25F314C90);
}

uint64_t sub_25F2FC9EC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v48 = a3;
  v49 = a5;
  v8 = sub_25F30490C();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25F30494C();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v39 - v21;
  sub_25F1B7174(a1, &v39 - v21, qword_27FD53BB8, &qword_25F311350);
  sub_25F1B7174(v22, v20, qword_27FD53BB8, &qword_25F311350);
  v47 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v48;
  v23 = v49;
  sub_25F1B7174(v22, v47, qword_27FD53BB8, &qword_25F311350);
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = v23;
  sub_25F2C4368(v22, v26 + v25);
  aBlock = a2;
  v52 = v24;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    a4(v20);

    v27 = v47;
  }

  else
  {
    v40 = v20;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v28 = sub_25F305AAC();
        v55 = sub_25F2FE0C0;
        v56 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_25F1D8C38;
        v54 = &block_descriptor_26;
        v29 = _Block_copy(&aBlock);

        v30 = v41;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v31 = v42;
        v32 = v46;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v30, v31, v29);
        _Block_release(v29);

        (*(v45 + 8))(v31, v32);
        (*(v43 + 8))(v30, v44);
      }

      else
      {
        v55 = sub_25F2FE0C0;
        v56 = v26;
        aBlock = MEMORY[0x277D85DD0];
        v52 = 1107296256;
        v53 = sub_25F1D8C38;
        v54 = &block_descriptor_23;
        v34 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        v35 = v41;
        sub_25F30492C();
        v50 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v36 = v42;
        v37 = v46;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v35, v36, v34);
        _Block_release(v34);
        sub_25F2033DC(a2);
        (*(v45 + 8))(v36, v37);
        (*(v43 + 8))(v35, v44);
      }

      v27 = v47;
    }

    else
    {
      v33 = v47;
      a4(v47);

      v27 = v33;
    }

    v20 = v40;
  }

  sub_25F1AF698(v27, qword_27FD53BB8, &qword_25F311350);
  return sub_25F1AF698(v20, qword_27FD53BB8, &qword_25F311350);
}

void *SingleFireEvent.init(description:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59128, &qword_25F316BD0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25F1B5DE0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59130, &qword_25F316BD8);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v4 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59138, &qword_25F316BE0);
  v8 = swift_allocObject();
  *(v8 + 32) = 0;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  v3[2] = v8;
  *&v34 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
  *(&v34 + 1) = 127;
  v35 = 2;
  v36 = xmmword_25F316B70;
  v37 = "init(description:)";
  v38 = 18;
  v39 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59140, &qword_25F316BE8);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59148, &qword_25F316BF0);
  v10 = swift_allocObject();
  *(v10 + 76) = 0;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0;
  *(v10 + 72) = -256;
  *(v9 + 104) = v10;
  v11 = sub_25F1BFFDC(&v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59150, &qword_25F316BF8);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v3[3] = v12;
  *&v28 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
  *(&v28 + 1) = 127;
  v29 = 2;
  v30 = xmmword_25F316B80;
  v31 = "init(description:)";
  v32 = 18;
  v33 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD59158, &qword_25F316C00);
  swift_allocObject();

  v13 = sub_25F1BFFDC(&v28);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = sub_25F2FDE24;
  v14[5] = v13;
  v15 = *(v11 + 88);
  swift_retain_n();
  os_unfair_lock_lock(v15 + 25);
  sub_25F2FDEA4(&v15[4], &v23);
  os_unfair_lock_unlock(v15 + 25);
  *&v22[10] = *(v25 + 10);
  v21[0] = v23;
  v21[1] = v24;
  *v22 = v25[0];
  if (BYTE9(v25[1]) == 255)
  {
  }

  else
  {
    v26[0] = v23;
    v26[1] = v24;
    v27[0] = v25[0];
    *(v27 + 10) = *(v25 + 10);

    sub_25F1B7174(v21, v19, &qword_27FD59160, &qword_25F316C08);
    sub_25F1C0934(v26);

    sub_25F1AF698(v21, &qword_27FD59160, &qword_25F316C08);
  }

  v19[0] = v23;
  v19[1] = v24;
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  sub_25F1AF698(v19, &qword_27FD59160, &qword_25F316C08);

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = v13;
  return v3;
}

void *SingleFireEvent.deinit()
{
  v1 = v0[2];

  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  sub_25F2C403C(v2);
  os_unfair_lock_unlock((v1 + 32));

  if (v2 >= 2)
  {

    v8[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v8[1] = 127;
    v9 = 2;
    v10 = xmmword_25F316B90;
    v11 = "deinit";
    v12 = 6;
    v13 = 2;
    sub_25F213F98(v8);
  }

  else
  {
    sub_25F2C4080(v2);
  }

  v3 = v0[2];

  v4 = v0[3];

  v5 = v0[5];

  v6 = v0[6];

  return v0;
}

uint64_t SingleFireEvent.__deallocating_deinit()
{
  SingleFireEvent.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

Swift::Void __swiftcall SingleFireEvent.cancel()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 16) <= 1uLL)
  {
    os_unfair_lock_unlock((v1 + 32));
LABEL_11:
    v10 = *(v0 + 24);
    *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    *(&v13 + 1) = 127;
    v14 = 2;
    v15 = xmmword_25F316BB0;
    v16 = "cancel()";
    v17 = 8;
    v18 = 2;
    v11 = *(v10 + 16);
    sub_25F2FB788(&v13);
    return;
  }

  v2 = *(v1 + 24);

  *(v1 + 16) = xmmword_25F3077E0;
  os_unfair_lock_unlock((v1 + 32));
  if (!v2)
  {
    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  v4 = 0;
  v5 = (v2 + 48);
  while (v4 < *(v2 + 16))
  {
    v7 = *(v5 - 2);
    v6 = *(v5 - 1);
    v8 = *v5;
    v19 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
    v20 = 127;
    v21 = 2;
    v22 = xmmword_25F316BA0;
    v23 = "cancel()";
    v24 = 8;
    v25 = 2;
    v9 = *(v8 + 152);
    MEMORY[0x28223BE20](v3);

    os_unfair_lock_lock(v9 + 19);
    sub_25F1D3DD4(&v9[4], &v13);
    os_unfair_lock_unlock(v9 + 19);
    if ((v13 & 1) == 0)
    {
      v7();
    }

    ++v4;

    v5 += 3;
    if (v12 == v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_25F2FD6B8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 24) = 0;
      *(a4 + 16) = 0;
    }

    else
    {
      v5 = *a1;

      v9 = swift_allocObject();
      *(v9 + 16) = a2;
      *(v9 + 24) = a3;
      *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SingleFireEvent.swift";
      *(&v14 + 1) = 127;
      v15 = 2;
      v16 = xmmword_25F316BC0;
      v17 = "observe(_:)";
      v18 = 11;
      v19 = 2;

      sub_25F2FB8F8(&v14, sub_25F20DAF8, v9, v4, &v12);

      v10 = v13;
      result = *&v12;
      *a4 = v12;
      *(a4 + 16) = v10;
      *(a4 + 24) = 0;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 1;
  }

  return result;
}

void *sub_25F2FD7F0@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v6 = *result;
  if (*result >= 2uLL)
  {
    v10 = result;
    v11 = result[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_25F2F0250(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_25F2F0250((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 4) = a2;
    *(v14 + 5) = a3;
    *(v14 + 6) = a4;
    *v10 = v6;
    v10[1] = v11;
    *a5 = 1;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void ObjcSingleFireEvent.addObserver(_:)(void (*a1)(void))
{
  v3 = *(*(v1 + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event) + 16);
  os_unfair_lock_lock((v3 + 32));
  sub_25F2FE2CC((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 32));
  v4 = v5;
  if (v5)
  {
    sub_25F2FC288(&v5);
    sub_25F1DF100(v4);
  }

  else if (v6)
  {
    a1();
  }
}

BOOL ObjcSingleFireEvent.hasFired.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event) + 16);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  sub_25F2C403C(v2);
  os_unfair_lock_unlock((v1 + 32));
  sub_25F2C4080(v2);
  return v2 == 0;
}

id ObjcSingleFireEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcSingleFireEvent.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC20PreviewsFoundationOS19ObjcSingleFireEvent_event;
  type metadata accessor for SingleFireEvent();
  v4 = swift_allocObject();
  SingleFireEvent.init(description:)(0, 0);
  *&v1[v3] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ObjcSingleFireEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CancellationToken.manage(using:)()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = v1;
  sub_25F2FC288(&v2);
}

BOOL sub_25F2FDDD0@<W0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  result = sub_25F2C1648(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_25F2FDE24(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 10) = *(a1 + 42);
  return sub_25F1C0934(v3);
}

uint64_t sub_25F2FDE60(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 10) = *(a1 + 42);
  return sub_25F2FC3C8(v8, v2, v3, v4, v5);
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS15SingleFireEventC5State33_8D63C14D2B3A559738C4808384BD06F9LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F2FDF88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F2FDFC8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_25F2FE008()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  _s20PreviewsFoundationOS11EventStreamV4SinkC4sendyyytRszlF_0();
  v3 = *(*(v1 + 24) + 16);
  sub_25F1D71EC(0, 0);
}

void sub_25F2FE044(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 1)
  {
  }
}

uint64_t sub_25F2FE058()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5[0] = *(v0 + 32);
  v5[1] = v3;
  v6[0] = *(v0 + 64);
  *(v6 + 10) = *(v0 + 74);
  return v2(v5);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2FE0C0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_25F2CCCC8(v2, v3, v4);
}

BOOL sub_25F2FE130@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C1648(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2FE1B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v1;
  v4 = v1[1];

  return sub_25F1E4C08(v3, v4, v2);
}

uint64_t sub_25F2FE1FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25F2FE224()
{
  v2 = v0[2];
  v1 = v0[3];
  v4[2] = v0[4];
  return v2(sub_25F2FE278, v4);
}

uint64_t sub_25F2FE278()
{
  v1 = sub_25F1E54CC(*(v0 + 16));

  return sub_25F1E7344(v1);
}

void CancelationToken.cancel(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v16 = a9;
  CancelationToken.cancel(callsite:)(&v10, a10);
}

__n128 CancelationToken<>.init(dsoHandle:file:line:column:function:on:_:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __n128 *a8@<X8>, char a9, __n128 a10, unint64_t a11, unint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v20 = swift_allocObject();
  *(v20 + 76) = 0;
  *(v20 + 73) = 0;
  *(v19 + 152) = v20;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;
  *(v19 + 72) = a9;
  *(v19 + 80) = 0;
  *(v19 + 88) = 0;
  *(v19 + 96) = xmmword_25F3077E0;
  *(v19 + 112) = 2;
  *(v19 + 120) = 0xD000000000000011;
  *(v19 + 128) = 0x800000025F319920;
  *(v19 + 136) = 0x64656C65636E6163;
  *(v19 + 144) = 0xE800000000000000;
  result = a10;
  *a8 = a10;
  a8[1].n128_u64[0] = a11;
  a8[1].n128_u64[1] = a12;
  a8[2].n128_u64[0] = v19;
  return result;
}

double CancelationToken<>.init(dsoHandle:file:line:column:function:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, char a9, uint64_t a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v19 = swift_allocObject();
  *(v19 + 76) = 0;
  *(v19 + 73) = 0;
  *(v18 + 152) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a9;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *&result = 1;
  *(v18 + 96) = xmmword_25F3077E0;
  *(v18 + 112) = 2;
  *(v18 + 120) = 0xD000000000000011;
  *(v18 + 128) = 0x800000025F319920;
  *(v18 + 136) = 0x64656C65636E6163;
  *(v18 + 144) = 0xE800000000000000;
  *a8 = a10;
  a8[1] = a11;
  a8[2] = v18;
  return result;
}

void CancelationToken.cancel(callsite:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v7 = *a1;
  v8 = v4;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v5 = *(*(v2 + *(a2 + 36)) + 152);
  os_unfair_lock_lock(v5 + 19);
  sub_25F1D3EBC(&v5[4], &v6);
  os_unfair_lock_unlock(v5 + 19);
  if ((v6 & 1) == 0)
  {
    (*(*(a2 + 24) + 8))(*(a2 + 16));
  }
}

Swift::Void __swiftcall IsolatedTokenCallback.invoke()()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*v0)
  {
    v3 = v0[1];
    swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)();
  }

  v2();
}

uint64_t sub_25F2FE72C()
{
  v2 = v0[2];
  v1 = v0[3];
  if (*v0)
  {
    v3 = v0[1];
    swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)();
  }

  return v2();
}

Swift::Void __swiftcall ConcurrentTokenCallback.invoke()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v1();
}

uint64_t sub_25F2FE7D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t Actor.wrap(token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v18 = *(a1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = v4;
  v11 = *(a1 + 16);
  *(v10 + 40) = *a1;
  *(v10 + 56) = v11;
  *(v10 + 72) = *(a1 + 32);
  v12 = swift_allocObject();
  *(v12 + 2) = a2;
  *(v12 + 3) = a3;
  *(v12 + 4) = sub_25F2FED7C;
  *(v12 + 5) = v10;
  *(v12 + 6) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
  v13 = swift_allocObject();
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
  v14 = swift_allocObject();
  *(v14 + 76) = 0;
  *(v14 + 73) = v19;
  *(v13 + 152) = v14;
  *(v13 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CancelationToken.swift";
  *(v13 + 24) = 128;
  *(v13 + 32) = 2;
  *(v13 + 40) = xmmword_25F316D00;
  *(v13 + 56) = "wrap(token:)";
  *(v13 + 64) = 12;
  *(v13 + 72) = 2;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = xmmword_25F3077E0;
  *(v13 + 112) = 2;
  *(v13 + 120) = 0xD000000000000011;
  *(v13 + 128) = 0x800000025F319920;
  *(v13 + 136) = 0x64656C65636E6163;
  *(v13 + 144) = 0xE800000000000000;
  *a4 = sub_25F2FED8C;
  a4[1] = v12;
  a4[2] = v13;
  swift_unknownObjectRetain_n();
  return sub_25F2A02C8(v17, v16);
}

uint64_t sub_25F2FEA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_25F30546C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;

  swift_unknownObjectRetain();
  sub_25F1B1524(0, 0, v13, &unk_25F316E48, v15);
}

uint64_t sub_25F2FEBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F2FEC30, v8, v7);
}

uint64_t sub_25F2FEC30()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t *Actor.wrap(token:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result[2];
  if (v5)
  {
    v9 = result[3];
    v8 = result[4];
    v10 = *result;
    v11 = result[1];
    swift_unknownObjectRetain();

    v12[0] = v10;
    v12[1] = v11;
    v12[2] = v5;
    v12[3] = v9;
    v12[4] = v8;
    Actor.wrap(token:)(v12, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void sub_25F2FED7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_25F2FE9C4();
}

void sub_25F2FEDB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_25F2FF140();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25F2FEE38(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25F2FEF74(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_25F2FF140()
{
  if (!qword_27FD591F0[0])
  {
    v0 = type metadata accessor for FulfillOnceState();
    if (!v1)
    {
      atomic_store(v0, qword_27FD591F0);
    }
  }
}

uint64_t sub_25F2FF1B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F1AFDB0;

  return sub_25F2FEBB0(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_25F2FF294(_OWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v8 = *(v5 + 80);
  v9 = *(v6 + 80);
  type metadata accessor for ZipFuture();
  swift_allocObject();

  return sub_25F3000C4(v11, a2, a3);
}

uint64_t static Future<A>.zip<A, B>(dsoHandle:file:line:column:function:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11)
{
  *&v12 = a2;
  *(&v12 + 1) = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  return sub_25F2FF294(&v12, a10, a11);
}

uint64_t static Future<A>.zip<A, B, C>(dsoHandle:file:line:column:function:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v12 = *a10;
  v13 = *a11;
  v14 = *a12;
  *&v31 = a2;
  *(&v31 + 1) = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v37 = a9;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v15 = sub_25F2FF294(&v24, a10, a11);
  sub_25F2FF294(&v31, v15, a12);

  v16 = swift_allocObject();
  v17 = *(v12 + 80);
  v16[2] = v17;
  v18 = *(v13 + 80);
  v16[3] = v18;
  v19 = *(v14 + 80);
  v16[4] = v19;
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = v19;
  v20[5] = sub_25F2FF824;
  v20[6] = v16;
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_25F229A9C(&v31);
  v24 = v31;
  v22 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift", 121, 2, 77, 25, "zip(dsoHandle:file:line:column:function:_:_:_:)", 47, 2, &v24, sub_25F2FF928, v20, TupleTypeMetadata3);

  sub_25F2033DC(v24);
  return v22;
}

uint64_t sub_25F2FF600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a6;
  v25 = a1;
  v26 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = *(a7 - 8);
  (*(v21 + 16))(&v25 - v19, a4, a7);
  v22 = *(a8 - 8);
  (*(v22 + 16))(&v20[*(TupleTypeMetadata2 + 48)], a5, a8);
  (*(v14 + 32))(v18, v20, TupleTypeMetadata2);
  v23 = *(TupleTypeMetadata2 + 48);
  (*(v21 + 32))(v25, v18, a7);
  (*(v22 + 32))(v26, &v18[v23], a8);
  return (*(*(a9 - 8) + 16))(v27, v28, a9);
}

uint64_t sub_25F2FF850@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a3, a3 + *(TupleTypeMetadata3 + 48), a3 + *(TupleTypeMetadata3 + 64), a1, a1 + v6, a1 + v7);
}

uint64_t sub_25F2FF928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_25F2FF850(a1, *(v2 + 40), a2);
}

uint64_t static Future<A>.zip<A, B, C, D>(dsoHandle:file:line:column:function:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13)
{
  v31 = *a10;
  v32 = *a11;
  v33 = *a12;
  v34 = *a13;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  LOBYTE(v43) = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a9;
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v20 = sub_25F2FF294(&v35, a10, a11);
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v41 = a9;
  v21 = sub_25F2FF294(&v35, a12, a13);
  sub_25F2FF294(&v42, v20, v21);

  v22 = swift_allocObject();
  v23 = *(v31 + 80);
  v22[2] = v23;
  v24 = *(v32 + 80);
  v22[3] = v24;
  v25 = *(v33 + 80);
  v22[4] = v25;
  v26 = *(v34 + 80);
  v22[5] = v26;
  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v27[5] = v26;
  v27[6] = sub_25F301528;
  v27[7] = v22;
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  *&v42 = v23;
  *(&v42 + 1) = v24;
  v43 = v25;
  v44 = v26;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  sub_25F229A9C(&v42);
  v35 = v42;
  v29 = sub_25F286460("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift", 121, 2, 105, 25, "zip(dsoHandle:file:line:column:function:_:_:_:_:)", 49, 2, &v35, sub_25F301558, v27, TupleTypeMetadata);

  sub_25F2033DC(v35);
  return v29;
}

uint64_t sub_25F2FFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a8;
  v43 = a6;
  v41 = a5;
  v49 = a3;
  v50 = a4;
  v47 = a1;
  v48 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v13 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v44 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  v18 = swift_getTupleTypeMetadata2();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v40 = a9;
  v26 = *(a9 - 8);
  (*(v26 + 16))(&v37 - v24, v41, a9);
  v27 = *(v18 + 48);
  v38 = a10;
  v28 = *(a10 - 8);
  (*(v28 + 16))(&v25[v27], v43, a10);
  v39 = a11;
  v29 = *(a11 - 8);
  (*(v29 + 16))(v17, a7, a11);
  v30 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v37 = a12;
  v32 = *(a12 - 8);
  (*(v32 + 16))(&v17[v31], v45, a12);
  (*(v19 + 32))(v23, v25, v18);
  v33 = *(v18 + 48);
  (*(v26 + 32))(v47, v23, v40);
  (*(v28 + 32))(v48, &v23[v33], v38);
  v34 = v44;
  (*(v46 + 32))(v44, v17, v30);
  v35 = *(v30 + 48);
  (*(v29 + 32))(v49, v34, v39);
  return (*(v32 + 32))(v50, &v34[v35], v37);
}

uint64_t sub_25F2FFFA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v8 = *(TupleTypeMetadata2 + 48);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a1, a1 + v5, v7, v7 + v8);
}

uint64_t sub_25F3000C4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 200);
  v8 = *(*v3 + 208);
  v9 = type metadata accessor for ZipFuture.Activity();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = a1[1];
  v18[0] = *a1;
  v18[1] = v14;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v3[14] = a2;
  v3[15] = a3;
  swift_storeEnumTagMultiPayload();

  v15 = sub_25F203E0C(v13, v9);
  (*(v10 + 8))(v13, v9);
  v3[13] = v15;
  v16 = sub_25F2E95EC(v18);
  swift_retain_n();
  Future.observeSuccess(_:)(sub_25F3019D0, v16);

  Future.observeSuccess(_:)(sub_25F301974, v16);

  Future.observeFailure(_:)(sub_25F301970, v16);

  Future.observeFailure(_:)(sub_25F301A30, v16);

  Future.observeCancelation(_:)(sub_25F301934, v16);

  Future.observeCancelation(_:)(sub_25F301A2C, v16);

  return v16;
}

uint64_t sub_25F300358(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v38 = a1;
  v39 = a3;
  v37 = a2;
  v36 = a4;
  v5 = *(*v4 + 200);
  v6 = *(*v4 + 208);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = type metadata accessor for FutureTermination();
  v34 = *(v35 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v33 = &v30 - v10;
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v13;
  v14 = sub_25F305C1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v31 = v4;
  v50 = v4[13];
  *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
  *(&v44 + 1) = 121;
  v45 = 2;
  v46 = v36;
  v47 = v37;
  v48 = 14;
  v49 = 2;
  v41 = v5;
  v42 = v6;
  v43 = v38;
  type metadata accessor for ZipFuture.Activity();
  v22 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v44, v39, v40, v22, v14, WitnessTable);

  (*(v15 + 16))(v19, v21, v14);
  v24 = v11;
  if ((*(v11 + 48))(v19, 1, TupleTypeMetadata2) == 1)
  {
    v25 = *(v15 + 8);
    v25(v21, v14);
    return (v25)(v19, v14);
  }

  else
  {
    v27 = v32;
    (*(v24 + 32))(v32, v19, TupleTypeMetadata2);
    v28 = v33;
    (*(v24 + 16))(v33, v27, TupleTypeMetadata2);
    v29 = v35;
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v28);
    (*(v34 + 8))(v28, v29);
    (*(v24 + 8))(v27, TupleTypeMetadata2);
    return (*(v15 + 8))(v21, v14);
  }
}

uint64_t sub_25F300784(void *a1)
{
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 208);
  swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v12 - v8);
  result = sub_25F3011FC();
  if (result)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v11 = a1;
    sub_25F2EA104(v9);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_25F3008B0(__int128 *a1)
{
  v2 = v1;
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 208);
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for FutureTermination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - v9);
  result = sub_25F3011FC();
  if (result)
  {
    v12 = v1[14];
    v13 = a1[1];
    v17 = *a1;
    v18 = v13;
    v19[0] = a1[2];
    *(v19 + 9) = *(a1 + 41);
    (*(*v12 + 192))(&v17);
    v14 = v2[15];
    v15 = a1[1];
    v17 = *a1;
    v18 = v15;
    v19[0] = a1[2];
    *(v19 + 9) = *(a1 + 41);
    (*(*v14 + 192))(&v17);
    v16 = a1[1];
    *v10 = *a1;
    v10[1] = v16;
    v10[2] = a1[2];
    *(v10 + 41) = *(a1 + 41);
    swift_storeEnumTagMultiPayload();
    sub_25F2EA104(v10);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_25F300A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ZipFuture.Activity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  (*(v14 + 16))(&v25 - v16, a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v14 + 8))(a1, v13);
      (*(*(a3 - 8) + 16))(a1, v26, a3);
      swift_storeEnumTagMultiPayload();
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v14 + 8))(a1, v13);
    v22 = *(v9 + 32);
    v22(v12, v17, a4);
    swift_storeEnumTagMultiPayload();
    v23 = swift_getTupleTypeMetadata2();
    v24 = *(v23 + 48);
    (*(*(a3 - 8) + 16))(a5, v26, a3);
    v22((a5 + v24), v12, a4);
    return (*(*(v23 - 8) + 56))(a5, 0, 1, v23);
  }

  else
  {
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
    v27[1] = 121;
    v28 = 2;
    v29 = xmmword_25F316E50;
    v30 = "aSucceeded(_:)";
    v31 = 14;
    v32 = 2;
    sub_25F213F98(v27);
    v19 = swift_getTupleTypeMetadata2();
    (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_25F300E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a2;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ZipFuture.Activity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  (*(v14 + 16))(&v25 - v16, a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v14 + 8))(a1, v13);
      (*(*(a4 - 8) + 16))(a1, v26, a4);
      swift_storeEnumTagMultiPayload();
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a5, 1, 1, TupleTypeMetadata2);
  }

  else if (EnumCaseMultiPayload)
  {
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
    v27[1] = 121;
    v28 = 2;
    v29 = xmmword_25F316E60;
    v30 = "bSucceeded(_:)";
    v31 = 14;
    v32 = 2;
    sub_25F213F98(v27);
    v24 = swift_getTupleTypeMetadata2();
    (*(*(v24 - 8) + 56))(a5, 1, 1, v24);
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v14 + 8))(a1, v13);
    v19 = *(v9 + 32);
    v19(v12, v17, a3);
    swift_storeEnumTagMultiPayload();
    v20 = swift_getTupleTypeMetadata2();
    v21 = *(v20 + 48);
    v19(a5, v12, a3);
    (*(*(a4 - 8) + 16))(&a5[v21], v26, a4);
    return (*(*(v20 - 8) + 56))(a5, 0, 1, v20);
  }
}

uint64_t sub_25F3011FC()
{
  v1 = *v0;
  v12 = v0[13];
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ZipFuture.swift";
  *(&v6 + 1) = 121;
  v7 = 2;
  v8 = xmmword_25F316E70;
  v9 = "checkIfRunningAndMarkFinished()";
  v10 = 31;
  v11 = 2;
  v5[2] = *(v1 + 200);
  v5[3] = *(v1 + 208);
  type metadata accessor for ZipFuture.Activity();
  v2 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v6, sub_25F301918, v5, v2, MEMORY[0x277D839B0], WitnessTable);

  return v13;
}

uint64_t sub_25F301320@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ZipFuture.Activity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  (*(v5 + 16))(v12 - v7, a1, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      v11 = 0;
      goto LABEL_7;
    }

    (*(v5 + 8))(a1, v4);
  }

  else
  {
    v10 = *(v5 + 8);
    v10(a1, v4);
    v10(v8, v4);
  }

  result = swift_storeEnumTagMultiPayload();
  v11 = 1;
LABEL_7:
  *a2 = v11;
  return result;
}

uint64_t sub_25F301480()
{
  v1 = v0[13];

  v2 = v0[14];

  v3 = v0[15];
}

void *sub_25F3014B8()
{
  v0 = Future.deinit();
  v1 = v0[13];

  v2 = v0[14];

  v3 = v0[15];

  return v0;
}

uint64_t sub_25F3014F8()
{
  v0 = sub_25F3014B8();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_25F301558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 56);
  return sub_25F2FFFA8(a1, *(v2 + 48), a2);
}

uint64_t sub_25F3015CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = (1u >> (8 * v3)) ^ 0xFD;
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_27;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_25F30171C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_33:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_21;
  }

LABEL_17:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_37:
    if (v8 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_37;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_41:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_41;
    }
  }

LABEL_38:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_25F301918@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F301320(a1, a2);
}

uint64_t sub_25F301934(__int128 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v4[0] = a1[2];
  *(v4 + 9) = *(a1 + 41);
  return sub_25F3008B0(v3);
}

uint64_t BinaryInteger.numberOfSetBits.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v48 = *(a2 + 24);
  v56 = *(v48 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = &v44 - v7;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v46 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v51 = *(v8 + 16);
  v51(&v44 - v20, v2, a1);
  v22 = 0;
  v52 = v21;
  v53 = v8 + 16;
  v45 = (v8 + 32);
  v49 = (v8 + 8);
  v50 = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  do
  {
    v51(v19, v21, a1);
    if (sub_25F305DBC())
    {
      v36 = sub_25F305DAC();
      v37 = v49;
      if (v36 >= 64)
      {
        goto LABEL_2;
      }

LABEL_13:
      v43 = sub_25F305D9C();
      v25 = *v37;
      (*v37)(v19, a1);
      v26 = v16;
      if (!v43)
      {
LABEL_16:
        v25(v52, a1);
        return v22;
      }

      goto LABEL_3;
    }

    v38 = sub_25F305DBC();
    v39 = sub_25F305DAC();
    v37 = v49;
    if ((v38 & 1) == 0)
    {
      if (v39 >= 64)
      {
LABEL_2:
        v57 = 0;
        sub_25F20FAB8();
        sub_25F305D7C();
        v23 = *(*(v3 + 16) + 8);
        v24 = sub_25F304DCC();
        v25 = *v37;
        (*v37)(v16, a1);
        v25(v19, a1);
        v26 = v16;
        if (v24)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (v39 > 64)
    {
      goto LABEL_2;
    }

    swift_getAssociatedConformanceWitness();
    sub_25F30661C();
    sub_25F30656C();
    v40 = *(*(v3 + 32) + 8);
    v41 = sub_25F304CDC();
    v25 = *v37;
    v26 = v16;
    (*v37)(v16, a1);
    if (v41)
    {
      v42 = sub_25F305D9C();
      v25(v19, a1);
      if (!v42)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v25(v19, a1);
    }

LABEL_3:
    swift_getAssociatedConformanceWitness();
    sub_25F30661C();
    v27 = v3;
    v28 = v19;
    v29 = v47;
    sub_25F30656C();
    v30 = *(v48 + 8);
    v31 = v46;
    v32 = v52;
    sub_25F3062AC();
    v33 = v29;
    v19 = v28;
    v3 = v27;
    v21 = v32;
    v25(v33, a1);
    sub_25F305D8C();
    v25(v31, a1);
    v25(v32, a1);
    result = (*v45)(v32, v26, a1);
    v35 = __OFADD__(v22++, 1);
    v16 = v26;
  }

  while (!v35);
  __break(1u);
  return result;
}

uint64_t static FutureTermination.completed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = sub_25F30678C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - v8);
  (*(v10 + 16))(&v12 - v8, a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *v9;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  type metadata accessor for FutureTermination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F3020F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *v6;
    v8 = *(a1 + 16);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v6, *(a1 + 16));
  }

  type metadata accessor for FutureTermination();
  return swift_storeEnumTagMultiPayload();
}

BOOL FutureTermination.isCompleted.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload < 2;
}

uint64_t FutureTermination.map<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v36 = a2;
  v37 = a1;
  v38 = a5;
  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v9 = sub_25F30678C();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v33 - v11);
  v33 = a4;
  v13 = sub_25F30678C();
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(v8 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v5, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v18 + 32))(v22, v25, v8);
    (*(v18 + 16))(v12, v22, v8);
    swift_storeEnumTagMultiPayload();
    v37(v12);
    (*(v34 + 8))(v12, v9);
    (*(v18 + 8))(v22, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = *v25;
    *v12 = v28;
    swift_storeEnumTagMultiPayload();
    v29 = v28;
    v37(v12);

    (*(v34 + 8))(v12, v9);
LABEL_5:
    sub_25F3020F8(v13, v38);
    return (*(v35 + 8))(v17, v13);
  }

  v31 = *(v25 + 1);
  v32 = v38;
  *v38 = *v25;
  v32[1] = v31;
  v32[2] = *(v25 + 2);
  *(v32 + 41) = *(v25 + 41);
  type metadata accessor for FutureTermination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t FutureTermination.succeededValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v4 + 8))(v7, a1);
    }

    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 - 8);
    (*(v11 + 32))(a2, v7, v10);
    return (*(v11 + 56))(a2, 0, 1, v10);
  }
}

uint64_t FutureTermination.failedError.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v5;
    }
  }

  else
  {
    (*(v2 + 8))(v5, a1);
  }

  return 0;
}

uint64_t FutureTermination.completedResult.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v6, *(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v10 = sub_25F30678C();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *a2 = *v6;
    v9 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v10 = sub_25F30678C();
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  v12 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v13 = sub_25F30678C();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t FutureTermination.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0x64656C65636E6163;
    }

    v7 = 0x64656C696166;
  }

  else
  {
    v11[0] = 0x6564656563637573;
    v11[1] = 0xEA00000000003C64;
    v8 = *(a1 + 16);
    v9 = sub_25F30685C();
    MEMORY[0x25F8D7130](v9);

    MEMORY[0x25F8D7130](62, 0xE100000000000000);
    v7 = v11[0];
  }

  (*(v2 + 8))(v5, a1);
  return v7;
}

BOOL FutureTermination.isCanceled.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload > 1;
}

uint64_t FutureTermination.mapSuccess<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a3 = *v14;
    }

    else
    {
      v18 = *(v14 + 1);
      *a3 = *v14;
      *(a3 + 16) = v18;
      *(a3 + 32) = *(v14 + 2);
      *(a3 + 41) = *(v14 + 41);
    }

    type metadata accessor for FutureTermination();
  }

  else
  {
    (*(v6 + 32))(v10, v14, v5);
    a1(v10);
    (*(v6 + 8))(v10, v5);
    type metadata accessor for FutureTermination();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t FutureTermination.resultMappingCancelation(_:)@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a3 = *v8;
      v12 = *(a2 + 16);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30678C();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v14 = *(v8 + 1);
      v15[0] = *v8;
      v15[1] = v14;
      v16[0] = *(v8 + 2);
      *(v16 + 9) = *(v8 + 41);
      return a1(v15);
    }
  }

  else
  {
    (*(*(*(a2 + 16) - 8) + 32))(a3, v8, *(a2 + 16));
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_25F303274@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  *v8 = a1[2];
  *&v8[9] = *(a1 + 41);
  type metadata accessor for FutureTermination.FutureCanceled();
  swift_getWitnessTable();
  v3 = swift_allocError();
  *(v4 + 41) = *&v8[9];
  v4[1] = v7;
  v4[2] = *v8;
  *v4 = v6;
  *a2 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_25F303368()
{
  v3 = *v0;
  v4 = v0[1];
  *v5 = v0[2];
  *&v5[9] = *(v0 + 41);
  sub_25F305FAC();

  v1 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v1);

  return 0xD000000000000016;
}

uint64_t sub_25F30341C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.errorDescription.getter(a1, WitnessTable);
}

uint64_t sub_25F303470(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return HumanReadableError.description.getter(a1, WitnessTable);
}

uint64_t FutureTermination.isFailed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  (*(v2 + 8))(v5, a1);
  return v7;
}

uint64_t FutureTermination.detailedDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v9;
      *&v17[0] = 0;
      *(&v17[0] + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](0x203A64656C696166, 0xE800000000000000);
      v19 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();

      return *&v17[0];
    }

    else
    {
      v15 = *(v9 + 1);
      v17[0] = *v9;
      v17[1] = v15;
      v18[0] = *(v9 + 2);
      *(v18 + 9) = *(v9 + 41);
      v19 = 0x64656C65636E6163;
      v20 = 0xEA0000000000203ALL;
      v16 = Callsite.description.getter();
      MEMORY[0x25F8D7130](v16);

      return v19;
    }
  }

  else
  {
    (*(v2 + 32))(v6, v9, v1);
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;
    MEMORY[0x25F8D7130](0x6564656563637573, 0xEB00000000203A64);
    sub_25F30653C();
    v14 = *&v17[0];
    (*(v2 + 8))(v6, v1);
    return v14;
  }
}

uint64_t Logger.logOutcome<A>(of:at:operation:)(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  HIDWORD(v16) = a2;
  v6 = *a1;
  v7 = sub_25F30479C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v4, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = v11 + v9;
  v13 = swift_allocObject();
  *(v13 + 16) = *(v6 + 80);
  (*(v8 + 32))(v13 + v11, v10, v7);
  *(v13 + v12) = BYTE4(v16);
  v14 = v13 + (v12 & 0xFFFFFFFFFFFFFFF8);
  *(v14 + 8) = v17;
  *(v14 + 16) = a4;

  Future.observeFinish(_:)(sub_25F303C64, v13);
}

void sub_25F3039E8(uint64_t a1, uint64_t a2, os_log_type_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for FutureTermination();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  if (FutureTermination.isFailed.getter(v12))
  {
    a3 = sub_25F305A0C();
  }

  (*(v10 + 16))(v14, a1, v9);
  v15 = sub_25F30477C();
  if (os_log_type_enabled(v15, a3))
  {
    v16 = swift_slowAlloc();
    v30 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315650;
    v19 = sub_25F30685C();
    v21 = sub_25F1C53AC(v19, v20, &v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = FutureTermination.detailedDescription.getter(v9);
    v24 = v23;
    (*(v10 + 8))(v14, v9);
    v25 = sub_25F1C53AC(v22, v24, &v31);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2082;
    v27 = a4(v26);
    v29 = sub_25F1C53AC(v27, v28, &v31);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_25F1A2000, v15, a3, "Future<%s> %{public}s\nOperation: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v18, -1, -1);
    MEMORY[0x25F8D9510](v17, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }
}

void sub_25F303C64(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_25F30479C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v1 + v6);

  sub_25F3039E8(a1, v1 + v5, v10, v8, v9);
}

unint64_t sub_25F303D14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25F304064();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F303D94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 57;
  if (*(v3 + 64) > 0x39uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_25F303EAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_25F304064()
{
  result = qword_27FD59378;
  if (!qword_27FD59378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD59378);
  }

  return result;
}

uint64_t sub_25F3040E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F304138(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}