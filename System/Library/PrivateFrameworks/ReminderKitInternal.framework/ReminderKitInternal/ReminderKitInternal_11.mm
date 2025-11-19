uint64_t sub_230119298(uint64_t result, unint64_t a2)
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
        result = sub_230310958();
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

  v6 = sub_230116D5C(result, a2, 10);
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

uint64_t sub_230119598(uint64_t result, unint64_t a2)
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

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301172DC(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
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

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 >> 8))
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
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
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

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
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
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
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
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_2301198B0(uint64_t result, unint64_t a2)
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

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_2301178A4(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
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

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 & 0x10000) != 0)
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
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
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

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
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
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
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
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_230119BC8(uint64_t result, unint64_t a2)
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

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_230117E6C(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_230310958();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
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
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
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
        LODWORD(v6) = 0;
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
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
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
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
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
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
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
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
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
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
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

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
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

uint64_t sub_230119EA4(uint64_t result, unint64_t a2)
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
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
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
        result = sub_230310958();
        v3 = v21;
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
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
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
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
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
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2301183DC(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t _sSb19ReminderKitInternalE15queryItemStringSbSgSS_tcfC_0()
{
  v0 = sub_23030F958();
  v2 = v1;

  if (v0 == 1702195828 && v2 == 0xE400000000000000 || (sub_230311048() & 1) != 0 || v0 == 49 && v2 == 0xE100000000000000 || (sub_230311048() & 1) != 0 || v0 == 7562617 && v2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (v0 == 0x65736C6166 && v2 == 0xE500000000000000 || (sub_230311048() & 1) != 0 || v0 == 48 && v2 == 0xE100000000000000 || (sub_230311048() & 1) != 0 || v0 == 28526 && v2 == 0xE200000000000000)
  {

    return 0;
  }

  else
  {
    v4 = sub_230311048();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_23011A378(void *a1)
{
  v2 = *(v1 + 24);
  v3 = MEMORY[0x2319116F0](*a1, a1[1], a1[2], a1[3]);
  return (*(v2 + 8))(v3);
}

uint64_t sub_23011A3E8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(*(v2 + 32) + 8))(*(v2 + 16));
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_23011A44C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB147D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_23011A574@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_23011A600@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_23011A6D4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_23030E4F8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t URLQueryItemDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for QueryItems();
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  type metadata accessor for InternalDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F98];
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = v5;
  v4[4] = v3;
  sub_23011A8F0();

  return sub_23030FEF8();
}

unint64_t sub_23011A8F0()
{
  result = qword_27DB15658;
  if (!qword_27DB15658)
  {
    type metadata accessor for InternalDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15658);
  }

  return result;
}

uint64_t URLQueryItemDecoder.decodeIfPresent<A>(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_230310918();
  v34 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v35;
  URLQueryItemDecoder.decode<A>(_:from:)(v16, a1);
  if (!v19)
  {
    v15[4](a3, v18, a2);
    v29 = 0;
    v30 = a3;
    return (v15[7])(v30, v29, 1, a2);
  }

  v35 = v15;
  v20 = a3;
  v36 = v19;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  v22 = swift_dynamicCast();
  v23 = v34;
  v24 = *(v34 + 56);
  if (v22)
  {
    v24(v8, 0, 1, v9);
    v25 = *(v23 + 32);
    v25(v14, v8, v9);
    v26 = v33;
    v25(v33, v14, v9);
    if ((*(v23 + 88))(v26, v9) == *MEMORY[0x277D84158])
    {

      (*(v23 + 96))(v26, v9);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668) + 48);
      v28 = sub_230310908();
      (*(*(v28 - 8) + 8))(v26 + v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v29 = 1;
      v30 = v20;
      v15 = v35;
      return (v15[7])(v30, v29, 1, a2);
    }

    (*(v23 + 8))(v26, v9);
  }

  else
  {
    v24(v8, 1, 1, v9);
    sub_23011AD0C(v8);
  }

  return swift_willThrow();
}

uint64_t sub_23011AD0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23011ADDC(void *a1, uint64_t a2)
{
  v4 = sub_230310908();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = sub_23030E4F8();
  v51 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v13;
  swift_beginAccess();
  v14 = *(a2 + 16);
  v48 = a1;

  v15 = sub_23011A6D4(sub_23011D5C8, v47, v14);
  v17 = v16;

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_230315CE0;
    sub_2300819F0(a1, v19 + 32);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_230310848();

    v49 = 0xD000000000000018;
    v50 = 0x8000000230341450;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v20 = sub_2303114D8();
    MEMORY[0x231911790](v20);

    MEMORY[0x231911790](34, 0xE100000000000000);
    sub_2303108F8();
    v21 = sub_230310918();
    swift_allocError();
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668) + 48);
    sub_2300819F0(a1, v23);
    v26 = v44;
    v25 = v45;
    (*(v44 + 16))(v23 + v24, v8, v45);
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84158], v21);
    swift_willThrow();
    (*(v26 + 8))(v8, v25);
    return v8 & 1;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v27 = *(a2 + 16);
    if (v15 < *(v27 + 16))
    {
      (*(v51 + 16))(v46, v27 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v15, v9);
      sub_23030E4E8();
      if (v28)
      {
        LOBYTE(v8) = _sSb19ReminderKitInternalE15queryItemStringSbSgSS_tcfC_0();
        if (v8 == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_230315CE0;
          sub_2300819F0(a1, v29 + 32);
          v49 = 0;
          v50 = 0xE000000000000000;
          v8 = v9;
          sub_230310848();

          v49 = 34;
          v50 = 0xE100000000000000;
          v30 = v46;
          v31 = sub_23030E4E8();
          if (v32)
          {
            v33 = v32;
          }

          else
          {
            v31 = 0x296C696E28;
            v33 = 0xE500000000000000;
          }

          MEMORY[0x231911790](v31, v33);

          MEMORY[0x231911790](0xD00000000000001CLL, 0x8000000230341470);
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v34 = sub_2303114D8();
          MEMORY[0x231911790](v34);

          MEMORY[0x231911790](34, 0xE100000000000000);
          v35 = v43;
          sub_2303108F8();
          v36 = sub_230310918();
          swift_allocError();
          v38 = v37;
          v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8) + 48);
          *v38 = MEMORY[0x277D839B0];
          v41 = v44;
          v40 = v45;
          (*(v44 + 16))(&v38[v39], v35, v45);
          (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
          swift_willThrow();
          (*(v41 + 8))(v35, v40);
          (*(v51 + 8))(v30, v8);
          return v8 & 1;
        }
      }

      else
      {
        LOBYTE(v8) = 1;
      }

      swift_beginAccess();
      sub_23011BCA0(v15, v12);
      swift_endAccess();
      v42 = *(v51 + 8);
      v42(v12, v9);
      v42(v46, v9);
      return v8 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23011B438@<X0>(void *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a3;
  v63 = a2;
  v59 = a5;
  v9 = sub_230310908();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v64 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v60 = &v57 - v12;
  v61 = a4;
  v13 = sub_2303104C8();
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v73 = sub_23030E4F8();
  v68 = *(v73 - 8);
  v16 = MEMORY[0x28223BE20](v73);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v57 - v19;
  swift_beginAccess();
  v20 = *(v5 + 16);
  v70 = a1;

  v21 = sub_23011A6D4(sub_23011D2DC, v69, v20);
  v23 = v22;

  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_230315CE0;
    sub_2300819F0(a1, v25 + 32);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_230310848();

    v71 = 0xD000000000000018;
    v72 = 0x8000000230341450;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v26 = sub_2303114D8();
    MEMORY[0x231911790](v26);

    MEMORY[0x231911790](34, 0xE100000000000000);
    v27 = v64;
    sub_2303108F8();
    v28 = sub_230310918();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15668) + 48);
    sub_2300819F0(a1, v30);
    v32 = v65;
    v33 = v30 + v31;
    v34 = v66;
    (*(v65 + 16))(v33, v27, v66);
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84158], v28);
    swift_willThrow();
    return (*(v32 + 8))(v27, v34);
  }

  v64 = a1;
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v35 = *(v5 + 16);
  if (v21 >= *(v35 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v57 = v5;
  v37 = v67;
  v36 = v68;
  v38 = v73;
  (*(v68 + 16))(v67, v35 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v21, v73);
  v63(v37);
  if (v6)
  {
    return (*(v36 + 8))(v37, v38);
  }

  v39 = v61;
  v40 = *(v61 - 8);
  if ((*(v40 + 48))(v15, 1, v61) == 1)
  {
    (*(v58 + 8))(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_230315CE0;
    v42 = v64;
    sub_2300819F0(v64, v41 + 32);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_230310848();

    v71 = 34;
    v72 = 0xE100000000000000;
    v43 = v67;
    v44 = sub_23030E4E8();
    if (v45)
    {
      v46 = v45;
    }

    else
    {
      v44 = 0x296C696E28;
      v46 = 0xE500000000000000;
    }

    MEMORY[0x231911790](v44, v46);

    MEMORY[0x231911790](0xD00000000000001CLL, 0x8000000230341470);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v47 = sub_2303114D8();
    MEMORY[0x231911790](v47);

    MEMORY[0x231911790](34, 0xE100000000000000);
    v48 = v60;
    sub_2303108F8();
    v49 = sub_230310918();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8) + 48);
    *v51 = v39;
    v54 = v65;
    v53 = v66;
    (*(v65 + 16))(&v51[v52], v48, v66);
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v54 + 8))(v48, v53);
    return (*(v68 + 8))(v43, v73);
  }

  else
  {
    (*(v40 + 32))(v59, v15, v39);
    swift_beginAccess();
    sub_23011BCA0(v21, v18);
    swift_endAccess();
    v55 = *(v68 + 8);
    v56 = v73;
    v55(v18, v73);
    return (v55)(v67, v56);
  }
}

uint64_t sub_23011BBE8(uint64_t a1, void *a2)
{
  v3 = sub_23030E4D8();
  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v3 == sub_2303114D8() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_23011BCA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23029CF20(v5);
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
    v9 = sub_23030E4F8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23011BDA8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v7 = sub_230310908();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23030E4E8();
  if (v11)
  {
    a3(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_230315CE0;
    sub_2300819F0(a2, v13 + 32);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_230310848();

    v22 = 0xD000000000000013;
    v23 = 0x8000000230341490;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v14 = sub_2303114D8();
    MEMORY[0x231911790](v14);

    MEMORY[0x231911790](34, 0xE100000000000000);
    sub_2303108F8();
    v15 = sub_230310918();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8) + 48);
    *v17 = v21;
    v19 = v24;
    (*(v24 + 16))(&v17[v18], v9, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
    swift_willThrow();
    return (*(v19 + 8))(v9, v7);
  }
}

uint64_t sub_23011C03C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23011C074()
{
  type metadata accessor for InternalKeyedContainer();

  swift_getWitnessTable();
  return sub_230310D28();
}

uint64_t sub_23011C100()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23011C184()
{
  sub_23011C24C();
  swift_allocError();
  *v0 = 0xD000000000000010;
  v0[1] = 0x80000002303413D0;
  return swift_willThrow();
}

uint64_t sub_23011C1E8()
{
  sub_23011C24C();
  swift_allocError();
  *v0 = 0xD000000000000014;
  v0[1] = 0x80000002303413B0;
  return swift_willThrow();
}

