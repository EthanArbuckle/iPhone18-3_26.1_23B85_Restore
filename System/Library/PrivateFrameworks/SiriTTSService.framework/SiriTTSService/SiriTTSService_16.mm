void sub_1B1BE2BC0(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for TTSAssetProperty(0);
      sub_1B1C2D818();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;
    v10 = sub_1B1AB2870(v8);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];
    swift_unknownObjectRetain();
    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764060, &qword_1B1C40E88);
      sub_1B1C2D638();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v21[6] + 8 * v15) = v8;
    *(v21[7] + 8 * v15) = v7;
    v22 = v21[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v21[2] = v24;
    ++v5;
    a2 = 1;
  }

  sub_1B1BE2720(v14, a2 & 1);
  v18 = *a3;
  v19 = sub_1B1AB2870(v8);
  if ((v16 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v15 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();

  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();

    return;
  }

LABEL_22:
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C52DB0);
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1C2D618();
  MEMORY[0x1B27381B0](39, 0xE100000000000000);
  sub_1B1C2D658();
  __break(1u);
}

uint64_t sub_1B1BE2EB8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1BE2E88((a2 + 8), *a1, (a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1B1BE2EEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1B1C2C1D8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1B27376C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1B2737700]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unsigned __int8 *sub_1B1BE2F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1B1B3B7CC();

  result = sub_1B1C2CDF8();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B1BE2064();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
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
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
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

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
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

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
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

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
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

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
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

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
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

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

id sub_1B1BE34F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1B1C2CB28();

  v7 = sub_1B1C2CB28();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

_OWORD *sub_1B1BE358C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = *(*(v3 + 48) + v10);
    sub_1B1A93378(*(v3 + 56) + 32 * v10, v16);
    LOBYTE(v18) = v11;
    result = sub_1B1A9EEE0(v16, (&v18 + 8));
    v13 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v13)
    {
      v15 = v1[5];
      v14 = v1[6];
      v16[0] = v18;
      v16[1] = v19;
      v17 = v13;
      v15(v16);
      return sub_1B1A90C78(v16, &qword_1EB7621F0, &qword_1B1C37478);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v13 = 0;
        v9 = 0;
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1BE36C4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1B1B276E0(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1B1C2CD48();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1B1B276E0(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1B1B276E0(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1B1C2CD48();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
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

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B1BE3B3C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = v24 - v5;
  if (qword_1ED9A52A8 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9AA508;
  if (*(qword_1ED9AA508 + 16) && (v8 = sub_1B1A8EB10(), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0x53552D6E65;
    v24[2] = a1;
    v24[3] = a2;
    v24[0] = 45;
    v24[1] = 0xE100000000000000;
    v13 = sub_1B1C2C4D8();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
    sub_1B1A8EDAC();
    sub_1B1C2D3C8();
    v15 = v14;
    sub_1B1BE3DE4(v6);
    if ((v15 & 1) == 0)
    {
      v16 = sub_1B1C2CE08();
      v17 = MEMORY[0x1B27380D0](v16);
      v19 = v18;

      v20 = sub_1B1A945F4(v17, v19, v7);
      v22 = v21;

      if (v22)
      {
        return v20;
      }
    }
  }

  return v11;
}

id Languages.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Languages.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Languages();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Languages.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Languages();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1BE3DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762320, &unk_1B1C39760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1BE3E70()
{
  v0 = sub_1B1C2C9D8();
  __swift_allocate_value_buffer(v0, qword_1ED9A4ED8);
  __swift_project_value_buffer(v0, qword_1ED9A4ED8);
  return sub_1B1C2C9B8();
}

uint64_t static OS_dispatch_queue.synthesisQoS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED9A4ED0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C9D8();
  v3 = __swift_project_value_buffer(v2, qword_1ED9A4ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_1B1BE3F64()
{
  result = sub_1B1BE3F84();
  qword_1ED9A4FD0 = result;
  return result;
}

id sub_1B1BE3F84()
{
  v34 = sub_1B1C2C0A8();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B1C2C1C8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if (qword_1ED9A9588 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED9AA640;
  sub_1B1B268F0();
  v18 = sub_1B1B26C98();
  if (!v18)
  {
    v18 = v17;
  }

  v19 = v18;
  result = [v17 resourceURL];
  if (result)
  {
    v21 = result;
    sub_1B1C2C168();

    sub_1B1C2C088();
    v31 = v4[1];
    v32 = v14;
    v31(v11, v3);
    v22 = [v19 bundleURL];
    v23 = v8;
    sub_1B1C2C168();

    v24 = v33;
    v25 = v34;
    (*(v0 + 104))(v33, *MEMORY[0x1E6968F58], v34);
    sub_1B1A8EDAC();
    sub_1B1C2C1A8();

    (*(v0 + 8))(v24, v25);
    v31(v23, v3);
    v26 = type metadata accessor for PreinstalledAudioStorage();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    v30 = v4[4];
    v30(v29 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL, v16, v3);
    v30(v29 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v32, v3);
    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B1BE4300()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v27 = v3;
  v4 = sub_1B1C2C0A8();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = sub_1B1C2C1C8();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  v22 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_65();
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    (*(v16 + 16))(v21, v0 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL, v13);
    v25 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2();
    v28 = *v25;
    v29 = v25[1];

    OUTLINED_FUNCTION_8_8();
    MEMORY[0x1B27381B0](v24, v23);

    (*(v7 + 104))(v12, *MEMORY[0x1E6968F58], v4);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    (*(v7 + 8))(v12, v4);

    (*(v16 + 8))(v21, v13);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v26, 1, v13);
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BE4550()
{
  OUTLINED_FUNCTION_25();
  v81 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v77 = v9;
  v79 = v10;
  v12 = v11;
  v14 = v13;
  v15 = sub_1B1C2C0A8();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v83 = v22 - v21;
  v85 = sub_1B1C2C1C8();
  v23 = OUTLINED_FUNCTION_7(v85);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_7_1();
  v76 = v29;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_1();
  v80 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_1();
  v84 = v33;
  OUTLINED_FUNCTION_16_0();
  v35 = MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_11_24(v35, v36, v37, v38, v39, v40, v41, v42, v69);
  v73 = v43;
  if (v2 > 2)
  {
    v86 = v2;
    sub_1B1C2D7E8();
    __break(1u);
    return;
  }

  v44 = v77;
  v74 = v25;
  if (v4)
  {
    v45 = v6 == v77 && v12 == v4;
    if (!v45 && (sub_1B1C2D7A8() & 1) == 0)
    {
      v86 = v77;
      v87 = v12;

      OUTLINED_FUNCTION_8_8();
      MEMORY[0x1B27381B0](v79, v8);
      OUTLINED_FUNCTION_8_8();
      MEMORY[0x1B27381B0](v6, v4);
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_4_29();
      (*(v25 + 16))(v80, v81 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v85);
      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_16_21();
      v71 = *(v18 + 104);
      v71(v83, *MEMORY[0x1E6968F58], v15);
      sub_1B1A8EDAC();
      sub_1B1C2C1B8();
      v70 = *(v18 + 8);
      v70(v83, v15);

      v46 = *(v25 + 8);
      v46(v80, v85);
      v86 = v77;
      v87 = v12;
      v71(v83, *MEMORY[0x1E6968F68], v15);
      sub_1B1C2C1B8();
      v70(v83, v15);
      v47 = v46;
      v46(v84, v85);

      v48 = [objc_opt_self() defaultManager];
      sub_1B1C2C098();
      v49 = sub_1B1C2CB28();

      v50 = [v48 fileExistsAtPath_];

      if (v50)
      {

        v51 = OUTLINED_FUNCTION_13_25();
        v53 = v75;
        goto LABEL_14;
      }

      v47(v75, v85);
      v25 = v74;
      v44 = v77;
    }
  }

  v86 = v44;
  v87 = v12;

  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1B27381B0](v79, v8);
  OUTLINED_FUNCTION_16_21();
  OUTLINED_FUNCTION_4_29();
  v78 = v12;
  v72 = *(v25 + 16);
  v72(v80, v81 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v85);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_16_21();

  v82 = *(v18 + 104);
  v82(v83, *MEMORY[0x1E6968F58], v15);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v54 = *(v18 + 8);
  v54(v83, v15);

  v55 = *(v25 + 8);
  v55(v80, v85);
  v86 = v44;
  v87 = v78;
  v82(v83, *MEMORY[0x1E6968F68], v15);
  sub_1B1C2C1B8();
  v54(v83, v15);
  v56 = v55;
  v55(v84, v85);

  v48 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v57 = sub_1B1C2CB28();

  v58 = [v48 fileExistsAtPath_];

  if ((v58 & 1) == 0)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v60 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v60, qword_1ED9A9120);
    v72(v73, v76, v85);
    v61 = sub_1B1C2C888();
    v62 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v86 = v64;
      *v63 = 136315138;
      v65 = sub_1B1C2C098();
      v67 = v66;
      v56(v73, v85);
      v68 = sub_1B1A930E4(v65, v67, &v86);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1B1A8A000, v61, v62, "Unable to locate preview sample file at '%s'", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v56(v73, v85);
    }

    v56(v76, v85);
    v59 = 1;
    v48 = v14;
    goto LABEL_21;
  }

  v51 = OUTLINED_FUNCTION_13_25();
  v53 = v76;
LABEL_14:
  v52(v51, v53, v85);
  v59 = 0;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v48, v59, 1, v85);
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BE4D58()
{
  OUTLINED_FUNCTION_25();
  v90 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v94 = v7;
  v92 = sub_1B1C2C0A8();
  v8 = OUTLINED_FUNCTION_7(v92);
  v95 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v89 = v13 - v12;
  v96 = sub_1B1C2C1C8();
  v14 = OUTLINED_FUNCTION_7(v96);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_1();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_1();
  v24 = v23;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_1();
  v97 = v26;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v80 - v28;
  v29 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2();
  v30 = v29[1];
  v91 = v6;
  if (v30)
  {
    v31 = *v29;
    v32 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2();
    v33 = *v32;
    v34 = v32[1];
    *&v101[0] = v33;
    *(&v101[0] + 1) = v34;

    OUTLINED_FUNCTION_8_8();
    MEMORY[0x1B27381B0](v31, v30);

    v36 = *(&v101[0] + 1);
    v35 = *&v101[0];
    if (v2)
    {
LABEL_3:
      *&v101[0] = v4;
      *&v101[0] = sub_1B1C2D778();
      *(&v101[0] + 1) = v37;
      MEMORY[0x1B27381B0](0x544341504D4F435FLL, 0xE800000000000000);
      v38 = *(&v101[0] + 1);
      v39 = *&v101[0];
      goto LABEL_6;
    }
  }

  else
  {
    v40 = (v6 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
    OUTLINED_FUNCTION_26_2();
    v35 = *v40;
    v36 = v40[1];

    if (v2)
    {
      goto LABEL_3;
    }
  }

  *&v101[0] = v4;
  v39 = sub_1B1C2D778();
  v38 = v41;
LABEL_6:
  *&v101[0] = v35;
  *(&v101[0] + 1) = v36;
  OUTLINED_FUNCTION_8_8();
  MEMORY[0x1B27381B0](v39, v38);

  if (v4 == 1)
  {
    v42 = sub_1B1BE554C(*&v101[0]);
    v44 = v43;

    *&v101[0] = v42;
    *(&v101[0] + 1) = v44;
  }

  OUTLINED_FUNCTION_4_29();
  v87 = *(&v101[0] + 1);
  v88 = *&v101[0];
  v45 = v16;
  v46 = *(v16 + 16);
  v47 = v96;
  v83 = v16 + 16;
  v82 = v46;
  v46(v21, (v90 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL), v96);
  strcpy(v101, "AudioHintFiles");
  HIBYTE(v101[0]) = -18;
  LODWORD(v90) = *MEMORY[0x1E6968F58];
  v48 = v95;
  v50 = v95 + 104;
  v49 = *(v95 + 13);
  v51 = v89;
  v52 = v92;
  v49(v89);
  v85 = v50;
  v84 = v49;
  v86 = sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  v95 = *(v48 + 1);
  v95(v51, v52);
  v81 = v45;
  v53 = *(v45 + 8);
  v53(v21, v47);
  v54 = (v91 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_65();
  v55 = *v54;
  v56 = v54[1];
  v98 = v55;
  v99 = v56;
  (v49)(v51, v90, v52);

  sub_1B1C2C1B8();
  v95(v51, v52);

  v91 = v24;
  v57 = v96;
  v53(v24, v96);
  v98 = v88;
  v99 = v87;
  (v84)(v51, *MEMORY[0x1E6968F68], v52);
  v58 = v93;
  v59 = v97;
  sub_1B1C2C1B8();
  v95(v51, v52);

  v95 = v53;
  v53(v59, v57);
  v60 = objc_opt_self();
  v61 = [v60 defaultManager];
  sub_1B1C2C098();
  v62 = sub_1B1C2CB28();

  LOBYTE(v49) = [v61 fileExistsAtPath_];

  v63 = v58;
  if (v49)
  {
    goto LABEL_10;
  }

  v64 = v91;
  sub_1B1C2C128();
  sub_1B1C2C138();
  v95(v64, v57);
  (*(v81 + 40))(v63, v59, v57);
  v65 = [v60 defaultManager];
  sub_1B1C2C098();
  v66 = sub_1B1C2CB28();

  v67 = [v65 fileExistsAtPath_];

  if (v67)
  {
LABEL_10:
    v68 = v94;
    v82(v94, v63, v57);
    v69 = 0;
  }

  else
  {
    v70 = v63;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v71 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v71, qword_1ED9A9120);
    v72 = sub_1B1C2C888();
    v73 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v100 = v75;
      *v74 = 136315138;
      OUTLINED_FUNCTION_65();
      v76 = sub_1B1C2C098();
      v78 = sub_1B1A930E4(v76, v77, &v100);

      *(v74 + 4) = v78;
      v79 = v73;
      v63 = v70;
      _os_log_impl(&dword_1B1A8A000, v72, v79, "Unable to locate audio hint file at '%s'", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();

      v69 = 1;
      v68 = v94;
    }

    else
    {

      v69 = 1;
      v68 = v94;
      v63 = v70;
    }
  }

  __swift_storeEnumTagSinglePayload(v68, v69, 1, v57);
  v95(v63, v57);
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BE554C(uint64_t a1)
{
  if (qword_1EB761578 != -1)
  {
    swift_once();
  }

  if (byte_1EB762331 == 1)
  {
    v6 = a1;

    v2 = 0x454E4F4850495FLL;
    v3 = 0xE700000000000000;
  }

  else
  {
    if (qword_1EB761588 != -1)
    {
      swift_once();
    }

    if (byte_1EB762333 == 1)
    {
      v6 = a1;

      v4 = 1095780703;
    }

    else
    {
      if (qword_1EB761580 != -1)
      {
        swift_once();
      }

      if (byte_1EB762332 != 1)
      {

        return a1;
      }

      v6 = a1;

      v4 = 1330661727;
    }

    v2 = v4 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v2, v3);
  return v6;
}

uint64_t PreinstalledAudioStorage.deinit()
{
  v2 = OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL;
  v3 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_12_19(v3);
  v5 = *(v4 + 8);
  v5(v1 + v2, v0);
  v5(v1 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v0);
  return v1;
}

uint64_t PreinstalledAudioStorage.__deallocating_deinit()
{
  v2 = OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL;
  v3 = sub_1B1C2C1C8();
  OUTLINED_FUNCTION_12_19(v3);
  v5 = *(v4 + 8);
  v5(v1 + v2, v0);
  v5(v1 + OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_previewURL, v0);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v6, v7);
}

uint64_t sub_1B1BE5800()
{
  result = sub_1B1C2C1C8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OspreyBuiltInConfig.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x3FE8000000000000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &unk_1F28BFDE0;
  return result;
}

uint64_t sub_1B1BE598C()
{
  OUTLINED_FUNCTION_17_1();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1B1BE59B8(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_19_2();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1B1BE5A78()
{
  OUTLINED_FUNCTION_17_1();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_1B1BE5AA4(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_19_2();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1B1BE5B30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BE5B5C(v4);
}

uint64_t sub_1B1BE5B5C(uint64_t a1)
{
  OUTLINED_FUNCTION_19_2();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t OspreyBuiltInConfig.deinit()
{
  v1 = *(v0 + 48);

  return v0;
}

uint64_t OspreyChainedConfigs.__allocating_init(configs:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B1BE5C88()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v13);
    v6 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = *(v6 + 8);
    v8 = OUTLINED_FUNCTION_0_39();
    v10 = v9(v8);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = v5;
    if ((v12 & 1) == 0)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1BE5D50()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v13);
    v6 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v7 = *(v6 + 16);
    v8 = OUTLINED_FUNCTION_0_39();
    v10 = v9(v8);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = v5;
    if ((v12 & 1) == 0)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t OspreyChainedConfigs.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2();
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1B1BE61B4(void *a1)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = a1;
  oslog = sub_1B1C2C888();
  v4 = sub_1B1C2D0B8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B1C2D828();
    v9 = sub_1B1A930E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B1A8A000, oslog, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2739FD0](v6, -1, -1);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B1BE633C(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v4 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v4, qword_1ED9A9120);
  v5 = a1;
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B1C2D828();
    v12 = sub_1B1A930E4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    MEMORY[0x1B2739FD0](v8, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_1B1BE6524(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_1B1C2BE28();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1B1C2BE18();
  v5 = sub_1B1C2BE08();

  return v5;
}

uint64_t sub_1B1BE65B8()
{
  v0 = sub_1B1C2BD98();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B1C2BD88();
  sub_1B1C2BD78();
}

void sub_1B1BE67AC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

double sub_1B1BE6834()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v0) = v4[0].denom;
  LODWORD(v1) = v4[0].numer;
  v2 = *MEMORY[0x1E69E9840];
  return v1 / v0 / 1000000000.0;
}

void *sub_1B1BE696C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B1BE6A0C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_8_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B1BE6A54(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B1BE6A0C(v2);
}

void *sub_1B1BE6B04()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B1BE6BA4(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_8_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B1BE6BEC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1B1BE6BA4(v2);
}

id sub_1B1BE6C80(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_1B1BE6CFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    sub_1B1C2CB58();
  }

  v7 = a1;
  v6 = OUTLINED_FUNCTION_51();
  a4(v6);
}

uint64_t sub_1B1BE6D8C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_33();
  return a5(v9);
}

uint64_t sub_1B1BE6F6C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE701C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE707C(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7134()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7198(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisBeginTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7248()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE72AC(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisEndTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7360(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7414(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE74C4()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7528(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEstimatedOutputBeginTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE75D8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7638(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE76F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7754(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverFirstPacketTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7804()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7868(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverLastPacketTime;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE7918()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7978(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_serverStreamedAudioDuration;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B1BE7A30()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7A90(double a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7B4C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7BB0(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_1B1BE7C3C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = InstrumentationMetrics.SourceOfTTS.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B1BE7C94()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7CF8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7DAC()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7E10(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_privacySensitive;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7EC4()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE7F28(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_minimizeDeviceUsage;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE7FD8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE803C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE811C()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B1BE81C4(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues;
  OUTLINED_FUNCTION_8_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE820C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B1BE81C4(v4);
}

uint64_t sub_1B1BE82AC()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8310(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isServerTTSRacing;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE83C0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8424(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE84D8()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE853C(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAlignmentStall;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE85F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8654(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralAudioClick;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8708()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE876C(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisQualityIssue;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8820()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8884(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_useHydraFrontend;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8938()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE899C(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_neuralFallback;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8A50()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8AB4(char a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8B64()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8BC8(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1BE8C78()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1BE8CDC(int a1)
{
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t static InstrumentationMetrics.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  byte_1EB7640A0 = a1;
  return result;
}

uint64_t sub_1B1BE8F3C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB7640A0;
  return result;
}

uint64_t sub_1B1BE8F88(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB7640A0 = v1;
  return result;
}

void InstrumentationMetrics.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  InstrumentationMetrics.init(coder:)(v1);
}

void sub_1B1BE9014()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  sub_1B1C2D538();
  OUTLINED_FUNCTION_76_4();
  v63 = v2;
  MEMORY[0x1B27381B0]();
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioDuration;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1B1C2CF18();
  OUTLINED_FUNCTION_76_4();
  v61 = v5;
  MEMORY[0x1B27381B0]();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v7 = OUTLINED_FUNCTION_157_0();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v6)
  {
    v10 = 0xE000000000000000;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1B27381B0](v9, v10);

  MEMORY[0x1B27381B0](0xD00000000000001BLL, 0x80000001B1C53210);
  v11 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v12 = *(v1 + v11);
  sub_1B1C2CF18();
  OUTLINED_FUNCTION_76_4();
  v62 = v13;
  MEMORY[0x1B27381B0]();
  v14 = (v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_utterance);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v14[1])
  {
    v15 = *v14;

    sub_1B1C2CC68();
  }

  v16 = MEMORY[0x1E69E6530];
  v17 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v17);

  MEMORY[0x1B27381B0](0x65696C6322200A2CLL, 0xEE0022203A22746ELL);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v19 = OUTLINED_FUNCTION_157_0();
  if (v18)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  if (v18)
  {
    v22 = 0xE000000000000000;
  }

  else
  {
    v22 = v19;
  }

  MEMORY[0x1B27381B0](v21, v22);

  MEMORY[0x1B27381B0](0xD000000000000012, 0x80000001B1C53250);
  v23 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v66 = *(v1 + v23);
  v24 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v24);

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C53270);
  v25 = OBJC_IVAR___SiriTTSInstrumentationMetrics_encounteredIssues;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v26 = *(v1 + v25);

  v28 = MEMORY[0x1B2738350](v27, v16);
  v30 = v29;

  MEMORY[0x1B27381B0](v28, v30);

  MEMORY[0x1B27381B0](0xD000000000000012, 0x80000001B1C53290);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_157_0();

  v31 = OUTLINED_FUNCTION_159();
  MEMORY[0x1B27381B0](v31);

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C532B0);
  v32 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isAudibleRequest;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  *(v1 + v32);
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](v61, 0x80000001B1C532D0);
  v33 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v34 = *(v1 + v33) & 0xFFFFFFFFFFFFFFFELL;
  if (v34 == 8)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34 == 8)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v35, v36);

  MEMORY[0x1B27381B0](0xD000000000000014, 0x80000001B1C532F0);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD00000000000001ELL, 0x80000001B1C53330);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C53350);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](v62, 0x80000001B1C53370);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_139_0();

  MEMORY[0x1B27381B0](0xD000000000000013, 0x80000001B1C53390);
  v37 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v65 = *(v1 + v37);
  v38 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v38);

  MEMORY[0x1B27381B0](0xD000000000000017, 0x80000001B1C533B0);
  InstrumentationMetrics.realTimeFactor.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.serverFirstPacketLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.serverLastPacketLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0](v63);
  v39 = *(v1 + v33);
  v40 = InstrumentationMetrics.SourceOfTTS.description.getter();
  MEMORY[0x1B27381B0](v40);

  MEMORY[0x1B27381B0](0xD000000000000024, 0x80000001B1C53450);
  v41 = OBJC_IVAR___SiriTTSInstrumentationMetrics_eagerRequestGapInterval;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v42 = *(v1 + v41);
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.synthesisLatency.getter();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_4();
  MEMORY[0x1B27381B0]();
  InstrumentationMetrics.customerPerceivedLatency.getter();
  OUTLINED_FUNCTION_67_3();
  MEMORY[0x1B27381B0](0x63696F7622200A2CLL, 0xED000022203A2265);
  v43 = OBJC_IVAR___SiriTTSInstrumentationMetrics_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v44 = *(v1 + v43);
  if (v44)
  {
    v45 = [v44 description];
    sub_1B1C2CB58();
  }

  v46 = OUTLINED_FUNCTION_159();
  MEMORY[0x1B27381B0](v46);

  MEMORY[0x1B27381B0](0xD000000000000017, 0x80000001B1C534C0);
  v47 = OBJC_IVAR___SiriTTSInstrumentationMetrics_resource;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v48 = *(v1 + v47);
  if (v48)
  {
    v49 = [v48 description];
    sub_1B1C2CB58();
  }

  v50 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v50);

  OUTLINED_FUNCTION_43_8();
  v51 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v52 = *(v1 + v51);
  v53 = NSProcessInfoThermalState.description.getter();
  MEMORY[0x1B27381B0](v53);

  OUTLINED_FUNCTION_43_8();
  v54 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v64 = *(v1 + v54);
  v55 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v55);

  OUTLINED_FUNCTION_43_8();
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_157_0();

  v56 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v56);

  OUTLINED_FUNCTION_43_8();
  v57 = (v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptStyle);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v58 = *v57;
  if (v57[1])
  {
    v59 = *v57;
  }

  v60 = OUTLINED_FUNCTION_92();
  MEMORY[0x1B27381B0](v60);

  MEMORY[0x1B27381B0](8194594, 0xE300000000000000);
  OUTLINED_FUNCTION_26_1();
}

uint64_t InstrumentationMetrics.SourceOfTTS.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_3() & 1) != 0)
  {

    return 1;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B1C53560 == a2;
    if (v6 || (OUTLINED_FUNCTION_3() & 1) != 0)
    {

      return 2;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001B1C53580 == a2;
      if (v7 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 3;
      }

      else
      {
        v9 = a1 == OUTLINED_FUNCTION_133_0() && a2 == v8;
        if (v9 || (OUTLINED_FUNCTION_3() & 1) != 0)
        {

          return 4;
        }

        else
        {
          v11 = a1 == OUTLINED_FUNCTION_134_0() && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_3() & 1) != 0)
          {

            return 5;
          }

          else
          {
            v12 = a1 == 0xD000000000000011 && 0x80000001B1C535A0 == a2;
            if (v12 || (OUTLINED_FUNCTION_3() & 1) != 0)
            {

              return 6;
            }

            else
            {
              v14 = a1 == OUTLINED_FUNCTION_148() && a2 == v13;
              if (v14 || (OUTLINED_FUNCTION_3() & 1) != 0)
              {

                return 7;
              }

              else
              {
                v15 = a1 == 0x6143656369766564 && a2 == 0xEB00000000656863;
                if (v15 || (OUTLINED_FUNCTION_3() & 1) != 0)
                {

                  return 8;
                }

                else
                {
                  v16 = a1 == 0x614379657270736FLL && a2 == 0xEB00000000656863;
                  if (v16 || (OUTLINED_FUNCTION_3() & 1) != 0)
                  {

                    return 9;
                  }

                  else
                  {
                    v17 = a1 == 0x73757361676570 && a2 == 0xE700000000000000;
                    if (v17 || (OUTLINED_FUNCTION_3() & 1) != 0)
                    {

                      return 10;
                    }

                    else
                    {
                      v18 = a1 == 0x656E69706C61 && a2 == 0xE600000000000000;
                      if (v18 || (OUTLINED_FUNCTION_3() & 1) != 0)
                      {

                        return 11;
                      }

                      else
                      {
                        if (a1 != 0x6E776F6E6B6E75 || a2 != 0xE700000000000000)
                        {
                          OUTLINED_FUNCTION_3();
                        }

                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B1BE9CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = InstrumentationMetrics.SourceOfTTS.init(_:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

id sub_1B1BE9D30(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    OUTLINED_FUNCTION_49();
    sub_1B1C2CB28();
    OUTLINED_FUNCTION_24();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B1BE9DC8(uint64_t *a1, void (*a2)(void))
{
  v4 = *a1;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = v5;
    a2();
  }

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1BE9E74()
{
  v1 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1BE9F1C(uint64_t a1)
{
  v3 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_8_2();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B1BE9FF4()
{
  v1 = (v0 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_1B1BEA0B4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v3 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

uint64_t sub_1B1BEA104(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1B1BEA0B4();
}

id SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = &v5[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR___SiriTTSVoiceSubscription_voice] = a1;
  v9 = &v5[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  *v9 = a2;
  *(v9 + 1) = a3;
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  *v8 = a4;
  *(v8 + 1) = a5;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for SynthesisVoiceSubscription();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1B1BEA32C(uint64_t a1)
{
  sub_1B1A91CD0(a1, v22, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v23)
  {
    sub_1B1A90CD8(v22, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_20;
  }

  type metadata accessor for SynthesisVoiceSubscription();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v19 = 0;
    return v19 & 1;
  }

  v2 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *(v5 + 1);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v3 != *v5 || v4 != v6)
    {
      OUTLINED_FUNCTION_92();
      if ((sub_1B1C2D7A8() & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else if (v6)
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = &v21[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v9 != *v11 || v10 != *(v11 + 1))
  {
    OUTLINED_FUNCTION_92();
    if ((sub_1B1C2D7A8() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_1B1A8E474(0, &qword_1ED9A9880, 0x1E69E58C0);
  v13 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v16 = *&v21[v15];
  v17 = v14;
  v18 = v16;
  OUTLINED_FUNCTION_51();
  v19 = sub_1B1C2D248();

  return v19 & 1;
}

uint64_t sub_1B1BEA5D0()
{
  v1 = v0;
  sub_1B1C2D8F8();
  v2 = (v0 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    sub_1B1C2D8A8();

    sub_1B1C2CC48();
  }

  else
  {
    sub_1B1C2D8A8();
  }

  v4 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  sub_1B1C2CC48();

  v7 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1B1C2D258();

  return sub_1B1C2D8D8();
}

uint64_t static SynthesisVoiceSubscription.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return byte_1EB7640A1;
}

uint64_t static SynthesisVoiceSubscription.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  byte_1EB7640A1 = a1;
  return result;
}

uint64_t sub_1B1BEA7EC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB7640A1;
  return result;
}

uint64_t sub_1B1BEA838(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB7640A1 = v1;
  return result;
}

void sub_1B1BEA880(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_25_1(v5, sel_encodeObject_forKey_);

  v6 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  OUTLINED_FUNCTION_33();
  v9 = sub_1B1C2CB28();

  v10 = sub_1B1C2CB28();
  [a1 encodeObject:v9 forKey:v10];

  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v1[1])
  {
    v11 = *v1;

    OUTLINED_FUNCTION_67_0();
    sub_1B1C2CB28();
  }

  v12 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_149(a1, sel_encodeObject_forKey_);
  swift_unknownObjectRelease();
}

uint64_t SynthesisVoiceSubscription.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  return SynthesisVoiceSubscription.init(coder:)(v1);
}

uint64_t SynthesisVoiceSubscription.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId];
  type metadata accessor for SynthesisVoice();
  *v4 = 0;
  v4[1] = 0;
  result = sub_1B1C2D1E8();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *&v2[OBJC_IVAR___SiriTTSVoiceSubscription_voice] = result;
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  result = sub_1B1C2D1E8();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_1B1C2CB58();
  v9 = v8;

  v10 = &v2[OBJC_IVAR___SiriTTSVoiceSubscription_clientId];
  *v10 = v7;
  v10[1] = v9;
  v11 = sub_1B1C2D1E8();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1B1C2CB58();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v16 = v4[1];
  *v4 = v13;
  v4[1] = v15;

  v18.receiver = v2;
  v18.super_class = type metadata accessor for SynthesisVoiceSubscription();
  v17 = objc_msgSendSuper2(&v18, sel_init);

  return v17;
}

uint64_t sub_1B1BEAC48()
{
  v1 = v0;
  sub_1B1C2D538();

  v2 = (v0 + OBJC_IVAR___SiriTTSVoiceSubscription_clientId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  v5 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v5);

  MEMORY[0x1B27381B0](0x737365636361202CLL, 0xEF203A644979726FLL);
  v6 = (v1 + OBJC_IVAR___SiriTTSVoiceSubscription_accessoryId);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  v9 = OUTLINED_FUNCTION_33();
  MEMORY[0x1B27381B0](v9);

  MEMORY[0x1B27381B0](0x3A6563696F76202CLL, 0xE900000000000020);
  v10 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = [v11 description];
  sub_1B1C2CB58();

  v13 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v13);

  return 0x6449746E65696C63;
}

uint64_t InlineStreamingSignal.text.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text);
  v2 = *(v0 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text + 8);

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1BEAF00(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1B1C2CB28();
  OUTLINED_FUNCTION_24();

  return a1;
}

uint64_t InlineStreamingSignal.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier);
  v2 = *(v0 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8);

  return OUTLINED_FUNCTION_43_0();
}

id InlineStreamingSignal.__allocating_init(text:identifier:)()
{
  OUTLINED_FUNCTION_160_0();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_13();
  return InlineStreamingSignal.init(text:identifier:)(v2, v3, v4, v5);
}

id InlineStreamingSignal.init(text:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for InlineStreamingSignal();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t static InlineStreamingSignal.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  return byte_1EB7640A2;
}

uint64_t static InlineStreamingSignal.supportsSecureCoding.setter(char a1)
{
  OUTLINED_FUNCTION_15_0();
  result = swift_beginAccess();
  byte_1EB7640A2 = a1;
  return result;
}

uint64_t sub_1B1BEB188@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB7640A2;
  return result;
}

uint64_t sub_1B1BEB1D4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB7640A2 = v1;
  return result;
}

void sub_1B1BEB21C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text);
  v4 = *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text + 8);
  v5 = sub_1B1C2CB28();
  v6 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_25_1(v6, sel_encodeObject_forKey_);

  v7 = *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier);
  v8 = *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8);
  v9 = sub_1B1C2CB28();
  v10 = sub_1B1C2CB28();
  [a1 encodeObject:v9 forKey:v10];
}

uint64_t InlineStreamingSignal.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  v1 = OUTLINED_FUNCTION_24();
  return InlineStreamingSignal.init(coder:)(v1);
}

uint64_t InlineStreamingSignal.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1B1A8E474(0, &qword_1ED9A90E0, 0x1E696AEC0);
  result = sub_1B1C2D1E8();
  if (result)
  {
    v5 = result;
    v6 = sub_1B1C2CB58();
    v8 = v7;

    v9 = &v2[OBJC_IVAR___SiriTTSInlineStreamingSignal_text];
    *v9 = v6;
    v9[1] = v8;
    result = sub_1B1C2D1E8();
    if (result)
    {
      v10 = result;
      v11 = sub_1B1C2CB58();
      v13 = v12;

      v14 = &v2[OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier];
      *v14 = v11;
      v14[1] = v13;
      v16.receiver = v2;
      v16.super_class = type metadata accessor for InlineStreamingSignal();
      v15 = objc_msgSendSuper2(&v16, sel_init);

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1BEB4D8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_92();
  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1BEB544()
{
  v1 = v0;
  sub_1B1C2D538();

  MEMORY[0x1B27381B0](*(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier), *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_identifier + 8));
  MEMORY[0x1B27381B0](0x203A74786574202CLL, 0xE900000000000022);
  MEMORY[0x1B27381B0](*(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text), *(v1 + OBJC_IVAR___SiriTTSInlineStreamingSignal_text + 8));
  MEMORY[0x1B27381B0](34, 0xE100000000000000);
  return 540697705;
}

id sub_1B1BEB654(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1BEB768(uint64_t result)
{
  v2 = OBJC_IVAR___SiriTTSDaemonSession__keepActive;
  if (v1[OBJC_IVAR___SiriTTSDaemonSession__keepActive] != (result & 1))
  {
    v3 = v1;
    v4 = result;
    v1[OBJC_IVAR___SiriTTSDaemonSession__keepActive] = result & 1;
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v5 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v5, qword_1ED9A9120);
    v6 = v1;
    v7 = sub_1B1C2C888();
    v8 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = OUTLINED_FUNCTION_17_2();
      *v9 = 138412546;
      *(v9 + 4) = v6;
      *v10 = v6;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v4 & 1;
      v11 = v6;
      _os_log_impl(&dword_1B1A8A000, v7, v8, "DaemonSession %@ sets keepActive: %{BOOL}d", v9, 0x12u);
      sub_1B1A90CD8(v10, &qword_1EB7625C0, &qword_1B1C37990);
      OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_29_1();
    }

    v12 = sub_1B1A9CB84();
    v13 = *&v12[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
    swift_unknownObjectRetain();

    v14 = v3[v2];
    v21 = nullsub_1;
    v22 = 0;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v19 = v15;
    v20 = &block_descriptor_28;
    v16 = _Block_copy(&v17);
    [v13 keepActive:v14 reply:{v16, v17, v18}];
    _Block_release(v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1B1BEB95C(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR___SiriTTSDaemonSession__keepActive);
  return sub_1B1BEB990;
}

uint64_t sub_1B1BEB9C4(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_1B1BEBA1C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_29(*v3);
  OUTLINED_FUNCTION_15_0();
  swift_beginAccess();
  v4 = v1[1];
  *v1 = v2;
  v1[1] = v0;
}

id DaemonSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void DaemonSession.__allocating_init(accessoryId:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_129_1());
  OUTLINED_FUNCTION_24();
  DaemonSession.init(accessoryId:)();
}

void DaemonSession.init(accessoryId:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_1B1C2C478();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v11 = (v10 - v9);
  *&v0[OBJC_IVAR___SiriTTSDaemonSession____lazy_storage____sessionConnection] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762200, &unk_1B1C41080);
  v12 = OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_156_0(v12);
  v13 = OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_156_0(v13);
  v14 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  type metadata accessor for BaseRequest(0);
  *&v0[v14] = sub_1B1C2CAB8();
  v0[OBJC_IVAR___SiriTTSDaemonSession__keepActive] = 0;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSDaemonSession__clientId);
  v15 = OBJC_IVAR___SiriTTSDaemonSession_accessoryId;
  v16 = *(v6 + 16);
  v16(&v0[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v2, v3);
  __swift_storeEnumTagSinglePayload(&v0[v15], 0, 1, v3);
  v32.receiver = v0;
  v32.super_class = type metadata accessor for DaemonSession();
  v17 = objc_msgSendSuper2(&v32, sel_init);
  v18 = qword_1ED9A9288;
  v19 = v17;
  if (v18 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v20 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v20, qword_1ED9A9120);
  v16(v11, v2, v3);
  v21 = sub_1B1C2C888();
  v22 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v21, v22))
  {
    swift_slowAlloc();
    v29 = OUTLINED_FUNCTION_69_3();
    v31 = OUTLINED_FUNCTION_19_0();
    *v2 = 138412546;
    *(v2 + 4) = v19;
    *v29 = v19;
    *(v2 + 12) = 2080;
    sub_1B1BF83C4(&unk_1EB764220, MEMORY[0x1E69695A8]);
    v30 = v19;
    OUTLINED_FUNCTION_92();
    sub_1B1C2D778();
    v23 = *(v6 + 8);
    v23(v11, v3);
    v24 = OUTLINED_FUNCTION_67_0();
    v27 = sub_1B1A930E4(v24, v25, v26);

    *(v2 + 14) = v27;
    _os_log_impl(&dword_1B1A8A000, v21, v22, "Init DaemonSession %@, with accessory %s", v2, 0x16u);
    sub_1B1A90CD8(v29, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_39_8();

    v23(v2, v3);
  }

  else
  {

    v28 = *(v6 + 8);
    v28(v2, v3);
    v28(v11, v3);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEBF28()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_75_4();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v62 - v11;
  OUTLINED_FUNCTION_2_11();
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v0;
  v63 = sub_1B1BF82F4;
  v64 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v69 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27();
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v15 || (v14 & 1) == 0)
    {
      v31 = mach_absolute_time();
      v32 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v32[v6] = v31;
      v33 = sub_1B1A919FC();
      v35 = v34;
      v36 = (v6 + OBJC_IVAR___SiriTTSBaseRequest_clientBundleId);
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v37 = v36[1];
      *v36 = v33;
      v36[1] = v35;

      sub_1B1A91CD0(v2 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v12, &qword_1EB761DF8, qword_1B1C40850);
      v38 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v12, v6 + v38);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v39 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v39, qword_1ED9A9120);
      v40 = v6;
      v62[1] = v38;
      v41 = sub_1B1C2C888();
      v42 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_21_0();
        v44 = OUTLINED_FUNCTION_19_0();
        v62[0] = v4;
        v45 = v44;
        v63 = v44;
        *v43 = 136446210;
        v46 = [v40 description];
        v32 = sub_1B1C2CB58();

        v47 = OUTLINED_FUNCTION_51();
        sub_1B1A930E4(v47, v48, v49);
        OUTLINED_FUNCTION_104();

        *(v43 + 4) = v32;
        _os_log_impl(&dword_1B1A8A000, v41, v42, "Start #PrewarmRequest, %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        v4 = v62[0];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_45_6();
      }

      if (qword_1EB7612A8 != -1)
      {
        swift_once();
      }

      if (byte_1EB7612B0 == 1 && (*(v2 + OBJC_IVAR___SiriTTSDaemonSession__keepActive) & 1) == 0)
      {
        v50 = sub_1B1C2C888();
        v51 = sub_1B1C2D0C8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_15_2(v52);
          _os_log_impl(&dword_1B1A8A000, v50, v51, "DaemonSession keepActive must be true before prewarming.", v32, 2u);
          OUTLINED_FUNCTION_9_1();
        }
      }

      v53 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_2_11();
      v54 = swift_allocObject();
      *(v54 + 16) = v4;
      *(v54 + 24) = v0;

      v55 = OUTLINED_FUNCTION_89_3();
      v57 = sub_1B1A927C4(v55, v56);

      OUTLINED_FUNCTION_66();
      v58 = swift_allocObject();
      v58[2] = v40;
      v58[3] = v4;
      v58[4] = v0;
      v67 = sub_1B1ABEABC;
      v68 = v58;
      v63 = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v65 = v59;
      v66 = &block_descriptor_34_0;
      v60 = _Block_copy(&v63);

      v61 = v40;

      [v57 prewarmWithRequest:v61 reply:v60];
      _Block_release(v60);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v16 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v16, qword_1ED9A9120);
      v17 = sub_1B1C2C888();
      v18 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_22_8(v18))
      {
        v19 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_49_7(v19);
        OUTLINED_FUNCTION_7_24();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        OUTLINED_FUNCTION_10_1();
      }

      (v4)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v25 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v25, qword_1ED9A9120);
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v27))
    {
      v28 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v28);
      _os_log_impl(&dword_1B1A8A000, v26, v2, "prewarmWithRequest:didFinish: requires correct parameters", v1, 2u);
      OUTLINED_FUNCTION_9_1();
    }

    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = OUTLINED_FUNCTION_3_27();
    v4();
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEC518(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C8A8();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B1C2C828();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v70 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B1A95808;
  *(v22 + 24) = v21;
  aBlock = sub_1B1BFB48C;
  v81 = v22;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v86 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v23 == 2 || (v23 & 1) == 0)
    {
      v72 = v6;
      v73 = a3;
      v33 = mach_absolute_time();
      v34 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v71 = v34;
      *&a1[v34] = v33;
      v35 = sub_1B1A919FC();
      v37 = v36;
      v74 = a2;
      v38 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      v39 = v38[1];
      *v38 = v35;
      v38[1] = v37;

      sub_1B1A91CD0(&v74[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v20, &qword_1EB761DF8, qword_1B1C40850);
      v40 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v20, &a1[v40]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v9, qword_1ED9A9120);
      (*(v75 + 16))(v12, v41, v9);
      sub_1B1C2C808();
      v42 = a1;
      v43 = v78;
      sub_1B1C2C7E8();
      v44 = sub_1B1C2C818();
      v45 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        *(v46 + 4) = *&a1[v71];

        v47 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v44, v45, v47, "TTSRequestReceived", "id %llu", v46, 0xCu);
        MEMORY[0x1B2739FD0](v46, -1, -1);
      }

      else
      {
      }

      (*(v79 + 8))(v43, v72);
      (*(v76 + 8))(v16, v77);
      v48 = v42;
      v49 = sub_1B1C2C888();
      v50 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock = v52;
        *v51 = 136446210;
        v53 = [v48 description];
        v54 = sub_1B1C2CB58();
        v56 = v55;

        v57 = sub_1B1A930E4(v54, v56, &aBlock);

        *(v51 + 4) = v57;
        _os_log_impl(&dword_1B1A8A000, v49, v50, "Start #SynthesisRequest %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x1B2739FD0](v52, -1, -1);
        MEMORY[0x1B2739FD0](v51, -1, -1);
      }

      v58 = v74;
      v59 = *&v74[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v61 = MEMORY[0x1EEE9AC00](v60);
      *(&v70 - 2) = v58;
      *(&v70 - 1) = v48;
      MEMORY[0x1EEE9AC00](v61);
      *(&v70 - 2) = sub_1B1BFB388;
      *(&v70 - 1) = v62;
      os_unfair_lock_lock(v59 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v59 + 4);
      v63 = sub_1B1A9CB84();
      v64 = swift_allocObject();
      *(v64 + 16) = sub_1B1A95808;
      *(v64 + 24) = v21;

      v65 = sub_1B1A927C4(sub_1B1BFB4C8, v64);

      v66 = swift_allocObject();
      v66[2] = v48;
      v66[3] = v58;
      v66[4] = sub_1B1A95808;
      v66[5] = v21;
      v84 = sub_1B1BFB384;
      v85 = v66;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1B1A955E0;
      v83 = &block_descriptor_552;
      v67 = _Block_copy(&aBlock);

      v68 = v48;
      v69 = v58;

      [v65 synthesizeWithRequest:v68 reply:v67];
      _Block_release(v67);

      swift_unknownObjectRelease();
      a3 = v73;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_1ED9A9120);
      v24 = sub_1B1C2C888();
      v25 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1B1A8A000, v24, v25, "Skipped #SynthesisRequest: TTS is disabled.", v26, 2u);
        MEMORY[0x1B2739FD0](v26, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "synthesizeWithRequest:didFinish: requires correct parameters", v29, 2u);
      MEMORY[0x1B2739FD0](v29, -1, -1);
    }

    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v32 = sub_1B1C2C048();
    (a3)[2](a3, v32);
  }

  _Block_release(a3);
}

