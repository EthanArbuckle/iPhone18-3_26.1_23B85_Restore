uint64_t sub_1BF159630()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1BF159668@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    a3[1] = v5 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0765AC();
    v9 = v21;

    LODWORD(v5) = (v9 >> 8) & 1;
LABEL_63:
    if (v5)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      LOBYTE(v7) = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOBYTE(v9) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v9) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v9 = (10 * v9) + v15;
              if ((v9 >> 8))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LOBYTE(v9) = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v9 = (10 * v9) + v18;
            if ((v9 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v9) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOBYTE(v9) = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v9 = (10 * v9) - v11;
            if ((v9 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v23 = v5;
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

  v22[0] = result;
  v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOBYTE(v9) = 0;
        v19 = v22;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) + v20;
          if ((v9 >> 8))
          {
            break;
          }

          ++v19;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOBYTE(v9) = 0;
        v12 = v22 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) - v13;
          if ((v9 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOBYTE(v9) = 0;
      v16 = v22 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (((10 * v9) & 0xF00) != 0)
        {
          break;
        }

        v9 = (10 * v9) + v17;
        if ((v9 >> 8))
        {
          break;
        }

        ++v16;
        if (!--v5)
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

uint64_t sub_1BF1599BC()
{
  OUTLINED_FUNCTION_0_82();
  result = OUTLINED_FUNCTION_3_49(v1, v2, v3, &v5);
  if (!v0)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1BF1599F4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 2) = v5 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076A48();
    v9 = v21;

    LODWORD(v5) = HIWORD(v9) & 1;
LABEL_63:
    if (v5)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      LOWORD(v7) = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LOWORD(v9) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v9) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v9 = (10 * v9) + v15;
              if ((v9 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LOWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v9) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v9 = (10 * v9) + v18;
            if ((v9 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v9) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LOWORD(v9) = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v9) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v9 = (10 * v9) - v11;
            if ((v9 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v23 = v5;
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

  v22[0] = result;
  v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LOWORD(v9) = 0;
        v19 = v22;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF0000) != 0)
          {
            break;
          }

          v9 = (10 * v9) + v20;
          if ((v9 & 0x10000) != 0)
          {
            break;
          }

          ++v19;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LOWORD(v9) = 0;
        v12 = v22 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF0000) != 0)
          {
            break;
          }

          v9 = (10 * v9) - v13;
          if ((v9 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LOWORD(v9) = 0;
      v16 = v22 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        if (((10 * v9) & 0xF0000) != 0)
        {
          break;
        }

        v9 = (10 * v9) + v17;
        if ((v9 & 0x10000) != 0)
        {
          break;
        }

        ++v16;
        if (!--v5)
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

uint64_t sub_1BF159D48@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    LOBYTE(v5) = 1;
LABEL_66:
    *a3 = v7;
    *(a3 + 4) = v5 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF076EF8();
    v9 = v27;

    v5 = HIDWORD(v9) & 1;
LABEL_63:
    if (v5)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          LODWORD(v9) = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v18 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v9) = v18 + v17;
              if (__CFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v23 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v23 + v22;
            if (__CFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v9) = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v12 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v9) = v12 - v11;
            if (v12 < v11)
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v29 = v5;
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

  v28[0] = result;
  v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v24 = v28;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v9) = v26 + v25;
          if (__CFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v9) = 0;
        v13 = v28 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v15 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v9) = v15 - v14;
          if (v15 < v14)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v9) = 0;
      v19 = v28 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v21 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v9) = v21 + v20;
        if (__CFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
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

void sub_1BF15A024(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v23 = 0;
    v22 = 1;
LABEL_78:
    *a4 = v23;
    *(a4 + 8) = v22 & 1;
    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v12 = a3(a1, a2, 10);
    v22 = v25;

LABEL_75:
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v12;
    }

    goto LABEL_78;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          v12 = 0;
          if (v10)
          {
            OUTLINED_FUNCTION_8_34();
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v14 && v13)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_15_23();
              if (!v14)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_11_25();
              if (v13)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_44();
              if (v14)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      goto LABEL_84;
    }

    if (v11 != 45)
    {
      if (v7)
      {
        v12 = 0;
        if (v10)
        {
          while (1)
          {
            v18 = OUTLINED_FUNCTION_9_30(v10);
            if (!v14 && v13)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v12, v20))
            {
              goto LABEL_73;
            }

            v13 = __CFADD__(10 * v12, v21);
            v12 = 10 * v12 + v21;
            if (v13)
            {
              goto LABEL_73;
            }

            v10 = v18 + 1;
            if (v19 == 1)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_73:
      v12 = 0;
      v16 = 1;
      goto LABEL_74;
    }

    if (v7 >= 1)
    {
      if (v7 != 1)
      {
        v12 = 0;
        if (v10)
        {
          OUTLINED_FUNCTION_8_34();
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v14 && v13)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_15_23();
            if (!v14)
            {
              goto LABEL_73;
            }

            v13 = 10 * v12 >= v15;
            v12 = 10 * v12 - v15;
            if (!v13)
            {
              goto LABEL_73;
            }

            OUTLINED_FUNCTION_44();
            if (v14)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_63:
        v16 = 0;
LABEL_74:
        v22 = v16;
        goto LABEL_75;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v6)
      {
        v12 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_15_23();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_11_25();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v6)
    {
      if (v6 != 1)
      {
        v12 = 0;
        OUTLINED_FUNCTION_4_42();
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_15_23();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v12 >= v17;
          v12 = 10 * v12 - v17;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_83;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v12 = 0;
      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        OUTLINED_FUNCTION_15();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_15_23();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_11_25();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_85:
  __break(1u);
}

unint64_t sub_1BF15A2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *(v3 + 32);
  v11 = v3[5];
  v30 = *v3;
  result = sub_1BF018248(a2, a3, &v31);
  if (!v4)
  {
    v27 = v10;
    v28 = a2;
    v29 = v11;
    v13 = v31;
    v14 = v31 >> 61;
    if (v31 >> 61)
    {
      v20 = v31;
      sub_1BF05350C();
      swift_allocError();
      v22 = v21;
      *v21 = v29;
      v23 = *(a3 + 16);
      v21[4] = v23;
      v21[5] = *(a3 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21 + 1);
      (*(*(v23 - 8) + 16))(boxed_opaque_existential_0, v28, v23);
      v22[6] = 0x7463656A626FLL;
      v22[7] = 0xE600000000000000;
      v25 = 0xE500000000000000;
      v26 = 0x7961727261;
      switch(v14)
      {
        case 2:
          v25 = 0xE600000000000000;
          v26 = 0x676E69727473;
          break;
        case 3:
          v25 = 0xE600000000000000;
          v26 = 0x7265626D756ELL;
          break;
        case 4:
          if (v20 == 0x8000000000000000)
          {
            v25 = 0xE400000000000000;
            v26 = 1702195828;
          }

          else if (v20 == 0x8000000000000008)
          {
            v25 = 0xE500000000000000;
            v26 = 0x65736C6166;
          }

          else
          {
            v25 = 0xE400000000000000;
            v26 = 1819047278;
          }

          break;
        default:
          break;
      }

      v22[8] = v26;
      v22[9] = v25;
      *(v22 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v19 = v20;
    }

    else
    {
      v15 = *(v31 + 16);
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v17 = *(a3 + 16);
      *(inited + 56) = v17;
      *(inited + 64) = *(a3 + 24);
      v18 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(*(v17 - 8) + 16))(v18, a2, v17);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF02967C(inited);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01730C(v8, v9, v27);
      type metadata accessor for JSONKeyedDecodingContainer();
      swift_getWitnessTable();
      sub_1BF17B64C();
      v19 = v13;
    }

    return sub_1BF017214(v19);
  }

  return result;
}

id sub_1BF15A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = *(v3 + 32);
  v12 = v3[5];
  v28 = *v3;
  result = sub_1BF018248(a1, a2, &v29);
  if (!v4)
  {
    v27 = v12;
    if (v29 >> 61 == 1)
    {
      v25 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = v29;
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v15 = *(a2 + 16);
      *(inited + 56) = v15;
      *(inited + 64) = *(a2 + 24);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, a1, v15);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF02967C(inited);
      sub_1BF017214(v26);
      a3[3] = &type metadata for JSONUnkeyedDecodingContainer;
      a3[4] = sub_1BF029920();
      v17 = swift_allocObject();
      *a3 = v17;
      *(v17 + 56) = v27;
      *(v17 + 64) = 0;
      *(v17 + 16) = v25;
      *(v17 + 24) = v8;
      *(v17 + 32) = v9;
      *(v17 + 40) = v10;
      *(v17 + 48) = v11;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return sub_1BF01730C(v9, v10, v11);
    }

    else
    {
      v18 = v29;
      sub_1BF05350C();
      swift_allocError();
      v20 = v19;
      *v19 = v12;
      v21 = *(a2 + 16);
      v19[4] = v21;
      v19[5] = *(a2 + 24);
      v22 = __swift_allocate_boxed_opaque_existential_0(v19 + 1);
      (*(*(v21 - 8) + 16))(v22, a1, v21);
      v23 = 0x7961727261;
      v24 = 0xE500000000000000;
      v20[6] = 0x7961727261;
      v20[7] = 0xE500000000000000;
      switch(v12)
      {
        case 1:
          break;
        case 2:
          v24 = 0xE600000000000000;
          v23 = 0x676E69727473;
          break;
        case 3:
          v24 = 0xE600000000000000;
          v23 = 0x7265626D756ELL;
          break;
        case 4:
          if (v18 == 0x8000000000000000)
          {
            v24 = 0xE400000000000000;
            v23 = 1702195828;
          }

          else if (v18 == 0x8000000000000008)
          {
            v24 = 0xE500000000000000;
            v23 = 0x65736C6166;
          }

          else
          {
            v24 = 0xE400000000000000;
            v23 = 1819047278;
          }

          break;
        default:
          v24 = 0xE600000000000000;
          v23 = 0x7463656A626FLL;
          break;
      }

      v20[8] = v23;
      v20[9] = v24;
      *(v20 + 80) = 11;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return sub_1BF017214(v18);
    }
  }

  return result;
}