unint64_t sub_23011C24C()
{
  result = qword_27DB15670[0];
  if (!qword_27DB15670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DB15670);
  }

  return result;
}

uint64_t sub_23011C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v8 = sub_23011ADDC(v10, a2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 & 1;
}

uint64_t sub_23011C36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a3;
  v35 = sub_230310908();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_conformsToProtocol2();
  if (v17 && a1)
  {
    v18 = v17;
    v33[3] = a4;
    v33[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v20 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
    MEMORY[0x28223BE20](v20);
    *(&v31 - 6) = a4;
    *(&v31 - 5) = a5;
    *(&v31 - 4) = a6;
    *(&v31 - 3) = a7;
    *(&v31 - 2) = a1;
    *(&v31 - 1) = v18;
    v34[2] = a5;
    v34[3] = v33;
    v34[4] = sub_23011D2AC;
    v34[5] = &v31 - 8;
    sub_23011B438(v33, sub_23011D2BC, v34, a5, a8);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_230315CE0;
    *(v22 + 56) = a4;
    *(v22 + 64) = a6;
    v23 = __swift_allocate_boxed_opaque_existential_0((v22 + 32));
    (*(*(a4 - 8) + 16))(v23, a2, a4);
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000003ALL, 0x8000000230341410);
    sub_230311018();
    MEMORY[0x231911790](0x203A65707974202CLL, 0xE800000000000000);
    v24 = sub_230311508();
    MEMORY[0x231911790](v24);

    MEMORY[0x231911790](125, 0xE100000000000000);
    sub_2303108F8();
    v25 = sub_230310918();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14AE8) + 48);
    *v27 = a1;
    v29 = v32;
    v30 = v35;
    (*(v32 + 16))(&v27[v28], v16, v35);
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    return (*(v29 + 8))(v16, v30);
  }
}

uint64_t sub_23011C70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v22 = a6;
  v11 = *(a4 + 8);
  v12 = sub_2303104C8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;

  v11(a1, a2, a3, a4);
  v16 = *(a3 - 8);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = a3;
    v25 = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
    (*(v16 + 32))(boxed_opaque_existential_0, v15, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15700);
  v18 = v22;
  v19 = swift_dynamicCast();
  return (*(*(a5 - 8) + 56))(v18, v19 ^ 1u, 1, a5);
}

uint64_t sub_23011C914()
{
  sub_23011C24C();
  swift_allocError();
  *v0 = 0x6F4364657473656ELL;
  v0[1] = 0xEF72656E6961746ELL;
  return swift_willThrow();
}

uint64_t sub_23011C980()
{
  sub_23011C24C();
  swift_allocError();
  *v0 = 0xD000000000000016;
  v0[1] = 0x80000002303413F0;
  return swift_willThrow();
}

uint64_t sub_23011C9E4()
{
  sub_23011C24C();
  swift_allocError();
  strcpy(v0, "superDecoder");
  v0[13] = 0;
  *(v0 + 7) = -5120;
  return swift_willThrow();
}

uint64_t sub_23011CA9C(uint64_t a1, uint64_t a2)
{
  result = sub_23011C36C(MEMORY[0x277D837D0], a1, *v2, *(a2 + 16), MEMORY[0x277D837D0], *(a2 + 24), MEMORY[0x277D83808], &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_23011CAF0(uint64_t a1, uint64_t a2)
{
  sub_23011C36C(MEMORY[0x277D839F8], a1, *v2, *(a2 + 16), MEMORY[0x277D839F8], *(a2 + 24), MEMORY[0x277D83A30], &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_23011CB44(uint64_t a1, uint64_t a2)
{
  sub_23011C36C(MEMORY[0x277D83A90], a1, *v2, *(a2 + 16), MEMORY[0x277D83A90], *(a2 + 24), MEMORY[0x277D83AC8], &v5);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_23011CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23011C36C(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5, &v8);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_23011CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23011C36C(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5, &v8);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_23011CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23011C36C(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5, &v8);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_23011CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_23011C36C(a4, a1, *v5, *(a2 + 16), a4, *(a2 + 24), a5, &v8);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_23011CEE4()
{
  result = sub_2303110C8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_23011CF34()
{
  result = sub_2303110D8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_23011CFDC()
{
  result = sub_230311108();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_23011D02C()
{
  result = sub_2303110E8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_23011D16C()
{
  result = sub_230311118();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_23011D1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_23011D2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v6 = sub_23030E4F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v26 = v12;
  v13 = *(v12 + 16);
  v29 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v13();
  swift_beginAccess();
  v14 = *(a2 + 16);
  v31 = *(v14 + 16);
  v27 = v7 + 16;
  v15 = (v7 + 8);

  v17 = 0;
  while (1)
  {
    v19 = v17;
    if (v31 == v17)
    {
      goto LABEL_8;
    }

    if (v17 >= *(v14 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    v20 = sub_23030E4D8();
    v22 = v21;
    if (v20 == sub_2303114D8() && v22 == v23)
    {

      (*v15)(v10, v6);
LABEL_8:

      v24 = v31 != v19;
      (*(v26 + 8))(v29, v30);
      return v24;
    }

    ++v17;
    v18 = sub_230311048();

    result = (*v15)(v10, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t URLQueryItemEncoder.encode<A>(_:)()
{
  v1 = type metadata accessor for InternalEncoder();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v3 = v2 + 16;
  v5[3] = v1;
  v5[4] = sub_23011D718();
  v5[0] = v2;

  sub_23030F748();
  if (v0)
  {

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    swift_beginAccess();
    v3 = *(v2 + 16);
  }

  return v3;
}

unint64_t sub_23011D718()
{
  result = qword_27DB15708;
  if (!qword_27DB15708)
  {
    type metadata accessor for InternalEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15708);
  }

  return result;
}

uint64_t sub_23011D7D8()
{
  _s19ReminderKitInternal22InternalKeyedContainerVMa_0();

  swift_getWitnessTable();
  return sub_230310E28();
}

uint64_t sub_23011D888@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_23011D9B0();
  v4 = swift_allocError();
  *v5 = 0xD000000000000010;
  v5[1] = 0x80000002303413D0;
  a1[3] = &type metadata for InvalidUnkeyedContanier;
  a1[4] = sub_23011DA58();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_23011D91C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_23011D9B0();
  v4 = swift_allocError();
  *v5 = 0xD000000000000014;
  v5[1] = 0x80000002303413B0;
  a1[3] = &type metadata for InvalidSingleValueContanier;
  a1[4] = sub_23011DA04();
  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_23011D9B0()
{
  result = qword_27DB15710;
  if (!qword_27DB15710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15710);
  }

  return result;
}

unint64_t sub_23011DA04()
{
  result = qword_27DB15718;
  if (!qword_27DB15718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15718);
  }

  return result;
}

unint64_t sub_23011DA58()
{
  result = qword_27DB15720;
  if (!qword_27DB15720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15720);
  }

  return result;
}

uint64_t sub_23011DAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23030E4F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v10 = v9;
  sub_2303114D8();
  sub_23030E4C8();

  (*(v5 + 16))(v10, v8, v4);
  swift_beginAccess();
  v11 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_23007F560(0, v11[2] + 1, 1, v11);
    *(a3 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_23007F560(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  (*(v5 + 32))(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v10, v4);
  *(a3 + 16) = v11;
  swift_endAccess();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23011DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a3;
  v53 = sub_230310938();
  v47 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23030E4F8();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v17);
  (*(v21 + 16))(&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15728);
  if (swift_dynamicCast())
  {
    sub_23011F5E8(v48, v50);
    v22 = v51;
    v23 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v24 = v46;
    (*(v23 + 8))(v22, v23);
    if (!v24)
    {
      sub_2303114D8();
      sub_23030E4C8();

      v26 = v43;
      v25 = v44;
      (*(v43 + 16))(v16, v19, v44);
      v27 = v45;
      swift_beginAccess();
      v28 = *(v27 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_23007F560(0, v28[2] + 1, 1, v28);
        *(v27 + 16) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_23007F560(v30 > 1, v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      (*(v26 + 32))(v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v31, v16, v25);
      *(v27 + 16) = v28;
      swift_endAccess();
      (*(v26 + 8))(v19, v25);
    }

    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_23011F580(v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_230315CE0;
    *(v33 + 56) = a4;
    *(v33 + 64) = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a2, a4);
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000003ALL, 0x8000000230341550);
    sub_230311018();
    MEMORY[0x231911790](0x203A65707974202CLL, 0xE800000000000000);
    v35 = sub_230311508();
    MEMORY[0x231911790](v35);

    MEMORY[0x231911790](125, 0xE100000000000000);
    sub_2303108F8();
    v36 = sub_230310948();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB15738) + 48);
    *(v38 + 3) = swift_getMetatypeMetadata();
    *v38 = a5;
    v40 = v47;
    v41 = v53;
    (*(v47 + 16))(&v38[v39], v12, v53);
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D841A8], v36);
    swift_willThrow();
    return (*(v40 + 8))(v12, v41);
  }
}

uint64_t sub_23011E2AC()
{
  sub_23011D9B0();
  swift_allocError();
  *v0 = 0x6F4364657473656ELL;
  v0[1] = 0xEF72656E6961746ELL;
  type metadata accessor for InvalidKeyedContainer();

  swift_getWitnessTable();
  return sub_230310E28();
}

uint64_t sub_23011E37C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_23011D9B0();
  v4 = swift_allocError();
  *v5 = 0xD000000000000010;
  v5[1] = 0x80000002303413D0;
  a2[3] = &type metadata for InvalidUnkeyedContanier;
  a2[4] = sub_23011DA58();
  *a2 = v4;
  a2[1] = a1;
}

uint64_t sub_23011E410@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for InternalEncoder();
  a2[4] = sub_23011D718();
  *a2 = a1;
}

uint64_t sub_23011E460@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for InternalEncoder();
  a2[4] = sub_23011D718();
  *a2 = a1;
}

uint64_t sub_23011E4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_23011DD04(v6, a3, *v4, *(a4 + 16), MEMORY[0x277D837D0], *(a4 + 24));
}

uint64_t sub_23011EBC4()
{
  sub_23011D9B0();
  swift_allocError();
  *v0 = 0x6F4364657473656ELL;
  v0[1] = 0xEF72656E6961746ELL;
  type metadata accessor for InvalidKeyedContainer();

  swift_getWitnessTable();
  return sub_230310E28();
}

uint64_t sub_23011EC94@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_23011D9B0();
  v4 = swift_allocError();
  *v5 = 0xD000000000000016;
  v5[1] = 0x80000002303413F0;
  a2[3] = &type metadata for InvalidUnkeyedContanier;
  a2[4] = sub_23011DA58();
  *a2 = v4;
  a2[1] = a1;
}

uint64_t sub_23011ED28@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for InternalEncoder();
  a2[4] = sub_23011D718();
  *a2 = a1;
}

uint64_t sub_23011F474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
  v6 = v4;
}

uint64_t sub_23011F4B8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  a1[3] = type metadata accessor for InternalEncoder();
  a1[4] = sub_23011D718();
  *a1 = v3;
}

uint64_t sub_23011F580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23011F5E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_23011F600(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = v4;
  a1[1] = v6;

  return a1;
}

