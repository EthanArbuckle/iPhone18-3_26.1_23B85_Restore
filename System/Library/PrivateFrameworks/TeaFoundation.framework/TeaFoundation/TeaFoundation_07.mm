void sub_1BF0765AC()
{
  OUTLINED_FUNCTION_34();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v18)
          {
            OUTLINED_FUNCTION_10_6();
            do
            {
              OUTLINED_FUNCTION_25_0();
              if (v14 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_12_0();
                if (!v14 || v22 >= v24)
                {
                  goto LABEL_119;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              v25 = v21 * v1;
              if (v25 & 0xFF00) != 0 || (((v25 + (v22 + v23)) >> 8))
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_14_3();
            }

            while (!v8);
LABEL_46:
            OUTLINED_FUNCTION_51();
            goto LABEL_119;
          }

          goto LABEL_64;
        }

LABEL_118:
        OUTLINED_FUNCTION_48();
        goto LABEL_119;
      }

      goto LABEL_123;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v26)
        {
          do
          {
            v27 = OUTLINED_FUNCTION_37(v26);
            if (v14 && v32 < v30)
            {
              v33 = -48;
            }

            else if (v32 < 0x41 || v32 >= v29)
            {
              if (v32 < 0x61 || v32 >= v28)
              {
                goto LABEL_119;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }

            v34 = v31 * v1;
            if (v34 & 0xFF00) != 0 || (((v34 + (v32 + v33)) >> 8))
            {
              goto LABEL_118;
            }

            v26 = OUTLINED_FUNCTION_27_0(v27);
          }

          while (!v8);
          OUTLINED_FUNCTION_52();
          goto LABEL_119;
        }

        goto LABEL_64;
      }

      goto LABEL_118;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          OUTLINED_FUNCTION_10_6();
          while (1)
          {
            OUTLINED_FUNCTION_25_0();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v14 || v13 >= v16)
              {
                goto LABEL_119;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            v17 = v12 * v1;
            if ((v17 & 0xFF00) != 0 || ((v17 - (v13 + v15)) & 0xFFFFFF00) != 0)
            {
              goto LABEL_118;
            }

            OUTLINED_FUNCTION_14_3();
            if (v8)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        OUTLINED_FUNCTION_47();
LABEL_119:

        return;
      }

      goto LABEL_118;
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  OUTLINED_FUNCTION_7_4();
  if (!v8)
  {
    if (v36 != 45)
    {
      if (v35)
      {
        OUTLINED_FUNCTION_0_6();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if ((!v14 || v54 >= v53) && (v54 < 0x41 || v54 >= v52))
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v56 >= v55)
            {
              goto LABEL_119;
            }
          }

          if (((v51 * v1) & 0xFF00) != 0)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_57();
          if (v57)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_17_0();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v40 < v39)
          {
            v41 = -48;
          }

          else if (v40 < 0x41 || v40 >= v38)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v40 >= v42)
            {
              goto LABEL_119;
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }

          v43 = v37 * v1;
          if ((v43 & 0xFF00) != 0 || ((v43 - (v40 + v41)) & 0xFFFFFF00) != 0)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    goto LABEL_122;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_17_0();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if ((!v14 || v47 >= v46) && (v47 < 0x41 || v47 >= v45))
        {
          OUTLINED_FUNCTION_12_0();
          if (!v14 || v49 >= v48)
          {
            goto LABEL_119;
          }
        }

        if (((v44 * v1) & 0xFF00) != 0)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_57();
        if (v50)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_9_5();
        if (v8)
        {
LABEL_117:
          OUTLINED_FUNCTION_53_0();
          goto LABEL_119;
        }
      }
    }

    goto LABEL_118;
  }

LABEL_124:
  __break(1u);
}

void sub_1BF076A48()
{
  OUTLINED_FUNCTION_34();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v27)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v18)
          {
            OUTLINED_FUNCTION_19_2();
            do
            {
              OUTLINED_FUNCTION_36_0();
              if (v15 && v24 < v21)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v20)
              {
                if (v24 < 0x61 || v24 >= v19)
                {
                  goto LABEL_125;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              v26 = v22 * v23;
              if ((v26 & 0xFFFF0000) != 0 || ((v26 + (v24 + v25)) & 0x10000) != 0)
              {
                goto LABEL_124;
              }

              OUTLINED_FUNCTION_14_3();
            }

            while (!v27);
LABEL_44:
            OUTLINED_FUNCTION_51();
            goto LABEL_125;
          }

          goto LABEL_70;
        }

LABEL_124:
        OUTLINED_FUNCTION_48();
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v28 ^ v29 | v27)
        {
          v31 = v34;
        }

        if (v28 ^ v29 | v27)
        {
          v32 = 65;
        }

        if (!(v28 ^ v29 | v27))
        {
          v33 = 58;
        }

        if (v30)
        {
          v35 = 0;
          v36 = v1;
          do
          {
            v37 = *v30;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v32)
              {
                if (v37 < 0x61 || v37 >= v31)
                {
                  goto LABEL_125;
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

            v39 = v35 * v36;
            if ((v39 & 0xFFFF0000) != 0 || ((v39 + (v37 + v38)) & 0x10000) != 0)
            {
              goto LABEL_124;
            }

            v30 = OUTLINED_FUNCTION_27_0(v30);
          }

          while (!v27);
          OUTLINED_FUNCTION_52();
          goto LABEL_125;
        }

        goto LABEL_70;
      }

      goto LABEL_124;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v8)
        {
          OUTLINED_FUNCTION_19_2();
          while (1)
          {
            OUTLINED_FUNCTION_36_0();
            if (v15 && v14 < v11)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v10)
            {
              if (v14 < 0x61 || v14 >= v9)
              {
                goto LABEL_125;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            v17 = v12 * v13;
            if ((v17 & 0xFFFF0000) != 0 || ((v17 - (v14 + v16)) & 0xFFFF0000) != 0)
            {
              goto LABEL_124;
            }

            OUTLINED_FUNCTION_14_3();
            if (v27)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_70:
        OUTLINED_FUNCTION_47();
LABEL_125:

        return;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  OUTLINED_FUNCTION_7_4();
  if (!v27)
  {
    if (v41 != 45)
    {
      if (v40)
      {
        OUTLINED_FUNCTION_0_6();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if ((!v15 || v59 >= v58) && (v59 < 0x41 || v59 >= v57))
          {
            OUTLINED_FUNCTION_12_0();
            if (!v15 || v61 >= v60)
            {
              goto LABEL_125;
            }
          }

          if (((v56 * v1) & 0xFFFF0000) != 0)
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_55_0();
          if (v62)
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_9_5();
          if (v27)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v40)
    {
      if (v40 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_17_0();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v15 && v45 < v44)
          {
            v46 = -48;
          }

          else if (v45 < 0x41 || v45 >= v43)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v15 || v45 >= v47)
            {
              goto LABEL_125;
            }

            v46 = -87;
          }

          else
          {
            v46 = -55;
          }

          v48 = v42 * v1;
          if ((v48 & 0xFFFF0000) != 0 || ((v48 - (v45 + v46)) & 0xFFFF0000) != 0)
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_9_5();
          if (v27)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v40)
  {
    if (v40 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_17_0();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if ((!v15 || v52 >= v51) && (v52 < 0x41 || v52 >= v50))
        {
          OUTLINED_FUNCTION_12_0();
          if (!v15 || v54 >= v53)
          {
            goto LABEL_125;
          }
        }

        if (((v49 * v1) & 0xFFFF0000) != 0)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_55_0();
        if (v55)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_9_5();
        if (v27)
        {
LABEL_123:
          OUTLINED_FUNCTION_53_0();
          goto LABEL_125;
        }
      }
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
}

void sub_1BF076EF8()
{
  OUTLINED_FUNCTION_31_2();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v18)
          {
            OUTLINED_FUNCTION_10_6();
            do
            {
              OUTLINED_FUNCTION_25_0();
              if (v14 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_12_0();
                if (!v14 || v22 >= v24)
                {
                  goto LABEL_119;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              v25 = v21 * v1;
              if ((v25 & 0xFFFFFFFF00000000) != 0 || __CFADD__(v25, (v22 + v23)))
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_14_3();
            }

            while (!v8);
LABEL_46:
            OUTLINED_FUNCTION_51();
            goto LABEL_119;
          }

          goto LABEL_64;
        }

LABEL_118:
        OUTLINED_FUNCTION_48();
        goto LABEL_119;
      }

      goto LABEL_123;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v26)
        {
          do
          {
            v27 = OUTLINED_FUNCTION_37(v26);
            if (v14 && v32 < v30)
            {
              v33 = -48;
            }

            else if (v32 < 0x41 || v32 >= v29)
            {
              if (v32 < 0x61 || v32 >= v28)
              {
                goto LABEL_119;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }

            v34 = v31 * v1;
            if ((v34 & 0xFFFFFFFF00000000) != 0 || __CFADD__(v34, (v32 + v33)))
            {
              goto LABEL_118;
            }

            v26 = OUTLINED_FUNCTION_27_0(v27);
          }

          while (!v8);
          OUTLINED_FUNCTION_52();
          goto LABEL_119;
        }

        goto LABEL_64;
      }

      goto LABEL_118;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          OUTLINED_FUNCTION_10_6();
          while (1)
          {
            OUTLINED_FUNCTION_25_0();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v14 || v13 >= v16)
              {
                goto LABEL_119;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            v17 = v12 * v1;
            if ((v17 & 0xFFFFFFFF00000000) != 0 || v17 < (v13 + v15))
            {
              goto LABEL_118;
            }

            OUTLINED_FUNCTION_14_3();
            if (v8)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        OUTLINED_FUNCTION_47();
LABEL_119:

        OUTLINED_FUNCTION_54_0();
        return;
      }

      goto LABEL_118;
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  OUTLINED_FUNCTION_4_5();
  if (!v8)
  {
    if (v36 != 45)
    {
      if (v35)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_41();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if ((!v14 || v53 >= v52) && (v53 < 0x41 || v53 >= v51))
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v55 >= v54)
            {
              goto LABEL_119;
            }
          }

          if (((v50 * v1) & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_56();
          if (v14)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_5_1();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v40 < v39)
          {
            v41 = -48;
          }

          else if (v40 < 0x41 || v40 >= v38)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v40 >= v42)
            {
              goto LABEL_119;
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }

          v43 = v37 * v1;
          if ((v43 & 0xFFFFFFFF00000000) != 0 || v43 < (v40 + v41))
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    goto LABEL_122;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_5_1();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if ((!v14 || v47 >= v46) && (v47 < 0x41 || v47 >= v45))
        {
          OUTLINED_FUNCTION_12_0();
          if (!v14 || v49 >= v48)
          {
            goto LABEL_119;
          }
        }

        if (((v44 * v1) & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_56();
        if (v14)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_9_5();
        if (v8)
        {
LABEL_117:
          OUTLINED_FUNCTION_53_0();
          goto LABEL_119;
        }
      }
    }

    goto LABEL_118;
  }

LABEL_124:
  __break(1u);
}

void sub_1BF077334()
{
  OUTLINED_FUNCTION_31_2();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v17)
          {
            while (1)
            {
              OUTLINED_FUNCTION_11_1();
              if (v14 && v21 < v19)
              {
                v22 = -48;
              }

              else if (v21 < 0x41 || v21 >= v18)
              {
                OUTLINED_FUNCTION_16_1();
                if (!v14 || v21 >= v23)
                {
                  goto LABEL_121;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }

              if (is_mul_ok(v20, v1) && !__CFADD__(v20 * v1, (v21 + v22)))
              {
                OUTLINED_FUNCTION_9_5();
                if (!v8)
                {
                  continue;
                }
              }

              goto LABEL_121;
            }
          }
        }

        goto LABEL_121;
      }

      goto LABEL_125;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v24)
        {
          while (1)
          {
            v25 = OUTLINED_FUNCTION_37(v24);
            if (v14 && v30 < v28)
            {
              v31 = -48;
            }

            else if (v30 < 0x41 || v30 >= v27)
            {
              if (v30 < 0x61 || v30 >= v26)
              {
                goto LABEL_121;
              }

              v31 = -87;
            }

            else
            {
              v31 = -55;
            }

            if (is_mul_ok(v29, v1) && !__CFADD__(v29 * v1, (v30 + v31)))
            {
              v24 = OUTLINED_FUNCTION_27_0(v25);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_121;
          }
        }
      }

      goto LABEL_121;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          while (1)
          {
            OUTLINED_FUNCTION_11_1();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            if (is_mul_ok(v12, v1) && v12 * v1 >= (v13 + v15))
            {
              OUTLINED_FUNCTION_9_5();
              if (!v8)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_121:

      return;
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  OUTLINED_FUNCTION_4_5();
  if (!v8)
  {
    if (v33 != 45)
    {
      if (v32)
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_41();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v49 < v48)
          {
            v50 = -48;
          }

          else if (v49 < 0x41 || v49 >= v47)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v14 || v49 >= v51)
            {
              goto LABEL_121;
            }

            v50 = -87;
          }

          else
          {
            v50 = -55;
          }

          if (is_mul_ok(v46, v1) && !__CFADD__(v46 * v1, (v49 + v50)))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_121;
        }
      }

      goto LABEL_121;
    }

    if (v32)
    {
      if (v32 != 1)
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_5_1();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v37 < v36)
          {
            v38 = -48;
          }

          else if (v37 < 0x41 || v37 >= v35)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v14 || v37 >= v39)
            {
              goto LABEL_121;
            }

            v38 = -87;
          }

          else
          {
            v38 = -55;
          }

          if (is_mul_ok(v34, v1) && v34 * v1 >= (v37 + v38))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_121;
        }
      }

      goto LABEL_121;
    }

    goto LABEL_124;
  }

  if (v32)
  {
    if (v32 != 1)
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_5_1();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if (v14 && v43 < v42)
        {
          v44 = -48;
        }

        else if (v43 < 0x41 || v43 >= v41)
        {
          OUTLINED_FUNCTION_16_1();
          if (!v14 || v43 >= v45)
          {
            goto LABEL_121;
          }

          v44 = -87;
        }

        else
        {
          v44 = -55;
        }

        if (is_mul_ok(v40, v1) && !__CFADD__(v40 * v1, (v43 + v44)))
        {
          OUTLINED_FUNCTION_9_5();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_121;
      }
    }

    goto LABEL_121;
  }

LABEL_126:
  __break(1u);
}

_BYTE *sub_1BF0777C4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1BF077874(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v18[0] = a2;
  sub_1BF056AC4(0, &qword_1ED8E9B70, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = OUTLINED_FUNCTION_1(v7);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF056BF0();
  sub_1BF17BC1C();
  if (a4)
  {
    v23 = 1;
    v22 = 0;
    sub_1BF077D18();
    OUTLINED_FUNCTION_1_3();
    sub_1BF17B69C();
    if (!v4)
    {
      v18[1] = v18[0];
      v21 = 1;
      sub_1BF02027C();
      sub_1BF077D6C(&qword_1ED8E9C40);
      OUTLINED_FUNCTION_1_3();
      sub_1BF17B69C();
    }
  }

  else
  {
    v20 = 0;
    sub_1BF077D18();
    OUTLINED_FUNCTION_1_3();
    sub_1BF17B69C();
    if (!v4)
    {
      v19 = 1;
      OUTLINED_FUNCTION_1_3();
      sub_1BF17B66C();
    }
  }

  return (*(v11 + 8))(v15, v8);
}

uint64_t sub_1BF077A94(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1BF077AF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF077A94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BF077B80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BF0D4188();
}

uint64_t sub_1BF077BA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF05734C();
  *a2 = result;
  return result;
}

uint64_t sub_1BF077BDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF057100(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BF077C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF05734C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF077C58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF077B6C();
  *a1 = result;
  return result;
}

uint64_t sub_1BF077C80(uint64_t a1)
{
  v2 = sub_1BF056BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF077CBC(uint64_t a1)
{
  v2 = sub_1BF056BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BF077D18()
{
  result = qword_1ED8EA408;
  if (!qword_1ED8EA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA408);
  }

  return result;
}

uint64_t sub_1BF077D6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BF02027C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF077DF0()
{
  result = qword_1EBDCB3A8;
  if (!qword_1EBDCB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB3A8);
  }

  return result;
}

unint64_t sub_1BF077E48()
{
  result = qword_1EBDCB3B0;
  if (!qword_1EBDCB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB3B0);
  }

  return result;
}

