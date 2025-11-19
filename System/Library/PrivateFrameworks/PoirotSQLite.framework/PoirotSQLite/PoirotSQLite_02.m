unsigned __int8 *sub_21AF41D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
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
      result = sub_21AF49A80();
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

unsigned __int8 *sub_21AF4231C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
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
      result = sub_21AF49A80();
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
                    goto LABEL_126;
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
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
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
                goto LABEL_126;
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
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
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
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
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

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
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
                goto LABEL_126;
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
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
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
                goto LABEL_126;
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
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
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
              goto LABEL_126;
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
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}

unsigned __int8 *sub_21AF4288C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
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
      result = sub_21AF49A80();
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

unsigned __int8 *sub_21AF42DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
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
      result = sub_21AF49A80();
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

unsigned __int8 *sub_21AF4337C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_21AF49850();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21AF40DA8();
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
      result = sub_21AF49A80();
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

uint64_t sub_21AF438FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *static SQLiteType.getSQLNonNullDataType()@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(a1 + 24))(&v6);
  if (v6 > 0xAu)
  {
LABEL_8:
    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_11;
  }

  if (((1 << v6) & 0x23C) != 0)
  {
    *a2 = 0;
    return result;
  }

  if (((1 << v6) & 0x1C0) == 0)
  {
    if (v6 == 10)
    {
      sub_21AF23A54();
      swift_allocError();
      *v5 = 0xD00000000000003ELL;
      *(v5 + 8) = 0x800000021AF4A410;
      *(v5 + 16) = 0;
      *(v5 + 24) = 4;
      return swift_willThrow();
    }

    goto LABEL_8;
  }

  v4 = 3;
LABEL_11:
  *a2 = v4;
  return result;
}

BOOL sub_21AF43AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_21AF49A50();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t sub_21AF43B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    if (a3 > 0x7FFFFFFF)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    result = sqlite3_column_int(v7, a3);
    if (result < -128)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 8;
      *(v9 + 24) = 9;
      return swift_willThrow();
    }

    if (result > 127)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_21AF43C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    if (a3 > 0x7FFFFFFF)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    result = sqlite3_column_int(v7, a3);
    if (result < -32768)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 8;
      *(v9 + 24) = 9;
      return swift_willThrow();
    }

    if (result >= 0x8000)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_21AF43D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int(v7, a3);
  if ((result & 0x80000000) != 0)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 8;
    *(v9 + 24) = 9;
    return swift_willThrow();
  }

  if (result > 0xFF)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21AF43E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int(v7, a3);
  if ((result & 0x80000000) != 0)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 8;
    *(v9 + 24) = 9;
    return swift_willThrow();
  }

  if (WORD1(result))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_21AF43F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a3 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int(v7, a3);
      if ((result & 0x80000000) != 0)
      {
        sub_21AF23A54();
        swift_allocError();
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 8;
        *(v9 + 24) = 9;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF44068@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F130, &unk_21AF4C2B0);
      result = sub_21AF4754C(&qword_27CD3F138, &qword_27CD3F130, &unk_21AF4C2B0);
      a6[4] = result;
      *a6 = 256;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  a6[3] = a4;
  a6[4] = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF43B9C(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

uint64_t static SQLiteSafeType.create(from:at:nullable:)@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  if ((a3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *a2;
  v19 = v12;
  result = SQLiteRow.type(at:)(at);
  if (v6)
  {
    return result;
  }

  if (v20 == 4)
  {
    a6[3] = sub_21AF49990();
    v17 = *(a5 + 8);
    a6[4] = swift_getWitnessTable();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    return (*(*(a4 - 8) + 56))(boxed_opaque_existential_1, 1, 1, a4);
  }

  else
  {
LABEL_5:
    v18 = v11;
    v19 = v12;
    v15 = *(a5 + 16);
    v16 = *(a5 + 8);
    a6[3] = a4;
    a6[4] = v16;
    __swift_allocate_boxed_opaque_existential_1(a6);
    swift_unknownObjectRetain();
    result = v15(&v18, at, a4, a5);
    if (v6)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a6);
    }
  }

  return result;
}

uint64_t sub_21AF442DC@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F120, &qword_21AF4C2A8);
      result = sub_21AF4754C(&qword_27CD3F128, &qword_27CD3F120, &qword_21AF4C2A8);
      a6[4] = result;
      *a6 = 256;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  a6[3] = a4;
  a6[4] = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF43D84(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

uint64_t sub_21AF443E4@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F110, &qword_21AF4C2A0);
      result = sub_21AF4754C(&qword_27CD3F118, &qword_27CD3F110, &qword_21AF4C2A0);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 2) = 1;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF43C90(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

uint64_t sub_21AF444F0@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F100, &qword_21AF4C298);
      result = sub_21AF4754C(&qword_27CD3F108, &qword_27CD3F100, &qword_21AF4C298);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 2) = 1;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF43E7C(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

uint64_t sub_21AF445FC@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v10 = *a2;
  v11 = a2[1];
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v19 = *a2;
    v20 = a2[1];
    result = SQLiteRow.type(at:)(at);
    v7 = v15;
    if (v15)
    {
      return result;
    }

    if (v21 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0F0, &qword_21AF4C290);
      result = sub_21AF4754C(&qword_27CD3F0F8, &qword_27CD3F0F0, &qword_21AF4C290);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 4) = 1;
      return result;
    }

    a5 = v13;
    a4 = v12;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  ObjectType = swift_getObjectType();
  v17 = *(v11 + 24);
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v11);
  result = swift_unknownObjectRelease();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int(v18, at);
  *a6 = result;
  return result;
}