void sub_1B1BECF30()
{
  OUTLINED_FUNCTION_25();
  v96 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = OUTLINED_FUNCTION_135_1();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = OUTLINED_FUNCTION_147_0();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;
  v97 = sub_1B1BFB48C;
  v98 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v101 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27();
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v26 || (v25 & 1) == 0)
    {
      v93 = v8;
      v94 = v5;
      v95 = v3;
      v44 = mach_absolute_time();
      v45 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v45] = v44;
      v46 = sub_1B1A919FC();
      v48 = v47;
      v49 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v50 = v49[1];
      *v49 = v46;
      v49[1] = v48;

      sub_1B1A91CD0(&v96[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v51 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v51]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      __swift_project_value_buffer(v12, qword_1ED9A9120);
      v52 = OUTLINED_FUNCTION_32_12();
      v53(v52);
      sub_1B1C2C808();
      v54 = v7;
      sub_1B1C2C7E8();
      v55 = sub_1B1C2C818();
      sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v56 = OUTLINED_FUNCTION_21_0();
        v57 = OUTLINED_FUNCTION_122_1(v56, 3.852e-34);
        *(v57 + 1) = *&v7[v58];

        v59 = sub_1B1C2C7D8();
        OUTLINED_FUNCTION_164_0(&dword_1B1A8A000, v60, v61, v59, "TTSRequestReceived", "id %llu");
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v62 = OUTLINED_FUNCTION_120_1();
      v63(v62, v93);
      v64 = OUTLINED_FUNCTION_119_2();
      v65(v64);
      v66 = v54;
      v67 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v68 = OUTLINED_FUNCTION_21_0();
        v69 = OUTLINED_FUNCTION_19_0();
        v97 = v69;
        *v68 = 136446210;
        v70 = [v66 description];
        v71 = sub_1B1C2CB58();
        v73 = v72;

        v74 = sub_1B1A930E4(v71, v73, &v97);

        *(v68 + 4) = v74;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v75, v76, v77, v78, v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_10_1();
      }

      v79 = *&v96[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v80);
      OUTLINED_FUNCTION_65_3();
      *(v81 - 16) = v96;
      *(v81 - 8) = v66;
      MEMORY[0x1EEE9AC00](v82);
      OUTLINED_FUNCTION_66_5();
      *(v83 - 16) = sub_1B1BF8320;
      *(v83 - 8) = v84;
      os_unfair_lock_lock(v79 + 4);
      sub_1B1BF833C();
      os_unfair_lock_unlock(v79 + 4);
      v85 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_2_11();
      v86 = swift_allocObject();
      *(v86 + 16) = v94;
      *(v86 + 24) = v95;

      v87 = sub_1B1A927C4(sub_1B1BF8364, v86);

      OUTLINED_FUNCTION_38_1();
      v88 = swift_allocObject();
      v88[2] = v66;
      v88[3] = v96;
      v88[4] = v94;
      v88[5] = v95;
      OUTLINED_FUNCTION_1_27(v88);
      v98 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v99 = v89;
      v100 = &block_descriptor_47;
      v90 = _Block_copy(&v97);

      v91 = v66;
      v92 = v96;

      [v87 synthesizeWithRequest:v91 reply:v90];
      _Block_release(v90);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_81(v28))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_29_8();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_11_23();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v34 = v5;
    OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
    v35 = sub_1B1C2C888();
    v36 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_81(v36))
    {
      v37 = OUTLINED_FUNCTION_20_0();
      *v37 = 0;
      OUTLINED_FUNCTION_61_4();
      _os_log_impl(v38, v39, v40, v41, v37, 2u);
      OUTLINED_FUNCTION_72_4();
    }

    v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v43 = OUTLINED_FUNCTION_3_27();
    v34();
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BED69C(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #SynthesisRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #SynthesisRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEDA40()
{
  OUTLINED_FUNCTION_25();
  v93 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = OUTLINED_FUNCTION_135_1();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = OUTLINED_FUNCTION_147_0();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;
  v94 = sub_1B1BFB48C;
  v95 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v98 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {
    v92 = v8;

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27();
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v26 || (v25 & 1) == 0)
    {
      v90 = v5;
      v91 = v3;
      v39 = mach_absolute_time();
      v40 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v40] = v39;
      v41 = sub_1B1A919FC();
      v43 = v42;
      v44 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v45 = v44[1];
      *v44 = v41;
      v44[1] = v43;

      sub_1B1A91CD0(&v93[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v46 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v46]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      __swift_project_value_buffer(v12, qword_1ED9A9120);
      v47 = OUTLINED_FUNCTION_32_12();
      v48(v47);
      sub_1B1C2C808();
      v49 = v7;
      sub_1B1C2C7E8();
      v50 = sub_1B1C2C818();
      v51 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v52 = OUTLINED_FUNCTION_21_0();
        v53 = OUTLINED_FUNCTION_122_1(v52, 3.852e-34);
        *(v53 + 1) = *&v7[v54];

        v55 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v50, v51, v55, "TTSRequestReceived", "id %llu", v52, 0xCu);
        OUTLINED_FUNCTION_9_1();
      }

      else
      {
      }

      v56 = OUTLINED_FUNCTION_120_1();
      v57(v56, v92);
      v58 = OUTLINED_FUNCTION_119_2();
      v59(v58);
      v60 = v49;
      v61 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v62 = OUTLINED_FUNCTION_21_0();
        v63 = OUTLINED_FUNCTION_19_0();
        v94 = v63;
        *v62 = 136446210;
        v64 = [v60 description];
        v65 = sub_1B1C2CB58();
        v67 = v66;

        v68 = sub_1B1A930E4(v65, v67, &v94);

        *(v62 + 4) = v68;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v69, v70, v71, v72, v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        OUTLINED_FUNCTION_29_1();
        OUTLINED_FUNCTION_10_1();
      }

      v73 = sub_1B1AD6C0C();
      if (!v73)
      {
        v74 = [objc_opt_self() sharedInstance];
        v75 = [v74 opaqueSessionID];

        v73 = sub_1B1BCF6C4(v75);
      }

      v76 = *&v93[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v73);
      OUTLINED_FUNCTION_65_3();
      *(v77 - 16) = v93;
      *(v77 - 8) = v60;
      MEMORY[0x1EEE9AC00](v78);
      OUTLINED_FUNCTION_66_5();
      *(v79 - 16) = sub_1B1BFB388;
      *(v79 - 8) = v80;
      os_unfair_lock_lock(v76 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v76 + 4);
      v81 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_66();
      v82 = swift_allocObject();
      v82[2] = v60;
      v82[3] = v90;
      v82[4] = v91;

      v83 = v60;
      sub_1B1A927C4(sub_1B1BFB3E0, v82);

      OUTLINED_FUNCTION_38_1();
      v84 = swift_allocObject();
      v84[2] = v83;
      v84[3] = v93;
      v84[4] = v90;
      v84[5] = v91;
      OUTLINED_FUNCTION_1_27(v84);
      v95 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v96 = v85;
      v97 = &block_descriptor_61;
      v86 = _Block_copy(&v94);

      v83;
      v87 = v93;

      OUTLINED_FUNCTION_5_13();
      [v88 v89];
      _Block_release(v86);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_82_3(v28))
      {
        v29 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_15_2(v29);
        OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v30, v31, "Skipped #SpeechRequest: TTS is disabled.");
        OUTLINED_FUNCTION_11();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
    v32 = sub_1B1C2C888();
    v33 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v33))
    {
      v34 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v34);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v35, v36, "speakWithSpeechRequest:didFinish: requires correct parameters");
      OUTLINED_FUNCTION_11();
    }

    v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v38 = OUTLINED_FUNCTION_3_27();
    v5();
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BEE21C(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #SpeechRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #SpeechRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEE5A8(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v79 = *(v6 - 8);
  v7 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C8A8();
  v75 = *(v9 - 8);
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B1C2C828();
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v70 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B1A95808;
  *(v22 + 24) = v21;
  aBlock = sub_1B1BFB48C;
  v81 = v22;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v86 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v23 == 2 || (v23 & 1) == 0)
    {
      v72 = v6;
      v73 = a3;
      v33 = mach_absolute_time();
      v34 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v71 = v34;
      *&a1[v34] = v33;
      v35 = sub_1B1A919FC();
      v37 = v36;
      v74 = a2;
      v38 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      v39 = v38[1];
      *v38 = v35;
      v38[1] = v37;
      v40 = v74;

      sub_1B1A91CD0(&v40[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v20, &qword_1EB761DF8, qword_1B1C40850);
      v41 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v20, &a1[v41]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v9, qword_1ED9A9120);
      (*(v75 + 16))(v12, v42, v9);
      sub_1B1C2C808();
      v43 = a1;
      v44 = v78;
      sub_1B1C2C7E8();
      v45 = sub_1B1C2C818();
      v46 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = *&a1[v71];

        v48 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v45, v46, v48, "TTSRequestReceived", "id %llu", v47, 0xCu);
        v49 = v47;
        v40 = v74;
        MEMORY[0x1B2739FD0](v49, -1, -1);
      }

      else
      {
      }

      (*(v79 + 8))(v44, v72);
      (*(v76 + 8))(v16, v77);
      v50 = v43;
      v51 = sub_1B1C2C888();
      v52 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543362;
        *(v53 + 4) = v50;
        *v54 = v50;
        v55 = v50;
        _os_log_impl(&dword_1B1A8A000, v51, v52, "Start #AudioRequest, %{public}@", v53, 0xCu);
        sub_1B1A90CD8(v54, &qword_1EB7625C0, &qword_1B1C37990);
        MEMORY[0x1B2739FD0](v54, -1, -1);
        MEMORY[0x1B2739FD0](v53, -1, -1);
      }

      v56 = sub_1B1AD6C0C();
      if (!v56)
      {
        v57 = [objc_opt_self() sharedInstance];
        v58 = [v57 opaqueSessionID];

        v56 = sub_1B1BCF6C4(v58);
      }

      v59 = *&v40[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v60 = MEMORY[0x1EEE9AC00](v56);
      *(&v70 - 2) = v40;
      *(&v70 - 1) = v50;
      MEMORY[0x1EEE9AC00](v60);
      *(&v70 - 2) = sub_1B1BFB388;
      *(&v70 - 1) = v61;
      os_unfair_lock_lock(v59 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v59 + 4);
      v62 = sub_1B1A9CB84();
      v63 = swift_allocObject();
      v63[2] = v50;
      v63[3] = sub_1B1A95808;
      v63[4] = v21;

      v64 = v50;
      v65 = sub_1B1A927C4(sub_1B1BFB3E0, v63);

      v66 = swift_allocObject();
      v66[2] = v64;
      v66[3] = v40;
      v66[4] = sub_1B1A95808;
      v66[5] = v21;
      v84 = sub_1B1BFB37C;
      v85 = v66;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1B1A955E0;
      v83 = &block_descriptor_510;
      v67 = _Block_copy(&aBlock);

      v68 = v64;
      v69 = v40;

      [v65 speakWithAudioRequest:v68 reply:v67];
      _Block_release(v67);

      swift_unknownObjectRelease();
      a3 = v73;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_1ED9A9120);
      v24 = sub_1B1C2C888();
      v25 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1B1A8A000, v24, v25, "Skipped #AudioRequest: TTS is disabled.", v26, 2u);
        MEMORY[0x1B2739FD0](v26, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "speakWithAudioRequest:didFinish: requires correct parameters", v29, 2u);
      MEMORY[0x1B2739FD0](v29, -1, -1);
    }

    v30 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v31 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v32 = sub_1B1C2C048();
    (a3)[2](a3, v32);
  }

  _Block_release(a3);
}