uint64_t TaskDeadlineError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t sub_1BF077ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0xD000000000000010, 0x80000001BF18C7D0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BF17B80C();
  MEMORY[0x1BFB52000](46, 0xE100000000000000);
  OUTLINED_FUNCTION_20(a3);
  (*(v9 + 8))(a2, a3);
  OUTLINED_FUNCTION_20(AssociatedTypeWitness);
  result = (*(v10 + 8))(a1, AssociatedTypeWitness);
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1BF078018(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v45 = a3;
  v41 = a2;
  v38 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v37[1] = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v43 = v37 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v20;
  v40 = v20;
  v22 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v22, a2, a4);
  (*(v10 + 16))(v14, a1, AssociatedTypeWitness);
  v23 = *(v16 + 80);
  v24 = *(v10 + 80);
  v39 = v23 | v24;
  v25 = swift_allocObject();
  v26 = v44;
  v25[2] = v45;
  v25[3] = a4;
  v25[4] = v26;
  v37[0] = *(v16 + 32);
  OUTLINED_FUNCTION_29_1();
  v27();
  v28 = *(v10 + 32);
  v29 = v25 + ((v21 + ((v23 + 40) & ~v23) + v24) & ~v24);
  v31 = v42;
  v30 = v43;
  v28(v29, v43, v42);
  v28(v30, v38, v31);
  v32 = v37[0];
  (v37[0])(v22, v41, a4);
  v33 = swift_allocObject();
  v34 = v44;
  *(v33 + 2) = v45;
  *(v33 + 3) = a4;
  *(v33 + 4) = v34;
  v28(&v33[(v24 + 40) & ~v24], v43, v42);
  OUTLINED_FUNCTION_29_1();
  v35 = v32();
  return OUTLINED_FUNCTION_9_6(v35);
}

uint64_t sub_1BF0782E4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = &v6 - v3;
  sub_1BF17BABC();
  swift_getAssociatedConformanceWitness();
  sub_1BF17B3EC();
  return (*(v1 + 8))(v4, AssociatedTypeWitness);
}

uint64_t (*sub_1BF078424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v19 = a4;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v18 - v15;
  swift_getAssociatedConformanceWitness();
  sub_1BF17B3DC();
  (*(v9 + 16))(v12, a3, a5);
  sub_1BF078018(v16, v12, v19, a5, a6);
  return sub_1BF07C77C;
}

uint64_t sub_1BF078608(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, void *(*a5)(void *__return_ptr))
{
  v8 = a5(v12);
  a1(v12, v8);
  if (sub_1BF17BC3C())
  {
    v9 = a5(v12);
    a1(v12, v9);
    v12[0] = sub_1BF17BC5C();
    v12[1] = v10;
    return a3(v12);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1BF078718()
{
  sub_1BF07C294();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1BF17BD0C();
  qword_1ED8ED420 = result;
  return result;
}

uint64_t sub_1BF07876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[16] = a3;
  v8[17] = a4;
  v8[14] = a1;
  v8[15] = a2;
  v9 = OUTLINED_FUNCTION_13_3();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF0787A0()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[16];
    v5 = qword_1ED8ED430;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    sub_1BF17BD1C();
    v6 = v0[10];
    if (!v6)
    {
      v13 = v0[17];
      v15 = v0[18];
      v9 = v0[15];
      v11 = v0[16];
      goto LABEL_10;
    }

    v7 = v0[11];
    v8 = v0[13];
    v9 = sub_1BF078608(v1, v4, v2, v3, v6);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (qword_1ED8ED430 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  sub_1BF17BD1C();
  v9 = v0[2];
  v11 = v0[3];
  v13 = v0[4];
  v15 = v0[5];
LABEL_10:
  v0[24] = v13;
  v0[25] = v15;
  v0[22] = v9;
  v0[23] = v11;
  if (qword_1ED8ED430 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v0[6] = v9;
  v0[7] = v11;
  v0[8] = v13;
  v0[9] = v15;
  v16 = *(MEMORY[0x1E69E8950] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[26] = v17;
  *v17 = v18;
  v17[1] = sub_1BF0789A8;
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[14];
  v24 = v0[21];
  OUTLINED_FUNCTION_23_1();

  return MEMORY[0x1EEE6DE98]();
}

uint64_t sub_1BF0789A8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF078AA0()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1BF07C250(v0[22]);
  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_1BF078AFC()
{
  OUTLINED_FUNCTION_5();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1BF07C250(v0[22]);
  OUTLINED_FUNCTION_9();
  v5 = v0[27];

  return v4();
}

uint64_t sub_1BF078B5C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a1;
  v30 = a3;
  v26 = *(a2 - 8);
  v27 = a2;
  v7 = *(v26 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v23);
  v24 = 1;
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v21, v12);
    v29(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v5)
    {
      return (*(v26 + 32))(v28, v10, v27);
    }

    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v24, 1, v30);
}

uint64_t sub_1BF078DD0()
{
  OUTLINED_FUNCTION_5();
  v0[8] = v1;
  v0[9] = v2;
  OUTLINED_FUNCTION_22_1(v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_2_3();
  v0[10] = v9;
  v11 = *(v10 + 64);
  v0[11] = OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_30_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[12] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_3(AssociatedTypeWitness);
  v0[13] = v13;
  v15 = *(v14 + 64);
  v0[14] = OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1BF078ED8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v19 = *(v0 + 56);
  v6 = *(v0 + 56);
  v20 = *(v0 + 40);
  (*(*(v0 + 104) + 16))(*(v0 + 112), v5, *(v0 + 96));
  (*(v3 + 16))(v1, v4, v6);
  v7 = OUTLINED_FUNCTION_31_1();
  sub_1BF0785DC(v7, v8, v6, v2);
  v10 = v9;
  v12 = v11;
  *(v0 + 120) = v9;
  *(v0 + 128) = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *(v13 + 16) = v19;
  *(v13 + 32) = v2;
  *(v13 + 40) = v20;
  *(v13 + 56) = v4;
  *(v13 + 64) = v5;

  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 144) = v14;
  *v14 = v15;
  v14[1] = sub_1BF079078;
  v16 = *(v0 + 64);
  v17 = *(v0 + 16);

  return sub_1BF07876C(v17, sub_1BF07C77C, v10, sub_1BF07C878, v12, &unk_1BF17E680, v13, v16);
}

uint64_t sub_1BF079078()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[19] = v0;

  if (!v0)
  {
    v10 = v3[16];
    v9 = v3[17];
    v11 = v3[15];
  }

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF079198()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];

  OUTLINED_FUNCTION_1_4();

  return v5();
}

uint64_t sub_1BF079218()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[11];

  OUTLINED_FUNCTION_9();
  v7 = v0[19];

  return v6();
}

uint64_t sub_1BF0792AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF0792D8, 0, 0);
}

uint64_t sub_1BF0792D8()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 72);
  v2 = swift_allocObject();
  *(v0 + 80) = v2;
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v1;
  *(v2 + 40) = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 88) = v3;
  *v3 = v4;
  v3[1] = sub_1BF0793BC;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return sub_1BF0796C0(v10, &unk_1BF17E698, v2, v9, v7, v8, v5, v6);
}

uint64_t sub_1BF0793BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF0794B4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 80);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_4();

    return v4();
  }

  return result;
}

uint64_t sub_1BF07953C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 80);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9();
    v5 = *(v0 + 96);

    return v4();
  }

  return result;
}

uint64_t sub_1BF0795C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF035DD0;

  return v7(a1);
}

uint64_t sub_1BF0796C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF0796EC, 0, 0);
}

uint64_t sub_1BF0796EC()
{
  v1 = *(v0 + 56);
  v13 = *(v0 + 64);
  sub_1BF17AE6C();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v13;
  *(v2 + 40) = v3;
  *(v2 + 56) = v4;
  v5 = OUTLINED_FUNCTION_31_1();
  sub_1BF0CC698(v5, v6);
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 88) = v8;
  *v8 = v9;
  v8[1] = sub_1BF07981C;
  v10 = *(v0 + 16);
  v15 = *(v0 + 64);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DD58](v11);
}

uint64_t sub_1BF07981C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_14();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    OUTLINED_FUNCTION_9();

    return v13();
  }
}

uint64_t sub_1BF07993C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t sub_1BF079998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v21;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[11] = sub_1BF17AE6C();
  v10 = sub_1BF17AE6C();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = sub_1BEFF79E8();
  v8[16] = sub_1BF17BBAC();
  v13 = *(*(sub_1BF17AE6C() - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v8[19] = v15;
  v8[20] = *(v15 + 64);
  v8[21] = swift_task_alloc();
  v16 = *(a7 - 8);
  v8[22] = v16;
  v8[23] = *(v16 + 64);
  v8[24] = swift_task_alloc();
  sub_1BF00974C();
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF079BEC, 0, 0);
}

uint64_t sub_1BF079BEC()
{
  v1 = v0[25];
  v25 = v0[24];
  v2 = v0[22];
  v28 = v0[23];
  v27 = v0[21];
  v29 = v0[20];
  v3 = v0[19];
  v26 = v0[18];
  v4 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v24 = v0[7];
  v20 = v0[6];
  v7 = v0[5];
  v18 = v0[4];
  v22 = v4;
  v23 = v0[3];
  v19 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v19);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v18;
  v8[8] = v7;
  v9 = sub_1BF17A87C();
  v0[26] = v9;
  v21 = v9;

  sub_1BF047B94(v1, &unk_1BF17E6C0, v8, v9);
  sub_1BF00CAB0(v1);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v19);
  (*(v2 + 16))(v25, v20, v6);
  (*(v3 + 16))(v27, v24, v26);
  v10 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v11 = (v28 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v6;
  *(v12 + 5) = v5;
  *(v12 + 6) = v22;
  (*(v2 + 32))(&v12[v10], v25);
  (*(v3 + 32))(&v12[v11], v27, v26);
  sub_1BF047B94(v1, &unk_1BF17E6D0, v12, v21);
  sub_1BF00CAB0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[27] = v13;
  *v13 = v14;
  v13[1] = sub_1BF079EC8;
  v15 = v0[17];
  v16 = v0[3];
  OUTLINED_FUNCTION_14();

  return (sub_1BF07ABE8)();
}

uint64_t sub_1BF079EC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1BF079FAC()
{
  v1 = v0[16];
  v2 = v0[17];
  OUTLINED_FUNCTION_15_1();
  if (v3)
  {
    sub_1BF17B49C();
    OUTLINED_FUNCTION_17_1();
  }

  else
  {
    OUTLINED_FUNCTION_31_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *v2;
      swift_willThrow();
      OUTLINED_FUNCTION_19_3();

      OUTLINED_FUNCTION_9();
      goto LABEL_11;
    }

    v6 = v0[9];
    OUTLINED_FUNCTION_15_1();
    if (!v3)
    {
      v15 = v0[24];
      v14 = v0[25];
      v16 = v0[21];
      v17 = v0[14];
      OUTLINED_FUNCTION_18_2();
      v19 = *(v18 + 32);
      OUTLINED_FUNCTION_30_0();
      v20();
      OUTLINED_FUNCTION_29_1();
      sub_1BF07AB8C(v21);

      OUTLINED_FUNCTION_1_4();
LABEL_11:
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

    v7 = *(MEMORY[0x1E69E8708] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[28] = v8;
    *v8 = v9;
    v8[1] = sub_1BF07A1BC;
    v10 = v0[26];
    v11 = v0[14];
    v12 = v0[3];
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_1();

    MEMORY[0x1EEE6DAC8]();
  }
}

uint64_t sub_1BF07A1BC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1BF07A2B4()
{
  v1 = v0[14];
  v2 = v0[11];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
  }

  else
  {
    v3 = v0[9];
    OUTLINED_FUNCTION_15_1();
    if (!v4)
    {
      v7 = v0[24];
      v6 = v0[25];
      v8 = v0[21];
      v9 = v0[17];
      OUTLINED_FUNCTION_18_2();
      v11 = *(v10 + 32);
      OUTLINED_FUNCTION_30_0();
      v12();
      OUTLINED_FUNCTION_29_1();
      sub_1BF07AB8C(v13);

      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_20(v2);
    (*(v5 + 8))(v1, v2);
  }

  sub_1BF17B49C();
  OUTLINED_FUNCTION_17_1();
}

uint64_t sub_1BF07A454()
{
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_19_3();

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF07A4E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_1BF07A5E4;

  return v12(a1);
}

uint64_t sub_1BF07A5E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1BF07A6FC()
{
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(*(v0 + 16), 0, 1, *(v0 + 24));
  OUTLINED_FUNCTION_1_4();

  return v1();
}

uint64_t sub_1BF07A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  v12 = *(a6 - 8);
  *(v8 + 88) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 104) = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  *(v8 + 112) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  v17 = *(MEMORY[0x1E69E8938] + 4);
  v18 = swift_task_alloc();
  *(v8 + 128) = v18;
  *v18 = v8;
  v18[1] = sub_1BF07A904;

  return MEMORY[0x1EEE6DE58](a5, v8 + 16, a6, a8);
}

uint64_t sub_1BF07A904()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF07A9FC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[6];
  (*(v0[14] + 16))(v0[15], v0[7], v0[13]);
  (*(v3 + 16))(v1, v5, v4);
  sub_1BF07C728();
  swift_allocError();
  v6 = OUTLINED_FUNCTION_31_1();
  sub_1BF077ED4(v6, v7, v4, v8);
  swift_willThrow();

  OUTLINED_FUNCTION_9();

  return v9();
}

uint64_t sub_1BF07AAF8()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  __swift_storeEnumTagSinglePayload(v4, 1, 1, v3);

  OUTLINED_FUNCTION_1_4();

  return v5();
}

uint64_t sub_1BF07AB8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1BF17AE6C();
  v3 = sub_1BEFF79E8();
  v4 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DAE8](v1, v2, v3, v4);
}

uint64_t sub_1BF07ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = *(MEMORY[0x1E69E8700] + 4);
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1BF07AC98;

  return MEMORY[0x1EEE6DAB8](a1, a4);
}

uint64_t sub_1BF07AC98()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[5] = v0;

  if (v0)
  {
    if (v3[2])
    {
      v9 = v3[3];
      swift_getObjectType();
      v10 = sub_1BF17A6AC();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1BF07ADF0, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v13();
  }
}

uint64_t withCancellation<A, B>(at:on:operation:)()
{
  OUTLINED_FUNCTION_5();
  v0[8] = v1;
  v0[9] = v2;
  OUTLINED_FUNCTION_22_1(v3, v4, v5, v6, v7, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  v10 = sub_1BF17AE6C();
  v0[11] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v0[12] = v11;
  v13 = *(v12 + 64);
  v0[13] = OUTLINED_FUNCTION_24();
  v14 = *(AssociatedTypeWitness - 8);
  v0[14] = v14;
  v15 = *(v14 + 64);
  v0[15] = OUTLINED_FUNCTION_24();
  v16 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

{
  OUTLINED_FUNCTION_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1BF035DD4;

  return sub_1BF078DD0();
}

uint64_t sub_1BF07AF28()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[10];
  (*(v0[12] + 16))(v0[13], v0[3], v0[11]);
  OUTLINED_FUNCTION_15_1();
  if (v2)
  {
    v3 = v0[5];
    (*(v0[12] + 8))(v0[13], v0[11]);
    v20 = (v3 + *v3);
    v4 = v3[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[18] = v5;
    *v5 = v6;
    v5[1] = sub_1BF07B264;
    v7 = v0[6];
    v8 = v0[2];

    return v20(v8);
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[13], v0[10]);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_1();
    v0[16] = v10;
    *v10 = v11;
    v10[1] = sub_1BF07B0F0;
    v12 = v0[15];
    v13 = v0[8];
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v17 = v0[4];
    v18 = v0[5];
    v19 = v0[2];

    return sub_1BF078DD0();
  }
}

uint64_t sub_1BF07B0F0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF07B1E8()
{
  OUTLINED_FUNCTION_5();
  (*(v0[14] + 8))(v0[15], v0[10]);
  v1 = v0[15];
  v2 = v0[13];

  OUTLINED_FUNCTION_1_4();

  return v3();
}

uint64_t sub_1BF07B264()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 104);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1BF07B38C()
{
  OUTLINED_FUNCTION_5();
  (*(v0[14] + 8))(v0[15], v0[10]);
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  OUTLINED_FUNCTION_9();

  return v4();
}