uint64_t sub_23011F648(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2;
  v6 = *a1;
  *a1 = v4;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

id *sub_23011F6A8(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t REMHashtagLabelSpecifier.Operation.description.getter()
{
  if (*v0)
  {
    return 6581857;
  }

  else
  {
    return 29295;
  }
}

ReminderKitInternal::REMHashtagLabelSpecifier::Operation_optional __swiftcall REMHashtagLabelSpecifier.Operation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

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

uint64_t sub_23011F7DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6581857;
  }

  else
  {
    v3 = 29295;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6581857;
  }

  else
  {
    v5 = 29295;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_23011F870@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23011F8D0(uint64_t *a1@<X8>)
{
  v2 = 29295;
  if (*v1)
  {
    v2 = 6581857;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23011F8FC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23011F96C()
{
  sub_23030F9C8();
}

uint64_t sub_23011F9C8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23011FAE4()
{
  if (*v0)
  {
    return 6581857;
  }

  else
  {
    return 29295;
  }
}

uint64_t static REMHashtagLabelSpecifier.labels(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a2 = a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 1;
}

BOOL REMHashtagLabelSpecifier.isEmpty.getter()
{
  if (*v0 < 2uLL)
  {
    return 0;
  }

  if (*(*v0 + 16))
  {
    return 0;
  }

  return *(v0[1] + 16) == 0;
}

unint64_t REMHashtagLabelSpecifier.addingLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (*v3 >= 2uLL)
  {
    v12 = *v3;

    sub_2300A8988(&v11, a1, a2);

    v6 = v12;
    v7 &= 1u;
  }

  else
  {
    result = sub_2300542CC(*v3);
  }

  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 16) = v7;
  return result;
}

unint64_t REMHashtagLabelSpecifier.adjusted(toBeCompatibleWith:allowsLenientFallback:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (!*(*a1 + 16))
  {
    if (qword_280C97D60 != -1)
    {
      v18 = a3;
      swift_once();
      a3 = v18;
    }

    v8 = qword_280C97D68;
    v9 = unk_280C97D70;
    *a3 = qword_280C97D68;
    *(a3 + 8) = v9;
    *(a3 + 16) = byte_280C97D78;
    goto LABEL_7;
  }

  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (*v3 < 2uLL)
  {
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
    v8 = v6;
LABEL_7:

    return sub_2300542CC(v8);
  }

  v11 = a1[1];
  if (*(v6 + 16) || *(v5 + 16))
  {
    v12 = a3;
    if (a2)
    {

      v13 = sub_23012AF04(v6, v4, v11);

      v14 = sub_23012AF30(v5, v4, v11);

      v15 = v7 & 1;
      if (*(v13 + 16) || *(v14 + 16))
      {
        v16 = v12;
      }

      else
      {

        v16 = v12;
        v13 = 0;
        v14 = 0;
        v15 = 0;
      }

      *v16 = v13;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
    }

    else
    {

      v17 = sub_230121A14(v4, v6);
      result = sub_230121A14(v4, v5);
      *v12 = v17;
      *(v12 + 8) = result;
      *(v12 + 16) = v7 & 1;
    }
  }

  else
  {
    *a3 = v6;
    *(a3 + 8) = v5;
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t REMHashtagLabelSpecifier.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x2319130E0](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x2319130E0](v4);
  }

  v6 = v1[1];
  MEMORY[0x2319130E0](2);
  sub_2301220BC(a1, v3);
  sub_2301220BC(a1, v6);
  sub_23030F9C8();
}

uint64_t REMHashtagLabelSpecifier.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_230311358();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2319130E0](2);
      sub_2301220BC(v5, v2);
      sub_2301220BC(v5, v1);
      sub_23030F9C8();

      return sub_2303113A8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2319130E0](v3);
  return sub_2303113A8();
}

uint64_t sub_230120010(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x2319130E0](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x2319130E0](v4);
  }

  v6 = v1[1];
  MEMORY[0x2319130E0](2);
  sub_2301220BC(a1, v3);
  sub_2301220BC(a1, v6);
  sub_23030F9C8();
}

uint64_t sub_2301200E4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_230311358();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x2319130E0](2);
      sub_2301220BC(v5, v2);
      sub_2301220BC(v5, v1);
      sub_23030F9C8();

      return sub_2303113A8();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2319130E0](v3);
  return sub_2303113A8();
}

uint64_t sub_2301201B0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301202A0()
{
  sub_23030F9C8();
}

uint64_t sub_23012037C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230120468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230122B9C();
  *a1 = result;
  return result;
}

void sub_230120498(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702060386;
  v5 = 0x800000023033EAA0;
  v6 = 0xD000000000000014;
  v7 = 0xEC00000073676E69;
  v8 = 0x7274536C6562616CLL;
  if (v2 != 3)
  {
    v8 = 0x6F6974617265706FLL;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x800000023033EA80;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_230120544()
{
  v1 = *v0;
  v2 = 1702060386;
  v3 = 0xD000000000000014;
  v4 = 0x7274536C6562616CLL;
  if (v1 != 3)
  {
    v4 = 0x6F6974617265706FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2301205EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230122B9C();
  *a1 = result;
  return result;
}

uint64_t sub_230120614(uint64_t a1)
{
  v2 = sub_2301223A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230120650(uint64_t a1)
{
  v2 = sub_2301223A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230120698()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230120760()
{
  sub_23030F9C8();
}

uint64_t sub_230120814()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2301208D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_230122C3C();
  *a1 = result;
  return result;
}

void sub_230120908(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6C6562614C6C6C61;
  v4 = 0x800000023033EAE0;
  v5 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v5 = 0x736C6562616CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x736C6562614C6F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t REMHashtagLabelSpecifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB157C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301223A0();
  sub_230311428();
  if (!v2)
  {
    v15 = 0;
    sub_2301223F4();
    sub_230310CE8();
    if (v14 > 1u)
    {
      if (v14 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
        v15 = 1;
        sub_2301224F0(&qword_280C9B740);
        sub_230310CE8();
        v13 = v14;
        v15 = 2;
        sub_230310CE8();
        v9 = v13;
        v10 = v14;
        v15 = 4;
        sub_230122448();
        sub_230310CE8();
        v11 = v14;
        (*(v6 + 8))(v8, v5);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
        v15 = 3;
        sub_2301224F0(&qword_280C9B740);
        sub_230310CE8();
        v9 = v14;
        (*(v6 + 8))(v8, v5);
        v11 = 1;
        v10 = MEMORY[0x277D84FA0];
      }
    }

    else if (v14)
    {
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      v11 = 0;
      v9 = 1;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMHashtagLabelSpecifier.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB157E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301223A0();
  sub_230311448();
  if (!v8)
  {
    LOBYTE(v11) = 0;
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    LOBYTE(v11) = 1;
LABEL_5:
    v13 = 0;
    sub_23012249C();
    goto LABEL_6;
  }

  LOBYTE(v11) = 2;
  v13 = 0;
  sub_23012249C();
  sub_230310DF8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = v8;
  v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14938);
  sub_2301224F0(&qword_280C9B408);
  sub_230310DF8();
  v11 = v10;
  v13 = 2;
  sub_230310DF8();
  LOBYTE(v11) = v12 & 1;
  v13 = 4;
  sub_23012255C();
LABEL_6:
  sub_230310DF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t REMHashtagLabelSpecifier.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6C6562614C6C6C61;
  }

  if (v1 == 1)
  {
    return 0x736C6562614C6F6ELL;
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = v1[2];
  if (v5)
  {
    v20 = v4;
    v6 = sub_23009D850(v5, 0);
    v7 = sub_23009DE30(&v22, v6 + 4, v5, v1);

    sub_2300F525C();
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_22;
    }

    v4 = v20;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v22 = v6;
  v1 = 0;
  sub_230121784(&v22);
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  v8 = sub_23030F7C8();
  v10 = v9;

  v11 = *(v4 + 16);
  if (!v11)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v19 = v8;
  v12 = sub_23009D850(v11, 0);
  v13 = sub_23009DE30(&v22, v12 + 4, v11, v4);

  sub_2300F525C();
  if (v13 != v11)
  {
LABEL_22:
    __break(1u);

    __break(1u);
    return result;
  }

  v8 = v19;
LABEL_13:
  v22 = v12;
  sub_230121784(&v22);
  v14 = sub_23030F7C8();
  v16 = v15;

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_230310848();

  v22 = 0xD000000000000011;
  v23 = 0x8000000230341590;
  MEMORY[0x231911790](v8, v10);

  MEMORY[0x231911790](0x756C637865202C5DLL, 0xED00005B203A6564);
  MEMORY[0x231911790](v14, v16);

  MEMORY[0x231911790](0x617265706F202C5DLL, 0xEE00203A6E6F6974);
  if (v21)
  {
    v17 = 6581857;
  }

  else
  {
    v17 = 29295;
  }

  if (v21)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  MEMORY[0x231911790](v17, v18);

  return v22;
}

uint64_t REMHashtagLabelSpecifier.init(stringRepresentation:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23030F938();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030F928();
  v7 = sub_23030F8F8();
  v9 = v8;

  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    v10 = objc_opt_self();
    v11 = sub_23030F8B8();
    [v10 internalErrorWithDebugDescription_];

    return swift_willThrow();
  }

  else
  {
    sub_23030E408();
    swift_allocObject();
    sub_23030E3F8();
    sub_2301225B0();
    sub_23030E3E8();

    result = sub_230122604(v7, v9);
    if (!v1)
    {
      v13 = v15;
      *a1 = v14;
      *(a1 + 16) = v13;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMHashtagLabelSpecifier.stringRepresentation()()
{
  v2 = sub_23030F938();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  sub_23030E458();
  swift_allocObject();
  sub_23030E448();
  v18[1] = v5;
  v18[2] = v6;
  v19 = v7;
  sub_230122618();
  v8 = sub_23030E438();
  if (!v1)
  {
    v10 = v8;
    v11 = v9;
    sub_23030F928();
    v12 = sub_23030F908();
    if (v13)
    {
      v4 = v12;
      v7 = v13;
      sub_23005FE3C(v10, v11);

      goto LABEL_5;
    }

    v16 = objc_opt_self();
    v4 = sub_23030F8B8();
    [v16 internalErrorWithDebugDescription_];

    swift_willThrow();
    sub_23005FE3C(v10, v11);
  }

LABEL_5:
  v14 = v4;
  v15 = v7;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_230121784(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A37B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_230102FAC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2301217F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E8);
  result = sub_2303107E8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_230311358();

    sub_23030F9C8();
    result = sub_2303113A8();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_230121A14(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_230121BB4(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_230122D20(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x231914180](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_230121BB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_230311358();

          sub_23030F9C8();
          v13 = sub_2303113A8();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_230311048() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2301217F0(v25, a2, v24, a4);
}

uint64_t sub_230121D94(uint64_t a1, uint64_t a2)
{
  result = sub_2303113A8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    sub_230311358();
    MEMORY[0x2319130E0](v12);
    result = sub_2303113A8();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x2319130E0](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_230121EC4(uint64_t a1, uint64_t a2)
{
  sub_2303113A8();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_230310698();
    sub_23004CB58();
    sub_23004CD24();
    sub_23030FF88();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_230310718())
    {
LABEL_20:
      sub_2300F525C();
      MEMORY[0x2319130E0](v10);
      return;
    }

    sub_23004CB58();
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_230310438();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_2301220BC(uint64_t a1, uint64_t a2)
{
  sub_2303113A8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x2319130E0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_230311358();

        sub_23030F9C8();
        v11 = sub_2303113A8();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19ReminderKitInternal24REMHashtagLabelSpecifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*a1)
  {
    if (!v6)
    {
      v3 = 0;
      v8 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    if (v6 == 1)
    {
      v3 = 1;
      v8 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v6 < 2)
  {
LABEL_8:
    sub_2300542CC(*a2);
    sub_2300542CC(v3);
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  sub_2300542CC(*a2);
  sub_2300542CC(v3);
  if ((sub_2300A7274(v3, v6) & 1) == 0 || (sub_2300A7274(v2, v5) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    v10 = 6581857;
  }

  else
  {
    v10 = 29295;
  }

  if (v4)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  if (v7)
  {
    v12 = 6581857;
  }

  else
  {
    v12 = 29295;
  }

  if (v7)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

LABEL_10:
  sub_230122CDC(v3);
  sub_230122CDC(v6);
  return v8 & 1;
}

unint64_t sub_2301223A0()
{
  result = qword_27DB157C8;
  if (!qword_27DB157C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157C8);
  }

  return result;
}

unint64_t sub_2301223F4()
{
  result = qword_27DB157D0;
  if (!qword_27DB157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157D0);
  }

  return result;
}

unint64_t sub_230122448()
{
  result = qword_27DB157D8;
  if (!qword_27DB157D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157D8);
  }

  return result;
}

unint64_t sub_23012249C()
{
  result = qword_27DB157E8;
  if (!qword_27DB157E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157E8);
  }

  return result;
}

uint64_t sub_2301224F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14938);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23012255C()
{
  result = qword_27DB157F0;
  if (!qword_27DB157F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157F0);
  }

  return result;
}

unint64_t sub_2301225B0()
{
  result = qword_27DB157F8;
  if (!qword_27DB157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB157F8);
  }

  return result;
}

uint64_t sub_230122604(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23005FE3C(a1, a2);
  }

  return a1;
}

unint64_t sub_230122618()
{
  result = qword_27DB15800;
  if (!qword_27DB15800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15800);
  }

  return result;
}

unint64_t sub_230122670()
{
  result = qword_27DB15808;
  if (!qword_27DB15808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15808);
  }

  return result;
}

unint64_t sub_2301226C8()
{
  result = qword_27DB15810;
  if (!qword_27DB15810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15810);
  }

  return result;
}

uint64_t assignWithCopy for REMHashtagLabelSpecifier(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 16);

      return a1;
    }

LABEL_7:
    v6 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v6;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;

  *(a1 + 8) = *(a2 + 1);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for REMHashtagLabelSpecifier(uint64_t result, uint64_t a2)
{
  if (*result < 0xFFFFFFFFuLL)
  {
    *result = *a2;
    *(result + 16) = *(a2 + 16);
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      v3 = result;

      *(v3 + 8) = *(a2 + 8);
    }

    *(v3 + 16) = *(a2 + 16);
    return v3;
  }

  return result;
}

uint64_t sub_230122890(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2301228A8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for REMSearchableItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for REMSearchableItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230122A40()
{
  result = qword_27DB15818;
  if (!qword_27DB15818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15818);
  }

  return result;
}

unint64_t sub_230122A98()
{
  result = qword_27DB15820;
  if (!qword_27DB15820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15820);
  }

  return result;
}