void sub_1B1BEEFE8()
{
  OUTLINED_FUNCTION_25();
  v95 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B1C2C7F8();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v12 = OUTLINED_FUNCTION_135_1();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v16 = OUTLINED_FUNCTION_147_0();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_2_11();
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v3;
  v96 = sub_1B1BFB48C;
  v97 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v100 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      OUTLINED_FUNCTION_5_27();
    }

    sub_1B1A91998();
    OUTLINED_FUNCTION_33_5();
    if (v26 || (v25 & 1) == 0)
    {
      v92 = v8;
      v93 = v5;
      v94 = v3;
      v44 = mach_absolute_time();
      v45 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v7[v45] = v44;
      v46 = sub_1B1A919FC();
      v48 = v47;
      v49 = &v7[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v50 = v49[1];
      *v49 = v46;
      v49[1] = v48;

      sub_1B1A91CD0(&v95[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v1, &qword_1EB761DF8, qword_1B1C40850);
      v51 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v1, &v7[v51]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      __swift_project_value_buffer(v12, qword_1ED9A9120);
      v52 = OUTLINED_FUNCTION_32_12();
      v53(v52);
      sub_1B1C2C808();
      v54 = v7;
      sub_1B1C2C7E8();
      v55 = sub_1B1C2C818();
      sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v56 = OUTLINED_FUNCTION_21_0();
        v57 = OUTLINED_FUNCTION_122_1(v56, 3.852e-34);
        *(v57 + 1) = *&v7[v58];

        v59 = sub_1B1C2C7D8();
        OUTLINED_FUNCTION_164_0(&dword_1B1A8A000, v60, v61, v59, "TTSRequestReceived", "id %llu");
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v62 = OUTLINED_FUNCTION_120_1();
      v63(v62, v92);
      v64 = OUTLINED_FUNCTION_119_2();
      v65(v64);
      v66 = v54;
      v67 = sub_1B1C2C888();
      sub_1B1C2D0D8();

      if (OUTLINED_FUNCTION_151_0())
      {
        v68 = OUTLINED_FUNCTION_21_0();
        v69 = OUTLINED_FUNCTION_17_2();
        *v68 = 138543362;
        *(v68 + 4) = v66;
        *v69 = v66;
        v70 = v66;
        OUTLINED_FUNCTION_61_4();
        _os_log_impl(v71, v72, v73, v74, v68, 0xCu);
        sub_1B1A90CD8(v69, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_72_4();
      }

      v75 = sub_1B1AD6C0C();
      if (!v75)
      {
        v76 = [objc_opt_self() sharedInstance];
        v77 = [v76 opaqueSessionID];

        v75 = sub_1B1BCF6C4(v77);
      }

      v78 = *&v95[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      MEMORY[0x1EEE9AC00](v75);
      OUTLINED_FUNCTION_65_3();
      *(v79 - 16) = v95;
      *(v79 - 8) = v66;
      MEMORY[0x1EEE9AC00](v80);
      OUTLINED_FUNCTION_66_5();
      *(v81 - 16) = sub_1B1BFB388;
      *(v81 - 8) = v82;
      os_unfair_lock_lock(v78 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v78 + 4);
      v83 = sub_1B1A9CB84();
      OUTLINED_FUNCTION_66();
      v84 = swift_allocObject();
      v84[2] = v66;
      v84[3] = v93;
      v84[4] = v94;

      v85 = v66;
      sub_1B1A927C4(sub_1B1BF838C, v84);

      OUTLINED_FUNCTION_38_1();
      v86 = swift_allocObject();
      v86[2] = v85;
      v86[3] = v95;
      v86[4] = v93;
      v86[5] = v94;
      OUTLINED_FUNCTION_1_27(v86);
      v97 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v98 = v87;
      v99 = &block_descriptor_75;
      v88 = _Block_copy(&v96);

      v85;
      v89 = v95;

      OUTLINED_FUNCTION_5_13();
      [v90 v91];
      _Block_release(v88);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
      v27 = sub_1B1C2C888();
      v28 = sub_1B1C2D0D8();
      if (OUTLINED_FUNCTION_81(v28))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_29_8();
        _os_log_impl(v29, v30, v31, v32, v33, 2u);
        OUTLINED_FUNCTION_11_23();
      }

      (v5)(0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v34 = v5;
    OUTLINED_FUNCTION_12_1(v12, qword_1ED9A9120);
    v35 = sub_1B1C2C888();
    v36 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_81(v36))
    {
      v37 = OUTLINED_FUNCTION_20_0();
      *v37 = 0;
      OUTLINED_FUNCTION_61_4();
      _os_log_impl(v38, v39, v40, v41, v37, 2u);
      OUTLINED_FUNCTION_72_4();
    }

    v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v43 = OUTLINED_FUNCTION_3_27();
    v34();
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BEF778(uint64_t a1, void *a2, void (*a3)(void *))
{
  sub_1B1BF86C4(a2);
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_96_3("sirittsd connection error: ");
  v5 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v7 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B1C2CB58();
  *(inited + 40) = v8;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v17)
  {
    v10 = v16;
  }

  else
  {
    v10 = 0;
  }

  if (v17)
  {
    v11 = v17;
  }

  else
  {
    v11 = v3;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v11;

  v12 = OUTLINED_FUNCTION_146_0();
  v13 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v14 = OUTLINED_FUNCTION_33_10();
  sub_1B1B1AE5C(v14, v15, -9, v12);
  OUTLINED_FUNCTION_7_13();

  a3(v9);
}

uint64_t sub_1B1BEF8BC(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #AudioRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #AudioRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BEFC60(char *a1, char *a2, void (**a3)(void, void))
{
  v145 = a2;
  v146 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v127 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v140 = &v127 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v127 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v127 - v17;
  v144 = sub_1B1C2C1C8();
  v133 = *(v144 - 8);
  v18 = *(v133 + 64);
  v19 = MEMORY[0x1EEE9AC00](v144);
  v132 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v127 - v21;
  v143 = sub_1B1C2C7F8();
  v138 = *(v143 - 8);
  v22 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v137 = (&v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1B1C2C8A8();
  v134 = *(v24 - 8);
  v25 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v127 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_1B1C2C828();
  v135 = *(v136 - 1);
  v28 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v30 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v127 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1B1A95808;
  *(v36 + 24) = v35;
  aBlock = sub_1B1BFB48C;
  v148 = v36;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v154 = sub_1B1C2D7F8();
  if (!swift_dynamicCast())
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v24, qword_1ED9A9120);
    v41 = sub_1B1C2C888();
    v42 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1B1A8A000, v41, v42, "speakWithPreviewRequest:didFinish: requires correct parameters", v43, 2u);
      MEMORY[0x1B2739FD0](v43, -1, -1);
    }

    v44 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v45 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v46 = sub_1B1C2C048();
    (a3)[2](a3, v46);

    goto LABEL_69;
  }

  if (qword_1ED9A96B8 != -1)
  {
    goto LABEL_71;
  }

LABEL_3:
  sub_1B1A91998();
  if (v37 != 2 && (v37 & 1) != 0)
  {
    if (qword_1ED9A9288 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_73;
  }

  v130 = v16;
  v127 = v11;
  v131 = v4;
  v128 = v35;
  v129 = a3;
  v47 = mach_absolute_time();
  v48 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  v49 = v146;
  swift_beginAccess();
  *&v49[v48] = v47;
  v50 = v145;
  v51 = sub_1B1A919FC();
  v53 = v52;
  v54 = &v49[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  swift_beginAccess();
  v55 = v54[1];
  *v54 = v51;
  v54[1] = v53;

  sub_1B1A91CD0(&v50[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v34, &qword_1EB761DF8, qword_1B1C40850);
  v56 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
  swift_beginAccess();
  sub_1B1A91B74(v34, &v49[v56]);
  swift_endAccess();
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v24, qword_1ED9A9120);
  (*(v134 + 16))(v27, v57, v24);
  sub_1B1C2C808();
  v58 = v49;
  v59 = v137;
  sub_1B1C2C7E8();
  v27 = sub_1B1C2C818();
  v60 = sub_1B1C2D198();
  if (sub_1B1C2D278())
  {
    v61 = swift_slowAlloc();
    *v61 = 134217984;
    *(v61 + 4) = *&v49[v48];

    v62 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v27, v60, v62, "TTSRequestReceived", "id %llu", v61, 0xCu);
    MEMORY[0x1B2739FD0](v61, -1, -1);
  }

  else
  {
  }

  v63 = v145;
  v64 = v130;
  v65 = v143;
  v66 = v138;

  (*(v66 + 8))(v59, v65);
  (*(v135 + 8))(v30, v136);
  v67 = v58;
  v130 = v57;
  v68 = sub_1B1C2C888();
  v69 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v70 = 138543362;
    *(v70 + 4) = v67;
    v27->isa = v67;
    v71 = v67;
    _os_log_impl(&dword_1B1A8A000, v68, v69, "Start #PreviewRequest, %{public}@", v70, 0xCu);
    sub_1B1A90CD8(v27, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v27, -1, -1);
    MEMORY[0x1B2739FD0](v70, -1, -1);
  }

  v143 = v67;
  v72 = sub_1B1AD6C0C();
  v30 = v141;
  v16 = v64;
  if (!v72)
  {
    v73 = [objc_opt_self() sharedInstance];
    v74 = [v73 opaqueSessionID];

    sub_1B1BCF6C4(v74);
  }

  v75 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  swift_beginAccess();
  v34 = *&v63[v75];
  v146 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  v35 = (v34 + 64);
  v76 = 1 << v34[32];
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v11 = v77 & *(v34 + 8);
  a3 = ((v76 + 63) >> 6);
  swift_bridgeObjectRetain_n();
  v24 = 0;
LABEL_26:
  v4 = v143;
LABEL_27:
  if (v11)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v78 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_3;
    }

    if (v78 >= a3)
    {
      break;
    }

    v11 = *(v35 + 8 * v78);
    ++v24;
    if (v11)
    {
      v24 = v78;
LABEL_32:
      v79 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v80 = *(*(v34 + 7) + ((v24 << 9) | (8 * v79)));
      v153 = &unk_1F28D9208;
      v81 = swift_dynamicCastObjCProtocolConditional();
      if (v81)
      {
        v27 = v81;
        MEMORY[0x1B2738320](v80);
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1B1C2CE98();
        }

        sub_1B1C2CEC8();
        v146 = aBlock;
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  v82 = v146;
  v83 = sub_1B1A9547C(v146);
  if (!v83)
  {

LABEL_68:
    v114 = v145;
    v115 = v4;
    v116 = *&v145[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
    v117 = MEMORY[0x1EEE9AC00](v107);
    *(&v127 - 2) = v114;
    *(&v127 - 1) = v115;
    MEMORY[0x1EEE9AC00](v117);
    *(&v127 - 2) = sub_1B1BFB388;
    *(&v127 - 1) = v118;
    os_unfair_lock_lock(v116 + 4);
    sub_1B1BFB494();
    a3 = v129;
    os_unfair_lock_unlock(v116 + 4);
    v119 = sub_1B1A9CB84();
    v120 = swift_allocObject();
    v121 = v128;
    *(v120 + 16) = sub_1B1A95808;
    *(v120 + 24) = v121;

    v122 = sub_1B1A927C4(sub_1B1BFB4C8, v120);

    v123 = swift_allocObject();
    v123[2] = v115;
    v123[3] = v114;
    v123[4] = sub_1B1A95808;
    v123[5] = v121;
    v151 = sub_1B1BFB378;
    v152 = v123;
    aBlock = MEMORY[0x1E69E9820];
    v148 = 1107296256;
    v149 = sub_1B1A955E0;
    v150 = &block_descriptor_489;
    v124 = _Block_copy(&aBlock);

    v125 = v115;
    v126 = v114;

    [v122 speakWithPreviewRequest:v125 reply:v124];
    _Block_release(v124);

    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v24 = v83;
  if (v83 < 1)
  {
    __break(1u);
LABEL_73:
    swift_once();
LABEL_6:
    __swift_project_value_buffer(v24, qword_1ED9A9120);
    v38 = sub_1B1C2C888();
    v39 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1B1A8A000, v38, v39, "Skipped #PreviewRequest: TTS is disabled.", v40, 2u);
      MEMORY[0x1B2739FD0](v40, -1, -1);
    }

    goto LABEL_66;
  }

  v84 = 0;
  v85 = v82 & 0xC000000000000001;
  v138 = v133 + 32;
  v137 = (v133 + 8);
  v136 = (v133 + 16);
  v86 = 1;
  v135 = v82 & 0xC000000000000001;
  v134 = v83;
  do
  {
    if (v85)
    {
      v87 = MEMORY[0x1B2738A20](v84, v82);
    }

    else
    {
      v87 = *(v82 + 8 * v84 + 32);
    }

    v88 = v87;
    swift_getObjectType();
    v89 = AudibleRequestProtocol.audioSessionId.getter();
    if (v89 != sub_1B1AD6C0C())
    {

LABEL_47:
      v82 = v146;
      goto LABEL_50;
    }

    v90 = v88;
    sub_1B1BF2758(v90);

    type metadata accessor for PreviewRequest(0);
    if (!swift_dynamicCastClass())
    {

      __swift_storeEnumTagSinglePayload(v30, 1, 1, v144);
      goto LABEL_49;
    }

    v91 = v90;
    sub_1B1B12A30();

    v92 = v144;
    if (__swift_getEnumTagSinglePayload(v30, 1, v144) == 1)
    {

      v4 = v143;
LABEL_49:
      v82 = v146;
      sub_1B1A90CD8(v30, &unk_1EB761F00, &qword_1B1C36480);
      goto LABEL_50;
    }

    v93 = *v138;
    v94 = v142;
    (*v138)(v142, v30, v92);
    if ((v86 & 1) == 0)
    {
      (*v137)(v94, v92);

      v86 = 0;
      v4 = v143;
      goto LABEL_47;
    }

    (*v136)(v16, v94, v92);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v92);
    v95 = v16;
    v96 = v140;
    sub_1B1B12A30();
    v97 = *(v131 + 12);
    v98 = v139;
    sub_1B1A91CD0(v95, v139, &unk_1EB761F00, &qword_1B1C36480);
    sub_1B1A91CD0(v96, v98 + v97, &unk_1EB761F00, &qword_1B1C36480);
    if (__swift_getEnumTagSinglePayload(v98, 1, v92) != 1)
    {
      v16 = v95;
      v100 = v127;
      sub_1B1A91CD0(v98, v127, &unk_1EB761F00, &qword_1B1C36480);
      if (__swift_getEnumTagSinglePayload(v98 + v97, 1, v92) != 1)
      {
        v102 = v100;
        v103 = v132;
        v93(v132, (v98 + v97), v92);
        sub_1B1BF83C4(&qword_1EB763F78, MEMORY[0x1E6968FB0]);
        v104 = sub_1B1C2CB18();

        v105 = v98;
        v106 = *v137;
        (*v137)(v103, v92);
        sub_1B1A90CD8(v140, &unk_1EB761F00, &qword_1B1C36480);
        sub_1B1A90CD8(v16, &unk_1EB761F00, &qword_1B1C36480);
        v106(v142, v92);
        v106(v102, v92);
        sub_1B1A90CD8(v105, &unk_1EB761F00, &qword_1B1C36480);
        v86 = v104 ^ 1;
        v30 = v141;
        v4 = v143;
        v82 = v146;
        goto LABEL_62;
      }

      sub_1B1A90CD8(v140, &unk_1EB761F00, &qword_1B1C36480);
      sub_1B1A90CD8(v16, &unk_1EB761F00, &qword_1B1C36480);
      v101 = *v137;
      (*v137)(v142, v92);
      v101(v100, v92);
      v30 = v141;
      v82 = v146;
LABEL_59:
      sub_1B1A90CD8(v98, &qword_1EB763F70, &unk_1B1C407E8);
      v86 = 1;
      goto LABEL_60;
    }

    sub_1B1A90CD8(v96, &unk_1EB761F00, &qword_1B1C36480);
    sub_1B1A90CD8(v95, &unk_1EB761F00, &qword_1B1C36480);
    (*v137)(v142, v92);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v98 + v97, 1, v92);
    v16 = v95;
    v30 = v141;
    v82 = v146;
    if (EnumTagSinglePayload != 1)
    {
      goto LABEL_59;
    }

    sub_1B1A90CD8(v98, &unk_1EB761F00, &qword_1B1C36480);
    v86 = 0;
LABEL_60:
    v4 = v143;
LABEL_62:
    v85 = v135;
    v24 = v134;
LABEL_50:
    ++v84;
  }

  while (v24 != v84);

  if (v86)
  {
    goto LABEL_68;
  }

  v108 = v4;
  v38 = sub_1B1C2C888();
  v109 = sub_1B1C2D0D8();

  v110 = os_log_type_enabled(v38, v109);
  a3 = v129;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *v111 = 138543362;
    *(v111 + 4) = v108;
    *v112 = v108;
    v113 = v108;
    _os_log_impl(&dword_1B1A8A000, v38, v109, "#PreviewRequest ignored for %{public}@", v111, 0xCu);
    sub_1B1A90CD8(v112, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v112, -1, -1);
    MEMORY[0x1B2739FD0](v111, -1, -1);
  }