uint64_t withCancellation<A, B>(after:on:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_5();
  *(v10 + 96) = a9;
  *(v10 + 104) = a10;
  *(v10 + 80) = v11;
  *(v10 + 88) = v12;
  *(v10 + 64) = v13;
  *(v10 + 72) = v14;
  *(v10 + 33) = v15;
  *(v10 + 48) = v16;
  *(v10 + 56) = v17;
  *(v10 + 40) = v18;
  *(v10 + 112) = swift_getAssociatedTypeWitness();
  v19 = sub_1BF17AE6C();
  *(v10 + 120) = v19;
  OUTLINED_FUNCTION_6_3(v19);
  *(v10 + 128) = v20;
  v22 = *(v21 + 64);
  *(v10 + 136) = OUTLINED_FUNCTION_24();
  v23 = OUTLINED_FUNCTION_13_3();
  return OUTLINED_FUNCTION_32_1(v23, v24, v25);
}

uint64_t sub_1BF07B5C4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 64);
  v5 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v5 & 1;
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 88);
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  sub_1BF07C2FC(0, qword_1EBDCB3B8);
  sub_1BF078B5C(sub_1BF07BA2C, MEMORY[0x1E69E73E0], v2, v7, v1);

  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 144) = v8;
  *v8 = v9;
  v8[1] = sub_1BF07B710;
  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 40);

  return withCancellation<A, B>(at:on:operation:)();
}

uint64_t sub_1BF07B710()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF07B808()
{
  OUTLINED_FUNCTION_5();
  v0 = OUTLINED_FUNCTION_28_1();
  v1(v0);

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_1BF07B870()
{
  OUTLINED_FUNCTION_5();
  v1 = OUTLINED_FUNCTION_28_1();
  v2(v1);

  OUTLINED_FUNCTION_9();
  v4 = *(v0 + 152);

  return v3();
}

uint64_t sub_1BF07B8DC(uint64_t *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = v10 - v5;
  v8 = *a1;
  v7 = a1[1];
  sub_1BF17BABC();
  v10[0] = v8;
  v10[1] = v7;
  swift_getAssociatedConformanceWitness();
  sub_1BF17B3DC();
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

uint64_t sub_1BF07BA2C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_1BF07B8DC(a1);
}

uint64_t withCancellation<A, B>(after:on:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_5();
  v9[11] = v10;
  v9[12] = a9;
  v9[9] = v11;
  v9[10] = v12;
  v9[7] = v13;
  v9[8] = v14;
  v9[5] = v15;
  v9[6] = v16;
  v9[4] = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[13] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_3(AssociatedTypeWitness);
  v9[14] = v19;
  v21 = *(v20 + 64) + 15;
  v9[15] = swift_task_alloc();
  v9[16] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_13_3();
  return OUTLINED_FUNCTION_32_1(v22, v23, v24);
}

uint64_t sub_1BF07BB28()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[10];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  sub_1BF17BABC();
  v0[2] = v9;
  v0[3] = v8;
  swift_getAssociatedConformanceWitness();
  sub_1BF17B3DC();
  v10 = *(v4 + 8);
  v0[17] = v10;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[19] = v11;
  *v11 = v12;
  v11[1] = sub_1BF07BC68;
  v13 = v0[16];
  v14 = v0[11];
  v15 = v0[12];
  v16 = v0[9];
  v17 = v0[10];
  v18 = v0[7];
  v19 = v0[8];
  v20 = v0[4];
  OUTLINED_FUNCTION_23_1();

  return withCancellation<A, B>(at:on:operation:)();
}

uint64_t sub_1BF07BC68()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 160) = v0;

  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BF07BD60()
{
  OUTLINED_FUNCTION_5();
  v0 = OUTLINED_FUNCTION_27_1();
  v1(v0);

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_1BF07BDC8()
{
  OUTLINED_FUNCTION_5();
  v1 = OUTLINED_FUNCTION_27_1();
  v2(v1);

  OUTLINED_FUNCTION_9();
  v4 = *(v0 + 160);

  return v3();
}

uint64_t withCancellation<A>(after:operation:)()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_1(v1, v2, v3, v4, v5, v6);
  v7 = sub_1BF17B3CC();
  v0[8] = v7;
  OUTLINED_FUNCTION_6_3(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_24();
  v11 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BF07BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_5();
  v10 = v9[10];
  sub_1BF17BADC();
  v11 = swift_task_alloc();
  v9[11] = v11;
  sub_1BF07C120();
  *v11 = v9;
  v11[1] = sub_1BF07BF90;
  v12 = v9[10];
  v14 = v9[7];
  v13 = v9[8];
  v15 = v9[5];
  v16 = v9[6];
  v17 = v9[3];
  v18 = v9[4];
  v19 = v9[2];

  return withCancellation<A, B>(after:on:operation:)(v19, v17, v18, v12, v15, v16, v13, v14, a9);
}

uint64_t sub_1BF07BF90()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;
  *(v3 + 96) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {
    OUTLINED_FUNCTION_14();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = *(v3 + 80);

    OUTLINED_FUNCTION_9();

    return v16();
  }
}

unint64_t sub_1BF07C120()
{
  result = qword_1ED8ECBB8;
  if (!qword_1ED8ECBB8)
  {
    sub_1BF17B3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ECBB8);
  }

  return result;
}

uint64_t sub_1BF07C188()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_25_1();

  return sub_1BF0792AC(v11, v12, v13, v14, v15, v16, v17, v4);
}

uint64_t sub_1BF07C250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1BF07C294()
{
  if (!qword_1ED8ECBA0)
  {
    sub_1BF07C2FC(255, &qword_1ED8ED418);
    v0 = sub_1BF17BD3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECBA0);
    }
  }
}

void sub_1BF07C2FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BF17AE6C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1BF07C348()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF035DD0;

  return sub_1BF0795C8(v3, v7);
}

uint64_t sub_1BF07C41C()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_23_1();

  return sub_1BF079998(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1BF07C4F8()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_25_1();

  return sub_1BF07A4E8(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1BF07C5C0()
{
  OUTLINED_FUNCTION_26_1();
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  OUTLINED_FUNCTION_2_3();
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  OUTLINED_FUNCTION_12_3();
  v8 = v6 + *(v7 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v0[2];
  v12 = v0[3];
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_23_1();

  return sub_1BF07A75C(v14, v15, v16, v17, v18, v19, v20, v21);
}

unint64_t sub_1BF07C728()
{
  result = qword_1EBDCABD8;
  if (!qword_1EBDCABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCABD8);
  }

  return result;
}

uint64_t sub_1BF07C77C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = v5 + *(v6 + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);

  return sub_1BF0782E4();
}

uint64_t (*sub_1BF07C878(uint64_t a1))()
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_3(AssociatedTypeWitness);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = v1 + ((v11 + *(v10 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80));

  return sub_1BF078424(a1, v1 + v11, v12, v3, v4, v5);
}

uint64_t sub_1BF07C980()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t StartupTaskGroup.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BF179F3C();
}

uint64_t StartupTaskGroup.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

uint64_t Signpost.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF1794AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Signpost.comment.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v3;
}

uint64_t sub_1BF07CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Signpost();
  v11 = (a5 + *(v10 + 28));
  *v11 = a3;
  v11[1] = a4;
  v12 = sub_1BF1794AC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a5, a1, v12);
  sub_1BF1793DC();
  v15 = v14;
  v16 = *(v13 + 8);
  v16(a2, v12);
  result = (v16)(a1, v12);
  *(a5 + *(v10 + 32)) = v15;
  return result;
}

uint64_t Signpost.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF07CD5C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17E820;
  *(inited + 32) = 0x746E656D6D6F63;
  *(inited + 40) = 0xE700000000000000;
  v6 = (v2 + *(a1 + 28));
  v7 = v6[1];
  v8 = MEMORY[0x1E69E6158];
  *(inited + 48) = *v6;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  strcpy((inited + 80), "timeInterval");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v9 = *(v2 + *(a1 + 32));
  *(inited + 120) = MEMORY[0x1E69E63B0];
  *(inited + 96) = v9;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = sub_1BF179DAC();
  a2[3] = type metadata accessor for ShortDescription();
  a2[4] = &protocol witness table for ShortDescription<A>;
  return ShortDescription.init(name:_:)(0x74736F706E676953, 0xE800000000000000, v10, a2);
}

void sub_1BF07CD5C()
{
  if (!qword_1ED8E9B38)
  {
    sub_1BF07CDB4();
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9B38);
    }
  }
}

void sub_1BF07CDB4()
{
  if (!qword_1ED8E9C70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8E9C70);
    }
  }
}