id sub_1BF15A950@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v15 = v1[3];
  v6 = *(v1 + 32);
  v7 = v1[5];
  if (qword_1EBDCAFE8 != -1)
  {
    swift_once();
  }

  v8 = 0x8000000000000010;
  __swift_project_boxed_opaque_existential_1(qword_1EBDCC780, qword_1EBDCC798);
  sub_1BF17BCBC();
  if (*(v3 + 16))
  {
    v9 = sub_1BF014CA8();
    v11 = v10;

    if (v11)
    {
      v8 = *(*(v3 + 56) + 8 * v9);
      sub_1BF01716C(v8);
    }
  }

  else
  {
  }

  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  sub_1BEFE6A78(qword_1EBDCC780, inited + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF02967C(inited);
  a1[3] = &type metadata for _JSONDecoder;
  a1[4] = sub_1BF0172B8();
  v13 = swift_allocObject();
  *a1 = v13;
  *(v13 + 48) = v7;
  *(v13 + 56) = v4;
  *(v13 + 16) = v8;
  *(v13 + 24) = v16;
  *(v13 + 32) = v15;
  *(v13 + 40) = v6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF01730C(v16, v15, v6);
}

id sub_1BF15AB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v19 = v3[1];
  v7 = v3[2];
  v21 = v3[3];
  v20 = *(v3 + 32);
  v8 = v3[5];
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_1BF17BCBC();
  if (*(v6 + 16))
  {
    v11 = sub_1BF014CA8();
    v13 = v12;

    v14 = 0x8000000000000010;
    if (v13)
    {
      v14 = *(*(v6 + 56) + 8 * v11);
      sub_1BF01716C(v14);
    }
  }

  else
  {

    v14 = 0x8000000000000010;
  }

  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  *(inited + 56) = v10;
  *(inited + 64) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, a1, v10);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF02967C(inited);
  a3[3] = &type metadata for _JSONDecoder;
  a3[4] = sub_1BF0172B8();
  v17 = swift_allocObject();
  *a3 = v17;
  *(v17 + 48) = v8;
  *(v17 + 56) = v19;
  *(v17 + 16) = v14;
  *(v17 + 24) = v22;
  *(v17 + 32) = v21;
  *(v17 + 40) = v20;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF01730C(v22, v21, v20);
}