uint64_t sub_21AF44770@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0E0, &qword_21AF4C288);
      result = sub_21AF4754C(&qword_27CD3F0E8, &qword_27CD3F0E0, &qword_21AF4C288);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 4) = 1;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF43F74(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

sqlite3_int64 sub_21AF4487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a3 <= 0x7FFFFFFF)
    {
      return sqlite3_column_int64(v7, a3);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF44920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a3 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int64(v7, a3);
      if (result < 0)
      {
        sub_21AF23A54();
        swift_allocError();
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *v9 = 8;
        *(v9 + 24) = 9;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF44A0C@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v10 = *a2;
  v11 = a2[1];
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v19 = *a2;
    v20 = a2[1];
    result = SQLiteRow.type(at:)(at);
    v7 = v15;
    if (v15)
    {
      return result;
    }

    if (v21 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0D0, &qword_21AF4C280);
      result = sub_21AF4754C(&qword_27CD3F0D8, &qword_27CD3F0D0, &qword_21AF4C280);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 8) = 1;
      return result;
    }

    a5 = v13;
    a4 = v12;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  ObjectType = swift_getObjectType();
  v17 = *(v11 + 24);
  swift_unknownObjectRetain();
  v18 = v17(ObjectType, v11);
  result = swift_unknownObjectRelease();
  if (v7)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = sqlite3_column_int64(v18, at);
  *a6 = result;
  return result;
}

uint64_t sub_21AF44BC4@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  if (a3)
  {
    v11 = a4;
    v12 = a5;
    v15 = *a2;
    v16 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v6)
    {
      return result;
    }

    if (v17 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F0B0, &qword_21AF4C270);
      result = sub_21AF4754C(&qword_27CD3F0B8, &qword_27CD3F0B0, &qword_21AF4C270);
      *(a6 + 32) = result;
      *a6 = 0;
      *(a6 + 8) = 1;
      return result;
    }

    a5 = v12;
    a4 = v11;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v14 = swift_unknownObjectRetain();
  result = sub_21AF4487C(v14, v10, at);
  if (v6)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  *a6 = result;
  return result;
}

uint64_t sub_21AF44D14@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a2[1];
  if (a3)
  {
    v14 = a4;
    v15 = a5;
    v21 = *a2;
    v22 = a2[1];
    result = SQLiteRow.type(at:)(at);
    if (v10)
    {
      return result;
    }

    if (v23 == 4)
    {
      *(a9 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      result = sub_21AF4754C(a8, a6, a7);
      *(a9 + 32) = result;
      *a9 = 0;
      *(a9 + 8) = 1;
      return result;
    }

    a5 = v15;
    a4 = v14;
  }

  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v19 = swift_unknownObjectRetain();
  result = sub_21AF44920(v19, v13, at);
  if (v10)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a9);
  }

  *a9 = result;
  return result;
}

uint64_t static SQLiteType.sqlNull.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_21AF49990();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(a1 - 8) + 56))(boxed_opaque_existential_1, 1, 1, a1);
}

uint64_t SQLiteType.isEqualTo(sqlValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v44 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF49990();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v37 - v13;
  v42 = *(v9 - 8);
  v15 = v42;
  v16 = *(v42 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v45 = v6;
  (*(v6 + 16))(&v37 - v22, v4, a2);
  v24 = *(v6 + 56);
  v24(v23, 0, 1, a2);
  sub_21AF27430(v44, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F140, &qword_21AF4C2D0);
  v25 = swift_dynamicCast();
  v24(v21, v25 ^ 1u, 1, a2);
  v40 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v44 = v15;
  v27 = *(v15 + 16);
  v27(v14, v23, v9);
  v43 = v21;
  v27(&v14[v26], v21, v9);
  v28 = *(v45 + 48);
  if (v28(v14, 1, a2) != 1)
  {
    v27(v41, v14, v9);
    if (v28(&v14[v26], 1, a2) != 1)
    {
      v31 = v45;
      v32 = v37;
      (*(v45 + 32))(v37, &v14[v26], a2);
      v33 = *(*(v38 + 16) + 8);
      v34 = v41;
      v30 = sub_21AF496C0();
      v35 = *(v31 + 8);
      v35(v32, a2);
      v29 = *(v42 + 8);
      v29(v23, v9);
      v35(v34, a2);
      v29(v14, v9);
      goto LABEL_8;
    }

    v29 = *(v42 + 8);
    v29(v23, v9);
    (*(v45 + 8))(v41, a2);
    goto LABEL_6;
  }

  v29 = *(v42 + 8);
  v29(v23, v9);
  if (v28(&v14[v26], 1, a2) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v14, v40);
    v30 = 0;
    goto LABEL_8;
  }

  v29(v14, v9);
  v30 = 1;
LABEL_8:
  v29(v43, v9);
  return v30 & 1;
}