uint64_t sub_1BF07CE1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF07CE58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF07CEAC()
{
  result = sub_1BF1794AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t XPCClass.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF07CFF4()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

unint64_t sub_1BF07D050()
{
  result = qword_1ED8EF4C0;
  if (!qword_1ED8EF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF4C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCClass(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for XPCClass(uint64_t result, int a2, int a3)
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

uint64_t Encodable.dictionary.getter()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = sub_1BF178D3C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  v4 = sub_1BF178D0C();
  v6 = v5;

  v7 = objc_opt_self();
  v8 = sub_1BF17933C();
  *&v17 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:4 error:&v17];

  v10 = v17;
  if (v9)
  {
    sub_1BF17B01C();
    sub_1BF014E18(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v10;
    v12 = sub_1BF17911C();

    swift_willThrow();
    sub_1BF014E18(v4, v6);

    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  if (*(&v18 + 1))
  {
    sub_1BEFF9A40(v15, &v14);
    sub_1BF050964();
    if (swift_dynamicCast())
    {
      result = v16;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL static CachePolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
LABEL_14:
      v7 = *a1;
      v8 = *a2;
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      goto LABEL_14;
    }

    return 0;
  }

  switch(*&v2)
  {
    case 1:
      if (v4 != 2 || *&v3 != 1)
      {
        return 0;
      }

      break;
    case 2:
      if (v4 != 2 || *&v3 != 2)
      {
        return 0;
      }

      break;
    case 3:
      if (v4 != 2 || *&v3 != 3)
      {
        return 0;
      }

      break;
    default:
      if (v4 != 2 || *&v3 != 0)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t CachePolicy.description.getter()
{
  if (!*(v0 + 8))
  {
    sub_1BF17B1EC();

    v3 = 0xD000000000000011;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v3 = 0x2865674178616DLL;
LABEL_5:
    sub_1BF07D51C();
    v1 = sub_1BF179D2C();
    MEMORY[0x1BFB52000](v1);

    MEMORY[0x1BFB52000](41, 0xE100000000000000);
    return v3;
  }

  result = 0x614365726F6E6769;
  switch(*v0)
  {
    case 1:
      result = 0x6E4F646568636163;
      break;
    case 2:
      result = 0x6143726566657270;
      break;
    case 3:
      result = 0x69736E6972746E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF07D51C()
{
  result = qword_1ED8ECC28;
  if (!qword_1ED8ECC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ECC28);
  }

  return result;
}

uint64_t sub_1BF07D574(uint64_t a1)
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

unint64_t sub_1BF07D5B8()
{
  result = qword_1EBDCB440;
  if (!qword_1EBDCB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB440);
  }

  return result;
}

unint64_t sub_1BF07D610()
{
  result = qword_1EBDCB448;
  if (!qword_1EBDCB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB448);
  }

  return result;
}

TeaFoundation::ManagerOptions sub_1BF07D6F8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = ManagerOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BF07D738@<X0>(uint64_t *a1@<X8>)
{
  result = ManagerOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagerOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ManagerOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

double sub_1BF07D7D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = xmmword_1BF17EBD0;
  v10 = 0u;
  v11 = 0u;
  v12[0] = a1;
  v12[1] = a2;
  v13 = xmmword_1BF17EBD0;
  v14 = 0u;
  v15 = 0u;
  sub_1BF083220(&v8, &v7);
  sub_1BF083258(v12);
  v4 = v9;
  *a3 = v8;
  a3[1] = v4;
  result = *&v10;
  v6 = v11;
  a3[2] = v10;
  a3[3] = v6;
  return result;
}

uint64_t sub_1BF07D844(uint64_t a1, unint64_t a2)
{
  v8[3] = MEMORY[0x1E6969080];
  v8[4] = MEMORY[0x1E6969078];
  v8[0] = a1;
  v8[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E6969080]);
  v5 = *v4;
  v6 = v4[1];
  sub_1BF014DC0(a1, a2);
  sub_1BF081DB4(v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void NetworkOperationURLSessionDelegate.addObserver(keepAliveObject:completion:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_observerLock);
  UnfairLock.lock()();
  type metadata accessor for DisposableObserver();
  swift_allocObject();

  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_17_2();
  sub_1BF081CBC(v2, v3);
  v4 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_sessionDidFinishObservers;
  v5 = OUTLINED_FUNCTION_38();
  MEMORY[0x1BFB52290](v5);
  sub_1BF005F5C(*((*(v0 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
  OUTLINED_FUNCTION_17_2();
  sub_1BF17A59C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t sub_1BF07D9CC()
{
  OUTLINED_FUNCTION_57_0();
  sub_1BF07DACC(v3, v4, &v22);
  v5 = v24;

  sub_1BEFE52DC(v5);
  v6 = *(v2 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
  UnfairLock.lock()();
  v26[0] = v22;
  v26[1] = v23;
  v27 = v1;
  v28 = v0;
  v29 = v25;
  v7 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  OUTLINED_FUNCTION_38();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF083220(v26, v30);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_35_0(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21);
  *(v2 + v7) = v30[0].n128_u64[0];

  swift_endAccess();
  os_unfair_lock_unlock(*(v6 + 16));
  v30[0] = v22;
  v30[1] = v23;
  v31 = v1;
  v32 = v0;
  v33 = v25;
  return sub_1BF083258(v30);
}

__n128 sub_1BF07DACC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
  UnfairLock.lock()();
  v9 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (*(v10 + 16) && (v11 = sub_1BF014CA8(), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + (v11 << 6));
    v15 = v13[2];
    v14 = v13[3];
    v16 = *v13;
    v26 = v13[1];
    v27 = v15;
    v25 = v16;
    v28 = v14;
    swift_endAccess();
    v17 = *(v8 + 16);
    sub_1BF083220(&v25, v24);
    v18 = v17;
  }

  else
  {
    swift_endAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF07D7D4(a1, a2, &v25);
    swift_beginAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF083220(&v25, v24);
    v19 = *(v4 + v9);
    swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *(v4 + v9);
    sub_1BF082980(&v25, a1, a2);
    *(v4 + v9) = v24[0];

    swift_endAccess();
    v18 = *(v8 + 16);
  }

  os_unfair_lock_unlock(v18);
  result = v28;
  v22 = v26;
  v21 = v27;
  v23 = v25.n128_i64[1];
  a3->n128_u64[0] = v25.n128_u64[0];
  a3->n128_u64[1] = v23;
  a3[1] = v22;
  a3[2] = v21;
  a3[3] = result;
  return result;
}

uint64_t sub_1BF07DC4C()
{
  OUTLINED_FUNCTION_57_0();
  sub_1BF07DACC(v3, v4, &v22);
  v5 = v25;

  sub_1BEFE52DC(v5);
  v6 = *(v2 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
  UnfairLock.lock()();
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v27 = v1;
  v28 = v0;
  v7 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  OUTLINED_FUNCTION_38();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF083220(v26, v29);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_35_0(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21);
  *(v2 + v7) = v29[0].n128_u64[0];

  swift_endAccess();
  os_unfair_lock_unlock(*(v6 + 16));
  v29[0] = v22;
  v29[1] = v23;
  v29[2] = v24;
  v30 = v1;
  v31 = v0;
  return sub_1BF083258(v29);
}

uint64_t NetworkOperationURLSessionDelegate.urlSession(_:didBecomeInvalidWithError:)(os_unfair_lock_s *a1, id a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = a2;
    if (qword_1ED8EE9F0 != -1)
    {
LABEL_23:
      OUTLINED_FUNCTION_0_8();
    }

    v5 = sub_1BF1797FC();
    __swift_project_value_buffer(v5, qword_1ED8F5298);
    v6 = v2;
    v7 = a1;
    v8 = sub_1BF1797DC();
    v9 = sub_1BF17ACBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_39_3();
      v11 = OUTLINED_FUNCTION_83();
      v12 = OUTLINED_FUNCTION_44_0();
      v55[0] = v12;
      *v10 = 136446466;
      v13 = sub_1BF07E1D8();
      v15 = sub_1BF01A7AC(v13, v14, v55);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2114;
      v16 = v2;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_1BEFE0000, v8, v9, "URL Session %{public}s became invalid with error: %{public}@", v10, 0x16u);
      OUTLINED_FUNCTION_2_4();
      sub_1BF02F3CC(v11, v18);
      OUTLINED_FUNCTION_28();
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v53 = v2;
  }

  else
  {
    if (qword_1ED8EE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v19 = sub_1BF1797FC();
    __swift_project_value_buffer(v19, qword_1ED8F5298);
    v20 = a1;
    v21 = sub_1BF1797DC();
    v22 = sub_1BF17ACBC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_70();
      v24 = OUTLINED_FUNCTION_44_0();
      v55[0] = v24;
      *v23 = 136446210;
      v25 = sub_1BF07E1D8();
      v27 = sub_1BF01A7AC(v25, v26, v55);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1BEFE0000, v21, v22, "Network operation %{public}s became invalid with unknown error", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    sub_1BF081F08();
    v28 = swift_allocError();
    *v29 = 0;
    v53 = v28;
    v30 = v28;
  }

  v31 = *(v51 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
  v32 = v2;
  UnfairLock.lock()();
  v33 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  swift_beginAccess();
  v50 = v31;
  v34 = *(v51 + v33);
  a1 = *(v31 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  os_unfair_lock_unlock(a1);
  v2 = (v34 + 64);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v39 = 0;
  v52 = v34;
  while (v37)
  {
LABEL_19:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = (*(v34 + 56) + ((v39 << 12) | (v41 << 6)));
    v43 = v42[4];
    if (v43)
    {
      v45 = v42[6];
      v44 = v42[7];
      a1 = v42[5];
      v46 = v42[2];
      v47 = v42[3];
      v54 = v42[1];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF014DC0(v46, v47);
      sub_1BF009984(v43);
      sub_1BF009984(v45);
      v43(v53, 0, 1);

      sub_1BF014E18(v46, v47);
      sub_1BEFE52DC(v43);
      v48 = v45;
      v34 = v52;
      sub_1BEFE52DC(v48);
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v40 >= v38)
    {
      break;
    }

    v37 = *(v2 + v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_19;
    }
  }

  UnfairLock.lock()();
  swift_beginAccess();
  sub_1BF082F24();
  sub_1BF179E5C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v50 + 16));
}

uint64_t sub_1BF07E1D8()
{
  result = sub_1BF0830E8([v0 configuration]);
  if (!v2)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

void NetworkOperationURLSessionDelegate.urlSession(_:task:didCompleteWithError:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_3();
  sub_1BF02C548(0, v6, v7, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v111 - v11;
  v13 = [v5 originalRequest];
  if (v13)
  {
    v14 = v13;
    sub_1BF178C1C();

    v15 = sub_1BF178C6C();
    v16 = 0;
  }

  else
  {
    v15 = sub_1BF178C6C();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v16, 1, v15);
  v17 = [v5 response];
  sub_1BF07EF94(v5, v12, v17, 0, v3);

  OUTLINED_FUNCTION_3_3();
  sub_1BF082FEC(v12, v18, v19);
  v20 = *&v1[OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock];
  UnfairLock.lock()();
  v21 = sub_1BF083158(v5);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    swift_beginAccess();
    v26 = *&v1[v25];
    if (*(v26 + 16))
    {
      v27 = sub_1BF014CA8();
      if (v28)
      {
        v122 = v25;
        v123 = v1;
        v115 = v24;
        v118 = v23;
        v29 = (*(v26 + 56) + (v27 << 6));
        v31 = v29[1];
        v30 = v29[2];
        v33 = v29[3];
        v32 = v29[4];
        v35 = v29[5];
        v34 = v29[6];
        v36 = v29[7];
        swift_endAccess();
        v113 = *&v20[4]._os_unfair_lock_opaque;
        v114 = v31;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v117 = v30;
        v121 = v33;
        sub_1BF014DC0(v30, v33);
        v116 = v35;
        sub_1BF009984(v32);
        v120 = v34;
        v119 = v36;
        sub_1BF009984(v34);
        os_unfair_lock_unlock(v113);
        if (v3)
        {
          v112 = v32;
          v37 = v3;
          if (qword_1ED8EE9F0 != -1)
          {
            OUTLINED_FUNCTION_0_8();
          }

          v38 = sub_1BF1797FC();
          v34 = __swift_project_value_buffer(v38, qword_1ED8F5298);
          v39 = v3;
          v40 = v5;
          v41 = sub_1BF1797DC();
          v42 = sub_1BF17ACBC();

          v43 = os_log_type_enabled(v41, v42);
          v111 = v40;
          if (v43)
          {
            v44 = OUTLINED_FUNCTION_39_3();
            v113 = v20;
            v20 = v44;
            v45 = OUTLINED_FUNCTION_83();
            v46 = OUTLINED_FUNCTION_44_0();
            *&v125[0] = v46;
            v20->_os_unfair_lock_opaque = 136446466;
            v47 = sub_1BF07F6F4();
            OUTLINED_FUNCTION_71(v47, v48);
            OUTLINED_FUNCTION_82();
            *&v20[1]._os_unfair_lock_opaque = v30;
            LOWORD(v20[3]._os_unfair_lock_opaque) = 2114;
            v49 = v3;
            v50 = _swift_stdlib_bridgeErrorToNSError();
            *(&v20[3]._os_unfair_lock_opaque + 2) = v50;
            *v45 = v50;
            _os_log_impl(&dword_1BEFE0000, v41, v42, "Network operation %{public}s failed with error: %{public}@", v20, 0x16u);
            OUTLINED_FUNCTION_2_4();
            sub_1BF02F3CC(v45, v51);
            OUTLINED_FUNCTION_28();
            __swift_destroy_boxed_opaque_existential_1(v46);
            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_15_2();
          }

          OUTLINED_FUNCTION_74();
          OUTLINED_FUNCTION_42_1();
          if (v41)
          {
            v52 = v3;
            sub_1BF009984(v41);
            (v41)(v3, 0, 1);

            sub_1BEFE52DC(v41);
            OUTLINED_FUNCTION_56_0();
LABEL_31:
            OUTLINED_FUNCTION_43_0();
LABEL_46:
            UnfairLock.lock()();
            swift_beginAccess();
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            sub_1BF082600(v124);

            v125[0] = v124[0];
            v125[1] = v124[1];
            v125[2] = v124[2];
            v125[3] = v124[3];
            sub_1BF0831B8(v125, &unk_1EBDCB488, &type metadata for NetworkOperationTask);
            swift_endAccess();
            os_unfair_lock_unlock(*&v20[4]._os_unfair_lock_opaque);

            sub_1BF014E18(v34, v121);
            sub_1BEFE52DC(v41);
            sub_1BEFE52DC(v30);

            goto LABEL_20;
          }

          v84 = v111;
          v30 = v123;
          v34 = sub_1BF1797DC();
          v85 = sub_1BF17ACBC();

          if (os_log_type_enabled(v34, v85))
          {
            v41 = OUTLINED_FUNCTION_39_3();
            v86 = swift_slowAlloc();
            v113 = v20;
            OUTLINED_FUNCTION_78_0(v86);
            *v41 = 136446466;
            v87 = sub_1BF07F6F4();
            OUTLINED_FUNCTION_72(v87, v88);
            OUTLINED_FUNCTION_65();
            *(v41 + 4) = v84;
            *(v41 + 12) = 2082;
            OUTLINED_FUNCTION_23_2();
            sub_1BF179DBC();
            OUTLINED_FUNCTION_66_0();
            OUTLINED_FUNCTION_67();
            OUTLINED_FUNCTION_48_0();

            *(v41 + 14) = v30;
            _os_log_impl(&dword_1BEFE0000, v34, v85, "Network operation %{public}s failed to find completion.  Tasks: %{public}s", v41, 0x16u);
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_15_2();
            OUTLINED_FUNCTION_42_1();
            OUTLINED_FUNCTION_28();

LABEL_34:
            OUTLINED_FUNCTION_43_0();
LABEL_39:
            OUTLINED_FUNCTION_56_0();
            OUTLINED_FUNCTION_79();
            goto LABEL_46;
          }

LABEL_36:
          OUTLINED_FUNCTION_43_0();
          goto LABEL_45;
        }

        v113 = v20;
        v67 = [v5 response];
        v41 = v32;
        if (v67)
        {
          v68 = v67;
          objc_opt_self();
          v69 = swift_dynamicCastObjCClass();
          if (v69)
          {
            v70 = v69;
            if (!sub_1BF081C58())
            {
              v112 = v32;
              if (qword_1ED8EE9F0 != -1)
              {
                OUTLINED_FUNCTION_0_8();
              }

              v94 = sub_1BF1797FC();
              __swift_project_value_buffer(v94, qword_1ED8F5298);
              v95 = v68;
              v96 = v5;
              v97 = v95;
              v41 = sub_1BF1797DC();
              v98 = sub_1BF17ACBC();

              if (os_log_type_enabled(v41, v98))
              {
                v99 = OUTLINED_FUNCTION_39_3();
                v100 = OUTLINED_FUNCTION_44_0();
                *&v125[0] = v100;
                *v99 = 136446466;
                v101 = sub_1BF07F6F4();
                OUTLINED_FUNCTION_72(v101, v102);
                OUTLINED_FUNCTION_65();
                *(v99 + 4) = v96;
                *(v99 + 12) = 2050;
                v103 = [v70 statusCode];

                *(v99 + 14) = v103;
                _os_log_impl(&dword_1BEFE0000, v41, v98, "Network operation %{public}s failed with HTTP status code: %{public}ld", v99, 0x16u);
                __swift_destroy_boxed_opaque_existential_1(v100);
                OUTLINED_FUNCTION_28();
                OUTLINED_FUNCTION_28();
              }

              else
              {
              }

              v20 = v113;
              OUTLINED_FUNCTION_74();
              OUTLINED_FUNCTION_42_1();
              if (v41)
              {
                sub_1BF081F08();
                v30 = swift_allocError();
                *v104 = v70;
                v34 = v97;
                OUTLINED_FUNCTION_79();
                sub_1BF009984(v105);
                (v41)(v30, 0, 1);

                sub_1BEFE52DC(v41);
                OUTLINED_FUNCTION_43_0();
                OUTLINED_FUNCTION_56_0();
                goto LABEL_46;
              }

              v106 = v96;
              v30 = v123;
              v34 = sub_1BF1797DC();
              v107 = sub_1BF17ACBC();

              if (os_log_type_enabled(v34, v107))
              {
                OUTLINED_FUNCTION_39_3();
                v108 = OUTLINED_FUNCTION_29_2();
                OUTLINED_FUNCTION_78_0(v108);
                *v96 = 136446466;
                v109 = sub_1BF07F6F4();
                OUTLINED_FUNCTION_72(v109, v110);
                OUTLINED_FUNCTION_65();
                OUTLINED_FUNCTION_46_1();
                OUTLINED_FUNCTION_23_2();
                sub_1BF179DBC();
                OUTLINED_FUNCTION_66_0();
                OUTLINED_FUNCTION_67();
                OUTLINED_FUNCTION_48_0();
                OUTLINED_FUNCTION_42_1();

                *(v96 + 14) = v30;
                OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v34, v107, "Network operation %{public}s failed to find completion.  Tasks: %{public}s");
                OUTLINED_FUNCTION_37_0();
                OUTLINED_FUNCTION_15_2();
                OUTLINED_FUNCTION_28();

                goto LABEL_34;
              }

              goto LABEL_36;
            }
          }
        }

        if (qword_1ED8EE9F0 != -1)
        {
          OUTLINED_FUNCTION_0_8();
        }

        v71 = sub_1BF1797FC();
        __swift_project_value_buffer(v71, qword_1ED8F5298);
        v72 = v5;
        v73 = sub_1BF1797DC();
        v74 = sub_1BF17ACDC();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = OUTLINED_FUNCTION_70();
          v76 = OUTLINED_FUNCTION_44_0();
          *&v125[0] = v76;
          *v75 = 136446210;
          v77 = sub_1BF07F6F4();
          v34 = v32;
          v79 = OUTLINED_FUNCTION_71(v77, v78);

          *(v75 + 4) = v79;
          v41 = v32;
          _os_log_impl(&dword_1BEFE0000, v73, v74, "Network operation %{public}s did succeed", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          OUTLINED_FUNCTION_28();
          OUTLINED_FUNCTION_28();
        }

        v20 = v113;
        OUTLINED_FUNCTION_74();
        if (v41)
        {
          OUTLINED_FUNCTION_79();
          sub_1BF009984(v80);
          OUTLINED_FUNCTION_56_0();
          v30 = v121;
          sub_1BF014DC0(v34, v121);
          v81 = OUTLINED_FUNCTION_31_3();
          (v41)(v81);
          v82 = OUTLINED_FUNCTION_31_3();
          sub_1BF014E18(v82, v83);
          sub_1BEFE52DC(v41);
          goto LABEL_31;
        }

        v112 = 0;
        v89 = v72;
        v30 = v123;
        v34 = sub_1BF1797DC();
        v90 = sub_1BF17ACBC();

        if (os_log_type_enabled(v34, v90))
        {
          OUTLINED_FUNCTION_39_3();
          v91 = OUTLINED_FUNCTION_29_2();
          OUTLINED_FUNCTION_78_0(v91);
          *v73 = 136446466;
          v92 = sub_1BF07F6F4();
          OUTLINED_FUNCTION_72(v92, v93);
          OUTLINED_FUNCTION_65();
          OUTLINED_FUNCTION_46_1();
          OUTLINED_FUNCTION_23_2();
          sub_1BF179DBC();
          OUTLINED_FUNCTION_66_0();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_48_0();

          *(v73 + 14) = v30;
          OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v34, v90, "Network operation %{public}s failed to find completion.  Tasks: %{public}s");
          OUTLINED_FUNCTION_37_0();
          OUTLINED_FUNCTION_15_2();
          OUTLINED_FUNCTION_28();

          OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_42_1();
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_42_1();
LABEL_45:
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_74();
        goto LABEL_46;
      }
    }

    swift_endAccess();
  }

  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v53 = sub_1BF1797FC();
  __swift_project_value_buffer(v53, qword_1ED8F5298);
  v54 = v5;
  v55 = v1;
  v56 = sub_1BF1797DC();
  v57 = sub_1BF17ACBC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_39_3();
    *&v124[0] = swift_slowAlloc();
    *v58 = 136446466;
    v59 = sub_1BF07F6F4();
    sub_1BF01A7AC(v59, v60, v124);
    OUTLINED_FUNCTION_65();
    *(v58 + 4) = v54;
    *(v58 + 12) = 2082;
    v61 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    swift_beginAccess();
    v62 = *&v55[v61];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v63 = sub_1BF179DBC();
    v65 = v64;

    v66 = sub_1BF01A7AC(v63, v65, v124);

    *(v58 + 14) = v66;
    _os_log_impl(&dword_1BEFE0000, v56, v57, "Network operation request: %{public}s failed to find existing task.  Tasks: %{public}s", v58, 0x16u);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  os_unfair_lock_unlock(*&v20[4]._os_unfair_lock_opaque);
LABEL_20:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF07EF94(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  sub_1BF02C548(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  v23 = sub_1BF083158(a1);
  if (v24)
  {
    sub_1BF07DACC(v23, v24, &v64);

    v25 = v65;
    v26 = v66;
    sub_1BF014DC0(v65, v66);
    v27 = a4;
    v28 = a4;
    v29 = a3;
    v30 = a3;
    v31 = v29;
    v61 = v30;
    v62 = v27;
    v32 = sub_1BF080A30(v25, v26, v30, v27);
    v34 = v33;
    sub_1BF014E18(v25, v26);

    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v35 = sub_1BF1797FC();
    __swift_project_value_buffer(v35, qword_1ED8F5298);
    sub_1BF083F38(a2, v22, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v36 = sub_1BF1797DC();
    v37 = sub_1BF17ACDC();

    if (os_log_type_enabled(v36, v37))
    {
      v59 = v32;
      v60 = a5;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v39;
      *v38 = 136446466;
      sub_1BF083F38(v22, v20, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
      v40 = sub_1BF178C6C();
      if (__swift_getEnumTagSinglePayload(v20, 1, v40) == 1)
      {
        v41 = 0x6E776F6E6B6E75;
        sub_1BF082FEC(v20, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
        v42 = 0xE700000000000000;
      }

      else
      {
        v41 = sub_1BF178BEC();
        v42 = v53;
        (*(*(v40 - 8) + 8))(v20, v40);
      }

      v52 = v61;
      sub_1BF082FEC(v22, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v54 = sub_1BF01A7AC(v41, v42, &v63);

      *(v38 + 4) = v54;
      *(v38 + 12) = 2082;
      v55 = sub_1BF01A7AC(v59, v34, &v63);

      *(v38 + 14) = v55;
      _os_log_impl(&dword_1BEFE0000, v36, v37, "Network operation request %{public}s received response (%{public}s)", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v39, -1, -1);
      MEMORY[0x1BFB547B0](v38, -1, -1);

      a5 = v60;
      v51 = v62;
    }

    else
    {

      sub_1BF082FEC(v22, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v52 = v61;
      v51 = v62;
    }

    if (v67)
    {
      v67(v52, v51, a5);
    }

    sub_1BF083258(&v64);
  }

  else
  {
    if (qword_1ED8EE9F0 != -1)
    {
      swift_once();
    }

    v43 = sub_1BF1797FC();
    __swift_project_value_buffer(v43, qword_1ED8F5298);
    sub_1BF083F38(a2, v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
    v44 = sub_1BF1797DC();
    v45 = sub_1BF17ACBC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64.n128_u64[0] = v47;
      *v46 = 136446210;
      sub_1BF083F38(v17, v14, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720], sub_1BF02C548);
      v48 = sub_1BF178C6C();
      if (__swift_getEnumTagSinglePayload(v14, 1, v48) == 1)
      {
        v49 = 0x6E776F6E6B6E75;
        sub_1BF082FEC(v14, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
        v50 = 0xE700000000000000;
      }

      else
      {
        v49 = sub_1BF178BEC();
        v50 = v56;
        (*(*(v48 - 8) + 8))(v14, v48);
      }

      sub_1BF082FEC(v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
      v57 = sub_1BF01A7AC(v49, v50, &v64);

      *(v46 + 4) = v57;
      _os_log_impl(&dword_1BEFE0000, v44, v45, "Network operation request %{public}s missing task description", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1BFB547B0](v47, -1, -1);
      MEMORY[0x1BFB547B0](v46, -1, -1);
    }

    else
    {

      sub_1BF082FEC(v17, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
    }
  }
}

uint64_t sub_1BF07F6F4()
{
  v1 = v0;
  sub_1BF02C548(0, &qword_1ED8EE440, MEMORY[0x1E6967EC8], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = [v1 originalRequest];
  if (v9)
  {
    v10 = v9;
    sub_1BF178C1C();

    v11 = sub_1BF178C6C();
    v12 = 0;
  }

  else
  {
    v11 = sub_1BF178C6C();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v12, 1, v11);
  sub_1BF083FA0(v6, v8, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
  sub_1BF178C6C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    sub_1BF082FEC(v8, &qword_1ED8EE440, MEMORY[0x1E6967EC8]);
    return 0x6E776F6E6B6E75;
  }

  else
  {
    v13 = sub_1BF178BEC();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  return v13;
}

Swift::Void __swiftcall NetworkOperationURLSessionDelegate.urlSession(_:task:didFinishCollecting:)(NSURLSession _, NSURLSessionTask task, NSURLSessionTaskMetrics didFinishCollecting)
{
  OUTLINED_FUNCTION_32();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_3_3();
  sub_1BF02C548(0, v10, v11, MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v17 = sub_1BF1797FC();
  __swift_project_value_buffer(v17, qword_1ED8F5298);
  v18 = v9;
  v19 = v7;
  v20 = sub_1BF1797DC();
  v21 = sub_1BF17ACDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_39_3();
    v39 = v5;
    v23 = v22;
    v24 = OUTLINED_FUNCTION_83();
    v25 = OUTLINED_FUNCTION_44_0();
    v40 = v25;
    *v23 = 136446466;
    v26 = sub_1BF07F6F4();
    sub_1BF01A7AC(v26, v27, &v40);
    OUTLINED_FUNCTION_82();
    *(v23 + 4) = v3;
    *(v23 + 12) = 2114;
    *(v23 + 14) = v19;
    *v24 = v19;
    v28 = v19;
    _os_log_impl(&dword_1BEFE0000, v20, v21, "Network operation %{public}s did finish collecting metrics: %{public}@", v23, 0x16u);
    OUTLINED_FUNCTION_2_4();
    sub_1BF02F3CC(v24, v29);
    OUTLINED_FUNCTION_28();
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v30 = [v18 originalRequest];
  if (v30)
  {
    v31 = v30;
    sub_1BF178C1C();

    v32 = sub_1BF178C6C();
    v33 = 0;
  }

  else
  {
    v32 = sub_1BF178C6C();
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v33, 1, v32);
  v34 = [v18 response];
  v35 = OUTLINED_FUNCTION_41_0();
  sub_1BF07EF94(v35, v36, v34, v19, 0);

  OUTLINED_FUNCTION_3_3();
  sub_1BF082FEC(v16, v37, v38);
  OUTLINED_FUNCTION_26_2();
}

void NetworkOperationURLSessionDelegate.urlSession(_:dataTask:didReceive:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1BF083158(a2);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (qword_1ED8EE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v9 = sub_1BF1797FC();
    __swift_project_value_buffer(v9, qword_1ED8F5298);
    v10 = a2;
    v11 = OUTLINED_FUNCTION_61();
    sub_1BF014DC0(v11, v12);
    v13 = sub_1BF1797DC();
    v14 = sub_1BF17ACDC();

    v15 = OUTLINED_FUNCTION_61();
    sub_1BF014E18(v15, v16);
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_39_3();
      v44[0].n128_u64[0] = OUTLINED_FUNCTION_29_2();
      *v41 = 136446466;
      v17 = sub_1BF07F6F4();
      v19 = sub_1BF01A7AC(v17, v18, v44);

      *&v41[4] = v19;
      *&v41[12] = 2082;
      OUTLINED_FUNCTION_61();
      v20 = sub_1BF17929C();
      v22 = sub_1BF01A7AC(v20, v21, v44);

      *&v41[14] = v22;
      OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v13, v14, "Network operation with request %{public}s received data (%{public}s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    sub_1BF07DACC(v7, v8, &v37);
    v23 = OUTLINED_FUNCTION_61();
    sub_1BF07D844(v23, v24);
    v25 = *(v3 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
    UnfairLock.lock()();
    v44[0] = v37;
    v44[1] = v38;
    v44[2] = v39;
    v44[3] = v40;
    v26 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    OUTLINED_FUNCTION_38();
    sub_1BF083220(v44, v41);
    v27 = *(v3 + v26);
    swift_isUniquelyReferenced_nonNull_native();
    *v41 = *(v3 + v26);
    sub_1BF082980(v44, v7, v8);
    *(v3 + v26) = *v41;

    swift_endAccess();
    os_unfair_lock_unlock(*(v25 + 16));
    *v41 = v37;
    *&v41[16] = v38;
    v42 = v39;
    v43 = v40;
    sub_1BF083258(v41);
  }

  else
  {
    if (qword_1ED8EE9F0 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v28 = sub_1BF1797FC();
    __swift_project_value_buffer(v28, qword_1ED8F5298);
    v29 = a2;
    oslog = sub_1BF1797DC();
    v30 = sub_1BF17ACBC();

    if (os_log_type_enabled(oslog, v30))
    {
      v31 = OUTLINED_FUNCTION_70();
      v32 = OUTLINED_FUNCTION_44_0();
      v44[0].n128_u64[0] = v32;
      *v31 = 136446210;
      v33 = sub_1BF07F6F4();
      v35 = sub_1BF01A7AC(v33, v34, v44);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1BEFE0000, oslog, v30, "Error: Missing task identifier for request %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    else
    {
    }
  }
}

void NetworkOperationURLSessionDelegate.urlSession(_:downloadTask:didFinishDownloadingTo:)()
{
  OUTLINED_FUNCTION_32();
  v75 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BF17923C();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1ED8F5298);
  (*(v9 + 16))(v14, v3, v6);
  v16 = v5;
  v17 = sub_1BF1797DC();
  v18 = sub_1BF17ACDC();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_39_3();
    *&v81[0] = OUTLINED_FUNCTION_29_2();
    *v1 = 136446466;
    v19 = sub_1BF07F6F4();
    v21 = OUTLINED_FUNCTION_71(v19, v20);

    *(v1 + 4) = v21;
    *(v1 + 12) = 2082;
    v22 = sub_1BF17913C();
    v24 = v23;
    v25 = *(v9 + 8);
    v26 = OUTLINED_FUNCTION_17_2();
    v27(v26);
    v28 = sub_1BF01A7AC(v22, v24, v81);

    *(v1 + 14) = v28;
    OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v17, v18, "Network operation with request %{public}s finished downloading data to location (%{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  else
  {

    v29 = *(v9 + 8);
    v30 = OUTLINED_FUNCTION_17_2();
    v31(v30);
  }

  sub_1BF17927C();
  v32 = sub_1BF083158(v16);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = v16;
    v37 = OUTLINED_FUNCTION_17_2();
    sub_1BF014DC0(v37, v38);
    v39 = sub_1BF1797DC();
    v40 = sub_1BF17ACDC();

    v41 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v41, v42);
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_39_3();
      *&v81[0] = OUTLINED_FUNCTION_29_2();
      *v78 = 136446466;
      v43 = sub_1BF07F6F4();
      OUTLINED_FUNCTION_72(v43, v44);
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_46_1();
      v45 = OUTLINED_FUNCTION_17_2();
      sub_1BF014DC0(v45, v46);
      OUTLINED_FUNCTION_17_2();
      v47 = sub_1BF17929C();
      v48 = OUTLINED_FUNCTION_17_2();
      sub_1BF014E18(v48, v49);
      v50 = OUTLINED_FUNCTION_36();
      sub_1BF01A7AC(v50, v51, v52);
      OUTLINED_FUNCTION_82();
      *&v78[14] = v47;
      OUTLINED_FUNCTION_69_0(&dword_1BEFE0000, v39, v40, "Network operation with request %{public}s downloaded data (%{public}s)");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v53 = OUTLINED_FUNCTION_40_1();
    sub_1BF07DACC(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_17_2();
    sub_1BF07D844(v56, v57);
    v58 = *(v75 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock);
    UnfairLock.lock()();
    v81[0] = OUTLINED_FUNCTION_73();
    v81[1] = v59;
    v81[2] = v76;
    v81[3] = v77;
    v60 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
    swift_beginAccess();
    sub_1BF083220(v81, v78);
    v61 = *(v75 + v60);
    swift_isUniquelyReferenced_nonNull_native();
    *v78 = *(v75 + v60);
    sub_1BF082980(v81, v34, v35);
    *(v75 + v60) = *v78;

    swift_endAccess();
    os_unfair_lock_unlock(*(v58 + 16));
    v62 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v62, v63);
    *v78 = OUTLINED_FUNCTION_73();
    *&v78[16] = v64;
    v79 = v76;
    v80 = v77;
    sub_1BF083258(v78);
  }

  else
  {
    v65 = v16;
    v66 = sub_1BF1797DC();
    v67 = sub_1BF17ACBC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_70();
      v69 = OUTLINED_FUNCTION_44_0();
      *&v81[0] = v69;
      *v68 = 136446210;
      v70 = sub_1BF07F6F4();
      v72 = OUTLINED_FUNCTION_71(v70, v71);

      *(v68 + 4) = v72;
      _os_log_impl(&dword_1BEFE0000, v66, v67, "Error: Missing task identifier for request %{public}s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_28();
    }

    v73 = OUTLINED_FUNCTION_17_2();
    sub_1BF014E18(v73, v74);
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall NetworkOperationURLSessionDelegate.urlSessionDidFinishEvents(forBackgroundURLSession:)(NSURLSession forBackgroundURLSession)
{
  v2 = v1;
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v4 = sub_1BF1797FC();
  __swift_project_value_buffer(v4, qword_1ED8F5298);
  v5 = forBackgroundURLSession.super.isa;
  v6 = sub_1BF1797DC();
  v7 = sub_1BF17ACDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_70();
    v9 = OUTLINED_FUNCTION_44_0();
    v24 = v9;
    *v8 = 136446210;
    v10 = sub_1BF07E1D8();
    v12 = sub_1BF01A7AC(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BEFE0000, v6, v7, "Background URL session did finish for identifier: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v13 = *(v2 + OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_observerLock);
  UnfairLock.lock()();
  v14 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_sessionDidFinishObservers;
  swift_beginAccess();
  v15 = *(v2 + v14);
  *(v2 + v14) = MEMORY[0x1E69E7CC0];
  os_unfair_lock_unlock(*(v13 + 16));
  v16 = sub_1BEFE90B4(v15);
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  if (v16 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = OUTLINED_FUNCTION_41_0();
        v20 = MEMORY[0x1BFB53020](v19);
      }

      else
      {
        v20 = *(v15 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);

        v22(v23);
      }
    }

LABEL_14:

    return;
  }

  __break(1u);
}

uint64_t sub_1BF080A30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79 = a3;
  v80 = a1;
  v81 = a2;
  v5 = sub_1BF178DEC();
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1BF02C548(0, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - v13;
  sub_1BF02C548(0, &qword_1ED8EF860, MEMORY[0x1E6969530], v8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v76 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v76 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v76 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v76 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v76 - v32;
  v83 = v28;
  v84 = v5;
  v85 = &v76 - v32;
  if (a4)
  {
    v34 = [a4 transactionMetrics];
    sub_1BEFF9AF8(0, &qword_1ED8EDD20, 0x1E696AFA0);
    v35 = sub_1BF17A4DC();

    if (sub_1BEFE90B4(v35))
    {
      sub_1BF0F428C(0, (v35 & 0xC000000000000001) == 0, v35);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1BFB53020](0, v35);
      }

      else
      {
        v36 = *(v35 + 32);
      }

      v37 = v36;

      if (v37)
      {
        v38 = [v37 fetchStartDate];
        if (v38)
        {
          v39 = v38;
          sub_1BF17945C();

          v40 = sub_1BF1794AC();
          v41 = 0;
        }

        else
        {
          v40 = sub_1BF1794AC();
          v41 = 1;
        }

        v47 = 1;
        __swift_storeEnumTagSinglePayload(v25, v41, 1, v40);
        sub_1BF083FA0(v25, v33, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v76 = v37;
        v48 = [v37 responseStartDate];
        if (v48)
        {
          v49 = v48;
          sub_1BF17945C();

          v47 = 0;
        }

        v50 = sub_1BF1794AC();
        v51 = 1;
        __swift_storeEnumTagSinglePayload(v22, v47, 1, v50);
        sub_1BF083FA0(v22, v31, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v52 = [v76 requestStartDate];
        if (v52)
        {
          v53 = v52;
          v44 = v31;
          sub_1BF17945C();

          v51 = 0;
        }

        else
        {
          v44 = v31;
        }

        v5 = v84;
        __swift_storeEnumTagSinglePayload(v19, v51, 1, v50);
        sub_1BF083FA0(v19, v83, &qword_1ED8EF860, MEMORY[0x1E6969530]);
        v45 = v76;
        goto LABEL_18;
      }
    }

    else
    {
    }

    v46 = sub_1BF1794AC();
    __swift_storeEnumTagSinglePayload(v33, 1, 1, v46);
    v44 = v31;
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v46);
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v46);
    v45 = 0;
    v5 = v84;
LABEL_18:
    v54 = [a4 taskInterval];
    sub_1BF178D9C();

    v43 = 0;
    goto LABEL_19;
  }

  v42 = sub_1BF1794AC();
  v43 = 1;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v42);
  v44 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v42);
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v42);
  v45 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v14, v43, 1, v5);
  sub_1BF02C548(0, &unk_1ED8EDD10, sub_1BF083DE0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17EBE0;
  *(inited + 32) = 0x6F43737574617473;
  *(inited + 40) = 0xEA00000000006564;
  if (v79 && (objc_opt_self(), (v56 = swift_dynamicCastObjCClass()) != 0))
  {
    v57 = [v56 statusCode];
    *(inited + 72) = MEMORY[0x1E69E6530];
    *(inited + 48) = v57;
  }

  else
  {
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1702521203;
  *(inited + 88) = 0xE400000000000000;
  v58 = objc_opt_self();
  v59 = [v58 stringFromByteCount:MEMORY[0x1BFB51150](v80 countStyle:{v81), 2}];
  v60 = sub_1BF17A0AC();
  v62 = v61;

  v63 = MEMORY[0x1E69E6158];
  *(inited + 96) = v60;
  *(inited + 104) = v62;
  *(inited + 120) = v63;
  *(inited + 128) = 0x646575657571;
  *(inited + 136) = 0xE600000000000000;
  MEMORY[0x1EEE9AC00](v64);
  *(&v76 - 2) = v14;
  v65 = sub_1BF1132A8(sub_1BF083E70, (&v76 - 4), (inited + 144));
  *(inited + 176) = 1650881652;
  *(inited + 184) = 0xE400000000000000;
  MEMORY[0x1EEE9AC00](v65);
  v66 = v83;
  *(&v76 - 2) = v83;
  sub_1BF1132A8(sub_1BF083ED4, (&v76 - 4), (inited + 192));
  *(inited + 224) = 0x6C61746F74;
  *(inited + 232) = 0xE500000000000000;
  v67 = v82;
  sub_1BF083F38(v14, v82, &unk_1ED8EE430, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1BF02C548);
  v68 = v84;
  if (__swift_getEnumTagSinglePayload(v67, 1, v84) == 1)
  {
    *(inited + 240) = 0u;
    *(inited + 256) = 0u;
  }

  else
  {
    v69 = v67;
    v71 = v77;
    v70 = v78;
    (*(v78 + 32))(v77, v69, v68);
    sub_1BF081954((inited + 240));
    (*(v70 + 8))(v71, v68);
  }

  sub_1BF0819DC(inited);
  v73 = v72;

  swift_setDeallocating();
  sub_1BF0C832C();
  v74 = MEMORY[0x1E6969530];
  sub_1BF082FEC(v44, &qword_1ED8EF860, MEMORY[0x1E6969530]);
  sub_1BF082FEC(v85, &qword_1ED8EF860, v74);
  sub_1BF082FEC(v14, &unk_1ED8EE430, MEMORY[0x1E6968130]);
  sub_1BF082FEC(v66, &qword_1ED8EF860, v74);
  return v73;
}

id NetworkOperationURLSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkOperationURLSessionDelegate.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_taskLock;
  v9 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v0[v3] = UnfairLock.init(options:)(&v9);
  v4 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_runningTasks;
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[v4] = sub_1BF179DAC();
  v6 = OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_observerLock;
  v9 = 1;
  swift_allocObject();
  *&v1[v6] = UnfairLock.init(options:)(&v9);
  *&v1[OBJC_IVAR____TtC13TeaFoundation34NetworkOperationURLSessionDelegate_sessionDidFinishObservers] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id NetworkOperationURLSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF08153C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BF1794AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF178DCC();
  sub_1BF1793DC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  v13[1] = sub_1BF081688(v8);
  v14 = sub_1BF17B6FC();
  v15 = v9;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  v11 = v14;
  v12 = v15;
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1BF081688(double a1)
{
  v1 = floor(a1 * 1000.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.22337204e18)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BF0816E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, unint64_t *a4@<X4>, void (*a5)(uint64_t)@<X5>, void (*a6)(char *, uint64_t)@<X6>, _OWORD *a7@<X8>)
{
  v27 = a1;
  v28 = a6;
  v29 = a7;
  v11 = a3(0);
  OUTLINED_FUNCTION_1(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = MEMORY[0x1E69E6720];
  sub_1BF02C548(0, a4, a5, MEMORY[0x1E69E6720]);
  v21 = *(*(v20 - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v27 - v23;
  sub_1BF083F38(a2, &v27 - v23, a4, a5, v19, sub_1BF02C548);
  result = __swift_getEnumTagSinglePayload(v24, 1, v11);
  if (result == 1)
  {
    v26 = v29;
    *v29 = 0u;
    v26[1] = 0u;
  }

  else
  {
    (*(v13 + 32))(v18, v24, v11);
    v28(v18, v27);
    result = (*(v13 + 8))(v18, v11);
    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BF0818CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1BF1793DC();
  sub_1BF081688(v2);
  v5 = sub_1BF17B6FC();
  v6 = v3;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_1BF081954@<X0>(uint64_t *a1@<X8>)
{
  sub_1BF178DDC();
  sub_1BF081688(v2);
  v5 = sub_1BF17B6FC();
  v6 = v3;
  result = MEMORY[0x1BFB52000](29549, 0xE200000000000000);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v6;
  return result;
}

void sub_1BF0819DC(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CA0];
  v14 = a1 + 32;
LABEL_2:
  for (i = v3 + 48 * v1; ; i += 48)
  {
    if (v2 == v1)
    {
      v18[0] = v4;
      sub_1BEFEC0B0(0, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1BF01B738();
      sub_1BF179F7C();

      return;
    }

    if (v1 >= v2)
    {
      break;
    }

    sub_1BF084014(i, v18);
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v7 = v18[0];
    v8 = v18[1];
    sub_1BF083F38(&v19, &v15, &qword_1ED8EFBA0, v5 + 8, MEMORY[0x1E69E6720], sub_1BEFEC0B0);
    if (v16)
    {
      sub_1BEFF9A40(&v15, v17);
      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      MEMORY[0x1BFB52000](v7, v8);
      MEMORY[0x1BFB52000](61, 0xE100000000000000);
      sub_1BF17B40C();
      v9 = v15;
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_1BF02F3CC(v18, sub_1BF083DE0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        sub_1BF0201A4();
        v4 = v12;
      }

      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1BF0201A4();
        v4 = v13;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 16 * v10 + 32) = v9;
      ++v1;
      v3 = v14;
      goto LABEL_2;
    }

    sub_1BF0831B8(&v15, &qword_1ED8EFBA0, v5 + 8);
    sub_1BF02F3CC(v18, sub_1BF083DE0);
    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BF081CBC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1BF081D2C()
{
  v1 = *(v0 + 24);

  sub_1BF042FB8(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF081DB4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v3 = v5;
      goto LABEL_6;
    case 2uLL:
      v2 = *(a1 + 24);
      a1 = *(a1 + 16);
      v3 = v2;
LABEL_6:
      result = sub_1BF083054(a1, v3);
      break;
    default:
      result = sub_1BF1792FC();
      break;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BF081F08()
{
  result = qword_1EBDCAA80[0];
  if (!qword_1EBDCAA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCAA80);
  }

  return result;
}

char *sub_1BF081F5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BEFEC0B0(0, &qword_1ED8EF478, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

unint64_t sub_1BF082068(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1BF17B12C();

  return sub_1BF082264(a1, v5);
}

unint64_t sub_1BF0820AC()
{
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1BFB53950](v0);
  sub_1BF17BB9C();
  v1 = OUTLINED_FUNCTION_75();

  return sub_1BF0008D0(v1, v2);
}

unint64_t sub_1BF082104(char a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1BEFEF8DC();

  return sub_1BF082328(a1, v4);
}

void sub_1BF082148()
{
  OUTLINED_FUNCTION_25_2();
  sub_1BF17923C();
  sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
  OUTLINED_FUNCTION_77_0();
  sub_1BF179F1C();
  sub_1BEFE7398();
}

unint64_t sub_1BF08220C()
{
  OUTLINED_FUNCTION_34_0();
  sub_1BF083514(v4, v0);
  sub_1BF17BB9C();
  v1 = OUTLINED_FUNCTION_75();

  return sub_1BF0824B4(v1, v2);
}

unint64_t sub_1BF082264(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1BF083BD8(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1BFB52F10](v8, a1);
    sub_1BF083C34(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BF082328(char a1, uint64_t a2)
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
          v7 = 0x6974616D6F747561;
          v8 = 0xEA00000000006E6FLL;
        }

        else
        {
          v8 = 0xE400000000000000;
          v7 = 1869440356;
        }
      }

      else
      {
        v7 = 0x616D726F66726570;
        v8 = 0xEB0000000065636ELL;
      }

      if (a1)
      {
        v9 = a1 == 1 ? 0x6974616D6F747561 : 1869440356;
        v10 = a1 == 1 ? 0xEA00000000006E6FLL : 0xE400000000000000;
      }

      else
      {
        v9 = 0x616D726F66726570;
        v10 = 0xEB0000000065636ELL;
      }

      if (v7 == v9 && v8 == v10)
      {
        break;
      }

      v12 = sub_1BF17B86C();

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

unint64_t sub_1BF0824B4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);
    v7 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v8 = sub_1BF083738(v7, a1);

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1BF082568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF014CA8();
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_9_7();
    sub_1BF050340();
    OUTLINED_FUNCTION_21_3();
    v14 = *(*(a10 + 48) + 16 * v12 + 8);

    OUTLINED_FUNCTION_64();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

double sub_1BF082600@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BF014CA8();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v9 = *(*v2 + 24);
    sub_1BF083D48();
    sub_1BF17B43C();
    v10 = *(*(v15 + 48) + 16 * v7 + 8);

    v11 = (*(v15 + 56) + (v7 << 6));
    v12 = v11[1];
    *a1 = *v11;
    a1[1] = v12;
    v13 = v11[3];
    a1[2] = v11[2];
    a1[3] = v13;
    sub_1BF17B45C();
    *v2 = v15;
  }

  else
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_1BF0826E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  v11 = v10;
  v13 = v12;
  v14 = *v10;
  sub_1BEFF6B90();
  if (v16)
  {
    v17 = v15;
    v18 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_7();
    sub_1BF02647C();
    OUTLINED_FUNCTION_21_3();
    v19 = *(*(a10 + 48) + 16 * v17 + 8);

    sub_1BEFE87B0((*(a10 + 56) + 40 * v17), v13);
    sub_1BEFE6EA8(0, &qword_1ED8EACC8);
    sub_1BF0264F8();
    sub_1BF17B45C();
    *v11 = a10;
  }

  else
  {
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

void sub_1BF0827B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  OUTLINED_FUNCTION_51_0();
  sub_1BF022978();
  if (v13)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_9_7();
    sub_1BF083C88();
    OUTLINED_FUNCTION_21_3();
    v14 = *(a10 + 48);
    v15 = sub_1BF17B42C();
    OUTLINED_FUNCTION_12(v15);
    (*(v16 + 8))(v14 + *(v16 + 72) * v12, v15);
    OUTLINED_FUNCTION_64();
    sub_1BF083CF8();
    sub_1BF17B45C();
    *v10 = a10;
  }

  else
  {
    *v11 = 0u;
    v11[1] = 0u;
  }

  OUTLINED_FUNCTION_85_0();
}

void sub_1BF082874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_86();
  v11 = v10;
  v12 = *v10;
  v13 = sub_1BF08220C();
  if (v14)
  {
    v15 = v13;
    v16 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_60_2();
    sub_1BF083438();
    OUTLINED_FUNCTION_81();
    v17 = *(*(a10 + 48) + 8 * v15);

    v18 = *(*(a10 + 56) + 8 * v15);
    sub_1BF027AD4();
    sub_1BF02C548(0, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    sub_1BEFE7240(&qword_1ED8ECBD8, sub_1BF027AD4);
    OUTLINED_FUNCTION_77_0();
    sub_1BF17B45C();
    *v11 = a10;
  }

  OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1BF082980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BF014CA8();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1BF083D48();
  if ((sub_1BF17B43C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1BF014CA8();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56) + (v11 << 6);

    return sub_1BF083DA8(a1, v17);
  }

  else
  {
    sub_1BF0BD508(v11, a2, a3, a1, v16);

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF082B24()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v5 = v4;
  v7 = OUTLINED_FUNCTION_16_2(v4, v6);
  v8 = sub_1BF00088C(v7);
  OUTLINED_FUNCTION_1_5(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_1();
  sub_1BF083B78();
  if (OUTLINED_FUNCTION_18_3())
  {
    v11 = *v1;
    sub_1BF00088C(v0);
    OUTLINED_FUNCTION_47_0();
    if (!v13)
    {
      goto LABEL_12;
    }

    v3 = v12;
  }

  if (v2)
  {
    *(*(*v1 + 56) + v3) = v5;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF0BD55C(v14, v15, v16, v17);
  }
}

void sub_1BF082BE0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_49_1();
  v4 = v3;
  OUTLINED_FUNCTION_16_2(v3, v5);
  v6 = sub_1BF0820AC();
  OUTLINED_FUNCTION_1_5(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for UnitsStyle();
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_53_1();
  sub_1BF083ABC();
  if (OUTLINED_FUNCTION_18_3())
  {
    v9 = *v0;
    sub_1BF0820AC();
    OUTLINED_FUNCTION_47_0();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    v12 = *(*v0 + 56);
    v13 = *(v12 + 8 * v2);
    *(v12 + 8 * v2) = v4;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_55();

    sub_1BF04E0B8(v16, v17, v18, v19);
  }
}

uint64_t sub_1BF082CB0()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v2, v3);
  v4 = sub_1BF014CA8();
  OUTLINED_FUNCTION_1_5(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF08334C();
  v7 = OUTLINED_FUNCTION_10_7();
  if (v7)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BF014CA8();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_22_2(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF082D70()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0;
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_16_2(v3, v4);
  v5 = sub_1BF08220C();
  OUTLINED_FUNCTION_1_5(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_1BF027AD4();
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  sub_1BF083438();
  if (OUTLINED_FUNCTION_18_3())
  {
    v12 = *v0;
    sub_1BF08220C();
    OUTLINED_FUNCTION_8_2();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = *(*v2 + 56);
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = v1;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_31_3();
    sub_1BF04E0B8(v19, v20, v1, v21);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF082E54()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_2(v4, v2);
  v7 = sub_1BF00088C(v6);
  OUTLINED_FUNCTION_1_5(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_1BF0833D8();
  if (OUTLINED_FUNCTION_18_3())
  {
    v14 = *v0;
    sub_1BF00088C(v3);
    OUTLINED_FUNCTION_8_2();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v1 + 56) + v12) = v5 & 1;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_31_3();
    OUTLINED_FUNCTION_55();

    sub_1BF0BD594(v17, v18, v19, v20);
  }
}

void sub_1BF082F24()
{
  if (!qword_1EBDCB478)
  {
    v0 = sub_1BF179E6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB478);
    }
  }
}

void sub_1BF082F84()
{
  if (!qword_1ED8EF4A0)
  {
    sub_1BEFF9AF8(255, &qword_1ED8EF730, 0x1E69E58C0);
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF4A0);
    }
  }
}

uint64_t sub_1BF082FEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF02C548(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF083054(uint64_t a1, uint64_t a2)
{
  result = sub_1BF178F3C();
  if (!result || (result = sub_1BF178F5C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BF178F4C();
      return sub_1BF1792FC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0830E8(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF17A0AC();

  return v3;
}

uint64_t sub_1BF083158(void *a1)
{
  v1 = [a1 taskDescription];
  if (v1)
  {
    v2 = v1;
    sub_1BF17A0AC();
  }

  return OUTLINED_FUNCTION_36();
}

uint64_t sub_1BF0831B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1BEFEC0B0(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0832AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BF0832EC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1BF08334C()
{
  if (!qword_1ED8EADC8)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EE9D0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADC8);
    }
  }
}

void sub_1BF0833D8()
{
  if (!qword_1EBDCA8C8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8C8);
    }
  }
}

void sub_1BF083438()
{
  if (!qword_1ED8E9BB8)
  {
    sub_1BF027AD4();
    sub_1BF02C548(255, &qword_1ED8E9CF8, sub_1BF027B68, type metadata accessor for Promise);
    sub_1BEFE7240(&qword_1ED8ECBD8, sub_1BF027AD4);
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9BB8);
    }
  }
}

uint64_t sub_1BF083514(const void *a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v9 = sub_1BF17BB9C();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v20[3] = v5 + 16;
  v20[4] = v9;
  v20[2] = v5 + 8;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v15 = 0;
  for (i = 0; v12; v15 ^= v19)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v19 = sub_1BF179F1C();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1BFB53950](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF083738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v34 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
      v28 = sub_1BF179F1C();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        sub_1BEFE7240(&qword_1ED8EACE8, MEMORY[0x1E6968FB0]);
        v32 = sub_1BF17A05C();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1BF083ABC()
{
  if (!qword_1EBDCA8C0)
  {
    type metadata accessor for UnitsStyle();
    sub_1BEFF9AF8(255, &unk_1EBDCA918, 0x1E696AB70);
    sub_1BEFE7240(&qword_1EBDCA910, type metadata accessor for UnitsStyle);
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8C0);
    }
  }
}

void sub_1BF083B78()
{
  if (!qword_1EBDCB5B8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB5B8);
    }
  }
}

void sub_1BF083C88()
{
  if (!qword_1EBDCA8B0)
  {
    sub_1BF17B42C();
    sub_1BF083CF8();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8B0);
    }
  }
}

unint64_t sub_1BF083CF8()
{
  result = qword_1EBDCA888;
  if (!qword_1EBDCA888)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCA888);
  }

  return result;
}

void sub_1BF083D48()
{
  if (!qword_1EBDCB5C8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB5C8);
    }
  }
}

void sub_1BF083DE0()
{
  if (!qword_1ED8EDD90)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EDD90);
    }
  }
}

uint64_t sub_1BF083F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 16);
  v10 = OUTLINED_FUNCTION_36();
  v11(v10);
  return a2;
}

uint64_t sub_1BF083FA0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BF02C548(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_36();
  v9(v8);
  return a2;
}

uint64_t sub_1BF084014(uint64_t a1, uint64_t a2)
{
  sub_1BF083DE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return sub_1BF01A7AC(v0, v1, (v2 - 160));
}

void String.FormatArgument.formatValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = MEMORY[0x1E69E72F0];
      v5 = MEMORY[0x1E69E7358];
    }

    else
    {
      v4 = MEMORY[0x1E69E7668];
      v5 = MEMORY[0x1E69E76D0];
    }

    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *a1 = v3;
  }

  else
  {
    v6 = v1[1];
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *(a1 + 32) = sub_1BF071CD8();
    *a1 = v3;
    *(a1 + 8) = v6;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF08416C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x3233746E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

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

uint64_t sub_1BF0842B0(unsigned __int8 a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0842F8(char a1)
{
  if (!a1)
  {
    return 0x676E69727473;
  }

  if (a1 == 1)
  {
    return 0x3233746E69;
  }

  return 0x3233746E6975;
}

uint64_t sub_1BF084358(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF17B86C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF0843C8()
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF084420()
{
  v1 = *v0;
  sub_1BF17BB6C();
  sub_1BF084288(v3, v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF08446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF08416C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF084494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF084270();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0844BC(uint64_t a1)
{
  v2 = sub_1BF085CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0844F8(uint64_t a1)
{
  v2 = sub_1BF085CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF084558@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF084344();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF084584(uint64_t a1)
{
  v2 = sub_1BF085C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0845C0(uint64_t a1)
{
  v2 = sub_1BF085C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF0845FC(uint64_t a1)
{
  v2 = sub_1BF085C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF084638(uint64_t a1)
{
  v2 = sub_1BF085C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF084674(uint64_t a1)
{
  v2 = sub_1BF085BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0846B0(uint64_t a1)
{
  v2 = sub_1BF085BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.FormatValidationError.hashValue.getter()
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF084780()
{
  sub_1BF17BB6C();
  OUTLINED_FUNCTION_13_5();
  return sub_1BF17BB9C();
}

uint64_t _sSS13TeaFoundationE25stringWithValidatedFormat_15formatArgumentsS2S_SaySSAAE0F8ArgumentOGtSSAAE0F15ValidationErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    *&v42 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v5 = v42;
    v40 = v3;
    v6 = (v3 + 48);
    v7 = v4;
    do
    {
      v8 = *v6;
      v6 += 24;
      v9 = qword_1BF17F528[v8];
      *&v42 = v5;
      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_1BF00DD60();
        v5 = v42;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v9;
      *(v11 + 40) = 0xE200000000000000;
      --v7;
    }

    while (v7);
    v3 = v40;
  }

  *&v42 = v5;
  sub_1BF02027C();
  sub_1BF01B738();
  sub_1BF179F7C();

  v12 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1BF070674(0, v4, 0);
    v12 = v41;
    v13 = (v3 + 48);
    v14 = MEMORY[0x1E69E7358];
    v15 = MEMORY[0x1E69E7668];
    v16 = MEMORY[0x1E69E76D0];
    do
    {
      v17 = *(v13 - 2);
      if (*v13)
      {
        if (*v13 == 1)
        {
          v43 = MEMORY[0x1E69E72F0];
          v44 = v14;
        }

        else
        {
          v43 = v15;
          v44 = v16;
        }

        LODWORD(v42) = v17;
      }

      else
      {
        v18 = *(v13 - 1);
        v43 = MEMORY[0x1E69E6158];
        v44 = sub_1BF071CD8();
        *&v42 = v17;
        *(&v42 + 1) = v18;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      v20 = *(v41 + 16);
      v19 = *(v41 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF070674(v19 > 1, v20 + 1, 1);
      }

      v13 += 24;
      *(v41 + 16) = v20 + 1;
      sub_1BEFE87B0(&v42, v41 + 40 * v20 + 32);
      --v4;
    }

    while (v4);
  }

  v21 = objc_opt_self();
  v22 = sub_1BF17A07C();
  v23 = sub_1BF17A07C();

  sub_1BF084C2C(v12);

  v24 = sub_1BF17A4CC();

  *&v42 = 0;
  v25 = [v21 tf:v22 stringWithValidatedFormat:v23 validFormatSpecifiers:v24 formatArguments:&v42 error:?];

  v26 = v42;
  if (v25)
  {
    v27 = sub_1BF17A0AC();
    v28 = v26;
  }

  else
  {
    v29 = v42;
    v30 = sub_1BF17911C();

    swift_willThrow();
    if (qword_1EBDCAFD8 != -1)
    {
      swift_once();
    }

    v31 = sub_1BF1797FC();
    __swift_project_value_buffer(v31, qword_1EBDCCE30);
    v32 = v30;
    v33 = sub_1BF1797DC();
    v27 = sub_1BF17ACBC();

    if (os_log_type_enabled(v33, v27))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = v30;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1BEFE0000, v33, v27, "Failed to validate string for localized formatting. Error=%{public}@", v34, 0xCu);
      sub_1BF085B60(v35);
      MEMORY[0x1BFB547B0](v35, -1, -1);
      MEMORY[0x1BFB547B0](v34, -1, -1);
    }

    sub_1BF085B0C();
    swift_willThrowTypedImpl();
  }

  v38 = *MEMORY[0x1E69E9840];
  return v27;
}

uint64_t sub_1BF084C2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1BF07062C();
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_1BEFE6A78(v4, &v7);
      sub_1BF05A928();
      swift_dynamicCast();
      v9 = v2;
      v5 = *(v2 + 16);
      if (v5 >= *(v2 + 24) >> 1)
      {
        sub_1BF07062C();
        v2 = v9;
      }

      *(v2 + 16) = v5 + 1;
      sub_1BEFF9A40(&v8, (v2 + 32 * v5 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t String.FormatArgument.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v3 = MEMORY[0x1E69E6F58];
  sub_1BF085D0C(0, v4, v5, v6, MEMORY[0x1E69E6F58]);
  v8 = OUTLINED_FUNCTION_1(v7);
  v64 = v9;
  v65 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v58 - v13;
  v14 = OUTLINED_FUNCTION_4_7();
  sub_1BF085D0C(v14, v15, v16, v17, v3);
  v19 = OUTLINED_FUNCTION_1(v18);
  v61 = v20;
  v62 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = OUTLINED_FUNCTION_3_4();
  sub_1BF085D0C(v26, v27, v28, v29, v3);
  v31 = OUTLINED_FUNCTION_1(v30);
  v59 = v32;
  v60 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v58 - v36;
  v38 = OUTLINED_FUNCTION_2_5();
  sub_1BF085D0C(v38, v39, v40, &_s14FormatArgumentO10CodingKeysON, v3);
  v42 = OUTLINED_FUNCTION_1(v41);
  v67 = v43;
  v68 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v58 - v47;
  v49 = v1[1];
  v66 = *v1;
  v58 = v49;
  v50 = *(v1 + 16);
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF085CB8();
  sub_1BF17BC1C();
  if (v50)
  {
    if (v50 == 1)
    {
      v70 = 1;
      sub_1BF085C10();
      OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO15Int32CodingKeysON, &v70);
      v52 = v62;
      sub_1BF17B6AC();
      (*(v61 + 8))(v25, v52);
    }

    else
    {
      v71 = 2;
      sub_1BF085BBC();
      v55 = v63;
      OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO16Uint32CodingKeysON, &v71);
      v56 = v65;
      sub_1BF17B6BC();
      (*(v64 + 8))(v55, v56);
    }
  }

  else
  {
    v53 = v59;
    v69 = 0;
    sub_1BF085C64();
    OUTLINED_FUNCTION_8_3(&_s14FormatArgumentO16StringCodingKeysON, &v69);
    v54 = v60;
    sub_1BF17B66C();
    (*(v53 + 8))(v37, v54);
  }

  return (*(v67 + 8))(v48, v50);
}

uint64_t String.FormatArgument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  OUTLINED_FUNCTION_5_3();
  v3 = MEMORY[0x1E69E6F48];
  sub_1BF085D0C(0, v4, v5, v6, MEMORY[0x1E69E6F48]);
  v8 = OUTLINED_FUNCTION_1(v7);
  v89 = v9;
  v90 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v92 = v86 - v13;
  v14 = OUTLINED_FUNCTION_4_7();
  sub_1BF085D0C(v14, v15, v16, v17, v3);
  v19 = OUTLINED_FUNCTION_1(v18);
  v87 = v20;
  v88 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23);
  v91 = v86 - v24;
  v25 = OUTLINED_FUNCTION_3_4();
  sub_1BF085D0C(v25, v26, v27, v28, v3);
  v30 = v29;
  OUTLINED_FUNCTION_1(v29);
  v86[2] = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_2_5();
  sub_1BF085D0C(v35, v36, v37, &_s14FormatArgumentO10CodingKeysON, v3);
  v39 = v38;
  OUTLINED_FUNCTION_1(v38);
  v94 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v86 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF085CB8();
  v47 = v95;
  sub_1BF17BBDC();
  if (v47)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v86[1] = v30;
  v95 = a1;
  v48 = sub_1BF17B62C();
  result = sub_1BF085D74(v48, 0);
  if (v51 == v52 >> 1)
  {
    v53 = v45;
LABEL_10:
    v62 = v39;
    v63 = sub_1BF17B29C();
    swift_allocError();
    v65 = v64;
    sub_1BF085E38();
    v67 = *(v66 + 48);
    *v65 = &type metadata for String.FormatArgument;
    sub_1BF17B5AC();
    sub_1BF17B27C();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v94 + 8))(v53, v62);
    a1 = v95;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v51 >= (v52 >> 1))
  {
    __break(1u);
  }

  else
  {
    v54 = v45;
    v55 = *(v50 + v51);
    sub_1BF085DBC(v51 + 1, v52 >> 1, result, v50, v51, v52);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 != v59 >> 1)
    {
      v53 = v54;
      goto LABEL_10;
    }

    v60 = v55;
    if (v55)
    {
      if (v55 == 1)
      {
        v97 = 1;
        sub_1BF085C10();
        OUTLINED_FUNCTION_12_4();
        v61 = v94;
        v69 = v39;
        v72 = sub_1BF17B60C();
        v86[0] = 0;
        swift_unknownObjectRelease();
        v73 = *(v87 + 8);
        v74 = OUTLINED_FUNCTION_6_5();
        v75(v74);
        (*(v61 + 8))(v54, v69);
        v76 = 0;
        v77 = v72;
        v78 = v93;
        v60 = 1;
      }

      else
      {
        LODWORD(v91) = v55;
        v98 = 2;
        sub_1BF085BBC();
        v68 = v92;
        OUTLINED_FUNCTION_12_4();
        v78 = v93;
        v71 = sub_1BF17B61C();
        v86[0] = 0;
        LODWORD(v77) = v71;
        swift_unknownObjectRelease();
        (*(v89 + 8))(v68, v90);
        v84 = OUTLINED_FUNCTION_10_8();
        v85(v84);
        v76 = 0;
        v77 = v77;
        v60 = v91;
      }
    }

    else
    {
      v96 = 0;
      sub_1BF085C64();
      sub_1BF17B59C();
      v70 = sub_1BF17B5CC();
      v86[0] = 0;
      v77 = v70;
      v76 = v79;
      swift_unknownObjectRelease();
      v80 = OUTLINED_FUNCTION_11_3();
      v81(v80);
      v82 = OUTLINED_FUNCTION_9_8();
      v83(v82, v39);
      v78 = v93;
    }

    *v78 = v77;
    *(v78 + 8) = v76;
    *(v78 + 16) = v60;
    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  return result;
}

BOOL static String.FormatArgument.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v6 == 1)
      {
        sub_1BF085F00(*a1, v3, 1);
        v7 = OUTLINED_FUNCTION_6_5();
        v9 = 1;
LABEL_9:
        sub_1BF085F00(v7, v8, v9);
        return v2 == v5;
      }
    }

    else if (v6 == 2)
    {
      sub_1BF085F00(*a1, v3, 2);
      v7 = OUTLINED_FUNCTION_6_5();
      v9 = 2;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (*(a2 + 16))
  {
    v10 = *(a1 + 8);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_10:
    v12 = OUTLINED_FUNCTION_6_5();
    sub_1BF085EEC(v12, v13, v6);
    sub_1BF085F00(v2, v3, v4);
    v14 = OUTLINED_FUNCTION_6_5();
    sub_1BF085F00(v14, v15, v6);
    return 0;
  }

  v16 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_1BF085EEC(v16, v3, 0);
    v29 = OUTLINED_FUNCTION_1_6();
    sub_1BF085EEC(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v32, v33, v34);
    v35 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v35, v36, v37);
    return 1;
  }

  else
  {
    v18 = sub_1BF17B86C();
    v19 = OUTLINED_FUNCTION_6_5();
    sub_1BF085EEC(v19, v20, 0);
    v21 = OUTLINED_FUNCTION_1_6();
    sub_1BF085EEC(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_1_6();
    sub_1BF085F00(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_6_5();
    sub_1BF085F00(v27, v28, 0);
    return v18 & 1;
  }
}

uint64_t String.FormatArgument.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t String.FormatArgument.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BF17B21C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t String.FormatArgument.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    MEMORY[0x1BFB53950](v2);
    return sub_1BF17BB8C();
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x1BFB53950](0);

    return sub_1BF179F3C();
  }
}

uint64_t String.FormatArgument.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF17BB6C();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1BFB53950](v4);
    sub_1BF17BB8C();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();
    sub_1BF179F3C();
  }

  return sub_1BF17BB9C();
}

uint64_t sub_1BF085ABC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1BF17BB6C();
  String.FormatArgument.hash(into:)();
  return sub_1BF17BB9C();
}