LABEL_66:

  a3[2](a3, 0);

LABEL_69:
  _Block_release(a3);
}

void sub_1B1BF1030()
{
  OUTLINED_FUNCTION_25();
  v199 = v0;
  v200 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F70, &unk_1B1C407E8);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  v192 = v180 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  v12 = OUTLINED_FUNCTION_23(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7_1();
  v193 = v19;
  OUTLINED_FUNCTION_16_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v180 - v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_49_6(v180 - v24);
  v198 = sub_1B1C2C1C8();
  v25 = OUTLINED_FUNCTION_7(v198);
  v187 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6_1();
  v186 = v29 - v30;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49_6(v180 - v32);
  v197 = sub_1B1C2C7F8();
  v33 = OUTLINED_FUNCTION_7(v197);
  v196 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_49_6(v38 - v37);
  v39 = sub_1B1C2C8A8();
  v40 = OUTLINED_FUNCTION_7(v39);
  v188 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16();
  v46 = (v45 - v44);
  v190 = sub_1B1C2C828();
  v47 = OUTLINED_FUNCTION_7(v190);
  v189 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_16();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v180 - v58;
  OUTLINED_FUNCTION_2_11();
  v60 = swift_allocObject();
  *(v60 + 16) = v5;
  *(v60 + 24) = v3;
  v201 = sub_1B1BFB48C;
  v202 = v60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v208 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A96B8 != -1)
    {
      goto LABEL_70;
    }

    while (1)
    {
      sub_1B1A91998();
      OUTLINED_FUNCTION_33_5();
      if (!v148 && (v61 & 1) != 0)
      {
        if (qword_1ED9A9288 == -1)
        {
LABEL_6:
          OUTLINED_FUNCTION_12_1(v39, qword_1ED9A9120);
          v62 = sub_1B1C2C888();
          v63 = sub_1B1C2D0D8();
          if (OUTLINED_FUNCTION_10_2(v63))
          {
            v64 = OUTLINED_FUNCTION_20_0();
            OUTLINED_FUNCTION_15_2(v64);
            OUTLINED_FUNCTION_5_1();
            _os_log_impl(v65, v66, v67, v68, v69, 2u);
            OUTLINED_FUNCTION_9_1();
          }

          (v5)(0);
          goto LABEL_68;
        }

LABEL_72:
        OUTLINED_FUNCTION_3_1();
        goto LABEL_6;
      }

      v184 = v23;
      v181 = v17;
      v185 = v6;
      v182 = v5;
      v183 = v3;
      v80 = mach_absolute_time();
      v81 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      v82 = v200;
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *&v82[v81] = v80;
      v83 = v199;
      v84 = sub_1B1A919FC();
      v86 = v85;
      v87 = &v82[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      v88 = v87[1];
      *v87 = v84;
      v87[1] = v86;

      sub_1B1A91CD0(&v83[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v59, &qword_1EB761DF8, qword_1B1C40850);
      v89 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      v90 = &v82[v89];
      v91 = v82;
      sub_1B1A91B74(v59, v90);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v92 = __swift_project_value_buffer(v39, qword_1ED9A9120);
      (*(v188 + 16))(v46, v92, v39);
      sub_1B1C2C808();
      v93 = v82;
      v94 = v191;
      sub_1B1C2C7E8();
      v46 = sub_1B1C2C818();
      v95 = sub_1B1C2D198();
      v96 = sub_1B1C2D278();
      v5 = v194;
      if (v96)
      {
        v97 = OUTLINED_FUNCTION_21_0();
        v98 = v91;
        v99 = v97;
        *v97 = 134217984;
        *(v97 + 4) = *&v98[v81];

        v100 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v46, v95, v100, "TTSRequestReceived", "id %llu", v99, 0xCu);
        OUTLINED_FUNCTION_72_4();
      }

      else
      {
      }

      v101 = v184;
      v102 = v197;
      v103 = v196;

      (*(v103 + 1))(v94, v102);
      (*(v189 + 8))(v53, v190);
      v104 = v93;
      v105 = sub_1B1C2C888();
      LOBYTE(v103) = sub_1B1C2D0D8();

      if (os_log_type_enabled(v105, v103))
      {
        v106 = OUTLINED_FUNCTION_21_0();
        v46 = OUTLINED_FUNCTION_17_2();
        *v106 = 138543362;
        *(v106 + 4) = v104;
        v46->isa = v104;
        v107 = v104;
        OUTLINED_FUNCTION_5_1();
        _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
        sub_1B1A90CD8(v46, &qword_1EB7625C0, &qword_1B1C37990);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_9_1();
      }

      v180[1] = v92;

      v23 = v101;
      if (!sub_1B1AD6C0C())
      {
        v113 = [objc_opt_self() sharedInstance];
        v114 = [v113 opaqueSessionID];

        sub_1B1BCF6C4(v114);
      }

      v196 = v104;
      v115 = OBJC_IVAR___SiriTTSDaemonSession_requests;
      v116 = v199;
      OUTLINED_FUNCTION_11_0();
      swift_beginAccess();
      v59 = *&v116[v115];
      v6 = MEMORY[0x1E69E7CC0];
      v201 = MEMORY[0x1E69E7CC0];
      v3 = v59 + 64;
      v117 = 1 << v59[32];
      v118 = -1;
      if (v117 < 64)
      {
        v118 = ~(-1 << v117);
      }

      v53 = v118 & *(v59 + 8);
      v17 = (v117 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v39 = 0;
      while (v53)
      {
LABEL_31:
        v120 = __clz(__rbit64(v53));
        v53 &= v53 - 1;
        v121 = *(*(v59 + 7) + ((v39 << 9) | (8 * v120)));
        v207 = &unk_1F28D9208;
        v122 = swift_dynamicCastObjCProtocolConditional();
        if (v122)
        {
          v46 = v122;
          MEMORY[0x1B2738320](v121);
          if (*((v201 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v201 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();
          v6 = v201;
        }
      }

      while (1)
      {
        v119 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v119 >= v17)
        {

          v123 = sub_1B1A9547C(v6);
          if (!v123)
          {

            v125 = v196;
            goto LABEL_67;
          }

          v124 = v123;
          v125 = v196;
          if (v123 < 1)
          {
            __break(1u);
            goto LABEL_72;
          }

          v126 = 0;
          v200 = v6 & 0xC000000000000001;
          v191 = v187 + 4;
          v190 = (v187 + 1);
          v187 += 2;
          v127 = 1;
          v197 = v6;
          v188 = v123;
          while (2)
          {
            if (v200)
            {
              v128 = MEMORY[0x1B2738A20](v126, v6);
            }

            else
            {
              v128 = *(v6 + 8 * v126 + 32);
            }

            v129 = v128;
            swift_getObjectType();
            v130 = AudibleRequestProtocol.audioSessionId.getter();
            if (v130 != sub_1B1AD6C0C())
            {

              goto LABEL_61;
            }

            v131 = v129;
            sub_1B1BF2758(v131);

            type metadata accessor for PreviewRequest(0);
            if (swift_dynamicCastClass())
            {
              v132 = v131;
              sub_1B1B12A30();

              v133 = v198;
              OUTLINED_FUNCTION_171_0(v5, 1);
              if (!v148)
              {
                v134 = *v191;
                v135 = v195;
                (*v191)(v195, v5, v133);
                if (v127)
                {
                  v184 = v134;
                  (*v187)(v23, v135, v133);
                  __swift_storeEnumTagSinglePayload(v23, 0, 1, v133);
                  v136 = v23;
                  v137 = v193;
                  sub_1B1B12A30();
                  v138 = *(v185 + 48);
                  v139 = v192;
                  sub_1B1A91CD0(v136, v192, &unk_1EB761F00, &qword_1B1C36480);
                  v189 = v138;
                  v140 = OUTLINED_FUNCTION_31_9();
                  sub_1B1A91CD0(v140, v141, v142, &qword_1B1C36480);
                  OUTLINED_FUNCTION_171_0(v139, 1);
                  if (v148)
                  {

                    sub_1B1A90CD8(v137, &unk_1EB761F00, &qword_1B1C36480);
                    sub_1B1A90CD8(v136, &unk_1EB761F00, &qword_1B1C36480);
                    v143 = OUTLINED_FUNCTION_128_1();
                    v144(v143);
                    OUTLINED_FUNCTION_171_0(v139 + v189, 1);
                    v23 = v136;
                    v5 = v194;
                    v125 = v196;
                    v124 = v188;
                    if (!v148)
                    {
                      goto LABEL_59;
                    }

                    sub_1B1A90CD8(v139, &unk_1EB761F00, &qword_1B1C36480);
                    v127 = 0;
                  }

                  else
                  {
                    v23 = v136;
                    v5 = v181;
                    v125 = &unk_1EB761F00;
                    sub_1B1A91CD0(v139, v181, &unk_1EB761F00, &qword_1B1C36480);
                    v147 = v189;
                    OUTLINED_FUNCTION_171_0(v139 + v189, 1);
                    if (!v148)
                    {
                      v150 = v5;
                      v151 = v186;
                      (v184)(v186, v139 + v147, v133);
                      sub_1B1BF83C4(&qword_1EB763F78, MEMORY[0x1E6968FB0]);
                      v152 = sub_1B1C2CB18();

                      v153 = *v190;
                      (*v190)(v151, v133);
                      v5 = &qword_1B1C36480;
                      sub_1B1A90CD8(v193, &unk_1EB761F00, &qword_1B1C36480);
                      sub_1B1A90CD8(v23, &unk_1EB761F00, &qword_1B1C36480);
                      v153(v195, v133);
                      v153(v150, v133);
                      v154 = OUTLINED_FUNCTION_159();
                      sub_1B1A90CD8(v154, v155, &qword_1B1C36480);
                      v127 = v152 ^ 1;
                      OUTLINED_FUNCTION_158_0();
                      v6 = v197;
                      v124 = v188;
                      goto LABEL_61;
                    }

                    sub_1B1A90CD8(v193, &unk_1EB761F00, &qword_1B1C36480);
                    sub_1B1A90CD8(v23, &unk_1EB761F00, &qword_1B1C36480);
                    v149 = *v190;
                    (*v190)(v195, v133);
                    v149(v5, v133);
                    OUTLINED_FUNCTION_158_0();
                    v124 = v188;
LABEL_59:
                    sub_1B1A90CD8(v139, &qword_1EB763F70, &unk_1B1C407E8);
                    v127 = 1;
                  }
                }

                else
                {
                  v145 = OUTLINED_FUNCTION_128_1();
                  v146(v145);

                  v127 = 0;
                  v125 = v196;
                }

                v6 = v197;
LABEL_61:
                if (v124 == ++v126)
                {

                  if ((v127 & 1) == 0)
                  {
                    v157 = v125;
                    v158 = sub_1B1C2C888();
                    v159 = sub_1B1C2D0D8();

                    if (os_log_type_enabled(v158, v159))
                    {
                      v160 = OUTLINED_FUNCTION_21_0();
                      v161 = OUTLINED_FUNCTION_17_2();
                      *v160 = 138543362;
                      *(v160 + 4) = v157;
                      *v161 = v157;
                      v162 = v157;
                      _os_log_impl(&dword_1B1A8A000, v158, v159, "#PreviewRequest ignored for %{public}@", v160, 0xCu);
                      sub_1B1A90CD8(v161, &qword_1EB7625C0, &qword_1B1C37990);
                      OUTLINED_FUNCTION_10_1();
                      OUTLINED_FUNCTION_11_23();
                    }

                    (v182)(0);
                    goto LABEL_68;
                  }

LABEL_67:
                  v163 = v125;
                  v164 = v199;
                  v165 = *&v199[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
                  MEMORY[0x1EEE9AC00](v156);
                  OUTLINED_FUNCTION_65_3();
                  *(v166 - 16) = v164;
                  *(v166 - 8) = v163;
                  MEMORY[0x1EEE9AC00](v167);
                  OUTLINED_FUNCTION_66_5();
                  *(v168 - 16) = sub_1B1BFB388;
                  *(v168 - 8) = v169;
                  os_unfair_lock_lock(v165 + 4);
                  sub_1B1BFB494();
                  os_unfair_lock_unlock(v165 + 4);
                  v170 = sub_1B1A9CB84();
                  OUTLINED_FUNCTION_2_11();
                  v171 = swift_allocObject();
                  v172 = v182;
                  v173 = v183;
                  *(v171 + 16) = v182;
                  *(v171 + 24) = v173;

                  v174 = sub_1B1A927C4(sub_1B1BFB4C8, v171);

                  OUTLINED_FUNCTION_38_1();
                  v175 = swift_allocObject();
                  v175[2] = v163;
                  v175[3] = v164;
                  v175[4] = v172;
                  v175[5] = v173;
                  v205 = sub_1B1BF83B8;
                  v206 = v175;
                  v201 = MEMORY[0x1E69E9820];
                  v202 = 1107296256;
                  OUTLINED_FUNCTION_13_1();
                  v203 = v176;
                  v204 = &block_descriptor_89;
                  v177 = _Block_copy(&v201);

                  v178 = v163;
                  v179 = v164;

                  [v174 speakWithPreviewRequest:v178 reply:v177];
                  _Block_release(v177);
                  swift_unknownObjectRelease();
                  goto LABEL_68;
                }

                continue;
              }

              v6 = v197;
            }

            else
            {

              __swift_storeEnumTagSinglePayload(v5, 1, 1, v198);
            }

            break;
          }

          sub_1B1A90CD8(v5, &unk_1EB761F00, &qword_1B1C36480);
          goto LABEL_61;
        }

        v53 = *&v3[8 * v119];
        ++v39;
        if (v53)
        {
          v39 = v119;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_70:
      OUTLINED_FUNCTION_5_27();
    }
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  OUTLINED_FUNCTION_12_1(v39, qword_1ED9A9120);
  v70 = sub_1B1C2C888();
  v71 = sub_1B1C2D0C8();
  if (OUTLINED_FUNCTION_10_2(v71))
  {
    v72 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_15_2(v72);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v73, v74, v75, v76, v77, 2u);
    OUTLINED_FUNCTION_9_1();
  }

  v78 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v79 = OUTLINED_FUNCTION_3_27();
  (v5)();

LABEL_68:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BF2130(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = *&a2[v4];
  v6 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  v7 = a2;
  v8 = *(a1 + v6);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  sub_1B1AD5E68();
  *(a1 + v6) = v10;
  return swift_endAccess();
}

void sub_1B1BF21E8(uint64_t a1, void (*a2)(void *))
{
  OUTLINED_FUNCTION_163_0();

  OUTLINED_FUNCTION_96_3("sirittsd connection error: ");
  v4 = sub_1B1C2D828();
  MEMORY[0x1B27381B0](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B1C2CB58();
  *(inited + 40) = v7;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v16)
  {
    v9 = v15;
  }

  else
  {
    v9 = 0;
  }

  if (v16)
  {
    v10 = v16;
  }

  else
  {
    v10 = v2;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;

  v11 = OUTLINED_FUNCTION_146_0();
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v13 = OUTLINED_FUNCTION_33_10();
  sub_1B1B1AE5C(v13, v14, -9, v11);
  OUTLINED_FUNCTION_7_13();

  a2(v8);
}

uint64_t sub_1B1BF2324(id a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v9 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v10 = a1;
    v11 = a2;
    v12 = sub_1B1C2C888();
    v13 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = a4;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v14 = 134218242;
      v17 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v14 + 4) = *&v11[v17];

      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v18 = sub_1B1C2D828();
      v20 = sub_1B1A930E4(v18, v19, &v31);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_1B1A8A000, v12, v13, "#Error #PreviewRequest id %llu, error: %s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v21 = v16;
      a4 = v15;
      MEMORY[0x1B2739FD0](v21, -1, -1);
      MEMORY[0x1B2739FD0](v14, -1, -1);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v22 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v22, qword_1ED9A9120);
    v12 = a2;
    v23 = sub_1B1C2C888();
    v24 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v25 + 4) = *(v12 + v26);

    _os_log_impl(&dword_1B1A8A000, v23, v24, "#Success #PreviewRequest id %llu", v25, 0xCu);
    MEMORY[0x1B2739FD0](v25, -1, -1);
  }

LABEL_13:
  v28 = *(a3 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  v29 = MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  os_unfair_lock_lock(v28 + 4);
  sub_1B1BFB494();
  os_unfair_lock_unlock(v28 + 4);
  return a4(a1);
}

void sub_1B1BF26B0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(a2 + v3);
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1A971C8();
  v6 = v5;
  swift_endAccess();
}

uint64_t sub_1B1BF27E8(void *a1, const char *a2, SEL *a3)
{
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v7 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v7, qword_1ED9A9120);
  v8 = a1;
  v9 = sub_1B1C2C888();
  v10 = sub_1B1C2D0D8();

  if (OUTLINED_FUNCTION_124_0())
  {
    OUTLINED_FUNCTION_21_0();
    v11 = OUTLINED_FUNCTION_69_3();
    *v3 = 138412290;
    *(v3 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&dword_1B1A8A000, v9, v10, a2, v3, 0xCu);
    sub_1B1A90CD8(v11, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_45_6();
    OUTLINED_FUNCTION_39_8();
  }

  v13 = sub_1B1A9CB84();
  v14 = *&v13[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  [v14 *a3];

  return swift_unknownObjectRelease();
}

void sub_1B1BF2A24()
{
  OUTLINED_FUNCTION_62();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v0;
  aBlock = sub_1B1BF840C;
  v25 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v30 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_136_0())
  {

    v9 = sub_1B1A9CB84();
    v10 = *&v9[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
    swift_unknownObjectRetain();

    sub_1B1A91CD0(v1 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    v11 = sub_1B1C2C478();
    v12 = 0;
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) != 1)
    {
      v12 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1(v11);
      v14 = *(v13 + 8);
      v15 = OUTLINED_FUNCTION_159();
      v16(v15);
    }

    v28 = v2;
    v29 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    OUTLINED_FUNCTION_12_20();
    v26 = v17;
    v27 = &block_descriptor_95_0;
    v18 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_149(v10, sel_isSpeakingWithAccessoryId_reply_);
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v19 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v19, qword_1ED9A9120);
    v12 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v20))
    {
      v21 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v21);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v22, v23, "isSpeaking: requires correct parameter");
      OUTLINED_FUNCTION_9_1();
    }
  }
}

uint64_t sub_1B1BF2CA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1B1BF2D2C()
{
  v5 = v1;
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v0;
  aBlock = sub_1B1BF8438;
  v24 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764248, &qword_1B1C410A0);
  v29 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    static Logger.log(_:thresholdFrequency:)(0xD000000000000014, 0x80000001B1C53640, 1.0);
    v11 = sub_1B1A9CB84();
    OUTLINED_FUNCTION_2_11();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_143_1(v12);
    v13 = sub_1B1A927C4(sub_1B1BF8468, v4);

    sub_1B1A91CD0(v5 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    sub_1B1C2C478();
    v14 = OUTLINED_FUNCTION_7_13();
    v15 = 0;
    if (__swift_getEnumTagSinglePayload(v14, 1, v5) != 1)
    {
      v15 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1(v5);
      (*(v16 + 8))(v3, v5);
    }

    v27 = v2;
    v28 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1B1BF3008;
    v26 = &block_descriptor_104;
    v17 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_149(v13, sel_getAudioPowerWithAccessoryId_reply_);
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v18 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v18, qword_1ED9A9120);
    v15 = sub_1B1C2C888();
    v19 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_82_3(v19))
    {
      v20 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v20);
      OUTLINED_FUNCTION_44_6(&dword_1B1A8A000, v21, v22, "getAudioPower: requires correct parameter");
      OUTLINED_FUNCTION_9_1();
    }
  }
}

uint64_t sub_1B1BF3008(uint64_t a1, float a2, float a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v5(v7, a2, a3);
}

uint64_t sub_1B1BF3098(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_17();
  *(swift_allocObject() + 16) = v8;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_67_0();
  a6(v10);
}