uint64_t SQLiteType.assumingType<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_21AF49990();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  v14 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v16 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v17 = swift_dynamicCast();
  v18 = *(*(a2 - 8) + 56);
  if (v17)
  {
    v19 = *(a2 - 8);
    v18(v13, 0, 1, a2);
    return (*(v19 + 32))(a3, v13, a2);
  }

  else
  {
    v18(v13, 1, 1, a2);
    (*(v9 + 8))(v13, v8);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_21AF49A60();

    v26 = 0x6465746365707845;
    v27 = 0xE900000000000020;
    v21 = sub_21AF49C50();
    MEMORY[0x21CEE5D10](v21);

    MEMORY[0x21CEE5D10](0x66202C6570797420, 0xED000020646E756FLL);
    v22 = sub_21AF49C50();
    MEMORY[0x21CEE5D10](v22);

    v23 = v26;
    v24 = v27;
    sub_21AF23A54();
    swift_allocError();
    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = 0;
    *(v25 + 24) = 3;
    return swift_willThrow();
  }
}

uint64_t static SQLiteUnsafeType.create(from:at:nullable:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a3;
  v26 = a6;
  v11 = sub_21AF49990();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v28 = *a1;
  v16 = *(a5 + 16);
  swift_unknownObjectRetain();
  result = v16(&v28, a2, a4, a5);
  if (!v6)
  {
    v18 = v12;
    v19 = v27;
    v20 = v26;
    v21 = *(a4 - 8);
    if ((*(v21 + 48))(v15, 1, a4) == 1)
    {
      (*(v18 + 8))(v15, v11);
      if (v19)
      {
        v20[3] = v11;
        v29 = *(a5 + 8);
        v20[4] = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
        return (*(v21 + 56))(boxed_opaque_existential_1, 1, 1, a4);
      }

      else
      {
        sub_21AF23A54();
        swift_allocError();
        *(v25 + 8) = 0;
        *(v25 + 16) = 0;
        *v25 = 6;
        *(v25 + 24) = 9;
        return swift_willThrow();
      }
    }

    else
    {
      v23 = *(a5 + 8);
      v20[3] = a4;
      v20[4] = v23;
      v24 = __swift_allocate_boxed_opaque_existential_1(v20);
      return (*(v21 + 32))(v24, v15, a4);
    }
  }

  return result;
}

void *sub_21AF45908@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  result = (*(*(a1 + 8) + 24))(&v6);
  if (v6 > 0xAu)
  {
LABEL_8:
    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_11;
  }

  if (((1 << v6) & 0x23C) != 0)
  {
    *a2 = 0;
    return result;
  }

  if (((1 << v6) & 0x1C0) == 0)
  {
    if (v6 == 10)
    {
      sub_21AF23A54();
      swift_allocError();
      *v5 = 0xD00000000000003ELL;
      *(v5 + 8) = 0x800000021AF4A410;
      *(v5 + 16) = 0;
      *(v5 + 24) = 4;
      return swift_willThrow();
    }

    goto LABEL_8;
  }

  v4 = 3;
LABEL_11:
  *a2 = v4;
  return result;
}

uint64_t sub_21AF45A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(*(a1 - 8) + 16);

  return v8(boxed_opaque_existential_1, v3, a1);
}

uint64_t static Bool.create(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21AF49710();
  v4 = v3;
  if (v2 == 1702195828 && v3 == 0xE400000000000000 || (v5 = v2, (sub_21AF49BA0() & 1) != 0))
  {

    v6 = 1;
  }

  else if (v5 == 0x65736C6166 && v4 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v8 = sub_21AF49BA0();

    v6 = 0;
    if ((v8 & 1) == 0)
    {
      v6 = 2;
    }
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F148, &qword_21AF4C2D8);
  result = sub_21AF4754C(&qword_27CD3F150, &qword_27CD3F148, &qword_21AF4C2D8);
  *(a1 + 32) = result;
  *a1 = v6;
  return result;
}

uint64_t sub_21AF45BB4@<X0>(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v10 = *a2;
  v11 = a2[1];
  if ((a3 & 1) == 0)
  {
LABEL_6:
    a6[3] = a4;
    a6[4] = a5;
    ObjectType = swift_getObjectType();
    v18 = *(v11 + 24);
    swift_unknownObjectRetain();
    v19 = v18(ObjectType, v11);
    result = swift_unknownObjectRelease();
    if (v7)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a6);
    }

    if (at < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (at <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int(v19, at);
      v16 = result != 0;
      goto LABEL_11;
    }

    __break(1u);
    return result;
  }

  v12 = a4;
  v13 = a5;
  v20 = *a2;
  v21 = a2[1];
  result = SQLiteRow.type(at:)(at);
  v7 = v15;
  if (v15)
  {
    return result;
  }

  if (v22 != 4)
  {
    a5 = v13;
    a4 = v12;
    goto LABEL_6;
  }

  a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F148, &qword_21AF4C2D8);
  result = sub_21AF4754C(&qword_27CD3F150, &qword_27CD3F148, &qword_21AF4C2D8);
  a6[4] = result;
  v16 = 2;
LABEL_11:
  *a6 = v16;
  return result;
}

uint64_t sub_21AF45D28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21AF49710();
  v4 = v3;
  if (v2 == 1702195828 && v3 == 0xE400000000000000 || (v5 = v2, (sub_21AF49BA0() & 1) != 0))
  {

    v6 = 1;
  }

  else if (v5 == 0x65736C6166 && v4 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v8 = sub_21AF49BA0();

    v6 = 0;
    if ((v8 & 1) == 0)
    {
      v6 = 2;
    }
  }

  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F148, &qword_21AF4C2D8);
  result = sub_21AF4754C(&qword_27CD3F150, &qword_27CD3F148, &qword_21AF4C2D8);
  *(a1 + 32) = result;
  *a1 = v6;
  return result;
}