unint64_t sub_1BF085B0C()
{
  result = qword_1EBDCB5D0;
  if (!qword_1EBDCB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5D0);
  }

  return result;
}

uint64_t sub_1BF085B60(uint64_t a1)
{
  sub_1BF082F84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF085BBC()
{
  result = qword_1EBDCB5E0;
  if (!qword_1EBDCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5E0);
  }

  return result;
}

unint64_t sub_1BF085C10()
{
  result = qword_1EBDCB5F0;
  if (!qword_1EBDCB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB5F0);
  }

  return result;
}

unint64_t sub_1BF085C64()
{
  result = qword_1EBDCB600;
  if (!qword_1EBDCB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB600);
  }

  return result;
}

unint64_t sub_1BF085CB8()
{
  result = qword_1EBDCB610;
  if (!qword_1EBDCB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB610);
  }

  return result;
}

void sub_1BF085D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1BF085D74(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF085DBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BF085E38()
{
  if (!qword_1EBDCB638)
  {
    sub_1BF085EA8();
    sub_1BF17B28C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCB638);
    }
  }
}

unint64_t sub_1BF085EA8()
{
  result = qword_1EBDCB640;
  if (!qword_1EBDCB640)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBDCB640);
  }

  return result;
}

uint64_t sub_1BF085EEC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF085F00(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_1BF085F18()
{
  result = qword_1EBDCB648;
  if (!qword_1EBDCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB648);
  }

  return result;
}