void sub_1B1BF3124(uint64_t a1, void (**a2)(void, void), float a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B1A95808;
  *(v13 + 24) = v12;
  aBlock = sub_1B1BFB48C;
  v33 = v13;
  _Block_copy(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v38 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v14, qword_1ED9A9120);
    v15 = sub_1B1C2C888();
    v16 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = a3;
      *(v17 + 12) = 2048;
      *(v17 + 14) = a4;
      _os_log_impl(&dword_1B1A8A000, v15, v16, "Start #AdjustVolume, volume: %f, rampTime: %f", v17, 0x16u);
      MEMORY[0x1B2739FD0](v17, -1, -1);
    }

    v18 = sub_1B1A9CB84();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B1A95808;
    *(v19 + 24) = v12;

    v20 = sub_1B1A927C4(sub_1B1B29EE4, v19);

    sub_1B1A91CD0(a1 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v11, &qword_1EB761DF8, qword_1B1C40850);
    v21 = sub_1B1C2C478();
    v22 = 0;
    if (__swift_getEnumTagSinglePayload(v11, 1, v21) != 1)
    {
      v22 = sub_1B1C2C448();
      (*(*(v21 - 8) + 8))(v11, v21);
    }

    v36 = sub_1B1A95808;
    v37 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1B1A955E0;
    v35 = &block_descriptor_461;
    v23 = _Block_copy(&aBlock);

    *&v24 = a3;
    [v20 adjustVolumeWithAccessoryId:v22 volume:v23 rampTime:v24 didFinish:a4];
    _Block_release(v23);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v25 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v25, qword_1ED9A9120);
    v26 = sub_1B1C2C888();
    v27 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B1A8A000, v26, v27, "adjustVolume:rampTime:didFinish: requires correct parameters", v28, 2u);
      MEMORY[0x1B2739FD0](v28, -1, -1);
    }

    v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v30 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v22 = sub_1B1C2C048();
    (a2)[2](a2, v22);
  }

  _Block_release(a2);
}

void sub_1B1BF3620()
{
  v5 = v1;
  OUTLINED_FUNCTION_62();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_2_11();
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v0;
  aBlock = sub_1B1BFB48C;
  v43 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v48 = sub_1B1C2D7F8();
  if (OUTLINED_FUNCTION_47_7())
  {

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v15 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v15, qword_1ED9A9120);
    v16 = sub_1B1C2C888();
    v17 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v16, v17))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      *(v4 + 4) = v9;
      *(v4 + 12) = 2048;
      *(v4 + 14) = v7;
      OUTLINED_FUNCTION_17_19();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      OUTLINED_FUNCTION_39_8();
    }

    v23 = sub_1B1A9CB84();
    OUTLINED_FUNCTION_2_11();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_143_1(v24);
    v25 = sub_1B1A927C4(sub_1B1B29D3C, v4);

    sub_1B1A91CD0(v5 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v3, &qword_1EB761DF8, qword_1B1C40850);
    v26 = sub_1B1C2C478();
    v27 = 0;
    if (__swift_getEnumTagSinglePayload(v3, 1, v26) != 1)
    {
      v27 = sub_1B1C2C448();
      OUTLINED_FUNCTION_59_1(v26);
      (*(v28 + 8))(v3, v26);
    }

    v46 = v2;
    v47 = v0;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v44 = v29;
    v45 = &block_descriptor_114;
    v30 = _Block_copy(&aBlock);

    *&v31 = v9;
    [v25 adjustVolumeWithAccessoryId:v27 volume:v30 rampTime:v31 didFinish:v7];
    _Block_release(v30);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v32 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v32, qword_1ED9A9120);
    v33 = sub_1B1C2C888();
    v34 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v34))
    {
      v35 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_49_7(v35);
      OUTLINED_FUNCTION_7_24();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v27 = OUTLINED_FUNCTION_3_27();
    v2();
  }
}

void sub_1B1BF3A44(void *a1, uint64_t a2, void (**a3)(void, void, double))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFAC54;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3F0;
  v35 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764250, &qword_1B1C410A8);
  v40 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v19 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v19, qword_1ED9A9120);
      v20 = a1;
      v21 = sub_1B1C2C888();
      v22 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        aBlock = v33;
        *v23 = 136446210;
        v24 = [v20 description];
        v25 = sub_1B1C2CB58();
        v27 = v26;

        v28 = sub_1B1A930E4(v25, v27, &aBlock);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_1B1A8A000, v21, v22, "Start #EstimateDuration %{public}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1B2739FD0](v33, -1, -1);
        MEMORY[0x1B2739FD0](v23, -1, -1);
      }

      v29 = sub_1B1A9CB84();
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1B1BFAC54;
      *(v30 + 24) = v5;

      v31 = sub_1B1A927C4(sub_1B1BFB488, v30);

      v38 = sub_1B1BFAC54;
      v39 = v5;
      aBlock = MEMORY[0x1E69E9820];
      v35 = 1107296256;
      v36 = sub_1B1BF4390;
      v37 = &block_descriptor_446;
      v32 = _Block_copy(&aBlock);

      [v31 estimateDurationWithRequest:v20 reply:v32];
      _Block_release(v32);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v8 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "Skipped #EstimateDuration: TTS is disabled.", v11, 2u);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      a3[2](a3, 0, 0.0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    v13 = sub_1B1C2C888();
    v14 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B1A8A000, v13, v14, "estimateDurationWithRequest:didFinish: requires correct parameters", v15, 2u);
      MEMORY[0x1B2739FD0](v15, -1, -1);
    }

    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v18 = sub_1B1C2C048();
    (a3)[2](a3, v18, 0.0);
  }

  _Block_release(a3);
}

void sub_1B1BF4390(uint64_t a1, void *a2, double a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void sub_1B1BF4424(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a2 + 16))(a2, a3);
}

void sub_1B1BF4498(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFAC14;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3D0;
  v37 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764258, &qword_1B1C410B0);
  v42 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v7 == 2 || (v7 & 1) == 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v20 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v20, qword_1ED9A9120);
      v21 = a1;
      v22 = sub_1B1C2C888();
      v23 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock = v35;
        *v24 = 136315138;
        v25 = [v21 description];
        v26 = sub_1B1C2CB58();
        v28 = v27;

        v29 = sub_1B1A930E4(v26, v28, &aBlock);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_1B1A8A000, v22, v23, "#TextToPhoneme %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x1B2739FD0](v35, -1, -1);
        MEMORY[0x1B2739FD0](v24, -1, -1);
      }

      v30 = sub_1B1A9CB84();
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1B1BFAC14;
      *(v31 + 24) = v5;

      v32 = sub_1B1A927C4(sub_1B1BFB484, v31);

      v33 = swift_allocObject();
      *(v33 + 16) = sub_1B1BFAC14;
      *(v33 + 24) = v5;
      v40 = sub_1B1BFB4C4;
      v41 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1B1BF4E70;
      v39 = &block_descriptor_432;
      v34 = _Block_copy(&aBlock);

      [v32 textToPhonemeWithRequest:v21 reply:v34];
      _Block_release(v34);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v8 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v8, qword_1ED9A9120);
      v9 = sub_1B1C2C888();
      v10 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1B1A8A000, v9, v10, "Skipped #TextToPhoneme: TTS is disabled.", v11, 2u);
        MEMORY[0x1B2739FD0](v11, -1, -1);
      }

      v12 = sub_1B1C2CB28();
      (a3)[2](a3, v12, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v13 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v13, qword_1ED9A9120);
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "textToPhonemeWithRequest:didFinish: requires correct parameters", v16, 2u);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v19 = sub_1B1C2C048();
    (a3)[2](a3, 0, v19);
  }

  _Block_release(a3);
}

uint64_t sub_1B1BF4E70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1B1C2CB58();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1B1BF4F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1B1C2CB28();
    if (a3)
    {
LABEL_3:
      v7 = sub_1B1C2C048();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1B1BF4FB0(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  _Block_copy(a3);
  type metadata accessor for SynthesisVoice();
  v23[0] = sub_1B1C2CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764260, &unk_1B1C410B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B1A95AD0;
  *(v5 + 24) = v4;
  v23[0] = sub_1B1BFB48C;
  v23[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v23[2] = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    sub_1B1AF64DC();
    if (v6)
    {
      sub_1B1BF5B60();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v14 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v14, qword_1ED9A9120);

      v15 = sub_1B1C2C888();
      v16 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23[0] = v18;
        *v17 = 136315138;

        v19 = sub_1B1A930E4(0xD00000000000003ALL, 0x80000001B1C536B0, v23);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_1B1A8A000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B2739FD0](v18, -1, -1);
        MEMORY[0x1B2739FD0](v17, -1, -1);
      }

      sub_1B1A9EC9C();
      v20 = swift_allocError();
      *v21 = 1;
      *(v21 + 8) = 0xD00000000000003ALL;
      *(v21 + 16) = 0x80000001B1C536B0;
      v22 = sub_1B1C2C048();
      (a3)[2](a3, v22);
    }
  }

  else
  {
LABEL_5:
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = sub_1B1C2C888();
    v9 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B1A8A000, v8, v9, "subscribeWithVoices:reply: requires correct parameters", v10, 2u);
      MEMORY[0x1B2739FD0](v10, -1, -1);
    }

    v11 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v12 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v13 = sub_1B1C2C048();
    (a3)[2](a3, v13);
  }

  _Block_release(a3);
}

void sub_1B1BF5410(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  type metadata accessor for SynthesisVoice();
  v26[0] = sub_1B1C2CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764260, &unk_1B1C410B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_2_11();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v26[0] = sub_1B1BFB48C;
  v26[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v26[2] = OUTLINED_FUNCTION_78_2();
  if (OUTLINED_FUNCTION_136_0())
  {

    sub_1B1AF64DC();
    if (v6)
    {
      sub_1B1BF5B60();
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v18 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v18, qword_1ED9A9120);

      v19 = sub_1B1C2C888();
      v20 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_21_0();
        v22 = OUTLINED_FUNCTION_19_0();
        v26[0] = v22;
        *v21 = 136315138;

        v23 = sub_1B1A930E4(0xD00000000000003ALL, 0x80000001B1C536B0, v26);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1B1A8A000, v19, v20, "%s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        OUTLINED_FUNCTION_39_8();
        OUTLINED_FUNCTION_29_1();
      }

      sub_1B1A9EC9C();
      v24 = swift_allocError();
      *v25 = 1;
      *(v25 + 8) = 0xD00000000000003ALL;
      *(v25 + 16) = 0x80000001B1C536B0;
      a2();
    }
  }

  else
  {
LABEL_5:
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v7 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v7, qword_1ED9A9120);
    v8 = sub_1B1C2C888();
    v9 = sub_1B1C2D0C8();
    if (OUTLINED_FUNCTION_22_8(v9))
    {
      v10 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_49_7(v10);
      OUTLINED_FUNCTION_7_24();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = OUTLINED_FUNCTION_3_27();
    a2();
  }
}

uint64_t sub_1B1BF57B4()
{
  OUTLINED_FUNCTION_160_0();
  v1 = SecTaskCreateFromSelf(0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CB28();
  if (!SecTaskCopyValueForEntitlement(v2, v3, 0))
  {

    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  v6 = sub_1B1AF64DC();
  if (v7)
  {
    if (v6 == 0xD000000000000016 && v7 == 0x80000001B1C439D0)
    {

      swift_unknownObjectRelease();

      return 1;
    }

    v9 = sub_1B1C2D7A8();

    if (v9)
    {

      swift_unknownObjectRelease();
      return 1;
    }
  }

  if (v0)
  {
    OUTLINED_FUNCTION_15();
    v11 = sub_1B1C2CB28();
    v0 = [v5 containsObject_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v0;
}

void sub_1B1BF5950(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  OUTLINED_FUNCTION_160_0();
  if (sub_1B1BF57B4())
  {
    OUTLINED_FUNCTION_15();

    sub_1B1BF5B60();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v5 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v5, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    sub_1B1C2D0D8();

    if (OUTLINED_FUNCTION_124_0())
    {
      v7 = OUTLINED_FUNCTION_21_0();
      v24 = OUTLINED_FUNCTION_19_0();
      *v7 = 136446210;
      v8 = OUTLINED_FUNCTION_15();
      *(v7 + 4) = sub_1B1A930E4(v8, v9, v10);
      OUTLINED_FUNCTION_17_19();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      OUTLINED_FUNCTION_45_6();
      OUTLINED_FUNCTION_39_8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1C361C0;
    v17 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1B1C2CB58();
    *(inited + 40) = v18;
    v19 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x80000001B1C536F0;

    v20 = OUTLINED_FUNCTION_146_0();
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = OUTLINED_FUNCTION_33_10();
    sub_1B1B1AE5C(v22, v23, 500, v20);
    OUTLINED_FUNCTION_7_13();

    a4(v19);
  }
}

void sub_1B1BF5B60()
{
  OUTLINED_FUNCTION_25();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_35();
  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v17 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v17, qword_1ED9A9120);

  v18 = sub_1B1C2C888();
  v19 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v18, v19))
  {
    v40 = v6;
    v20 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v20 = 136446466;
    v21 = type metadata accessor for SynthesisVoice();
    v22 = MEMORY[0x1B2738350](v8, v21);
    v24 = v10;
    v25 = v12;
    v26 = v4;
    v27 = sub_1B1A930E4(v22, v23, v41);

    *(v20 + 4) = v27;
    v4 = v26;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_1B1A930E4(v25, v24, v41);
    _os_log_impl(&dword_1B1A8A000, v18, v19, "#SubscribeVoice voices: %{public}s, clientId: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    v6 = v40;
    OUTLINED_FUNCTION_11();
  }

  v28 = sub_1B1A9CB84();
  v29 = *&v28[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  type metadata accessor for SynthesisVoice();
  v30 = sub_1B1C2CE68();
  v31 = sub_1B1C2CB28();
  sub_1B1A91CD0(v2 + OBJC_IVAR___SiriTTSDaemonSession_accessoryId, v1, &qword_1EB761DF8, qword_1B1C40850);
  sub_1B1C2C478();
  v32 = OUTLINED_FUNCTION_104();
  if (__swift_getEnumTagSinglePayload(v32, 1, v2) == 1)
  {
    sub_1B1A90CD8(v1, &qword_1EB761DF8, qword_1B1C40850);
    v33 = 0;
  }

  else
  {
    sub_1B1C2C438();
    OUTLINED_FUNCTION_59_1(v2);
    v35 = *(v34 + 8);
    v36 = OUTLINED_FUNCTION_33();
    v37(v36);
    v33 = sub_1B1C2CB28();
  }

  v41[4] = v6;
  v41[5] = v4;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v41[2] = v38;
  v41[3] = &block_descriptor_574;
  v39 = _Block_copy(v41);

  [v29 subscribeWithVoices:v30 clientId:v31 accessoryId:v33 reply:v39];
  _Block_release(v39);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BF62B4(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABDC;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3EC;
  v26 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764280, &qword_1B1C410E0);
  v31 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #SynthesisVoice voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABDC;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB480, v15);

    v29 = sub_1B1BFABDC;
    v30 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B1BF698C;
    v28 = &block_descriptor_393;
    v17 = _Block_copy(&aBlock);

    [v16 getSynthesisVoiceMatching:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "getSynthesisVoiceMatching:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v24 = sub_1B1C2C048();
    (a3)[2](a3, 0, v24);
  }

  _Block_release(a3);
}

void sub_1B1BF698C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1B1BF6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1B1BF6AA0(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFB47C;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB490;
  v23 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v28 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #PhaticCapability voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFB47C;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB4D0, v15);

    v26 = sub_1B1BFB47C;
    v27 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B1BF2CA4;
    v25 = &block_descriptor_379;
    v17 = _Block_copy(&aBlock);

    [v16 queryPhaticCapabilityWithVoice:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "queryPhaticCapabilityWithVoice:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1B1BF7118(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABC4;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB490;
  v23 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764240, &qword_1B1C41098);
  v28 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "#queryWordTimingSupport voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABC4;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB4D0, v15);

    v26 = sub_1B1BFABC4;
    v27 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B1BF2CA4;
    v25 = &block_descriptor_364;
    v17 = _Block_copy(&aBlock);

    [v16 queryWordTimingSupportWithVoice:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "queryWordTimingSupportWithVoice:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    a3[2](a3, 0);
  }

  _Block_release(a3);
}

void sub_1B1BF7790(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B1BFABBC;
  *(v6 + 24) = v5;
  aBlock = sub_1B1BFB3E8;
  v26 = v6;
  _Block_copy(a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764288, &qword_1B1C410E8);
  v31 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = sub_1B1C2C888();
    v10 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1B1A8A000, v9, v10, "Get #isANEModelCompiled voice: %{public}@", v11, 0xCu);
      sub_1B1A90CD8(v12, &qword_1EB7625C0, &qword_1B1C37990);
      MEMORY[0x1B2739FD0](v12, -1, -1);
      MEMORY[0x1B2739FD0](v11, -1, -1);
    }

    v14 = sub_1B1A9CB84();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B1BFABBC;
    *(v15 + 24) = v5;

    v16 = sub_1B1A927C4(sub_1B1BFB478, v15);

    v29 = sub_1B1BFABBC;
    v30 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B1B2D294;
    v28 = &block_descriptor_350;
    v17 = _Block_copy(&aBlock);

    [v16 isANEModelCompiledMatching:v8 reply:v17];
    _Block_release(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1A8A000, v19, v20, "isANEModelCompiledMatching:reply: requires correct parameters", v21, 2u);
      MEMORY[0x1B2739FD0](v21, -1, -1);
    }

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v24 = sub_1B1C2C048();
    (a3)[2](a3, 0, v24);
  }

  _Block_release(a3);
}

void sub_1B1BF7E80(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B1C2C048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1B1BF7EF0()
{
  v0 = sub_1B1C2C9F8();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_1();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = dispatch_semaphore_create(0);
  v13 = sub_1B1A9CB84();
  v14 = *&v13[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_asyncProxy];
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_17();
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  aBlock[4] = sub_1B1BF8674;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  aBlock[2] = v16;
  aBlock[3] = &block_descriptor_205;
  v17 = _Block_copy(aBlock);
  v18 = v12;

  [v14 clearDeviceCacheWithDidFinish_];
  _Block_release(v17);
  swift_unknownObjectRelease();
  sub_1B1C2C9E8();
  sub_1B1C2CA18();
  v19 = *(v3 + 8);
  v19(v8, v0);
  sub_1B1C2D1A8();

  return (v19)(v11, v0);
}

uint64_t sub_1B1BF8120()
{
  v0 = sub_1B1A9CB84();
  v1 = *&v0[OBJC_IVAR____TtC14SiriTTSService16DaemonConnection_syncProxy];
  swift_unknownObjectRetain();

  [v1 killDaemon];

  return swift_unknownObjectRelease();
}

unint64_t sub_1B1BF81CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR___SiriTTSDaemonSession_requests;
  OUTLINED_FUNCTION_6_27();
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (*(v8 + 16) && (result = sub_1B1A954B0(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v8 + 56) + 8 * result);
    result = v10;
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
  return result;
}

void *sub_1B1BF8298(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B1BF82F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B1BF833C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1BF83C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1BF840C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1B1BF8438(float *a1, float *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1B1BF8468()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(-120.0, -120.0);
}

uint64_t sub_1B1BF849C(double *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a2, *a1);
}

uint64_t sub_1B1BF84CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0.0);
}

uint64_t sub_1B1BF84FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, 0, a1);
}

uint64_t sub_1B1BF8530()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1BF8558()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B1BF8588(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1B1BF85B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_1B1BF85E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_1B1BF8614(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1B1BF8644(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

void *sub_1B1BF8698@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_1B1BF8298(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1B1BF86C4(void *a1)
{
  v2 = type metadata accessor for SiriAnalyticsHandler();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = a1;
  sub_1B1BFAC5C();
  v7[0] = 3;
  v8 = 0;
  v9 = 0;
  sub_1B1BFE998(v7);
}

unint64_t sub_1B1BF8780()
{
  result = qword_1EB764290;
  if (!qword_1EB764290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764290);
  }

  return result;
}

unint64_t sub_1B1BF87D8()
{
  result = qword_1EB764298;
  if (!qword_1EB764298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB764298);
  }

  return result;
}

uint64_t sub_1B1BFAC1C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2);
}

void sub_1B1BFAC5C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v5 = OUTLINED_FUNCTION_23(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_1();
  v59 = v12;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1B1C2C478();
  v17 = OUTLINED_FUNCTION_7(v16);
  v60 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_1();
  v56 = (v21 - v22);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_1();
  v57 = v24;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_1();
  v58 = v26;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId);
  sub_1B1C2C468();
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId);
  v31 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics;
  *(v1 + v31) = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = 0;
  v32 = (v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo);
  *v32 = 0u;
  v32[1] = 0u;
  *(v32 + 28) = 0u;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues) = v30;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 0;
  v33 = (v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
  *v33 = 0;
  v33[1] = 0;
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId);
  OUTLINED_FUNCTION_59_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = 0;
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp) = 0;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  v34 = objc_opt_self();
  v35 = [v34 sharedAnalytics];
  v36 = [v35 defaultMessageStream];

  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) = v36;
  v37 = [objc_opt_self() loggerForCurrentProcess];
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger) = v37;
  v38 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x108))();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    v39 = v15;
  }

  else
  {
    v55 = v10;
    v40 = *(v60 + 32);
    v40(v29, v15, v16);
    v41 = sub_1B1C2C448();
    v42 = [v34 derivedIdentifierForComponentName:13 fromSourceIdentifier:v41];

    if (!v42)
    {
      (*(v60 + 8))(v29, v16);

      goto LABEL_9;
    }

    v54 = v29;
    v43 = v60;
    v44 = v57;
    sub_1B1C2C458();

    v45 = v58;
    v46 = (v40)(v58, v44, v16);
    v47 = v59;
    (*((*v38 & *v3) + 0x120))(v46);

    if (__swift_getEnumTagSinglePayload(v47, 1, v16) != 1)
    {
      v49 = v56;
      v40(v56, v47, v16);
      v50 = v55;
      v40(v55, v45, v16);
      OUTLINED_FUNCTION_100_3();
      v51 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v50, v1 + v51);
      swift_endAccess();
      v40(v50, v54, v16);
      OUTLINED_FUNCTION_100_3();
      v52 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v50, v1 + v52);
      swift_endAccess();
      v40(v50, v49, v16);
      OUTLINED_FUNCTION_100_3();
      v53 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
      OUTLINED_FUNCTION_15_1();
      swift_beginAccess();
      sub_1B1A91B74(v50, v1 + v53);
      swift_endAccess();
      goto LABEL_9;
    }

    v48 = *(v43 + 8);
    v48(v45, v16);
    v48(v54, v16);
    v39 = v47;
  }

  sub_1B1A90CD8(v39, &qword_1EB761DF8, qword_1B1C40850);
LABEL_9:
  OUTLINED_FUNCTION_26_1();
}

id sub_1B1BFB2B8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1B1A9BD14();
  *a1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_4()
{
}

uint64_t OUTLINED_FUNCTION_78_2()
{

  return sub_1B1C2D7F8();
}

id OUTLINED_FUNCTION_83_3(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return sub_1B1C2CB28();
}

uint64_t OUTLINED_FUNCTION_112_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_121_0()
{
}

float *OUTLINED_FUNCTION_122_1(float *result, float a2)
{
  *result = a2;
  v3 = *(v2 - 264);
  return result;
}

BOOL OUTLINED_FUNCTION_124_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_139_0()
{

  JUMPOUT(0x1B27381B0);
}