uint64_t static Float.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21AF43AAC(a1, a2, &v7, MEMORY[0x277D84FB0]);
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F158, &qword_21AF4C2E0);
  result = sub_21AF4754C(&qword_27CD3F160, &qword_27CD3F158, &qword_21AF4C2E0);
  *(a3 + 32) = result;
  *a3 = v5;
  *(a3 + 4) = !v4;
  return result;
}

float sub_21AF45F40@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

void sub_21AF45F50(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v10 = *a2;
  v11 = a2[1];
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v19 = *a2;
    v20 = a2[1];
    SQLiteRow.type(at:)(at);
    v7 = v14;
    if (v14)
    {
      return;
    }

    if (v21 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F158, &qword_21AF4C2E0);
      *(a6 + 32) = sub_21AF4754C(&qword_27CD3F160, &qword_27CD3F158, &qword_21AF4C2E0);
      *a6 = 0;
      *(a6 + 4) = 1;
      return;
    }

    a5 = v13;
    a4 = v12;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  ObjectType = swift_getObjectType();
  v16 = *(v11 + 24);
  swift_unknownObjectRetain();
  v17 = v16(ObjectType, v11);
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_deallocate_boxed_opaque_existential_1(a6);
    return;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = sqlite3_column_double(v17, at);
  *a6 = v18;
}

uint64_t sub_21AF460C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21AF43AAC(a1, a2, &v7, MEMORY[0x277D84FB0]);
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F158, &qword_21AF4C2E0);
  result = sub_21AF4754C(&qword_27CD3F160, &qword_27CD3F158, &qword_21AF4C2E0);
  *(a3 + 32) = result;
  *a3 = v5;
  *(a3 + 4) = !v4;
  return result;
}

uint64_t static Double.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21AF43AAC(a1, a2, &v7, MEMORY[0x277D84FA8]);
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F168, &qword_21AF4C2E8);
  result = sub_21AF4754C(&qword_27CD3F170, &qword_27CD3F168, &qword_21AF4C2E8);
  *(a3 + 32) = result;
  *a3 = v5;
  *(a3 + 8) = !v4;
  return result;
}

double sub_21AF46288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

void sub_21AF46298(Swift::Int at@<X1>, uint64_t *a2@<X0>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v10 = *a2;
  v11 = a2[1];
  if (a3)
  {
    v12 = a4;
    v13 = a5;
    v18 = *a2;
    v19 = a2[1];
    SQLiteRow.type(at:)(at);
    v7 = v14;
    if (v14)
    {
      return;
    }

    if (v20 == 4)
    {
      *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F168, &qword_21AF4C2E8);
      *(a6 + 32) = sub_21AF4754C(&qword_27CD3F170, &qword_27CD3F168, &qword_21AF4C2E8);
      *a6 = 0;
      *(a6 + 8) = 1;
      return;
    }

    a5 = v13;
    a4 = v12;
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  ObjectType = swift_getObjectType();
  v16 = *(v11 + 24);
  swift_unknownObjectRetain();
  v17 = v16(ObjectType, v11);
  swift_unknownObjectRelease();
  if (v7)
  {
    __swift_deallocate_boxed_opaque_existential_1(a6);
    return;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  *a6 = sqlite3_column_double(v17, at);
}

uint64_t sub_21AF4640C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21AF43AAC(a1, a2, &v7, MEMORY[0x277D84FA8]);
  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F168, &qword_21AF4C2E8);
  result = sub_21AF4754C(&qword_27CD3F170, &qword_27CD3F168, &qword_21AF4C2E8);
  *(a3 + 32) = result;
  *a3 = v5;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t static String.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  a3[4] = &protocol witness table for String;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_21AF46528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v4 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v5;
  a3[1] = v4;
}

uint64_t sub_21AF4653C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v12 = *(v9 + 24);
  swift_unknownObjectRetain();
  v13 = v12(ObjectType, v9);
  result = swift_unknownObjectRelease();
  if (!v6)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if (sqlite3_column_text(v13, a2))
      {
        result = sub_21AF497B0();
        a6[3] = a4;
        a6[4] = a5;
        *a6 = result;
        a6[1] = v15;
      }

      else if (a3)
      {
        a6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F190, &unk_21AF4C390);
        result = sub_21AF4754C(&qword_27CD3F198, &qword_27CD3F190, &unk_21AF4C390);
        a6[4] = result;
        *a6 = 0;
        a6[1] = 0;
      }

      else
      {
        sub_21AF23A54();
        swift_allocError();
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        *v16 = 6;
        *(v16 + 24) = 9;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21AF466C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  *a5 = a1;
  a5[1] = a2;
}

unint64_t static Data.create(from:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21AF495E0();
  v4 = v3;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F178, &qword_21AF4C2F0);
  result = sub_21AF46758();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

unint64_t sub_21AF46758()
{
  result = qword_27CD3F180;
  if (!qword_27CD3F180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD3F178, &qword_21AF4C2F0);
    sub_21AF23C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F180);
  }

  return result;
}

uint64_t sub_21AF467DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
  return sub_21AF2C54C(v4, v5);
}