unint64_t sub_1BF085F7C()
{
  result = qword_1EBDCB650;
  if (!qword_1EBDCB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB650);
  }

  return result;
}

unint64_t sub_1BF085FE0()
{
  result = qword_1EBDCB658;
  if (!qword_1EBDCB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB658);
  }

  return result;
}

unint64_t sub_1BF086050()
{
  result = qword_1EBDCB660;
  if (!qword_1EBDCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB660);
  }

  return result;
}

uint64_t sub_1BF0860B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0860F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
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

uint64_t _s14FormatArgumentO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14FormatArgumentO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for XPCArgumentBuilder(unsigned int *a1, int a2)
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

_BYTE *sub_1BF086328(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF0863D8()
{
  result = qword_1EBDCB668;
  if (!qword_1EBDCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB668);
  }

  return result;
}

unint64_t sub_1BF086430()
{
  result = qword_1EBDCB670;
  if (!qword_1EBDCB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB670);
  }

  return result;
}

unint64_t sub_1BF086488()
{
  result = qword_1EBDCB678;
  if (!qword_1EBDCB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB678);
  }

  return result;
}

unint64_t sub_1BF0864E0()
{
  result = qword_1EBDCB680;
  if (!qword_1EBDCB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB680);
  }

  return result;
}

unint64_t sub_1BF086538()
{
  result = qword_1EBDCB688;
  if (!qword_1EBDCB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB688);
  }

  return result;
}

