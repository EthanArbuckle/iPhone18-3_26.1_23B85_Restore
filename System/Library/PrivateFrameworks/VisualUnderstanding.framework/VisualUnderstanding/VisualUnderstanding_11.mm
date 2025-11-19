uint64_t sub_1D222BA30(uint64_t a1, void **a2, void **a3, void **a4)
{
  v84 = sub_1D225055C();
  v8 = *(v84 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = &v75 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v77 = (&v75 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v75 - v16;
  v17 = a2 - a1;
  v18 = v17 / 8;
  v19 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v19 = a3 - a2;
  }

  v20 = v19 >> 3;
  if (v18 >= v19 >> 3)
  {
    if (a4 != a2 || &a2[v20] <= a4)
    {
      v50 = v15;
      memmove(a4, a2, 8 * v20);
      v15 = v50;
    }

    v23 = &a4[v20];
    v21 = a4;
    v51 = v84;
    if (a3 - a2 >= 8)
    {
      v52 = v15;
      v15 = a2;
      v87 = v52;
      if (a2 <= v52)
      {
        goto LABEL_51;
      }

      v53 = &off_1E83FA000;
      v82 = a4;
      v76 = (v8 + 8);
LABEL_32:
      v80 = v15;
      a2 = v15 - 1;
      --a3;
      v54 = v23;
      v77 = v15 - 1;
      while (1)
      {
        v55 = *(v54 - 1);
        v85 = v54 - 1;
        v56 = *a2;
        v57 = v55;
        v58 = v56;
        v59 = [v57 v53[286]];
        if (v59 == [v58 v53[286]])
        {
          v81 = v58;
          v86 = v23;
          v83 = a3;
          result = [v57 uuid];
          if (!result)
          {
            goto LABEL_57;
          }

          v60 = result;
          v61 = v79;
          sub_1D225054C();

          v62 = sub_1D225051C();
          v64 = v63;
          v65 = *v76;
          (*v76)(v61, v51);
          result = [v81 uuid];
          if (!result)
          {
LABEL_58:
            __break(1u);
            return result;
          }

          v66 = result;
          v67 = v51;
          v68 = v78;
          sub_1D225054C();

          v69 = sub_1D225051C();
          v71 = v70;
          v65(v68, v67);
          if (v62 == v69 && v64 == v71)
          {

            v21 = v82;
            a3 = v83;
            v23 = v86;
            v53 = &off_1E83FA000;
            a2 = v77;
          }

          else
          {
            v74 = sub_1D225126C();

            v21 = v82;
            a3 = v83;
            v23 = v86;
            v53 = &off_1E83FA000;
            a2 = v77;
            if (v74)
            {
LABEL_45:
              if (a3 + 1 != v80)
              {
                *a3 = *a2;
              }

              v51 = v84;
              if (v23 <= v21)
              {
                break;
              }

              v15 = a2;
              if (a2 <= v87)
              {
                break;
              }

              goto LABEL_32;
            }
          }
        }

        else
        {
          v72 = [v57 v53[286]];
          v73 = [v58 v53[286]];

          if (v72 < v73)
          {
            goto LABEL_45;
          }
        }

        v54 = v85;
        if (a3 + 1 != v23)
        {
          *a3 = *v85;
        }

        --a3;
        v23 = v54;
        v51 = v84;
        if (v54 <= v21)
        {
          v23 = v54;
          v15 = v80;
          goto LABEL_51;
        }
      }
    }

    v15 = a2;
  }

  else
  {
    v21 = a4;
    if (a4 != v15 || &v15[v18] <= a4)
    {
      v22 = v15;
      memmove(v21, v15, 8 * v18);
      v15 = v22;
    }

    v23 = &v21[v18];
    if (v17 >= 8)
    {
      v24 = a2;
      if (a2 < a3)
      {
        v25 = (v8 + 8);
        v26 = &off_1E83FA000;
        v27 = &off_1E83FA000;
        v83 = a3;
        v86 = v23;
        v79 = v25;
        while (1)
        {
          v87 = v15;
          v28 = *v21;
          v29 = *v24;
          v30 = v28;
          LODWORD(v28) = [v29 v26[286]];
          if (v28 == [v30 v26[286]])
          {
            v85 = v30;
            v80 = v24;
            result = [v29 v27[279]];
            if (!result)
            {
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v32 = result;
            v82 = v21;
            v33 = v81;
            sub_1D225054C();

            v34 = sub_1D225051C();
            v36 = v35;
            v37 = *v79;
            v38 = v84;
            (*v79)(v33, v84);
            result = [v85 v27[279]];
            if (!result)
            {
              goto LABEL_56;
            }

            v39 = result;
            v40 = v77;
            sub_1D225054C();

            v41 = sub_1D225051C();
            v43 = v42;
            v37(v40, v38);
            if (v34 == v41 && v36 == v43)
            {

              v24 = v80;
              v21 = v82;
              a3 = v83;
LABEL_21:
              v46 = v21;
              v47 = v87;
              v48 = v87 == v21++;
              v23 = v86;
              if (v48)
              {
                goto LABEL_23;
              }

LABEL_22:
              *v47 = *v46;
              goto LABEL_23;
            }

            v49 = sub_1D225126C();

            v24 = v80;
            v21 = v82;
            a3 = v83;
            if ((v49 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v44 = [v29 v26[286]];
            v45 = [v30 v26[286]];

            if (v44 >= v45)
            {
              goto LABEL_21;
            }
          }

          v46 = v24;
          v47 = v87;
          v48 = v87 == v24++;
          v23 = v86;
          if (!v48)
          {
            goto LABEL_22;
          }

LABEL_23:
          v15 = v47 + 1;
          v27 = &off_1E83FA000;
          if (v21 < v23)
          {
            v26 = &off_1E83FA000;
            if (v24 < a3)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

LABEL_51:
  if (v15 != v21 || v15 >= (v21 + ((v23 - v21 + (v23 - v21 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v21, 8 * (v23 - v21));
  }

  return 1;
}

unint64_t sub_1D222C104(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1D3899660](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1D3899660](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_1D222C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1D2250AAC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D222CCF0();
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
      result = sub_1D225108C();
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

unsigned __int8 *sub_1D222C71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1D2250AAC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1D222CCF0();
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
      result = sub_1D225108C();
      v7 = v62;
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
                    goto LABEL_127;
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
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
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

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
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

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
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
                  goto LABEL_127;
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
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
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
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
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

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
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

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D222CCF0()
{
  v0 = sub_1D2250ABC();
  v4 = sub_1D222CD70(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D222CD70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D2250E6C();
    if (!v9 || (v10 = v9, v11 = sub_1D21765CC(v9, 0), v12 = sub_1D222CEC8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D22509DC();

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
      return sub_1D22509DC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D225108C();
LABEL_4:

  return sub_1D22509DC();
}

unint64_t sub_1D222CEC8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1D222D0E8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D2250A6C();
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
          result = sub_1D225108C();
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

    result = sub_1D222D0E8(v12, a6, a7);
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

    result = sub_1D2250A4C();
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

uint64_t sub_1D222D0E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D2250A7C();
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
    v5 = MEMORY[0x1D3898490](15, a1 >> 16);
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

uint64_t (*sub_1D222D164(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3898A80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D222D494;
  }

  __break(1u);
  return result;
}

void (*sub_1D222D1E4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D3898A80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D222D264;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D222D40C()
{
  result = qword_1EC6D2E40;
  if (!qword_1EC6D2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2E40);
  }

  return result;
}

uint64_t sub_1D222D4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D21AF944(0, v1, 0);
    v4 = v27;
    v26 = a1 + 64;
    result = sub_1D2250EBC();
    v6 = result;
    v7 = 0;
    v23 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v26 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      v24 = *(a1 + 36);
      v25 = *(*(a1 + 48) + 8 * v6);
      type metadata accessor for VUIndexClusterer.NodeTags(0);
      v10 = swift_allocObject();
      v11 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
      v12 = sub_1D225055C();
      result = (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
      *(v10 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore) = 0;
      *(v10 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed) = 0;
      *(v10 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores) = MEMORY[0x1E69E7CC8];
      *(v10 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_localRejectionTags) = v2;
      v14 = *(v27 + 16);
      v13 = *(v27 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D21AF944((v13 > 1), v14 + 1, 1);
      }

      *(v27 + 16) = v14 + 1;
      v15 = v27 + 16 * v14;
      *(v15 + 32) = v25;
      *(v15 + 40) = v10;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_24;
      }

      v16 = *(v26 + 8 * v9);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v2 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 72 + 8 * v9);
        v2 = MEMORY[0x1E69E7CC0];
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D217B36C(v6, v24, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1D217B36C(v6, v24, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v23)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D222D79C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D21AF890(0, v2, 0);
    v3 = v19;
    v6 = 0;
    v7 = *(sub_1D225055C() - 8);
    v17 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = v7;
    do
    {
      v8 = *a2;
      if (*(*a2 + 16) && (v9 = sub_1D2196D38(v17 + *(v18 + 72) * v6), (v10 & 1) != 0))
      {
        v11 = 0;
        v12 = *(*(v8 + 56) + 8 * v9);
      }

      else
      {
        v12 = 0;
        v11 = 1;
      }

      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D21AF890((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
    }

    while (v2 != v6);
  }

  return v3;
}

BOOL sub_1D222D8F0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D225055C();
    ++v2;
    sub_1D22385D0(&qword_1EDC87220, MEMORY[0x1E69695A8]);
  }

  while ((sub_1D225091C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1D222D9FC(uint64_t a1, uint64_t a2)
{
  v42 = sub_1D225055C();
  v4 = *(v42 - 8);
  v5 = MEMORY[0x1EEE9AC00](v42);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2460);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v33 - v8;
  v10 = type metadata accessor for VUStreamingGallery.Label(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v33 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v43 = *(v17 + 72);
    v41 = (v4 + 8);
    v34 = (v4 + 32);
    v35 = v16;
    v37 = v10;
    v38 = a1;
    v36 = v13;
    do
    {
      sub_1D2237834(v21, v19);
      v22 = *(v44 + 48);
      sub_1D2237834(v19, v9);
      sub_1D2237834(a1, &v9[v22]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D2237834(v9, v13);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v41)(v13, v42);
LABEL_4:
          sub_1D2176170(v9, &qword_1EC6D2460);
          sub_1D21DB838(v19);
          goto LABEL_5;
        }

        v23 = *v34;
        v24 = v39;
        v25 = v13;
        v26 = v42;
        (*v34)(v39, v25, v42);
        v27 = v40;
        v23(v40, &v9[v22], v26);
        v28 = sub_1D225053C();
        v29 = *v41;
        (*v41)(v27, v26);
        v30 = v24;
        v31 = v26;
        v16 = v35;
        v13 = v36;
        v29(v30, v31);
        a1 = v38;
      }

      else
      {
        sub_1D2237834(v9, v16);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_4;
        }

        v28 = *v16 == *&v9[v22];
      }

      sub_1D21DB838(v9);
      sub_1D21DB838(v19);
      if (v28)
      {
        return 1;
      }

LABEL_5:
      v21 += v43;
      --v20;
    }

    while (v20);
  }

  return 0;
}

uint64_t sub_1D222DDC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 40);
  do
  {
    result = *(v3 - 1);
    if (*v3)
    {
      if (*(a2 + 8))
      {
        return result;
      }
    }

    else
    {
      if (result == *a2)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 1;
      }

      if (v4 != 1)
      {
        return result;
      }
    }

    v3 += 16;
    --v2;
  }

  while (v2);
  return 0;
}

uint64_t sub_1D222DE40(unsigned int a1, uint64_t a2, void *a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  v296 = a2;
  v301 = a8;
  LODWORD(v298) = a6;
  LODWORD(v303) = a5;
  v284 = a4;
  v295 = a3;
  v306 = a1;
  v10 = sub_1D225077C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v288 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v285 = (&v277 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v277 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v304 = &v277 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v277 - v21;
  v23 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_signposter;
  sub_1D225076C();
  v292 = v23;
  v307 = v8;
  v24 = sub_1D225078C();
  v25 = sub_1D2250DAC();
  v26 = sub_1D2250E4C();
  v302 = a7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v24, v25, v28, "cluster", "", v27, 2u);
    v29 = v27;
    a7 = v302;
    MEMORY[0x1D3899640](v29, -1, -1);
  }

  v299 = *(v11 + 16);
  v300 = (v11 + 16);
  v299(v304, v22, v10);
  v291 = sub_1D22507EC();
  swift_allocObject();
  v289 = sub_1D22507DC();
  v30 = *(v11 + 8);
  v293 = v11 + 8;
  v294 = v10;
  v30(v22, v10);
  v31 = swift_allocObject();
  v305 = v31;
  v32 = v301;
  *(v31 + 16) = a7;
  *(v31 + 24) = v32;
  v334 = MEMORY[0x1E69E7CC8];
  v317 = MEMORY[0x1E69E7CC8];
  v33 = v303;
  v290 = v30;
  if (v303)
  {
    sub_1D21A6D54(a7);
    goto LABEL_7;
  }

  v34 = v18;
  v35 = v307;
  v36 = v307[5];
  v37 = v307[6];
  __swift_project_boxed_opaque_existential_1(v307 + 2, v36);
  v38 = a7;
  v39 = *(v37 + 40);
  v40 = v35;
  v18 = v34;
  v33 = v303;
  sub_1D21A6D54(v38);
  if ((v39(v306, v36, v37) & 1) == 0)
  {
    v41 = v40[5];
    v42 = v40[6];
    __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
    if (((*(v42 + 64))(v306, v41, v42) & 1) == 0)
    {
LABEL_7:
      if ((v298 & 1) == 0)
      {
        v43 = sub_1D225080C();
        v44 = sub_1D2250CEC();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v288;
        if (v45)
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v311 = v48;
          *v47 = 16777730;
          *(v47 + 4) = v306;
          *(v47 + 5) = 2080;
          if (v33)
          {
            v49 = 0xD000000000000023;
          }

          else
          {
            v49 = 0xD000000000000013;
          }

          if (v33)
          {
            v50 = "index is up-to-date";
          }

          else
          {
            v50 = "updateSecondaryPartners";
          }

          v51 = v46;
          v52 = sub_1D21761D0(v49, v50 | 0x8000000000000000, &v311);

          *(v47 + 7) = v52;
          v46 = v51;
          _os_log_impl(&dword_1D2171000, v43, v44, "Skipping primary partners for type %hhu as %s", v47, 0xFu);
          __swift_destroy_boxed_opaque_existential_0Tm(v48);
          MEMORY[0x1D3899640](v48, -1, -1);
          MEMORY[0x1D3899640](v47, -1, -1);
        }

        v53 = 0;
        v298 = MEMORY[0x1E69E7CC8];
        v286 = MEMORY[0x1E69E7CC8];
        v287 = MEMORY[0x1E69E7CC8];
        v54 = v295;
        v55 = v33;
        v56 = v304;
        goto LABEL_17;
      }
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v329[0] = 1;
  v331 = 0;
  v332 = 0;
  v330 = 0;
  v333 = 513;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1D22384A0;
  v298 = v78;
  *(v78 + 24) = v305;

  sub_1D225076C();
  v79 = sub_1D225078C();
  v80 = sub_1D2250DAC();
  v81 = sub_1D2250E4C();
  v82 = v294;
  if (v81)
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v79, v80, v84, "updateDensities", "", v83, 2u);
    MEMORY[0x1D3899640](v83, -1, -1);
  }

  v299(v304, v18, v82);
  swift_allocObject();
  v286 = sub_1D22507DC();
  v290(v18, v82);
  v85 = swift_allocObject();
  v86 = MEMORY[0x1E69E7CC8];
  *(v85 + 16) = MEMORY[0x1E69E7CC8];
  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = v295[4];
  v89 = __swift_project_boxed_opaque_existential_1(v295, v295[3]);
  v287 = &v277;
  v90 = *(v296 + 72);
  MEMORY[0x1EEE9AC00](v89);
  v91 = *(v88 + 8);
  v93 = v92;
  v94 = v297;
  v91(v306, v329, 514, 0, 513, v92, v90);
  v297 = v94;
  if (v94)
  {

    v73 = v307;
    sub_1D2235460(v307, v286, "updateDensities");

LABEL_31:

    goto LABEL_32;
  }

  v96 = v286;
  v282 = v90;
  v97 = *(v307 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_lockQueue);
  v315 = nullsub_1;
  v316 = 0;
  v311 = MEMORY[0x1E69E9820];
  v312 = 1107296256;
  v313 = sub_1D2179EE8;
  v314 = &block_descriptor_55;
  v98 = _Block_copy(&v311);

  dispatch_sync(v97, v98);
  _Block_release(v98);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_173;
  }

  swift_beginAccess();
  v99 = *(v85 + 16);
  swift_beginAccess();
  v100 = *(v87 + 16);

  v287 = v100;

  v73 = v307;
  sub_1D2235460(v307, v96, "updateDensities");

  v334 = v99;
  v298 = v99;

  if (v302 && ((v302)(0) & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    goto LABEL_32;
  }

  v278 = v97;
  v101 = CFAbsoluteTimeGetCurrent();
  v277 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_logger;
  v102 = sub_1D225080C();
  v103 = sub_1D2250CEC();
  v104 = os_log_type_enabled(v102, v103);
  v281 = v93;
  if (v104)
  {
    v105 = swift_slowAlloc();
    *v105 = 134218496;
    *(v105 + 4) = v298[2];
    *(v105 + 12) = 256;
    *(v105 + 14) = v306;
    *(v105 + 15) = 2048;
    *(v105 + 17) = v101 - Current;
    _os_log_impl(&dword_1D2171000, v102, v103, "Updating %ld primary densities for type %hhu took %fs", v105, 0x19u);
    MEMORY[0x1D3899640](v105, -1, -1);
  }

  v106 = v298;

  v108 = sub_1D21F4D30(v107);

  v109 = *&v108;
  if ((v108 & 0x100000000) != 0)
  {
    v109 = 1.0;
  }

  v110 = v106 + 8;
  v111 = 1 << LOBYTE(v106[4].isa);
  v112 = -1;
  if (v111 < 64)
  {
    v112 = ~(-1 << v111);
  }

  isa = v112 & v106[8].isa;
  v73 = ((v111 + 63) >> 6);
  if (v109 > 1.0)
  {
    v114 = v109;
  }

  else
  {
    v114 = 1.0;
  }

  v115 = 0;
  v98 = v106;
LABEL_48:
  if (isa)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v116 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:

      goto LABEL_161;
    }

    if (v116 >= v73)
    {
      break;
    }

    isa = v110[v116].isa;
    ++v115;
    if (isa)
    {
      v115 = v116;
LABEL_53:
      v117 = __clz(__rbit64(isa)) | (v115 << 6);
      v118 = *(v298[6].isa + v117);
      v119 = *(v298[7].isa + v117);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v334;
      v310 = v334;
      v121 = sub_1D2176758(v118);
      v123 = v98[2].isa;
      v124 = (v122 & 1) == 0;
      v125 = __OFADD__(v123, v124);
      v126 = v123 + v124;
      if (!v125)
      {
        v127 = v122;
        if (v98[3].isa >= v126)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v132 = v121;
            sub_1D21B6D70();
            v121 = v132;
          }
        }

        else
        {
          sub_1D21B1670(v126, isUniquelyReferenced_nonNull_native);
          v98 = v310;
          v121 = sub_1D2176758(v118);
          if ((v127 & 1) != (v128 & 1))
          {
            goto LABEL_180;
          }
        }

        v98 = v310;
        v129 = v119 / v114;
        if (v127)
        {
          *(v310[7].isa + v121) = v129;
          goto LABEL_47;
        }

        v310[(v121 >> 6) + 8].isa = (v310[(v121 >> 6) + 8].isa | (1 << v121));
        *(v98[6].isa + v121) = v118;
        *(v98[7].isa + v121) = v129;
        v130 = v98[2].isa;
        v125 = __OFADD__(v130, 1);
        v131 = (v130 + 1);
        if (v125)
        {
          goto LABEL_172;
        }

        v98[2].isa = v131;
LABEL_47:
        isa &= isa - 1;
        v334 = v98;
        swift_endAccess();
        goto LABEL_48;
      }

      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      sub_1D22512AC();
      __break(1u);
LABEL_181:
      v274 = v98;
LABEL_183:

      result = swift_endAccess();
      __break(1u);
      return result;
    }
  }

  v133 = 0;
  v73 = v287 + 8;
  v134 = 1 << *(v287 + 32);
  v135 = -1;
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  v136 = v135 & v287[8];
  v137 = (v134 + 63) >> 6;
  v283 = MEMORY[0x1E69E7CC8];
  v286 = MEMORY[0x1E69E7CC8];
  v298 = v98;
  while (v136)
  {
LABEL_78:
    v151 = __clz(__rbit64(v136));
    v136 &= v136 - 1;
    v152 = v151 | (v133 << 6);
    v153 = *(v287[6] + 8 * v152);
    v154 = v287[7] + 16 * v152;
    v155 = *v154;
    v156 = *(v154 + 8);
    if (v98[2].isa)
    {
      v157 = sub_1D2176758(v155);
      v98 = v298;
      v158 = 0.0;
      if (v159)
      {
        v158 = *(v298[7].isa + v157);
      }

      v160 = sub_1D2176758(v153);
      if (v161)
      {
        v162 = *(v98[7].isa + v160) < v158;
      }

      else
      {
        v162 = v158 > 0.0;
      }

      v163 = sub_1D2176758(v155);
      if (v164)
      {
        v165 = *(v98[7].isa + v163);
        v166 = sub_1D2176758(v153);
        if ((v167 & 1) == 0)
        {
          goto LABEL_72;
        }

        if (v165 != *(v98[7].isa + v166))
        {
          if (!v162)
          {
            continue;
          }

          goto LABEL_94;
        }
      }

      else
      {
        sub_1D2176758(v153);
        if (v168)
        {
          v98 = v298;
LABEL_72:
          if (!v162)
          {
            continue;
          }

          goto LABEL_94;
        }

        v98 = v298;
      }
    }

    else
    {
      LOBYTE(v162) = 0;
    }

    if (!v162 && v153 >= v155)
    {
      continue;
    }

LABEL_94:
    LODWORD(v286) = swift_isUniquelyReferenced_nonNull_native();
    v98 = v317;
    v311 = v317;
    v169 = sub_1D2176758(v153);
    v171 = v98[2].isa;
    v172 = (v170 & 1) == 0;
    v125 = __OFADD__(v171, v172);
    v173 = v171 + v172;
    if (v125)
    {
      goto LABEL_176;
    }

    v174 = v170;
    if (v98[3].isa < v173)
    {
      sub_1D21B140C(v173, v286);
      v98 = v311;
      v169 = sub_1D2176758(v153);
      if ((v174 & 1) != (v175 & 1))
      {
        goto LABEL_180;
      }

LABEL_99:
      v176 = v311;
      if ((v174 & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_100;
    }

    if (v286)
    {
      goto LABEL_99;
    }

    v98 = &v311;
    LODWORD(v286) = v170;
    v177 = v169;
    sub_1D21B6C24();
    v169 = v177;
    v176 = v311;
    if ((v286 & 1) == 0)
    {
LABEL_102:
      v176[(v169 >> 6) + 8].isa = (v176[(v169 >> 6) + 8].isa | (1 << v169));
      *(v176[6].isa + v169) = v153;
      *(v176[7].isa + v169) = v155;
      v178 = v176[2].isa;
      v125 = __OFADD__(v178, 1);
      v179 = (v178 + 1);
      if (v125)
      {
        goto LABEL_178;
      }

      v176[2].isa = v179;
      goto LABEL_104;
    }

LABEL_100:
    *(v176[7].isa + v169) = v155;
LABEL_104:
    v98 = v283;
    v286 = v176;
    v317 = v176;
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v311 = v98;
    v181 = sub_1D2176758(v153);
    v183 = v98[2].isa;
    v184 = (v182 & 1) == 0;
    v125 = __OFADD__(v183, v184);
    v185 = v183 + v184;
    if (v125)
    {
      goto LABEL_177;
    }

    v186 = v182;
    if (v98[3].isa >= v185)
    {
      v98 = v298;
      if ((v180 & 1) == 0)
      {
        v191 = v182;
        v192 = v181;
        sub_1D21B6D70();
        v98 = v298;
        v181 = v192;
        v186 = v191;
      }
    }

    else
    {
      sub_1D21B1670(v185, v180);
      v98 = v311;
      v181 = sub_1D2176758(v153);
      if ((v186 & 1) != (v187 & 1))
      {
        goto LABEL_180;
      }

      v98 = v298;
    }

    v188 = v311;
    v283 = v311;
    if (v186)
    {
      *(v311[7].isa + v181) = v156;
    }

    else
    {
      v311[(v181 >> 6) + 8].isa = (v311[(v181 >> 6) + 8].isa | (1 << v181));
      *(v188[6].isa + v181) = v153;
      *(v188[7].isa + v181) = v156;
      v189 = v188[2].isa;
      v125 = __OFADD__(v189, 1);
      v190 = (v189 + 1);
      if (v125)
      {
        goto LABEL_179;
      }

      v188[2].isa = v190;
    }
  }

  while (1)
  {
    v150 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      goto LABEL_169;
    }

    if (v150 >= v137)
    {
      break;
    }

    v136 = v73[v150];
    ++v133;
    if (v136)
    {
      v133 = v150;
      goto LABEL_78;
    }
  }

  if (v302 && ((v302)(*(v286 + 16)) & 1) == 0)
  {

LABEL_164:
    v73 = v307;
    goto LABEL_32;
  }

  v194 = sub_1D21F3D84(v193);
  v324[0] = 1;
  v325 = 0;
  v326 = v194;
  v280 = v194;
  v327 = 0;
  v328 = 513;
  v195 = swift_allocObject();
  *(v195 + 16) = sub_1D22384A0;
  v287 = v195;
  *(v195 + 24) = v305;

  v196 = v285;
  sub_1D225076C();
  v197 = sub_1D225078C();
  v198 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    v200 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v197, v198, v200, "updatePartners", "", v199, 2u);
    MEMORY[0x1D3899640](v199, -1, -1);
  }

  v201 = v294;
  v299(v304, v196, v294);
  swift_allocObject();
  v279 = sub_1D22507DC();
  v290(v196, v201);
  v202 = swift_allocObject();
  v203 = MEMORY[0x1E69E7CC8];
  *(v202 + 16) = MEMORY[0x1E69E7CC8];
  v204 = swift_allocObject();
  *(v204 + 16) = v203;
  v205 = v295[3];
  v206 = v295[4];
  v207 = __swift_project_boxed_opaque_existential_1(v295, v205);
  v285 = &v277;
  MEMORY[0x1EEE9AC00](v207);
  v275 = v298;
  v73 = v307;
  LOBYTE(v275) = 0;
  v208 = v297;
  (*(v206 + 8))(v306, v324, 514, 0, 513, v281, v282, v296, v275, sub_1D2238564, &v277 - 8, v205, v206, v287);
  v297 = v208;
  if (v208)
  {

    sub_1D2235460(v73, v279, "updatePartners");

    goto LABEL_31;
  }

  v209 = v279;

  v315 = nullsub_1;
  v316 = 0;
  v311 = MEMORY[0x1E69E9820];
  v312 = 1107296256;
  v313 = sub_1D2179EE8;
  v314 = &block_descriptor_63;
  v98 = _Block_copy(&v311);

  dispatch_sync(v278, v98);
  _Block_release(v98);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_175;
  }

  swift_beginAccess();
  v210 = *(v202 + 16);
  swift_beginAccess();
  v211 = *(v204 + 16);

  sub_1D2235460(v307, v209, "updatePartners");

  if (v302 && ((v302)(0) & 1) == 0)
  {

    goto LABEL_164;
  }

  v212 = swift_isUniquelyReferenced_nonNull_native();
  v311 = v317;
  v213 = v297;
  sub_1D2238038(v210, sub_1D2238494, 0, v212, &v311);

  v214 = v311;
  v317 = v311;
  v215 = v283;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v311 = v215;
  sub_1D2237C04(v211, sub_1D2238480, 0, v216, &v311);
  v297 = v213;
  v287 = v311;
  v217 = CFAbsoluteTimeGetCurrent();
  v218 = sub_1D225080C();
  v219 = sub_1D2250CEC();
  v220 = os_log_type_enabled(v218, v219);
  v286 = v214;
  if (v220)
  {
    v221 = swift_slowAlloc();
    *v221 = 134218240;
    *(v221 + 4) = *(v214 + 16);
    *(v221 + 12) = 2048;
    *(v221 + 14) = v217 - v101;
    _os_log_impl(&dword_1D2171000, v218, v219, "Updating %ld primary partners took %fs", v221, 0x16u);
    MEMORY[0x1D3899640](v221, -1, -1);
  }

  v53 = 1;
  v54 = v295;
  v46 = v288;
  v56 = v304;
  v55 = v303;
LABEL_17:
  v57 = v299;
  v58 = CFAbsoluteTimeGetCurrent();
  if (v55)
  {
    v59 = 2;
  }

  else
  {
    v59 = 0;
  }

  v318[0] = v59;
  v319 = 0;
  v320 = 0;
  v321 = v53 - 1;
  LODWORD(v303) = v53;
  v322 = v53;
  v323 = 2;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1D22384A0;
  v304 = v60;
  *(v60 + 24) = v305;

  sub_1D225076C();
  v61 = sub_1D225078C();
  v62 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v61, v62, v64, "updateSecondaryPartners", "", v63, 2u);
    v65 = v63;
    v57 = v299;
    MEMORY[0x1D3899640](v65, -1, -1);
  }

  v66 = v294;
  v57(v56, v46, v294);
  swift_allocObject();
  v299 = sub_1D22507DC();
  v290(v46, v66);
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E7CC8];
  *(v67 + 16) = MEMORY[0x1E69E7CC8];
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  v70 = v54[3];
  v71 = v54[4];
  v72 = __swift_project_boxed_opaque_existential_1(v54, v70);
  v300 = &v277;
  MEMORY[0x1EEE9AC00](v72);
  v73 = v307;
  LODWORD(v275) = v307;
  v74 = *(v71 + 8);
  if (v303)
  {
    v75 = 512;
  }

  else
  {
    v75 = 256;
  }

  LOBYTE(v275) = 0;
  v76 = v297;
  v74(v306, v318, 514, 0, v75 | 1u, 1, 5, v296, v275, sub_1D22384DC, &v277 - 8, v70, v71);
  v297 = v76;
  if (v76)
  {

    sub_1D2235460(v73, v299, "updateSecondaryPartners");

    goto LABEL_31;
  }

  v295 = (v69 + 16);
  v98 = *(v73 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_lockQueue);
  v315 = nullsub_1;
  v316 = 0;
  v311 = MEMORY[0x1E69E9820];
  v312 = 1107296256;
  v313 = sub_1D2179EE8;
  v314 = &block_descriptor_5;
  v138 = _Block_copy(&v311);

  dispatch_sync(v98, v138);
  _Block_release(v138);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_174;
  }

  swift_beginAccess();
  v139 = *(v67 + 16);
  swift_beginAccess();
  v140 = *(v69 + 16);

  sub_1D2235460(v73, v299, "updateSecondaryPartners");

  v141 = v297;
  if (v302 && ((v302)(0) & 1) == 0)
  {

LABEL_161:

LABEL_162:

    goto LABEL_32;
  }

  v142 = CFAbsoluteTimeGetCurrent();
  v143 = v286;
  v144 = v287;
  if (!*(v139 + 16))
  {

    goto LABEL_135;
  }

  v145 = v142;

  v146 = sub_1D225080C();
  v147 = sub_1D2250CEC();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 134218496;
    *(v148 + 4) = *(v139 + 16);

    *(v148 + 12) = 256;
    *(v148 + 14) = v306;
    *(v148 + 15) = 2048;
    *(v148 + 17) = v145 - v58;
    _os_log_impl(&dword_1D2171000, v146, v147, "Updating %ld secondary partners for type %hhu took %fs", v148, 0x19u);
    v149 = v148;
    v144 = v287;
    MEMORY[0x1D3899640](v149, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v222 = swift_isUniquelyReferenced_nonNull_native();
  v308 = v317;
  sub_1D2238038(v139, sub_1D2238494, 0, v222, &v308);
  v98 = v141;
  if (v141)
  {
    goto LABEL_181;
  }

  v143 = v308;
  v317 = v308;
  swift_endAccess();

  v223 = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = v144;
  sub_1D2237C04(v140, sub_1D2238480, 0, v223, v309);
  v144 = v309[0];
  if (!v302)
  {
LABEL_135:
    v225 = v306;
    goto LABEL_136;
  }

  v224 = (v302)(0);
  v225 = v306;
  if ((v224 & 1) == 0)
  {

    goto LABEL_162;
  }

LABEL_136:
  if (!*(v143 + 16))
  {
    v226 = v143;
    v227 = v73[5];
    v228 = v73[6];
    __swift_project_boxed_opaque_existential_1(v73 + 2, v227);
    v229 = v227;
    v143 = v226;
    if (((*(v228 + 48))(v225, v229, v228) & 1) == 0)
    {

      goto LABEL_161;
    }
  }

  v230 = CFAbsoluteTimeGetCurrent();
  if (v303)
  {
    v231 = v144;
    goto LABEL_143;
  }

  v287 = v144;
  v232 = v73[5];
  v233 = v73[6];
  __swift_project_boxed_opaque_existential_1(v73 + 2, v232);

  v235 = sub_1D21F3D84(v234);
  v236 = (*(v233 + 88))(v225, v235, v232, v233);
  v238 = v237;
  v240 = v239;

  swift_beginAccess();

  v241 = swift_isUniquelyReferenced_nonNull_native();
  v308 = v317;
  sub_1D223825C(v236, sub_1D2238494, 0, v241, &v308);
  if (v141)
  {
    v274 = v141;
    goto LABEL_183;
  }

  v143 = v308;
  v317 = v308;
  swift_endAccess();

  v242 = v287;
  v243 = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = v242;
  sub_1D2237E14(v238, sub_1D2238480, 0, v243, v309);

  v231 = v309[0];
  swift_beginAccess();
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v308 = v334;
  sub_1D2237E14(v240, sub_1D2238480, 0, v244, &v308);
  v298 = v308;
  swift_endAccess();
  if (v302 && ((v302)(0) & 1) == 0)
  {

    goto LABEL_162;
  }

LABEL_143:
  v245 = v143;
  v246 = *(v296 + 80);
  v247 = swift_allocObject();
  *(v247 + 16) = sub_1D22384A0;
  *(v247 + 24) = v305;

  LOBYTE(v309[0]) = 0;
  v248 = sub_1D2231568(v306, v246, v143, v231, v284 & 1, 0, sub_1D22384EC, v247);

  if (v302 && ((v302)(0) & 1) == 0)
  {
  }

  else
  {
    v287 = v245;
    v249 = v298;

    v250 = sub_1D2234878(v248, v249, v231);

    if (!v302 || ((v302)(0) & 1) != 0)
    {
      v300 = v250;
      v303 = v248;
      v297 = v141;
      v251 = CFAbsoluteTimeGetCurrent();
      v304 = OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_logger;
      v252 = sub_1D225080C();
      v253 = sub_1D2250CEC();
      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        *v254 = 134218496;
        *(v254 + 4) = v287[2];
        *(v254 + 12) = 256;
        *(v254 + 14) = v306;
        *(v254 + 15) = 2048;
        *(v254 + 17) = v251 - v230;
        _os_log_impl(&dword_1D2171000, v252, v253, "Labeling %ld pairs for type %hhu took %fs", v254, 0x19u);
        MEMORY[0x1D3899640](v254, -1, -1);
      }

      v255 = v73[5];
      v256 = v307[6];
      v299 = __swift_project_boxed_opaque_existential_1(v307 + 2, v255);
      v257 = swift_allocObject();
      *(v257 + 16) = sub_1D22384A0;
      *(v257 + 24) = v305;
      v296 = *(v256 + 72);

      v258 = v287;

      v259 = v298;

      v276 = v256;
      v73 = v307;
      v299 = (v296)(v306, v259, v258, v231, v303, v300, sub_1D22386EC, v257, v255, v276);

      v260 = sub_1D225080C();
      v261 = sub_1D2250CEC();
      if (os_log_type_enabled(v260, v261))
      {
        v262 = swift_slowAlloc();
        *v262 = 134217984;
        *(v262 + 4) = v299;
        _os_log_impl(&dword_1D2171000, v260, v261, "Updated %ld observations after clustering", v262, 0xCu);
        MEMORY[0x1D3899640](v262, -1, -1);
      }

      v263 = v302;
      v264 = v297;
      if (!v302 || ((v302)(0) & 1) != 0)
      {
        v265 = v73[5];
        v266 = v73[6];
        __swift_project_boxed_opaque_existential_1(v73 + 2, v265);
        v267 = (*(v266 + 80))(v306, v265, v266);
        if (!v264)
        {
          v268 = v267;
          v269 = sub_1D225080C();
          v270 = sub_1D2250CEC();
          if (os_log_type_enabled(v269, v270))
          {
            v271 = swift_slowAlloc();
            *v271 = 134218240;
            *(v271 + 4) = v268;
            *(v271 + 12) = 256;
            *(v271 + 14) = v306;
            _os_log_impl(&dword_1D2171000, v269, v270, "Resolved %ld tags for type %hhu", v271, 0xFu);
            MEMORY[0x1D3899640](v271, -1, -1);
          }

          v272 = v73[5];
          v273 = v73[6];
          __swift_project_boxed_opaque_existential_1(v73 + 2, v272);
          (*(v273 + 56))(v306, v272, v273);
          if (v263)
          {
            v263(0);
          }
        }
      }

      goto LABEL_170;
    }
  }