uint64_t sub_21AF467F4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = *a1;
  swift_unknownObjectRetain();
  result = sub_21AF3AA18(&v15, a2);
  if (!v6)
  {
    if (v13 >> 60 == 15)
    {
      if (a3)
      {
        *(a6 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F178, &qword_21AF4C2F0);
        result = sub_21AF46758();
        *(a6 + 32) = result;
        *a6 = xmmword_21AF4C2C0;
      }

      else
      {
        sub_21AF23A54();
        swift_allocError();
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 6;
        *(v14 + 24) = 9;
        return swift_willThrow();
      }
    }

    else
    {
      *(a6 + 24) = a4;
      *(a6 + 32) = a5;
      *a6 = result;
      *(a6 + 8) = v13;
    }
  }

  return result;
}

unint64_t sub_21AF468F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21AF495E0();
  v4 = v3;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F178, &qword_21AF4C2F0);
  result = sub_21AF46758();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t static Optional<A>.create(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return (*(a4 + 64))();
  }

  a5[3] = sub_21AF49990();
  a5[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return (*(*(a3 - 8) + 56))(boxed_opaque_existential_1, 1, 1, a3);
}

uint64_t Optional<A>.getSQLDataType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  result = (*(v6 + 48))(v13, 1, v5);
  if (result == 1)
  {
    *a3 = 4;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    (*(a2 + 40))(v5, a2);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t Optional<A>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  result = (*(v6 + 48))(v13, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    (*(a2 + 48))(v5, a2);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_21AF46E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  result = (*(v6 + 48))(v13, 1, v5);
  if (result == 1)
  {
    *a3 = 4;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    (*(v4 + 40))(v5, v4);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_21AF47078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  result = (*(v6 + 48))(v13, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    (*(v4 + 48))(v5, v4);
    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_21AF47240(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 - 8);
  v6 = *(a4 + 16);
  v8 = *a1;
  return (*(v5 + 56))(&v8);
}

uint64_t sub_21AF47290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = *(a3 + 16);
    return (*(*(a4 - 8) + 64))();
  }

  else
  {
    a5[3] = a3;
    a5[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(*(a3 + 16) - 8) + 56))(boxed_opaque_existential_1, 1, 1);
  }
}

unint64_t sub_21AF47390(uint64_t a1)
{
  result = sub_21AF473B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21AF473B8()
{
  result = qword_27CD3F188;
  if (!qword_27CD3F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3F188);
  }

  return result;
}

uint64_t sub_21AF4740C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21AF4754C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_21AF4760C@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
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

uint64_t SQLiteDatabaseInspector.inspectSchemas(in:)(uint64_t a1, sqlite3 *a2, uint64_t a3)
{
  *&v57 = a1;
  v66 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 8);
  v8 = *(v7(a2, a3) + 16);

  if (v8)
  {
    v55 = v3;
    *&v56 = v4;
    v53 = a2;
    v54 = a3;
    v10 = v7(a2, a3);
    v60 = v10;
    v11 = *(v10 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v59 = MEMORY[0x277D84F90];
      v13 = v10;

      sub_21AF26FEC(0, v11, 0);
      v12 = v59;
      v52 = v13;
      v14 = v13 + 32;
      do
      {
        sub_21AF48204(v14, zSql);
        ppStmt[0] = 39;
        ppStmt[1] = 0xE100000000000000;
        MEMORY[0x21CEE5D10](*zSql, *&zSql[8]);
        MEMORY[0x21CEE5D10](39, 0xE100000000000000);
        sub_21AF48260(zSql);
        v59 = v12;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21AF26FEC((v15 > 1), v16 + 1, 1);
          v12 = v59;
        }

        *(v12 + 16) = v16 + 1;
        v17 = v12 + 16 * v16;
        *(v17 + 32) = 39;
        *(v17 + 40) = 0xE100000000000000;
        v14 += 56;
        --v11;
      }

      while (v11);
    }

    v18 = 0xD000000000000014;
    *zSql = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EF28, qword_21AF4C3A0);
    sub_21AF295AC();
    v19 = sub_21AF496A0();
    v21 = v20;

    *zSql = 0;
    *&zSql[8] = 0xE000000000000000;
    sub_21AF49A60();
    MEMORY[0x21CEE5D10](0xD000000000000044, 0x800000021AF4ADA0);
    MEMORY[0x21CEE5D10](v19, v21);

    v22 = MEMORY[0x21CEE5D10](41, 0xE100000000000000);
    v23 = *&zSql[8];
    v24 = *(v57 + 16);
    if (!v24)
    {

      sub_21AF23A54();
      swift_allocError();
      *(v27 + 16) = 0;
      *v27 = 0;
      goto LABEL_26;
    }

    v25 = *zSql;
    ppStmt[0] = 0;
    v58 = 0;
    v59 = 0;
    MEMORY[0x28223BE20](v22);
    v48 = v24;
    v49 = &v58;
    v50 = ppStmt;
    v51 = &v59;
    if ((v23 & 0x1000000000000000) == 0)
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
        *zSql = v25;
        *&zSql[8] = v23 & 0xFFFFFFFFFFFFFFLL;
        v26 = zSql;
        goto LABEL_15;
      }

      if ((v25 & 0x1000000000000000) != 0)
      {
        v26 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_15:
        v28 = sqlite3_prepare_v3(v24, v26, -1, 0, ppStmt, 0);
        if (v28)
        {
          v59 = sqlite3_error_offset(v24);
        }

        v29 = v56;
        goto LABEL_18;
      }
    }

    v29 = v56;
    sub_21AF49A50();
    v28 = *zSql;