unint64_t sub_1BF086590()
{
  result = qword_1EBDCB690;
  if (!qword_1EBDCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB690);
  }

  return result;
}

unint64_t sub_1BF0865E8()
{
  result = qword_1EBDCB698;
  if (!qword_1EBDCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB698);
  }

  return result;
}

unint64_t sub_1BF086640()
{
  result = qword_1EBDCB6A0;
  if (!qword_1EBDCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6A0);
  }

  return result;
}

unint64_t sub_1BF086698()
{
  result = qword_1EBDCB6A8;
  if (!qword_1EBDCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6A8);
  }

  return result;
}

unint64_t sub_1BF0866F0()
{
  result = qword_1EBDCB6B0;
  if (!qword_1EBDCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6B0);
  }

  return result;
}

unint64_t sub_1BF086748()
{
  result = qword_1EBDCB6B8;
  if (!qword_1EBDCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6B8);
  }

  return result;
}

unint64_t sub_1BF0867A0()
{
  result = qword_1EBDCB6C0;
  if (!qword_1EBDCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6C0);
  }

  return result;
}

uint64_t sub_1BF086810()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  sub_1BEFE52DC(*(v0 + 56));
  return v0;
}

uint64_t sub_1BF086848()
{
  sub_1BF086810();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

_BYTE *storeEnumTagSinglePayload for HandlerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF08695C()
{
  result = qword_1EBDCB6C8;
  if (!qword_1EBDCB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB6C8);
  }

  return result;
}