unint64_t sub_230122AF0()
{
  result = qword_27DB15828;
  if (!qword_27DB15828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15828);
  }

  return result;
}

unint64_t sub_230122B48()
{
  result = qword_27DB15830;
  if (!qword_27DB15830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15830);
  }

  return result;
}

uint64_t sub_230122B9C()
{
  v0 = sub_230310C08();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_230122BE8()
{
  result = qword_27DB15838;
  if (!qword_27DB15838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15838);
  }

  return result;
}

uint64_t sub_230122C3C()
{
  v0 = sub_230310C08();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_230122C88()
{
  result = qword_27DB15840;
  if (!qword_27DB15840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15840);
  }

  return result;
}

unint64_t sub_230122CDC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_230122D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_230121BB4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

Swift::Void __swiftcall REMChangeItemWithUnsavedSectionIDsOrdering.updateOrderingOfSections(withSectionIDsOrdering:)(Swift::OpaquePointer withSectionIDsOrdering)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v2 + 40);

  v5(v6, v4, v3);
  v7 = *(v3 + 16);

  v7(1, v4, v3);
}

id (*sub_230122DD8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 shouldUpdateSectionsOrdering];
  return sub_230122E2C;
}

uint64_t (*sub_230122E44(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_230122EB8(v2);
  return sub_230122EB4;
}

uint64_t (*sub_230122EB8(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = [v1 unsavedSectionIDsOrdering];
  if (v3)
  {
    v4 = v3;
    sub_23004CB58();
    v5 = sub_23030FCD8();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_230122F48;
}

id (*sub_230122F4C(uint64_t a1))(uint64_t)
{
  *a1 = v1;
  *(a1 + 8) = [v1 shouldUpdateSectionsOrdering];
  return sub_2301233A0;
}

uint64_t (*sub_230122FA0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_230123010(v2);
  return sub_2301233A4;
}

uint64_t (*sub_230123010(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = [v1 unsavedSectionIDsOrdering];
  if (v3)
  {
    v4 = v3;
    sub_23004CB58();
    v5 = sub_23030FCD8();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_2301233A8;
}

uint64_t sub_2301230A0()
{
  v1 = [v0 unsavedSectionIDsOrdering];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_23004CB58();
  v3 = sub_23030FCD8();

  return v3;
}

void sub_230123104(uint64_t a1)
{
  if (a1)
  {
    sub_23004CB58();
    v2 = sub_23030FCC8();
  }

  else
  {
    v2 = 0;
  }

  [v1 setUnsavedSectionIDsOrdering_];
}

uint64_t (*sub_230123180(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_230123010(v2);
  return sub_2301233A4;
}

void sub_2301231F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_2301232B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_23004CB58();

      v4 = sub_23030FCC8();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] setUnsavedSectionIDsOrdering_];
  }

  else if (v3)
  {
    sub_23004CB58();
    v4 = sub_23030FCC8();

    [a1[1] setUnsavedSectionIDsOrdering_];
  }

  else
  {
    v4 = 0;
    [a1[1] setUnsavedSectionIDsOrdering_];
  }
}

uint64_t REMBertTokenizer.__allocating_init(url:maxLen:asciiOnly:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = swift_allocObject();
  REMBertTokenizer.init(url:maxLen:asciiOnly:)(a1, a2, a3);
  return v6;
}

uint64_t REMBertTokenizer.init(url:maxLen:asciiOnly:)(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  type metadata accessor for BasicTokenizer();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_2844EA868;
  *(v5 + 16) = v9;
  v10 = sub_23030F838();
  if (v4)
  {
    v73 = v4;
    v11 = sub_23030E9B8();
    (*(*(v11 - 8) + 8))(a1, v11);

    swift_deallocPartialClassInstance();
    return v5;
  }

  v69 = a2;
  v70 = a3;
  v71 = a1;
  v72 = v5;
  v76[0] = 10;
  v76[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v10);
  v67[2] = v76;
  v14 = sub_2300F2908(0x7FFFFFFFFFFFFFFFLL, 1, sub_23011A358, v67, v12, v13, &v68);
  v73 = 0;
  v15 = *(v14 + 16);
  if (v15)
  {
    v76[0] = MEMORY[0x277D84F90];
    sub_23009EC34(0, v15, 0);
    v16 = v76[0];
    v17 = (v14 + 56);
    do
    {
      v19 = *(v17 - 3);
      v18 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = MEMORY[0x2319116F0](v19, v18, v20, v21);
      v24 = v23;

      v76[0] = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_23009EC34((v25 > 1), v26 + 1, 1);
        v16 = v76[0];
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v17 += 4;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v28 = MEMORY[0x277D84F90];
  v29 = sub_23008D0F8(MEMORY[0x277D84F90]);
  v30 = sub_23008D1F4(v28);
  v74 = *(v16 + 16);
  v75 = v16;
  if (!v74)
  {
LABEL_34:

    v5 = v72;
    *(v72 + 48) = v29;
    *(v5 + 56) = v30;
    *(v5 + 32) = v69;
    *(v5 + 40) = v70 & 1;
    type metadata accessor for WordpieceTokenizer();
    v63 = swift_allocObject();
    v64 = sub_23030E9B8();
    v65 = *(*(v64 - 8) + 8);

    v65(v71, v64);
    v63[2] = 0x5D4B4E555BLL;
    v63[3] = 0xE500000000000000;
    v63[4] = 100;
    v63[5] = v29;
    *(v5 + 24) = v63;
    return v5;
  }

  v31 = v16;
  v32 = 0;
  v33 = (v31 + 40);
  while (v32 < *(v75 + 16))
  {
    v36 = *(v33 - 1);
    v35 = *v33;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v29;
    v38 = sub_23005EE00(v36, v35);
    v40 = v29[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_37;
    }

    v44 = v39;
    if (v29[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v62 = v38;
        sub_230089734();
        v38 = v62;
      }
    }

    else
    {
      sub_230084148(v43, isUniquelyReferenced_nonNull_native);
      v38 = sub_23005EE00(v36, v35);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_42;
      }
    }

    v29 = v76[0];
    v77 = v36;
    if (v44)
    {
      *(*(v76[0] + 56) + 8 * v38) = v32;
    }

    else
    {
      *(v76[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v46 = (v29[6] + 16 * v38);
      *v46 = v36;
      v46[1] = v35;
      *(v29[7] + 8 * v38) = v32;
      v47 = v29[2];
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_39;
      }

      v29[2] = v48;
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v30;
    v51 = sub_23008E270(v32);
    v52 = v30[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_38;
    }

    v55 = v50;
    if (v30[3] >= v54)
    {

      if ((v49 & 1) == 0)
      {
        sub_230089EB0();
      }
    }

    else
    {
      sub_2300849BC(v54, v49);
      v56 = sub_23008E270(v32);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_41;
      }

      v51 = v56;
    }

    v58 = v77;
    v30 = v76[0];
    if (v55)
    {
      v34 = (*(v76[0] + 56) + 16 * v51);
      *v34 = v77;
      v34[1] = v35;
    }

    else
    {
      *(v76[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
      *(v30[6] + 8 * v51) = v32;
      v59 = (v30[7] + 16 * v51);
      *v59 = v58;
      v59[1] = v35;
      v60 = v30[2];
      v42 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v42)
      {
        goto LABEL_40;
      }

      v30[2] = v61;
    }

    ++v32;
    v33 += 2;
    if (v74 == v32)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_2303112A8();
  __break(1u);
LABEL_42:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

char *REMBertTokenizer.tokenize(text:addSpecialTokens:)(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_230123B80(a1, a2, *(v3 + 40));
  v22 = *(result + 2);
  if (v22)
  {
    v19 = a3;
    v6 = 0;
    v20 = result + 32;
    v7 = MEMORY[0x277D84F90];
    v21 = result;
    do
    {
      if (v6 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v8 = &v20[16 * v6];
      v9 = *v8;
      v10 = v8[1];

      v11 = sub_230123F48(v9, v10);

      v12 = *(v11 + 16);
      if (v12)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_23007E928(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = (v11 + 40);
        do
        {
          v15 = *(v13 - 1);
          v14 = *v13;
          v16 = *(v7 + 2);
          v17 = *(v7 + 3);

          if (v16 >= v17 >> 1)
          {
            v7 = sub_23007E928((v17 > 1), v16 + 1, 1, v7);
          }

          *(v7 + 2) = v16 + 1;
          v18 = &v7[16 * v16];
          *(v18 + 4) = v15;
          *(v18 + 5) = v14;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      ++v6;

      result = v21;
    }

    while (v6 != v22);

    if ((v19 & 1) == 0)
    {
      return v7;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if ((a3 & 1) == 0)
    {
      return v7;
    }
  }

  sub_23009CD58(v7);
  sub_23009CD58(&unk_2844EA908);
  return &unk_2844EA8D8;
}

char *sub_230123B80(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_23030E4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v35 - v11;
  v37 = a1;
  v38 = a2;
  v13 = sub_23030ED38();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_2300A85F0();
  v14 = sub_2303105C8();
  v16 = v15;
  sub_2300A8644(v12);
  if (a3)
  {
    v37 = v14;
    v38 = v16;
    strcpy(v36, "[^\\p{ASCII}]+");
    HIWORD(v36[1]) = -4864;
    v35[1] = 32;
    v35[2] = 0xE100000000000000;
    v14 = sub_230310568();
    v18 = v17;

    v16 = v18;
  }

  v37 = v14;
  v38 = v16;
  v19 = [objc_opt_self() whitespaceCharacterSet];
  sub_23030E488();

  v20 = sub_230310528();
  (*(v7 + 8))(v9, v6);

  v22 = *(v20 + 16);
  if (!v22)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_22:

    return v25;
  }

  v23 = 0;
  v24 = (v20 + 40);
  v25 = MEMORY[0x277D84F90];
  while (v23 < *(v20 + 16))
  {
    v26 = *v24;
    v37 = *(v24 - 1);
    v38 = v26;

    sub_230124550(&v37, v35[0], v36);

    v27 = v36[0];
    v28 = *(v36[0] + 16);
    v29 = *(v25 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v30 <= *(v25 + 3) >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v31 = v29 + v28;
      }

      else
      {
        v31 = v29;
      }

      result = sub_23007E928(result, v31, 1, v25);
      v25 = result;
      if (*(v27 + 16))
      {
LABEL_17:
        if ((*(v25 + 3) >> 1) - *(v25 + 2) < v28)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v32 = *(v25 + 2);
          v33 = __OFADD__(v32, v28);
          v34 = v32 + v28;
          if (v33)
          {
            goto LABEL_27;
          }

          *(v25 + 2) = v34;
        }

        goto LABEL_6;
      }
    }

    if (v28)
    {
      goto LABEL_25;
    }

LABEL_6:
    ++v23;
    v24 += 2;
    if (v22 == v23)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_230123F48(unint64_t a1, uint64_t a2)
{
  if (sub_23030F9D8() < 101)
  {
    v8 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    if (sub_23030F9D8() < 1)
    {
LABEL_21:
      sub_23009CD58(v8);
      return v27;
    }

    else
    {
      v26 = v2;
      v9 = 0;
      while (1)
      {
        v25 = v8;
        v10 = sub_23030F9D8();
        if (v9 >= v10)
        {
          break;
        }

        v11 = v10;
        v12 = v26[5];
        v13 = -v9;
        while (1)
        {
          v14 = sub_23030FA08();
          result = sub_23030FA08();
          v15 = result >> 14;
          if (result >> 14 < v14 >> 14)
          {
            __break(1u);
            goto LABEL_23;
          }

          v16 = sub_23030FB28();
          v17 = MEMORY[0x2319116F0](v16);
          v19 = v18;

          if (v9 >= 1)
          {
            MEMORY[0x231911790](v17, v19);

            v17 = 8995;
            v19 = 0xE200000000000000;
          }

          if (*(v12 + 16))
          {
            sub_23005EE00(v17, v19);
            if (v20)
            {
              break;
            }
          }

          if (v9 >= --v11)
          {
            goto LABEL_19;
          }
        }

        v8 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23007E928(0, *(v25 + 2) + 1, 1, v25);
        }

        v22 = *(v8 + 2);
        v21 = *(v8 + 3);
        if (v22 >= v21 >> 1)
        {
          v8 = sub_23007E928((v21 > 1), v22 + 1, 1, v8);
        }

        *(v8 + 2) = v22 + 1;
        v23 = &v8[16 * v22];
        *(v23 + 4) = v17;
        *(v23 + 5) = v19;
        v9 = v11;
        if (v11 >= sub_23030F9D8())
        {
          goto LABEL_21;
        }
      }

LABEL_19:

      a2 = v26[2];
      v13 = v26[3];

      result = sub_23007E928(0, 1, 1, MEMORY[0x277D84F90]);
      a1 = *(result + 16);
      v15 = *(result + 24);
      v14 = a1 + 1;
      if (a1 >= v15 >> 1)
      {
LABEL_23:
        result = sub_23007E928((v15 > 1), v14, 1, result);
      }

      *(result + 16) = v14;
      v24 = result + 16 * a1;
      *(v24 + 32) = a2;
      *(v24 + 40) = v13;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_230315CE0;
    v6 = v2[3];
    *(v5 + 32) = v2[2];
    *(v5 + 40) = v6;

    return v5;
  }

  return result;
}

unint64_t sub_230124204(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v1 + 32) < v2)
  {
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000068, 0x8000000230341730);
    v3 = sub_230310E58();
    v5 = v4;
    MEMORY[0x231911790](v3);

    MEMORY[0x231911790](2113056, 0xE300000000000000);
    v6 = sub_230310E58();
    MEMORY[0x231911790](v6);

    MEMORY[0x231911790](0xD000000000000063, 0x80000002303417A0);
    sub_2301249AC();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v5 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_23009EC04(0, v2, 0);
  v10 = *(v1 + 48);
  v5 = v18;
  v11 = (a1 + 40);
  while (*(v10 + 16))
  {
    v12 = *(v11 - 1);
    v13 = *v11;

    result = sub_23005EE00(v12, v13);
    if ((v14 & 1) == 0)
    {
      goto LABEL_12;
    }

    v15 = *(*(v10 + 56) + 8 * result);

    v17 = *(v18 + 16);
    v16 = *(v18 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_23009EC04((v16 > 1), v17 + 1, 1);
    }

    *(v18 + 16) = v17 + 1;
    *(v18 + 8 * v17 + 32) = v15;
    v11 += 2;
    if (!--v2)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t REMBertTokenizer.tokenizeToIds(text:addSpecialTokens:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = REMBertTokenizer.tokenize(text:addSpecialTokens:)(a1, a2, a3);
  v4 = sub_230124204(v3);

  return v4;
}

Swift::Int __swiftcall REMBertTokenizer.tokenToId(token:)(Swift::String token)
{
  v2 = *(v1 + 48);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  token._countAndFlagsBits = sub_23005EE00(token._countAndFlagsBits, token._object);
  if ((token._object & 1) == 0)
  {
LABEL_5:
    __break(1u);
    return token._countAndFlagsBits;
  }

  token._countAndFlagsBits = *(*(v2 + 56) + 8 * token._countAndFlagsBits);
  return token._countAndFlagsBits;
}

uint64_t REMBertTokenizer.deinit()
{

  return v0;
}

uint64_t REMBertTokenizer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_230124550@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 16);
  v44 = *a1;
  v45 = v4;
  v43 = &v44;
  if (sub_230138430(sub_2300F4CA4, v42, v6))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_230315CE0;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    *a3 = v7;
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    v9 = sub_23030F958();
    v11 = HIBYTE(v10) & 0xF;
    v44 = v9;
    v45 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v46 = 0;
    v47 = v11;
    v12 = sub_23030FA38();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = MEMORY[0x277D84F90];
      do
      {
        if (sub_23030F788() & 1) != 0 || (sub_23030F798() & 1) != 0 || v14 == 45250 && v15 == 0xA200000000000000 || (sub_230311048())
        {
          MEMORY[0x231911790](v14, v15);
        }

        else
        {
          v50 = v48;
          v41 = v49;
          if ((v49 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v49) & 0xF;
          }

          else
          {
            v18 = v48 & 0xFFFFFFFFFFFFLL;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (v18)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v16 = sub_23007E928(0, *(v16 + 2) + 1, 1, v16);
            }

            v21 = *(v16 + 2);
            v20 = *(v16 + 3);
            v22 = v20 >> 1;
            v23 = v21 + 1;
            if (v20 >> 1 <= v21)
            {
              v31 = sub_23007E928((v20 > 1), v21 + 1, 1, v16);
              v23 = v21 + 1;
              v16 = v31;
              v20 = *(v31 + 3);
              v22 = v20 >> 1;
            }

            *(v16 + 2) = v23;
            v24 = &v16[16 * v21];
            *(v24 + 4) = v50;
            *(v24 + 5) = v41;
            v25 = v21 + 2;
            if (v22 < (v21 + 2))
            {
              v50 = v21 + 2;
              v32 = v23;
              v33 = sub_23007E928((v20 > 1), v25, 1, v16);
              v23 = v32;
              v25 = v50;
              v16 = v33;
            }

            *(v16 + 2) = v25;
            v26 = &v16[16 * v23];
            *(v26 + 4) = v14;
            *(v26 + 5) = v15;
            v48 = 0;
            v49 = 0xE000000000000000;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v16 = sub_23007E928(0, *(v16 + 2) + 1, 1, v16);
            }

            v28 = *(v16 + 2);
            v27 = *(v16 + 3);
            v29 = v28 + 1;
            if (v28 >= v27 >> 1)
            {
              v50 = v28 + 1;
              v34 = sub_23007E928((v27 > 1), v28 + 1, 1, v16);
              v29 = v50;
              v16 = v34;
            }

            *(v16 + 2) = v29;
            v30 = &v16[16 * v28];
            *(v30 + 4) = v14;
            *(v30 + 5) = v15;
          }
        }

        v14 = sub_23030FA38();
        v15 = v17;
      }

      while (v17);
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    v36 = v48;
    v35 = v49;
    v37 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v37 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23007E928(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v39 = *(v16 + 2);
      v38 = *(v16 + 3);
      if (v39 >= v38 >> 1)
      {
        result = sub_23007E928((v38 > 1), v39 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v39 + 1;
      v40 = &v16[16 * v39];
      *(v40 + 4) = v36;
      *(v40 + 5) = v35;
    }

    else
    {
    }

    *a3 = v16;
  }

  return result;
}

uint64_t sub_2301248E4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2301249AC()
{
  result = qword_27DB15848;
  if (!qword_27DB15848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15848);
  }

  return result;
}

uint64_t sub_230124A20(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_230124A00();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMBertTokenizerError(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  sub_230124A00();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_230124A18();
  return a1;
}

uint64_t assignWithTake for REMBertTokenizerError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_230124A18();
  return a1;
}

char *REMSmartListCustomContextChangeItem.filter.getter()
{
  v1 = [v0 smartListChangeItem];
  v2 = [v1 filterData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23030EA18();
  v5 = v4;

  v6 = [v0 smartListChangeItem];
  v7 = [v6 minimumSupportedVersion];

  v9 = v7 != *MEMORY[0x277D44CC8] && v7 == *MEMORY[0x277D44CB8];
  v11 = v9;
  return sub_23017872C(v3, v5, &v11);
}

void REMSmartListCustomContextChangeItem.filter.setter(void *a1)
{
  v2 = v1;
  v20[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = [v2 smartListChangeItem];
    v5 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
    v7 = v5 != *MEMORY[0x277D44CC8] && v5 == *MEMORY[0x277D44CB8];
    LOBYTE(v20[0]) = v7;
    sub_2301730E0(v20);
    v8 = objc_opt_self();
    v9 = sub_23030F638();

    v20[0] = 0;
    v10 = [v8 dataWithJSONObject:v9 options:0 error:v20];

    v11 = v20[0];
    if (v10)
    {
      v12 = sub_23030EA18();
      v14 = v13;

      v15 = sub_23030E9F8();
      sub_23005FE3C(v12, v14);
    }

    else
    {
      v17 = v11;
      v18 = sub_23030E808();

      swift_willThrow();
      v15 = 0;
    }

    [v4 setFilterData_];

    v16 = [v2 smartListChangeItem];
    [v16 setMinimumSupportedVersion_];
  }

  else
  {
    v19 = [v1 smartListChangeItem];
    [v19 setFilterData_];
  }
}

void (*REMSmartListCustomContextChangeItem.filter.modify(char **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = REMSmartListCustomContextChangeItem.filter.getter();
  return sub_230124EDC;
}

void sub_230124EDC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    REMSmartListCustomContextChangeItem.filter.setter(v2);
  }

  else
  {
    REMSmartListCustomContextChangeItem.filter.setter(*a1);
  }
}

Swift::Void __swiftcall DeferredPromise.cancel()()
{
  if (*(v0 + 24))
  {

    sub_230095060();
  }

  *(v0 + 24) = 0;
}

uint64_t DeferredPromise.reject(_:)(void *a1)
{
  if (*(v1 + 24))
  {

    sub_230094FE8(a1);
  }

  *(v1 + 24) = 0;
}

uint64_t DeferredPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  DeferredPromise.init()();
  return v0;
}

uint64_t DeferredPromise.deinit()
{

  return v0;
}

uint64_t sub_230125098(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_230125678(a1, a2);
  return v4;
}

uint64_t sub_2301250E8(void *a1)
{
  v3 = type metadata accessor for Seal.Resolution();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11 - v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v1 + 24))
  {
    v8 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    *v6 = a1;
    swift_storeEnumTagMultiPayload();
    v9 = a1;
    v8 = sub_23004ECC0(v6);
    (*(v4 + 8))(v6, v3);
  }

  os_unfair_lock_unlock(*(v7 + 16));
  v8();
}

uint64_t sub_230125250()
{
  v1 = type metadata accessor for Seal.Resolution();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v5 = *(v0 + 16);
  os_unfair_lock_lock_with_options();
  if (*(v0 + 24))
  {
    v6 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    swift_storeEnumTagMultiPayload();
    v6 = sub_23004ECC0(v4);
    (*(v2 + 8))(v4, v1);
  }

  os_unfair_lock_unlock(*(v5 + 16));
  v6();
}

uint64_t sub_2301253E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[2];
  os_unfair_lock_lock_with_options();
  v12 = swift_allocObject();
  v12[2] = *(v10 + 80);
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v13 = a1;

  v14 = sub_230047AF0(a5, v12);

  os_unfair_lock_unlock(*(v11 + 16));
  v14();
}

uint64_t sub_2301254B8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15850);
  v1 = __swift_project_value_buffer(v0, qword_27DB15850);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2301255B8(char a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1 & 1);
  return sub_2303113A8();
}