LABEL_18:
    if (ppStmt[0] && !v28)
    {
      v30 = sub_21AF39E8C(v57, ppStmt[0]);
      if (v29)
      {
      }

      else
      {
        *zSql = v30;
        *&zSql[8] = v31;
        *&v63 = v25;
        *(&v63 + 1) = v23;
        v64 = xmmword_21AF4B260;
        v65 = 0;
        MEMORY[0x28223BE20](v30);
        v35 = v54;
        v48 = v53;
        v49 = v54;
        v50 = v55;
        v51 = &v60;
        SQLiteStatement.forEach(_:)(sub_21AF482C8, &v47);

        swift_unknownObjectRelease();
        v36 = v60;
        v37 = *(v60 + 16);
        if (v37)
        {
          v38 = 0;
          *&v57 = v35 + 32;
          v39 = (v60 + 40);
          do
          {
            if (v38 >= *(v36 + 16))
            {
              __break(1u);
            }

            v40 = *(v39 - 1);
            v41 = *v39;
            v42 = v54;
            v43 = *(v54 + 32);

            v43(v40, v41, v53, v42);

            ++v38;
            v39 += 7;
          }

          while (v37 != v38);
        }
      }

      goto LABEL_35;
    }

    v32 = *(v57 + 16);
    if (v32)
    {
      if (sqlite3_errmsg(v32))
      {
        v18 = sub_21AF497A0();
        v34 = v33;
      }

      else
      {
        v34 = 0x800000021AF4A500;
      }

      sub_21AF2FEB4(v25, v23, v59, zSql);
      sub_21AF28218();
      v56 = v63;
      v57 = *zSql;
      swift_allocError();
      *v44 = v28;
      *(v44 + 8) = v18;
      *(v44 + 16) = v34;
      *(v44 + 24) = v25;
      *(v44 + 32) = v23;
      v45 = v57;
      *(v44 + 56) = v56;
      *(v44 + 40) = v45;
      goto LABEL_34;
    }

    sub_21AF23A54();
    swift_allocError();
    *(v27 + 16) = 0;
    *v27 = 4;
LABEL_26:
    *(v27 + 8) = 0;
    *(v27 + 24) = 9;
LABEL_34:
    swift_willThrow();
LABEL_35:
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *sub_21AF47C78(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v8 = a1[1];
  v39 = *a1;
  v40 = v8;
  v10._countAndFlagsBits = 1701667182;
  v10._object = 0xE400000000000000;
  result = SQLiteRow.columnIndex(for:)(v10);
  if (v12)
  {
    return result;
  }

  v13 = result;
  v41 = a5;
  v38 = a3;
  ObjectType = swift_getObjectType();
  v15 = *(v8 + 24);
  result = v15(ObjectType, v8);
  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (sqlite3_column_text(result, v13))
  {
    v37 = sub_21AF497B0();
    v17 = v16;
    v39 = v9;
    v40 = v8;
    v18._countAndFlagsBits = 7106931;
    v18._object = 0xE300000000000000;
    v19 = SQLiteRow.columnIndex(for:)(v18);
    if (!v20)
    {
      v21 = v19;
      result = v15(ObjectType, v8);
      if (v21 < 0xFFFFFFFF80000000)
      {
        goto LABEL_35;
      }

      if (v21 > 0x7FFFFFFF)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      v23 = v17;
      if (sqlite3_column_text(result, v21))
      {
        v24 = sub_21AF497B0();
        v26 = v25;
        v27 = (*(v41 + 16))(v37, v17, a4, v41);
        if (v27 == v24 && v28 == v26)
        {
        }

        else
        {
          v30 = sub_21AF49BA0();

          if ((v30 & 1) == 0)
          {
            (*(v41 + 24))(v37, v17, v24, v26, a4, v41);
          }
        }

        v31 = *v38;
        v32 = *(*v38 + 16);

        if (!v32)
        {
LABEL_29:
        }

        v33 = 0;
        v34 = v31 + 32;
        while (v33 < *(v31 + 16))
        {
          sub_21AF48204(v34, &v39);
          if (v39 == v37 && v40 == v23)
          {
            sub_21AF48260(&v39);
LABEL_31:

            sub_21AF48034(v33, &v39);
            return sub_21AF48260(&v39);
          }

          v36 = sub_21AF49BA0();
          result = sub_21AF48260(&v39);
          if (v36)
          {
            goto LABEL_31;
          }

          ++v33;
          v34 += 56;
          if (v32 == v33)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_34;
      }

      sub_21AF23A54();
      swift_allocError();
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = 6;
      *(v29 + 24) = 9;
      swift_willThrow();
    }
  }

  sub_21AF23A54();
  swift_allocError();
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = 6;
  *(v22 + 24) = 9;
  return swift_willThrow();
}

uint64_t sub_21AF48034@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21AF482B4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = *(v9 + 80);
    result = memmove((v9 + 32), (v9 + 88), 56 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

char *sub_21AF480DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3F1A0, &qword_21AF4C3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t SQLiteTableDescription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SQLiteTableDescription.init(name:schema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  return sub_21AF27418(a3, (a4 + 2));
}

uint64_t sub_21AF483C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))(a2, a3);
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = result + 48;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v9 - 16);
      v10 = *(v9 - 8);
      sub_21AF27430(v9, v14);

      SQLiteDatabaseManager.create(table:with:in:)(v11, v10, v14, a1, a2, a3);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      ++v8;
      __swift_destroy_boxed_opaque_existential_1(v14);

      v9 += 56;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return (*(a3 + 40))(a1, a2, a3);
  }

  return result;
}