uint64_t sub_1BF0869B0(uint64_t a1, unint64_t a2)
{
  sub_1BF014DC0(a1, a2);
  v4 = *(sub_1BF086A58(a1, a2) + 16);
  v5 = sub_1BF17A18C();

  return v5;
}

uint64_t sub_1BF086A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF17A18C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF086A58(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF1793AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_1BF01A8B8(v10, 0);
      v14 = sub_1BF1792AC();
      sub_1BF014E18(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_1BF014E18(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v13;
  }
}

unint64_t sub_1BF086BDC()
{
  result = qword_1ED8EADA0;
  if (!qword_1ED8EADA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EADA0);
  }

  return result;
}

uint64_t *sub_1BF086C38()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_1BF086D04()
{
  v0 = sub_1BF086C38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t LRUCache.__allocating_init(maxSize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  LRUCache.init(maxSize:)(a1);
  return v2;
}

uint64_t LRUCache.values.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_9();
  v2 = v0[4];
  v3 = v1[10];
  v4 = v1[11];
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Node();
  v5 = v1[12];
  v6 = sub_1BF179E3C();
  swift_endAccess();
  v12[7] = v6;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v5;
  v7 = sub_1BF179E1C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1BEFF5EDC(sub_1BF086F84, v12, v7, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

uint64_t sub_1BF086EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, *(v5 + 16) + *(**(v5 + 16) + 104), a2);
}

uint64_t sub_1BF086F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1BF086EE4(a1, v2[3], a2);
}

Swift::Void __swiftcall LRUCache.clear(percentage:)(Swift::Double percentage)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v47 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = &v39 - v21;
  if (percentage >= 1.0)
  {
    OUTLINED_FUNCTION_7_2();
    v37 = *(v4 + 88);
    type metadata accessor for LRUCacheNode();
    type metadata accessor for Node();
    v38 = *(v4 + 96);
    sub_1BF179E9C();
    sub_1BF179E8C();
    swift_endAccess();
    OUTLINED_FUNCTION_6_6();
    DoublyLinkedList.removeAll()();

    v1[3] = 0;
    return;
  }

  if (percentage <= 0.0)
  {
    return;
  }

  OUTLINED_FUNCTION_3_5();
  v22 = v1[4];
  v23 = *(v4 + 88);
  OUTLINED_FUNCTION_5_4();
  type metadata accessor for Node();
  v24 = *(v4 + 96);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_1_8();
  v25 = sub_1BF179DFC();

  v26 = floor(v25 * percentage);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v26 < 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v26)
  {
    v27 = 0;
    v40 = (v14 + 16);
    v48 = (v14 + 8);
    v45 = (v7 + 8);
    v46 = (v14 + 32);
    v28 = v26;
    v42 = v26;
    do
    {
      v44 = v27;
      v29 = v2[5];
      OUTLINED_FUNCTION_3_5();
      v30 = *(v29 + 24);
      v43 = v28;
      if (v30)
      {
        OUTLINED_FUNCTION_3_5();
        v31 = v41;
        (*v40)(v41, *(v30 + 16) + *(**(v30 + 16) + 96), v5);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_1_8();
        sub_1BF179E9C();

        sub_1BF179D7C();
        swift_endAccess();
        (*v48)(v31, v5);

        OUTLINED_FUNCTION_6_6();
        DoublyLinkedList.remove(node:)(v30);

        v32 = v2[3];
        v33 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v33)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v2[3] = v34;
      }

      else
      {
        do
        {
          v35 = v2[4];
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          OUTLINED_FUNCTION_1_8();
          v36 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

          v49 = v36;
          OUTLINED_FUNCTION_1_8();
          sub_1BF179DCC();
          swift_getWitnessTable();
          sub_1BF17AB3C();
          if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
          {
            (*v45)(v12, v47);
          }

          else
          {
            (*v46)(v20, v12, v5);

            OUTLINED_FUNCTION_7_2();
            OUTLINED_FUNCTION_1_8();
            sub_1BF179E9C();
            sub_1BF179D7C();
            swift_endAccess();

            (*v48)(v20, v5);
          }

          --v28;
        }

        while (v28);
      }

      v27 = v44 + 1;
      v28 = v43 - 1;
    }

    while (v44 + 1 != v42);
  }
}

uint64_t LRUCache.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t LRUCache.__deallocating_deinit()
{
  LRUCache.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t static String.from<A>(string:)()
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v0 = OUTLINED_FUNCTION_5_5();
  return OUTLINED_FUNCTION_2_7(v0);
}

uint64_t static Int.from<A>(string:)(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8();

LABEL_67:
    sub_1BF07C2FC(0, &qword_1EBDCA940);
    v22 = OUTLINED_FUNCTION_5_5();
    return OUTLINED_FUNCTION_2_7(v22);
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

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1 && result)
        {
          do
          {
            OUTLINED_FUNCTION_15();
            if (!v8 & v7)
            {
              break;
            }

            OUTLINED_FUNCTION_0_9();
            if (!v8)
            {
              break;
            }

            if (__OFADD__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_44();
          }

          while (!v8);
        }

        goto LABEL_67;
      }

      goto LABEL_73;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v17 = 0;
        if (result)
        {
          do
          {
            v18 = *result - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v17;
            if ((v17 * 10) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++result;
            --v4;
          }

          while (v4);
        }
      }

      goto LABEL_67;
    }

    if (v4 >= 1)
    {
      if (v4 != 1 && result)
      {
        do
        {
          OUTLINED_FUNCTION_15();
          if (!v8 & v7)
          {
            break;
          }

          OUTLINED_FUNCTION_0_9();
          if (!v8)
          {
            break;
          }

          if (__OFSUB__(v10, v9))
          {
            break;
          }

          OUTLINED_FUNCTION_44();
        }

        while (!v8);
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        do
        {
          OUTLINED_FUNCTION_15();
          if (!v8 & v7)
          {
            break;
          }

          OUTLINED_FUNCTION_0_9();
          if (!v8)
          {
            break;
          }

          if (__OFADD__(v21, v20))
          {
            break;
          }

          OUTLINED_FUNCTION_44();
        }

        while (!v8);
      }

      goto LABEL_67;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_6_7();
        do
        {
          OUTLINED_FUNCTION_15();
          if (!v8 & v7)
          {
            break;
          }

          OUTLINED_FUNCTION_0_9();
          if (!v8)
          {
            break;
          }

          if (__OFSUB__(v12, v11))
          {
            break;
          }

          OUTLINED_FUNCTION_44();
        }

        while (!v8);
      }

      goto LABEL_67;
    }

    goto LABEL_72;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_6_7();
      do
      {
        OUTLINED_FUNCTION_15();
        if (!v8 & v7)
        {
          break;
        }

        OUTLINED_FUNCTION_0_9();
        if (!v8)
        {
          break;
        }

        if (__OFADD__(v16, v15))
        {
          break;
        }

        OUTLINED_FUNCTION_44();
      }

      while (!v8);
    }

    goto LABEL_67;
  }

LABEL_74:
  __break(1u);
  return result;
}

uint64_t static Float.from<A>(string:)()
{
  OUTLINED_FUNCTION_4_8();
  sub_1BF030B4C(v1, v0);
  sub_1BF07C2FC(0, &qword_1EBDCB6D0);
  v2 = swift_dynamicCast();
  return OUTLINED_FUNCTION_7_5(v2);
}

uint64_t static Double.from<A>(string:)()
{
  OUTLINED_FUNCTION_4_8();
  sub_1BF052280(v1, v0);
  sub_1BF07C2FC(0, &qword_1EBDCB6D8);
  v2 = swift_dynamicCast();
  return OUTLINED_FUNCTION_7_5(v2);
}

uint64_t static Bool.from<A>(string:)(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (!v2 && (sub_1BF17B86C() & 1) == 0 && (a1 != 0x65736C6166 || a2 != 0xE500000000000000))
  {
    sub_1BF17B86C();
  }

  sub_1BF07C2FC(0, &qword_1EBDCB6E0);
  v5 = OUTLINED_FUNCTION_5_5();
  return OUTLINED_FUNCTION_2_7(v5);
}

_BYTE *sub_1BF087A60@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL DisposableBag.isDisposed.getter()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t sub_1BF087B3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1BF087B88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t DisposableBag.__allocating_init(disposeOn:)()
{
  v0 = swift_allocObject();
  DisposableBag.init(disposeOn:)();
  return v0;
}

Swift::Void __swiftcall DisposableBag.dispose()()
{
  OUTLINED_FUNCTION_0_10();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t DisposableBag.deinit()
{
  sub_1BF042FB8(v0 + 16);
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CacheControlHeader.maxAge.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

void CacheControlHeader.init(response:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF087D38(a1);
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
}

unsigned __int8 *sub_1BF087D38(void *a1)
{
  v2 = sub_1BF17A07C();
  v3 = [a1 valueForHTTPHeaderField_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1BF17A0AC();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v8 = sub_1BF0884F4(0x3D6567612D78616DLL, 0xED0000292B645C28, 0);
  sub_1BF0885D0();
  sub_1BF088628();
  sub_1BF013170();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = sub_1BF17ADFC();
  v11 = v10;
  v49 = 0;
  v50 = 0;
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v6;
  v12[4] = &v49;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1BF088680;
  *(v13 + 24) = v12;
  v47 = sub_1BF08868C;
  v48 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = sub_1BF088450;
  v46 = &block_descriptor;
  v14 = _Block_copy(&aBlock);

  [v8 enumerateMatchesInString:v3 options:0 range:v9 usingBlock:{v11, v14}];

  _Block_release(v14);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_71:
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0750D8();
    v20 = v40;
    v42 = v41;

    if (v42)
    {
      goto LABEL_67;
    }

    goto LABEL_72;
  }

  if (!v50 || ((v16 = HIBYTE(v50) & 0xF, v17 = v49 & 0xFFFFFFFFFFFFLL, (v50 & 0x2000000000000000) != 0) ? (v18 = HIBYTE(v50) & 0xF) : (v18 = v49 & 0xFFFFFFFFFFFFLL), !v18))
  {

LABEL_67:

    return 0;
  }

  if ((v50 & 0x1000000000000000) != 0)
  {
    goto LABEL_71;
  }

  if ((v50 & 0x2000000000000000) == 0)
  {
    if ((v49 & 0x1000000000000000) != 0)
    {
      result = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v19 = *result;
    if (v19 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v20 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_65;
              }

              v29 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_65;
              }

              v20 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_65;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_76;
    }

    if (v19 != 45)
    {
      if (v17)
      {
        v20 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_65;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_65;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_65;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      v20 = 0;
      LOBYTE(v16) = 1;
LABEL_66:
      v38 = v16;

      if (v38)
      {
        goto LABEL_67;
      }

LABEL_72:
      v39 = sub_1BF0884C4(v20);

      return v39;
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_65;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_65;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_65;
            }

            ++v21;
            if (!--v16)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v16) = 0;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  aBlock = v49;
  v44 = v50 & 0xFFFFFFFFFFFFFFLL;
  if (v49 != 43)
  {
    if (v49 != 45)
    {
      if (v16)
      {
        v20 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v36 = *p_aBlock - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          ++p_aBlock;
          if (!--v16)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v16)
    {
      if (--v16)
      {
        v20 = 0;
        v24 = &aBlock + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v16)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  if (v16)
  {
    if (--v16)
    {
      v20 = 0;
      v30 = &aBlock + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v16)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CacheControlHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CacheControlHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_1BF088378(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a1)
  {
    v14 = a1;
    if ([v14 numberOfRanges] == 2)
    {
      [v14 rangeAtIndex_];
      sub_1BF17AC6C();
      if ((v8 & 1) == 0)
      {
        v9 = sub_1BF17A31C();
        v10 = MEMORY[0x1BFB51F50](v9);
        v12 = v11;

        v13 = a6[1];
        *a6 = v10;
        a6[1] = v12;

        *a3 = 1;
      }
    }
  }
}

void sub_1BF088450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

id sub_1BF0884F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF17A07C();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1BF17911C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BF0885D0()
{
  if (!qword_1ED8EAE48)
  {
    v0 = sub_1BF17AC8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE48);
    }
  }
}

unint64_t sub_1BF088628()
{
  result = qword_1ED8EAE40;
  if (!qword_1ED8EAE40)
  {
    sub_1BF0885D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EAE40);
  }

  return result;
}

uint64_t sub_1BF08868C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t FixedSizeTypeBinaryCodable.write(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1BF088D00(v8, sub_1BF088754, 0, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], MEMORY[0x1E69E7410], a8);
  sub_1BF17939C();
  return sub_1BF014E18(v10, v11);
}

uint64_t sub_1BF088754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1BF088784(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BF088784(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BF17924C();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1BFB51040]();
    }

    else
    {
      v6 = MEMORY[0x1BFB51060]();
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1BF088840(uint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  *&v43 = a1;
  *(&v43 + 1) = a2;
  sub_1BF089038();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if (swift_dynamicCast())
  {
    sub_1BEFE87B0(v41, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    sub_1BF17908C();
    v41[0] = v43;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    goto LABEL_59;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_1BF089094(v41);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v41[0] = a1;
    *(&v41[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v41;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1BF17B2FC();
  }

  sub_1BF089624(v4, v5, &v44);
  v6 = *(&v44 + 1);
  v7 = v44;
  if (*(&v44 + 1) >> 60 != 15)
  {
    v41[0] = v44;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v41[0] = MEMORY[0x1BFB510C0](v8);
  *(&v41[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v41[0]);
  v10 = sub_1BF089148(sub_1BF089838);
  v12 = *(&v41[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v41[0]);
  switch(*(&v41[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v41[0]) - LODWORD(v41[0]);
      if (__OFSUB__(DWORD1(v41[0]), v41[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v41[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v41[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v41[0] + 16);
      v20 = *(*&v41[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1BF1792DC();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v43 + 7) = 0;
      *&v43 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v41[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_0_11();
      v27 = sub_1BF0B603C(v31, v32, v33);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_1BF17A24C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_1BF17A28C();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v44 = v13;
      *(&v44 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v44 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_1BF17B2FC();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v34 = OUTLINED_FUNCTION_0_11();
      v17 = sub_1BF0B603C(v34, v35, v36);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_0_11();
    v17 = sub_1BF17A25C();
LABEL_46:
    *(&v43 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_1_9();
      sub_1BF1792FC();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_1_9();
    sub_1BF1792FC();
    sub_1BF00F5F4(v40, v6);
    goto LABEL_58;
  }

  sub_1BF00F5F4(v40, v6);
LABEL_59:
  v37 = v41[0];
  sub_1BF014DC0(*&v41[0], *(&v41[0] + 1));

  sub_1BF014E18(v37, *(&v37 + 1));
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}