uint64_t OUTLINED_FUNCTION_143_1(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

void OUTLINED_FUNCTION_144_1()
{
}

id OUTLINED_FUNCTION_145(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_146_0()
{

  return sub_1B1C2CAB8();
}

uint64_t OUTLINED_FUNCTION_147_0()
{

  return sub_1B1C2C828();
}

BOOL OUTLINED_FUNCTION_151_0()
{

  return os_log_type_enabled(v0, v1);
}

double OUTLINED_FUNCTION_155_0(double *a1, uint64_t *a2)
{
  result = *a1;
  v3 = *a2;
  return result;
}

void OUTLINED_FUNCTION_164_0(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v7, a4, a5, a6, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_165()
{
}

uint64_t OUTLINED_FUNCTION_168()
{

  return sub_1B1C2D1E8();
}

id OUTLINED_FUNCTION_169_0(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_170()
{

  return sub_1B1C2C888();
}

uint64_t OUTLINED_FUNCTION_172_0()
{

  return swift_allocObject();
}

uint64_t sub_1B1BFB7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  result = sub_1B1C2CAB8();
  qword_1EB772EB8 = result;
  return result;
}

uint64_t sub_1B1BFB838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  result = sub_1B1C2CAB8();
  qword_1EB772EC0 = result;
  return result;
}

uint64_t sub_1B1BFB888()
{
  if (qword_1EB761860 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB772EC0;
  if (*(qword_1EB772EC0 + 16) && (v1 = sub_1B1A8EB10(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
  }

  else
  {
    sub_1B1A8EDAC();
    v5 = sub_1B1C2D368();
    if (v5[2])
    {
      v6 = v5[4];
      v7 = v5[5];

      v8 = sub_1B1AE795C(v6, v7, v0);

      if (v8)
      {
        return v8;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }
}

uint64_t sub_1B1BFB9B4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB761858 != -1)
  {
LABEL_35:
    swift_once();
  }

  v4 = sub_1B1AE795C(a1, a2, qword_1EB772EB8);
  if (v4)
  {
    v5 = v4;

    v6 = v5[2];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v5 = swift_allocObject();
    *(v5 + 1) = xmmword_1B1C361C0;
    v5[4] = a1;
    v5[5] = a2;
    v6 = 1;
  }

  v7 = 0;
  v8 = v5 + 5;
  a1 = MEMORY[0x1E69E7CC0];
  a2 = MEMORY[0x1E69E6158];
  v25 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(v8 - 1);
    v9 = *v8;

    v11 = sub_1B1BFB888();

    v12 = *(v11 + 16);
    v13 = *(a1 + 16);
    if (__OFADD__(v13, v12))
    {
      goto LABEL_30;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(a1 + 24) >> 1)
    {
      sub_1B1A9ED54();
      a1 = v14;
    }

    if (*(v11 + 16))
    {
      if ((*(a1 + 24) >> 1) - *(a1 + 16) < v12)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(a1 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_34;
        }

        *(a1 + 16) = v17;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_31;
      }
    }

    v8 += 2;
    ++v7;
  }

  v18 = 0;
  a2 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v19 = *(a1 + 16);
LABEL_20:
  v20 = (a1 + 40 + 16 * v18);
  while (v19 != v18)
  {
    if (v18 >= *(a1 + 16))
    {
      goto LABEL_32;
    }

    v22 = *(v20 - 1);
    v21 = *v20;
    objc_allocWithZone(MEMORY[0x1E696AE70]);

    if (sub_1B1AEDFA4(v22, v21, 0))
    {
      MEMORY[0x1B2738320]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B1C2CE98();
      }

      ++v18;
      sub_1B1C2CEC8();
      v25 = v26;
      goto LABEL_20;
    }

    v20 += 2;
    ++v18;
  }

  result = v24;
  *(v24 + 16) = v25;
  return result;
}

uint64_t sub_1B1BFBCAC()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_18;
  }

  for (result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = sub_1B1C2D468())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F50, &qword_1B1C407E0);
    sub_1B1AEDF30();
    sub_1B1A8EDAC();
    v3 = sub_1B1C2D268();
    v5 = v4;
    result = sub_1B1A9547C(v1);
    if (!result)
    {
      break;
    }

    v6 = result;
    for (i = 0; ; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2738A20](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v11 = sub_1B1C2CB28();
      v12 = [v9 numberOfMatchesInString:v11 options:0 range:{v3, v5}];

      result = v12 > 0;
      if (v12 > 0 || v10 == v6)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

uint64_t sub_1B1BFBE84()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t OspreyTTSPrewarmAction.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  OspreyTTSPrewarmAction.init(pool:)();
  return v0;
}

void *OspreyTTSPrewarmAction.init(pool:)()
{
  v1 = v0;
  type metadata accessor for AsynchronousContext();
  swift_allocObject();
  v0[2] = sub_1B1ADA774();
  v0[4] = MEMORY[0x1E69E7CC0];
  sub_1B1B19360();
  v0[5] = v2;
  v3 = sub_1B1AA1E5C();

  v1[3] = v3;
  return v1;
}

uint64_t OspreyTTSPrewarmAction.deinit()
{
  sub_1B1B3244C();
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return v0;
}

uint64_t OspreyTTSPrewarmAction.__deallocating_deinit()
{
  OspreyTTSPrewarmAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1BFC060()
{
  v1 = v0;
  sub_1B1AAE088(1);
  v2 = *(v0 + 40);

  sub_1B1B29AB0(sub_1B1BFC304, v1);

  if (qword_1ED9A4D38 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_1B1B34180();
}

void sub_1B1BFC15C(void *a1)
{
  sub_1B1AAE088(0);
  if (a1)
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v2 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v2, qword_1ED9A9120);
    v3 = a1;
    oslog = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = sub_1B1C2D828();
      v9 = sub_1B1A930E4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B1A8A000, oslog, v4, "Error in Osprey prewarm: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2739FD0](v6, -1, -1);
      MEMORY[0x1B2739FD0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B1BFC30C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AAE088(0);
  }

  return result;
}

uint64_t sub_1B1BFC394@<X0>(uint64_t *a1@<X8>)
{
  result = OspreyTTSPrewarmAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t SynthesisPrewarmAction.__allocating_init(pool:)()
{
  v0 = swift_allocObject();
  SynthesisPrewarmAction.init(pool:)();
  return v0;
}

uint64_t SynthesisPrewarmAction.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B1BFC534@<X0>(uint64_t *a1@<X8>)
{
  result = SynthesisPrewarmAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

uint64_t static SiriAnalyticsHandler.reportCrash(_:)(void *a1)
{
  swift_getObjectType();

  return sub_1B1BFF370(a1);
}

uint64_t sub_1B1BFC600(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1B1C41470[a1];
  }
}

uint64_t sub_1B1BFC660()
{
  result = sub_1B1ACB6B8(&unk_1F28C03D8);
  qword_1ED9AA4F8 = result;
  return result;
}

uint64_t sub_1B1BFC688()
{
  result = sub_1B1ACB6B8(&unk_1F28C0468);
  qword_1EB772CD8 = result;
  return result;
}

uint64_t SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)(void *a1, char a2)
{
  v4 = [objc_opt_self() sharedAnalytics];
  v5 = [v4 defaultMessageStream];

  v6 = type metadata accessor for SiriAnalyticsHandler();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1B1AF4260(a1, v5, 0, a2);
  return v9;
}

uint64_t sub_1B1BFC750(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_17_1();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + *a2) = mach_absolute_time();
  }

  return result;
}

uint64_t sub_1B1BFC7A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v1;
    v9[1] = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    sub_1B1AC2294(v9);
  }

  return result;
}

uint64_t sub_1B1BFC84C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1ADF440();
  }

  return result;
}

uint64_t sub_1B1BFC8B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_1B1BFC908(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  OUTLINED_FUNCTION_17_1();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4, v5);
  }

  return result;
}

void sub_1B1BFC974()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v7 = sub_1B1C2C478();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v15)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v10 + 16))(v14, v5, v7);
    v16 = v1;
    v17 = v15;
    v18 = sub_1B1AABA20(v14);
    OUTLINED_FUNCTION_35_11(v18, sel_setUuid_);

    v1 = v16;
  }

  [v15 setComponent_];
  v19 = [objc_allocWithZone(MEMORY[0x1E69CF5F8]) init];
  if (v19)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v10 + 16))(v14, v25, v7);
    v20 = v19;
    v21 = sub_1B1AABA20(v14);
    OUTLINED_FUNCTION_51_5(v21, sel_setUuid_);

    [v20 setComponent_];
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v22)
  {
    v23 = v22;
    [v22 setSource_];
    [v23 setTarget_];
    [*(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) emitMessage_];

    v15 = v19;
    v19 = v23;
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFCBC8()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v6 = OUTLINED_FUNCTION_23(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_41_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_1();
  v246 = v10;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_1();
  v259 = v12;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_1();
  v255 = v14;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_1();
  v253 = v16;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_7_1();
  v251 = v18;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v243 - v21;
  v23 = sub_1B1C2C478();
  v24 = OUTLINED_FUNCTION_7(v23);
  v261 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_1();
  v252 = v28 - v29;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_7_1();
  v245 = v31;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7_1();
  v258 = v33;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_7_1();
  v256 = v35;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_1();
  v248 = v37;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_7_1();
  v254 = v39;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_7_1();
  v249 = v41;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_1();
  v250 = v43;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v44);
  v257 = &v243 - v45;
  v46 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v47 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65();
  v48 = *&v4[v47];
  v49 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_66_0();
  v247 = v46;
  *(v46 + v49) = v48;
  if (qword_1ED9A7AC8 != -1)
  {
    swift_once();
  }

  if (byte_1ED9A7AD5 == 1)
  {
    v50 = &v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_65();
    v52 = *v50;
    v51 = *(v50 + 1);
    v53 = (v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
    v54 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);
    *v53 = v52;
    v53[1] = v51;
  }

  v260 = v0;
  v244 = v1;
  v262 = v23;
  if (qword_1ED9A5238 != -1)
  {
    swift_once();
  }

  v55 = qword_1ED9AA4F8;
  v56 = &v4[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
  OUTLINED_FUNCTION_65();
  v58 = *v56;
  v57 = v56[1];

  LOBYTE(v58) = sub_1B1A93A00(v58, v57, v55);

  if (v58)
  {
    v59 = OBJC_IVAR___SiriTTSBaseRequest_logLinkId;
    OUTLINED_FUNCTION_65();
    sub_1B1AADD60(&v4[v59], v22);
    v60 = v262;
    OUTLINED_FUNCTION_48_0(v22, 1, v262);
    if (v61)
    {
      sub_1B1AABFB0(v22);
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v62 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v62, qword_1ED9A9120);
      v63 = sub_1B1C2C888();
      v64 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_81(v64))
      {
        v65 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_57_4(v65);
        OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v66, v67, "Ignore Siri logging due to missing Siri request id");
        OUTLINED_FUNCTION_11_23();
      }

      goto LABEL_107;
    }

    v78 = v22;
    v79 = v261[4];
    v79(v257, v78, v60);
    v80 = objc_opt_self();
    v81 = sub_1B1C2C448();
    v82 = [v80 derivedIdentifierForComponentName:13 fromSourceIdentifier:v81];

    if (!v82)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v118 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v118, qword_1ED9A9120);
      v119 = sub_1B1C2C888();
      v120 = sub_1B1C2D0B8();
      v121 = OUTLINED_FUNCTION_81(v120);
      v122 = v261;
      if (v121)
      {
        v123 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_57_4(v123);
        OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v124, v125, "Unable to obtain TTS id from SiriAnalytics. SELF logging won't be emitted.");
        OUTLINED_FUNCTION_11_23();
      }

      (v122[1])(v257, v262);
      goto LABEL_107;
    }

    v83 = v250;
    sub_1B1C2C458();

    v84 = OBJC_IVAR___SiriTTSBaseRequest_interactionLinkId;
    OUTLINED_FUNCTION_65();
    sub_1B1AADD60(&v4[v84], v2);
    OUTLINED_FUNCTION_48_0(v2, 1, v60);
    v85 = v60;
    if (v61)
    {
      sub_1B1AABFB0(v2);
      if (qword_1ED9A9288 == -1)
      {
LABEL_23:
        v86 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v86, qword_1ED9A9120);
        v87 = sub_1B1C2C888();
        v88 = sub_1B1C2D0B8();
        if (OUTLINED_FUNCTION_81(v88))
        {
          v89 = OUTLINED_FUNCTION_20_0();
          OUTLINED_FUNCTION_57_4(v89);
          OUTLINED_FUNCTION_14_19(&dword_1B1A8A000, v90, v91, "Ignore Siri logging due to missing Siri aceView id");
          OUTLINED_FUNCTION_11_23();
        }

        v92 = v261[1];
        v92(v83, v85);
        v92(v257, v85);
        goto LABEL_107;
      }

LABEL_110:
      OUTLINED_FUNCTION_3_1();
      goto LABEL_23;
    }

    v126 = v2;
    v127 = v79;
    v79(v249, v126, v60);
    v128 = v56[1];
    v129 = v83;
    v130 = v260;
    v131 = (v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
    v132 = *(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);
    *v131 = *v56;
    v131[1] = v128;

    v133 = v251;
    v127(v251, v129, v85);
    v77 = 1;
    OUTLINED_FUNCTION_26_9();
    v134 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v133, v130 + v134);
    swift_endAccess();
    v127(v133, v257, v85);
    OUTLINED_FUNCTION_26_9();
    v135 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v133, v130 + v135);
    swift_endAccess();
    v127(v133, v249, v85);
    v68 = v130;
    OUTLINED_FUNCTION_26_9();
    v136 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
    OUTLINED_FUNCTION_29_12();
    sub_1B1A91B74(v133, v130 + v136);
    swift_endAccess();
    v76 = 0;
    v72 = v258;
    v137 = v259;
  }

  else
  {
    v68 = v260;
    if (qword_1EB761270 != -1)
    {
      swift_once();
    }

    v69 = qword_1EB772CD8;
    v70 = *v56;
    v71 = v56[1];

    LOBYTE(v69) = sub_1B1A93A00(v70, v71, v69);

    v72 = v258;
    if (v69)
    {
      v73 = v56[1];
      v74 = (v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      v75 = *(v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);
      *v74 = *v56;
      v74[1] = v73;

      v76 = 0;
      v77 = 40;
    }

    else
    {
      v77 = 0;
      v76 = 1;
    }

    v85 = v262;
    v137 = v259;
  }

  if (*(v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest))
  {
    goto LABEL_107;
  }

  LODWORD(v257) = v76;
  LODWORD(v250) = v77;
  *(v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 1;
  v93 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  v94 = v253;
  sub_1B1AADD60(&v93[v68], v253);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v85);
  sub_1B1AABFB0(v94);
  if (EnumTagSinglePayload == 1)
  {
    v96 = v254;
    sub_1B1C2C468();
    v97 = v85;
    v98 = v261[2];
    v99 = v251;
    v98(v251, v96, v97);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_67();
    v253 = v93;
    v100 = &v93[v68];
    v101 = v96;
    sub_1B1A91B74(v99, v100);
    swift_endAccess();
    v98(v99, v96, v97);
    OUTLINED_FUNCTION_62_3();
    v102 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId;
    OUTLINED_FUNCTION_67();
    sub_1B1A91B74(v99, v68 + v102);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v103 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v103, qword_1ED9A9120);
    v104 = v248;
    v98(v248, v101, v97);
    v105 = v4;
    v106 = sub_1B1C2C888();
    v107 = sub_1B1C2D098();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v264[0] = v251;
      *v108 = 136315394;
      LODWORD(v249) = v107;
      v109 = *v56;
      v110 = v56[1];

      v111 = sub_1B1A930E4(v109, v110, v264);

      *(v108 + 4) = v111;
      *(v108 + 12) = 2080;
      v112 = sub_1B1C2C438();
      v114 = v113;
      v115 = v261[1];
      v115(v104, v97);
      v116 = sub_1B1A930E4(v112, v114, v264);

      *(v108 + 14) = v116;
      _os_log_impl(&dword_1B1A8A000, v106, v249, "Received request from non-Siri client '%s'. Log with isolated stream id: %s", v108, 0x16u);
      v117 = v251;
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v117, -1, -1);
      MEMORY[0x1B2739FD0](v108, -1, -1);

      v115(v254, v97);
      v137 = v259;
      v68 = v260;
      v85 = v97;
      v93 = v253;
      v72 = v258;
    }

    else
    {

      v138 = v261[1];
      v138(v104, v97);
      v138(v254, v97);
      v85 = v97;
      v93 = v253;
      v72 = v258;
      v137 = v259;
      v68 = v260;
    }
  }

  v139 = v255;
  sub_1B1AADD60(&v93[v68], v255);
  OUTLINED_FUNCTION_48_0(v139, 1, v85);
  if (v61)
  {
    sub_1B1AABFB0(v139);
    goto LABEL_107;
  }

  v140 = v261[4];
  v140(v256, v139, v85);
  if ((v257 & 1) == 0)
  {
    sub_1B1AADD60(&v93[v68], v137);
    OUTLINED_FUNCTION_48_0(v137, 1, v85);
    if (!v61)
    {
      v140(v72, v137, v85);
      v141 = OBJC_IVAR___SiriTTSBaseRequest_logLinkId;
      OUTLINED_FUNCTION_65();
      v142 = &v4[v141];
      v137 = v246;
      sub_1B1AADD60(v142, v246);
      OUTLINED_FUNCTION_48_0(v137, 1, v85);
      if (!v61)
      {
        v143 = v245;
        v140(v245, v137, v85);
        sub_1B1BFC974();
        v144 = v261[1];
        v144(v143, v85);
        v144(v72, v85);
        goto LABEL_49;
      }

      (v261[1])(v72, v85);
    }

    sub_1B1AABFB0(v137);
  }

LABEL_49:
  v263 = &unk_1F28D9340;
  v145 = swift_dynamicCastObjCProtocolConditional();
  v146 = v145;
  if (v145)
  {
    swift_getObjectType();
    v147 = v4;
    v148 = OUTLINED_FUNCTION_24_7();
    v145 = SynthesizingRequestProtocol.voice.getter(v148);
  }

  v149 = *(v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice);
  *(v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = v145;

  v150 = &selRef_array;
  v151 = [objc_allocWithZone(MEMORY[0x1E69CF7A0]) init];
  if (v151)
  {
    v152 = sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    v153 = v151;
    v154 = v252;
    sub_1B1C2C468();
    v259 = v152;
    v155 = sub_1B1AABA20(v154);
    OUTLINED_FUNCTION_51_5(v155, sel_setLinkId_);

    v156 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
    v83 = v153;
    v157 = [v156 init];
    OUTLINED_FUNCTION_51_5(v157, sel_setRequestedVoiceContext_);

    v158 = [v83 requestedVoiceContext];
    if (v158)
    {
      v159 = v158;
      if (v146)
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_34_11();
        swift_unknownObjectRetain();
        v160 = OUTLINED_FUNCTION_24_7();
        SynthesizingRequestProtocol.voice.getter(v160);
        OUTLINED_FUNCTION_61_5();
        v161 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_65();
        v162 = *&v93[v161];

        OUTLINED_FUNCTION_38_10();
      }

      else
      {
        v162 = 0;
      }

      [v159 setVoiceType_];
    }

    v163 = [v83 requestedVoiceContext];
    if (v163)
    {
      v164 = v163;
      if (v146)
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_34_11();
        swift_unknownObjectRetain();
        v165 = OUTLINED_FUNCTION_24_7();
        SynthesizingRequestProtocol.voice.getter(v165);
        OUTLINED_FUNCTION_61_5();
        v166 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
        OUTLINED_FUNCTION_65();
        v167 = *&v93[v166];

        OUTLINED_FUNCTION_38_10();
      }

      else
      {
        v167 = 0;
      }

      [v164 setVoiceFootprint_];
    }

    v168 = [v83 requestedVoiceContext];
    if (v168)
    {
      v169 = v168;
      v150 = v151;
      v151 = v93;
      if (!v146)
      {
        goto LABEL_66;
      }

      swift_getObjectType();
      OUTLINED_FUNCTION_34_11();
      swift_unknownObjectRetain();
      v170 = OUTLINED_FUNCTION_24_7();
      v171 = SynthesizingRequestProtocol.voice.getter(v170);
      swift_unknownObjectRelease();
      v172 = &v171[OBJC_IVAR___SiriTTSSynthesisVoice_name];
      OUTLINED_FUNCTION_65();
      v174 = *v172;
      v173 = v172[1];

      if (v173)
      {
        v93 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(v174, v173);
      }

      else
      {
LABEL_66:
        v93 = 0;
      }

      [v169 setVoiceName_];

      OUTLINED_FUNCTION_38_10();
    }

    if (!v146)
    {
      goto LABEL_72;
    }

    swift_getObjectType();
    v175 = v83;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24_7();
    SynthesizingRequestProtocol.text.getter();
    v85 = v176;
    swift_unknownObjectRelease();
    v177 = sub_1B1C2CC68();

    if (v177 >= 0xFFFFFFFF80000000)
    {
      v85 = v262;
      if (v177 <= 0x7FFFFFFF)
      {
LABEL_73:
        [v83 setInputTextLength_];

        v179 = v252;
        (v261[2])(v252, v68 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v85);
        v180 = v83;
        v181 = sub_1B1AABA20(v179);
        OUTLINED_FUNCTION_51_5(v181, sel_setContextId_);

        goto LABEL_74;
      }

      __break(1u);
LABEL_72:
      v178 = v83;
      v177 = 0;
      v85 = v262;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_110;
  }