uint64_t sub_1BF15AF7C()
{
  result = sub_1BF17B9FC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15AFCC()
{
  result = sub_1BF17B9DC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15B0CC()
{
  result = sub_1BF17BA0C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15B11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

BOOL sub_1BF15B1B8()
{
  sub_1BF02A3D8(&v5);
  if (!v0)
  {
    v2 = v5;
    v3 = 0x8000000000000010;
    v1 = v5 == 0x8000000000000010;
    if (v5 != 0x8000000000000010)
    {
      sub_1BF01716C(v5);
      v3 = v2;
    }

    sub_1BF017214(v3);
    sub_1BF017214(0x8000000000000010);
    sub_1BF017214(v3);
  }

  return v1;
}

void sub_1BF15B248()
{
  sub_1BF02A3D8(&v9);
  if (!v1)
  {
    v2 = v9;
    v3 = v9 >> 61;
    if (v9 >> 61 != 4 || v9 != 0x8000000000000000 && v9 != 0x8000000000000008)
    {
      v4 = *(v0 + 48);
      v5 = v4 - 1;
      if (__OFSUB__(v4, 1))
      {
        __break(1u);
      }

      else
      {
        *(v0 + 48) = v5;
        sub_1BF05350C();
        swift_allocError();
        v7 = 0xE600000000000000;
        v8 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v7 = 0xE500000000000000;
            v8 = 0x7961727261;
            break;
          case 2:
            v8 = 0x676E69727473;
            break;
          case 3:
            v8 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v7 = 0xE400000000000000;
              v8 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v7 = 0xE500000000000000;
              v8 = 0x65736C6166;
            }

            else
            {
              v7 = 0xE400000000000000;
              v8 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v6 = *(v0 + 40);
        *(v6 + 8) = v5;
        *(v6 + 16) = 0x6E61656C6F6F62;
        *(v6 + 24) = 0xE700000000000000;
        *(v6 + 32) = v8;
        *(v6 + 40) = v7;
        *(v6 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF017214(v2);
      }
    }
  }
}

void sub_1BF15B3F4()
{
  sub_1BF02A3D8(&v11);
  if (!v1)
  {
    v2 = v11;
    v3 = v11 >> 61;
    if (v11 >> 61 == 2)
    {
      v4 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF017214(v2);
    }

    else
    {
      v6 = *(v0 + 48);
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
      }

      else
      {
        *(v0 + 48) = v7;
        sub_1BF05350C();
        swift_allocError();
        v9 = 0xE600000000000000;
        v10 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v9 = 0xE500000000000000;
            v10 = 0x7961727261;
            break;
          case 2:
            v10 = 0x676E69727473;
            break;
          case 3:
            v10 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v9 = 0xE400000000000000;
              v10 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v9 = 0xE500000000000000;
              v10 = 0x65736C6166;
            }

            else
            {
              v9 = 0xE400000000000000;
              v10 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v8 = *(v0 + 40);
        *(v8 + 8) = v7;
        *(v8 + 16) = 0x676E69727473;
        *(v8 + 24) = 0xE600000000000000;
        *(v8 + 32) = v10;
        *(v8 + 40) = v9;
        *(v8 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF017214(v2);
      }
    }
  }
}

void sub_1BF15B598()
{
  sub_1BF02A3D8(&v13);
  if (!v1)
  {
    v2 = v13;
    v3 = v13 >> 61;
    if (v13 >> 61 == 3)
    {
      v5 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_bridgeObjectRetain_n();
      sub_1BF052280(v5, v4);
      if ((v6 & 1) == 0)
      {
        sub_1BF017214(v2);

        return;
      }

      sub_1BF05350C();
      swift_allocError();
      *v7 = *(v0 + 40);
      *(v7 + 8) = v5;
      *(v7 + 16) = v4;
      *(v7 + 80) = 13;
      swift_willThrow();
    }

    else
    {
      v8 = *(v0 + 48);
      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        __break(1u);
        return;
      }

      *(v0 + 48) = v9;
      sub_1BF05350C();
      swift_allocError();
      v11 = 0xE600000000000000;
      v12 = 0x7463656A626FLL;
      switch(v3)
      {
        case 1:
          v11 = 0xE500000000000000;
          v12 = 0x7961727261;
          break;
        case 2:
          v12 = 0x676E69727473;
          break;
        case 3:
          v12 = 0x7265626D756ELL;
          break;
        case 4:
          if (v2 == 0x8000000000000000)
          {
            v11 = 0xE400000000000000;
            v12 = 1702195828;
          }

          else if (v2 == 0x8000000000000008)
          {
            v11 = 0xE500000000000000;
            v12 = 0x65736C6166;
          }

          else
          {
            v11 = 0xE400000000000000;
            v12 = 1819047278;
          }

          break;
        default:
          break;
      }

      *v10 = *(v0 + 40);
      *(v10 + 8) = v9;
      *(v10 + 16) = 0x7265626D756ELL;
      *(v10 + 24) = 0xE600000000000000;
      *(v10 + 32) = v12;
      *(v10 + 40) = v11;
      *(v10 + 80) = 12;
      swift_willThrow();
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v2);
  }
}

void sub_1BF15B79C()
{
  sub_1BF02A3D8(&v12);
  if (!v1)
  {
    v2 = v12;
    v3 = v12 >> 61;
    if (v12 >> 61 == 3)
    {
      v5 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_bridgeObjectRetain_n();
      if ((sub_1BF030B4C(v5, v4) & 0x100000000) == 0)
      {
        sub_1BF017214(v2);

        return;
      }

      sub_1BF05350C();
      swift_allocError();
      *v11 = *(v0 + 40);
      *(v11 + 8) = v5;
      *(v11 + 16) = v4;
      *(v11 + 80) = 13;
      swift_willThrow();
    }

    else
    {
      v6 = *(v0 + 48);
      v7 = v6 - 1;
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
        return;
      }

      *(v0 + 48) = v7;
      sub_1BF05350C();
      swift_allocError();
      v9 = 0xE600000000000000;
      v10 = 0x7463656A626FLL;
      switch(v3)
      {
        case 1:
          v9 = 0xE500000000000000;
          v10 = 0x7961727261;
          break;
        case 2:
          v10 = 0x676E69727473;
          break;
        case 3:
          v10 = 0x7265626D756ELL;
          break;
        case 4:
          if (v2 == 0x8000000000000000)
          {
            v9 = 0xE400000000000000;
            v10 = 1702195828;
          }

          else if (v2 == 0x8000000000000008)
          {
            v9 = 0xE500000000000000;
            v10 = 0x65736C6166;
          }

          else
          {
            v9 = 0xE400000000000000;
            v10 = 1819047278;
          }

          break;
        default:
          break;
      }

      *v8 = *(v0 + 40);
      *(v8 + 8) = v7;
      *(v8 + 16) = 0x7265626D756ELL;
      *(v8 + 24) = 0xE600000000000000;
      *(v8 + 32) = v10;
      *(v8 + 40) = v9;
      *(v8 + 80) = 12;
      swift_willThrow();
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v2);
  }
}

void sub_1BF15B9A0()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v27 = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v34 = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              v19 = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 - v21;
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v23 = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v31 = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0750D8();
    v42 = v41;

    if (v42)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15BE58()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                LOBYTE(v27) = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = (10 * v27);
                  if (v30 != 10 * v27)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if ((v30 + v29) != v27)
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              LOBYTE(v34) = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = (10 * v34);
                if (v37 != 10 * v34)
                {
                  break;
                }

                v34 = v37 + v36;
                if ((v37 + v36) != v34)
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              LOBYTE(v19) = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = (10 * v19);
                if (v22 != 10 * v19)
                {
                  break;
                }

                v19 = v22 - v21;
                if ((v22 - v21) != v19)
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                LOBYTE(v23) = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = (10 * v23);
                    if (v26 != 10 * v23)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if ((v26 + v25) != v23)
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              LOBYTE(v31) = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = (10 * v31);
                  if (v33 != 10 * v31)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if ((v33 + v32) != v31)
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              LOBYTE(v10) = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = (10 * v10);
                  if (v13 != 10 * v10)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if ((v13 - v12) != v10)
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0757C0();
    v42 = v41;

    if ((v42 & 0x100) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15C334()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                LOWORD(v27) = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = (10 * v27);
                  if (v30 != 10 * v27)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if ((v30 + v29) != v27)
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              LOWORD(v34) = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = (10 * v34);
                if (v37 != 10 * v34)
                {
                  break;
                }

                v34 = v37 + v36;
                if ((v37 + v36) != v34)
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              LOWORD(v19) = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = (10 * v19);
                if (v22 != 10 * v19)
                {
                  break;
                }

                v19 = v22 - v21;
                if ((v22 - v21) != v19)
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                LOWORD(v23) = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = (10 * v23);
                    if (v26 != 10 * v23)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if ((v26 + v25) != v23)
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              LOWORD(v31) = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = (10 * v31);
                  if (v33 != 10 * v31)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if ((v33 + v32) != v31)
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              LOWORD(v10) = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = (10 * v10);
                  if (v13 != 10 * v10)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if ((v13 - v12) != v10)
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF075C98();
    v42 = v41;

    if ((v42 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15C810()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v27 = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if (v30 != v30)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v34 = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if (v37 != v37)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              v19 = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if (v22 != v22)
                {
                  break;
                }

                v19 = v22 - v21;
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v23 = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = 10 * v23;
                    if (v26 != v26)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v31 = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = 10 * v31;
                  if (v33 != v33)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = 10 * v10;
                  if (v13 != v13)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076170();
    v42 = v41;

    if ((v42 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15CC8C()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v27 = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v34 = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              v19 = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 - v21;
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v23 = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v31 = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = 10 * v10;
                  if ((v10 * 10) >> 64 != (10 * v10) >> 63)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if (__OFSUB__(v13, v12))
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0750D8();
    v42 = v41;

    if (v42)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15D144()
{
  sub_1BF02A3D8(v39);
  if (!v1)
  {
    v2 = v39[0];
    v3 = v39[0] >> 61;
    if (v39[0] >> 61 == 3)
    {
      v3 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v34 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v39[0] = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v39[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                LOBYTE(v24) = 0;
                v25 = v39 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (((10 * v24) & 0xF00) != 0)
                  {
                    break;
                  }

                  v24 = (10 * v24) + v26;
                  if ((v24 >> 8))
                  {
                    break;
                  }

                  ++v25;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              LOBYTE(v29) = 0;
              v30 = v39;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (((10 * v29) & 0xF00) != 0)
                {
                  break;
                }

                v29 = (10 * v29) + v31;
                if ((v29 >> 8))
                {
                  break;
                }

                v30 = (v30 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              LOBYTE(v18) = 0;
              v19 = v39 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                if (((10 * v18) & 0xF00) != 0)
                {
                  break;
                }

                v18 = (10 * v18) - v20;
                if ((v18 & 0xFFFFFF00) != 0)
                {
                  break;
                }

                ++v19;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v37 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v38 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                LOBYTE(v21) = 0;
                if (v8)
                {
                  v22 = v8 + 1;
                  while (1)
                  {
                    v23 = *v22 - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v21) & 0xF00) != 0)
                    {
                      goto LABEL_71;
                    }

                    v21 = (10 * v21) + v23;
                    if ((v21 >> 8))
                    {
                      goto LABEL_71;
                    }

                    ++v22;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              LOBYTE(v27) = 0;
              if (v8)
              {
                while (1)
                {
                  v28 = *v8 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v27) & 0xF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  v27 = (10 * v27) + v28;
                  if ((v27 >> 8))
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v40 = v5;
            v32 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v32)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v33 = *(v0 + 40);
              *(v33 + 8) = v3;
              *(v33 + 16) = v4;
              *(v33 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              LOBYTE(v10) = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v10) & 0xF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  v10 = (10 * v10) - v12;
                  if ((v10 & 0xFFFFFF00) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v13 = *(v0 + 48);
      v4 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v15 = *(v0 + 40);
        v16 = 0xE600000000000000;
        v17 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v16 = 0xE500000000000000;
            v17 = 0x7961727261;
            break;
          case 2:
            v17 = 0x676E69727473;
            break;
          case 3:
            v17 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v16 = 0xE400000000000000;
              v17 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v16 = 0xE500000000000000;
              v17 = 0x65736C6166;
            }

            else
            {
              v16 = 0xE400000000000000;
              v17 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v14 = v15;
        *(v14 + 8) = v4;
        *(v14 + 16) = 0x7265626D756ELL;
        *(v14 + 24) = 0xE600000000000000;
        *(v14 + 32) = v17;
        *(v14 + 40) = v16;
        *(v14 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF0765AC();
    v36 = v35;

    if ((v36 & 0x100) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15D638()
{
  sub_1BF02A3D8(v39);
  if (!v1)
  {
    v2 = v39[0];
    v3 = v39[0] >> 61;
    if (v39[0] >> 61 == 3)
    {
      v3 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v34 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v39[0] = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v39[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                LOWORD(v24) = 0;
                v25 = v39 + 1;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  if (((10 * v24) & 0xF0000) != 0)
                  {
                    break;
                  }

                  v24 = (10 * v24) + v26;
                  if ((v24 & 0x10000) != 0)
                  {
                    break;
                  }

                  ++v25;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              LOWORD(v29) = 0;
              v30 = v39;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  break;
                }

                if (((10 * v29) & 0xF0000) != 0)
                {
                  break;
                }

                v29 = (10 * v29) + v31;
                if ((v29 & 0x10000) != 0)
                {
                  break;
                }

                v30 = (v30 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              LOWORD(v18) = 0;
              v19 = v39 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  break;
                }

                if (((10 * v18) & 0xF0000) != 0)
                {
                  break;
                }

                v18 = (10 * v18) - v20;
                if ((v18 & 0xFFFF0000) != 0)
                {
                  break;
                }

                ++v19;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v37 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v38 = *((v39[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                LOWORD(v21) = 0;
                if (v8)
                {
                  v22 = v8 + 1;
                  while (1)
                  {
                    v23 = *v22 - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_71;
                    }

                    if (((10 * v21) & 0xF0000) != 0)
                    {
                      goto LABEL_71;
                    }

                    v21 = (10 * v21) + v23;
                    if ((v21 & 0x10000) != 0)
                    {
                      goto LABEL_71;
                    }

                    ++v22;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              LOWORD(v27) = 0;
              if (v8)
              {
                while (1)
                {
                  v28 = *v8 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v27) & 0xF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v27 = (10 * v27) + v28;
                  if ((v27 & 0x10000) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v40 = v5;
            v32 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v32)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v33 = *(v0 + 40);
              *(v33 + 8) = v3;
              *(v33 + 16) = v4;
              *(v33 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              LOWORD(v10) = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  if (((10 * v10) & 0xF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v10 = (10 * v10) - v12;
                  if ((v10 & 0xFFFF0000) != 0)
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v13 = *(v0 + 48);
      v4 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v15 = *(v0 + 40);
        v16 = 0xE600000000000000;
        v17 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v16 = 0xE500000000000000;
            v17 = 0x7961727261;
            break;
          case 2:
            v17 = 0x676E69727473;
            break;
          case 3:
            v17 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v16 = 0xE400000000000000;
              v17 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v16 = 0xE500000000000000;
              v17 = 0x65736C6166;
            }

            else
            {
              v16 = 0xE400000000000000;
              v17 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v14 = v15;
        *(v14 + 8) = v4;
        *(v14 + 16) = 0x7265626D756ELL;
        *(v14 + 24) = 0xE600000000000000;
        *(v14 + 32) = v17;
        *(v14 + 40) = v16;
        *(v14 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076A48();
    v36 = v35;

    if ((v36 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15DB2C()
{
  sub_1BF02A3D8(v45);
  if (!v1)
  {
    v2 = v45[0];
    v3 = v45[0] >> 61;
    if (v45[0] >> 61 == 3)
    {
      v3 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = HIBYTE(v4) & 0xF;
      v6 = v3 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v7 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        v40 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_73;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v45[0] = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
          if (v3 == 43)
          {
            if (v5)
            {
              if (--v5)
              {
                v27 = 0;
                v28 = v45 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if ((v30 & 0xFFFFFFFF00000000) != 0)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__CFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }

LABEL_87:
            __break(1u);
            return;
          }

          if (v3 != 45)
          {
            if (v5)
            {
              v34 = 0;
              v35 = v45;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if ((v37 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__CFADD__(v37, v36))
                {
                  break;
                }

                v35 = (v35 + 1);
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }

          if (v5)
          {
            if (--v5)
            {
              v19 = 0;
              v20 = v45 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v22 & 0xFFFFFFFF00000000) != 0)
                {
                  break;
                }

                v19 = v22 - v21;
                if (v22 < v21)
                {
                  break;
                }

                ++v20;
                if (!--v5)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          if ((v3 & 0x1000000000000000) != 0)
          {
            v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v43 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v44 = *((v45[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v8 = sub_1BF17B2FC();
          }

          v9 = *v8;
          if (v9 == 43)
          {
            if (v6 >= 1)
            {
              v5 = v6 - 1;
              if (v6 != 1)
              {
                v23 = 0;
                if (v8)
                {
                  v24 = v8 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_71;
                    }

                    v26 = 10 * v23;
                    if ((v26 & 0xFFFFFFFF00000000) != 0)
                    {
                      goto LABEL_71;
                    }

                    v23 = v26 + v25;
                    if (__CFADD__(v26, v25))
                    {
                      goto LABEL_71;
                    }

                    ++v24;
                    if (!--v5)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_63;
              }

              goto LABEL_71;
            }

            goto LABEL_86;
          }

          if (v9 != 45)
          {
            if (v6)
            {
              v31 = 0;
              if (v8)
              {
                while (1)
                {
                  v32 = *v8 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_71;
                  }

                  v33 = 10 * v31;
                  if ((v33 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v31 = v33 + v32;
                  if (__CFADD__(v33, v32))
                  {
                    goto LABEL_71;
                  }

                  ++v8;
                  if (!--v6)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_71:
            LOBYTE(v5) = 1;
LABEL_72:
            v46 = v5;
            v38 = v5;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v38)
            {
LABEL_73:
              sub_1BF05350C();
              swift_allocError();
              *v39 = *(v0 + 40);
              *(v39 + 8) = v3;
              *(v39 + 16) = v4;
              *(v39 + 80) = 13;
LABEL_77:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v2);
              return;
            }

LABEL_82:
            sub_1BF017214(v2);

            return;
          }

          if (v6 >= 1)
          {
            v5 = v6 - 1;
            if (v6 != 1)
            {
              v10 = 0;
              if (v8)
              {
                v11 = v8 + 1;
                while (1)
                {
                  v12 = *v11 - 48;
                  if (v12 > 9)
                  {
                    goto LABEL_71;
                  }

                  v13 = 10 * v10;
                  if ((v13 & 0xFFFFFFFF00000000) != 0)
                  {
                    goto LABEL_71;
                  }

                  v10 = v13 - v12;
                  if (v13 < v12)
                  {
                    goto LABEL_71;
                  }

                  ++v11;
                  if (!--v5)
                  {
                    goto LABEL_72;
                  }
                }
              }

LABEL_63:
              LOBYTE(v5) = 0;
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          __break(1u);
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v14 = *(v0 + 48);
      v4 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        *(v0 + 48) = v4;
        sub_1BF05350C();
        swift_allocError();
        v16 = *(v0 + 40);
        v17 = 0xE600000000000000;
        v18 = 0x7463656A626FLL;
        switch(v3)
        {
          case 1:
            v17 = 0xE500000000000000;
            v18 = 0x7961727261;
            break;
          case 2:
            v18 = 0x676E69727473;
            break;
          case 3:
            v18 = 0x7265626D756ELL;
            break;
          case 4:
            if (v2 == 0x8000000000000000)
            {
              v17 = 0xE400000000000000;
              v18 = 1702195828;
            }

            else if (v2 == 0x8000000000000008)
            {
              v17 = 0xE500000000000000;
              v18 = 0x65736C6166;
            }

            else
            {
              v17 = 0xE400000000000000;
              v18 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v15 = v16;
        *(v15 + 8) = v4;
        *(v15 + 16) = 0x7265626D756ELL;
        *(v15 + 24) = 0xE600000000000000;
        *(v15 + 32) = v18;
        *(v15 + 40) = v17;
        *(v15 + 80) = 12;
        goto LABEL_77;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    sub_1BF076EF8();
    v42 = v41;

    if ((v42 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

    goto LABEL_82;
  }
}

void sub_1BF15DFA8(uint64_t a1)
{
  sub_1BF02A3D8(v36);
  if (!v2)
  {
    v4 = v36[0];
    v5 = v36[0] >> 61;
    if (v36[0] >> 61 == 3)
    {
      v5 = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = HIBYTE(v6) & 0xF;
      v8 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        v31 = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_84;
      }

      if ((v6 & 0x1000000000000000) == 0)
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v36[0] = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v7)
            {
              if (v7 != 1)
              {
                OUTLINED_FUNCTION_22_16();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v14 && v13)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_14_26();
                  if (!v14)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_10_34();
                  if (v13)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v14)
                  {
                    goto LABEL_83;
                  }
                }
              }

              goto LABEL_82;
            }

LABEL_98:
            __break(1u);
            return;
          }

          if (v5 != 45)
          {
            if (v7)
            {
              while (1)
              {
                OUTLINED_FUNCTION_15();
                if (!v14 && v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_14_26();
                if (!v14)
                {
                  break;
                }

                OUTLINED_FUNCTION_10_34();
                if (v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_44();
                if (v14)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_82;
          }

          if (v7)
          {
            if (v7 != 1)
            {
              OUTLINED_FUNCTION_22_16();
              while (1)
              {
                OUTLINED_FUNCTION_15();
                if (!v14 && v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_14_26();
                if (!v14)
                {
                  break;
                }

                v13 = 10 * a1 >= v23;
                a1 = 10 * a1 - v23;
                if (!v13)
                {
                  break;
                }

                OUTLINED_FUNCTION_44();
                if (v14)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_82;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v34 = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v35 = *((v36[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v10 = sub_1BF17B2FC();
          }

          v11 = *v10;
          if (v11 == 43)
          {
            if (v8 >= 1)
            {
              if (v8 != 1)
              {
                if (v10)
                {
                  OUTLINED_FUNCTION_8_34();
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v14 && v13)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_14_26();
                    if (!v14)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_10_34();
                    if (v13)
                    {
                      goto LABEL_82;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v14)
                    {
                      goto LABEL_83;
                    }
                  }
                }

                goto LABEL_73;
              }

              goto LABEL_82;
            }

            goto LABEL_97;
          }

          if (v11 != 45)
          {
            if (v8)
            {
              v24 = 0;
              if (v10)
              {
                while (1)
                {
                  v25 = OUTLINED_FUNCTION_9_30(v10);
                  if (!v14 && v13)
                  {
                    goto LABEL_82;
                  }

                  if (!is_mul_ok(v24, v27))
                  {
                    goto LABEL_82;
                  }

                  v13 = __CFADD__(10 * v24, v28);
                  v24 = 10 * v24 + v28;
                  if (v13)
                  {
                    goto LABEL_82;
                  }

                  v10 = v25 + 1;
                  if (v26 == 1)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_73;
            }

LABEL_82:
            v16 = 1;
LABEL_83:
            v37 = v16;
            v29 = v16;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            if (v29)
            {
LABEL_84:
              sub_1BF05350C();
              OUTLINED_FUNCTION_26_10();
              *v30 = *(v1 + 40);
              *(v30 + 8) = v5;
              *(v30 + 16) = v6;
              *(v30 + 80) = 13;
LABEL_88:
              swift_willThrow();
              _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
              sub_1BF017214(v4);
              return;
            }

LABEL_93:
            sub_1BF017214(v4);

            return;
          }

          if (v8 >= 1)
          {
            if (v8 != 1)
            {
              v12 = 0;
              if (v10)
              {
                OUTLINED_FUNCTION_8_34();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v14 && v13)
                  {
                    goto LABEL_82;
                  }

                  OUTLINED_FUNCTION_14_26();
                  if (!v14)
                  {
                    goto LABEL_82;
                  }

                  v13 = 10 * v12 >= v15;
                  v12 = 10 * v12 - v15;
                  if (!v13)
                  {
                    goto LABEL_82;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v14)
                  {
                    goto LABEL_83;
                  }
                }
              }

LABEL_73:
              v16 = 0;
              goto LABEL_83;
            }

            goto LABEL_82;
          }

          __break(1u);
        }

        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    else
    {
      v17 = *(v1 + 48);
      v6 = v17 - 1;
      if (!__OFSUB__(v17, 1))
      {
        *(v1 + 48) = v6;
        sub_1BF05350C();
        OUTLINED_FUNCTION_26_10();
        v18 = *(v1 + 40);
        OUTLINED_FUNCTION_29_11();
        v22 = 0x7265626D756ELL;
        switch(v5)
        {
          case 1:
            OUTLINED_FUNCTION_26_12();
            break;
          case 2:
            v21 = 0x676E69727473;
            break;
          case 3:
            v21 = 0x7265626D756ELL;
            break;
          case 4:
            if (v4 == 0x8000000000000000)
            {
              v20 = 0xE400000000000000;
              v21 = 1702195828;
            }

            else if (v4 == 0x8000000000000008)
            {
              v20 = 0xE500000000000000;
              v21 = 0x65736C6166;
            }

            else
            {
              v20 = 0xE400000000000000;
              v21 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v19 = v18;
        *(v19 + 8) = v6;
        *(v19 + 16) = v22;
        *(v19 + 24) = 0xE600000000000000;
        *(v19 + 32) = v21;
        *(v19 + 40) = v20;
        *(v19 + 80) = 12;
        goto LABEL_88;
      }

      __break(1u);
    }

    swift_bridgeObjectRetain_n();
    (a1)(v5, v6, 10);
    v33 = v32;

    if (v33)
    {
      goto LABEL_84;
    }

    goto LABEL_93;
  }
}

void sub_1BF15E3B0()
{
  v2 = v0;
  sub_1BF02A3D8(v27);
  if (!v1)
  {
    v3 = v27[0];
    v4 = v27[0] >> 61;
    if (v27[0] >> 61)
    {
      v20 = *(v0 + 48);
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
        *(v0 + 48) = v21;
        sub_1BF05350C();
        swift_allocError();
        v23 = *(v0 + 40);
        v24 = 0xE500000000000000;
        v25 = 0x7961727261;
        switch(v4)
        {
          case 2:
            v24 = 0xE600000000000000;
            v25 = 0x676E69727473;
            break;
          case 3:
            v24 = 0xE600000000000000;
            v25 = 0x7265626D756ELL;
            break;
          case 4:
            if (v3 == 0x8000000000000000)
            {
              v24 = 0xE400000000000000;
              v25 = 1702195828;
            }

            else if (v3 == 0x8000000000000008)
            {
              v24 = 0xE500000000000000;
              v25 = 0x65736C6166;
            }

            else
            {
              v24 = 0xE400000000000000;
              v25 = 1819047278;
            }

            break;
          default:
            break;
        }

        *v22 = v23;
        *(v22 + 8) = v21;
        *(v22 + 16) = 0x7463656A626FLL;
        *(v22 + 24) = 0xE600000000000000;
        *(v22 + 32) = v25;
        *(v22 + 40) = v24;
        *(v22 + 80) = 12;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v19 = v3;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = *(v27[0] + 16);
      v6 = *(v2 + 40);
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v8 = *(v2 + 48);
      v30 = v3;
      v9 = v8 - 1;
      if (!__OFSUB__(v8, 1))
      {
        v10 = inited;
        v27[0] = v8 - 1;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v26 = v5;
        v11 = sub_1BF17B6FC();
        v13 = v12;
        v10[7] = &type metadata for _JSONKey;
        v10[8] = sub_1BF02A58C();
        v14 = swift_allocObject();
        v10[4] = v14;
        *(v14 + 16) = v11;
        *(v14 + 24) = v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = 0;
        v27[0] = v6;
        sub_1BF02967C(v10);
        v15 = v27[0];
        v16 = *(v2 + 8);
        v17 = *(v2 + 16);
        v18 = *(v2 + 24);
        LOBYTE(v13) = *(v2 + 32);
        v27[0] = v26;
        v27[1] = v16;
        v27[2] = v17;
        v27[3] = v18;
        v28 = v13;
        v29 = v15;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v17, v18, v13);
        type metadata accessor for JSONKeyedDecodingContainer();
        swift_getWitnessTable();
        sub_1BF17B64C();
        v19 = v30;
LABEL_15:
        sub_1BF017214(v19);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BF15E6B8(uint64_t *a1@<X8>)
{
  v3 = v1;
  sub_1BF02A3D8(&v30);
  if (!v2)
  {
    v5 = v30;
    v6 = v30 >> 61;
    if (v30 >> 61 == 1)
    {
      v7 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *(v3 + 40);
      sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BF17DEF0;
      v10 = *(v3 + 48);
      v11 = v10 - 1;
      if (!__OFSUB__(v10, 1))
      {
        v12 = inited;
        v30 = v10 - 1;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v29 = v7;
        v13 = sub_1BF17B6FC();
        v15 = v14;
        v12[7] = &type metadata for _JSONKey;
        v12[8] = sub_1BF02A58C();
        v16 = swift_allocObject();
        v12[4] = v16;
        *(v16 + 16) = v13;
        *(v16 + 24) = v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = 0;
        v30 = v8;
        sub_1BF02967C(v12);
        sub_1BF017214(v5);
        v17 = v30;
        v18 = *(v3 + 8);
        v19 = *(v3 + 16);
        v20 = *(v3 + 24);
        a1[3] = &type metadata for JSONUnkeyedDecodingContainer;
        v21 = *(v3 + 32);
        a1[4] = sub_1BF029920();
        v22 = swift_allocObject();
        *a1 = v22;
        *(v22 + 56) = v17;
        *(v22 + 64) = 0;
        *(v22 + 16) = v29;
        *(v22 + 24) = v18;
        *(v22 + 32) = v19;
        *(v22 + 40) = v20;
        *(v22 + 48) = v21;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v19, v20, v21);
        return;
      }

      __break(1u);
      goto LABEL_18;
    }

    v23 = *(v1 + 48);
    v24 = v23 - 1;
    if (__OFSUB__(v23, 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(v1 + 48) = v24;
    sub_1BF05350C();
    swift_allocError();
    v26 = *(v1 + 40);
    v27 = 0xE500000000000000;
    v28 = 0x7961727261;
    switch(v6)
    {
      case 1:
        break;
      case 2:
        v27 = 0xE600000000000000;
        v28 = 0x676E69727473;
        break;
      case 3:
        v27 = 0xE600000000000000;
        v28 = 0x7265626D756ELL;
        break;
      case 4:
        if (v5 == 0x8000000000000000)
        {
          v27 = 0xE400000000000000;
          v28 = 1702195828;
        }

        else if (v5 == 0x8000000000000008)
        {
          v27 = 0xE500000000000000;
          v28 = 0x65736C6166;
        }

        else
        {
          v27 = 0xE400000000000000;
          v28 = 1819047278;
        }

        break;
      default:
        v27 = 0xE600000000000000;
        v28 = 0x7463656A626FLL;
        break;
    }

    *v25 = v26;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0x7961727261;
    *(v25 + 24) = 0xE500000000000000;
    *(v25 + 32) = v28;
    *(v25 + 40) = v27;
    *(v25 + 80) = 12;
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF017214(v5);
  }
}

void sub_1BF15E9B0(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  if (v4 >= *(*v1 + 16))
  {
    sub_1BF05350C();
    swift_allocError();
    v19 = v18;
    v20 = v1[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v22 = sub_1BF17B6FC();
    v24 = v23;
    *(inited + 56) = &type metadata for _JSONKey;
    *(inited + 64) = sub_1BF02A58C();
    v25 = swift_allocObject();
    *(inited + 32) = v25;
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    *(v25 + 32) = v4;
    *(v25 + 40) = 0;
    sub_1BF02967C(inited);
    *v19 = v20;
    *(v19 + 80) = 0;
    swift_willThrow();
  }

  else if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(*v1 + 8 * v4 + 32);
    v1[6] = v4 + 1;
    v6 = v1[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_1BF17DEF0;
    sub_1BF01716C(v5);
    sub_1BF01716C(v5);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v8 = sub_1BF17B6FC();
    v10 = v9;
    *(v7 + 56) = &type metadata for _JSONKey;
    *(v7 + 64) = sub_1BF02A58C();
    v11 = swift_allocObject();
    *(v7 + 32) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = 0;
    sub_1BF02967C(v7);
    sub_1BF017214(v5);
    v12 = v6;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];
    a1[3] = &type metadata for _JSONDecoder;
    v16 = *(v2 + 32);
    a1[4] = sub_1BF0172B8();
    v17 = swift_allocObject();
    *a1 = v17;
    *(v17 + 48) = v12;
    *(v17 + 56) = v13;
    *(v17 + 16) = v5;
    *(v17 + 24) = v14;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v14, v15, v16);
  }
}

uint64_t sub_1BF15EE4C()
{
  result = sub_1BF17B77C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EE9C()
{
  result = sub_1BF17B78C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EF44()
{
  result = sub_1BF17B7BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15EF94()
{
  result = sub_1BF17B79C();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15F0BC()
{
  result = sub_1BF17B7CC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1BF15F10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

void sub_1BF15F1AC()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0757C0();
    v43 = v42;

    if ((v43 & 0x100) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v26) = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOBYTE(v34) = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = (10 * v34);
            if (v36 != 10 * v34)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if ((v36 + v35) != v34)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = (10 * v12);
            if (v15 != 10 * v12)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if ((v15 - v14) != v12)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOBYTE(v37) = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = (10 * v37);
          if (v40 != 10 * v37)
          {
            break;
          }

          v37 = v40 + v39;
          if ((v40 + v39) != v37)
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v19) = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = (10 * v19);
          if (v22 != 10 * v19)
          {
            break;
          }

          v19 = v22 - v21;
          if ((v22 - v21) != v19)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v30) = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = (10 * v30);
        if (v33 != 10 * v30)
        {
          break;
        }

        v30 = v33 + v32;
        if ((v33 + v32) != v30)
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15F64C()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF075C98();
    v43 = v42;

    if ((v43 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v26) = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = (10 * v26);
              if (v29 != 10 * v26)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if ((v29 + v28) != v26)
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOWORD(v34) = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = (10 * v34);
            if (v36 != 10 * v34)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if ((v36 + v35) != v34)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = (10 * v12);
            if (v15 != 10 * v12)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if ((v15 - v14) != v12)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOWORD(v37) = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = (10 * v37);
          if (v40 != 10 * v37)
          {
            break;
          }

          v37 = v40 + v39;
          if ((v40 + v39) != v37)
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v19) = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = (10 * v19);
          if (v22 != 10 * v19)
          {
            break;
          }

          v19 = v22 - v21;
          if ((v22 - v21) != v19)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v30) = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = (10 * v30);
        if (v33 != 10 * v30)
        {
          break;
        }

        v30 = v33 + v32;
        if ((v33 + v32) != v30)
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15FAEC()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076170();
    v43 = v42;

    if ((v43 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if (v29 != v29)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if (v36 != v36)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if (v15 != v15)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if (v40 != v40)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if (v22 != v22)
          {
            break;
          }

          v19 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if (v33 != v33)
        {
          break;
        }

        v30 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF15FF2C()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0750D8();
    v43 = v42;

    if (v43)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF1603A0()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v16 = 0xE600000000000000;
    v17 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v16 = 0xE500000000000000;
        v17 = 0x7961727261;
        break;
      case 2uLL:
        v17 = 0x676E69727473;
        break;
      case 3uLL:
        v17 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v16 = 0xE400000000000000;
        v17 = 1702195828;
        v21 = 0xE500000000000000;
        v22 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v22 = 1819047278;
          v21 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v17 = v22;
          v16 = v21;
        }

        break;
      default:
        break;
    }

    *v15 = v2;
    *(v15 + 8) = 0x7265626D756ELL;
    *(v15 + 16) = 0xE600000000000000;
    *(v15 + 24) = v17;
    v23 = 10;
    *(v15 + 32) = v16;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0765AC();
    v37 = v36;

    if ((v37 & 0x100) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(v24) = 0;
          if (v10)
          {
            v25 = v10 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_71;
              }

              if (((10 * v24) & 0xF00) != 0)
              {
                goto LABEL_71;
              }

              v24 = (10 * v24) + v26;
              if ((v24 >> 8))
              {
                goto LABEL_71;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOBYTE(v30) = 0;
        if (v10)
        {
          while (1)
          {
            v31 = *v10 - 48;
            if (v31 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v30) & 0xF00) != 0)
            {
              goto LABEL_71;
            }

            v30 = (10 * v30) + v31;
            if ((v30 >> 8))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v39 = v7;
      v35 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v35)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v15 = v2;
        *(v15 + 8) = v6;
        *(v15 + 16) = v5;
        v23 = 13;
LABEL_74:
        *(v15 + 80) = v23;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOBYTE(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v12) & 0xF00) != 0)
            {
              goto LABEL_71;
            }

            v12 = (10 * v12) - v14;
            if ((v12 & 0xFFFFFF00) != 0)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38[0] = v6;
  v38[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOBYTE(v32) = 0;
        v33 = v38;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (((10 * v32) & 0xF00) != 0)
          {
            break;
          }

          v32 = (10 * v32) + v34;
          if ((v32 >> 8))
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOBYTE(v18) = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v18) & 0xF00) != 0)
          {
            break;
          }

          v18 = (10 * v18) - v20;
          if ((v18 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOBYTE(v27) = 0;
      v28 = v38 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (((10 * v27) & 0xF00) != 0)
        {
          break;
        }

        v27 = (10 * v27) + v29;
        if ((v27 >> 8))
        {
          break;
        }

        ++v28;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF160858()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v16 = 0xE600000000000000;
    v17 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v16 = 0xE500000000000000;
        v17 = 0x7961727261;
        break;
      case 2uLL:
        v17 = 0x676E69727473;
        break;
      case 3uLL:
        v17 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v16 = 0xE400000000000000;
        v17 = 1702195828;
        v21 = 0xE500000000000000;
        v22 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v22 = 1819047278;
          v21 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v17 = v22;
          v16 = v21;
        }

        break;
      default:
        break;
    }

    *v15 = v2;
    *(v15 + 8) = 0x7265626D756ELL;
    *(v15 + 16) = 0xE600000000000000;
    *(v15 + 24) = v17;
    v23 = 10;
    *(v15 + 32) = v16;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076A48();
    v37 = v36;

    if ((v37 & 0x10000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(v24) = 0;
          if (v10)
          {
            v25 = v10 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_71;
              }

              if (((10 * v24) & 0xF0000) != 0)
              {
                goto LABEL_71;
              }

              v24 = (10 * v24) + v26;
              if ((v24 & 0x10000) != 0)
              {
                goto LABEL_71;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        LOWORD(v30) = 0;
        if (v10)
        {
          while (1)
          {
            v31 = *v10 - 48;
            if (v31 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v30) & 0xF0000) != 0)
            {
              goto LABEL_71;
            }

            v30 = (10 * v30) + v31;
            if ((v30 & 0x10000) != 0)
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v39 = v7;
      v35 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v35)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v15 = v2;
        *(v15 + 8) = v6;
        *(v15 + 16) = v5;
        v23 = 13;
LABEL_74:
        *(v15 + 80) = v23;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v12) = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            if (((10 * v12) & 0xF0000) != 0)
            {
              goto LABEL_71;
            }

            v12 = (10 * v12) - v14;
            if ((v12 & 0xFFFF0000) != 0)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38[0] = v6;
  v38[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        LOWORD(v32) = 0;
        v33 = v38;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          if (((10 * v32) & 0xF0000) != 0)
          {
            break;
          }

          v32 = (10 * v32) + v34;
          if ((v32 & 0x10000) != 0)
          {
            break;
          }

          ++v33;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        LOWORD(v18) = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v18) & 0xF0000) != 0)
          {
            break;
          }

          v18 = (10 * v18) - v20;
          if ((v18 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v19;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      LOWORD(v27) = 0;
      v28 = v38 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        if (((10 * v27) & 0xF0000) != 0)
        {
          break;
        }

        v27 = (10 * v27) + v29;
        if ((v27 & 0x10000) != 0)
        {
          break;
        }

        ++v28;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

void sub_1BF160D10()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v23 = 0xE500000000000000;
        v24 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v24 = 1819047278;
          v23 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v18 = v24;
          v17 = v23;
        }

        break;
      default:
        break;
    }

    *v16 = v2;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v25 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  v8 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF076EF8();
    v43 = v42;

    if ((v43 & 0x100000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_77:

    return;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_1BF17B2FC();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v26 = 0;
          if (v10)
          {
            v27 = v10 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_71;
              }

              v29 = 10 * v26;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_71;
              }

              v26 = v29 + v28;
              if (__CFADD__(v29, v28))
              {
                goto LABEL_71;
              }

              ++v27;
              if (!--v7)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_63;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        v34 = 0;
        if (v10)
        {
          while (1)
          {
            v35 = *v10 - 48;
            if (v35 > 9)
            {
              goto LABEL_71;
            }

            v36 = 10 * v34;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            v34 = v36 + v35;
            if (__CFADD__(v36, v35))
            {
              goto LABEL_71;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_71:
      LOBYTE(v7) = 1;
LABEL_72:
      v45 = v7;
      v41 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v41)
      {
LABEL_73:
        sub_1BF05350C();
        swift_allocError();
        *v16 = v2;
        *(v16 + 8) = v6;
        *(v16 + 16) = v5;
        v25 = 13;
LABEL_74:
        *(v16 + 80) = v25;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return;
      }

      goto LABEL_77;
    }

    if (v8 >= 1)
    {
      v7 = v8 - 1;
      if (v8 != 1)
      {
        v12 = 0;
        if (v10)
        {
          v13 = v10 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v12;
            if ((v15 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_71;
            }

            v12 = v15 - v14;
            if (v15 < v14)
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v7)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v7) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v44[0] = v6;
  v44[1] = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v7)
      {
        v37 = 0;
        v38 = v44;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v40 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v37 = v40 + v39;
          if (__CFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7)
    {
      if (--v7)
      {
        v19 = 0;
        v20 = v44 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v19;
          if ((v22 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v19 = v22 - v21;
          if (v22 < v21)
          {
            break;
          }

          ++v20;
          if (!--v7)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_80;
  }

  if (v7)
  {
    if (--v7)
    {
      v30 = 0;
      v31 = v44 + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          break;
        }

        v33 = 10 * v30;
        if ((v33 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v30 = v33 + v32;
        if (__CFADD__(v33, v32))
        {
          break;
        }

        ++v31;
        if (!--v7)
        {
          goto LABEL_72;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
}

unsigned __int8 *sub_1BF161150(unsigned __int8 *result)
{
  v3 = *v1;
  v4 = v1[5];
  v5 = *v1 >> 61;
  if (v5 != 3)
  {
    sub_1BF05350C();
    OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_29_11();
    v20 = 0x7265626D756ELL;
    switch(v5)
    {
      case 1uLL:
        OUTLINED_FUNCTION_26_12();
        break;
      case 2uLL:
        v19 = 0x676E69727473;
        break;
      case 3uLL:
        v19 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v18 = 0xE400000000000000;
        v19 = 1702195828;
        v22 = 0xE500000000000000;
        v23 = 0x65736C6166;
        if (v3 != 0x8000000000000008)
        {
          v23 = 1819047278;
          v22 = 0xE400000000000000;
        }

        if (v3 != 0x8000000000000000)
        {
          v19 = v23;
          v18 = v22;
        }

        break;
      default:
        break;
    }

    *v17 = v4;
    *(v17 + 8) = v20;
    *(v17 + 16) = 0xE600000000000000;
    *(v17 + 24) = v19;
    v24 = 10;
    *(v17 + 32) = v18;
    goto LABEL_86;
  }

  v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *(v6 + 24);
  v9 = HIBYTE(v7) & 0xF;
  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_85;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v30 = result;
    swift_bridgeObjectRetain_n();
    v2 = (v30)(v8, v7, 10);
    v32 = v31;

    if (v32)
    {
      goto LABEL_85;
    }

    goto LABEL_89;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v12 = *result;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v2 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_8_34();
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v14 && v13)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_18_13();
              if (!v14)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_13_26();
              if (v13)
              {
                goto LABEL_83;
              }

              OUTLINED_FUNCTION_44();
              if (v14)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_83;
      }

      goto LABEL_94;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v2 = 0;
        if (result)
        {
          while (1)
          {
            v25 = OUTLINED_FUNCTION_9_30(result);
            if (!v14 && v13)
            {
              goto LABEL_83;
            }

            if (!is_mul_ok(v2, v27))
            {
              goto LABEL_83;
            }

            v13 = __CFADD__(10 * v2, v28);
            v2 = 10 * v2 + v28;
            if (v13)
            {
              goto LABEL_83;
            }

            result = v25 + 1;
            if (v26 == 1)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_83:
      v2 = 0;
      v16 = 1;
LABEL_84:
      v29 = v16;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (v29)
      {
LABEL_85:
        sub_1BF05350C();
        OUTLINED_FUNCTION_26_10();
        *v17 = v4;
        *(v17 + 8) = v8;
        *(v17 + 16) = v7;
        v24 = 13;
LABEL_86:
        *(v17 + 80) = v24;
        swift_willThrow();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        return v2;
      }

LABEL_89:

      return v2;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v2 = 0;
        if (result)
        {
          OUTLINED_FUNCTION_8_34();
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v14 && v13)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_18_13();
            if (!v14)
            {
              goto LABEL_83;
            }

            v13 = 10 * v2 >= v15;
            v2 = 10 * v2 - v15;
            if (!v13)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_44();
            if (v14)
            {
              goto LABEL_84;
            }
          }
        }

LABEL_73:
        v16 = 0;
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v9)
      {
        v2 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_18_13();
          if (!v14)
          {
            break;
          }

          OUTLINED_FUNCTION_13_26();
          if (v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        v2 = 0;
        OUTLINED_FUNCTION_4_42();
        while (1)
        {
          OUTLINED_FUNCTION_15();
          if (!v14 && v13)
          {
            break;
          }

          OUTLINED_FUNCTION_18_13();
          if (!v14)
          {
            break;
          }

          v13 = 10 * v2 >= v21;
          v2 = 10 * v2 - v21;
          if (!v13)
          {
            break;
          }

          OUTLINED_FUNCTION_44();
          if (v14)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    goto LABEL_93;
  }

  if (v9)
  {
    if (v9 != 1)
    {
      v2 = 0;
      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        OUTLINED_FUNCTION_15();
        if (!v14 && v13)
        {
          break;
        }

        OUTLINED_FUNCTION_18_13();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_13_26();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_44();
        if (v14)
        {
          goto LABEL_84;
        }
      }
    }

    goto LABEL_83;
  }

LABEL_95:
  __break(1u);
  return result;
}

id sub_1BF161620()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v0 setFormatOptions_];
  qword_1ED8EA738 = v0;
  return result;
}

uint64_t sub_1BF161670()
{
  qword_1EBDCC798 = &type metadata for _JSONKey;
  qword_1EBDCC7A0 = sub_1BF02A58C();
  result = swift_allocObject();
  qword_1EBDCC780 = result;
  *(result + 16) = 0x7265707573;
  *(result + 24) = 0xE500000000000000;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_1BF161738()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void sub_1BF161768(uint64_t a1@<X8>)
{
  sub_1BF1616E0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t sub_1BF161798()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1BF1617A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BF1616EC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BF1617D4(uint64_t a1)
{
  v2 = sub_1BF02A58C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF161810(uint64_t a1)
{
  v2 = sub_1BF02A58C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation01_A11JSONDecoderC19KeyDecodingStrategyO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF161988(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF1619D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BF161A4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1BF161A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BF161AE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BF161B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BF161B88(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BF161BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id FrameworkAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF161CEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 32))
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }

      if (v2 + 1 >= 2)
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return (*a1 + 2);
    }
  }

  return a2;
}

uint64_t sub_1BF161D3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = xmmword_1BF189F10;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1BF161D9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 32))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}