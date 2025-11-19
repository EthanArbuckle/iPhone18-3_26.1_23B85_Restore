unsigned __int8 *sub_1000474B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

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
      v7 = v60;
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
                    goto LABEL_125;
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
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
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

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
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
                  goto LABEL_125;
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
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
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

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100047A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOBYTE(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
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

          v34 = v28 * a3;
          if ((v34 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 8));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 >> 8))
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFF00) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFFFF00) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOBYTE(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFF00) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 >> 8))
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100047FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
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
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_126;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_125;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_125;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        LOWORD(v28) = 0;
        v29 = a3 + 48;
        v30 = a3 + 55;
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        v15 = 1;
        while (1)
        {
          v32 = *result;
          if (v32 < 0x30 || v32 >= v29)
          {
            if (v32 < 0x41 || v32 >= v30)
            {
              v18 = 0;
              if (v32 < 0x61 || v32 >= v31)
              {
                goto LABEL_126;
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

          v34 = v28 * a3;
          if ((v34 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v34 + (v32 + v33);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        return (v18 | (v15 << 16));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v37 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v28) = 0;
        v54 = a3 + 55;
        v55 = a3 + 87;
        v56 = a3 + 48;
        if (a3 > 10)
        {
          v56 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v57 = &v62;
        v15 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v54)
            {
              v18 = 0;
              if (v58 < 0x61 || v58 >= v55)
              {
                goto LABEL_126;
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

          v60 = v28 * a3;
          if ((v60 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v60 + (v58 + v59);
          if ((v28 & 0x10000) != 0)
          {
            goto LABEL_125;
          }

          v57 = (v57 + 1);
          if (!--v37)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v28) = 0;
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
        v15 = 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v18 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_126;
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

          v45 = v28 * a3;
          if ((v45 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          v28 = v45 - (v43 + v44);
          if ((v28 & 0xFFFF0000) != 0)
          {
            goto LABEL_125;
          }

          ++v42;
          if (!--v38)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v37)
  {
    v46 = v37 - 1;
    if (v46)
    {
      LOWORD(v28) = 0;
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
      v15 = 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v18 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_126;
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

        v53 = v28 * a3;
        if ((v53 & 0xFFFF0000) != 0)
        {
          goto LABEL_125;
        }

        v28 = v53 + (v51 + v52);
        if ((v28 & 0x10000) != 0)
        {
          goto LABEL_125;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_124:
      v15 = 0;
      v18 = v28;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000485C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_128;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_127;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_127;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_128;
          }

          goto LABEL_66;
        }

LABEL_127:
        v18 = 0;
        v15 = 1;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_128;
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

          v37 = v31 * a3;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v38 = v35 + v36;
          v21 = __CFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_127;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_128;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_127;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_127;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_128:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_128;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v67 = v64 + v65;
          v21 = __CFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_127;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_128;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v47 + v48;
          v21 = v49 >= v50;
          v31 = v49 - v50;
          if (!v21)
          {
            goto LABEL_127;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_128;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_127;
        }

        v59 = v56 + v57;
        v21 = __CFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_127;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_126:
      v15 = 0;
      v18 = v31;
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_133:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100048B34(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045B5C();
    v39 = v38;

    v5 = v39;
    if ((v39 & 0x2000000000000000) == 0)
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
                    goto LABEL_127;
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
                goto LABEL_126;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_47:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_65;
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
        v30 = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        while (1)
        {
          v34 = *result;
          if (v34 < 0x30 || v34 >= v31)
          {
            if (v34 < 0x41 || v34 >= v32)
            {
              v17 = 0;
              if (v34 < 0x61 || v34 >= v33)
              {
                goto LABEL_127;
              }

              v35 = -87;
            }

            else
            {
              v35 = -55;
            }
          }

          else
          {
            v35 = -48;
          }

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v36 = v30 * a3;
          v37 = v34 + v35;
          v20 = __CFADD__(v36, v37);
          v30 = v36 + v37;
          if (v20)
          {
            goto LABEL_126;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_125;
          }
        }
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_126;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_65:
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

  v40 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v40)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v65 = v30 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v30 = v65 + v66;
          if (v20)
          {
            goto LABEL_126;
          }

          v62 = (v62 + 1);
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v40)
    {
      v41 = v40 - 1;
      if (v41)
      {
        v30 = 0;
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
                goto LABEL_127;
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

          if (!is_mul_ok(v30, a3))
          {
            goto LABEL_126;
          }

          v48 = v30 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v30 = v48 - v49;
          if (!v20)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v40)
  {
    v50 = v40 - 1;
    if (v50)
    {
      v30 = 0;
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
              goto LABEL_127;
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

        if (!is_mul_ok(v30, a3))
        {
          goto LABEL_126;
        }

        v57 = v30 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v30 = v57 + v58;
        if (v20)
        {
          goto LABEL_126;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_125:
      v17 = v30;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000490B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702195828 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736C6166 && a2 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

_BYTE *sub_1000491E8@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *sub_100049274@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1000492B8(uint64_t result, unint64_t a2)
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
    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100046384(result, a2, 10);

    v24 = (v6 >> 8) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 | ((v24 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
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
          LOBYTE(v6) = 0;
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

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
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

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
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
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
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
        LOBYTE(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
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

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
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

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1000495E4(uint64_t result, unint64_t a2)
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
    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_100046964(result, a2, 10);

    v24 = HIWORD(v6) & 1;
LABEL_63:
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v6;
    }

    return v25 & 0xFFFEFFFF | ((v24 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
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
          LOWORD(v6) = 0;
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

              v15 = (10 * v6);
              if (v15 != 10 * v6)
              {
                goto LABEL_61;
              }

              v6 = v15 + v14;
              if ((v15 + v14) != v6)
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

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = (10 * v6);
          if (v20 != 10 * v6)
          {
            break;
          }

          v6 = v20 + v19;
          if ((v20 + v19) != v6)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

            v9 = (10 * v6);
            if (v9 != 10 * v6)
            {
              goto LABEL_61;
            }

            v6 = v9 - v8;
            if ((v9 - v8) != v6)
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
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = (10 * v6);
          if (v23 != 10 * v6)
          {
            break;
          }

          v6 = v23 + v22;
          if ((v23 + v22) != v6)
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
        LOWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = (10 * v6);
          if (v12 != 10 * v6)
          {
            break;
          }

          v6 = v12 - v11;
          if ((v12 - v11) != v6)
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

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = (10 * v6);
        if (v18 != 10 * v6)
        {
          break;
        }

        v6 = v18 + v17;
        if ((v18 + v17) != v6)
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

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_100049910(uint64_t result, unint64_t a2)
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
    v6 = sub_100046F44(result, a2, 10);

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
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
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

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if (v20 != v20)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__OFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
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
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
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
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
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
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
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

uint64_t sub_100049BE8(uint64_t result, unint64_t a2)
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

LABEL_61:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_62;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
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

  v6 = sub_1000474B4(result, a2, 10);
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

uint64_t sub_100049EE4(uint64_t result, unint64_t a2)
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
    v6 = sub_100047A34(result, a2, 10);

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
      result = _StringObject.sharedUTF8.getter();
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

LABEL_61:
        LOBYTE(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 >> 8))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

uint64_t sub_10004A1F8(uint64_t result, unint64_t a2)
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
    v6 = sub_100047FFC(result, a2, 10);

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
      result = _StringObject.sharedUTF8.getter();
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

LABEL_61:
        LOWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        while (1)
        {
          v15 = *result - 48;
          if (v15 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v15;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

uint64_t sub_10004A50C(uint64_t result, unint64_t a2)
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
    v6 = sub_1000485C4(result, a2, 10);

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

LABEL_61:
        LODWORD(v6) = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        while (1)
        {
          v19 = *result - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v6;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v20 + v19;
          if (__CFADD__(v20, v19))
          {
            break;
          }

          ++result;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
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

uint64_t sub_10004A7E4(uint64_t result, unint64_t a2)
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
        result = _StringObject.sharedUTF8.getter();
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

LABEL_63:
          v6 = 0;
          LOBYTE(v3) = 1;
          goto LABEL_64;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v16 = *result - 48;
            if (v16 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v16);
            v6 = 10 * v6 + v16;
            if (v9)
            {
              break;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

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

  v6 = sub_100048B34(result, a2, 10);
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

void static ParsableArguments.exit(withError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
LABEL_13:
    exit(a1);
  }

  v5 = a1;
  swift_errorRetain();
  swift_errorRetain();
  sub_10007AC38(v5, v3, a3, 0, 1, v13);
  v6 = sub_10007C074(v3, a3);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v9 = v15;
  if (v8)
  {
    v10 = v6;
    v11 = v7;
    sub_1000021C0(&qword_1000B5698, &qword_100092930);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10008E640;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    if (!v9)
    {
      print(_:separator:terminator:)();

LABEL_12:
      LODWORD(a1) = v9;
      goto LABEL_13;
    }

    sub_10004B9AC();
    print<A>(_:separator:terminator:to:)();
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v9 = 64;
    }

    else
    {
      v9 = v14;
    }
  }

  goto LABEL_12;
}

unint64_t sub_10004AC48(unint64_t a1)
{
  v2 = *(*(sub_1000021C0(&qword_1000B5728, &qword_100092A18) - 8) + 64);
  __chkstk_darwin();
  v4 = v17 - v3;
  v18 = a1;
  swift_getMetatypeMetadata();
  v5 = String.init<A>(describing:)();
  v7 = sub_10004CE4C(95, 0xE100000000000000, v5, v6);
  v9 = v8;

  v18 = v7;
  v19 = v9;
  v17[0] = 0x736E6F6974706F5FLL;
  v17[1] = 0xE800000000000000;
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_100027B90();
  StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  v14 = v13;
  sub_100002BCC(v4, &qword_1000B5728, &qword_100092A18);
  if ((v14 & 1) == 0)
  {
    v15 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v15 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v12 >> 14 == 4 * v15)
    {
      String.subscript.getter();

      v7 = static String._fromSubstring(_:)();
    }
  }

  return v7;
}

uint64_t sub_10004AE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for OptionGroup();

  return OptionGroup.wrappedValue.getter(v5, a2);
}

uint64_t sub_10004AE84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10004AEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_10004AE84(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_10004AF30@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = static ExitCode.failure.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10004AF60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_10004AFB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_10004B008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for OptionGroup();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  __chkstk_darwin();
  v29 = &v24 - v9;
  type metadata accessor for _WrappedParsableCommand.CodingKeys();
  swift_getWitnessTable();
  v30 = type metadata accessor for KeyedDecodingContainer();
  v26 = *(v30 - 8);
  v10 = *(v26 + 64);
  __chkstk_darwin();
  v12 = &v24 - v11;
  v32 = type metadata accessor for _WrappedParsableCommand();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v24 - v15;
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, 0, a2, a3, &v24 - v15);
  v17 = a1[4];
  sub_100002AA0(a1, a1[3]);
  v18 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    sub_100002B38(a1);
    return (*(v13 + 8))(v16, v32);
  }

  else
  {
    v19 = v26;
    v20 = v27;
    v21 = v28;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v12, v30);
    (*(v20 + 40))(v16, v29, v21);
    v22 = v32;
    (*(v13 + 16))(v25, v16, v32);
    sub_100002B38(a1);
    return (*(v13 + 8))(v16, v22);
  }
}

uint64_t sub_10004B380()
{
  if (!swift_conformsToProtocol2() || !v0)
  {
    v0 = type metadata accessor for _WrappedParsableCommand();
    swift_getWitnessTable();
  }

  return v0;
}

uint64_t static ParsableArguments.parse(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v47 = *(a2 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin();
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v44 - v10;
  v12 = type metadata accessor for _WrappedParsableCommand();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin();
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v44 - v16;
  sub_10004B380();
  v18 = v60;
  result = static ParsableCommand.parseAsRoot(_:)(a1, v19, v59);
  if (!v18)
  {
    v21 = v46;
    v44 = a3;
    v22 = v47;
    v60 = 0;
    sub_1000021C0(&qword_1000B55E8, &qword_100092588);
    if (swift_dynamicCast())
    {
      v23 = v52;
      v24 = v53;
      v25 = v54;
      v26 = v55;
      v27 = v56;
      v28 = v57;
      v29 = v58;
      sub_10002A1BC();
      swift_allocError();
      *v30 = v29;
      *(v30 + 1) = v48;
      v32 = v50;
      v31 = *v51;
      v33 = *&v51[15];
      *(v30 + 17) = v49;
      *(v30 + 64) = v33;
      *(v30 + 49) = v31;
      *(v30 + 33) = v32;
      *(v30 + 80) = 0;
      swift_willThrow();
      sub_10004BA18(v23, v24, v25);
      sub_1000022C8(v26, v27, v28);

      return sub_100002B38(v59);
    }

    if (swift_dynamicCast())
    {
      (*(v21 + 32))(v15, v17, v12);
      v34 = *(v12 + 16);
      v35 = *(v12 + 24);
      v36 = type metadata accessor for OptionGroup();
      OptionGroup.wrappedValue.getter(v36, v45);
      (*(v21 + 8))(v15, v12);
      return sub_100002B38(v59);
    }

    if (swift_dynamicCast())
    {
      v37 = *(v22 + 32);
      v37(v9, v11, a2);
      v38 = v60;
      (*(v44 + 24))(a2);
      v60 = v38;
      if (!v38)
      {
        v37(v45, v9, a2);
        return sub_100002B38(v59);
      }

      sub_10002A1BC();
      swift_allocError();
      *v39 = v60;
      *(v39 + 8) = v48;
      v40 = v49;
      v41 = v50;
      v42 = *v51;
      *(v39 + 72) = *&v51[16];
      *(v39 + 56) = v42;
      *(v39 + 40) = v41;
      *(v39 + 24) = v40;
      *(v39 + 80) = 13;
      swift_willThrow();
      (*(v22 + 8))(v9, a2);
      return sub_100002B38(v59);
    }

    else
    {
      sub_10002A1BC();
      swift_allocError();
      *v43 = 3;
      *(v43 + 8) = 0u;
      *(v43 + 24) = 0u;
      *(v43 + 40) = 0u;
      *(v43 + 56) = 0u;
      *(v43 + 72) = 0;
      *(v43 + 80) = 15;
      swift_willThrow();
      return sub_100002B38(v59);
    }
  }

  return result;
}

uint64_t static ParsableArguments.message(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();
  sub_10007AC38(a1, v3, a3, 0, 1, &v8);
  v6 = v8;
  if (v9 == 1)
  {

    sub_10004BA28(&v8);
  }

  return v6;
}

uint64_t static ParsableArguments.fullMessage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_errorRetain();
  sub_10007AC38(a1, v4, a3, 0, 1, v9);
  v7 = sub_10007C074(v4, a3);
  sub_10004BA28(v9);
  return v7;
}

unint64_t sub_10004B9AC()
{
  result = qword_1000B56A0[0];
  if (!qword_1000B56A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B56A0);
  }

  return result;
}

uint64_t sub_10004BA18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t static ParsableArguments.fullMessage(for:columns:)(uint64_t a1, Swift::UInt a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_errorRetain();
  sub_10007AC38(a1, v6, a5, a2, a3 & 1, v13);
  v11 = sub_10007C074(v6, a5);
  sub_10004BA28(v13);
  return v11;
}

uint64_t static ParsableArguments.helpMessage(includeHidden:columns:)(char a1, uint64_t a2, char a3)
{
  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10008E640;
  *(v6 + 32) = sub_10004B380();
  *(v6 + 40) = v7;
  sub_100079D2C(v6, a1 & 1, v10);

  v8 = sub_100075980(a2, a3 & 1);
  sub_10004CA1C(v10);
  return v8;
}

uint64_t static ParsableArguments._dumpHelp()()
{
  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10008E640;
  *(v0 + 32) = sub_10004B380();
  *(v0 + 40) = v1;
  sub_100071A94(v0, &v5);
  v4 = 0;
  v2 = sub_100070838();
  sub_10004CA70(&v4);
  return v2;
}

uint64_t static ParsableArguments.exitCode(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();
  sub_10007AC38(a1, v3, a3, 0, 1, v8);
  v6 = v10;
  if (v10)
  {
    if (v10 == 1)
    {
      v6 = 64;
    }

    else
    {
      v6 = v9;
    }
  }

  sub_10004BA28(v8);
  return v6;
}

uint64_t static ParsableArguments.completionScript(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B380();
  v6 = v5;

  v7 = sub_1000292CC(a1, a2, v4, v6);

  return v7;
}

uint64_t static ParsableArguments.usageString(includeHidden:)(char a1)
{
  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = sub_10004B380();
  *(inited + 40) = v3;
  sub_100079D2C(inited, a1 & 1, v6);

  v4 = v6[3];

  sub_10004CA1C(v6);
  return v4;
}

uint64_t sub_10004BEA8(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v43 = result + 32;
  v6 = result + 56;
  v42 = &_swiftEmptyArrayStorage;
  v7 = 2 - a2;
  v41 = v7;
  while (1)
  {
    if (v4)
    {
      v8 = *(v4 + 16);
      if (v3 != v8)
      {
        goto LABEL_13;
      }
    }

    v9 = *(v2 + 16);
    if (v5 == v9)
    {
      goto LABEL_20;
    }

    if (v5 >= v9)
    {
      break;
    }

    v10 = 16 * v5;
    v11 = (v43 + 16 * v5);
    v13 = *v11;
    v12 = v11[1];

    result = sub_10004CDB4(v4);
    ++v5;
    v14 = (v6 + v10);
    v4 = v13;
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_7:
    v8 = *(v4 + 16);
    if (!v8)
    {
LABEL_8:
      while (1)
      {
        v15 = *(v2 + 16);
        if (v5 == v15)
        {
          break;
        }

        if (v5 >= v15)
        {
          goto LABEL_21;
        }

        v17 = *(v14 - 1);
        v16 = *v14;

        result = sub_10004CDB4(v4);
        ++v5;
        v14 += 2;
        v4 = v17;
        if (v17)
        {
          goto LABEL_7;
        }
      }

LABEL_20:

      sub_10004CDB4(v4);
      return v42;
    }

    v3 = 0;
    v7 = v41;
LABEL_13:
    if (v3 >= v8)
    {
      goto LABEL_22;
    }

    v18 = (v4 + 192 * v3);
    v19 = v18[2];
    v20 = v18[3];
    v21 = v18[5];
    v47 = v18[4];
    v48 = v21;
    v45 = v19;
    v46 = v20;
    v22 = v18[6];
    v23 = v18[7];
    v24 = v18[9];
    v51 = v18[8];
    v52 = v24;
    v49 = v22;
    v50 = v23;
    v25 = v18[10];
    v26 = v18[11];
    v27 = v18[13];
    v55 = v18[12];
    v56 = v27;
    v53 = v25;
    v54 = v26;
    ++v3;
    if (2 - BYTE8(v51) >= v7)
    {
      sub_1000289DC(&v45, v44);
      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v42;
      v57 = v42;
      if ((result & 1) == 0)
      {
        result = sub_10004E840(0, v42[2] + 1, 1);
        v28 = v57;
      }

      v30 = v28[2];
      v29 = v28[3];
      if (v30 >= v29 >> 1)
      {
        result = sub_10004E840((v29 > 1), v30 + 1, 1);
        v28 = v57;
      }

      v28[2] = v30 + 1;
      v42 = v28;
      v31 = &v28[24 * v30];
      v32 = v45;
      v33 = v46;
      v34 = v48;
      v31[4] = v47;
      v31[5] = v34;
      v31[2] = v32;
      v31[3] = v33;
      v35 = v49;
      v36 = v50;
      v37 = v52;
      v31[8] = v51;
      v31[9] = v37;
      v31[6] = v35;
      v31[7] = v36;
      v38 = v53;
      v39 = v54;
      v40 = v56;
      v31[12] = v55;
      v31[13] = v40;
      v31[10] = v38;
      v31[11] = v39;
      v7 = v41;
    }
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10004C130(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a4;
  v63 = a6;
  v65 = a5;
  v61 = a3;
  v8 = type metadata accessor for Mirror();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  *(&v92 + 1) = a1;
  *&v93 = a2;
  sub_100007DE4(&v91);
  v13(a1, a2);
  v14 = *(&v92 + 1);
  v15 = sub_100002AA0(&v91, *(&v92 + 1));
  v79 = v14;
  v16 = sub_100007DE4(v78);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  Mirror.init(reflecting:)();
  sub_100002B38(&v91);
  v17 = Mirror.children.getter();
  (*(v9 + 8))(v12, v8);
  v60 = v17;
  v67 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = &_swiftEmptyArrayStorage;
  if (*(&v103 + 1))
  {
    v66 = xmmword_10008E640;
    v19 = v65;
    while (1)
    {
      v101 = v102[3];
      v102[0] = v102[4];
      v102[1] = v103;
      sub_10002600C(&v101, &v91, &qword_1000B5730, &qword_100092A20);
      v20 = *(&v91 + 1);
      if (*(&v91 + 1))
      {
        v21 = v91;
        sub_100002B38(&v92);
        sub_10002600C(&v101, &v91, &qword_1000B5730, &qword_100092A20);

        sub_1000021C0(&qword_1000B5738, &qword_100092A28);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v64 = v18;
          *&v72 = 0;
          v70 = 0u;
          v71 = 0u;
          sub_100002BCC(&v70, qword_1000B5740, &unk_100092A30);
          sub_10004CC10(v102, &v91);
          sub_1000021C0(&qword_1000B5428, &qword_100093030);
          swift_dynamicCast();
          v25 = v79;
          sub_100002BCC(v78, &qword_1000B5428, &qword_100093030);
          if (v25)
          {
            sub_10004CC10(v102, v100);
          }

          else
          {
            memset(v100, 0, sizeof(v100));
          }

          v26 = v62;
          sub_10004CC6C(v62, v19);
          v27 = sub_1000681D4(v21, v20, v26, v19);
          v29 = v28;
          v31 = v30;

          sub_10002600C(v100, v99, &qword_1000B5428, &qword_100093030);
          v32 = v99[3] != 0;
          sub_1000021C0(&qword_1000B5210, &unk_100092A40);
          v33 = swift_allocObject();
          *(v33 + 16) = v66;
          *(v33 + 32) = v27;
          *(v33 + 40) = v29;
          *(v33 + 48) = v31;

          *&v71 = 0;
          v70 = v32;
          *(&v71 + 1) = v33;
          *&v72 = &_swiftEmptyArrayStorage;
          BYTE8(v72) = 0;
          *&v73 = 0;
          *(&v73 + 1) = 0xE000000000000000;
          *&v74 = 0;
          *(&v74 + 1) = 0xE000000000000000;
          *&v75 = 0;
          *(&v75 + 1) = 0xE000000000000000;
          LOBYTE(v76) = 2;
          *(&v76 + 1) = 0;
          v77 = 0xE000000000000000;
          v78[1] = 0;
          v78[2] = 0;
          v78[0] = v32;
          v79 = v33;
          v80 = &_swiftEmptyArrayStorage;
          v81 = 0;
          v82 = 0;
          v83 = 0xE000000000000000;
          v84 = 0;
          v85 = 0xE000000000000000;
          v86 = 0;
          v87 = 0xE000000000000000;
          v88 = 2;
          v89 = 0;
          v90 = 0xE000000000000000;
          sub_10002F094(&v70, &v91);
          sub_10002F0F0(v78);
          v34 = swift_allocObject();
          v34[2] = sub_100059B6C;
          v34[3] = 0;
          v34[4] = v27;
          v34[5] = v29;
          v34[6] = v31;
          sub_10002600C(v99, v69, &qword_1000B5428, &qword_100093030);
          v35 = swift_allocObject();
          *(v35 + 16) = 1;
          v36 = v69[1];
          *(v35 + 24) = v69[0];
          *(v35 + 40) = v36;
          *(v35 + 56) = v27;
          *(v35 + 64) = v29;
          *(v35 + 72) = v31;

          sub_100002BCC(v100, &qword_1000B5428, &qword_100093030);
          v95 = v74;
          v96 = v75;
          v97 = v76;
          v98 = v77;
          v91 = v70;
          v92 = v71;
          v93 = v72;
          v94 = v73;
          v68 = 1;
          sub_100002BCC(v99, &qword_1000B5428, &qword_100093030);
          sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
          v37 = swift_allocObject();
          v38 = v96;
          *(v37 + 104) = v95;
          *(v37 + 120) = v38;
          *(v37 + 136) = v97;
          v39 = v92;
          *(v37 + 40) = v91;
          *(v37 + 56) = v39;
          v40 = v94;
          *(v37 + 72) = v93;
          *(v37 + 16) = v66;
          *(v37 + 32) = 1;
          v41 = v98;
          *(v37 + 88) = v40;
          *(v37 + 160) = 0;
          *(v37 + 168) = 0;
          *(v37 + 152) = v41;
          *(v37 + 176) = 4;
          *(v37 + 184) = sub_10004CCF8;
          *(v37 + 192) = v34;
          *(v37 + 200) = 1;
          *(v37 + 208) = sub_10004CD8C;
          *(v37 + 216) = v35;
          v42 = sub_100072F04(v37);
          v44 = v43;
          sub_100002BCC(&v101, &qword_1000B5730, &qword_100092A20);
          v18 = v64;
          goto LABEL_28;
        }

        sub_100040F6C(&v70, v78);
        v22 = v79;
        v23 = v80;
        sub_100002AA0(v78, v79);
        v24 = (v23[2])(v22, v23);
        if (v61)
        {
          if (v61 != 1 || ((4u >> (v24 & 7)) & 1) == 0)
          {
LABEL_16:
            v45 = HIBYTE(v20) & 0xF;
            if ((v20 & 0x2000000000000000) == 0)
            {
              v45 = v21 & 0xFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              if (String.subscript.getter() == 95 && v46 == 0xE100000000000000)
              {

                goto LABEL_23;
              }

              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v47)
              {
LABEL_23:
                sub_100068124(1uLL, v21, v20);

                v21 = static String._fromSubstring(_:)();
                v20 = v48;
                v19 = v65;
              }
            }

            if (v19)
            {
              sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
              v49 = swift_allocObject();
              *(v49 + 16) = v66;
              v50 = v63;
              *(v49 + 32) = v62;
              *(v49 + 40) = v19;
              *&v91 = v50;

              sub_100041830(v49);
              v51 = v91;
            }

            else
            {
              v51 = &_swiftEmptyArrayStorage;
            }

            v52 = v79;
            v53 = v80;
            sub_100002AA0(v78, v79);
            v42 = (v53[1])(v21, v20, v51, v52, v53);
            v44 = v54;

            sub_100002BCC(&v101, &qword_1000B5730, &qword_100092A20);
            sub_100002B38(v78);
LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_1000435C8(0, *(v18 + 2) + 1, 1, v18);
            }

            v19 = v65;
            v56 = *(v18 + 2);
            v55 = *(v18 + 3);
            if (v56 >= v55 >> 1)
            {
              v18 = sub_1000435C8((v55 > 1), v56 + 1, 1, v18);
            }

            *(v18 + 2) = v56 + 1;
            v57 = &v18[16 * v56];
            *(v57 + 4) = v42;
            *(v57 + 5) = v44;
            goto LABEL_4;
          }
        }

        else if (((6u >> (v24 & 7)) & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_100002BCC(&v101, &qword_1000B5730, &qword_100092A20);
        sub_100002B38(v78);
      }

      else
      {
        sub_100002BCC(&v101, &qword_1000B5730, &qword_100092A20);
        sub_100002B38(&v92);
      }

LABEL_4:
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!*(&v103 + 1))
      {
        goto LABEL_34;
      }
    }
  }

  v19 = v65;
LABEL_34:

  sub_10004CBCC(v62, v19);

  v58 = sub_10004BEA8(v18, v61);
  return sub_100072F04(v58);
}

uint64_t sub_10004CACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for OptionGroup();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004CB3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004CB78(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004CBCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10004CC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004CC6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10004CCB0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10004CD2C()
{
  if (v0[2] >= 2uLL)
  {
  }

  if (v0[6])
  {
    sub_100002B38(v0 + 3);
  }

  v1 = v0[8];

  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10004CDB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10004CE4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v56 = a2;
  v57 = a1;
  v61 = type metadata accessor for Unicode.Scalar.Properties();
  v6 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v60 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v63 = 0;
  v64 = 0xE000000000000000;
  v10 = 4 * v9;
  v59 = (v7 + 8);

  v11 = 1;
  v55[1] = a3;
  v58 = v10;
  while (1)
  {
    v13 = String.index(after:)();
    v14 = String.index(after:)();
    result = String.subscript.getter();
    v17 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : result & 0xFFFFFFFFFFFFLL;
    if (!v17)
    {
      break;
    }

    v18 = result;
    v19 = v16;
    if ((v16 & 0x1000000000000000) != 0)
    {
      v24 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v21 = result;
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = *v20;
      }

      v22 = v21;
      v23 = (__clz(~v21) - 24) << 16;
      if (v22 < 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 65541;
      }
    }

    v25 = 4 * v17;
    if (4 * v17 == v24 >> 14)
    {
      result = sub_10004F9C0(v18, v19);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_88;
      }

      v26 = v60;
      Unicode.Scalar.properties.getter();
      v27 = Unicode.Scalar.Properties.isUppercase.getter();
      (*v59)(v26, v61);
      v10 = v58;
      if (v27)
      {
        goto LABEL_36;
      }
    }

    if ((Character._isUppercased.getter() & 1) == 0)
    {
      goto LABEL_33;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      if (v25 == String.UnicodeScalarView._foreignIndex(after:)() >> 14)
      {
LABEL_29:
        result = sub_10004F9C0(v18, v19);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_90;
        }

        v28 = v60;
        Unicode.Scalar.properties.getter();
        v29 = Unicode.Scalar.Properties.isCased.getter();
        (*v59)(v28, v61);
        if (v29)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v25 == ((4 * _StringGuts.fastUTF8ScalarLength(startingAt:)(0)) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_29;
    }

    if (Character._isUppercased.getter() & 1) != 0 && (Character._isLowercased.getter())
    {
LABEL_33:
      if (v18 != v57 || v19 != v56)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

LABEL_36:
    if (v11)
    {
      v30 = v63 & 0xFFFFFFFFFFFFLL;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v30 = HIBYTE(v64) & 0xF;
      }

      if (v30)
      {
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        Character.write<A>(to:)();
        String.append(_:)(v62);
      }
    }

    if (v10 <= v14 >> 14)
    {
      goto LABEL_6;
    }

    result = String.subscript.getter();
    if ((v31 & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v32 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_87;
    }

    v33 = result;
    v34 = v31;
    if ((v31 & 0x1000000000000000) != 0)
    {
      v35 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v35 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
    }

    v36 = 4 * v32;
    if (4 * v32 == v35 >> 14)
    {
      result = sub_10004F9C0(v33, v34);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_89;
      }

      v37 = v60;
      Unicode.Scalar.properties.getter();
      v38 = Unicode.Scalar.Properties.isUppercase.getter();
      (*v59)(v37, v61);
      if (v38)
      {
LABEL_63:

        goto LABEL_64;
      }
    }

    if ((Character._isUppercased.getter() & 1) == 0)
    {

LABEL_56:
      v11 = 0;
      v10 = v58;
      goto LABEL_7;
    }

    v39 = sub_10004FB10(0xFuLL, v33, v34);
    if ((v34 & 0x1000000000000000) != 0)
    {
      if (v36 != String.UnicodeScalarView._foreignIndex(after:)() >> 14)
      {
        goto LABEL_60;
      }
    }

    else if (v36 != ((4 * (_StringGuts.fastUTF8ScalarLength(startingAt:)(v39 >> 16) + (v39 >> 16))) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_60;
    }

    result = sub_10004F9C0(v33, v34);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_92;
    }

    v40 = v60;
    Unicode.Scalar.properties.getter();
    v41 = Unicode.Scalar.Properties.isCased.getter();
    (*v59)(v40, v61);
    if (v41)
    {
      goto LABEL_63;
    }

LABEL_60:
    if ((Character._isUppercased.getter() & 1) == 0)
    {
      goto LABEL_63;
    }

    v42 = Character._isLowercased.getter();

    if (v42)
    {
      goto LABEL_56;
    }

LABEL_64:
    v43 = String.index(after:)();
    v10 = v58;
    if (v58 <= v43 >> 14)
    {
      goto LABEL_6;
    }

    String.index(after:)();
    v44 = String.subscript.getter();
    v46 = v45;
    v47 = sub_10004FB10(0xFuLL, v44, v45);
    if ((v46 & 0x1000000000000000) != 0)
    {
      v48 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v48 = (_StringGuts.fastUTF8ScalarLength(startingAt:)(v47 >> 16) + (v47 >> 16)) << 16;
    }

    v49 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v49 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v48 >> 14 == 4 * v49)
    {
      result = sub_10004F9C0(v44, v46);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_91;
      }

      v50 = v60;
      Unicode.Scalar.properties.getter();
      v51 = Unicode.Scalar.Properties.isLowercase.getter();
      (*v59)(v50, v61);
      if (v51)
      {
LABEL_78:

        v11 = 1;
        goto LABEL_7;
      }
    }

    if ((Character._isLowercased.getter() & 1) == 0)
    {

LABEL_6:
      v11 = 0;
      goto LABEL_7;
    }

    if (Character._isSingleScalar.getter())
    {
      result = sub_10004F9C0(v44, v46);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_93;
      }

      v52 = v60;
      Unicode.Scalar.properties.getter();
      v53 = Unicode.Scalar.Properties.isCased.getter();
      (*v59)(v52, v61);
      if (v53)
      {
        goto LABEL_78;
      }
    }

    if ((Character._isUppercased.getter() & 1) == 0)
    {
      goto LABEL_78;
    }

    v54 = Character._isLowercased.getter();

    v11 = v54 ^ 1;
LABEL_7:
    v12 = Character.lowercased()();

    String.append(_:)(v12);

    if (v10 == v13 >> 14)
    {

      return v63;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t static ParsableCommand.parseAsRoot(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v23 = sub_100065C18(v4, a2);
  v24 = v7;
  v25 = v8;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    if (qword_1000B5170 != -1)
    {
      swift_once();
    }

    v9 = qword_1000B66D0;
    v10 = *(qword_1000B66D0 + 16);
    if (v10)
    {
      sub_10004E638(qword_1000B66D0, qword_1000B66D0 + 32, 1, (2 * v10) | 1);
      v9 = v13;
    }

    else
    {
    }
  }

  sub_100063360(v9, v20);

  if (v22)
  {
    v17 = v20[2];
    v18 = v20[3];
    *v19 = *v21;
    *&v19[9] = *&v21[9];
    v15 = v20[0];
    v16 = v20[1];
    sub_10004FD40();
    swift_willThrowTypedImpl();
    *v14 = *v19;
    *&v14[9] = *&v19[9];
    swift_allocError();
    *v11 = v15;
    v11[1] = v16;
    *(v11 + 73) = *&v19[9];
    v11[3] = v18;
    v11[4] = *v14;
    v11[2] = v17;
  }

  else
  {

    return sub_100040F6C(v20, a3);
  }
}

double sub_10004D754@<D0>(uint64_t a1@<X8>)
{
  static ParsableCommand.configuration.getter(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double static ParsableCommand.configuration.getter@<D0>(uint64_t a1@<X8>)
{
  v8 = 0u;
  v9 = 0u;
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  v11 = 0uLL;
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  LOBYTE(v14) = 1;
  *(&v14 + 1) = _swiftEmptyArrayStorage;
  *&v15 = _swiftEmptyArrayStorage;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  v17 = _swiftEmptyArrayStorage;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v20 = 0xE000000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0xE000000000000000;
  v25 = 0;
  v26 = 0xE000000000000000;
  v27 = 1;
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
  sub_10004314C(&v8, v7);
  sub_100027BE4(v18);
  v2 = v15;
  *(a1 + 96) = v14;
  *(a1 + 112) = v2;
  *(a1 + 128) = v16;
  *(a1 + 144) = v17;
  v3 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  v4 = v13;
  *(a1 + 64) = v12;
  *(a1 + 80) = v4;
  result = *&v8;
  v6 = v9;
  *a1 = v8;
  *(a1 + 16) = v6;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ParsableCommand.run()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = sub_100034094(v8, v4, v3);
  v11 = v10;
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  sub_10004FD94();
  swift_allocError();
  *v14 = v9;
  *(v14 + 8) = v11;
  *(v14 + 16) = v13;
  swift_willThrow();
}

unint64_t static ParsableCommand._commandName.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v7);
  v2 = v7[0];
  v3 = v7[1];

  sub_100027BE4(v7);
  if (!v3)
  {
    swift_getMetatypeMetadata();
    v4 = String.init<A>(describing:)();
    v2 = sub_10004CE4C(45, 0xE100000000000000, v4, v5);
  }

  return v2;
}

char *static ParsableCommand.helpMessage(for:includeHidden:columns:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100065C18(v7, a7);
  v13 = sub_100084154(v12, a1);
  v14 = v13;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_15:

    v19 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_3:
  v26[0] = _swiftEmptyArrayStorage;
  result = sub_10004E880(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = a5;
    v18 = 0;
    v19 = v26[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v14 + 8 * v18 + 32);
      }

      v25 = *(v20 + 16);

      v26[0] = v19;
      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        sub_10004E880((v22 > 1), v23 + 1, 1);
        v19 = v26[0];
      }

      ++v18;
      v19[2] = v23 + 1;
      *&v19[2 * v23 + 4] = v25;
    }

    while (v15 != v18);

    a5 = v17;
    if (v19[2])
    {
      goto LABEL_13;
    }

LABEL_12:

    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_10008E640;
    *(v19 + 2) = *(v12 + 16);
LABEL_13:

    sub_100079D2C(v19, a3 & 1, v26);

    v24 = sub_100075980(a4, a5 & 1);
    sub_10004CA1C(v26);
    return v24;
  }

  __break(1u);
  return result;
}

char *static ParsableCommand.usageString(for:includeHidden:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100065C18(v5, a5);
  v9 = sub_100084154(v8, a1);
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_15:

    v15 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22[0] = _swiftEmptyArrayStorage;
  result = sub_10004E880(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = a3;
    v14 = 0;
    v15 = v22[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v10 + 8 * v14 + 32);
      }

      v21 = *(v16 + 16);

      v22[0] = v15;
      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        sub_10004E880((v18 > 1), v19 + 1, 1);
        v15 = v22[0];
      }

      ++v14;
      v15[2] = v19 + 1;
      *&v15[2 * v19 + 4] = v21;
    }

    while (v11 != v14);

    a3 = v13;
    if (v15[2])
    {
      goto LABEL_13;
    }

LABEL_12:

    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v15 = swift_allocObject();
    *(v15 + 1) = xmmword_10008E640;
    *(v15 + 2) = *(v8 + 16);
LABEL_13:

    sub_100079D2C(v15, a3 & 1, v22);

    v20 = v22[3];

    sub_10004CA1C(v22);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t static ParsableCommand.main(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  static ParsableCommand.parseAsRoot(_:)(a1, a3, v6);
  v3 = v7;
  v4 = v8;
  sub_100006190(v6, v7);
  (*(v4 + 32))(v3, v4);
  return sub_100002B38(v6);
}

BOOL sub_10004DFB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004C130(v2, *(a2 + 8), 2, 0, 0, 0);
  v4 = (v3 + 177);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v4;
    v7 = *(v4 - 137);
    v8 = *(v4 - 145);
    v4 += 192;
    v9 = v7 & 2;
    v10 = v8 || v9 == 0;
  }

  while (v10 || v6 != 4);
  v12 = v5 != 0;

  return v12;
}

BOOL sub_10004E040(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004C130(v2, *(a2 + 8), 2, 0, 0, 0);
  v4 = (v3 + 177);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v4;
    v7 = *(v4 - 137);
    v8 = *(v4 - 145);
    v4 += 192;
    v9 = v7 & 2;
    v10 = v8 || v9 == 0;
  }

  while (v10 || v6 != 6);
  v12 = v5 != 0;

  return v12;
}

BOOL sub_10004E0CC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = sub_100027BE4(v5);
  return v5[15] && sub_10004DFB4(v2, v5[16]);
}

unint64_t sub_10004E180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  static ParsableCommand.configuration.getter(v11);
  v6 = v11[0];
  v7 = v11[1];

  sub_100027BE4(v11);
  if (!v7)
  {
    sub_1000021C0(a3, a4);
    v8 = String.init<A>(describing:)();
    v6 = sub_10004CE4C(45, 0xE100000000000000, v8, v9);
  }

  return v6;
}

uint64_t sub_10004E254(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v14 = a1;
  v15 = a2;
  v12[0] = v5;
  v12[1] = v6;
  v13 = v7;
  sub_100002AA0(v12, a1);
  DynamicType = swift_getDynamicType();
  v9 = v15;
  a3(v5, v6, v7);
  sub_100002B38(v12);
  sub_10004FD94();
  swift_allocError();
  *v10 = DynamicType;
  *(v10 + 8) = v9;
  *(v10 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_10004E314()
{
  if (qword_1000B5168 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_1000B6638 + 1))
  {
    v0 = xmmword_1000B6638;
  }

  else
  {
    sub_1000021C0(&qword_1000B57D8, &qword_100092BF8);
    v1 = String.init<A>(describing:)();
    v0 = sub_10004CE4C(45, 0xE100000000000000, v1, v2);
  }

  return v0;
}

void *sub_10004E3E8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_10004E478(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_10004E508(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000021C0(&qword_1000B5670, &qword_100092730);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_10004E58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = sub_10004E3E8(*(a1 + 16), 0);
  v6 = sub_100062078(&v8, v5 + 32, v2, a1, a2);

  if (v6 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_10004E638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10004E710(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 + 31;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 6);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_10004E7E8(char *a1, int64_t a2, char a3)
{
  result = sub_10004E9F4(a1, a2, a3, *v3, &qword_1000B5438, &qword_100092060);
  *v3 = result;
  return result;
}

char *sub_10004E820(char *a1, int64_t a2, char a3)
{
  result = sub_10004EB10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E840(char *a1, int64_t a2, char a3)
{
  result = sub_10004EC1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E860(char *a1, int64_t a2, char a3)
{
  result = sub_10004ED3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E880(char *a1, int64_t a2, char a3)
{
  result = sub_10004EE48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E8A0(void *a1, int64_t a2, char a3)
{
  result = sub_10004F05C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E8C0(char *a1, int64_t a2, char a3)
{
  result = sub_10004F1A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E8E0(char *a1, int64_t a2, char a3)
{
  result = sub_10004F2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E900(void *a1, int64_t a2, char a3)
{
  result = sub_10004F3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E920(char *a1, int64_t a2, char a3)
{
  result = sub_10004E9F4(a1, a2, a3, *v3, &qword_1000B5640, &qword_1000926E8);
  *v3 = result;
  return result;
}

char *sub_10004E958(char *a1, int64_t a2, char a3)
{
  result = sub_10004F520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E978(char *a1, int64_t a2, char a3)
{
  result = sub_10004F644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E998(char *a1, int64_t a2, char a3)
{
  result = sub_10004F76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004E9B8(void *a1, int64_t a2, char a3)
{
  result = sub_10004F88C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004E9F4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000021C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_10004EB10(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10004EC1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004ED3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5630, &unk_1000926D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10004EE48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10004EF4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_10004F05C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B5808, &qword_100092C28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5810, &qword_100092C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F1A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F2B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5680, &qword_100092740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004F3D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B57F8, &qword_100092C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_1000021C0(&qword_1000B5800, &qword_100092C20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F520(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B5660, &qword_100092720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F644(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57E8, &qword_100092C08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004F76C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B57E0, &qword_100092C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10004F88C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B5620, &qword_1000926C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B5628, &qword_1000926C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10004F9C0(unint64_t a1, unint64_t a2)
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
    v5 = sub_10004FB10(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
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
        v7 = (_StringObject.sharedUTF8.getter() + v6);
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

unint64_t sub_10004FB10(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_10004FBA8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10004FC1C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10004FBA8(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_100082D44(result, a2, a3);
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

unint64_t sub_10004FC1C(unint64_t result, uint64_t a2, unint64_t a3)
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
        v6 = _StringObject.sharedUTF8.getter();
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

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10004FD40()
{
  result = qword_1000B57C8;
  if (!qword_1000B57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B57C8);
  }

  return result;
}

unint64_t sub_10004FD94()
{
  result = qword_1000B57D0;
  if (!qword_1000B57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B57D0);
  }

  return result;
}

uint64_t sub_10004FDE8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10004FDF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10004FE0C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FE54(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10005892C(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_10004FEE8(uint64_t a1)
{
  v4 = *(v1 + 8);
  swift_beginAccess();
  v5 = *(v4 + 72);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_100058E3C(v8, v11);
      if (v2)
      {
        goto LABEL_10;
      }

      if (*&v11[0] == a1)
      {

        v13 = v11[0];
        v14[0] = v11[1];
        v14[1] = v11[2];
        v15 = v12;
        sub_100040F6C(v14, v11);
        sub_1000021C0(&qword_1000B59D0, &qword_100093060);
        return swift_dynamicCast();
      }

      ++v7;
      sub_100058E74(v11);
      v8 += 56;
      if (v6 == v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:

    result = sub_100058E74(v11);
    __break(1u);
  }

  else
  {
LABEL_7:

    sub_10002A1BC();
    swift_allocError();
    *v9 = 3;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0;
    *(v9 + 80) = 15;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005007C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  *(&v21 + 1) = a3;
  v22 = a4;
  v10 = sub_100007DE4(&v20);
  (*(*(a3 - 8) + 16))(v10, a1, a3);
  *&v19 = a2;
  *(&v19 + 1) = a4;
  swift_beginAccess();
  v11 = *(v9 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 72) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_100043A20(0, *(v11 + 2) + 1, 1, v11);
    *(v9 + 72) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_100043A20((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[56 * v14];
  v16 = v20;
  v17 = v21;
  *(v15 + 10) = v22;
  *(v15 + 3) = v16;
  *(v15 + 4) = v17;
  *(v15 + 2) = v19;
  *(v9 + 72) = v11;
  return swift_endAccess();
}

uint64_t sub_1000501B8()
{
  type metadata accessor for ParsedArgumentsContainer();
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_10005025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_10005029C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_1000503DC()
{
  sub_1000559E4();
  swift_allocError();
  *v0 = 0u;
  v0[1] = 0u;
  return swift_willThrow();
}

uint64_t sub_10005042C()
{
  sub_1000559E4();
  swift_allocError();
  *v0 = 1;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0;
  return swift_willThrow();
}

double sub_100050480@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 16);
  if (*(v6 + 16) && (v7 = sub_1000561CC(a1, a2, a3), (v8 & 1) != 0))
  {
    sub_100058AFC(*(v6 + 56) + 72 * v7, v14);
    v18 = v14[0];
    v19 = v14[1];
    v20 = v14[2];
    v9 = v16;
    v21 = v15;
    v10 = v17;
    swift_beginAccess();

    sub_100055BDC(v11);
    swift_endAccess();
    v12 = v19;
    *a4 = v18;
    *(a4 + 16) = v12;
    result = *&v20;
    *(a4 + 32) = v20;
    *(a4 + 48) = v21;
    *(a4 + 56) = v9;
    *(a4 + 64) = v10;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100050560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  return v3;
}

uint64_t sub_10005056C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = v1[2];
  (*(v9 + 16))(&v16 - v6);
  v10 = *(v3 + 88);

  v11 = sub_100067F24(v7, v8, v4);
  v12 = v1[3];
  sub_100050480(v11, v13, v14, a1);
}

BOOL sub_100050694()
{
  sub_10005056C(v2);
  v0 = v3 != 0;
  sub_100002BCC(v2, &qword_1000B5978, &qword_100094AA0);
  return v0;
}

uint64_t sub_1000506E8()
{
  sub_10005056C(v2);
  if (!v3)
  {
    sub_100002BCC(v2, &qword_1000B5978, &qword_100094AA0);
    v5 = 0u;
    v6 = 0u;
    goto LABEL_5;
  }

  sub_10002600C(&v4, &v5, &qword_1000B5428, &qword_100093030);
  sub_100039234(v2);
  if (!*(&v6 + 1))
  {
LABEL_5:
    v0 = 1;
    goto LABEL_6;
  }

  v0 = 0;
LABEL_6:
  sub_100002BCC(&v5, &qword_1000B5428, &qword_100093030);
  return v0;
}

uint64_t sub_1000507A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v57 = a1;
  v58 = a5;
  v54 = *v5;
  v9 = *(v54 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v55 = &v50 - v12;
  v13 = type metadata accessor for Optional();
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  __chkstk_darwin();
  v53 = &v50 - v15;
  v71 = a3;
  v52 = *(a3 - 8);
  v16 = *(v52 + 64);
  __chkstk_darwin();
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a2;
  v20 = v5;
  sub_10005056C(v70);
  sub_10002600C(v70, &v65, &qword_1000B5978, &qword_100094AA0);
  v59 = v6;
  if (!v66)
  {
    v29 = &qword_1000B5978;
    v30 = &qword_100094AA0;
    v31 = &v65;
LABEL_10:
    sub_100002BCC(v31, v29, v30);
LABEL_12:
    v32 = v20;
    v33 = v20[3];
    v51 = v32[2];
    v52 = v33;
    v53 = *(v33 + 88);
    sub_1000021C0(&qword_1000B5618, &unk_1000926B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 56) = v9;
    v54 = *(v54 + 88);
    *(inited + 64) = v54;
    v35 = sub_100007DE4((inited + 32));
    v36 = *(v10 + 16);
    v36(v35, v19, v9);
    v65 = v51;

    sub_1000425BC(inited);
    v51 = v65;
    v37 = v32[2];
    v38 = v55;
    v36(v55, v19, v9);

    v39 = sub_100067F24(v38, v37, v9);
    v41 = v40;
    v43 = v42;
    sub_10005056C(v69);
    v65 = v53;
    v66 = v52;
    v67 = v51;
    v68[0] = v39;
    v68[1] = v41;
    v68[2] = v43;
    v63 = &type metadata for SingleValueDecoder;
    v64 = sub_100058998();
    *&v62 = swift_allocObject();
    sub_100058A70(&v65, v62 + 16);
    dispatch thunk of Decodable.init(from:)();
    sub_100040178(&v65);
    return sub_100002BCC(v70, &qword_1000B5978, &qword_100094AA0);
  }

  v21 = v69[1];

  sub_100039234(&v65);
  if (*(v21 + 16) != 1)
  {

    goto LABEL_12;
  }

  sub_10004FE54(v21);
  v23 = v22;

  if ((v23 & 0x10000) != 0 || (v23 & 0x100) == 0)
  {
    goto LABEL_12;
  }

  sub_10002600C(v70, &v65, &qword_1000B5978, &qword_100094AA0);
  if (!v66)
  {
    sub_100002BCC(&v65, &qword_1000B5978, &qword_100094AA0);
    v60 = 0u;
    v61 = 0u;
    goto LABEL_15;
  }

  sub_10002600C(v68, &v60, &qword_1000B5428, &qword_100093030);
  sub_100039234(&v65);
  if (!*(&v61 + 1))
  {
LABEL_15:
    v29 = &qword_1000B5428;
    v30 = &qword_100093030;
    v31 = &v60;
    goto LABEL_10;
  }

  sub_100058B58(&v60, &v62);
  sub_10004CC10(&v62, &v65);
  v24 = v53;
  v25 = v71;
  if (swift_dynamicCast())
  {
    sub_100002B38(&v62);
    sub_100002BCC(v70, &qword_1000B5978, &qword_100094AA0);
    v26 = v52;
    (*(v52 + 56))(v24, 0, 1, v25);
    v27 = *(v26 + 32);
    v27(v18, v24, v25);
    return (v27)(v58, v18, v25);
  }

  else
  {
    (*(v52 + 56))(v24, 1, 1, v25);
    (*(v51 + 1))(v24, v13);
    v65 = 0;
    v66 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v44 = v65;
    v45 = v66;
    result = sub_10002600C(v70, &v65, &qword_1000B5978, &qword_100094AA0);
    v46 = v66;
    if (v66)
    {
      v47 = v65;
      v48 = v67;

      sub_100039234(&v65);
      sub_100058B68();
      swift_allocError();
      *v49 = v44;
      *(v49 + 8) = v45;
      *(v49 + 16) = v47;
      *(v49 + 24) = v46;
      *(v49 + 32) = v48;
      *(v49 + 40) = 0;
      swift_willThrow();
      sub_100002B38(&v62);
      return sub_100002BCC(v70, &qword_1000B5978, &qword_100094AA0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100050E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = v4;
  v68 = a1;
  v46 = *v4;
  v10 = *(v46 + 80);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  __chkstk_darwin();
  v47 = &v39 - v12;
  v14 = v13;
  sub_10005056C(v67);
  sub_10002600C(v67, &v55, &qword_1000B5978, &qword_100094AA0);
  if (*(&v55 + 1))
  {
    v64 = v57;
    v65 = v58;
    v66 = v59;
    v62 = v55;
    v63 = v56;
    if (*(*(&v58 + 1) + 16) == 1)
    {
      sub_10004FE54(*(&v58 + 1));
      if ((v15 & 0x10100) == 0x100)
      {
        sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
        sub_10002600C(&v63 + 8, &v55, &qword_1000B5428, &qword_100093030);
        sub_100039234(&v62);
        sub_1000021C0(&qword_1000B5428, &qword_100093030);
        v16 = swift_dynamicCast();
        return (*(*(a2 - 8) + 56))(a4, v16 ^ 1u, 1, a2);
      }
    }

    v42 = a3;
    v43 = a4;
    v44 = a2;
    v45 = v5;
    sub_100039234(&v62);
  }

  else
  {
    v42 = a3;
    v43 = a4;
    v44 = a2;
    v45 = v5;
    sub_100002BCC(&v55, &qword_1000B5978, &qword_100094AA0);
  }

  v18 = v4[2];
  v19 = v4[3];
  v20 = *(v19 + 88);
  v40 = v18;
  v41 = v20;
  sub_1000021C0(&qword_1000B5618, &unk_1000926B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 56) = v10;
  v46 = *(v46 + 88);
  *(inited + 64) = v46;
  v22 = sub_100007DE4((inited + 32));
  v23 = *(v48 + 16);
  v23(v22, v14, v10);
  *&v55 = v40;

  sub_1000425BC(inited);
  v48 = v55;
  v24 = v6[2];
  v25 = v47;
  v23(v47, v14, v10);

  v26 = sub_100067F24(v25, v24, v10);
  v28 = v27;
  v30 = v29;
  sub_10002600C(v67, &v65, &qword_1000B5978, &qword_100094AA0);
  *&v62 = v41;
  *(&v62 + 1) = v19;
  *&v63 = v48;
  *(&v63 + 1) = v26;
  *&v64 = v28;
  *(&v64 + 1) = v30;
  *(&v56 + 1) = &type metadata for SingleValueDecoder;
  *&v57 = sub_100058998();
  *&v55 = swift_allocObject();
  sub_100058A70(&v62, v55 + 16);
  v32 = v43;
  v31 = v44;
  v33 = v45;
  dispatch thunk of Decodable.init(from:)();
  if (v33)
  {
    v61 = v33;
    swift_errorRetain();
    sub_1000021C0(&qword_1000B5988, &qword_100094200);
    if (swift_dynamicCast())
    {

      v54 = v60;
      v51 = v57;
      v52 = v58;
      v53 = v59;
      v49 = v55;
      v50 = v56;
      if (v60 == 11)
      {
        sub_100058AA8(&v49);
        sub_100040178(&v62);
        sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
        (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
      }

      sub_10002A1BC();
      swift_allocError();
      v34 = v50;
      *v35 = v49;
      *(v35 + 16) = v34;
      v37 = v52;
      v36 = v53;
      v38 = v51;
      *(v35 + 80) = v54;
      *(v35 + 48) = v37;
      *(v35 + 64) = v36;
      *(v35 + 32) = v38;
      swift_willThrow();
    }

    sub_100040178(&v62);
    sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
  }

  else
  {
    sub_100040178(&v62);
    sub_100002BCC(v67, &qword_1000B5978, &qword_100094AA0);
    return (*(*(v31 - 8) + 56))(v32, 0, 1, v31);
  }
}

uint64_t sub_1000514F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100051518()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 sub_100051570(uint64_t a1, uint64_t a2)
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

uint64_t sub_10005158C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000515D4(uint64_t result, int a2, int a3)
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

uint64_t sub_100051630(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100051648(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100051660(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10005168C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1000516D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100051750(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  sub_100058BBC();
}

uint64_t sub_1000517AC(uint64_t a1)
{
  v3 = *v1;
  sub_1000507A4(&type metadata for Bool, a1, &type metadata for Bool, &protocol witness table for Bool, &v6);
  if (!v2)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_1000517FC(uint64_t a1)
{
  v3 = *v1;
  result = sub_1000507A4(&type metadata for String, a1, &type metadata for String, &protocol witness table for String, &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

double sub_100051850(uint64_t a1)
{
  v3 = *v1;
  sub_1000507A4(&type metadata for Double, a1, &type metadata for Double, &protocol witness table for Double, &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

float sub_10005189C(uint64_t a1)
{
  v3 = *v1;
  sub_1000507A4(&type metadata for Float, a1, &type metadata for Float, &protocol witness table for Float, &v5);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t sub_100051A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_1000507A4(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100051A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_1000507A4(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100051AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_1000507A4(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100051B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  result = sub_1000507A4(a4, a1, a4, a5, &v9);
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100051C0C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051C5C()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051D04()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051D54()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051E94()
{
  result = KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_100051EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_100051F74()
{
  type metadata accessor for ParsedArgumentsContainer();
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_100052020@<X0>(void *a1@<X8>)
{
  sub_10002600C(v1 + 48, &v26, &qword_1000B5978, &qword_100094AA0);
  if (!*(&v26 + 1))
  {
    sub_100002BCC(&v26, &qword_1000B5978, &qword_100094AA0);
    v7 = *(v1 + 16);
    if (v7[2])
    {
      v8 = *(v1 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v7[2];
        if (v9)
        {
LABEL_8:
          v7[2] = v9 - 1;
          sub_100040F6C(&v7[5 * v9 - 1], &v26);
          sub_10002F35C(&v26, &v31);
          v10 = *(&v32 + 1);
          sub_100006190(&v31, *(&v32 + 1));
          v11 = *(*(v10 - 8) + 64);
          __chkstk_darwin();
          v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v14 + 16))(v13);
          v15 = sub_100067F24(v13, v7, v10);
          v17 = v16;
          v19 = v18;
          sub_100002B38(&v31);
          sub_10002A1BC();
          swift_allocError();
          *v20 = v15;
          *(v20 + 8) = v17;
          *(v20 + 16) = v19;
          v21 = v34;
          v22 = v33;
          v23 = v31;
          *(v20 + 40) = v32;
          *(v20 + 24) = v23;
          *(v20 + 56) = v22;
          *(v20 + 72) = v21;
          *(v20 + 80) = 11;
          swift_willThrow();
          return sub_100002B38(&v26);
        }

LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_100058918(v7);
    v7 = result;
    v9 = *(result + 16);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v33 = v28;
  v34 = v29;
  v35 = v30;
  v31 = v26;
  v32 = v27;
  sub_10002600C(&v32 + 8, &v26, &qword_1000B5428, &qword_100093030);
  if (*(&v27 + 1))
  {
    sub_1000021C0(&qword_1000B59A8, &qword_100093040);
    if (swift_dynamicCast())
    {
      v3 = v36;
      v4 = *(v1 + 16);
      a1[3] = &type metadata for SingleValueDecoder.UnkeyedContainer;
      a1[4] = sub_100058D80();
      v5 = swift_allocObject();
      *a1 = v5;
      sub_100058AFC(&v31, (v5 + 3));
      v5[15] = sub_1000021C0(&qword_1000B59B8, &qword_100093048);
      v5[16] = &off_1000ADFE0;
      v5[12] = v3;
      v5[13] = 0;

      result = sub_100039234(&v31);
      v5[2] = v4;
      return result;
    }
  }

  else
  {
    sub_100002BCC(&v26, &qword_1000B5428, &qword_100093030);
  }

  sub_10002A1BC();
  swift_allocError();
  *v24 = 3;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  *(v24 + 40) = 0u;
  *(v24 + 56) = 0u;
  *(v24 + 72) = 0;
  *(v24 + 80) = 15;
  swift_willThrow();
  return sub_100039234(&v31);
}