LABEL_74:
  v182 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v150[99]];
  if (!v182)
  {
    v198 = OUTLINED_FUNCTION_37_9();
    v199(v198, v85);

    swift_unknownObjectRelease();
    goto LABEL_107;
  }

  v183 = v182;
  [v182 setRequestReceived_];
  sub_1B1AABABC();
  v185 = v184;
  OUTLINED_FUNCTION_51_5(v184, sel_setEventMetadata_);

  v186 = [v183 eventMetadata];
  if (v186)
  {
    v187 = v186;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    v188 = v151;
    v189 = v93;
    v190 = v252;
    (v261[2])(v252, v256, v85);
    v191 = v190;
    v93 = v189;
    v151 = v188;
    v192 = sub_1B1AABA20(v191);
    [v187 setTtsId_];
  }

  v193 = [v183 eventMetadata];
  if (v193)
  {
    v194 = v193;
    if (*(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {
      v195 = *(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      v196 = *(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

      v197 = sub_1B1C2CB28();
    }

    else
    {
      v197 = 0;
    }

    [v194 setClientId_];

    v85 = v262;
  }

  sub_1B1AABE04(v183);
  v200 = &selRef_array;
  if (v146)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_34_11();
    swift_unknownObjectRetain();
    v201 = OUTLINED_FUNCTION_24_7();
    v202 = SynthesizingRequestProtocol.privacySensitive.getter(v201);
    swift_unknownObjectRelease();
    if ((v202 & 1) == 0)
    {
      v253 = v93;
      swift_getObjectType();
      OUTLINED_FUNCTION_34_11();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_24_7();
      v203 = SynthesizingRequestProtocol.text.getter();
      v205 = v204;
      swift_unknownObjectRelease();
      v206 = [objc_allocWithZone(MEMORY[0x1E69CF7A8]) init];
      v207 = v206;
      if (v206)
      {
        v208 = v206;
        v209 = [v151 linkId];
        [v208 setLinkId_];

        sub_1B1AD55EC(v203, v205, v208, &selRef_setTextToSynthesize_);
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        v210 = v252;
        (v261[2])(v252, v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v262);
        v211 = v208;
        v212 = v210;
        v200 = &selRef_array;
        v213 = sub_1B1AABA20(v212);
        OUTLINED_FUNCTION_65_4(v213, sel_setContextId_);
      }

      else
      {
      }

      v214 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v200[99]];
      if (v214)
      {
        v215 = v214;
        v259 = v207;
        [v214 setRequestReceivedTier1_];
        v216 = v260;
        sub_1B1AABABC();
        v218 = v217;
        OUTLINED_FUNCTION_65_4(v217, sel_setEventMetadata_);

        v219 = [v215 eventMetadata];
        if (v219)
        {
          v220 = v219;
          sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
          v221 = v252;
          (v261[2])(v252, v256, v262);
          v222 = sub_1B1AABA20(v221);
          [v220 setTtsId_];
        }

        v223 = [v215 eventMetadata];
        if (v223)
        {
          v224 = v223;
          if (*(v216 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
          {
            v225 = *(v216 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
            v226 = *(v216 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

            v227 = sub_1B1C2CB28();
          }

          else
          {
            v227 = 0;
          }

          OUTLINED_FUNCTION_70_3(v223, sel_setClientId_);
        }

        sub_1B1AABE04(v215);

        v85 = v262;
        v93 = v253;
        goto LABEL_98;
      }

      (v261[1])(v256, v262);
      swift_unknownObjectRelease();

LABEL_107:
      OUTLINED_FUNCTION_26_1();
      return;
    }
  }

LABEL_98:
  v228 = v260;
  if ((*(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) & 1) != 0 || (v229 = *(v260 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger)) == 0 || (v230 = [v229 captureSnapshot]) == 0)
  {
    v236 = OUTLINED_FUNCTION_37_9();
    v237(v236, v85);

    swift_unknownObjectRelease();
LABEL_106:
    v238 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
    v239 = v247;
    OUTLINED_FUNCTION_66_0();
    *(v239 + v238) = 1;
    goto LABEL_107;
  }

  v231 = v230;
  v232 = [objc_opt_self() context];
  if (v232)
  {
    v233 = v232;
    v234 = v244;
    sub_1B1AADD60(&v93[v228], v244);
    v235 = v262;
    OUTLINED_FUNCTION_48_0(v234, 1, v262);
    if (v61)
    {
      v240 = 0;
    }

    else
    {
      v240 = sub_1B1C2C448();
      (v261[1])(v234, v235);
    }

    [v231 logWithEventContext:v233 ttsIdentifier:v240];

    swift_unknownObjectRelease();
    v241 = OUTLINED_FUNCTION_37_9();
    v242(v241, v235);
    goto LABEL_106;
  }

  __break(1u);
}

void sub_1B1BFE21C()
{
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) == 1)
  {
    sub_1B1BFE64C();
  }

  else
  {
    sub_1B1BFE238();
  }
}

void sub_1B1BFE238()
{
  OUTLINED_FUNCTION_25();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_28();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_8();
  v16 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v16, v0);
  OUTLINED_FUNCTION_48_0(v0, 1, v9);
  if (v17)
  {
    sub_1B1AABFB0(v0);
LABEL_22:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v18 = OUTLINED_FUNCTION_46_7();
  v19(v18);
  v20 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7B0]));
  v21 = v20;
  if (v20)
  {
    [v20 setExists_];
  }

  v22 = [objc_allocWithZone(MEMORY[0x1E69CF790]) (v3 + 2936)];
  [v22 setCancelled_];
  if (v22)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v12 + 16))(v2, v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v9);
    v23 = v22;
    v24 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_67_4(v24, sel_setContextId_);
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E69CF780]) (v3 + 2936)];
  if (!v25)
  {
    v39 = OUTLINED_FUNCTION_5_31();
    v40(v39);

    goto LABEL_22;
  }

  v26 = v25;
  [v25 setSpeechContext_];
  sub_1B1AABABC();
  v28 = v27;
  OUTLINED_FUNCTION_67_4(v27, sel_setEventMetadata_);

  OUTLINED_FUNCTION_55_4();
  v30 = [v26 v29];
  if (v30)
  {
    v31 = v30;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_20_14();
    v32(v2, v1, v9);
    v33 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_35_11(v33, sel_setTtsId_);

    v28 = &off_1E7AF4000;
  }

  v34 = [v26 v28[441]];
  if (v34)
  {
    v35 = v34;
    if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {
      v36 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      v37 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

      v38 = sub_1B1C2CB28();
    }

    else
    {
      v38 = 0;
    }

    [v35 setClientId_];
  }

  sub_1B1AABE04(v26);
  v41 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v41 || (v42 = [v41 captureSnapshot]) == 0)
  {
    v49 = OUTLINED_FUNCTION_5_31();
    v50(v49);

    goto LABEL_22;
  }

  v43 = v42;
  v44 = [objc_opt_self() context];
  if (v44)
  {
    v45 = v44;
    v46 = sub_1B1C2C448();
    [v43 logWithEventContext:v45 ttsIdentifier:v46];

    v47 = OUTLINED_FUNCTION_5_31();
    v48(v47);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1B1BFE64C()
{
  OUTLINED_FUNCTION_25();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_28();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_28();
  v14 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v14, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v15)
  {
    sub_1B1AABFB0(v0);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21_12(v10);
    v17(v16);
    v18 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7D0]));
    v19 = v18;
    if (v18)
    {
      [v18 setExists_];
    }

    v20 = [objc_allocWithZone(MEMORY[0x1E69CF798]) v2 + 2936];
    [v20 setCancelled_];
    if (v20)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v21(v1);
      v22 = v20;
      v23 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v23, sel_setContextId_);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v2 + 2936];
    if (v24)
    {
      v25 = v24;
      [v24 setSynthesisContext_];
      sub_1B1AABABC();
      v27 = v26;
      OUTLINED_FUNCTION_36_10(v26, sel_setEventMetadata_);

      OUTLINED_FUNCTION_55_4();
      v29 = [v25 v28];
      if (v29)
      {
        v2 = v29;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_20_14();
        OUTLINED_FUNCTION_37_1();
        v30();
        v31 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v31, sel_setTtsId_);

        v27 = &off_1E7AF4000;
      }

      v32 = [v25 v27[441]];
      if (v32)
      {
        v33 = v32;
        OUTLINED_FUNCTION_54_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
        if (v2)
        {
          v36 = *v35;

          v37 = sub_1B1C2CB28();
        }

        else
        {
          v37 = 0;
        }

        OUTLINED_FUNCTION_69_4(v34, sel_setClientId_);
      }

      OUTLINED_FUNCTION_68_4();

      v40 = OUTLINED_FUNCTION_17_20();
      v41(v40);
    }

    else
    {
      v38 = OUTLINED_FUNCTION_17_20();
      v39(v38);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFE998(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  if (*(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) == 1)
  {
    sub_1B1BFEE54();
  }

  else
  {
    sub_1B1BFE9F4();
  }
}

void sub_1B1BFE9F4()
{
  OUTLINED_FUNCTION_25();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_6_28();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_44_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_42_8();
  v18 = *v6;
  v19 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v19, v0);
  OUTLINED_FUNCTION_48_0(v0, 1, v11);
  if (v20)
  {
    sub_1B1AABFB0(v0);
LABEL_22:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v21 = OUTLINED_FUNCTION_46_7();
  v22(v21);
  v23 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7C0]));
  v24 = v23;
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1B1C37D90;
    *(v25 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1B1AAB8A8(v25, v24);
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69CF790]) (v3 + 2936)];
  [v26 setFailed_];
  if (v26)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v14 + 16))(v2, v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v11);
    v27 = v26;
    v28 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_36_10(v28, sel_setContextId_);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69CF780]) (v3 + 2936)];
  if (!v29)
  {
    v42 = OUTLINED_FUNCTION_5_31();
    v43(v42);

    goto LABEL_22;
  }

  v30 = v29;
  [v29 setSpeechContext_];
  sub_1B1AABABC();
  v32 = v31;
  OUTLINED_FUNCTION_36_10(v31, sel_setEventMetadata_);

  v33 = OUTLINED_FUNCTION_50_6();
  if (v33)
  {
    v34 = v33;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_20_14();
    v35(v2, v1, v11);
    v36 = sub_1B1AABA20(v2);
    OUTLINED_FUNCTION_35_11(v36, sel_setTtsId_);
  }

  v37 = OUTLINED_FUNCTION_50_6();
  if (v37)
  {
    v38 = v37;
    if (*(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {
      v39 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      v40 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

      v41 = sub_1B1C2CB28();
    }

    else
    {
      v41 = 0;
    }

    OUTLINED_FUNCTION_69_4(v37, sel_setClientId_);
  }

  sub_1B1AABE04(v30);
  v44 = *(v4 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v44 || (v45 = [v44 captureSnapshot]) == 0)
  {
    v52 = OUTLINED_FUNCTION_5_31();
    v53(v52);

    goto LABEL_22;
  }

  v46 = v45;
  v47 = [objc_opt_self() context];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1B1C2C448();
    [v46 logWithEventContext:v48 ttsIdentifier:v49];

    v50 = OUTLINED_FUNCTION_5_31();
    v51(v50);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_1B1BFEE54()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_6_28();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_41_6();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_28();
  v16 = *v4;
  v17 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v17, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v18)
  {
    sub_1B1AABFB0(v0);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_21_12(v12);
    v20(v19);
    v21 = OUTLINED_FUNCTION_63_5(objc_allocWithZone(MEMORY[0x1E69CF7E0]));
    v22 = v21;
    if (v21)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1B1C37D90;
      *(v23 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1B1AAB8A8(v23, v22);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69CF798]) v2 + 2936];
    [v24 setFailed_];
    if (v24)
    {
      sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
      OUTLINED_FUNCTION_47_8();
      v25(v1);
      v26 = v24;
      v27 = sub_1B1AABA20(v1);
      OUTLINED_FUNCTION_36_10(v27, sel_setContextId_);
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69CF780]) v2 + 2936];
    if (v28)
    {
      v29 = v28;
      [v28 setSynthesisContext_];
      sub_1B1AABABC();
      v31 = v30;
      OUTLINED_FUNCTION_36_10(v30, sel_setEventMetadata_);

      OUTLINED_FUNCTION_55_4();
      v33 = [v29 v32];
      if (v33)
      {
        v2 = v33;
        sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
        OUTLINED_FUNCTION_20_14();
        OUTLINED_FUNCTION_37_1();
        v34();
        v35 = sub_1B1AABA20(v1);
        OUTLINED_FUNCTION_35_11(v35, sel_setTtsId_);

        v31 = &off_1E7AF4000;
      }

      v36 = [v29 v31[441]];
      if (v36)
      {
        v37 = v36;
        OUTLINED_FUNCTION_54_4(OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
        if (v2)
        {
          v40 = *v39;

          v41 = sub_1B1C2CB28();
        }

        else
        {
          v41 = 0;
        }

        OUTLINED_FUNCTION_70_3(v38, sel_setClientId_);
      }

      OUTLINED_FUNCTION_68_4();

      v44 = OUTLINED_FUNCTION_17_20();
      v45(v44);
    }

    else
    {
      v42 = OUTLINED_FUNCTION_17_20();
      v43(v42);
    }
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BFF1FC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
  *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = a1;
  v2 = a1;
}

uint64_t sub_1B1BFF244()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
  result = OUTLINED_FUNCTION_66_0();
  *(v1 + v2) = 0;
  return result;
}

uint64_t sub_1B1BFF290()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_promptCount;
  result = OUTLINED_FUNCTION_66_0();
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
  }

  return result;
}

uint64_t sub_1B1BFF304(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (*(v3 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics) + *a3);
  OUTLINED_FUNCTION_66_0();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B1BFF370(void *a1)
{
  v2 = type metadata accessor for SiriAnalyticsHandler();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1B1BFF828(a1, v5);
  v7[0] = 3;
  v8 = 0;
  v9 = 0;
  sub_1B1BFE998(v7);
}

void sub_1B1BFF408()
{
  sub_1B1AF6018();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    v3 = sub_1B1C2C478();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B1BFF828(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = sub_1B1C2C478();
  v54 = *(v13 - 8);
  v14 = *(v54 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v48 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v52 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId, 1, 1, v13);
  sub_1B1C2C468();
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId, 1, 1, v13);
  v24 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics;
  *(a2 + v24) = [objc_allocWithZone(type metadata accessor for InstrumentationMetrics()) init];
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logSynthesisEvents) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_expectedVoice) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource) = 0;
  v25 = (a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 28) = 0u;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues) = v23;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_emittedStartRequest) = 0;
  v26 = (a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
  *v26 = 0;
  v26[1] = 0;
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId, 1, 1, v13);
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectStartTimestamp) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds) = 0;
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp) = 0;
  *(a2 + 16) = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  v27 = objc_opt_self();
  v28 = [v27 sharedAnalytics];
  v29 = [v28 defaultMessageStream];

  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriStream) = v29;
  v30 = [objc_opt_self() loggerForCurrentProcess];
  *(a2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger) = v30;
  v31 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {

    v32 = v12;
  }

  else
  {
    v49 = v8;
    v33 = *(v54 + 32);
    v33(v22, v12, v13);
    v34 = sub_1B1C2C448();
    v35 = [v27 derivedIdentifierForComponentName:13 fromSourceIdentifier:v34];

    if (!v35)
    {
      (*(v54 + 8))(v22, v13);

      return a2;
    }

    v48 = v22;
    v36 = v54;
    v37 = v51;
    sub_1B1C2C458();

    v38 = v52;
    v39 = (v33)(v52, v37, v13);
    v40 = v53;
    (*((*v31 & *a1) + 0x120))(v39);

    if (__swift_getEnumTagSinglePayload(v40, 1, v13) != 1)
    {
      v42 = v50;
      v33(v50, v40, v13);
      v43 = v49;
      v33(v49, v38, v13);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v13);
      v44 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
      swift_beginAccess();
      sub_1B1A91B74(v43, a2 + v44);
      swift_endAccess();
      v33(v43, v48, v13);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v13);
      v45 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId;
      swift_beginAccess();
      sub_1B1A91B74(v43, a2 + v45);
      swift_endAccess();
      v33(v43, v42, v13);
      __swift_storeEnumTagSinglePayload(v43, 0, 1, v13);
      v46 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId;
      swift_beginAccess();
      sub_1B1A91B74(v43, a2 + v46);
      swift_endAccess();
      return a2;
    }

    v41 = *(v36 + 8);
    v41(v38, v13);
    v41(v48, v13);
    v32 = v40;
  }

  sub_1B1AABFB0(v32);
  return a2;
}

id sub_1B1BFFEC8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithString_];

  return v2;
}

unint64_t sub_1B1BFFF38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v2 = sub_1B1C2D6A8();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    sub_1B1A9EEE0(&v27, v29);
    sub_1B1A9EEE0(v29, v30);
    sub_1B1A9EEE0(v30, &v28);
    result = sub_1B1A8EB10();
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_1B1A9EEE0(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_1B1A9EEE0(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

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
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1C00184(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7642F8, &qword_1B1C41650);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v23 = *(*(a1 + 56) + v11);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1B1A9EEE0((v24 + 8), v22);
    sub_1B1A9EEE0(v22, v24);
    v13 = *(v2 + 40);
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](v12);
    result = sub_1B1C2D8E8();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v17) = v12;
    result = sub_1B1A9EEE0(v24, (*(v2 + 56) + 32 * v17));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1B1C003EC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B1AC067C(v4, 1, sub_1B1B04740);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_27_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C10, &qword_1B1C35D88);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t static TTSAsset.listAssets(ofTypes:matching:)(uint64_t a1, uint64_t a2)
{
  sub_1B1C0054C(a2);
  v4 = sub_1B1C00184(v3);

  v5 = static TTSAsset.listAssets(ofTypes:matching:)(a1, v4);

  return v5;
}

void sub_1B1C0054C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
        v11 = *(*(a1 + 48) + v10);
        v12 = *(*(a1 + 56) + v10);
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v8 + 16);
          sub_1B1B04AB8();
          v8 = v16;
        }

        v13 = *(v8 + 16);
        if (v13 >= *(v8 + 24) >> 1)
        {
          sub_1B1B04AB8();
          v8 = v17;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v12;
      }

      while (v5);
    }
  }

  sub_1B1BDE5D0(v8);
}

uint64_t sub_1B1C00910()
{
  v13 = MEMORY[0x1E69E7CC0];
  if (qword_1EB7614A0 != -1)
  {
    swift_once();
  }

  v0 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CC0];
  if ((byte_1ED9AA5A8 & 1) == 0)
  {
    sub_1B1ABF93C(&unk_1F28BA568);
    v1 = v13;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1B1AC9FA8();
    v3 = v0;
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = sub_1B1C2CBE8();
      v9 = v8;
      v10 = *(v3 + 16);
      if (v10 >= *(v3 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v3 + 16) = v10 + 1;
      v11 = v3 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  return sub_1B1ACB6B8(v3);
}

uint64_t sub_1B1C00A6C()
{
  type metadata accessor for TTSAssetVoiceGender(0);
  sub_1B1C00E64();
  result = sub_1B1C2CAB8();
  qword_1ED9AA460 = result;
  return result;
}

unint64_t sub_1B1C00ABC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1C00ADC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1B1A95484(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1B1A9547C(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1B1A9E870(result);
  v9 = OUTLINED_FUNCTION_72();

  return sub_1B1C00BBC(v9, v10, 0);
}

uint64_t sub_1B1C00BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1B1A8E474(0, &qword_1EB764320, 0x1E69C7AC8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1B1C2D468();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1B1AA8B80(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_1B1C2D468();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1C00CF0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1C2D468();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1A9547C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TTSAssetUAFAsset(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1B9A440(&qword_1EB764310, &qword_1EB764308, &qword_1B1C41658);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764308, &qword_1B1C41658);
          v9 = sub_1B1B37C88(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1C00E64()
{
  result = qword_1ED9A4C88;
  if (!qword_1ED9A4C88)
  {
    type metadata accessor for TTSAssetVoiceGender(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A4C88);
  }

  return result;
}

uint64_t sub_1B1C00EBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1BCFF04() & 1;
}

void SiriTTS::TextToPhoneme::~TextToPhoneme(SiriTTS::TextToPhoneme *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7AF2370, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

id TTSGetServiceLog()
{
  if (TTSGetServiceLog_onceToken != -1)
  {
    dispatch_once(&TTSGetServiceLog_onceToken, &__block_literal_global);
  }

  v1 = TTSGetServiceLog_log;

  return v1;
}

uint64_t __TTSGetServiceLog_block_invoke()
{
  TTSGetServiceLog_log = os_log_create("com.apple.siri.tts", "service");

  return MEMORY[0x1EEE66BB8]();
}

void __assign_helper_atomic_property_(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = v3;
  a1[1] = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void *__copy_helper_atomic_property_(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B1C01AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    if (v11)
    {
      v13 = MEMORY[0x1E696ABC0];
      a10 = *MEMORY[0x1E696A588];
      v14 = MEMORY[0x1E696AEC0];
      (*(*v12 + 16))(v12);
      v15 = [v14 stringWithFormat:@"TTSSynthesizer::preheat error: %s"];
      a11 = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [v13 errorWithDomain:@"SiriTTSSynthesisEngine" code:1 userInfo:v16];
    }

    __cxa_end_catch();
    JUMPOUT(0x1B1C01AA0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B1C02810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_objecta, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  std::optional<TTSSynthesizer::DynamicPrompts>::~optional(&a33);
  a33 = &a46;
  std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](&a33);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<Observer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::optional<TTSSynthesizer::DynamicPrompts>::~optional(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 48);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void sub_1B1C03BF4(_Unwind_Exception *a1)
{
  v4 = v2;

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void sub_1B1C03F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C041E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C043C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SiriTTSSynthesisEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B1C04DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C04E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C0D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2, const char *a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, 4, *(this + 9));
  v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, a2);
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, v5);
  *(this + 71) = 1;
  return result;
}

double apple::aiml::flatbuffers2::FlatBufferBuilder::Release(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2)
{
  if ((*(a2 + 71) & 1) == 0)
  {
    __assert_rtn("Finished", "flatbuffers.h", 1319, "finished");
  }

  v2 = *(a2 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  *this = *a2;
  *(this + 8) = v3;
  *(this + 2) = v4;
  *(this + 3) = v2;
  *(this + 4) = v5;
  *(this + 5) = (v2 + v4 - v5);
  if (v3 == 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  return result;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(v2 + 8));
    MEMORY[0x1B27394E0](v2, 0x1060C40C2B13FB5);
  }

  v3 = *(this + 5);
  if (v3)
  {
    if (*this)
    {
      v4 = *(this + 4);
      (*(**this + 24))(*this);
    }

    else
    {
      MEMORY[0x1B27394C0](v3, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*a1);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    __assert_rtn("reallocate_downward", "flatbuffers.h", 687, "new_size > old_size");
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1B27394C0);
  }
}

void apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(apple::aiml::flatbuffers2::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x1B27394C0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
  }

  if (*(this + 64))
  {
    __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
  }

  return this;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v6 = *(this + 5), v7 = v3 - v6, v3 < v6))
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
  }

  v8 = *(this + 4);
  if (&v2[-v3] < a2)
  {
    v9 = v8 - v2 + v6;
    if (v8)
    {
      v10 = v8 >> 1;
    }

    else
    {
      v10 = *(this + 2);
    }

    if (v10 <= a2)
    {
      v10 = a2;
    }

    v11 = (*(this + 3) + v8 + v10 - 1) & -*(this + 3);
    *(this + 4) = v11;
    v12 = *this;
    if (v6)
    {
      if (v12)
      {
        v13 = (*(*v12 + 32))(v12);
      }

      else
      {
        v15 = &unk_1F28B6B88;
        v13 = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v15, v6, v8, v11, v9, v7);
      }
    }

    else
    {
      if (!v12)
      {
        v15 = &unk_1F28B6B88;
        operator new[]();
      }

      v13 = (*(*v12 + 16))(v12, v11);
    }

    LODWORD(v6) = v13;
    v8 = *(this + 4);
    v2 = &v13[v8 - v9];
    *(this + 5) = v13;
    *(this + 6) = v2;
    *(this + 7) = &v13[v7];
  }

  if ((v8 - v2 + v6) >= 0x7FFFFFFF)
  {
    __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  return a2;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    __assert_rtn("ReferTo", "flatbuffers.h", 1419, "off && off <= GetSize()");
  }

  return v6 + 4;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= a2;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 1uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 1uLL);
    v6 = (*(v5 + 6) - 1);
    *(v5 + 6) = v6;
    *v6 = v3;
    v7 = (*(v5 + 8) - *(v5 + 12) + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
  }

  v4 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v5);
  v6 = (*(this + 6) - v5);
  *(this + 6) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
  }

  v8 = *(this + 6);
  if (!v8)
  {
    __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
  }

  v8[1] = v7;
  *v8 = *(this + 34);
  v9 = *(this + 7);
  if (!v9)
  {
    __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
  }

  v10 = *(this + 16);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  v17 = v16 - v8 + v15;
  if (*(this + 81))
  {
    if (!v15)
    {
      __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(this + 5);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(this + 6) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v17;
    *(this + 7) = v22 + 1;
    v16 = *(this + 4);
    v15 = *(this + 5);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL);
  v4 = *(a1 + 48);
  *(v4 - 4) = a2;
  v4 -= 4;
  *(a1 + 48) = v4;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

BOOL siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(siri::speech::schema_fb::TTSRequestFeatureFlags *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2) && (v6 < 7 || (v8 = v5[3]) == 0 || (result = 0, v9 = *(a2 + 1), v9 >= 2) && v9 - 1 >= this + v8 - *a2))
    {
      --*(a2 + 4);
      return 1;
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

void sub_1B1C0EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL);
  v6 = (*(this + 6) - 1);
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3);
    v7 = (*(this + 6) - a3);
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v4, 8uLL);
    **(v4 + 56) = v5 | (a2 << 32);
    *(v4 + 56) += 8;
    ++*(v4 + 64);
    v6 = *(v4 + 68);
    if (v6 <= a2)
    {
      LOWORD(v6) = a2;
    }

    *(v4 + 68) = v6;
  }

  return result;
}