uint64_t SQLiteDatabaseManager.create(table:with:in:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  result = SQLiteDatabaseManager.tableCreationStatementString(for:with:)(a1, a2, a3, a5, a6);
  if (v6)
  {
    goto LABEL_21;
  }

  v9 = *(a4 + 16);
  if (!v9)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v15 + 16) = 0;
    *v15 = 0;
LABEL_18:
    *(v15 + 8) = 0;
    *(v15 + 24) = 9;
    result = swift_willThrow();
    goto LABEL_21;
  }

  ppStmt[0] = 0;
  v26 = 0;
  v10 = MEMORY[0x28223BE20](result);
  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v12 = v10;
      v13 = v11;
      v14 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_9;
    }

LABEL_22:
    v12 = v10;
    v13 = v11;
    sub_21AF49A50();
    v16 = *zSql;
    goto LABEL_11;
  }

  v13 = v11;
  v12 = v10;
  *zSql = v10;
  *&zSql[8] = v11 & 0xFFFFFFFFFFFFFFLL;
  v14 = zSql;
LABEL_9:
  v16 = sqlite3_prepare_v3(v9, v14, -1, 0, ppStmt, 0);
  if (v16)
  {
    v26 = sqlite3_error_offset(v9);
  }

LABEL_11:
  if (ppStmt[0] && !v16)
  {
    *zSql = sub_21AF39E8C(a4, ppStmt[0]);
    *&zSql[8] = v21;
    *&v28 = v12;
    *(&v28 + 1) = v13;
    v29 = xmmword_21AF4B260;
    v30 = 0;
    SQLiteStatement.execute()();

    result = swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v17 = *(a4 + 16);
  if (!v17)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v15 + 16) = 0;
    *v15 = 4;
    goto LABEL_18;
  }

  if (sqlite3_errmsg(v17))
  {
    v18 = sub_21AF497A0();
    v20 = v19;
  }

  else
  {
    v20 = 0x800000021AF4A500;
    v18 = 0xD000000000000014;
  }

  sub_21AF2FEB4(v12, v13, v26, zSql);
  sub_21AF28218();
  v24 = v28;
  v25 = *zSql;
  swift_allocError();
  *v22 = v16;
  *(v22 + 8) = v18;
  *(v22 + 16) = v20;
  *(v22 + 24) = v12;
  *(v22 + 32) = v13;
  *(v22 + 56) = v24;
  *(v22 + 40) = v25;
  result = swift_willThrow();
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SQLiteDatabaseManager.dropTables(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61[7] = *MEMORY[0x277D85DE8];
  v4 = (*(a3 + 16))(a2, a3);
  v6 = *(v4 + 16);
  if (v6)
  {
    v44 = v4;
    v7 = v4 + 32;
    v50 = 0x800000021AF4ADF0;
    v45 = 0x800000021AF4A500;
    *&v5 = 136315394;
    v48 = v5;
    v46 = xmmword_21AF4B260;
    v49 = a1;
    while (1)
    {
      v52 = v7;
      sub_21AF48204(v7, v61);
      *zSql = 0;
      *&zSql[8] = 0xE000000000000000;
      sub_21AF49A60();

      *zSql = 0xD000000000000015;
      *&zSql[8] = v50;
      v8 = MEMORY[0x21CEE5D10](v61[0], v61[1]);
      v9 = *&zSql[8];
      v10 = *(a1 + 16);
      if (!v10)
      {

        sub_21AF23A54();
        v14 = swift_allocError();
        *(v13 + 16) = 0;
        *v13 = 0;
        goto LABEL_22;
      }

      v11 = *zSql;
      ppStmt = 0;
      v54 = 0;
      v53 = 0;
      MEMORY[0x28223BE20](v8);
      if ((v9 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v9 & 0x2000000000000000) != 0)
      {
        *zSql = v11;
        *&zSql[8] = v9 & 0xFFFFFFFFFFFFFFLL;
        v12 = zSql;
      }

      else
      {
        if ((v11 & 0x1000000000000000) == 0)
        {
          break;
        }

        v12 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      v15 = sqlite3_prepare_v3(v10, v12, -1, 0, &ppStmt, 0);
      if (v15)
      {
        v53 = sqlite3_error_offset(v10);
      }

LABEL_14:
      if (!ppStmt || v15)
      {
        v19 = *(a1 + 16);
        if (v19)
        {
          if (sqlite3_errmsg(v19))
          {
            v20 = sub_21AF497A0();
            v22 = v21;
          }

          else
          {
            v20 = 0xD000000000000014;
            v22 = v45;
          }

          v24 = v15;
          sub_21AF2FEB4(v11, v9, v53, zSql);
          sub_21AF28218();
          v51 = *zSql;
          v47 = v58;
          v14 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v20;
          *(v25 + 16) = v22;
          *(v25 + 24) = v11;
          *(v25 + 32) = v9;
          *(v25 + 56) = v47;
          *(v25 + 40) = v51;
LABEL_27:
          swift_willThrow();
LABEL_28:
          *&v51 = 0;
          if (qword_27CD3ECD8 != -1)
          {
            swift_once();
          }

          v26 = sub_21AF49690();
          __swift_project_value_buffer(v26, qword_27CD3F1A8);
          sub_21AF48204(v61, zSql);
          MEMORY[0x21CEE6780](v14);
          v27 = sub_21AF49670();
          v28 = sub_21AF49970();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            ppStmt = v30;
            *v29 = v48;
            v32 = *zSql;
            v31 = *&zSql[8];

            sub_21AF48260(zSql);
            v33 = sub_21AF39910(v32, v31, &ppStmt);

            *(v29 + 4) = v33;
            *(v29 + 12) = 2080;
            ErrorValue = swift_getErrorValue();
            v35 = *(*(v55 - 8) + 64);
            MEMORY[0x28223BE20](ErrorValue);
            (*(v37 + 16))(&v44 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
            v38 = sub_21AF49700();
            v40 = sub_21AF39910(v38, v39, &ppStmt);

            *(v29 + 14) = v40;
            a1 = v49;
            _os_log_impl(&dword_21AF22000, v27, v28, "Failed to delete table: %s with %s", v29, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CEE68E0](v30, -1, -1);
            MEMORY[0x21CEE68E0](v29, -1, -1);
          }

          else
          {

            sub_21AF48260(zSql);
          }

          goto LABEL_4;
        }

        sub_21AF23A54();
        v14 = swift_allocError();
        *(v13 + 16) = 0;
        *v13 = 4;
LABEL_22:
        *(v13 + 8) = 0;
        *(v13 + 24) = 9;
        goto LABEL_27;
      }

      v16 = v51;
      v17 = sub_21AF39E8C(a1, ppStmt);
      v14 = v16;
      if (v16)
      {

        goto LABEL_28;
      }

      *zSql = v17;
      *&zSql[8] = v18;
      *&v58 = v11;
      *(&v58 + 1) = v9;
      v59 = v46;
      v60 = 0;
      SQLiteStatement.execute()();
      v14 = v23;
      if (v23)
      {

        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      *&v51 = 0;

      swift_unknownObjectRelease();
LABEL_4:
      sub_21AF48260(v61);
      v7 = v52 + 56;
      if (!--v6)
      {
        goto LABEL_34;
      }
    }

    v41 = v51;
    sub_21AF49A50();
    *&v51 = v41;
    v15 = *zSql;
    goto LABEL_14;
  }

LABEL_34:

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteDatabaseManager.tableCreationStatementString(for:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = (*(v2 + 16))();
  v9 = v7;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v7 + 32;
    while (v11 < *(v9 + 16))
    {
      sub_21AF48204(v12, v19);
      v13 = *&v19[0] == countAndFlagsBits && *(&v19[0] + 1) == object;
      if (v13 || (sub_21AF49BA0() & 1) != 0)
      {

        v21 = v19[0];
        v22[0] = v19[1];
        v22[1] = v19[2];
        v23 = v20;
        sub_21AF27430(v22, v24);
        sub_21AF48260(&v21);
        sub_21AF27418(v24, v25);
        v14 = SQLiteDatabaseManager.tableCreationStatementString(for:with:)(countAndFlagsBits, object, v25, v4, v3);
        v15 = v17;
        __swift_destroy_boxed_opaque_existential_1(v25);
        goto LABEL_12;
      }

      ++v11;
      v7 = sub_21AF48260(v19);
      v12 += 56;
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_21AF49A60();

    *&v21 = 0x20656C626154;
    *(&v21 + 1) = 0xE600000000000000;
    MEMORY[0x21CEE5D10](countAndFlagsBits, object);
    MEMORY[0x21CEE5D10](0xD000000000000011, 0x800000021AF4AE10);
    v15 = *(&v21 + 1);
    v14 = v21;
    sub_21AF23A54();
    swift_allocError();
    *v16 = __PAIR128__(v15, v14);
    *(v16 + 16) = 0;
    *(v16 + 24) = 4;
    swift_willThrow();
LABEL_12:
    v7 = v14;
    v8 = v15;
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t SQLiteDatabaseManager.tableCreationStatementString(for:with:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 64))(a1, a2, a4, a5);
  if (!v5 && !v10)
  {
    v11 = a3[4];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    return SQLiteSchemaDescribing.makeCreateStatementString(for:in:)(v13, v12)._countAndFlagsBits;
  }

  return result;
}

void SQLiteDatabaseManager.ensureVersion(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 8))(a2, a3);
  v8 = (*(a3 + 24))(a1, a2, a3);
  if (!v3 && v7 != v8)
  {
    if (v8 >= v7)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 11;
      *(v10 + 24) = 9;
      swift_willThrow();
    }

    else
    {
      if (v8)
      {
        v9 = (*(a3 + 48))(a1, v8, a2, a3);
      }

      else
      {
        v9 = (*(a3 + 32))(a1, a2, a3);
      }

      MEMORY[0x28223BE20](v9);
      sub_21AF33274(sub_21AF49324);
    }
  }
}

uint64_t sub_21AF492C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    return (*(a5 + 56))(a3, a1, a4, a5);
  }

  else
  {
    return sub_21AF483C0(a3, a4, a5);
  }
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

uint64_t sub_21AF49364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21AF493AC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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