uint64_t sub_230125630()
{
  sub_230311358();
  sub_230125590(v2, *v0);
  return sub_2303113A8();
}

uint64_t sub_230125678(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Seal.Resolution();
  v6 = sub_2303104C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - v8);
  swift_getFunctionTypeMetadata1();
  *(v2 + 32) = sub_23030F608();
  v10 = *(*(v5 - 8) + 56);
  v10((v2 + *(*v2 + 112)), 1, 1, v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  *v9 = a2;
  swift_storeEnumTagMultiPayload();
  v10(v9, 0, 1, v5);
  v11 = *(*v2 + 112);
  swift_beginAccess();
  (*(v7 + 40))(v2 + v11, v9, v6);
  swift_endAccess();
  return v2;
}

uint64_t sub_230125858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for Seal.Resolution();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  (*(v9 + 16))(&v13 - v10, a1, v8);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    return sub_23004F8A0(a2, 0, 1, a3, a4);
  }

  else
  {
    return (*(v9 + 8))(v11, v8);
  }
}

char *sub_23012599C(char *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = &v8[((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8];

    return v3;
  }

  v9 = a2[v5];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v5))) + 2;
    v9 = v12 + 2;
    if (v5 < 4)
    {
      v9 = v13;
    }
  }

LABEL_24:
  if (v9 == 1)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 1;
    return v3;
  }

  if (!v9)
  {
    (*(v4 + 16))(__dst);
    v3[v5] = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

id *sub_230125B38(id *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = *(__dst + v5);
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *__dst;
    }

    else if (v8 == 2)
    {
      v9 = *__dst;
    }

    else if (v8 == 3)
    {
      v9 = *__dst | (*(__dst + 2) << 16);
    }

    else
    {
      v9 = *__dst;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 == 1)
  {
    v11 = a2;
  }

  else
  {
    if (v6)
    {
      goto LABEL_24;
    }

    v11 = a2;
    (*(v4 + 8))(__dst, *(a3 + 16));
  }

  a2 = v11;
LABEL_24:
  v12 = a2[v5];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_38;
  }

  if (v5 <= 3)
  {
    v14 = v5;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v5))) + 2;
  v12 = v15 + 2;
  if (v5 < 4)
  {
    v12 = v16;
  }