BOOL siri::speech::schema_fb::TextToSpeechVoice::Verify(siri::speech::schema_fb::TextToSpeechVoice *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            --*(a2 + 4);
                            return 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Table::VerifyOffset(apple::aiml::flatbuffers2::Table *this, const apple::aiml::flatbuffers2::Verifier *a2, unsigned int a3)
{
  v3 = (this - *this);
  if (*v3 <= a3)
  {
    return 1;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 1;
  }

  v5 = this + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 1);
  if (v7 >= 5 && v7 - 4 >= v5)
  {
    v8 = *(*a2 + v5);
    if (v8 >= 1)
    {
      return v7 - 1 >= v5 + v8;
    }

    return 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

void sub_1B1C0F860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechResource::Verify(siri::speech::schema_fb::TextToSpeechResource *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C0FEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechMeta::Verify(siri::speech::schema_fb::TextToSpeechMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechVoice::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechResource::Verify((this + v8 + *(this + v8)), a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C105E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestMeta::Verify(siri::speech::schema_fb::TextToSpeechRequestMeta *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        if (v6 >= 7 && v5[3])
        {
          v8 = this + v5[3] + *(this + v5[3]);
        }

        else
        {
          v8 = 0;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v8);
        if (result)
        {
          --*(a2 + 4);
          return 1;
        }
      }
    }
  }

  return result;
}

void sub_1B1C10BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C10E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(a2);
    }

    std::vector<short>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<short>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    __assert_rtn("EndVector", "flatbuffers.h", 1672, "nested");
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_1B1C11464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestContext::Verify(siri::speech::schema_fb::TextToSpeechRequestContext *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TextToSpeechResource::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C12020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify(siri::speech::schema_fb::TextToSpeechRequestExperiment *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, float a3)
{
  v5 = this;
  if (a3 != 0.0 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 4uLL);
    v6 = *(v5 + 6);
    *(v6 - 4) = a3;
    v6 -= 4;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
    this = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 7) = v7 | (a2 << 32);
    *(v5 + 7) += 8;
    ++*(v5 + 16);
    v8 = *(v5 + 34);
    if (v8 <= a2)
    {
      LOWORD(v8) = a2;
    }

    *(v5 + 34) = v8;
  }

  return this;
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_34;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_34;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_34;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB)
          {
            goto LABEL_34;
          }

          if (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2)
          {
            if (v6 < 0xD)
            {
              goto LABEL_34;
            }

            if (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2)
            {
              if (v6 < 0xF || (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2) && (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (v14 = v5[9]) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 5) && v15 - 4 >= this + v14 - *a2)))
              {
LABEL_34:
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C12E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C130CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 4, v3);
  }

  return result;
}

BOOL siri::speech::schema_fb::TTSWordPhonemes::Verify(siri::speech::schema_fb::TTSWordPhonemes *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = (a2 + 1);
  do
  {
    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a1, &v5[*v5]);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C13A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C13DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TTSPhonemeSequence::Verify(siri::speech::schema_fb::TTSPhonemeSequence *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TTSWordPhonemes::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C14868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B1C14FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C152EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5);
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, const void *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 1uLL);
  if (a3)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, a3);
    v6 = (*(a1 + 6) - a3);
    *(a1 + 6) = v6;
    memcpy(v6, a2, a3);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

BOOL siri::speech::schema_fb::TTSPrompts::Verify(siri::speech::schema_fb::TTSPrompts *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_9;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_9;
        }
      }

      v6 = *(this - v5 + 4);
      if (!v6)
      {
LABEL_9:
        v7 = 0;
      }

      else
      {
        v7 = (this + v6 + *(this + v6));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = *this;
          if (*(this - v8) < 7u)
          {
            goto LABEL_18;
          }

          if (*(this - v8 + 6))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v8 + 6) + *(this + *(this - v8 + 6)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v8 = *this;
            if (*(this - v8) < 7u)
            {
              goto LABEL_18;
            }
          }

          v9 = *(this - v8 + 6);
          if (!v9)
          {
LABEL_18:
            v10 = 0;
          }

          else
          {
            v10 = (this + v9 + *(this + v9));
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfStrings(a2, v10);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C15DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C16360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C16828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C173F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, void *a14, void *a15, void *a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechFeature::Verify(siri::speech::schema_fb::TextToSpeechFeature *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) >= 5u)
      {
        if (!*(this - v5 + 4))
        {
          goto LABEL_54;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) >= 5u)
        {
LABEL_54:
          v6 = *(this - v5 + 4);
          if (v6)
          {
            v7 = (this + v6 + *(this + v6));
            if (*v7)
            {
              v8 = 0;
              v9 = v7 + 1;
              while (siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v9 + *v9), a2))
              {
                ++v8;
                ++v9;
                if (v8 >= *v7)
                {
                  goto LABEL_12;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_12:
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (!result)
      {
        return result;
      }

      v10 = *this;
      if (*(this - v10) >= 7u)
      {
        if (!*(this - v10 + 6))
        {
          goto LABEL_55;
        }

        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v10 + 6) + *(this + *(this - v10 + 6)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v10 = *this;
        if (*(this - v10) >= 7u)
        {
LABEL_55:
          v11 = *(this - v10 + 6);
          if (v11)
          {
            v12 = (this + v11 + *(this + v11));
            if (*v12)
            {
              v13 = 0;
              v14 = v12 + 1;
              while (siri::speech::schema_fb::TTSPhonemeSequence::Verify((v14 + *v14), a2))
              {
                ++v13;
                ++v14;
                if (v13 >= *v12)
                {
                  goto LABEL_22;
                }
              }

              return 0;
            }
          }
        }
      }

LABEL_22:
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
      if (!result)
      {
        return result;
      }

      v15 = *this;
      if (*(this - v15) < 9u)
      {
        goto LABEL_29;
      }

      if (*(this - v15 + 8))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v15 + 8) + *(this + *(this - v15 + 8)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v15 = *this;
        if (*(this - v15) < 9u)
        {
          goto LABEL_29;
        }
      }

      v16 = *(this - v15 + 8);
      if (!v16)
      {
LABEL_29:
        v17 = 0;
      }

      else
      {
        v17 = (this + v16 + *(this + v16));
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(a2, v17);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
        if (result)
        {
          v18 = *this;
          if (*(this - v18) < 0xBu)
          {
            goto LABEL_40;
          }

          if (*(this - v18 + 10))
          {
            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v18 + 10) + *(this + *(this - v18 + 10)), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v18 = *this;
            if (*(this - v18) < 0xBu)
            {
              goto LABEL_40;
            }
          }

          v19 = *(this - v18 + 10);
          if (!v19)
          {
LABEL_40:
            v20 = 0;
          }

          else
          {
            v20 = (this + v19 + *(this + v19));
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v20);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
            if (result)
            {
              v21 = *this;
              if (*(this - v21) < 0xDu)
              {
                goto LABEL_49;
              }

              if (*(this - v21 + 12))
              {
                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 12) + *(this + *(this - v21 + 12)), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v21 = *this;
                if (*(this - v21) < 0xDu)
                {
                  goto LABEL_49;
                }
              }

              v22 = *(this - v21 + 12);
              if (!v22)
              {
LABEL_49:
                v23 = 0;
              }

              else
              {
                v23 = (this + v22 + *(this + v22));
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(a2, v23);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSPrompts>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSPrompts::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TTSNeuralPhonemeSequence>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::TTSWordPhonemes::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C19194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C19628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C197E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B1C19C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C19F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserProfile::Verify(siri::speech::schema_fb::TextToSpeechUserProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = *this;
      if (*(this - v5) < 5u)
      {
        goto LABEL_12;
      }

      if (*(this - v5 + 4))
      {
        result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v5 + 4) + *(this + *(this - v5 + 4)), 4uLL, 0);
        if (!result)
        {
          return result;
        }

        v5 = *this;
        if (*(this - v5) < 5u)
        {
          goto LABEL_12;
        }
      }

      v6 = *(this - v5 + 4);
      if (v6 && (v7 = (this + v6 + *(this + v6)), *v7))
      {
        v8 = 0;
        v9 = v7 + 1;
        while (siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify((v9 + *v9), a2))
        {
          ++v8;
          ++v9;
          if (v8 >= *v7)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }

      else
      {
LABEL_12:
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1A7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestDevConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 2) && v7 - 1 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = v6 >= 7 && v5[3] ? this + v5[3] + *(this + v5[3]) : 0;
        result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v8);
        if (result)
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v9 = (this - *this);
            if (*v9 >= 9u && (v10 = v9[4]) != 0)
            {
              v11 = this + v10 + *(this + v10);
            }

            else
            {
              v11 = 0;
            }

            result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11);
            if (result)
            {
              v12 = (this - *this);
              if (*v12 < 0xBu || (v13 = v12[5]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 2) && v14 - 1 >= this + v13 - *a2)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1B164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify(siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5 || !v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result && (v6 < 7 || !v5[3] || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v5[3] + *(this + v5[3]), 1uLL, 0))))
      {
        --*(a2 + 4);
        return 1;
      }
    }
  }

  return result;
}

void sub_1B1C1B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify(siri::speech::schema_fb::TextToSpeechUserVoiceProfile *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_26;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 5) && v7 - 4 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_26;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_26;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB || (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2) && (v6 < 0xD || (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2) && (v6 < 0xF || (v12 = v5[7]) == 0 || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v12 - *a2)))
          {
LABEL_26:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 < 5u || (v6 = v5[2]) == 0 || (result = siri::speech::schema_fb::TextToSpeechSpeechFeatureInputWave::Verify((this + v6 + *(this + v6)), a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = (this - *this);
          if (*v7 < 7u || (v8 = v7[3]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserVoiceProfile::Verify((this + v8 + *(this + v8)), a2)))
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v9 = (this - *this);
              if (*v9 >= 9u && (v10 = v9[4]) != 0)
              {
                v11 = this + v10 + *(this + v10);
              }

              else
              {
                v11 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v11);
              if (result)
              {
                --*(a2 + 4);
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1C5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1CC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C1E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::AudioDescription::Verify(siri::speech::schema_fb::AudioDescription *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    v5 = (this - *this);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_38;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_38;
      }

      if (!v5[3] || (result = 0, v8 = *(a2 + 1), v8 >= 5) && v8 - 4 >= this + v5[3] - *a2)
      {
        if (v6 < 9)
        {
          goto LABEL_38;
        }

        if (!v5[4] || (result = 0, v9 = *(a2 + 1), v9 >= 5) && v9 - 4 >= this + v5[4] - *a2)
        {
          if (v6 < 0xB)
          {
            goto LABEL_38;
          }

          if (!v5[5] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v5[5] - *a2)
          {
            if (v6 < 0xD)
            {
              goto LABEL_38;
            }

            if (!v5[6] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v5[6] - *a2)
            {
              if (v6 < 0xF)
              {
                goto LABEL_38;
              }

              if (!v5[7] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v5[7] - *a2)
              {
                if (v6 < 0x11 || (!v5[8] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v5[8] - *a2) && (v6 < 0x13 || (!v5[9] || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v5[9] - *a2) && (v6 < 0x15 || (v15 = v5[10]) == 0 || (result = 0, v16 = *(a2 + 1), v16 >= 5) && v16 - 4 >= this + v15 - *a2)))
                {
LABEL_38:
                  --*(a2 + 4);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1EEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::WordTimingInfo::Verify(siri::speech::schema_fb::WordTimingInfo *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        v8 = (this - *this);
        v9 = *v8;
        if (v9 < 7)
        {
          goto LABEL_24;
        }

        if (!v8[3] || (result = 0, v10 = *(a2 + 1), v10 >= 5) && v10 - 4 >= this + v8[3] - *a2)
        {
          if (v9 < 9 || (!v8[4] || (result = 0, v11 = *(a2 + 1), v11 >= 5) && v11 - 4 >= this + v8[4] - *a2) && (v9 < 0xB || (!v8[5] || (result = 0, v12 = *(a2 + 1), v12 >= 5) && v12 - 4 >= this + v8[5] - *a2) && (v9 < 0xD || (v13 = v8[6]) == 0 || (result = 0, v14 = *(a2 + 1), v14 >= 5) && v14 - 4 >= this + v13 - *a2)))
          {
LABEL_24:
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C1F654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C1FE0C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B1C20970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(siri::speech::schema_fb::StartTextToSpeechStreamingRequest *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = (this - *this);
              if (*v11 >= 9u && (v12 = v11[4]) != 0)
              {
                v13 = this + v12 + *(this + v12);
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = (this - *this);
                  if (*v14 >= 0xBu && (v15 = v14[5]) != 0)
                  {
                    v16 = this + v15 + *(this + v15);
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16);
                  if (result)
                  {
                    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                    if (result)
                    {
                      v17 = (this - *this);
                      if (*v17 >= 0xDu && (v18 = v17[6]) != 0)
                      {
                        v19 = this + v18 + *(this + v18);
                      }

                      else
                      {
                        v19 = 0;
                      }

                      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v19);
                      if (result)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
                        if (result)
                        {
                          v20 = (this - *this);
                          if (*v20 >= 0xFu && (v21 = v20[7]) != 0)
                          {
                            v22 = this + v21 + *(this + v21);
                          }

                          else
                          {
                            v22 = 0;
                          }

                          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v22);
                          if (result)
                          {
                            v23 = (this - *this);
                            v24 = *v23;
                            if (v24 < 0x11 || (!v23[8] || (result = 0, v25 = *(a2 + 1), v25 >= 5) && v25 - 4 >= this + v23[8] - *a2) && (v24 < 0x13 || !v23[9] || (result = 0, v26 = *(a2 + 1), v26 >= 2) && v26 - 1 >= this + v23[9] - *a2))
                            {
                              v27 = this - *this;
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v28 = v24 >= 0x15 && *(v27 + 10) ? this + *(v27 + 10) + *(this + *(v27 + 10)) : 0;
                                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v28);
                                if (result)
                                {
                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x16u);
                                  if (result)
                                  {
                                    v29 = *this;
                                    if (*(this - v29) < 0x17u)
                                    {
                                      goto LABEL_59;
                                    }

                                    if (*(this - v29 + 22))
                                    {
                                      result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v29 + 22) + *(this + *(this - v29 + 22)), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v29 = *this;
                                      if (*(this - v29) < 0x17u)
                                      {
                                        goto LABEL_59;
                                      }
                                    }

                                    v30 = *(this - v29 + 22);
                                    if (!v30)
                                    {
LABEL_59:
                                      v31 = 0;
                                    }

                                    else
                                    {
                                      v31 = (this + v30 + *(this + v30));
                                    }

                                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a2, v31);
                                    if (result)
                                    {
                                      v32 = (this - *this);
                                      v33 = *v32;
                                      if (v33 < 0x19 || !v32[12] || (result = 0, v34 = *(a2 + 1), v34 >= 5) && v34 - 4 >= this + v32[12] - *a2)
                                      {
                                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Au);
                                        if (result && (v33 < 0x1B || !v32[13] || (result = siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((this + v32[13] + *(this + v32[13])), a2))))
                                        {
                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Cu);
                                          if (result)
                                          {
                                            v35 = (this - *this);
                                            if (*v35 < 0x1Du || (v36 = v35[14]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestContext::Verify((this + v36 + *(this + v36)), a2)))
                                            {
                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x1Eu);
                                              if (result)
                                              {
                                                v37 = (this - *this);
                                                if (*v37 < 0x1Fu || (v38 = v37[15]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((this + v38 + *(this + v38)), a2)))
                                                {
                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x20u);
                                                  if (result)
                                                  {
                                                    v39 = (this - *this);
                                                    if (*v39 < 0x21u || (v40 = v39[16]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v40 + *(this + v40)), a2)))
                                                    {
                                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x22u);
                                                      if (result)
                                                      {
                                                        v41 = (this - *this);
                                                        if (*v41 < 0x23u || (v42 = v41[17]) == 0 || (result = siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((this + v42 + *(this + v42)), a2)))
                                                        {
                                                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x24u);
                                                          if (result)
                                                          {
                                                            v43 = (this - *this);
                                                            if (*v43 < 0x25u || (v44 = v43[18]) == 0 || (result = siri::speech::schema_fb::TextToSpeechUserProfile::Verify((this + v44 + *(this + v44)), a2)))
                                                            {
                                                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x26u);
                                                              if (result)
                                                              {
                                                                v45 = (this - *this);
                                                                if (*v45 < 0x27u || (v46 = v45[19]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((this + v46 + *(this + v46)), a2)))
                                                                {
                                                                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x28u);
                                                                  if (result)
                                                                  {
                                                                    v47 = (this - *this);
                                                                    if (*v47 < 0x29u || (v48 = v47[20]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((this + v48 + *(this + v48)), a2)))
                                                                    {
                                                                      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x2Au);
                                                                      if (result)
                                                                      {
                                                                        v49 = (this - *this);
                                                                        if (*v49 < 0x2Bu || (v50 = v49[21]) == 0 || (result = siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((this + v50 + *(this + v50)), a2)))
                                                                        {
                                                                          --*(a2 + 4);
                                                                          return 1;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C21DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::BeginTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::BeginTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      v19 = *v18;
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v18[8] + *(this + v18[8])), a2))))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = (this - *this);
                            if (*v21 < 0x13u || (v22 = v21[9]) == 0 || (result = siri::speech::schema_fb::AudioDescription::Verify((this + v22 + *(this + v22)), a2)))
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v23 = *this;
                                v24 = *(this - v23);
                                if (v24 < 0x15)
                                {
                                  goto LABEL_52;
                                }

                                if (*(this - v23 + 20))
                                {
                                  result = siri::speech::schema_fb::TextToSpeechMeta::Verify((this + *(this - v23 + 20) + *(this + *(this - v23 + 20))), a2);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v25 = *this;
                                  v26 = -v25;
                                  v24 = *(this - v25);
                                }

                                else
                                {
                                  v26 = -v23;
                                }

                                if (v24 < 0x17 || (v27 = *(this + v26 + 22), !*(this + v26 + 22)) || (result = 0, v28 = *(a2 + 1), v28 >= 5) && v28 - 4 >= this + v27 - *a2)
                                {
LABEL_52:
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C22C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C23234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (v31)
  {
    operator delete(v31);
  }

  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::PartialTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::PartialTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      v19 = *v18;
                      if (v19 < 0xF || !v18[7] || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v18[7] - *a2)
                      {
                        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x10u);
                        if (result && (v19 < 0x11 || !v18[8] || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + v18[8] + *(this + v18[8]), 1uLL, 0))))
                        {
                          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x12u);
                          if (result)
                          {
                            v21 = *this;
                            if (*(this - v21) < 0x13u)
                            {
                              goto LABEL_45;
                            }

                            if (*(this - v21 + 18))
                            {
                              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this + *(this - v21 + 18) + *(this + *(this - v21 + 18)), 4uLL, 0);
                              if (!result)
                              {
                                return result;
                              }

                              v21 = *this;
                              if (*(this - v21) < 0x13u)
                              {
                                goto LABEL_45;
                              }
                            }

                            v22 = *(this - v21 + 18);
                            if (!v22)
                            {
LABEL_45:
                              v23 = 0;
                            }

                            else
                            {
                              v23 = (this + v22 + *(this + v22));
                            }

                            result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(a2, v23);
                            if (result)
                            {
                              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0x14u);
                              if (result)
                              {
                                v24 = (this - *this);
                                if (*v24 < 0x15u || (v25 = v24[10]) == 0 || (result = siri::speech::schema_fb::TextToSpeechFeature::Verify((this + v25 + *(this + v25)), a2)))
                                {
                                  --*(a2 + 4);
                                  return 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::WordTimingInfo>(apple::aiml::flatbuffers2::Verifier *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = siri::speech::schema_fb::WordTimingInfo::Verify((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

void sub_1B1C241B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

BOOL siri::speech::schema_fb::FinalTextToSpeechStreamingResponse::Verify(siri::speech::schema_fb::FinalTextToSpeechStreamingResponse *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = (this - *this);
      if (*v5 >= 5u && (v6 = v5[2]) != 0)
      {
        v7 = this + v6 + *(this + v6);
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = (this - *this);
          if (*v8 >= 7u && (v9 = v8[3]) != 0)
          {
            v10 = this + v9 + *(this + v9);
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10);
          if (result)
          {
            v11 = (this - *this);
            v12 = *v11;
            if (v12 < 9 || !v11[4] || (result = 0, v13 = *(a2 + 1), v13 >= 5) && v13 - 4 >= this + v11[4] - *a2)
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v14 = v12 >= 0xB && v11[5] ? this + v11[5] + *(this + v11[5]) : 0;
                result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v14);
                if (result)
                {
                  result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xCu);
                  if (result)
                  {
                    v15 = (this - *this);
                    if (*v15 >= 0xDu && (v16 = v15[6]) != 0)
                    {
                      v17 = this + v16 + *(this + v16);
                    }

                    else
                    {
                      v17 = 0;
                    }

                    result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v17);
                    if (result)
                    {
                      v18 = (this - *this);
                      if (*v18 < 0xFu || (v19 = v18[7]) == 0 || (result = 0, v20 = *(a2 + 1), v20 >= 5) && v20 - 4 >= this + v19 - *a2)
                      {
                        --*(a2 + 4);
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B1C24BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a2);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v2, 6, v3);
  }

  return result;
}

void sub_1B1C25338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1B27394E0](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1B1C273B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__667(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void SiriTTSHTMLSAXParserHandleCharacters(void *a1, uint64_t a2, int a3)
{
  v9 = a1;
  v5 = [v9 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
    v8 = [v9 delegate];
    [v8 parser:v9 foundCharacters:v7];
  }
}

void SiriTTSHTMLSAXParserHandleElementEnd(void *a1, uint64_t a2)
{
  v7 = a1;
  v3 = [v7 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v6 = [v7 delegate];
    [v6 parser:v7 didEndElement:v5];
  }
}

void SiriTTSHTMLSAXParserHandleElementStart(void *a1, uint64_t a2, void *a3)
{
  v14 = a1;
  v5 = [v14 delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    v8 = [MEMORY[0x1E695DF90] dictionary];
    if (a3 && *a3)
    {
      v9 = a3 + 2;
      do
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:? encoding:?];
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:*(v9 - 1) encoding:4];
        [v8 setObject:v11 forKeyedSubscript:v10];

        v12 = *v9;
        v9 += 2;
      }

      while (v12);
    }

    v13 = [v14 delegate];
    [v13 parser:v14 didStartElement:v7 attributes:v8];
  }
}

Class __getTTSAXResourceManagerClass_block_invoke(uint64_t a1)
{
  TextToSpeechLibrary();
  result = objc_getClass("TTSAXResourceManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTTSAXResourceManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return TextToSpeechLibrary();
  }

  return result;
}

uint64_t TextToSpeechLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TextToSpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TextToSpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7AF39A8;
    v6 = 0;
    TextToSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = TextToSpeechLibraryCore_frameworkLibrary;
    if (TextToSpeechLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = TextToSpeechLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __TextToSpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TextToSpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getTTSSpeechTransformTextWithLanguageSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TextToSpeechLibrary();
  result = dlsym(v2, "TTSSpeechTransformTextWithLanguage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTTSSpeechTransformTextWithLanguageSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B1C2B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v36 = -48;
  do
  {
    applesauce::CF::TypeRefPair::~TypeRefPair(v33);
    v33 = (v33 - 16);
    v36 += 16;
  }

  while (v36);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<short>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v12 = v4;
  if (v4)
  {
    memcpy(__dst, __s, v4);
  }

  *(__dst + v5) = 0;
  if ((v12 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = __dst[1];
  }

  v8 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  *this = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2739480](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (v12 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_1B1C2BC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t TTSSynthesizer::set_global_property()
{
  return MEMORY[0x1EEE40B18]();
}

{
  return MEMORY[0x1EEE40B20]();
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}