LABEL_32:
  sub_1D2235460(v73, v289, "cluster");
}

void sub_1D2230154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v75 = a8;
  v64 = a7;
  v67 = a5;
  v68 = a6;
  v66 = a3;
  v63 = a1;
  v10 = sub_1D225085C();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D225087C();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v65 = a2;
  v15 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v16 = 0;
    v17 = *(a4 + 92);
    v18 = a2 + 32;
    do
    {
      v22 = *(v18 + 4 * v16);
      if (!v17 || *(a4 + 80) <= v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D21AF810(0, *(v14 + 16) + 1, 1);
          v14 = aBlock[0];
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D21AF810((v19 > 1), v20 + 1, 1);
          v14 = aBlock[0];
        }

        *(v14 + 16) = v20 + 1;
        v21 = v14 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v22;
      }

      ++v16;
    }

    while (v13 != v16);
  }

  v24 = *(v14 + 16);
  if (!v24)
  {

    v25 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v35 = v75;
    v36 = *(v25 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v38 = v65;
    if (v36)
    {
      v39 = (v25 + 32);
      v40 = MEMORY[0x1E69E7CC0];
      do
      {
        v43 = *v39;
        if (*v39 >= 0.0)
        {
          v44 = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v40;
          if ((v44 & 1) == 0)
          {
            sub_1D21AF75C(0, *(v40 + 16) + 1, 1);
            v40 = aBlock[0];
          }

          v42 = *(v40 + 16);
          v41 = *(v40 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1D21AF75C((v41 > 1), v42 + 1, 1);
            v40 = aBlock[0];
          }

          *(v40 + 16) = v42 + 1;
          *(v40 + 4 * v42 + 32) = v43;
        }

        ++v39;
        --v36;
      }

      while (v36);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    v45 = *(v40 + 16);
    if (!v45)
    {
      v47 = 0.0;
      goto LABEL_38;
    }

    if (v45 > 7)
    {
      v46 = v45 & 0x7FFFFFFFFFFFFFF8;
      v48 = v40 + 48;
      v47 = 0.0;
      v49 = v45 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v47 = (((((((v47 + COERCE_FLOAT(*(v48 - 16))) + COERCE_FLOAT(HIDWORD(*(v48 - 16)))) + COERCE_FLOAT(*(v48 - 8))) + COERCE_FLOAT(HIDWORD(*(v48 - 16)))) + COERCE_FLOAT(*v48)) + COERCE_FLOAT(HIDWORD(*v48))) + COERCE_FLOAT(*(v48 + 8))) + COERCE_FLOAT(HIDWORD(*v48));
        v48 += 32;
        v49 -= 8;
      }

      while (v49);
      if (v45 == v46)
      {
LABEL_38:

        v53 = swift_allocObject();
        *(v53 + 16) = v63;
        *(v53 + 24) = v38;
        v54 = v67;
        *(v53 + 32) = v66;
        *(v53 + 40) = a4;
        v55 = v68;
        *(v53 + 48) = v54;
        *(v53 + 56) = v55;
        *(v53 + 64) = v47;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_1D223867C;
        *(v56 + 24) = v53;
        aBlock[4] = sub_1D21A7328;
        aBlock[5] = v56;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D22102A0;
        aBlock[3] = &block_descriptor_81_0;
        v57 = _Block_copy(aBlock);

        v58 = v69;
        sub_1D225086C();
        v76 = v37;
        sub_1D22385D0(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
        sub_1D2238618();
        v59 = v71;
        v60 = v74;
        sub_1D2250EAC();
        MEMORY[0x1D38987A0](0, v58, v59, v57);
        _Block_release(v57);
        (*(v73 + 8))(v59, v60);
        (*(v70 + 8))(v58, v72);

        if (v35)
        {
          v35(v61);
        }

        return;
      }
    }

    else
    {
      v46 = 0;
      v47 = 0.0;
    }

    v50 = v45 - v46;
    v51 = (v40 + 4 * v46 + 32);
    do
    {
      v52 = *v51++;
      v47 = v47 + v52;
      --v50;
    }

    while (v50);
    goto LABEL_38;
  }

  aBlock[0] = v15;
  sub_1D21AF75C(0, v24, 0);
  v25 = aBlock[0];
  v26 = *(a4 + 64);
  v27 = (v14 + 40);
  v28 = *(a4 + 88);
  while (1)
  {
    v29 = *(v27 - 1);
    v30 = v26 - v29;
    if (__OFSUB__(v26, v29))
    {
      break;
    }

    v31 = *v27;
    aBlock[0] = v25;
    v33 = *(v25 + 16);
    v32 = *(v25 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_1D21AF75C((v32 > 1), v33 + 1, 1);
      v25 = aBlock[0];
    }

    v34 = powf(v30, v28);
    *(v25 + 16) = v33 + 1;
    *(v25 + 4 * v33 + 32) = v31 * v34;
    v27 += 4;
    if (!--v24)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1D22307A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v9 = result;
  if (!*(a3 + 16))
  {
    goto LABEL_5;
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 32);
    if (*(a4 + 80) <= v10)
    {
      v11 = *(a3 + 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a5 + 16);
      *(a5 + 16) = 0x8000000000000000;
      sub_1D21BB620(v11, v9, isUniquelyReferenced_nonNull_native, v10);
      *(a5 + 16) = v15;
      swift_endAccess();
    }

LABEL_5:
    swift_beginAccess();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_1D21B9EA4(v9, v14, a7);
    *(a6 + 16) = v16;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

unint64_t sub_1D22308BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v45 = a7;
  v46 = a5;
  v47 = a6;
  v52 = a2;
  v12 = sub_1D225085C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D225087C();
  v48 = *(v50 - 8);
  result = MEMORY[0x1EEE9AC00](v50);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 16);
  v19 = 0;
  v51 = a8;
  if (v18)
  {
    v43 = v13;
    v44 = v12;
    v20 = 0;
    v21 = *(a4 + 16);
    while (1)
    {
      v22 = *(a3 + 32 + 8 * v20);
      if (!v21)
      {
        if (v22 > a1)
        {
          goto LABEL_21;
        }

        goto LABEL_4;
      }

      v23 = sub_1D2176758(*(a3 + 32 + 8 * v20));
      v24 = 0.0;
      if (v25)
      {
        v24 = *(*(a4 + 56) + 4 * v23);
      }

      v26 = sub_1D2176758(a1);
      if (v27)
      {
        v28 = *(*(a4 + 56) + 4 * v26) < v24;
      }

      else
      {
        v28 = v24 > 0.0;
      }

      v29 = sub_1D2176758(v22);
      if (v30)
      {
        v31 = *(*(a4 + 56) + 4 * v29);
        result = sub_1D2176758(a1);
        if ((v32 & 1) == 0 || v31 != *(*(a4 + 56) + 4 * result))
        {
LABEL_20:
          if (v28)
          {
            goto LABEL_21;
          }

          goto LABEL_4;
        }
      }

      else
      {
        result = sub_1D2176758(a1);
        if (v34)
        {
          goto LABEL_20;
        }
      }

      v33 = v22 > a1 || v28;
      if (v33)
      {
LABEL_21:
        v35 = v52;
        if (v20 < *(v52 + 16))
        {
          v19 = *(v52 + 4 * v20 + 32);
          v13 = v43;
          v12 = v44;
          goto LABEL_26;
        }

        __break(1u);
        return result;
      }

LABEL_4:
      if (v18 == ++v20)
      {
        v22 = -1;
        v13 = v43;
        v12 = v44;
        goto LABEL_25;
      }
    }
  }

  v22 = -1;
LABEL_25:
  v35 = v52;
LABEL_26:
  v36 = swift_allocObject();
  v37 = v47;
  *(v36 + 16) = v46;
  *(v36 + 24) = a1;
  *(v36 + 32) = v35;
  *(v36 + 40) = a3;
  *(v36 + 48) = v22;
  *(v36 + 56) = v37;
  *(v36 + 64) = v19;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D22385B8;
  *(v38 + 24) = v36;
  aBlock[4] = sub_1D2179F10;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D22102A0;
  aBlock[3] = &block_descriptor_72;
  v39 = _Block_copy(aBlock);

  sub_1D225086C();
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D22385D0(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
  sub_1D2238618();
  v40 = v49;
  sub_1D2250EAC();
  MEMORY[0x1D38987A0](0, v17, v40, v39);
  _Block_release(v39);
  (*(v13 + 8))(v40, v12);
  (*(v48 + 8))(v17, v50);

  if (v51)
  {
    v42 = v51(v41);
  }

  else
  {
    v42 = 1;
  }

  return v42 & 1;
}

uint64_t sub_1D2230D24(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1D21B9BE8(a6, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v15;
  swift_endAccess();
  swift_beginAccess();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a7 + 16);
  *(a7 + 16) = 0x8000000000000000;
  sub_1D21B9EA4(a2, v13, a3);
  *(a7 + 16) = v16;
  return swift_endAccess();
}

uint64_t sub_1D2230E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v37 = a8;
  v40 = a5;
  v41 = a7;
  v39 = a6;
  v42 = a3;
  v43 = sub_1D225085C();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D225087C();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = -1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  if (*(a2 + 16))
  {
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = a1;
    v19 = v42;
    v18[4] = a2;
    v18[5] = v19;
    v18[6] = v17;
    v35 = *(a4 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_lockQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1D22386B0;
    *(v20 + 24) = v18;
    v52 = sub_1D21A7328;
    v53 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1D22102A0;
    v51 = &block_descriptor_96_0;
    v34 = _Block_copy(&aBlock);

    sub_1D225086C();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D22385D0(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
    v38 = a4;
    v21 = v43;
    v36 = v17;
    sub_1D2238618();
    sub_1D2250EAC();
    v22 = v34;
    MEMORY[0x1D38987A0](0, v15, v12, v34);
    v17 = v36;
    _Block_release(v22);

    v23 = v21;
    a4 = v38;
    (*(v46 + 8))(v12, v23);
    (*(v44 + 8))(v15, v45);
  }

  v24 = swift_allocObject();
  v25 = v39;
  v24[2] = v40;
  v24[3] = a1;
  v26 = v42;
  v24[4] = a2;
  v24[5] = v26;
  v24[6] = v16;
  v24[7] = v25;
  v24[8] = v17;
  v38 = *(a4 + OBJC_IVAR____TtC19VisualUnderstanding16VUIndexClusterer_lockQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1D22386C0;
  *(v27 + 24) = v24;
  v52 = sub_1D21A7328;
  v53 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1D22102A0;
  v51 = &block_descriptor_105;
  v28 = _Block_copy(&aBlock);

  sub_1D225086C();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1D22385D0(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
  sub_1D2238618();
  v29 = v43;
  sub_1D2250EAC();
  MEMORY[0x1D38987A0](0, v15, v12, v28);
  _Block_release(v28);
  (*(v46 + 8))(v12, v29);
  (*(v44 + 8))(v15, v45);

  if (v41)
  {
    v31 = v41(v30);
  }

  else
  {
    v31 = 1;
  }

  return v31 & 1;
}

uint64_t sub_1D22313B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 16))
  {
    v7 = result;
    v8 = *(a4 + 32);
    result = swift_beginAccess();
    *(v7 + 16) = v8;
    if (*(a3 + 16))
    {
      v9 = *(a3 + 32);
      result = swift_beginAccess();
      *(a5 + 16) = v9;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2231444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v12 = *(a5 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1D21B9BE8(v12, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v18;
  swift_endAccess();
  swift_beginAccess();
  v14 = *(a7 + 16);
  swift_beginAccess();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a6 + 16);
  *(a6 + 16) = 0x8000000000000000;
  sub_1D21B9EA4(a2, v15, v14);
  *(a6 + 16) = v17;
  return swift_endAccess();
}

uint64_t sub_1D2231568(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, void (*a7)(void), uint64_t a8)
{
  v434 = a8;
  v436 = a7;
  LODWORD(v469) = a5;
  v474 = a4;
  v465 = a3;
  v461 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2530);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v455 = (&v424 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v453 = (&v424 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v442 = &v424 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v463 = &v424 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v435 = &v424 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v437 = &v424 - v22;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v23 = MEMORY[0x1EEE9AC00](v473);
  v427 = &v424 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v432 = &v424 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v471 = &v424 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v439 = &v424 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v443 = &v424 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v470 = &v424 - v33;
  v472 = sub_1D225055C();
  v459 = *(v472 - 8);
  v34 = MEMORY[0x1EEE9AC00](v472);
  v468 = &v424 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v431 = &v424 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v464 = &v424 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v462 = &v424 - v40;
  v466 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2378);
  v457 = *(v466 - 8);
  v41 = MEMORY[0x1EEE9AC00](v466);
  v444 = (&v424 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v41);
  v448 = &v424 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v449 = (&v424 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v447 = &v424 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v451 = (&v424 - v50);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v450 = &v424 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v452 = (&v424 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v458 = &v424 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v424 - v57;
  v59 = sub_1D225077C();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v424 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v424 - v64;
  sub_1D225076C();
  v440 = v8;
  v66 = sub_1D225078C();
  v67 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v68 = swift_slowAlloc();
    v467 = a2;
    v69 = a6;
    v70 = v68;
    *v68 = 0;
    v71 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v66, v67, v71, "propagateLabels", "", v70, 2u);
    v72 = v70;
    a6 = v69;
    a2 = v467;
    MEMORY[0x1D3899640](v72, -1, -1);
  }

  (*(v60 + 16))(v63, v65, v59);
  sub_1D22507EC();
  swift_allocObject();
  v428 = sub_1D22507DC();
  (*(v60 + 8))(v65, v59);
  if (a6)
  {
    v73 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v74 = v440[5];
    v75 = v440[6];
    __swift_project_boxed_opaque_existential_1(v440 + 2, v74);
    v73 = (*(v75 + 16))(v461, v74, v75);
  }

  v76 = v465;
  v77 = v474 + 64;
  v78 = 1 << *(v474 + 32);
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v79 & *(v474 + 64);
  v81 = (v78 + 63) >> 6;

  v82 = 0;
  v467 = v73;
  while (2)
  {
    while (2)
    {
      v465 = v76;
      do
      {
        while (1)
        {
          if (v80)
          {
            goto LABEL_19;
          }

          v85 = v457;
          do
          {
            v86 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_298;
            }

            if (v86 >= v81)
            {

              v110 = MEMORY[0x1E69E7CC8];
              v111 = v469;
              if (v469)
              {
                a2 = 0;
                v112 = MEMORY[0x1E69E7CC8];
              }

              else
              {

                a2 = 0;
                v114 = sub_1D222D4D0(v113);

                if (*(v114 + 16))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2A00);
                  v115 = sub_1D225114C();
                }

                else
                {
                  v115 = MEMORY[0x1E69E7CC8];
                }

                v476[0] = v115;

                sub_1D2237898(v116, 1, v476);

                v112 = v476[0];
                v76 = v465;
              }

              v483 = v110;
              v117 = MEMORY[0x1E69E7CD0];
              v481 = MEMORY[0x1E69E7CD0];
              v482 = MEMORY[0x1E69E7CD0];
              v118 = swift_allocObject();
              v460 = v118;
              *(v118 + 16) = v117;
              v456 = v118 + 16;
              if (v111)
              {
                goto LABEL_140;
              }

              v426 = 0;
              a2 = v440[5];
              v119 = v440[6];
              __swift_project_boxed_opaque_existential_1(v440 + 2, a2);
              v120 = (*(v119 + 24))(v461, a2, v119);
              v121 = *(v120 + 16);
              *&v454 = v120;
              v469 = v121;
              if (v121)
              {
                v122 = v120;
                v123 = 0;
                v124 = MEMORY[0x1E69E7CC0];
                a2 = &qword_1EC6D2378;
                v446 = v58;
                while (v123 < *(v122 + 16))
                {
                  v125 = (*(v85 + 80) + 32) & ~*(v85 + 80);
                  v126 = *(v85 + 72);
                  sub_1D2174DA8(v122 + v125 + v126 * v123, v58, &qword_1EC6D2378);
                  if (v58[*(v466 + 48) + *(v473 + 48)])
                  {
                    sub_1D2176170(v58, &qword_1EC6D2378);
                  }

                  else
                  {
                    sub_1D21A6938(v58, v458, &qword_1EC6D2378);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v476[0] = v124;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1D21AF904(0, *(v124 + 2) + 1, 1);
                      v122 = v454;
                      v124 = v476[0];
                    }

                    v129 = *(v124 + 2);
                    v128 = *(v124 + 3);
                    if (v129 >= v128 >> 1)
                    {
                      sub_1D21AF904(v128 > 1, v129 + 1, 1);
                      v122 = v454;
                      v124 = v476[0];
                    }

                    *(v124 + 2) = v129 + 1;
                    sub_1D21A6938(v458, &v124[v125 + v129 * v126], &qword_1EC6D2378);
                    v85 = v457;
                    v58 = v446;
                  }

                  if (v469 == ++v123)
                  {
                    goto LABEL_52;
                  }
                }

LABEL_301:
                __break(1u);
LABEL_302:
                __break(1u);
LABEL_303:
                __break(1u);
LABEL_304:
                __break(1u);
LABEL_305:
                __break(1u);
LABEL_306:
                __break(1u);
                goto LABEL_307;
              }

              v124 = MEMORY[0x1E69E7CC0];
LABEL_52:
              v130 = *(v124 + 2);
              v131 = MEMORY[0x1E69E7CC0];
              v458 = v124;
              if (v130)
              {
                v476[0] = MEMORY[0x1E69E7CC0];
                sub_1D21AF67C(v130);
                a2 = &v124[(*(v85 + 80) + 32) & ~*(v85 + 80)];
                v446 = *(v85 + 72);
                v132 = (v459 + 32);
                v133 = v472;
                v134 = v462;
                do
                {
                  v135 = v450;
                  sub_1D2174DA8(a2, v450, &qword_1EC6D2378);
                  v136 = v135;
                  v137 = v451;
                  sub_1D21A6938(v136, v451, &qword_1EC6D2378);
                  v138 = *v132;
                  (*v132)(v134, v137 + *(v466 + 48), v133);
                  v131 = v476[0];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1D21AF8C0(0, *(v131 + 2) + 1, 1);
                    v131 = v476[0];
                  }

                  v140 = *(v131 + 2);
                  v139 = *(v131 + 3);
                  v141 = v462;
                  if (v140 >= v139 >> 1)
                  {
                    sub_1D21AF8C0(v139 > 1, v140 + 1, 1);
                    v141 = v462;
                    v131 = v476[0];
                  }

                  *(v131 + 2) = v140 + 1;
                  v142 = &v131[((*(v459 + 80) + 32) & ~*(v459 + 80)) + *(v459 + 72) * v140];
                  v134 = v141;
                  v133 = v472;
                  v138(v142, v141, v472);
                  v476[0] = v131;
                  a2 += v446;
                  --v130;
                }

                while (v130);
                v85 = v457;
                v124 = v458;
              }

              v462 = sub_1D22068AC(v131);

              v451 = *(v124 + 2);
              if (v451)
              {
                v143 = 0;
                v144 = v452 + *(v466 + 48);
                v450 = *(v473 + 48);
                v446 = &v124[(*(v85 + 80) + 32) & ~*(v85 + 80)];
                v145 = MEMORY[0x1E69E7CC8];
                v146 = (v459 + 32);
                v445 = *(v473 + 64);
                v441 = (v459 + 8);
                v438 = (v459 + 32);
                do
                {
                  if (v143 >= *(v124 + 2))
                  {
                    goto LABEL_302;
                  }

                  v148 = v452;
                  sub_1D2174DA8(&v446[*(v85 + 72) * v143], v452, &qword_1EC6D2378);
                  v149 = v144[v450];
                  v150 = *v148;
                  v151 = v144[v445];
                  v152 = *(v473 + 48);
                  v153 = *(v473 + 64);
                  (*v146)(v470, v144, v472);
                  *(v470 + v152) = v149;
                  *(v470 + v153) = v151;
                  a2 = v470;
                  v154 = v467;
                  if (*(v467 + 16))
                  {
                    v155 = sub_1D2176758(v150);
                    v85 = v457;
                    v124 = v458;
                    if (v156)
                    {
                      v157 = *(*(v154 + 56) + 8 * v155);
                      v158 = v443;
                      sub_1D2174DA8(a2, v443, &unk_1EC6D2D60);
                      if (*(v145 + 2) && (sub_1D2196D38(v158), v158 = v443, (v159 & 1) != 0))
                      {
                        sub_1D2176170(a2, &unk_1EC6D2D60);
                        (*v441)(v158, v472);
                        v147 = v454;
                        v146 = v438;
                      }

                      else
                      {
                        a2 = *v441;
                        (*v441)(v158, v472);
                        v160 = *v456;
                        if (*(*v456 + 16) && (v161 = sub_1D225131C(), v162 = v160 + 56, v163 = -1 << *(v160 + 32), v164 = v161 & ~v163, v146 = v438, ((*(v160 + 56 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) != 0))
                        {
                          v165 = ~v163;
                          v166 = *(v160 + 48);
                          v147 = v454;
                          while (*(v166 + 8 * v164) != v157)
                          {
                            v164 = (v164 + 1) & v165;
                            if (((*(v162 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) == 0)
                            {
                              goto LABEL_76;
                            }
                          }

                          v172 = v470;
                        }

                        else
                        {
LABEL_76:
                          v167 = v470;
                          v168 = v439;
                          sub_1D2174DA8(v470, v439, &unk_1EC6D2D60);
                          v169 = v483;
                          v170 = swift_isUniquelyReferenced_nonNull_native();
                          v476[0] = v169;
                          sub_1D21BA320(v157, v168, v170);
                          v171 = v168;
                          v124 = v458;
                          (a2)(v171, v472);
                          v145 = v476[0];
                          v483 = v476[0];
                          sub_1D2198024(v476, v157);
                          sub_1D2198024(v476, v157);
                          v147 = v454;
                          v172 = v167;
                          v146 = v438;
                        }

                        sub_1D2176170(v172, &unk_1EC6D2D60);
                      }
                    }

                    else
                    {
                      sub_1D2176170(a2, &unk_1EC6D2D60);
                      v147 = v454;
                    }
                  }

                  else
                  {
                    sub_1D2176170(v470, &unk_1EC6D2D60);
                    v85 = v457;
                    v147 = v454;
                    v124 = v458;
                  }

                  ++v143;
                }

                while (v143 != v451);
              }

              else
              {

                v147 = v454;
              }

              v476[0] = MEMORY[0x1E69E7CC8];
              if (v469)
              {
                v173 = 0;
                v174 = MEMORY[0x1E69E7CC0];
                a2 = &unk_1D22556C0;
                while (v173 < *(v147 + 16))
                {
                  v175 = (*(v85 + 80) + 32) & ~*(v85 + 80);
                  v176 = *(v85 + 72);
                  v177 = v447;
                  sub_1D2174DA8(v147 + v175 + v176 * v173, v447, &qword_1EC6D2378);
                  if (*(v177 + *(v466 + 48) + *(v473 + 48)) == 2)
                  {
                    sub_1D21A6938(v177, v448, &qword_1EC6D2378);
                    v178 = swift_isUniquelyReferenced_nonNull_native();
                    v475 = v174;
                    if ((v178 & 1) == 0)
                    {
                      sub_1D21AF904(0, *(v174 + 16) + 1, 1);
                      v147 = v454;
                      v174 = v475;
                    }

                    v180 = *(v174 + 16);
                    v179 = *(v174 + 24);
                    if (v180 >= v179 >> 1)
                    {
                      sub_1D21AF904(v179 > 1, v180 + 1, 1);
                      v147 = v454;
                      v174 = v475;
                    }

                    *(v174 + 16) = v180 + 1;
                    sub_1D21A6938(v448, v174 + v175 + v180 * v176, &qword_1EC6D2378);
                  }

                  else
                  {
                    sub_1D2176170(v177, &qword_1EC6D2378);
                  }

                  if (v469 == ++v173)
                  {
                    goto LABEL_93;
                  }
                }

                goto LABEL_303;
              }

              v174 = MEMORY[0x1E69E7CC0];
LABEL_93:
              v450 = *(v174 + 16);
              if (v450)
              {
                v181 = 0;
                v448 = v449 + *(v466 + 48);
                v447 = v174 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
                v452 = (v459 + 32);
                v446 = *(v473 + 48);
                v458 = v462 + 56;
                v470 = v459 + 16;
                v445 = *(v473 + 64);
                a2 = v459 + 8;
                v438 = (v459 + 56);
                v433 = (v459 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
                v443 = v174;
                while (1)
                {
                  if (v181 >= *(v174 + 16))
                  {
                    goto LABEL_304;
                  }

                  v182 = v449;
                  sub_1D2174DA8(v447 + *(v85 + 72) * v181, v449, &qword_1EC6D2378);
                  v183 = v446[v448];
                  v184 = *v182;
                  v185 = *(v448 + v445);
                  v186 = *(v473 + 48);
                  v187 = *(v473 + 64);
                  v188 = v471;
                  v451 = *v452;
                  (v451)(v471);
                  *(v188 + v186) = v183;
                  *(v188 + v187) = v185;
                  v189 = v467;
                  if (!*(v467 + 16))
                  {
                    goto LABEL_95;
                  }

                  v190 = sub_1D2176758(v184);
                  if ((v191 & 1) == 0)
                  {
                    goto LABEL_95;
                  }

                  v441 = *(*(v189 + 56) + 8 * v190);
                  v192 = v462;
                  if (*(v462 + 2))
                  {
                    sub_1D22385D0(&qword_1EDC87228, MEMORY[0x1E69695A8]);
                    v193 = sub_1D22508CC();
                    v194 = -1 << v192[32];
                    v195 = v193 & ~v194;
                    if ((*&v458[(v195 >> 3) & 0xFFFFFFFFFFFFFF8] >> v195))
                    {
                      break;
                    }
                  }

LABEL_105:
                  v203 = v476[0];
                  if (!*(v476[0] + 2) || (v204 = sub_1D2176758(v441), (v205 & 1) == 0))
                  {
                    v221 = *v438;
                    v222 = v437;
                    v210 = v472;
                    (*v438)(v437, 1, 1, v472);
                    sub_1D2176170(v222, &qword_1EC6D2110);
                    v85 = v457;
                    v174 = v443;
LABEL_113:
                    v223 = v439;
                    sub_1D2174DA8(v471, v439, &unk_1EC6D2D60);
                    v224 = v435;
                    (v451)(v435, v223, v210);
                    v221(v224, 0, 1, v210);
                    sub_1D21DE890(v224, v441);
                    goto LABEL_96;
                  }

                  v206 = v459;
                  v207 = *(v459 + 72);
                  v208 = *(v459 + 16);
                  v209 = v437;
                  v210 = v472;
                  v208(v437, *(v203 + 7) + v207 * v204, v472);
                  v425 = *(v206 + 56);
                  v425(v209, 0, 1, v210);
                  sub_1D2176170(v209, &qword_1EC6D2110);
                  if (!*(v203 + 2))
                  {
                    goto LABEL_312;
                  }

                  v211 = sub_1D2176758(v441);
                  v85 = v457;
                  v174 = v443;
                  if ((v212 & 1) == 0)
                  {
                    goto LABEL_313;
                  }

                  v213 = *(v203 + 7) + v211 * v207;
                  v214 = v431;
                  v208(v431, v213, v210);
                  v430 = sub_1D225051C();
                  v429 = v215;
                  v216 = *a2;
                  (*a2)(v214, v210);
                  v217 = v432;
                  sub_1D2174DA8(v471, v432, &unk_1EC6D2D60);
                  v218 = sub_1D225051C();
                  v220 = v219;
                  v216(v217, v210);
                  if (v218 != v430 || v220 != v429)
                  {
                    v225 = sub_1D225126C();

                    if ((v225 & 1) == 0)
                    {
                      goto LABEL_96;
                    }

                    v221 = v425;
                    goto LABEL_113;
                  }

LABEL_96:
                  ++v181;
                  sub_1D2176170(v471, &unk_1EC6D2D60);
                  if (v181 == v450)
                  {
                    goto LABEL_117;
                  }
                }

                v196 = ~v194;
                v197 = *(v459 + 72);
                v198 = *(v459 + 16);
                while (1)
                {
                  v199 = *(v192 + 6) + v197 * v195;
                  v200 = v464;
                  v201 = v472;
                  v198(v464, v199, v472);
                  sub_1D22385D0(&qword_1EDC87220, MEMORY[0x1E69695A8]);
                  v202 = sub_1D225091C();
                  (*a2)(v200, v201);
                  if (v202)
                  {
                    break;
                  }

                  v195 = (v195 + 1) & v196;
                  v192 = v462;
                  if (((*&v458[(v195 >> 3) & 0xFFFFFFFFFFFFFF8] >> v195) & 1) == 0)
                  {
                    goto LABEL_105;
                  }
                }

                v85 = v457;
LABEL_95:
                v174 = v443;
                goto LABEL_96;
              }

LABEL_117:

              v226 = *(v476[0] + 8);
              v452 = (v476[0] + 64);
              v227 = 1 << v476[0][32];
              v228 = -1;
              if (v227 < 64)
              {
                v228 = ~(-1 << v227);
              }

              a2 = v228 & v226;
              v451 = ((v227 + 63) >> 6);
              v458 = (v459 + 16);
              v471 = v459 + 32;
              v470 = v459 + 8;
              v462 = v476[0];

              v229 = 0;
              v230 = v459;
              if (!a2)
              {
LABEL_121:
                if (v451 <= (v229 + 1))
                {
                  v232 = (v229 + 1);
                }

                else
                {
                  v232 = v451;
                }

                v233 = v232 - 1;
                v234 = v455;
                while (1)
                {
                  v231 = (v229 + 1);
                  if (__OFADD__(v229, 1))
                  {
                    break;
                  }

                  if (v231 >= v451)
                  {
                    v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
                    (*(*(v251 - 8) + 56))(v234, 1, 1, v251);
                    a2 = 0;
                    goto LABEL_129;
                  }

                  a2 = v452[v231];
                  ++v229;
                  if (a2)
                  {
                    goto LABEL_128;
                  }
                }

                __break(1u);
LABEL_297:
                __break(1u);
LABEL_298:
                __break(1u);
LABEL_299:
                __break(1u);
                goto LABEL_300;
              }

              while (1)
              {
                v231 = v229;
LABEL_128:
                v235 = __clz(__rbit64(a2));
                a2 &= a2 - 1;
                v236 = v235 | (v231 << 6);
                v237 = *(*(v462 + 6) + 8 * v236);
                v238 = v464;
                v239 = v472;
                (*(v230 + 16))(v464, *(v462 + 7) + *(v230 + 72) * v236, v472);
                v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
                v241 = *(v240 + 48);
                v242 = v455;
                *v455 = v237;
                v234 = v242;
                (*(v230 + 32))(v242 + v241, v238, v239);
                (*(*(v240 - 8) + 56))(v234, 0, 1, v240);
                v233 = v231;
LABEL_129:
                v243 = v453;
                sub_1D21A6938(v234, v453, &qword_1EC6D2530);
                v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2540);
                if ((*(*(v244 - 8) + 48))(v243, 1, v244) == 1)
                {
                  break;
                }

                v245 = *v243;
                v246 = v243 + *(v244 + 48);
                v247 = v464;
                v248 = v472;
                (*v471)(v464, v246, v472);
                v249 = v483;
                v250 = swift_isUniquelyReferenced_nonNull_native();
                v475 = v249;
                sub_1D21BA320(v245, v247, v250);
                (*v470)(v247, v248);
                v483 = v475;
                sub_1D2198024(&v475, v245);
                v229 = v233;
                if (!a2)
                {
                  goto LABEL_121;
                }
              }

              if (v469)
              {
                v252 = v444 + *(v466 + 48);
                v470 = *(v473 + 48);
                v466 = *(v473 + 64);
                v253 = v454 + ((*(v457 + 80) + 32) & ~*(v457 + 80));
                v254 = *(v457 + 72);
                v255 = v427;
                do
                {
                  v256 = v444;
                  sub_1D2174DA8(v253, v444, &qword_1EC6D2378);
                  v257 = v252[v470];
                  v258 = *v256;
                  v259 = v252[v466];
                  v260 = *(v473 + 48);
                  v261 = *(v473 + 64);
                  (*v471)(v255, v252, v472);
                  *(v255 + v260) = v257;
                  *(v255 + v261) = v259;
                  if (*(v112 + 2))
                  {
                    sub_1D2176758(v258);
                    if (v262)
                    {

                      sub_1D22357A4(v255, v257, v259);
                    }
                  }

                  sub_1D2176170(v255, &unk_1EC6D2D60);
                  v253 += v254;
                  --v469;
                }

                while (v469);
              }

              v76 = v465;
              v73 = v467;
              v117 = MEMORY[0x1E69E7CD0];
              a2 = v426;
LABEL_140:
              if (v436)
              {
                v436();
              }

              v263 = *(v76 + 16);

              v473 = MEMORY[0x1D38982E0](v263, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);

              v265 = sub_1D21DF564(v264);

              v267 = sub_1D21DF65C(v266);
              v268 = sub_1D21C7B9C(v267, v265);

              v476[0] = sub_1D21F8414(v268);
              sub_1D21D8158(v476);
              if (a2)
              {
                goto LABEL_324;
              }

              v469 = 0;

              v270 = v476[0];
              a2 = *(v476[0] + 2);
              v458 = v476[0];
              if (a2)
              {
                v271 = 0;
                v272 = v476[0] + 32;
                while (v271 < *(v270 + 2))
                {
                  v276 = *&v272[8 * v271];
                  v476[0] = v117;
                  v277 = -1;
                  if (v276 == -1)
                  {
                    v273 = -1;
                  }

                  else
                  {
                    v278 = -1;
                    while (1)
                    {
                      v273 = v276;
                      v279 = v476[0];
                      if (*(v476[0] + 2))
                      {
                        v280 = sub_1D225131C();
                        v281 = -1 << v279[32];
                        v282 = v280 & ~v281;
                        if ((*&v279[((v282 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v282))
                        {
                          break;
                        }
                      }

LABEL_155:
                      sub_1D2198024(&v475, v273);
                      if (v278 != -1)
                      {
                        if (*(v112 + 2))
                        {
                          sub_1D2176758(v273);
                          if (v284)
                          {
                            v285 = sub_1D21DDC30(v278, v112);
                            if (!v285)
                            {
                              goto LABEL_320;
                            }

                            v286 = v285;
                            v287 = sub_1D21DDC80(v278, v474);
                            if ((v287 & 0x100000000) != 0)
                            {
                              goto LABEL_321;
                            }

                            v288 = *&v287;

                            sub_1D2235A94(v286, v288);

                            v73 = v467;
                          }
                        }
                      }

                      if (*(v73 + 16))
                      {
                        v289 = sub_1D2176758(v273);
                        if (v290)
                        {
                          v277 = *(*(v73 + 56) + 8 * v289);
                        }
                      }

                      if (*(v76 + 16))
                      {
                        v291 = sub_1D2176758(v273);
                        if (v292)
                        {
                          v276 = *(*(v76 + 56) + 8 * v291);
                          v278 = v273;
                          if (v276 != -1)
                          {
                            continue;
                          }
                        }
                      }

                      goto LABEL_169;
                    }

                    v283 = ~v281;
                    while (*(*(v279 + 6) + 8 * v282) != v273)
                    {
                      v282 = (v282 + 1) & v283;
                      if (((*&v279[((v282 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v282) & 1) == 0)
                      {
                        goto LABEL_155;
                      }
                    }

                    v273 = v278;
LABEL_169:
                    v117 = MEMORY[0x1E69E7CD0];
                  }

                  ++v271;

                  v274 = v473;
                  v275 = swift_isUniquelyReferenced_nonNull_native();
                  v475 = v274;
                  v269 = sub_1D21B9BE8(v277, v273, v275);
                  v473 = v475;
                  v270 = v458;
                  if (v271 == a2)
                  {
                    goto LABEL_170;
                  }
                }

LABEL_300:
                __break(1u);
                goto LABEL_301;
              }

LABEL_170:
              if (v436)
              {
                (v436)(v269);
              }

              v293 = 0;
              v294 = v76 + 64;
              v295 = 1 << *(v76 + 32);
              v296 = -1;
              if (v295 < 64)
              {
                v296 = ~(-1 << v295);
              }

              a2 = v296 & *(v76 + 64);
              v297 = (v295 + 63) >> 6;
              v466 = MEMORY[0x1E69E7CC8];
              v454 = xmmword_1D22526E0;
              v471 = v297;
              v470 = v76 + 64;
              while (a2)
              {
                v298 = v293;
LABEL_182:
                v299 = __clz(__rbit64(a2));
                a2 &= a2 - 1;
                v300 = (v298 << 9) | (8 * v299);
                v301 = *(*(v76 + 48) + v300);
                v302 = *(*(v76 + 56) + v300);
                v303 = v466;
                if (*(v466 + 16) && (sub_1D2176758(v302), (v304 & 1) != 0))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v454;
                  *(inited + 32) = v301;
                  v306 = swift_isUniquelyReferenced_nonNull_native();
                  v476[0] = v303;
                  v307 = v302;
                  v308 = sub_1D2176758(v302);
                  v310 = v309;
                  v311 = *(v303 + 16);
                  v312 = (v309 & 1) == 0;
                  if (__OFADD__(v311, v312))
                  {
                    goto LABEL_310;
                  }

                  v313 = v308;
                  if (sub_1D2200FEC(v306, v311 + v312))
                  {
                    v314 = sub_1D2176758(v307);
                    if ((v310 & 1) != (v315 & 1))
                    {
                      goto LABEL_323;
                    }

                    v313 = v314;
                  }

                  if ((v310 & 1) == 0)
                  {
                    goto LABEL_311;
                  }

                  v316 = v476[0];
                  v475 = *(*(v476[0] + 7) + 8 * v313);
                  sub_1D2202A30(inited);
                  v466 = v316;
                  if (v475)
                  {
                    *(*(v316 + 7) + 8 * v313) = v475;
                  }

                  else
                  {
                    sub_1D220F200(v313, v316);
                  }
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
                  v317 = swift_allocObject();
                  *(v317 + 16) = v454;
                  *(v317 + 32) = v301;
                  v318 = swift_isUniquelyReferenced_nonNull_native();
                  v476[0] = v303;
                  v319 = v302;
                  v320 = sub_1D2176758(v302);
                  v322 = v321;
                  v323 = *(v303 + 16);
                  v324 = (v321 & 1) == 0;
                  if (__OFADD__(v323, v324))
                  {
                    goto LABEL_305;
                  }

                  v325 = v320;
                  if (sub_1D2200FEC(v318, v323 + v324))
                  {
                    v326 = sub_1D2176758(v319);
                    if ((v322 & 1) != (v327 & 1))
                    {
                      goto LABEL_323;
                    }

                    v325 = v326;
                  }

                  v328 = v476[0];
                  v466 = v476[0];
                  if (v322)
                  {
                    *(*(v476[0] + 7) + 8 * v325) = v317;
                  }

                  else
                  {
                    *&v476[0][8 * (v325 >> 6) + 64] |= 1 << v325;
                    *(*(v328 + 6) + 8 * v325) = v319;
                    *(*(v328 + 7) + 8 * v325) = v317;
                    v329 = *(v328 + 2);
                    v102 = __OFADD__(v329, 1);
                    v330 = v329 + 1;
                    if (v102)
                    {
                      goto LABEL_309;
                    }

                    *(v328 + 2) = v330;
                  }
                }

                v293 = v298;
                v297 = v471;
                v294 = v470;
              }

              while (1)
              {
                v298 = v293 + 1;
                if (__OFADD__(v293, 1))
                {
                  goto LABEL_299;
                }

                if (v298 >= v297)
                {
                  break;
                }

                a2 = *(v294 + 8 * v298);
                ++v293;
                if (a2)
                {
                  goto LABEL_182;
                }
              }

              v331 = sub_1D21DDCDC(-1, v466);
              if (!v331)
              {
                v331 = MEMORY[0x1E69E7CC0];
              }

              v451 = *(v331 + 16);
              if (!v451)
              {
LABEL_293:

                if (v436)
                {
                  (v436)(v422);
                }

                sub_1D2235460(v440, v428, "propagateLabels");

                return v473;
              }

              v332 = 0;
              v452 = (v331 + 32);
              v462 = (v459 + 48);
              v457 = v459 + 32;
              v455 = (v459 + 16);
              v456 = v459 + 8;
              v459 += 56;
              v450 = v331;
              while (2)
              {
                if (v332 >= *(v331 + 16))
                {
                  goto LABEL_306;
                }

                v333 = v452[v332];
                v479 = 0;
                v480 = 1;
                v334 = v473;
                if (*(v473 + 16))
                {
                  v335 = v332;
                  v336 = sub_1D2176758(v333);
                  if ((v337 & 1) != 0 && *(*(v334 + 56) + 8 * v336) == -1)
                  {
LABEL_210:
                    v470 = 0;
                    LODWORD(v471) = 1;
                    goto LABEL_215;
                  }

                  v338 = v482;
                  v339 = sub_1D2176758(v333);
                  if (v340)
                  {
                    a2 = *(v334 + 56);
                    if (sub_1D21D3258(*(a2 + 8 * v339), v338))
                    {
                      goto LABEL_210;
                    }

                    v341 = sub_1D2176758(v333);
                    if (v342)
                    {
                      v343 = *(a2 + 8 * v341);
                    }

                    else
                    {
                      v343 = 0;
                    }

                    v470 = v343;
                    v479 = v343;
                    LODWORD(v471) = v342 ^ 1;
                    v480 = (v342 ^ 1) & 1;
LABEL_215:
                    v453 = (v335 + 1);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
                    v344 = swift_initStackObject();
                    v345 = 0;
                    *(v344 + 16) = v454;
                    *(v344 + 32) = v333;
                    v478 = v344;
                    v346 = 1;
LABEL_217:
                    if (v345 >= v346)
                    {
                      goto LABEL_297;
                    }

                    v347 = *(v344 + 8 * v345 + 32);
                    v348 = sub_1D21DDB80(v347, v76);
                    if ((v349 & 1) == 0 && v348 != -1)
                    {
                      v470 = sub_1D21DDB80(v348, v473);
                      v479 = v470;
                      LODWORD(v471) = v350;
                      v480 = v350 & 1;
                    }

                    if (!sub_1D21DDC30(v347, v112) || (swift_beginAccess(), v351 = , v477 = sub_1D21F3C98(v351), v352 = , sub_1D2202B1C(v352), , v353 = v469, v354 = sub_1D222D79C(v477, &v483), , v355 = sub_1D222DDC8(v354, &v479), v357 = v356, v469 = v353, , (v357 & 0x100) != 0))
                    {
                      a2 = v463;
                    }

                    else
                    {
                      v479 = 0;
                      LODWORD(v471) = 1;
                      v480 = 1;
                      v358 = sub_1D21DDB80(v347, v467);
                      a2 = v463;
                      if ((v359 & 1) != 0 || !(v357 & 1 | (v358 != v355)))
                      {
                        v470 = 0;
                      }

                      else
                      {
                        LODWORD(v471) = 0;
                        v479 = v358;
                        v480 = 0;
                        v470 = v358;
                      }
                    }

                    v360 = sub_1D21DDC30(v347, v112);
                    if (v360)
                    {
                      v361 = v360;
                      v362 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
                      swift_beginAccess();
                      sub_1D2174DA8(v361 + v362, a2, &qword_1EC6D2110);
                      v363 = v472;
                      if ((*v462)(a2, 1, v472) == 1)
                      {

                        sub_1D2176170(a2, &qword_1EC6D2110);
                        goto LABEL_230;
                      }

                      v377 = v468;
                      (*v457)(v468, a2, v363);
                      v378 = *(v361 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_localRejectionTags);

                      LOBYTE(v377) = sub_1D222D8F0(v377, v378);

                      if (v377)
                      {
                        v379 = sub_1D21DDB80(v347, v467);
                        if ((v380 & 1) != 0 || (v381 = v379, v382 = sub_1D21DDBD8(v468, v483), (v383 & 1) == 0) && v381 == v382)
                        {
                          v381 = sub_1D22346CC(v460, v461);
                        }

                        v384 = v473;
                        v385 = swift_isUniquelyReferenced_nonNull_native();
                        v477 = v384;
                        sub_1D21B9BE8(v381, v347, v385);
                        a2 = v477;
                        goto LABEL_288;
                      }

                      sub_1D21DDB80(v347, v76);
                      v386 = v470;
                      v387 = v471;
                      if ((v388 & 1) == 0)
                      {
                        v389 = sub_1D21DDB80(v347, v76);
                        if (v390)
                        {
                          goto LABEL_322;
                        }

                        v391 = sub_1D21DDC30(v389, v112);
                        v386 = v470;
                        v387 = v471;
                        if (v391)
                        {
                          swift_beginAccess();

                          v477 = sub_1D21F3C98(v392);

                          sub_1D2202B1C(v393);

                          v394 = sub_1D222D8F0(v468, v477);

                          if (v394)
                          {
                            v386 = 0;
                          }

                          else
                          {
                            v386 = v470;
                          }

                          v387 = v394 | v471;
                        }
                      }

                      v395 = v483;
                      sub_1D21DDBD8(v468, v483);
                      if ((v396 & 1) == 0)
                      {
                        v397 = v473;
                        goto LABEL_278;
                      }

                      v397 = v473;
                      if (v387)
                      {
LABEL_278:
                        v411 = sub_1D21DDBD8(v468, v395);
                        if (v412)
                        {
                          v413 = v386;
                        }

                        else
                        {
                          v413 = v411;
                        }

                        if (v412 & 1) != 0 && (v387)
                        {
                          v413 = sub_1D22346CC(v460, v461);
                        }
                      }

                      else
                      {
                        if (*(v361 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed))
                        {
                          v387 = sub_1D21D3258(v386, v481);
                          if (v387)
                          {
                            v386 = 0;
                          }

                          goto LABEL_278;
                        }

                        v414 = sub_1D21DDBD8(v468, v395);
                        if (v415)
                        {
                          v413 = v386;
                        }

                        else
                        {
                          v413 = v414;
                        }
                      }

                      v416 = swift_isUniquelyReferenced_nonNull_native();
                      v477 = v397;
                      sub_1D21B9BE8(v413, v347, v416);
                      a2 = v477;
                      v417 = v464;
                      (*v455)(v464, v468, v472);
                      v418 = sub_1D21DDB80(v347, a2);
                      sub_1D21DE6DC(v418, v419 & 1, v417);
LABEL_288:
                      if (*(v361 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed) == 1)
                      {
                        v420 = sub_1D21DDB80(v347, a2);
                        if (v421)
                        {
                          goto LABEL_319;
                        }

                        sub_1D2198024(&v477, v420);

                        (*v456)(v468, v472);
                      }

                      else
                      {
                        (*v456)(v468, v472);
                      }

LABEL_263:
                      v400 = sub_1D21DDB80(v347, a2);
                      if (v401)
                      {
                        goto LABEL_317;
                      }

                      v473 = a2;
                      sub_1D2198024(&v477, v400);
                      v402 = sub_1D21DDCDC(v347, v466);
                      if (v402)
                      {
                        v403 = v402;
                      }

                      else
                      {
                        v403 = MEMORY[0x1E69E7CC0];
                      }

                      a2 = *(v403 + 16);
                      if (a2)
                      {
                        v404 = 0;
                        while (v404 < *(v403 + 16))
                        {
                          if (*(v112 + 2))
                          {
                            v406 = *(v403 + 32 + 8 * v404);
                            sub_1D2176758(v406);
                            if (v407)
                            {
                              v408 = sub_1D21DDC30(v347, v112);
                              if (!v408)
                              {
                                goto LABEL_315;
                              }

                              v409 = v408;
                              v410 = sub_1D21DDC80(v406, v474);
                              if ((v410 & 0x100000000) != 0)
                              {
                                goto LABEL_314;
                              }

                              v405 = *&v410;

                              sub_1D2235A94(v409, v405);
                            }
                          }

                          if (a2 == ++v404)
                          {
                            goto LABEL_216;
                          }
                        }

                        __break(1u);
                        goto LABEL_293;
                      }

LABEL_216:
                      sub_1D2202A30(v403);
                      ++v345;
                      v344 = v478;
                      v346 = *(v478 + 16);
                      v76 = v465;
                      if (v345 >= v346)
                      {

                        v332 = v453;
                        v331 = v450;
                        if (v453 == v451)
                        {
                          goto LABEL_293;
                        }

                        continue;
                      }

                      goto LABEL_217;
                    }

LABEL_230:
                    v364 = sub_1D21DDB80(v347, v76);
                    if ((v365 & 1) == 0)
                    {
                      v366 = v364;
                      v367 = sub_1D21DDB80(v347, v76);
                      if ((v368 & 1) != 0 || v367 != -1)
                      {
                        v369 = sub_1D21DDC30(v366, v112);
                        if (v369)
                        {
                          v370 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
                          v371 = v369;
                          swift_beginAccess();
                          v372 = v371 + v370;
                          v373 = v442;
                          sub_1D2174DA8(v372, v442, &qword_1EC6D2110);

                          if ((*v462)(v373, 1, v472) != 1)
                          {
                            sub_1D2176170(v373, &qword_1EC6D2110);
                            v374 = sub_1D21DDB80(v347, v467);
                            if ((v375 & 1) == 0)
                            {
                              v376 = v374;
                              if (!sub_1D21D3258(v374, v482))
                              {
                                goto LABEL_262;
                              }
                            }

LABEL_261:
                            v376 = sub_1D22346CC(v460, v461);
LABEL_262:
                            v479 = v376;
                            v480 = 0;
                            v398 = v473;
                            v399 = swift_isUniquelyReferenced_nonNull_native();
                            v477 = v398;
                            v470 = v376;
                            sub_1D21B9BE8(v376, v347, v399);
                            LODWORD(v471) = 0;
                            a2 = v477;
                            goto LABEL_263;
                          }
                        }

                        else
                        {
                          v373 = v442;
                          (*v459)(v442, 1, 1, v472);
                        }

                        sub_1D2176170(v373, &qword_1EC6D2110);
                      }
                    }

                    v376 = v470;
                    if (v471)
                    {
                      goto LABEL_261;
                    }

                    goto LABEL_262;
                  }
                }

                else
                {
LABEL_307:
                  __break(1u);
                }

                break;
              }

              __break(1u);
LABEL_309:
              __break(1u);
LABEL_310:
              __break(1u);
LABEL_311:
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              __break(1u);
LABEL_314:
              __break(1u);
LABEL_315:
              __break(1u);
              goto LABEL_316;
            }

            v80 = *(v77 + 8 * v86);
            ++v82;
          }

          while (!v80);
          v82 = v86;
LABEL_19:
          v87 = __clz(__rbit64(v80));
          v80 &= v80 - 1;
          v88 = v87 | (v82 << 6);
          v89 = *(*(v474 + 48) + 8 * v88);
          v90 = *(*(v474 + 56) + 4 * v88);
          v84 = *&a2;
          if ((a2 & 0x100000000) == 0)
          {
            goto LABEL_12;
          }

          v91 = v440[5];
          v92 = v440[6];
          __swift_project_boxed_opaque_existential_1(v440 + 2, v91);
          v93 = (*(v92 + 8))(v91, v92);
          if (!*(v93 + 16))
          {
            break;
          }

          v94 = sub_1D2176DFC(v461);
          if ((v95 & 1) == 0)
          {
            break;
          }

          v83 = *(*(v93 + 56) + 8 * v94);

          v84 = *(v83 + 80);

          v76 = v465;
          v73 = v467;
LABEL_12:
          if (v90 < v84)
          {
            goto LABEL_23;
          }
        }

        v76 = v465;
        v73 = v467;
      }

      while (v90 >= 0.0);
LABEL_23:
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v476[0] = v76;
      v97 = sub_1D2176758(v89);
      v99 = v76;
      v100 = *(v76 + 16);
      v101 = (v98 & 1) == 0;
      v102 = __OFADD__(v100, v101);
      v103 = v100 + v101;
      if (v102)
      {
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      v104 = v98;
      if (*(v99 + 24) >= v103)
      {
        if ((v96 & 1) == 0)
        {
          v109 = v97;
          sub_1D21B6C24();
          v97 = v109;
        }
      }

      else
      {
        sub_1D21B140C(v103, v96);
        v97 = sub_1D2176758(v89);
        if ((v104 & 1) != (v105 & 1))
        {
          goto LABEL_323;
        }
      }

      v73 = v467;
      v106 = v476[0];
      if (v104)
      {
        *(*(v476[0] + 7) + 8 * v97) = -1;
        v76 = v106;
        continue;
      }

      break;
    }

    *&v476[0][8 * (v97 >> 6) + 64] |= 1 << v97;
    *(*(v106 + 6) + 8 * v97) = v89;
    *(*(v106 + 7) + 8 * v97) = -1;
    v107 = *(v106 + 2);
    v102 = __OFADD__(v107, 1);
    v108 = v107 + 1;
    if (!v102)
    {
      v76 = v106;
      *(v106 + 2) = v108;
      continue;
    }

    break;
  }

LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  sub_1D22512AC();
  __break(1u);
LABEL_324:

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D22346CC(uint64_t a1, unsigned __int8 a2)
{
  result = swift_beginAccess();
  while (a2 <= 5u)
  {
    v9 = a2;
    if (a2)
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      v9 = 1;
    }

    do
    {
LABEL_18:
      v11[0] = 0;
      result = MEMORY[0x1D3899660](v11, 8);
    }

    while (((0xFFFFFFFFFFFFFFLL * v11[0]) & 0xFFFFFFFFFFFFFF00) == 0);
    v10 = qword_1D22558B0[v9] | (((v11[0] * 0xFFFFFFFFFFFFFFuLL) >> 64) + 1);
    if (v10 != -1)
    {
      v5 = *(a1 + 16);
      if (!*(v5 + 16) || (result = sub_1D225131C(), v6 = -1 << *(v5 + 32), v7 = result & ~v6, ((*(v5 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0))
      {
LABEL_21:
        swift_beginAccess();
        sub_1D2198024(&v12, v10);
        swift_endAccess();
        return v10;
      }

      v8 = ~v6;
      while (*(*(v5 + 48) + 8 * v7) != v10)
      {
        v7 = (v7 + 1) & v8;
        if (((*(v5 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }
  }

  switch(a2)
  {
    case 6u:
      v9 = 3;
      goto LABEL_18;
    case 0x3Fu:
      v9 = 2;
      goto LABEL_18;
    case 0x2Au:
      v9 = 4;
      goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D2234878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v163 = a3;
  v165 = a2;
  v5 = sub_1D225077C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v155 - v10;
  sub_1D225076C();
  v156 = v3;
  v12 = sub_1D225078C();
  v13 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v12, v13, v15, "updateDiversity", "", v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  (*(v6 + 16))(v9, v11, v5);
  sub_1D22507EC();
  swift_allocObject();
  v155 = sub_1D22507DC();
  (*(v6 + 8))(v11, v5);
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = v165;

  v21 = 0;
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v159 = MEMORY[0x1E69E7CC8];
  v160 = MEMORY[0x1E69E7CC8];
  v157 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v158 = v21;
    v164 = v23;
    while (1)
    {
      if (!v18)
      {
        while (1)
        {
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          if (v25 >= v19)
          {
            break;
          }

          v24 = *(a1 + 64 + 8 * v25);
          ++v22;
          if (v24)
          {
            v22 = v25;
            goto LABEL_13;
          }
        }

        v106 = 0;
        v107 = v160;
        v108 = v160 + 8;
        v109 = 1 << *(v160 + 32);
        v110 = -1;
        if (v109 < 64)
        {
          v110 = ~(-1 << v109);
        }

        v111 = v110 & v160[8];
        v112 = (v109 + 63) >> 6;
        v113 = MEMORY[0x1E69E7CC8];
        v114 = v163;
        v161 = v112;
        v162 = v160 + 8;
LABEL_88:
        v115 = v157;
        v116 = v159;
        while (1)
        {
          v118 = v164;
          if (!v111)
          {
            while (1)
            {
              v119 = v106 + 1;
              if (__OFADD__(v106, 1))
              {
                goto LABEL_131;
              }

              if (v119 >= v112)
              {

                sub_1D2235460(v156, v155, "updateDiversity");

                sub_1D220DA08(v158);
                return v113;
              }

              v111 = v108[v119];
              ++v106;
              if (v111)
              {
                v106 = v119;
                break;
              }
            }
          }

          v120 = (v106 << 9) | (8 * __clz(__rbit64(v111)));
          v121 = *(v107[6] + v120);
          v166 = *(v107[7] + v120);
          if (v115[2] && (v122 = sub_1D2176758(v121), (v123 & 1) != 0))
          {
            v124 = *(v115[7] + 4 * v122) + 0.00001;
            if (!v118[2])
            {
              goto LABEL_103;
            }
          }

          else
          {
            v124 = 1.0;
            if (!v118[2])
            {
              goto LABEL_103;
            }
          }

          v125 = sub_1D2176758(v121);
          if ((v126 & 1) == 0)
          {
LABEL_103:
            v127 = 0.8;
            goto LABEL_104;
          }

          v127 = fmaxf(*(v118[7] + 4 * v125), 0.8);
LABEL_104:
          v128 = 1.0;
          if (v116[2])
          {
            v129 = sub_1D2176758(v121);
            v112 = v161;
            if (v130)
            {
              v131 = v116[7];
              if (*(v131 + 4 * v129) == 0.0)
              {
                v128 = 1.0;
              }

              else
              {
                v128 = *(v131 + 4 * v129);
              }
            }
          }

          else
          {
            v112 = v161;
          }

          v111 &= v111 - 1;
          v117 = *(v166 + 16);
          v108 = v162;
          if (v117)
          {
            v132 = v128 - v127;

            v134 = 0;
            while (v134 < *(v133 + 16))
            {
              v135 = *(v133 + 8 * v134 + 32);
              v136 = 0.0;
              if (*(v165 + 16))
              {
                v137 = sub_1D2176758(*(v133 + 8 * v134 + 32));
                if (v138)
                {
                  v136 = *(*(v165 + 56) + 4 * v137);
                }
              }

              v139 = 1.0;
              if (*(v114 + 16))
              {
                v140 = sub_1D2176758(v135);
                if (v141)
                {
                  v139 = *(*(v114 + 56) + 4 * v140);
                }
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v167 = v113;
              v144 = sub_1D2176758(v135);
              v145 = v113[2];
              v146 = (v143 & 1) == 0;
              v147 = v145 + v146;
              if (__OFADD__(v145, v146))
              {
                goto LABEL_133;
              }

              v148 = v143;
              if (v113[3] >= v147)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1D21B6D70();
                }
              }

              else
              {
                sub_1D21B1670(v147, isUniquelyReferenced_nonNull_native);
                v149 = sub_1D2176758(v135);
                if ((v148 & 1) != (v150 & 1))
                {
                  goto LABEL_143;
                }

                v144 = v149;
              }

              v151 = -v139 / ((v127 + ((v132 * v136) / v124)) + 0.00001);
              v113 = v167;
              if (v148)
              {
                *(v167[7] + 4 * v144) = v151;
              }

              else
              {
                v167[(v144 >> 6) + 8] |= 1 << v144;
                *(v113[6] + 8 * v144) = v135;
                *(v113[7] + 4 * v144) = v151;
                v152 = v113[2];
                v41 = __OFADD__(v152, 1);
                v153 = v152 + 1;
                if (v41)
                {
                  goto LABEL_134;
                }

                v113[2] = v153;
              }

              ++v134;
              v114 = v163;
              v133 = v166;
              if (v117 == v134)
              {

                v107 = v160;
                v112 = v161;
                v108 = v162;
                goto LABEL_88;
              }
            }

            goto LABEL_132;
          }
        }
      }

      v24 = v18;
LABEL_13:
      v18 = (v24 - 1) & v24;
      if (*(v20 + 16))
      {
        v26 = (v22 << 9) | (8 * __clz(__rbit64(v24)));
        v27 = *(*(a1 + 56) + v26);
        v28 = *(*(a1 + 48) + v26);
        sub_1D2176758(v28);
        if (v29)
        {
          break;
        }
      }
    }

    sub_1D220DA08(v158);
    v30 = v160;
    LODWORD(v166) = swift_isUniquelyReferenced_nonNull_native();
    v167 = v30;
    v32 = sub_1D2176758(v27);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (v166)
      {
        v39 = v167;
        if (v31)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1D21B7130();
        v39 = v167;
        if (v36)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_22;
    }

    sub_1D21B1C6C(v35, v166);
    v37 = sub_1D2176758(v27);
    if ((v36 & 1) != (v38 & 1))
    {
      goto LABEL_143;
    }

    v32 = v37;
    v39 = v167;
    if ((v36 & 1) == 0)
    {
LABEL_22:
      v39[(v32 >> 6) + 8] |= 1 << v32;
      *(v39[6] + 8 * v32) = v27;
      *(v39[7] + 8 * v32) = MEMORY[0x1E69E7CC0];
      v40 = v39[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v39[2] = v42;
        goto LABEL_24;
      }

LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

LABEL_24:
    v160 = v39;
    v43 = v39[7];
    v44 = *(v43 + 8 * v32);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 8 * v32) = v44;
    v166 = v32;
    if ((v45 & 1) == 0)
    {
      v44 = sub_1D2195F78(0, *(v44 + 2) + 1, 1, v44);
      *(v43 + 8 * v32) = v44;
    }

    v47 = *(v44 + 2);
    v46 = *(v44 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v162 = (v47 + 1);
      v65 = sub_1D2195F78((v46 > 1), v47 + 1, 1, v44);
      v48 = v162;
      v44 = v65;
      *(v43 + 8 * v166) = v65;
    }

    v20 = v165;
    *(v44 + 2) = v48;
    *&v44[8 * v47 + 32] = v28;
    v49 = v163;
    if (!*(v163 + 16))
    {
      v23 = v164;
      goto LABEL_67;
    }

    v50 = sub_1D2176758(v28);
    v23 = v164;
    if ((v51 & 1) == 0)
    {
      goto LABEL_67;
    }

    v52 = *(*(v49 + 56) + 4 * v50);
    if (v164[2] && (v53 = sub_1D2176758(v27), (v54 & 1) != 0))
    {
      v55 = *(v23[7] + 4 * v53);
    }

    else
    {
      v55 = INFINITY;
    }

    if (v52 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = v52;
    }

    LODWORD(v166) = swift_isUniquelyReferenced_nonNull_native();
    v167 = v23;
    v57 = sub_1D2176758(v27);
    v59 = v23[2];
    v60 = (v58 & 1) == 0;
    v41 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v41)
    {
      goto LABEL_137;
    }

    if (v23[3] < v61)
    {
      break;
    }

    if (v166)
    {
      v23 = v167;
      if (v58)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v66 = v57;
      v67 = v58;
      sub_1D21B6D70();
      v68 = v67;
      v57 = v66;
      v20 = v165;
      v23 = v167;
      if (v68)
      {
        goto LABEL_45;
      }
    }

LABEL_49:
    v23[(v57 >> 6) + 8] |= 1 << v57;
    *(v23[6] + 8 * v57) = v27;
    *(v23[7] + 4 * v57) = v56;
    v69 = v23[2];
    v41 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v41)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v23[2] = v70;
LABEL_51:
    v71 = v159;
    if (v159[2] && (v72 = sub_1D2176758(v27), (v73 & 1) != 0))
    {
      v74 = *(v71[7] + 4 * v72);
    }

    else
    {
      v74 = -INFINITY;
    }

    if (v74 > v52)
    {
      v52 = v74;
    }

    v75 = v159;
    LODWORD(v166) = swift_isUniquelyReferenced_nonNull_native();
    v167 = v75;
    v76 = sub_1D2176758(v27);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v41 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v41)
    {
      goto LABEL_138;
    }

    if (v75[3] >= v80)
    {
      if ((v166 & 1) == 0)
      {
        v166 = v76;
        v103 = v77;
        sub_1D21B6D70();
        LOBYTE(v77) = v103;
        v20 = v165;
        v76 = v166;
      }
    }

    else
    {
      LODWORD(v164) = v77;
      sub_1D21B1670(v80, v166);
      v76 = sub_1D2176758(v27);
      v81 = v77 & 1;
      LOBYTE(v77) = v164;
      if ((v164 & 1) != v81)
      {
        goto LABEL_143;
      }
    }

    v82 = v167;
    v159 = v167;
    if (v77)
    {
      *(v167[7] + 4 * v76) = v52;
      goto LABEL_67;
    }

    v167[(v76 >> 6) + 8] |= 1 << v76;
    *(v82[6] + 8 * v76) = v27;
    *(v82[7] + 4 * v76) = v52;
    v83 = v82[2];
    v41 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (v41)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v82[2] = v84;
LABEL_67:
    v21 = sub_1D2172BF8;
    if (*(v20 + 16))
    {
      v85 = sub_1D2176758(v28);
      v21 = sub_1D2172BF8;
      if (v86)
      {
        v87 = *(*(v20 + 56) + 4 * v85);
        v88 = v157;
        if (v157[2] && (v89 = sub_1D2176758(v27), (v90 & 1) != 0))
        {
          v91 = *(v88[7] + 4 * v89);
        }

        else
        {
          v91 = -INFINITY;
        }

        if (v91 > v87)
        {
          v87 = v91;
        }

        v92 = v157;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v92;
        v94 = sub_1D2176758(v27);
        v96 = v92[2];
        v97 = (v95 & 1) == 0;
        v41 = __OFADD__(v96, v97);
        v98 = v96 + v97;
        if (v41)
        {
          goto LABEL_141;
        }

        if (v92[3] >= v98)
        {
          if ((v93 & 1) == 0)
          {
            v104 = v94;
            v105 = v95;
            sub_1D21B6D70();
            LOBYTE(v95) = v105;
            v94 = v104;
            v20 = v165;
          }
        }

        else
        {
          LODWORD(v166) = v95;
          sub_1D21B1670(v98, v93);
          v94 = sub_1D2176758(v27);
          v99 = v95 & 1;
          LOBYTE(v95) = v166;
          if ((v166 & 1) != v99)
          {
            goto LABEL_143;
          }
        }

        v100 = v167;
        v157 = v167;
        if (v95)
        {
          *(v167[7] + 4 * v94) = v87;
          v21 = sub_1D2172BF8;
        }

        else
        {
          v167[(v94 >> 6) + 8] |= 1 << v94;
          *(v100[6] + 8 * v94) = v27;
          *(v100[7] + 4 * v94) = v87;
          v101 = v100[2];
          v41 = __OFADD__(v101, 1);
          v102 = v101 + 1;
          if (v41)
          {
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          v100[2] = v102;
          v21 = sub_1D2172BF8;
        }
      }
    }
  }

  v62 = v58;
  sub_1D21B1670(v61, v166);
  v57 = sub_1D2176758(v27);
  if ((v62 & 1) == (v63 & 1))
  {
    v64 = v62;
    v23 = v167;
    if ((v64 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_45:
    *(v23[7] + 4 * v57) = v56;
    goto LABEL_51;
  }

LABEL_143:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2235460(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_1D22507BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D225077C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D225078C();
  sub_1D22507CC();
  v12 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D22356C0()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = sub_1D22507AC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D22357A4(uint64_t a1, unsigned __int8 a2, char a3)
{
  v7 = a2;
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  if (!v7)
  {
LABEL_4:
    (*(v9 + 16))(v15, a1, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    v16 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
    swift_beginAccess();
    sub_1D22377C4(v15, v3 + v16);
    result = swift_endAccess();
    *(v3 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore) = 1065353216;
    *(v3 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed) = a2 == 0;
    return result;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  if (a3)
  {
    v17 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + v17);
    *(v3 + v17) = 0x8000000000000000;
    sub_1D21B9FCC(a1, isUniquelyReferenced_nonNull_native, 1.0);
    *(v3 + v17) = v24;
    return swift_endAccess();
  }

  else
  {
    (*(v9 + 16))(v11, a1, v8);
    v19 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_localRejectionTags;
    v20 = *(v3 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_localRejectionTags);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v19) = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_1D2196098(0, v20[2] + 1, 1, v20);
      *(v3 + v19) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1D2196098(v22 > 1, v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    result = (*(v9 + 32))(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v11, v8);
    *(v3 + v19) = v20;
  }

  return result;
}

uint64_t sub_1D2235A94(_BYTE *a1, float a2)
{
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D80);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v151 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E50);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v159 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v151 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v152 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v171 = &v151 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v169 = &v151 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v163 = &v151 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v162 = (&v151 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v151 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v151 - v25;
  v27 = sub_1D225055C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v166 = &v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v172 = &v151 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v164 = &v151 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v170 = &v151 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v151 - v37;
  v167 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore;
  v39 = *&a1[OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore];
  if (a2 <= 0.9999)
  {
    v40 = a2;
  }

  else
  {
    v40 = 0.9999;
  }

  v41 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
  swift_beginAccess();
  v173 = a1;
  sub_1D2174DA8(&a1[v41], v26, &qword_1EC6D2110);
  v160 = *(v28 + 48);
  v42 = v160(v26, 1, v27);
  v174 = v2;
  v168 = v10;
  v165 = v28;
  v158 = v28 + 48;
  if (v42 == 1)
  {
    sub_1D2176170(v26, &qword_1EC6D2110);
    v43 = v28;
    v44 = v160;
LABEL_14:
    v52 = v173;
    v53 = v170;
    goto LABEL_36;
  }

  v45 = v40 * v39;
  v157 = *(v28 + 32);
  (v157)(v38, v26, v27);
  v46 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
  swift_beginAccess();
  v47 = *(v2 + v46);
  v44 = v160;
  if (*(v47 + 16))
  {

    v48 = sub_1D2196D38(v38);
    if (v49)
    {
      v50 = *(*(v47 + 56) + 4 * v48);

      if (v50 < v45)
      {
        swift_beginAccess();
        sub_1D21F3F08(v38);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  if (*(*(v174 + v46) + 16))
  {

    sub_1D2196D38(v38);
    if (v51)
    {
      v43 = v165;
      (*(v165 + 8))(v38, v27);

      v10 = v168;
      goto LABEL_14;
    }
  }

  v54 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
  swift_beginAccess();
  sub_1D2174DA8(v174 + v54, v24, &qword_1EC6D2110);
  LODWORD(v161) = 1;
  v55 = v44(v24, 1, v27);
  sub_1D2176170(v24, &qword_1EC6D2110);
  v53 = v170;
  if (v55 != 1)
  {
    if (v173[OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed] == 1)
    {
      if (*(v174 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed))
      {
        v56 = *(v174 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore) < v45;
      }

      else
      {
        v56 = 1;
      }

      LODWORD(v161) = v56;
    }

    else if (*(v174 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed))
    {
      LODWORD(v161) = 0;
    }

    else
    {
      v57 = sub_1D225051C();
      v156 = v58;
      v59 = v162;
      sub_1D2174DA8(v174 + v54, v162, &qword_1EC6D2110);
      if (v44(v59, 1, v27) == 1)
      {
        goto LABEL_94;
      }

      v60 = sub_1D225051C();
      v62 = v61;
      (*(v165 + 8))(v59, v27);
      if (v57 == v60 && v156 == v62)
      {

        LODWORD(v161) = 0;
      }

      else
      {
        LODWORD(v161) = sub_1D225126C();
      }

      v53 = v170;
    }
  }

  if (*(v167 + v173) == 1.0 && (v63 = *(v174 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_localRejectionTags), , v64 = sub_1D222D8F0(v38, v63), , v64))
  {
    v43 = v165;
  }

  else
  {
    v43 = v165;
    if (v161)
    {
      v65 = v163;
      (v157)(v163, v38, v27);
      (*(v43 + 56))(v65, 0, 1, v27);
      v66 = v174;
      swift_beginAccess();
      sub_1D22377C4(v65, v66 + v54);
      swift_endAccess();
      *(v66 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore) = v45;
      v52 = v173;
      *(v66 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed) = v173[OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed];
      v10 = v168;
      goto LABEL_36;
    }
  }

  (*(v43 + 8))(v38, v27);
  v10 = v168;
  v52 = v173;
LABEL_36:
  v67 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
  v68 = v174;
  swift_beginAccess();
  v156 = v67;
  v69 = v68 + v67;
  v70 = v169;
  sub_1D2174DA8(v69, v169, &qword_1EC6D2110);
  if (v44(v70, 1, v27) == 1)
  {
    sub_1D2176170(v70, &qword_1EC6D2110);
    v71 = v159;
    v72 = v172;
  }

  else
  {
    (*(v43 + 32))(v53, v70, v27);
    v73 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
    swift_beginAccess();
    v74 = *&v52[v73];
    v71 = v159;
    v72 = v172;
    if (*(v74 + 16))
    {

      v75 = sub_1D2196D38(v53);
      if (v76)
      {
        v77 = *(*(v74 + 56) + 4 * v75);
        (*(v43 + 8))(v53, v27);

        v78 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore;
        if (*(v174 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagScore) <= (v40 * v77))
        {
          (*(v43 + 56))(v163, 1, 1, v27);
          v79 = v156;
          v80 = v174;
          swift_beginAccess();
          sub_1D22377C4(v163, v80 + v79);
          swift_endAccess();
          *(v80 + v78) = 0;
        }

        goto LABEL_44;
      }
    }

    (*(v43 + 8))(v53, v27);
  }

LABEL_44:
  v81 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
  swift_beginAccess();
  v82 = *&v52[v81];
  v83 = v82 + 64;
  v84 = 1 << *(v82 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v82 + 64);
  v87 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
  v157 = v82;

  v170 = v87;
  swift_beginAccess();
  v88 = 0;
  v151 = (v84 + 63) >> 6;
  v173 = (v43 + 16);
  v169 = (v43 + 32);
  v162 = (v43 + 8);
  v153 = (v43 + 56);
  v89 = v171;
  v161 = v83;
  v90 = v71;
  while (v86)
  {
    v92 = v90;
    v93 = v27;
    v94 = v88;
LABEL_60:
    v97 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v98 = v97 | (v94 << 6);
    v99 = v157;
    v100 = v165;
    v101 = v164;
    (*(v165 + 16))(v164, *(v157 + 48) + *(v165 + 72) * v98, v93);
    v102 = *(*(v99 + 56) + 4 * v98);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
    v104 = *(v103 + 48);
    v105 = *(v100 + 32);
    v90 = v92;
    v106 = v101;
    v107 = v93;
    v105(v92, v106, v93);
    *(v92 + v104) = v102;
    (*(*(v103 - 8) + 56))(v92, 0, 1, v103);
    v10 = v168;
    v72 = v172;
    v89 = v171;
LABEL_61:
    sub_1D21A6938(v90, v10, &qword_1EC6D2E50);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
    if ((*(*(v108 - 8) + 48))(v10, 1, v108) == 1)
    {
    }

    v109 = *&v10[*(v108 + 48)];
    v110 = v10;
    v111 = *v169;
    v27 = v107;
    (*v169)(v72, v110, v107);
    v113 = *&v170[v174];
    if (*(v113 + 16))
    {

      v114 = sub_1D2196D38(v72);
      if (v115)
      {
        v116 = *(*(v113 + 56) + 4 * v114);

        if (a2 <= 0.9999)
        {
          v112.n128_f32[0] = v109 * a2;
          if ((v109 * a2) < v116)
          {
LABEL_88:
            (*v162)(v72, v107, v112);
            goto LABEL_89;
          }
        }

        else
        {
          v112.n128_f32[0] = v109 * 0.9999;
          if ((v109 * 0.9999) < v116)
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
      }
    }

    v163 = v111;
    v167 = *v173;
    v167(v89, v72, v107, v112);
    (*v153)(v89, 0, 1, v107);
    v117 = *(v155 + 48);
    v118 = v154;
    sub_1D2174DA8(v174 + v156, v154, &qword_1EC6D2110);
    sub_1D2174DA8(v89, v118 + v117, &qword_1EC6D2110);
    v119 = v107;
    v120 = v160;
    if (v160(v118, 1, v107) == 1)
    {
      sub_1D2176170(v89, &qword_1EC6D2110);
      v121 = v120(v118 + v117, 1, v107);
      v27 = v107;
      v122 = v162;
      if (v121 == 1)
      {
        sub_1D2176170(v118, &qword_1EC6D2110);
        v123 = *v122;
        v89 = v171;
        v72 = v172;
        v123(v172, v107);
LABEL_85:
        v90 = v159;
LABEL_89:
        v10 = v168;
        goto LABEL_49;
      }

      goto LABEL_73;
    }

    v124 = v152;
    sub_1D2174DA8(v118, v152, &qword_1EC6D2110);
    if (v120(v118 + v117, 1, v107) == 1)
    {
      sub_1D2176170(v171, &qword_1EC6D2110);
      v125 = v124;
      v122 = v162;
      (*v162)(v125, v107);
      v27 = v107;
LABEL_73:
      sub_1D2176170(v118, &unk_1EC6D2D80);
      v72 = v172;
      goto LABEL_74;
    }

    v146 = v164;
    (v163)(v164, v118 + v117, v119);
    sub_1D22385D0(&qword_1EDC87220, MEMORY[0x1E69695A8]);
    LODWORD(v163) = sub_1D225091C();
    v147 = v124;
    v122 = v162;
    v148 = *v162;
    (*v162)(v146, v119);
    sub_1D2176170(v171, &qword_1EC6D2110);
    (v148)(v147, v119);
    sub_1D2176170(v118, &qword_1EC6D2110);
    v27 = v119;
    v72 = v172;
    if (v163)
    {
      v89 = v171;
      (v148)(v172, v119);
      goto LABEL_85;
    }

LABEL_74:
    v126 = v166;
    (v167)(v166, v72, v27);
    v127 = v170;
    v128 = v174;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = *&v127[v128];
    v130 = v175;
    *&v127[v128] = 0x8000000000000000;
    v132 = sub_1D2196D38(v126);
    v133 = v130[2];
    v134 = (v131 & 1) == 0;
    v135 = v133 + v134;
    if (__OFADD__(v133, v134))
    {
      goto LABEL_92;
    }

    v136 = v131;
    if (v130[3] >= v135)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D21B6EBC();
      }
    }

    else
    {
      sub_1D21B18D4(v135, isUniquelyReferenced_nonNull_native);
      v137 = sub_1D2196D38(v166);
      if ((v136 & 1) != (v138 & 1))
      {
        goto LABEL_95;
      }

      v132 = v137;
    }

    v139 = v40 * v109;
    v140 = v175;
    if (v136)
    {
      *(v175[7] + 4 * v132) = v139;
      v91 = *v122;
      (*v122)(v166, v27);
    }

    else
    {
      v175[(v132 >> 6) + 8] |= 1 << v132;
      v141 = v165;
      v142 = v166;
      (v167)(v140[6] + *(v165 + 72) * v132, v166, v27);
      *(v140[7] + 4 * v132) = v139;
      v91 = *(v141 + 8);
      v91(v142, v27);
      v143 = v140[2];
      v144 = __OFADD__(v143, 1);
      v145 = v143 + 1;
      if (v144)
      {
        goto LABEL_93;
      }

      v140[2] = v145;
    }

    v72 = v172;
    *&v170[v174] = v140;

    swift_endAccess();
    v91(v72, v27);
    v90 = v159;
    v10 = v168;
    v89 = v171;
LABEL_49:
    v83 = v161;
  }

  if (v151 <= v88 + 1)
  {
    v95 = v88 + 1;
  }

  else
  {
    v95 = v151;
  }

  v96 = v95 - 1;
  while (1)
  {
    v94 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v94 >= v151)
    {
      v107 = v27;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
      (*(*(v149 - 8) + 56))(v90, 1, 1, v149);
      v86 = 0;
      v88 = v96;
      goto LABEL_61;
    }

    v86 = *(v83 + 8 * v94);
    ++v88;
    if (v86)
    {
      v92 = v90;
      v93 = v27;
      v88 = v94;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2236EA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E50);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_1D225055C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v65 = 40;
  v66 = 0xE100000000000000;
  v16 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag;
  swift_beginAccess();
  sub_1D2174DA8(v1 + v16, v9, &qword_1EC6D2110);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D2176170(v9, &qword_1EC6D2110);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1D225101C();
    MEMORY[0x1D3898450](0x6761742074736562, 0xE900000000000020);
    sub_1D22385D0(&qword_1EC6D2AC8, MEMORY[0x1E69695A8]);
    v17 = sub_1D225125C();
    MEMORY[0x1D3898450](v17);

    MEMORY[0x1D3898450](10272, 0xE200000000000000);
    sub_1D2250BBC();
    MEMORY[0x1D3898450](2108704, 0xE300000000000000);
    if (*(v1 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed))
    {
      v18 = 0x656D7269666E6F63;
    }

    else
    {
      v18 = 0x6465727265666E69;
    }

    if (*(v1 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTagIsConfirmed))
    {
      v19 = 0xE900000000000064;
    }

    else
    {
      v19 = 0xE800000000000000;
    }

    MEMORY[0x1D3898450](v18, v19);

    MEMORY[0x1D3898450](8236, 0xE200000000000000);
    MEMORY[0x1D3898450](v63, v64);

    (*(v11 + 8))(v15, v10);
  }

  v20 = OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_rejectionTagScores;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = *(v21 + 64);
  v51 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v53 = v11 + 16;
  v54 = v11;
  v27 = (v11 + 32);
  v58 = (v11 + 8);
  v56 = v21;

  v29 = 0;
  v55 = v6;
  v57 = v10;
  v52 = (v11 + 32);
  if (v25)
  {
    while (1)
    {
      v30 = v29;
LABEL_21:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v56;
      v36 = v54;
      v37 = v60;
      (*(v54 + 16))(v60, *(v56 + 48) + *(v54 + 72) * v34, v10);
      v38 = *(*(v35 + 56) + 4 * v34);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
      v40 = *(v39 + 48);
      v41 = *(v36 + 32);
      v42 = v59;
      v43 = v37;
      v27 = v52;
      v41(v59, v43, v10);
      *&v42[v40] = v38;
      (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
      v32 = v30;
      v44 = v42;
      v6 = v55;
LABEL_22:
      sub_1D21A6938(v44, v6, &qword_1EC6D2E50);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
      if ((*(*(v45 - 8) + 48))(v6, 1, v45) == 1)
      {
        break;
      }

      v46 = v60;
      v10 = v57;
      (*v27)(v60, v6, v57);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1D225101C();
      MEMORY[0x1D3898450](0x6F697463656A6572, 0xEA0000000000206ELL);
      sub_1D22385D0(&qword_1EC6D2AC8, MEMORY[0x1E69695A8]);
      v47 = sub_1D225125C();
      MEMORY[0x1D3898450](v47);

      MEMORY[0x1D3898450](10272, 0xE200000000000000);
      sub_1D2250BBC();
      MEMORY[0x1D3898450](2108457, 0xE300000000000000);
      MEMORY[0x1D3898450](v61, v62);

      result = (*v58)(v46, v10);
      v29 = v32;
      if (!v25)
      {
        goto LABEL_14;
      }
    }

    MEMORY[0x1D3898450](41, 0xE100000000000000);
    return v65;
  }

  else
  {
LABEL_14:
    if (v26 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v26;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E58);
        v49 = v59;
        (*(*(v48 - 8) + 56))(v59, 1, 1, v48);
        v44 = v49;
        v25 = 0;
        goto LABEL_22;
      }

      v25 = *(v51 + 8 * v30);
      ++v29;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D223762C()
{
  sub_1D2176170(v0 + OBJC_IVAR____TtCFC19VisualUnderstanding16VUIndexClusterer15propagateLabelsFT4typeVs5UInt89thresholdGSqSf_8partnersGVs10DictionarySiSi_12similaritiesGS2_SiSf_10ignoreTagsSb19ignorePreviousLabelSb22batchCompletionHandlerGSqFT_Sb__GS2_SiSi_L_8NodeTags_bestTag, &qword_1EC6D2110);

  return swift_deallocClassInstance();
}

void sub_1D22376E8()
{
  sub_1D21A54E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D22377C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2237834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUStreamingGallery.Label(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D2237898(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_1D2176758(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D21B73DC();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1D21B2040(v13, a2 & 1);
  v17 = sub_1D2176758(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1D22512AC();
    __break(1u);
LABEL_29:
    sub_1D225101C();
    MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
    sub_1D22510EC();
    MEMORY[0x1D3898450](39, 0xE100000000000000);
    sub_1D22510FC();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_1D2176758(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];

      if (v37 < v34)
      {
        sub_1D21B2040(v34, 1);
        v38 = sub_1D2176758(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1D2237C04(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = *(*(a1 + 56) + 4 * v13);
    v36 = *(*(a1 + 48) + 8 * v13);
    v37 = v14;
    a2(&v34, &v36);
    v15 = v34;
    v16 = v35;
    v17 = *a5;
    v19 = sub_1D2176758(v34);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_20;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if ((a4 & 1) == 0)
      {
        sub_1D21B6D70();
      }
    }

    else
    {
      sub_1D21B1670(v22, a4 & 1);
      v24 = sub_1D2176758(v15);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_22;
      }

      v19 = v24;
    }

    v9 &= v9 - 1;
    a4 = 1;
    if ((v23 & 1) == 0)
    {
      v26 = *a5;
      *(*a5 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      *(v26[6] + 8 * v19) = v15;
      *(v26[7] + 4 * v19) = v16;
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_21;
      }

      v26[2] = v29;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2237E14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(*(a1 + 56) + 4 * v14);
    v36 = *(*(a1 + 48) + 8 * v14);
    v37 = v15;
    a2(&v34, &v36);
    v16 = v34;
    v17 = v35;
    v18 = *a5;
    v19 = sub_1D2176758(v34);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_1D21B6D70();
        v19 = v31;
      }
    }

    else
    {
      sub_1D21B1670(v24, a4 & 1);
      v19 = sub_1D2176758(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 4 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v16;
      *(v27[7] + 4 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D2238038(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v37 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v34 = a4;
LABEL_10:
    v13 = (v11 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v36[0] = v14;
    v36[1] = v15;
    a2(v35, v36);
    v17 = v35[0];
    v16 = v35[1];
    v18 = *v37;
    v20 = sub_1D2176758(v35[0]);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_21;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if ((v34 & 1) == 0)
      {
        sub_1D21B6C24();
      }
    }

    else
    {
      sub_1D21B140C(v23, v34 & 1);
      v25 = sub_1D2176758(v17);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v20 = v25;
    }

    v9 &= v9 - 1;
    a4 = 1;
    if ((v24 & 1) == 0)
    {
      v27 = *v37;
      v27[(v20 >> 6) + 8] |= 1 << v20;
      *(v27[6] + 8 * v20) = v17;
      *(v27[7] + 8 * v20) = v16;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_22;
      }

      v27[2] = v30;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v34 = a4;
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D223825C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v36 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_11:
    v13 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v14 = *(*(a1 + 48) + v13);
    v15 = *(*(a1 + 56) + v13);
    v35[0] = v14;
    v35[1] = v15;
    a2(v34, v35);
    v17 = v34[0];
    v16 = v34[1];
    v18 = *v36;
    v19 = sub_1D2176758(v34[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_1D21B6C24();
        v19 = v31;
      }
    }

    else
    {
      sub_1D21B140C(v24, a4 & 1);
      v19 = sub_1D2176758(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v9 &= v9 - 1;
    v27 = *v36;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v16;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + 8 * v19) = v17;
      *(v27[7] + 8 * v19) = v16;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v11 = v12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

float sub_1D2238480@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

__n128 sub_1D2238494@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D22384A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1D22385D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2238618()
{
  result = qword_1EDC869D8;
  if (!qword_1EDC869D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC869D8);
  }

  return result;
}

uint64_t sub_1D223878C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD00000000000001DLL, 0x80000001D22568A0, 0xD000000000000014, 0x80000001D2255A30);
}

uint64_t VUFaceRepresentation.version.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

id sub_1D2238850()
{
  result = sub_1D2238870();
  qword_1EC6D2E90 = result;
  return result;
}

id sub_1D2238870()
{
  v73 = sub_1D225066C();
  v0 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v2 = &v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D22503FC();
  v3 = *(v72 - 8);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v68 = &v66 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2778);
  v74 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  type metadata accessor for VUGenerationConditioner();
  sub_1D22505FC();
  swift_allocObject();
  v18 = sub_1D22505EC();
  sub_1D21A7C68(v18, v17);

  v75 = v15;
  v19 = sub_1D22505CC();
  MEMORY[0x1D3898090](v19);
  (*(v0 + 8))(v2, v73);
  sub_1D225034C();
  v20 = v3;
  v21 = *(v3 + 8);
  v22 = v12;
  v23 = v72;
  v73 = v3 + 8;
  v21(v22, v72);
  v24 = [objc_opt_self() defaultManager];
  sub_1D22503AC();
  v25 = sub_1D225092C();

  v26 = [v24 fileExistsAtPath_];

  v27 = v23;
  if (v26)
  {
    v71 = v17;
    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D225082C();
    __swift_project_value_buffer(v28, qword_1EC6D2E60);
    v29 = v69;
    v66 = *(v20 + 16);
    v66(v69, v14, v23);
    v30 = sub_1D225080C();
    v31 = sub_1D2250CBC();
    v32 = os_log_type_enabled(v30, v31);
    v67 = v14;
    v68 = (v20 + 16);
    if (v32)
    {
      v33 = swift_slowAlloc();
      v34 = v27;
      v35 = swift_slowAlloc();
      v76 = v35;
      *v33 = 136315138;
      sub_1D223D9EC(&qword_1EDC87248, MEMORY[0x1E6968FB0]);
      v36 = sub_1D225125C();
      v37 = v29;
      v39 = v38;
      v21(v37, v34);
      v40 = sub_1D21761D0(v36, v39, &v76);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1D2171000, v30, v31, "Loading face encoder from %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      v41 = v35;
      v27 = v34;
      MEMORY[0x1D3899640](v41, -1, -1);
      MEMORY[0x1D3899640](v33, -1, -1);
    }

    else
    {

      v21(v29, v23);
    }

    v55 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    [v55 setComputeUnits_];
    v56 = [objc_opt_self() aneSubType];
    v57 = sub_1D225095C();
    v59 = v58;

    if (v57 == 3354984 && v59 == 0xE300000000000000)
    {

      v60 = v75;
    }

    else
    {
      v61 = sub_1D225126C();

      v60 = v75;
      if ((v61 & 1) == 0)
      {
LABEL_16:
        sub_1D2174E10(0, &qword_1EC6D27B0);
        v62 = v70;
        v63 = v67;
        v66(v70, v67, v27);
        v64 = sub_1D21AD22C(v62, v55);

        v21(v63, v27);
        (*(v74 + 8))(v71, v60);
        return v64;
      }
    }

    [v55 setComputeUnits_];
    goto LABEL_16;
  }

  if (qword_1EC6D20D8 != -1)
  {
    swift_once();
  }

  v42 = sub_1D225082C();
  __swift_project_value_buffer(v42, qword_1EC6D2E60);
  v43 = v68;
  (*(v20 + 16))(v68, v14, v23);
  v44 = sub_1D225080C();
  v45 = sub_1D2250CBC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v71 = v17;
    v47 = v46;
    v48 = v14;
    v49 = swift_slowAlloc();
    v76 = v49;
    *v47 = 136315138;
    sub_1D223D9EC(&qword_1EDC87248, MEMORY[0x1E6968FB0]);
    v50 = sub_1D225125C();
    v51 = v43;
    v53 = v52;
    v21(v51, v27);
    v54 = sub_1D21761D0(v50, v53, &v76);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_1D2171000, v44, v45, "Cannot find face encoder at %s, using system face embeddings", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x1D3899640](v49, -1, -1);
    MEMORY[0x1D3899640](v47, -1, -1);

    v21(v48, v27);
    (*(v74 + 8))(v71, v75);
  }

  else
  {

    v21(v43, v27);
    v21(v14, v27);
    (*(v74 + 8))(v17, v75);
  }

  return 0;
}

uint64_t sub_1D22391E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69736E61707865;
  }

  else
  {
    v3 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEF726F746361466ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69736E61707865;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (*a2)
  {
    v6 = 0xEF726F746361466ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D225126C();
  }

  return v8 & 1;
}

uint64_t sub_1D223929C()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D223932C()
{
  sub_1D22509EC();
}

uint64_t sub_1D22393A8()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

void sub_1D2239440(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F6973726576;
  if (*v1)
  {
    v2 = 0x6F69736E61707865;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF726F746361466ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D223948C()
{
  if (*v0)
  {
    return 0x6F69736E61707865;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1D22394E0(uint64_t a1)
{
  v2 = sub_1D223DD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D223951C(uint64_t a1)
{
  v2 = sub_1D223DD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2239558(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2F68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D223DD38();
  sub_1D225139C();
  v8[15] = 0;
  sub_1D225120C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1D225121C();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1D22396F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D223DB20(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_1D2239744()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D225101C();
  MEMORY[0x1D3898450](0x3A6E6F6973726576, 0xE900000000000020);
  MEMORY[0x1D3898450](v1, v2);
  MEMORY[0x1D3898450](0xD000000000000013, 0x80000001D2259690);
  sub_1D2250B7C();
  return 0;
}

uint64_t sub_1D223980C()
{
  result = sub_1D2239834();
  qword_1EC6D7490 = result;
  *algn_1EC6D7498 = v1;
  qword_1EC6D74A0 = v2;
  return result;
}

uint64_t sub_1D2239834()
{
  v0 = sub_1D225099C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6D20E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC6D2E90)
  {
    v4 = qword_1EC6D2E90;
    v5 = [v4 modelDescription];
    v6 = [v5 metadata];

    type metadata accessor for MLModelMetadataKey(0);
    sub_1D223D9EC(&qword_1EC6D2670, type metadata accessor for MLModelMetadataKey);
    v7 = sub_1D225089C();

    if (*(v7 + 16))
    {
      v8 = sub_1D2196DD4(*MEMORY[0x1E695FDB0]);
      if (v9)
      {
        sub_1D21763A8(*(v7 + 56) + 32 * v8, v17);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2F48);
        if ((swift_dynamicCast() & 1) == 0)
        {
          while (1)
          {
LABEL_16:
            sub_1D22510FC();
            __break(1u);

            v17[0] = 0;
            v17[1] = 0xE000000000000000;
            sub_1D225101C();
            MEMORY[0x1D3898450](0xD000000000000024, 0x80000001D2259660);
            v16 = v0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
            sub_1D22510EC();
          }
        }

        if (*(v16 + 16))
        {
          sub_1D2196C7C(0x6E695F6C65646F6DLL, 0xEB00000000736F66);
          if (v10)
          {

            sub_1D225098C();
            v11 = sub_1D225096C();
            v13 = v12;
            (*(v1 + 8))(v3, v0);
            if (v13 >> 60 != 15)
            {
              sub_1D225026C();
              swift_allocObject();
              sub_1D225025C();
              sub_1D223DA34();
              sub_1D225024C();
              sub_1D21A1F98(v11, v13);

              return v17[0];
            }
          }
        }
      }
    }

    goto LABEL_16;
  }

  return 3419697;
}

uint64_t sub_1D2239C78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6973726576;
  }

  else
  {
    v3 = 0x6E69646465626D65;
  }

  if (v2)
  {
    v4 = 0xEA00000000007367;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6973726576;
  }

  else
  {
    v5 = 0x6E69646465626D65;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007367;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D225126C();
  }

  return v8 & 1;
}

uint64_t sub_1D2239D24()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D2239DAC()
{
  sub_1D22509EC();
}

uint64_t sub_1D2239E20()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D2239EB0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D225116C();

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

void sub_1D2239F0C(uint64_t *a1@<X8>)
{
  v2 = 0x6E69646465626D65;
  if (*v1)
  {
    v2 = 0x6E6F6973726576;
  }

  v3 = 0xEA00000000007367;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D2239F50()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

uint64_t sub_1D2239F9C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D225116C();

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

uint64_t sub_1D2239FFC(uint64_t a1)
{
  v2 = sub_1D223D418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D223A038(uint64_t a1)
{
  v2 = sub_1D223D418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VUFaceRepresentation.FaceRepresentationError.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t sub_1D223A100(void *a1)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2E98);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v55 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D223D418();
  v56 = v5;
  sub_1D225139C();
  v6 = sub_1D21A2D1C(MEMORY[0x1E69E7CC0]);
  v55[0] = v1;
  v7 = *(v1 + 16);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v1 + 16) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v61 = *(v1 + 16);

  v15 = 0;
  v59 = v14;
  v60 = v9;
  while (v13)
  {
    v20 = v15;
LABEL_11:
    v21 = __clz(__rbit64(v13)) | (v20 << 6);
    v22 = *(v61 + 56);
    v23 = (*(v61 + 48) + 16 * v21);
    v24 = v23[1];
    v64 = *v23;
    v25 = *(v22 + 8 * v21);
    v26 = objc_opt_self();
    v66[0] = 0;

    v27 = v25;
    v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:{v66, v55[0]}];
    v29 = v66[0];
    if (!v28)
    {
      v54 = v29;

      sub_1D22502FC();

      swift_willThrow();

      return (*(v57 + 8))(v56, v58);
    }

    v63 = v27;
    v30 = sub_1D225046C();
    v32 = v31;

    v62 = v32;
    sub_1D21A3B78(v30, v32);
    v33 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66[0] = v33;
    v35 = v64;
    v37 = sub_1D2196C7C(v64, v24);
    v38 = v33[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_26;
    }

    v41 = v36;
    if (v33[3] >= v40)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D21B97A0();
      }
    }

    else
    {
      sub_1D21B5CA4(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1D2196C7C(v35, v24);
      if ((v41 & 1) != (v43 & 1))
      {
        result = sub_1D22512AC();
        __break(1u);
        return result;
      }

      v37 = v42;
    }

    v13 &= v13 - 1;
    if (v41)
    {

      v6 = v66[0];
      v16 = (*(v66[0] + 7) + 16 * v37);
      v17 = *v16;
      v18 = v16[1];
      v19 = v62;
      *v16 = v30;
      v16[1] = v19;
      sub_1D21A1ED8(v17, v18);
      sub_1D21A1ED8(v30, v19);
    }

    else
    {
      v6 = v66[0];
      *(v66[0] + (v37 >> 6) + 8) |= 1 << v37;
      v44 = (v6[6] + 16 * v37);
      *v44 = v35;
      v44[1] = v24;
      v45 = (v6[7] + 16 * v37);
      v46 = v62;
      *v45 = v30;
      v45[1] = v46;
      sub_1D21A1ED8(v30, v46);

      v47 = v6[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_27;
      }

      v6[2] = v49;
    }

    v15 = v20;
    v14 = v59;
    v9 = v60;
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    if (v20 >= v14)
    {
      break;
    }

    v13 = *(v9 + 8 * v20);
    ++v15;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v66[0] = v6;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2EA8);
  sub_1D223D4E4(&qword_1EC6D2EB0, sub_1D223D46C);
  v50 = v58;
  v52 = v55[1];
  v51 = v56;
  sub_1D225122C();

  if (!v52)
  {
    LOBYTE(v66[0]) = 1;
    sub_1D225120C();
  }

  return (*(v57 + 8))(v51, v50);
}

uint64_t VUFaceRepresentation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  VUFaceRepresentation.init(from:)(a1);
  return v2;
}

{
  v2 = swift_allocObject();
  VUFaceRepresentation.init(from:)(a1);
  return v2;
}

uint64_t VUFaceRepresentation.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2EC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D223D418();
  sub_1D225138C();
  if (v2)
  {
LABEL_3:
    type metadata accessor for VUFaceRepresentation();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v3;
  }

  else
  {
    LOBYTE(v64) = 1;
    *(v1 + 24) = sub_1D22511BC();
    *(v1 + 32) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2EA8);
    v66 = 0;
    sub_1D223D4E4(&qword_1EC6D2EC8, sub_1D223D568);
    sub_1D22511CC();
    v50 = v6;
    v51 = v5;
    v52 = v1;
    v11 = 0;
    v13 = v64 + 64;
    v12 = *(v64 + 64);
    v57 = v64;
    v14 = 1 << *(v64 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    v18 = MEMORY[0x1E69E7CC8];
    v55 = a1;
    v56 = v8;
    v53 = v17;
    v54 = v64 + 64;
    while (v16)
    {
      v61 = v18;
      v22 = v11;
LABEL_16:
      v23 = (v22 << 10) | (16 * __clz(__rbit64(v16)));
      v24 = *(v57 + 56);
      v25 = (*(v57 + 48) + v23);
      v26 = v25[1];
      v62 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = v27[1];
      v60 = sub_1D2174E10(0, &qword_1EC6D2ED8);
      sub_1D2174E10(0, &qword_1EC6D2848);
      v63 = v26;

      sub_1D21A3B78(v28, v29);
      v58 = v28;
      v59 = v29;
      v30 = sub_1D2250CFC();
      a1 = v55;
      v8 = v56;
      v31 = v61;
      if (!v30)
      {

        v66 = 0;
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1D225101C();

        v64 = 0xD000000000000023;
        v65 = 0x80000001D2259510;
        MEMORY[0x1D3898450](v62, v63);

        sub_1D225107C();
        swift_allocError();
        sub_1D223D5BC();
        v49 = v51;
        sub_1D225106C();

        swift_willThrow();
        sub_1D21A1ED8(v58, v59);

        (*(v50 + 8))(v8, v49);
        v3 = v52;

        goto LABEL_3;
      }

      v60 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v31;
      v33 = v31;
      v35 = sub_1D2196C7C(v62, v63);
      v36 = *(v31 + 16);
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_29;
      }

      v39 = v34;
      if (*(v33 + 24) >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D21B754C();
        }
      }

      else
      {
        sub_1D21B22C4(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1D2196C7C(v62, v63);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_31;
        }

        v35 = v40;
      }

      v16 &= v16 - 1;
      if (v39)
      {

        v18 = v64;
        v19 = *(v64 + 56);
        v20 = *(v19 + 8 * v35);
        v21 = v60;
        *(v19 + 8 * v35) = v60;

        sub_1D21A1ED8(v58, v59);
      }

      else
      {
        v18 = v64;
        *(v64 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v42 = (v18[6] + 16 * v35);
        v43 = v63;
        *v42 = v62;
        v42[1] = v43;
        v44 = v59;
        v45 = v60;
        *(v18[7] + 8 * v35) = v60;
        sub_1D21A1ED8(v58, v44);

        v46 = v18[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_30;
        }

        v18[2] = v48;
      }

      v11 = v22;
      v17 = v53;
      v13 = v54;
    }

    while (1)
    {
      v22 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        (*(v50 + 8))(v8, v51);

        v3 = v52;
        *(v52 + 16) = v18;
        goto LABEL_4;
      }

      v16 = *(v13 + 8 * v22);
      ++v11;
      if (v16)
      {
        v61 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D22512AC();
    __break(1u);
  }

  return result;
}

void *VUFaceRepresentation.init(from:)(void *a1)
{
  v3 = v1;
  v4 = a1;
  if ([v4 requestRevision] != 3737841669)
  {

    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D225082C();
    __swift_project_value_buffer(v12, qword_1EC6D2E60);
    v13 = v4;
    v14 = sub_1D225080C();
    v15 = sub_1D2250CDC();
    if (!os_log_type_enabled(v14, v15))
    {

LABEL_16:
      sub_1D223D658();
      swift_allocError();
      *v21 = 0;
      swift_willThrow();
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = [v13 requestRevision];

    _os_log_impl(&dword_1D2171000, v14, v15, "Unsupported faceprint revision %ld", v16, 0xCu);
    v17 = v16;
    goto LABEL_14;
  }

  v5 = [v4 descriptorData];

  if (!v5)
  {
    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D225082C();
    __swift_project_value_buffer(v18, qword_1EC6D2E60);
    v14 = sub_1D225080C();
    v19 = sub_1D2250CDC();
    if (!os_log_type_enabled(v14, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D2171000, v14, v19, "Cannot get descriptor data", v20, 2u);
    v17 = v20;
LABEL_14:
    MEMORY[0x1D3899640](v17, -1, -1);
LABEL_15:

    goto LABEL_16;
  }

  v6 = sub_1D225046C();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D2252750;
  sub_1D2174E10(0, &qword_1EDC876F8);
  *(v9 + 32) = sub_1D2250E1C();
  *(v9 + 40) = sub_1D2250E1C();
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v11 = sub_1D21DBA80(v9, 65568);
  if (!v2)
  {
    v23 = v11;
    sub_1D223B788(v6, v8, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D22526E0;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x80000001D2259540;
    *(inited + 48) = v23;
    v25 = v23;
    v26 = sub_1D21A26D0(inited);
    swift_setDeallocating();
    sub_1D223D6AC(inited + 32);
    v3[2] = v26;

    sub_1D21A1ED8(v6, v8);
    v3[3] = 3419697;
    v3[4] = 0xE300000000000000;
    return v3;
  }

  sub_1D21A1ED8(v6, v8);
LABEL_17:

  type metadata accessor for VUFaceRepresentation();
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1D223B090(char *a1, uint64_t a2, void *a3)
{
  if (a1 && (v4 = a2 - a1, (a2 - a1 + 3) >= 7))
  {
    if (v4 < 0)
    {
      v4 = a2 - a1 + 3;
    }

    v6 = v4 >> 2;
    v5 = sub_1D21F7E9C(v4 >> 2, 0);
    result = sub_1D21DA94C(v5 + 4, v6, a1, v6);
    if (v9 != v6)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v10 = v5[2];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = *(v5 + i + 8);
      v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v14) = v12;
      v15 = [v13 initWithFloat_];
      [a3 setObject:v15 atIndexedSubscript:i];
    }
  }
}

uint64_t sub_1D223B1BC()
{
  v0 = sub_1D22507BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D225077C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6D20E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D22507AC();
  __swift_project_value_buffer(v8, qword_1EC6D2E78);
  v9 = sub_1D225078C();
  sub_1D22507CC();
  v10 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v9, v10, v13, "faceRepresentation", v11, v12, 2u);
    MEMORY[0x1D3899640](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void static VUFaceRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[3] == a2[3] && a1[4] == a2[4];
  if (v4 || (sub_1D225126C() & 1) != 0)
  {
    v5 = a1[2];
    v6 = a2[2];

    sub_1D223B4B8(v5, v6);
  }
}

void sub_1D223B4B8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1D2196C7C(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1D2174E10(0, &qword_1EC6D2848);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1D2250E3C();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t VUFaceRepresentation.deinit()
{

  return v0;
}

uint64_t VUFaceRepresentation.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D223B6A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for VUFaceRepresentation();
  v5 = swift_allocObject();
  result = VUFaceRepresentation.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void sub_1D223B71C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(v3 + 32);
  if (v4 || (sub_1D225126C() & 1) != 0)
  {
    v5 = *(v2 + 16);
    v6 = *(v3 + 16);

    sub_1D223B4B8(v5, v6);
  }
}

void sub_1D223B788(uint64_t a1, unint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      v5 = v10;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_7:
    v8 = a3;
    sub_1D223B8FC(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, v8);

    return;
  }

  if (v4)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v5 = v10 + BYTE6(a2);
LABEL_9:
  sub_1D223B090(v10, v5, a3);
}

void sub_1D223B8FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D225028C();
  if (v7)
  {
    v8 = sub_1D22502BC();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1D22502AC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1D223B090(v7, v14, a4);
}

id sub_1D223B9AC(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() modelForMLModel:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1D22502FC();

    swift_willThrow();
  }

  return v1;
}

id sub_1D223BA70(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = CGRectGetWidth(*&a2) * 0.764705882;
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = a4;
  v50.size.height = a5;
  v11 = CGRectGetHeight(v50) * 0.764705882 * -0.5;
  v51.origin.x = a2;
  v51.origin.y = a3;
  v51.size.width = a4;
  v51.size.height = a5;
  v52 = CGRectInset(v51, v10 * -0.5, v11);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  if (CGRectIsNull(v52) || (v53.origin.x = x, v53.origin.y = y, v53.size.width = width, v53.size.height = height, CGRectIsInfinite(v53)) || (v54.origin.x = 0.0, v54.origin.y = 0.0, v54.size.width = 1.0, v54.size.height = 1.0, v55.origin.x = x, v55.origin.y = y, v55.size.width = width, v55.size.height = height, !CGRectContainsRect(v54, v55)))
  {
    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D225082C();
    __swift_project_value_buffer(v16, qword_1EC6D2E60);
    v17 = sub_1D225080C();
    v18 = sub_1D2250CDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49[0] = v20;
      *v19 = 136315138;
      v48[0] = *&x;
      v48[1] = *&y;
      v48[2] = *&width;
      v48[3] = *&height;
      type metadata accessor for CGRect(0);
      v21 = sub_1D22509AC();
      v23 = sub_1D21761D0(v21, v22, v49);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D2171000, v17, v18, "Expanded face bounding box is larger than provided buffer: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1D3899640](v20, -1, -1);
      MEMORY[0x1D3899640](v19, -1, -1);
    }
  }

  sub_1D21A25A8(MEMORY[0x1E69E7CC0]);
  v24 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  type metadata accessor for VNImageOption(0);
  sub_1D223D9EC(&qword_1EC6D2680, type metadata accessor for VNImageOption);
  v25 = sub_1D225088C();

  v26 = [v24 initWithCVPixelBuffer:a1 options:v25];

  v48[0] = 0;
  v27 = [objc_allocWithZone(MEMORY[0x1E6984478]) init];
  if (![v27 setRevision:3737841669 error:v48])
  {
    v40 = v48[0];

    sub_1D22502FC();
LABEL_21:
    v39 = v27;
    v27 = v26;
LABEL_29:
    swift_willThrow();

    return v39;
  }

  v28 = v48[0];
  [v27 setDetectionLevel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D2252720;
  *(v29 + 32) = [objc_opt_self() observationWithRequestRevision:3737841670 boundingBox:{a2, a3, a4, a5}];
  sub_1D2174E10(0, &qword_1EC6D2F40);
  v30 = sub_1D2250AEC();

  [v27 setInputFaceObservations_];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D2252720;
  *(v31 + 32) = v27;
  sub_1D2174E10(0, &qword_1EC6D2F28);
  v32 = sub_1D2250AEC();

  v48[0] = 0;
  LODWORD(v30) = [v26 performRequests:v32 error:v48];

  if (!v30)
  {
    v41 = v48[0];
    sub_1D22502FC();

    goto LABEL_21;
  }

  v33 = v48[0];
  v34 = [v27 results];
  if (!v34)
  {
LABEL_24:
    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v42 = sub_1D225082C();
    __swift_project_value_buffer(v42, qword_1EC6D2E60);
    v43 = sub_1D225080C();
    v44 = sub_1D2250CDC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1D2171000, v43, v44, "Could not generate faceprint from input face buffer", v45, 2u);
      MEMORY[0x1D3899640](v45, -1, -1);
    }

    sub_1D223D658();
    swift_allocError();
    *v46 = 0;
    v39 = v26;
    goto LABEL_29;
  }

  v35 = v34;
  v36 = sub_1D2250AFC();

  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (!sub_1D2250F4C())
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_14:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1D3898A80](0, v36);
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v37 = *(v36 + 32);
  }

  v38 = v37;

  v39 = [v38 faceprint];

  if (!v39)
  {
    goto LABEL_24;
  }

  return v39;
}

uint64_t sub_1D223C130(__CVBuffer *a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v6 = v5;
  v147 = a1;
  v152[1] = *MEMORY[0x1E69E9840];
  v11 = sub_1D225077C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v133 - v16;
  if (qword_1EC6D20E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D22507AC();
  __swift_project_value_buffer(v18, qword_1EC6D2E78);
  sub_1D225076C();
  v19 = sub_1D225078C();
  v20 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v19, v20, v22, "faceRepresentation", "", v21, 2u);
    MEMORY[0x1D3899640](v21, -1, -1);
  }

  (*(v12 + 16))(v15, v17, v11);
  sub_1D22507EC();
  swift_allocObject();
  v146 = sub_1D22507DC();
  (*(v12 + 8))(v17, v11);
  v153.origin.x = a2;
  v153.origin.y = a3;
  v153.size.width = a4;
  v153.size.height = a5;
  if (CGRectIsNull(v153) || (v154.origin.x = a2, v154.origin.y = a3, v154.size.width = a4, v154.size.height = a5, CGRectIsInfinite(v154)) || (v155.origin.x = 0.0, v155.origin.y = 0.0, v155.size.width = 1.0, v155.size.height = 1.0, v167.origin.x = a2, v167.origin.y = a3, v167.size.width = a4, v167.size.height = a5, !CGRectContainsRect(v155, v167)))
  {
    if (qword_1EC6D20D8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D225082C();
    __swift_project_value_buffer(v23, qword_1EC6D2E60);
    v24 = sub_1D225080C();
    v25 = sub_1D2250CDC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v152[0] = v27;
      *v26 = 136315138;
      v148 = *&a2;
      v149 = a3;
      v150 = *&a4;
      v151 = a5;
      type metadata accessor for CGRect(0);
      v28 = sub_1D22509AC();
      v30 = sub_1D21761D0(v28, v29, v152);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1D2171000, v24, v25, "Provided face bounding box is unexpected: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1D3899640](v27, -1, -1);
      MEMORY[0x1D3899640](v26, -1, -1);
    }
  }

  if (qword_1EC6D20D8 != -1)
  {
    swift_once();
  }

  v31 = sub_1D225082C();
  __swift_project_value_buffer(v31, qword_1EC6D2E60);
  v32 = sub_1D225080C();
  v33 = sub_1D2250CBC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v152[0] = v35;
    *v34 = 136315138;
    if (qword_1EC6D20F0 != -1)
    {
      swift_once();
    }

    v148 = qword_1EC6D7490;
    v149 = *algn_1EC6D7498;
    v150 = qword_1EC6D74A0;
    sub_1D223D998();
    v36 = sub_1D225125C();
    v38 = sub_1D21761D0(v36, v37, v152);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1D2171000, v32, v33, "Creating face representation with %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1D3899640](v35, -1, -1);
    MEMORY[0x1D3899640](v34, -1, -1);
  }

  if (qword_1EC6D20E8 != -1)
  {
    swift_once();
  }

  if (!qword_1EC6D2E90)
  {
    v92 = sub_1D225080C();
    v93 = sub_1D2250CBC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1D2171000, v92, v93, "Generating face representation using legacy system faceprint", v94, 2u);
      MEMORY[0x1D3899640](v94, -1, -1);
    }

    v95 = sub_1D223BA70(v147, a2, a3, a4, a5);
    if (v5)
    {
      goto LABEL_54;
    }

    v96 = v95;
    type metadata accessor for VUFaceRepresentation();
    v97 = swift_allocObject();
    VUFaceRepresentation.init(from:)(v96);
LABEL_96:
    sub_1D223B1BC();

    return v97;
  }

  v39 = qword_1EC6D2E90;
  v40 = [v39 modelDescription];
  v41 = [v40 inputDescriptionsByName];

  sub_1D2174E10(0, &qword_1EC6D27E8);
  v42 = sub_1D225089C();

  if (!*(v42 + 16) || (v43 = sub_1D2196C7C(0x6F72635F65636166, 0xE900000000000070), (v44 & 1) == 0))
  {

    v45 = 0;
    goto LABEL_46;
  }

  v45 = *(*(v42 + 56) + 8 * v43);

  v46 = [v45 imageConstraint];
  if (!v46)
  {
LABEL_46:
    v88 = sub_1D225080C();
    v89 = sub_1D2250CDC();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1D2171000, v88, v89, "Cannot read face embedding model input constraint", v90, 2u);
      MEMORY[0x1D3899640](v90, -1, -1);
    }

    sub_1D223D658();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();

    goto LABEL_49;
  }

  v47 = v46;
  if (qword_1EC6D20F0 != -1)
  {
LABEL_86:
    swift_once();
  }

  v156.origin.x = a2;
  v156.origin.y = a3;
  v156.size.width = a4;
  v156.size.height = a5;
  v48 = *&qword_1EC6D74A0 + -1.0;
  v49 = CGRectGetWidth(v156) * v48;
  v157.origin.x = a2;
  v157.origin.y = a3;
  v157.size.width = a4;
  v157.size.height = a5;
  v50 = v48 * CGRectGetHeight(v157) * -0.5;
  v158.origin.x = a2;
  v158.origin.y = a3;
  v158.size.width = a4;
  v158.size.height = a5;
  v159 = CGRectInset(v158, v49 * -0.5, v50);
  x = v159.origin.x;
  y = v159.origin.y;
  width = v159.size.width;
  height = v159.size.height;
  if (CGRectIsNull(v159) || (v160.origin.x = x, v160.origin.y = y, v160.size.width = width, v160.size.height = height, CGRectIsInfinite(v160)) || (v161.origin.x = 0.0, v161.origin.y = 0.0, v161.size.width = 1.0, v161.size.height = 1.0, v168.origin.x = x, v168.origin.y = y, v168.size.width = width, v168.size.height = height, !CGRectContainsRect(v161, v168)))
  {
    v55 = sub_1D225080C();
    v32 = sub_1D2250CDC();
    if (os_log_type_enabled(v55, v32))
    {
      v56 = swift_slowAlloc();
      v141 = v45;
      v57 = v56;
      v145 = COERCE_DOUBLE(swift_slowAlloc());
      *v152 = v145;
      *v57 = 136315138;
      v148 = *&x;
      v149 = y;
      v150 = *&width;
      v151 = height;
      type metadata accessor for CGRect(0);
      v58 = sub_1D22509AC();
      v60 = v39;
      v61 = v6;
      v62 = v47;
      v63 = sub_1D21761D0(v58, v59, v152);

      *(v57 + 4) = v63;
      v47 = v62;
      v6 = v61;
      v39 = v60;
      _os_log_impl(&dword_1D2171000, v55, v32, "Expanded face bounding box is larger than provided buffer: %s, clamping", v57, 0xCu);
      v64 = *&v145;
      __swift_destroy_boxed_opaque_existential_0Tm(*&v145);
      MEMORY[0x1D3899640](v64, -1, -1);
      v65 = v57;
      v45 = v141;
      MEMORY[0x1D3899640](v65, -1, -1);
    }

    v169.origin.x = 0.0;
    v169.origin.y = 0.0;
    v169.size.width = 1.0;
    v169.size.height = 1.0;
    v162.origin.x = x;
    v162.origin.y = y;
    v162.size.width = width;
    v162.size.height = height;
    v163 = CGRectIntersection(v162, v169);
    x = v163.origin.x;
    y = v163.origin.y;
    width = v163.size.width;
    height = v163.size.height;
  }

  v66 = v147;
  v67 = CVPixelBufferGetWidth(v147);
  v68 = CVPixelBufferGetHeight(v66);
  v145 = x;
  v164.origin.x = x;
  a4 = y;
  v164.origin.y = y;
  a3 = width;
  v164.size.width = width;
  a2 = height;
  v164.size.height = height;
  v165 = VNImageRectForNormalizedRect(v164, v67, v68);
  v69 = v165.origin.x;
  v70 = v165.origin.y;
  v71 = v165.size.width;
  v72 = v165.size.height;
  a5 = CGRectGetWidth(v165);
  v166.origin.x = v69;
  v166.origin.y = v70;
  v166.size.width = v71;
  v166.size.height = v72;
  v73 = CGRectGetHeight(v166);
  if (v73 >= a5)
  {
    v73 = a5;
  }

  if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  a5 = v145;
  if (v73 >= 9.22337204e18)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v74 = v73;
  if ([v47 pixelsWide] > v73)
  {
    v75 = sub_1D225080C();
    v76 = sub_1D2250CDC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 134217984;
      *(v77 + 4) = v74;
      _os_log_impl(&dword_1D2171000, v75, v76, "Input face resolution is too small (%ld pixels)", v77, 0xCu);
      MEMORY[0x1D3899640](v77, -1, -1);
    }
  }

  v78 = sub_1D225080C();
  v79 = sub_1D2250CBC();
  v80 = os_log_type_enabled(v78, v79);
  v144 = v47;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v148 = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_1D21761D0(qword_1EC6D7490, *algn_1EC6D7498, &v148);
    _os_log_impl(&dword_1D2171000, v78, v79, "Generating face representation using face encode %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    MEMORY[0x1D3899640](v82, -1, -1);
    MEMORY[0x1D3899640](v81, -1, -1);
  }

  v83 = v147;
  sub_1D21A25A8(MEMORY[0x1E69E7CC0]);
  v84 = objc_allocWithZone(MEMORY[0x1E69845B8]);
  type metadata accessor for VNImageOption(0);
  sub_1D223D9EC(&qword_1EC6D2680, type metadata accessor for VNImageOption);
  v85 = sub_1D225088C();

  v47 = [v84 initWithCVPixelBuffer:v83 options:v85];

  sub_1D2174E10(0, &qword_1EC6D2F20);
  v86 = v39;
  v87 = sub_1D223B9AC(v86);
  if (v6)
  {

LABEL_54:
    v97 = v146;
    sub_1D223B1BC();

    return v97;
  }

  v99 = v87;

  v100 = [objc_allocWithZone(MEMORY[0x1E6984468]) initWithModel_];
  [v100 setImageCropAndScaleOption_];
  [v100 setRegionOfInterest_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v101 = swift_allocObject();
  v137 = v99;
  *(v101 + 16) = xmmword_1D2252720;
  *(v101 + 32) = v100;
  sub_1D2174E10(0, &qword_1EC6D2F28);
  v39 = v100;
  v102 = sub_1D2250AEC();

  v148 = 0;
  LOBYTE(v99) = [v47 performRequests:v102 error:&v148];

  if ((v99 & 1) == 0)
  {
    v126 = v148;

    sub_1D22502FC();
    swift_willThrow();

LABEL_49:
    goto LABEL_54;
  }

  v135 = v86;
  v103 = v148;
  v104 = [v39 results];

  v134 = v39;
  if (!v104 || (sub_1D2174E10(0, &qword_1EC6D2F30), v105 = sub_1D2250AFC(), v104, v32 = sub_1D218C720(v105), , !v32))
  {
    v127 = sub_1D225080C();
    v128 = sub_1D2250CDC();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_1D2171000, v127, v128, "Could not get face encoder results", v129, 2u);
      MEMORY[0x1D3899640](v129, -1, -1);
    }

    sub_1D223D658();
    swift_allocError();
    *v130 = 1;
    swift_willThrow();

    goto LABEL_54;
  }

  v67 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
LABEL_93:
    v106 = sub_1D2250F4C();
    v141 = v45;
    if (v106)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

  v106 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v141 = v45;
  if (!v106)
  {
LABEL_94:
    v107 = MEMORY[0x1E69E7CC8];
LABEL_95:

    v132 = qword_1EC6D7490;
    v131 = *algn_1EC6D7498;

    type metadata accessor for VUFaceRepresentation();
    v97 = swift_allocObject();
    v97[2] = v107;
    v97[3] = v132;
    v97[4] = v131;
    goto LABEL_96;
  }

LABEL_61:
  v136 = v67;
  v45 = 0;
  v142 = v32 & 0xC000000000000001;
  v107 = MEMORY[0x1E69E7CC8];
  v139 = v47;
  v138 = v32;
  v140 = v106;
  while (1)
  {
    if (v142)
    {
      v108 = MEMORY[0x1D3898A80](v45, v32);
    }

    else
    {
      if (v45 >= *(v136 + 16))
      {
        goto LABEL_91;
      }

      v108 = *(v32 + 8 * v45 + 32);
    }

    *&v145 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    v39 = v108;
    v109 = [v108 featureValue];
    v67 = [v109 multiArrayValue];

    if (!v67)
    {

      goto LABEL_63;
    }

    v143 = v39;
    v110 = [v39 featureName];
    v32 = sub_1D225095C();
    v39 = v111;

    v47 = v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = v107;
    v67 = sub_1D2196C7C(v32, v39);
    v114 = v107[2];
    v115 = (v113 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_90;
    }

    v117 = v113;
    if (v107[3] >= v116)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D21B754C();
      }

      goto LABEL_76;
    }

    sub_1D21B22C4(v116, isUniquelyReferenced_nonNull_native);
    v118 = sub_1D2196C7C(v32, v39);
    if ((v117 & 1) != (v119 & 1))
    {
      break;
    }

    v67 = v118;
LABEL_76:
    v106 = v140;
    if (v117)
    {

      v107 = v148;
      v120 = *(v148 + 56);
      v121 = *(v120 + 8 * v67);
      *(v120 + 8 * v67) = v47;
    }

    else
    {
      v107 = v148;
      *(v148 + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v122 = (v107[6] + 16 * v67);
      *v122 = v32;
      v122[1] = v39;
      *(v107[7] + 8 * v67) = v47;

      v123 = v107[2];
      v124 = __OFADD__(v123, 1);
      v125 = v123 + 1;
      if (v124)
      {
        goto LABEL_92;
      }

      v107[2] = v125;
    }

    v47 = v139;
    v32 = v138;
LABEL_63:
    ++v45;
    if (*&v145 == v106)
    {
      goto LABEL_95;
    }
  }

  result = sub_1D22512AC();
  __break(1u);
  return result;
}