LABEL_38:
  if (v12 == 1)
  {
    v17 = *a2;
    v18 = *a2;
    *__dst = v17;
    *(__dst + v5) = 1;
    return __dst;
  }

  if (!v12)
  {
    (*(v4 + 16))(__dst);
    *(__dst + v5) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

void *sub_230125D60(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    *result = *a2;
    *(result + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    *(v9 + v3) = 0;
  }

  return result;
}

unsigned __int8 *sub_230125EA0(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
  }

  else
  {
    if (v5)
    {
      goto LABEL_24;
    }

    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
  }

  a2 = v11;
  result = v10;
LABEL_24:
  v12 = *(a2 + v4);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_36:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_38;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v12 == 1)
  {
    *result = *a2;
    result[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t sub_2301260C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
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

void sub_2301261DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

uint64_t sub_230126394(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_230126434(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_230126528(uint64_t a1, uint64_t a2, char a3, void (*a4)(void, void), uint64_t a5, void *a6)
{
  v69 = sub_23030F458();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_23030F4C8();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23030F438();
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_23030F4F8();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = &v59 - v21;
  v22 = swift_allocObject();
  v64 = a4;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  if ((a3 & 1) == 0)
  {
    v23 = *&a2;
    if (*&a2 > 0.0)
    {

      v24 = a6;
      if (qword_280C9B1B8 != -1)
      {
        swift_once();
      }

      if (qword_280C9B1C0 == a1)
      {
        sub_230047540();
        v43 = sub_230310358();
        sub_23030F4E8();
        v44 = v23 * 1000000.0;
        if (COERCE_UNSIGNED_INT64(v23 * 1000000.0) >> 52 <= 0x7FE)
        {
          if (v44 > -9.22337204e18)
          {
            v64 = v43;
            if (v44 < 9.22337204e18)
            {
              *v16 = v44;
              v45 = v60;
              (*(v60 + 104))(v16, *MEMORY[0x277D85170], v14);
              MEMORY[0x231911290](v20, v16);
              (*(v45 + 8))(v16, v14);
              v46 = v62;
              v47 = *(v61 + 8);
              v47(v20, v62);
              v76 = sub_230096BAC;
              v77 = v22;
              aBlock = MEMORY[0x277D85DD0];
              v73 = 1107296256;
              v74 = sub_2300F5280;
              v75 = &block_descriptor_19;
              v48 = _Block_copy(&aBlock);

              v49 = v66;
              sub_23030F488();
              aBlock = MEMORY[0x277D84F90];
              sub_2300ED808();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
              sub_2300ED860();
              v50 = v65;
              v51 = v69;
              sub_230310648();
              v53 = v63;
              v52 = v64;
              MEMORY[0x231912080](v63, v49, v50, v48);
              _Block_release(v48);

              (*(v67 + 8))(v50, v51);
              (*(v68 + 8))(v49, v70);
              v47(v53, v46);
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (qword_280C9BA30 != -1)
      {
        swift_once();
      }

      if (qword_280C9BA38 == a1)
      {
        if (qword_27DB13B08 == -1)
        {
LABEL_28:
          v54 = sub_23030EF48();
          __swift_project_value_buffer(v54, qword_27DB15850);
          v55 = sub_23030EF38();
          v56 = sub_230310298();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_230044000, v55, v56, "Seal.invoke(on:afterDelay:block:) will not respect positive delay when input queue is zalgo", v57, 2u);
            MEMORY[0x231914180](v57, -1, -1);
          }

          goto LABEL_31;
        }

LABEL_40:
        swift_once();
        goto LABEL_28;
      }

      sub_23030F4E8();
      v25 = *&a2 * 1000000.0;
      if (COERCE_UNSIGNED_INT64(*&a2 * 1000000.0) >> 52 > 0x7FE)
      {
        __break(1u);
      }

      else if (v25 > -9.22337204e18)
      {
        if (v25 < 9.22337204e18)
        {
          *v16 = v25;
          v26 = v60;
          (*(v60 + 104))(v16, *MEMORY[0x277D85170], v14);
          MEMORY[0x231911290](v20, v16);
          (*(v26 + 8))(v16, v14);
          v27 = v62;
          v64 = *(v61 + 8);
          v64(v20, v62);
          v76 = sub_230096BAC;
          v77 = v22;
          aBlock = MEMORY[0x277D85DD0];
          v73 = 1107296256;
          v74 = sub_2300F5280;
          v75 = &block_descriptor_16;
          v28 = _Block_copy(&aBlock);

          v29 = v66;
          sub_23030F488();
          v71 = MEMORY[0x277D84F90];
          sub_2300ED808();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
          sub_2300ED860();
          v30 = v65;
          v31 = v69;
          sub_230310648();
          v32 = v63;
          MEMORY[0x231912080](v63, v29, v30, v28);
          _Block_release(v28);
          (*(v67 + 8))(v30, v31);
          (*(v68 + 8))(v29, v70);
          v64(v32, v27);
LABEL_20:
        }

        goto LABEL_36;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  v33 = a6;
  if (qword_280C9BA30 != -1)
  {
    swift_once();
  }

  if (qword_280C9BA38 != a1)
  {
    if (qword_280C9B1B8 != -1)
    {
      swift_once();
    }

    if (qword_280C9B1C0 != a1)
    {
      v76 = sub_230096BAC;
      v77 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = sub_2300F5280;
      v75 = &block_descriptor_4;
      v34 = _Block_copy(&aBlock);

      v35 = v66;
      sub_23030F488();
      v71 = MEMORY[0x277D84F90];
      sub_2300ED808();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
      sub_2300ED860();
      v36 = v65;
      v37 = v69;
      sub_230310648();
      MEMORY[0x2319120F0](0, v35, v36, v34);
      _Block_release(v34);
      (*(v67 + 8))(v36, v37);
      (*(v68 + 8))(v35, v70);
      goto LABEL_20;
    }

    if (([objc_opt_self() isMainThread] & 1) == 0)
    {
      sub_230047540();
      v38 = sub_230310358();
      v76 = sub_230096BAC;
      v77 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v73 = 1107296256;
      v74 = sub_2300F5280;
      v75 = &block_descriptor_13_0;
      v39 = _Block_copy(&aBlock);

      v40 = v66;
      sub_23030F488();
      aBlock = MEMORY[0x277D84F90];
      sub_2300ED808();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
      sub_2300ED860();
      v41 = v65;
      v42 = v69;
      sub_230310648();
      MEMORY[0x2319120F0](0, v40, v41, v39);
      _Block_release(v39);

      (*(v67 + 8))(v41, v42);
      (*(v68 + 8))(v40, v70);
    }
  }

LABEL_31:
  (v64)(a6);
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

void sub_230127188(uint64_t a1)
{
  v35 = sub_23030EBB8();
  v2 = *(v35 - 8);
  v3 = MEMORY[0x28223BE20](v35);
  v34 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v33 = v28 - v6;
  MEMORY[0x28223BE20](v5);
  v32 = v28 - v7;
  v44 = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230310698();
    sub_23004CB58();
    sub_23012B39C(&qword_280C9B988, sub_23004CB58);
    sub_23030FF88();
    a1 = v39;
    v8 = v40;
    v9 = v41;
    v10 = v42;
    v11 = v43;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v28[1] = v9;
  v30 = (v2 + 8);
  v31 = (v2 + 16);
  v36 = a1;
  v29 = v8;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v10;
    v16 = v11;
    v17 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      sub_230060014();
      return;
    }

    while (1)
    {
      v21 = [v19 uuid];
      v22 = v32;
      sub_23030EBA8();

      v23 = v34;
      v24 = v35;
      (*v31)(v34, v22, v35);
      v25 = v33;
      sub_2300A8E40(v33, v23);
      v26 = *v30;
      (*v30)(v25, v24);
      v27 = v22;
      v8 = v29;
      v26(v27, v24);

      v10 = v17;
      v11 = v18;
      a1 = v36;
      if ((v36 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_230310718();
      if (v20)
      {
        v37 = v20;
        sub_23004CB58();
        swift_dynamicCast();
        v19 = v38;
        v17 = v10;
        v18 = v11;
        if (v38)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v9 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v16 = *(v8 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t Sequence.completeCompactMap<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v56 = a1;
  v57 = a2;
  v8 = sub_2303104C8();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v42 - v10;
  v44 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v42 - v13;
  v60 = a5;
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = &v42 - v17;
  v18 = sub_2303104C8();
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = *(v14 - 8);
  MEMORY[0x28223BE20](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_getAssociatedTypeWitness();
  v46 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - v26;
  v63 = sub_23030F608();
  (*(v22 + 16))(v24, v61, v14);
  sub_23030FB38();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v27;
  v61 = v25;
  v53 = AssociatedConformanceWitness;
  sub_2303104F8();
  v29 = *(v16 + 48);
  v58 = v21;
  v51 = v29;
  v52 = v16 + 48;
  if (v29(v21, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v46 + 8))(v60, v61);
    return v63;
  }

  else
  {
    v31 = *(v16 + 32);
    v30 = v16 + 32;
    v32 = v45;
    v49 = (v44 + 48);
    v50 = v31;
    v47 = (v44 + 16);
    v48 = (v44 + 32);
    v33 = (v44 + 8);
    v34 = (v30 - 24);
    v36 = v58;
    v35 = v59;
    while (1)
    {
      v50(v35, v36, AssociatedTypeWitness);
      v37 = v62;
      v56(v35);
      if (v37)
      {
        (*v34)(v35, AssociatedTypeWitness);
        (*(v46 + 8))(v60, v61);
      }

      if ((*v49)(v32, 1, a4) == 1)
      {
        break;
      }

      v62 = 0;
      v38 = v30;
      v39 = v54;
      (*v48)(v54, v32, a4);
      (*v47)(v55, v39, a4);
      sub_23030FDE8();
      v36 = v58;
      sub_23030FD98();
      v40 = v39;
      v30 = v38;
      v35 = v59;
      (*v33)(v40, a4);
      (*v34)(v35, AssociatedTypeWitness);
      sub_2303104F8();
      if (v51(v36, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_6;
      }
    }

    (*v34)(v35, AssociatedTypeWitness);
    (*(v46 + 8))(v60, v61);

    (*(v42 + 8))(v32, v43);
    return 0;
  }
}

uint64_t sub_230127B9C()
{
  v0 = sub_23030E858();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84FA0];
  sub_230310258();
  sub_23012B39C(&qword_27DB158F8, MEMORY[0x277CC9178]);
  sub_2303104F8();
  while (v10)
  {
    sub_230061914(&v9, v8);
    sub_23004D5CC(v8, v6);
    type metadata accessor for Dataclass(0);
    if ((swift_dynamicCast() & 1) != 0 && v7)
    {
      sub_2300A9538(v6, v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    sub_2303104F8();
  }

  (*(v1 + 8))(v3, v0);
  return v11;
}

uint64_t sub_230127D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v15 - v8;
  if (swift_getDynamicType() != a2)
  {
    v10 = *(*(a2 - 8) + 56);
LABEL_5:
    v12 = a3;
    v13 = 1;
    return v10(v12, v13, 1, a2);
  }

  (*(v7 + 16))(v9, a1, AssociatedTypeWitness);
  v11 = swift_dynamicCast();
  v10 = *(*(a2 - 8) + 56);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = a3;
  v13 = 0;
  return v10(v12, v13, 1, a2);
}

uint64_t Sequence.compactIndexBy<A, B>(key:value:)()
{
  swift_getTupleTypeMetadata2();
  sub_23030FB78();
  sub_23030FDE8();
  swift_getWitnessTable();
  return sub_23030F708();
}

uint64_t sub_230128088@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v3 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v16 - v6;
  v8 = *(v3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  swift_getAtKeyPath();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, v3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v17, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = swift_getTupleTypeMetadata2();
    v15 = v17;
    (*(v9 + 16))(v17, v11, v8);
    swift_getAtKeyPath();
    (*(v9 + 8))(v11, v8);
    return (*(*(v14 - 8) + 56))(v15, 0, 1, v14);
  }
}

uint64_t Sequence.firstMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a4;
  v42 = a1;
  v43 = a2;
  v35 = a6;
  v41 = sub_2303104C8();
  v34 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = &v33 - v9;
  v40 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v33 - v12;
  v14 = sub_2303104C8();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v44 = *(a3 - 1);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getAssociatedTypeWitness();
  v36 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v23 = *(v44 + 2);
  v39 = a3;
  v23(v19, v45, a3);
  sub_23030FB38();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = v22;
  v45 = v20;
  v25 = v46;
  v40 = AssociatedConformanceWitness;
  sub_2303104F8();
  v39 = *(v25 + 48);
  if (v39(v17, 1, AssociatedTypeWitness) == 1)
  {
LABEL_6:
    (*(v36 + 8))(v44, v45);
    return (*(*(v47 - 8) + 56))(v35, 1, 1);
  }

  else
  {
    v26 = *(v25 + 32);
    v46 = v25 + 32;
    v27 = (v25 + 8);
    v37 = v47 - 8;
    v38 = v26;
    v28 = (v34 + 8);
    while (1)
    {
      v38(v13, v17, AssociatedTypeWitness);
      v42(v13);
      if (v6)
      {
        (*v27)(v13, AssociatedTypeWitness);
        return (*(v36 + 8))(v44, v45);
      }

      (*v27)(v13, AssociatedTypeWitness);
      v29 = *(v47 - 8);
      if ((*(v29 + 48))(v10, 1) != 1)
      {
        break;
      }

      (*v28)(v10, v41);
      sub_2303104F8();
      if (v39(v17, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_6;
      }
    }

    (*(v36 + 8))(v44, v45);
    v31 = v35;
    v32 = v47;
    (*(v29 + 32))(v35, v10, v47);
    return (*(v29 + 56))(v31, 0, 1, v32);
  }
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_2303104C8();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230128AE4, 0, 0);
}

uint64_t sub_230128AE4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_23030F608();
  (*(v2 + 16))(v1, v3, v4);
  sub_23030FB38();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_2303104F8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_230128D50;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_230128D50()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_2301290C4;
  }

  else
  {
    v2 = sub_230128E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230128E6C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_23030FDE8();
  sub_23030FD98();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_2303104F8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_230128D50;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_2301290C4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncReduce<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = *(a6 - 8);
  v8[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v8[13] = *(AssociatedTypeWitness - 8);
  v8[14] = swift_task_alloc();
  sub_2303104C8();
  v8[15] = swift_task_alloc();
  v8[16] = *(a5 - 8);
  v8[17] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2301293E4, 0, 0);
}

uint64_t sub_2301293E4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[9];
  v4 = v0[6];
  (*(v0[10] + 16))(v0[2], v0[3], v0[7]);
  (*(v2 + 16))(v1, v3, v4);
  sub_23030FB38();
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  swift_getAssociatedConformanceWitness();
  sub_2303104F8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v15 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_230129654;
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[2];

    return v15(v13, v14, v12);
  }
}

uint64_t sub_230129654()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2301299D4;
  }

  else
  {
    v2 = sub_230129768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230129768()
{
  v1 = v0[11];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v4, v3);
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  swift_getAssociatedConformanceWitness();
  sub_2303104F8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[4];
    (*(v0[13] + 32))(v0[14], v0[15], v0[12]);
    v15 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_230129654;
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[2];

    return v15(v13, v14, v12);
  }
}

uint64_t sub_2301299D4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);
  (*(v4 + 8))(v6, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_230129B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v28 = a2;
  v11 = *(a8 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v15;
  v30 = v16;
  v17(v12);
  type metadata accessor for OrderedSet();
  v26 = OrderedSet.index(of:)();
  v27 = v18;
  v19 = *(v11 + 8);
  v19(v14, a8);
  v29 = a3;
  v30 = a4;
  v25(v28);
  v20 = OrderedSet.index(of:)();
  v22 = v21;
  v19(v14, a8);
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v22 & 1) == 0)
  {
    v23 = v20;
  }

  return (v26 < v23) & ~v27;
}

uint64_t Sequence<>.sum()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[0] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v13 - v9;
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v11);
  swift_getAssociatedConformanceWitness();
  sub_230311268();
  sub_230311028();
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = AssociatedTypeWitness;
  sub_23030FBD8();
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_230129EBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2();
  if (!v3)
  {
    v7 = result;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    if (v7)
    {
      (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    return (*(v9 + 56))(a3, v10, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t Sequence.count(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, char *a4)
{
  v35 = a1;
  v36 = a2;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v30 - v7;
  v9 = sub_2303104C8();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v31 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  (*(v13 + 16))(v15, v38, a3);
  sub_23030FB38();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v18;
  v38 = v16;
  v34 = AssociatedConformanceWitness;
  sub_2303104F8();
  v20 = v32;
  v33 = *(v32 + 48);
  if (v33(v12, 1, AssociatedTypeWitness) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v23 = *(v20 + 32);
    v22 = v20 + 32;
    v32 = v23;
    v24 = (v22 - 24);
    while (1)
    {
      v25 = v22;
      (v32)(v8, v12, AssociatedTypeWitness);
      v26 = v35(v8);
      if (v4)
      {
        break;
      }

      v27 = v26;
      (*v24)(v8, AssociatedTypeWitness);
      if ((v27 & 1) != 0 && __OFADD__(v21++, 1))
      {
        __break(1u);
        break;
      }

      sub_2303104F8();
      v22 = v25;
      if (v33(v12, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_11;
      }
    }

    (*v24)(v8, AssociatedTypeWitness);
  }

LABEL_11:
  (*(v31 + 8))(v37, v38);
  return v21;
}

uint64_t BidirectionalCollection<>.slices(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_230310058();
  if (a1)
  {
    v12[7] = 0;
    v12[8] = result;
    v12[9] = a1;
    MEMORY[0x28223BE20](result);
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v3;
    v12[5] = a1;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB158E8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v10 = sub_23005F108(&qword_280C96CF0, &qword_27DB158E8);
    return sub_230058010(sub_23012A6A0, v12, v8, AssociatedTypeWitness, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_23012A604(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_230310058();
    if (result >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = result;
    }

    if (v5 >= v3)
    {
      return sub_230310128();
    }
  }

  __break(1u);
  return result;
}

int64_t BidirectionalCollection<>.lazySlices(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_230310058();
  if (a1)
  {
    v14[0] = sub_23012AB10(0, result, a1);
    (*(v7 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v11, v9, a2);
    *(v13 + v12) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB158F0);
    swift_getAssociatedTypeWitness();
    sub_23005F108(&unk_280C96D18, &qword_27DB158F0);
    sub_230310BE8();

    return v14[1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_23012A8D8(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_230310058();
    if (result >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = result;
    }

    if (v5 >= v3)
    {
      return sub_230310128();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23012A964(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14920);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t sub_23012AB10(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14348);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14348);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_23012AE0C(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  result = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11[0] = v9;
      v11[1] = v8;

      v10 = a2(v11);
      if (v2)
      {
      }

      if (v10)
      {

        sub_2300A8988(v11, v9, v8);
      }

      v7 += 2;
      --v5;
    }

    while (v5);
    return v12;
  }

  return result;
}

uint64_t sub_23012AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v46 = a2;
  v47 = a4;
  v5 = v4;
  v45 = sub_23030E4A8();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v39 - v10;
  v12 = a1 + 56;
  v11 = *(a1 + 56);
  v56 = MEMORY[0x277D84FA0];
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v40 = (v7 + 8);
  v48 = a1;

  v18 = 0;
  v39 = xmmword_230315CE0;
  v42 = a1 + 56;
  v41 = v16;
  while (v15)
  {
    v51 = v5;
    v19 = v18;
LABEL_11:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (*(v48 + 48) + ((v19 << 10) | (16 * v20)));
    v22 = *v21;
    v23 = v21[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    inited = swift_initStackObject();
    *(inited + 16) = v39;
    *(inited + 32) = v22;
    v50 = inited + 32;
    *(inited + 40) = v23;
    v55 = MEMORY[0x277D84FA0];
    v49 = v23;
    swift_bridgeObjectRetain_n();

    v25 = v43;
    sub_23030EC88();
    v26 = sub_23030ED38();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    v54[0] = v22;
    v54[1] = v23;
    sub_2300A85F0();
    v52 = sub_2303105C8();
    v53 = v27;
    v28 = v44;
    sub_23030E478();
    v29 = sub_230310558();
    v31 = v30;
    (*v40)(v28, v45);
    sub_2300A8644(v25);

    sub_2300A8988(v54, v29, v31);

    v33 = v55;
    MEMORY[0x28223BE20](v32);
    *(&v39 - 2) = inited;
    *(&v39 - 1) = v33;
    v34 = v51;
    v35 = sub_23012AE0C(v46, v47);
    v5 = v34;

    swift_setDeallocating();
    swift_arrayDestroy();
    v36 = sub_2300A4858(v35);
    v38 = v37;

    if (v38)
    {
      sub_2300A8988(v54, v36, v38);
    }

    v18 = v19;
    v12 = v42;
    v16 = v41;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return v56;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v51 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23012B39C(unint64_t *a1, void (*a2)(uint64_t))
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

void _sSd19ReminderKitInternalE7lngammayS2dFZ_0(long double a1)
{
  if (a1 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v2 = vdupq_lane_s64(*&a1, 0);
    v3 = vdivq_f64(xmmword_2844EA2D0, vaddq_f64(v2, xmmword_23031C060));
    v4 = unk_2844EA2F8 / (a1 + 14.0) + 1.0 + *&qword_2844EA2F0 / (a1 + 13.0) + unk_2844EA2E8 / (a1 + 12.0) + *&qword_2844EA2E0 / (a1 + 11.0) + v3.f64[1] + v3.f64[0];
    v5 = vdivq_f64(unk_2844EA2C0, vaddq_f64(v2, xmmword_23031C070));
    v6 = v4 + v5.f64[1] + v5.f64[0];
    v7 = vdivq_f64(xmmword_2844EA2B0, vaddq_f64(v2, xmmword_23031C080));
    v8 = v6 + v7.f64[1] + v7.f64[0];
    v9 = vdivq_f64(unk_2844EA2A0, vaddq_f64(v2, xmmword_23031C090));
    v10 = vdivq_f64(xmmword_2844EA290, vaddq_f64(v2, xmmword_23031C0A0));
    v11 = v8 + v9.f64[1] + v9.f64[0] + v10.f64[1] + v10.f64[0];
    __x = a1;
    log(a1 + 4.7421875 + 0.5);
    log(v11);
    log(__x);
  }
}

uint64_t sub_23012B574(uint64_t result, unint64_t a2)
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
        result = sub_230310958();
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

  v6 = sub_230243758(result, a2, 10);
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

uint64_t sub_23012B874()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15900);
  v1 = __swift_project_value_buffer(v0, qword_27DB15900);
  if (qword_280C97090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMApplicationIconFormat.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

id REMUserActivityPhoneCallContext.caller.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_2300A3224(v2, v3, v4);
}

__n128 REMUserActivityPhoneCallContext.init(isVideoCall:caller:)@<Q0>(char a1@<W0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u8[0];
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  return result;
}

void REMUserActivity.appIconAndName(format:scale:)(char *a1, double a2)
{
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-v10];
  v12 = *a1;
  v13 = [v2 type];
  if (v13 == 3)
  {
    return;
  }

  if (v13 == 2)
  {
    v14 = [v2 userActivity];
    if (!v14)
    {
      return;
    }

    v15 = v14;
    v16 = _sSo19LSApplicationRecordC19ReminderKitInternalE011applicationB015forUserActivityABSgSo06NSUserI0C_tFZ_0(v14);

    if (!v16)
    {
      return;
    }

LABEL_9:
    sub_23012D75C(v16);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      if (qword_27DB13B18 != -1)
      {
        swift_once();
      }

      sub_23012D9E0(v16, v21, v22);

      v26 = v12;
      sub_23012F5F4(v21, v22, &v26, a2);
    }

    else
    {
    }

    return;
  }

  if (v13 == 1)
  {
    v17 = [v2 universalLink];
    if (!v17)
    {
      return;
    }

    v18 = v17;
    sub_23030E938();

    (*(v6 + 32))(v11, v9, v5);
    v16 = sub_2301655E8(v11);
    (*(v6 + 8))(v11, v5);
    if (!v16)
    {
      return;
    }

    goto LABEL_9;
  }

  if (qword_27DB13B10 != -1)
  {
    swift_once();
  }

  v23 = sub_23030EF48();
  __swift_project_value_buffer(v23, qword_27DB15900);
  v24 = MEMORY[0x277D84F90];
  sub_23008C5BC(MEMORY[0x277D84F90]);
  sub_23008C5BC(v24);
  sub_230166680("unknown user activity type", 26, 2);
  __break(1u);
}

id static REMUserActivity.blankAppIcon(format:scale:)(char *a1, double a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() genericApplicationIcon];
  if (qword_27DB13B10 != -1)
  {
    swift_once();
  }

  v5 = sub_23030EF48();
  __swift_project_value_buffer(v5, qword_27DB15900);
  v6 = v4;
  v7 = sub_23030EF38();
  v8 = sub_2303102A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    v13 = sub_23030F948();
    v15 = sub_23004E30C(v13, v14, &v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a2;
    _os_log_impl(&dword_230044000, v7, v8, "resolved icon %@ for generic application (format: %s, scale: %f)", v9, 0x20u);
    sub_230061918(v10, &qword_27DB15000);
    MEMORY[0x231914180](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231914180](v11, -1, -1);
    MEMORY[0x231914180](v9, -1, -1);
  }

  v19 = v3;
  v16 = sub_23012F4A4(v6, a2);

  return v16;
}

Swift::Void __swiftcall REMUserActivity.launch()()
{
  v1 = sub_23030E9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = [v0 type];
  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v12 = [v0 userActivity];
      if (v12)
      {
        v13 = v12;
        sub_23012C258();
        v24 = v14;
        sub_23012C47C(v14);

        v15 = v24;
      }
    }

    else if (v11 == 1)
    {
      v16 = [v0 universalLink];
      if (v16)
      {
        v17 = v16;
        sub_23030E938();

        (*(v2 + 56))(v8, 0, 1, v1);
      }

      else
      {
        (*(v2 + 56))(v8, 1, 1, v1);
      }

      sub_23012F860(v8, v10);
      if ((*(v2 + 48))(v10, 1, v1) == 1)
      {
        sub_230061918(v10, &unk_27DB17070);
      }

      else
      {
        (*(v2 + 16))(v4, v10, v1);
        v18 = [objc_opt_self() defaultWorkspace];
        if (v18)
        {
          v19 = v18;
          sub_23012DD88(v4);
        }

        v20 = *(v2 + 8);
        v20(v4, v1);
        v20(v10, v1);
      }
    }

    else
    {
      if (qword_27DB13B10 != -1)
      {
        swift_once();
      }

      v21 = sub_23030EF48();
      __swift_project_value_buffer(v21, qword_27DB15900);
      v22 = MEMORY[0x277D84F90];
      sub_23008C5BC(MEMORY[0x277D84F90]);
      sub_23008C5BC(v22);
      sub_230166680("unknown user activity type", 26, 2);
      __break(1u);
    }
  }
}

void sub_23012C258()
{
  v1 = v0;
  v2 = sub_23030E9B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = [v1 type];
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      v10 = [v1 userActivity];
      if (v10)
      {
        v11 = v10;
        _sSo19LSApplicationRecordC19ReminderKitInternalE011applicationB015forUserActivityABSgSo06NSUserI0C_tFZ_0(v10);
      }
    }

    else if (v9 == 1)
    {
      v12 = [v1 universalLink];
      if (v12)
      {
        v13 = v12;
        sub_23030E938();

        (*(v3 + 32))(v8, v6, v2);
        sub_2301655E8(v8);
        (*(v3 + 8))(v8, v2);
      }
    }

    else
    {
      if (qword_27DB13B10 != -1)
      {
        swift_once();
      }

      v14 = sub_23030EF48();
      __swift_project_value_buffer(v14, qword_27DB15900);
      v15 = MEMORY[0x277D84F90];
      sub_23008C5BC(MEMORY[0x277D84F90]);
      sub_23008C5BC(v15);
      sub_230166680("unknown user activity type", 26, 2);
      __break(1u);
    }
  }
}