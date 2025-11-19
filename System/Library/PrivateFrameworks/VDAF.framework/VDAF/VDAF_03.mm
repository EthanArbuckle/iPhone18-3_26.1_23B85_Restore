uint64_t _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field32V_Tt2B5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 16);
    v5 = result + 32;
    v6 = v4;
    do
    {
      if (v6 < 1)
      {
        if (!*(a2 + 16))
        {
          goto LABEL_88;
        }

        *a3 = a2;
LABEL_16:
      }
    }

    while (!*(result + 4 * v6-- + 28));
    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_89;
    }

    v9 = *(a2 + 16);
    v10 = a2 + 32;
    v11 = v9;
    do
    {
      if (v11 < 1)
      {
        *a3 = result;
        goto LABEL_16;
      }
    }

    while (!*(a2 + 28 + 4 * v11--));
    v13 = *(result + 16);
    while (1)
    {
      v14 = v13;
      v15 = v13-- < 1;
      if (v15)
      {
        break;
      }

      if (*(result + 28 + 4 * v14))
      {
        goto LABEL_20;
      }
    }

    v13 = -1;
LABEL_20:
    v16 = *(a2 + 16);
    while (1)
    {
      v17 = v16;
      v15 = v16-- < 1;
      if (v15)
      {
        break;
      }

      if (*(a2 + 28 + 4 * v17))
      {
        goto LABEL_25;
      }
    }

    v16 = -1;
LABEL_25:
    if (v16 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16;
    }

    do
    {
      v19 = v4 - 1;
      if (v4 < 1)
      {
        v19 = -1;
        break;
      }
    }

    while (!*(result + 28 + 4 * v4--));
    while (1)
    {
      v21 = v9 - 1;
      if (v9 < 1)
      {
        break;
      }

      if (*(a2 + 28 + 4 * v9--))
      {
        goto LABEL_36;
      }
    }

    v21 = -1;
LABEL_36:
    v44 = v18;
    v45 = result;
    if (v21 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    if (v23 > 0x7FFFFFFFFFFFFFFELL)
    {
      v27 = MEMORY[0x277D84F90];
      if (v23 == -1)
      {
LABEL_44:
        if (v44 < 0)
        {
          goto LABEL_90;
        }

        v30 = 0;
        v31 = v27 + 32;
        v32 = (v14 & ~(v14 >> 63)) - 1;
        if (v32 >= (v17 & ~(v17 >> 63)) - 1)
        {
          v32 = (v17 & ~(v17 >> 63)) - 1;
        }

        do
        {
          if (v8 == v30)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v33 = *(v5 + 4 * v30);
          v34 = *(v10 + 4 * v30);
          if (v34)
          {
            v35 = v34 <= 0xFFF00001;
            v36 = -1048575 - v34;
            if (!v35)
            {
              goto LABEL_84;
            }

            if (v33 >= v36)
            {
              v33 -= v36;
            }

            else
            {
              v35 = v36 <= 0xFFF00001;
              v37 = -1048575 - v36;
              if (!v35)
              {
                goto LABEL_85;
              }

              v35 = __CFADD__(v33, v37);
              v33 += v37;
              if (v35)
              {
                goto LABEL_86;
              }
            }
          }

          if (v30 >= *(v27 + 16))
          {
            goto LABEL_81;
          }

          *(v31 + 4 * v30) = v33;
          if (v32 == v30)
          {
            goto LABEL_62;
          }

          ++v30;
        }

        while (v3 != v30);
        __break(1u);
LABEL_62:
        v38 = 0;
        v39 = v44 + 1;
        v40 = v44 + 1 == v23;
        if (v44 + 1 >= v23)
        {
          goto LABEL_66;
        }

LABEL_63:
        v41 = v39 + 1;
        if (v3 < v8)
        {
LABEL_64:
          v42 = a2;
          if (v39 < v8)
          {
            goto LABEL_72;
          }

          goto LABEL_82;
        }

        while (1)
        {
          v42 = result;
          if (v39 >= v3)
          {
            break;
          }

LABEL_72:
          if ((v39 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v39 >= *(v27 + 16))
          {
            goto LABEL_79;
          }

          *(v31 + 4 * v39) = *(v42 + 4 * v39 + 32);
          v39 = v41;
          v40 = v41 == v23;
          if (v41 < v23)
          {
            goto LABEL_63;
          }

LABEL_66:
          v43 = !v40;
          if ((v43 | v38))
          {
            if (!*(v27 + 16))
            {
              goto LABEL_91;
            }

            *a3 = v27;
            return result;
          }

          v38 = 1;
          v41 = v23;
          if (v3 < v8)
          {
            goto LABEL_64;
          }
        }

LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v24 = a2;
      v25 = a3;
      v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      a2 = v24;
      a3 = v25;
      v27 = v26;
      result = v45;
      *(v27 + 16) = v23 + 1;
    }

    *(v27 + 32) = 0;
    if (v23)
    {
      v28 = a2;
      v29 = a3;
      bzero((v27 + 36), 4 * v23);
      result = v45;
      a2 = v28;
      a3 = v29;
    }

    goto LABEL_44;
  }

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
  return result;
}

uint64_t _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(result + 16);
    v5 = result + 32;
    v6 = v4;
    do
    {
      if (v6 < 1)
      {
        if (!*(a2 + 16))
        {
          goto LABEL_88;
        }

        *a3 = a2;
LABEL_16:
      }
    }

    while (!*(result + 8 * v6-- + 24));
    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_89;
    }

    v9 = *(a2 + 16);
    v10 = a2 + 32;
    v11 = v9;
    do
    {
      if (v11 < 1)
      {
        *a3 = result;
        goto LABEL_16;
      }
    }

    while (!*(a2 + 24 + 8 * v11--));
    v13 = *(result + 16);
    while (1)
    {
      v14 = v13;
      v15 = v13-- < 1;
      if (v15)
      {
        break;
      }

      if (*(result + 24 + 8 * v14))
      {
        goto LABEL_20;
      }
    }

    v13 = -1;
LABEL_20:
    v16 = *(a2 + 16);
    while (1)
    {
      v17 = v16;
      v15 = v16-- < 1;
      if (v15)
      {
        break;
      }

      if (*(a2 + 24 + 8 * v17))
      {
        goto LABEL_25;
      }
    }

    v16 = -1;
LABEL_25:
    if (v16 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v16;
    }

    do
    {
      v19 = v4 - 1;
      if (v4 < 1)
      {
        v19 = -1;
        break;
      }
    }

    while (!*(result + 24 + 8 * v4--));
    while (1)
    {
      v21 = v9 - 1;
      if (v9 < 1)
      {
        break;
      }

      if (*(a2 + 24 + 8 * v9--))
      {
        goto LABEL_36;
      }
    }

    v21 = -1;
LABEL_36:
    v44 = v18;
    v45 = result;
    if (v21 <= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    if (v23 > 0x7FFFFFFFFFFFFFFELL)
    {
      v27 = MEMORY[0x277D84F90];
      if (v23 == -1)
      {
LABEL_44:
        if (v44 < 0)
        {
          goto LABEL_90;
        }

        v30 = 0;
        v31 = v27 + 4;
        v32 = (v14 & ~(v14 >> 63)) - 1;
        if (v32 >= (v17 & ~(v17 >> 63)) - 1)
        {
          v32 = (v17 & ~(v17 >> 63)) - 1;
        }

        do
        {
          if (v8 == v30)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v33 = *(v5 + 8 * v30);
          v34 = *(v10 + 8 * v30);
          if (v34)
          {
            v35 = v34 <= 0xFFFFFFFF00000001;
            v36 = 0xFFFFFFFF00000001 - v34;
            if (!v35)
            {
              goto LABEL_84;
            }

            if (v33 >= v36)
            {
              v33 -= v36;
            }

            else
            {
              v35 = v36 <= 0xFFFFFFFF00000001;
              v37 = 0xFFFFFFFF00000001 - v36;
              if (!v35)
              {
                goto LABEL_85;
              }

              v35 = __CFADD__(v33, v37);
              v33 += v37;
              if (v35)
              {
                goto LABEL_86;
              }
            }
          }

          if (v30 >= v27[2])
          {
            goto LABEL_81;
          }

          v31[v30] = v33;
          if (v32 == v30)
          {
            goto LABEL_62;
          }

          ++v30;
        }

        while (v3 != v30);
        __break(1u);
LABEL_62:
        v38 = 0;
        v39 = v44 + 1;
        v40 = v44 + 1 == v23;
        if (v44 + 1 >= v23)
        {
          goto LABEL_66;
        }

LABEL_63:
        v41 = v39 + 1;
        if (v3 < v8)
        {
LABEL_64:
          v42 = a2;
          if (v39 < v8)
          {
            goto LABEL_72;
          }

          goto LABEL_82;
        }

        while (1)
        {
          v42 = result;
          if (v39 >= v3)
          {
            break;
          }

LABEL_72:
          if ((v39 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          if (v39 >= v27[2])
          {
            goto LABEL_79;
          }

          v31[v39] = *(v42 + 8 * v39 + 32);
          v39 = v41;
          v40 = v41 == v23;
          if (v41 < v23)
          {
            goto LABEL_63;
          }

LABEL_66:
          v43 = !v40;
          if ((v43 | v38))
          {
            if (!v27[2])
            {
              goto LABEL_91;
            }

            *a3 = v27;
            return result;
          }

          v38 = 1;
          v41 = v23;
          if (v3 < v8)
          {
            goto LABEL_64;
          }
        }

LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      v24 = a2;
      v25 = a3;
      v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      a2 = v24;
      a3 = v25;
      v27 = v26;
      result = v45;
      v27[2] = v23 + 1;
    }

    v27[4] = 0;
    if (v23)
    {
      v28 = a2;
      v29 = a3;
      bzero(v27 + 5, 8 * v23);
      result = v45;
      a2 = v28;
      a3 = v29;
    }

    goto LABEL_44;
  }

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
  return result;
}

void _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field40V_Tt2B5(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v7 = *(a1 + 16);
  v4 = (a1 + 32);
  v8 = v7;
  do
  {
    if (v8 < 1)
    {
LABEL_13:
      *a3 = &_s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field40V_Tt2B5Tv_r;
      return;
    }
  }

  while (!*(a1 + 24 + 8 * v8--));
  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_131;
  }

  v11 = *(a2 + 16);
  v3 = (a2 + 32);
  v12 = v11;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_13;
    }
  }

  while (!*(a2 + 24 + 8 * v12--));
  v14 = *(a1 + 16);
  while (1)
  {
    v15 = v14 - 1;
    if (v14 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v14--))
    {
      goto LABEL_15;
    }
  }

  v15 = -1;
LABEL_15:
  v17 = *(a2 + 16);
  while (1)
  {
    v18 = v17 - 1;
    if (v17 < 1)
    {
      break;
    }

    if (*(a2 + 24 + 8 * v17--))
    {
      goto LABEL_20;
    }
  }

  v18 = -1;
LABEL_20:
  v20 = __OFADD__(v15, v18);
  v21 = v15 + v18;
  if (v20)
  {
    goto LABEL_133;
  }

  v5 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v22 = *(a1 + 16);
  while (1)
  {
    v23 = v22 - 1;
    if (v22 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v22--))
    {
      goto LABEL_27;
    }
  }

  v23 = -1;
LABEL_27:
  v25 = *(a2 + 16);
  while (1)
  {
    v26 = v25 - 1;
    if (v25 < 1)
    {
      break;
    }

    if (*(a2 + 24 + 8 * v25--))
    {
      goto LABEL_32;
    }
  }

  v26 = -1;
LABEL_32:
  if (v26 > v23)
  {
    v23 = v26;
  }

  if (v23 >= 61)
  {
    v28 = a1;
    v29 = a2;
    v87 = a3;
    a1 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v5);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v30 = MEMORY[0x277D84F90];
      if (a1)
      {
        v5 = a1;
        v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v30 + 2) = v5;
        bzero(v30 + 32, 8 * v5);
      }

      a3 = v87;
      v90 = v30;
      do
      {
        v31 = v7 - 1;
        if (v7 < 1)
        {
          v7 = 0;
          goto LABEL_47;
        }
      }

      while (!*(v28 + 24 + 8 * v7--));
      v7 = v31 + 1;
      if (v6 < v31 + 1)
      {
        __break(1u);
        goto LABEL_43;
      }

LABEL_47:
      v35 = 2 * v10 + 3;
      do
      {
        v36 = v11 - 1;
        if (v11 < 1)
        {
          goto LABEL_123;
        }

        v37 = *(v29 + 24 + 8 * v11);
        v35 -= 2;
        --v11;
      }

      while (!v37);
      v38 = v36 + 1;
      if (v10 >= v36 + 1)
      {
        if (!v7)
        {
          goto LABEL_123;
        }

        v39 = v7 + v38;
        if (!__OFADD__(v7, v38))
        {
          if (!__OFSUB__(v39, 1))
          {
            v40 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v39 - 1);
            if (*(v30 + 2) >= v40)
            {
              v5 = v40;
              if ((v40 & 0x8000000000000000) == 0)
              {
                v41 = (2 * v7) | 1;
                if (!v40)
                {
                  v88 = MEMORY[0x277D84F90];
                  v89 = MEMORY[0x277D84F90];
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, (2 * v7) | 1, 0, &v89);
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v35, 0, &v88);
                  v3 = v89;
                  goto LABEL_122;
                }

                bzero(v30 + 32, 8 * v40);
                v90 = v30;
                v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v42 + 16) = v5;
                bzero((v42 + 32), 8 * v5);
                v89 = v42;
                v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v43 + 16) = v5;
                bzero((v43 + 32), 8 * v5);
                v88 = v43;
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, v41, v5, &v89);
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v35, v5, &v88);
                v4 = v88;
                if (v5 <= *(v88 + 2))
                {
                  v3 = v89;
                  if (v5 <= *(v89 + 2))
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_60:
                      v44 = 32;
                      v45 = v5;
                      while (1)
                      {
                        v48 = *&v3[v44];
                        v49 = *&v4[v44];
                        v50 = (v48 * v49) >> 64;
                        v51 = v48 * v49;
                        v52 = (0xCFFE47FFFEAFFFFFLL * v51 * 0xFFFEB00001uLL) >> 64;
                        v53 = __CFADD__(-v51, v51);
                        v54 = v52 + v50;
                        if (__CFADD__(v52, v50))
                        {
                          goto LABEL_61;
                        }

                        if (v54 == -1)
                        {
                          v47 = 0xFFFFFF00014FFFFELL;
                          if (v53)
                          {
                            v53 = 1;
LABEL_61:
                            v46 = v53 + v54;
                            v47 = v46 - 0xFFFEB00001;
                            if (v46 >= 0xFFFEB00001)
                            {
                              goto LABEL_132;
                            }
                          }
                        }

                        else
                        {
                          v55 = v54 + v53;
                          if (v55 >= 0xFFFEB00001)
                          {
                            v47 = v55 - 0xFFFEB00001;
                          }

                          else
                          {
                            v47 = v55;
                          }
                        }

                        *&v3[v44] = v47;
                        v44 += 8;
                        if (!--v45)
                        {
                          goto LABEL_120;
                        }
                      }
                    }

LABEL_151:
                    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                    goto LABEL_60;
                  }

LABEL_150:
                  __break(1u);
                  goto LABEL_151;
                }

LABEL_149:
                __break(1u);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_144;
          }

          goto LABEL_142;
        }

        goto LABEL_140;
      }

      goto LABEL_138;
    }

    goto LABEL_136;
  }

LABEL_43:
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v5)
  {
    v87 = a1;
    v33 = a2;
    v34 = a3;
    v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v30 + 2) = v5;
    bzero(v30 + 32, 8 * v5);
    a1 = v87;
    a2 = v33;
    a3 = v34;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    v56 = v7 - 1;
    if (v7 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v7--))
    {
      v58 = v56 + 1;
      if (v6 >= v56 + 1)
      {
        goto LABEL_79;
      }

      __break(1u);
      break;
    }
  }

  v58 = 0;
  do
  {
LABEL_79:
    v59 = v11 - 1;
    if (v11 < 1)
    {
      goto LABEL_123;
    }
  }

  while (!*(a2 + 24 + 8 * v11--));
  v61 = v59 + 1;
  if (v10 < v59 + 1)
  {
    goto LABEL_139;
  }

  if (!v58)
  {
    goto LABEL_123;
  }

  v62 = v58 + v61;
  if (__OFADD__(v58, v61))
  {
    goto LABEL_141;
  }

  v20 = __OFSUB__(v62, 1);
  v63 = v62 - 1;
  if (v20)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v64 = *(v30 + 2);
  if (v64 < v63)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v63 < 0)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v87 = a3;
  if (!v64)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v5 = (v30 + 32);
  bzero(v30 + 32, 8 * v63);
  v65 = 0;
  v66 = v30 + 32;
  a3 = v87;
LABEL_90:
  v67 = 0;
  v68 = v65 + 1;
  v69 = v66;
  while (1)
  {
    v71 = v65 + v67;
    v72 = *&v4[8 * v65];
    v73 = *&v3[8 * v67];
    v74 = (v73 * v72) >> 64;
    v75 = v73 * v72;
    v76 = (0xCFFE47FFFEAFFFFFLL * v75 * 0xFFFEB00001uLL) >> 64;
    v77 = __CFADD__(-v75, v75);
    v78 = v76 + v74;
    if (__CFADD__(v76, v74))
    {
      goto LABEL_98;
    }

    if (v78 == -1)
    {
      break;
    }

    v81 = v78 + v77;
    v80 = v81 - 0xFFFEB00001;
    if (v81 < 0xFFFEB00001)
    {
      v80 = v81;
    }

    if (v71 >= v64)
    {
      goto LABEL_126;
    }

LABEL_105:
    v82 = *v69;
    if (v80)
    {
      v70 = (v5 + 8 * v71);
      v83 = v80 <= 0xFFFEB00001;
      v84 = 0xFFFEB00001 - v80;
      if (!v83)
      {
        goto LABEL_119;
      }

      if (v82 >= v84)
      {
        v82 -= v84;
      }

      else
      {
        v83 = v84 <= 0xFFFEB00001;
        v85 = 0xFFFEB00001 - v84;
        if (!v83)
        {
          goto LABEL_128;
        }

        v83 = __CFADD__(v82, v85);
        v82 += v85;
        if (v83)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      v70 = v69;
    }

    ++v67;
    *v70 = v82;
    ++v69;
    if (v61 == v67)
    {
      v66 += 8;
      ++v65;
      if (v68 == v58)
      {
        goto LABEL_123;
      }

      goto LABEL_90;
    }
  }

  if (v77)
  {
    v77 = 1;
LABEL_98:
    v79 = v77 + v78;
    v80 = v79 - 0xFFFEB00001;
    if (v79 >= 0xFFFEB00001)
    {
      goto LABEL_127;
    }

    if (v71 >= v64)
    {
      goto LABEL_126;
    }

    goto LABEL_105;
  }

  if (v71 >= v64)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v86 = *v69;
LABEL_119:
  __break(1u);
LABEL_120:
  v89 = v3;
LABEL_122:
  specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v3, v5, &v90);

  v30 = v90;
  a3 = v87;
LABEL_123:
  if (!*(v30 + 2))
  {
    goto LABEL_135;
  }

  *a3 = v30;
}

void _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field32V_Tt2B5(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v9 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v9)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v8 = *(isUniquelyReferenced_nonNull_native + 16);
  v4 = (isUniquelyReferenced_nonNull_native + 32);
  v10 = v8;
  do
  {
    if (v10 < 1)
    {
LABEL_13:
      *a3 = &_s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field32V_Tt2B5Tv_r;
      return;
    }
  }

  while (!*(isUniquelyReferenced_nonNull_native + 28 + 4 * v10--));
  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_115;
  }

  v7 = *(a2 + 16);
  v3 = (a2 + 32);
  v12 = v7;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_13;
    }
  }

  while (!*(a2 + 28 + 4 * v12--));
  v14 = *(isUniquelyReferenced_nonNull_native + 16);
  while (1)
  {
    v15 = v14 - 1;
    if (v14 < 1)
    {
      break;
    }

    if (*(isUniquelyReferenced_nonNull_native + 28 + 4 * v14--))
    {
      goto LABEL_15;
    }
  }

  v15 = -1;
LABEL_15:
  v17 = *(a2 + 16);
  while (1)
  {
    v18 = v17 - 1;
    if (v17 < 1)
    {
      break;
    }

    if (*(a2 + 28 + 4 * v17--))
    {
      goto LABEL_20;
    }
  }

  v18 = -1;
LABEL_20:
  v20 = __OFADD__(v15, v18);
  v21 = v15 + v18;
  if (v20)
  {
    goto LABEL_116;
  }

  v5 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v22 = *(isUniquelyReferenced_nonNull_native + 16);
  while (1)
  {
    v23 = v22 - 1;
    if (v22 < 1)
    {
      break;
    }

    if (*(isUniquelyReferenced_nonNull_native + 28 + 4 * v22--))
    {
      goto LABEL_27;
    }
  }

  v23 = -1;
LABEL_27:
  v25 = *(a2 + 16);
  while (1)
  {
    v26 = v25 - 1;
    if (v25 < 1)
    {
      break;
    }

    if (*(a2 + 28 + 4 * v25--))
    {
      goto LABEL_32;
    }
  }

  v26 = -1;
LABEL_32:
  if (v26 > v23)
  {
    v23 = v26;
  }

  if (v23 >= 61)
  {
    v28 = isUniquelyReferenced_nonNull_native;
    v29 = a2;
    v66 = a3;
    isUniquelyReferenced_nonNull_native = specialized FixedWidthInteger.nextPowerOfTwo.getter(v5);
    if ((isUniquelyReferenced_nonNull_native & 0x8000000000000000) == 0)
    {
      v30 = MEMORY[0x277D84F90];
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = isUniquelyReferenced_nonNull_native;
        v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v30 + 2) = v5;
        bzero(v30 + 32, 4 * v5);
      }

      a3 = v66;
      v69 = v30;
      do
      {
        v31 = v8 - 1;
        if (v8 < 1)
        {
          v8 = 0;
          goto LABEL_47;
        }
      }

      while (!*(v28 + 28 + 4 * v8--));
      v8 = v31 + 1;
      if (v9 < v31 + 1)
      {
        __break(1u);
        goto LABEL_43;
      }

LABEL_47:
      v9 = 2 * v6 + 3;
      do
      {
        v35 = v7 - 1;
        if (v7 < 1)
        {
          goto LABEL_108;
        }

        v36 = *(v29 + 28 + 4 * v7);
        v9 -= 2;
        --v7;
      }

      while (!v36);
      v37 = v35 + 1;
      if (v6 >= v35 + 1)
      {
        if (!v8)
        {
          goto LABEL_108;
        }

        v38 = v8 + v37;
        if (!__OFADD__(v8, v37))
        {
          if (!__OFSUB__(v38, 1))
          {
            v39 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v38 - 1);
            if (*(v30 + 2) >= v39)
            {
              v5 = v39;
              if ((v39 & 0x8000000000000000) == 0)
              {
                v6 = (2 * v8) | 1;
                if (!v39)
                {
                  v67 = MEMORY[0x277D84F90];
                  v68 = MEMORY[0x277D84F90];
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, (2 * v8) | 1, 0, &v68);
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v9, 0, &v67);
                  v3 = v68;
                  goto LABEL_107;
                }

                v7 = 4 * v39;
                bzero(v30 + 32, 4 * v39);
                v69 = v30;
                v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v8 + 16) = v5;
                bzero((v8 + 32), 4 * v5);
                v68 = v8;
                v40 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v40 + 16) = v5;
                bzero((v40 + 32), 4 * v5);
                v67 = v40;
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, v6, v5, &v68);
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v9, v5, &v67);
                v4 = v67;
                if (v5 <= *(v67 + 2))
                {
                  v3 = v68;
                  if (v5 <= *(v68 + 2))
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (isUniquelyReferenced_nonNull_native)
                    {
LABEL_60:
                      a3 = 0xFFF0000100000000;
                      v41 = 32;
                      v42 = v5;
                      while (1)
                      {
                        v44 = *&v3[v41] * *&v4[v41];
                        v45 = 4293918721 * (-1048577 * v44);
                        v46 = __CFADD__(v45, v44);
                        v47 = v45 + v44;
                        v43 = HIDWORD(v47);
                        if (v46)
                        {
                          LODWORD(v43) = HIDWORD(v47) + 0xFFFFF;
                          if (HIDWORD(v47) >= 0xFFF00001)
                          {
                            __break(1u);
LABEL_68:
                            v30 = MEMORY[0x277D84F90];
                            goto LABEL_69;
                          }
                        }

                        else if (v47 >= 0xFFF0000100000000)
                        {
                          LODWORD(v43) = HIDWORD(v47) + 0xFFFFF;
                        }

                        *&v3[v41] = v43;
                        v41 += 4;
                        if (!--v42)
                        {
                          goto LABEL_105;
                        }
                      }
                    }

LABEL_134:
                    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                    v3 = isUniquelyReferenced_nonNull_native;
                    goto LABEL_60;
                  }

LABEL_133:
                  __break(1u);
                  goto LABEL_134;
                }

LABEL_132:
                __break(1u);
                goto LABEL_133;
              }

              goto LABEL_129;
            }

            goto LABEL_127;
          }

          goto LABEL_125;
        }

        goto LABEL_123;
      }

      goto LABEL_121;
    }

    goto LABEL_119;
  }

LABEL_43:
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (!v5)
  {
    goto LABEL_68;
  }

  v66 = isUniquelyReferenced_nonNull_native;
  v33 = a2;
  v34 = a3;
  v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v30 + 2) = v5;
  bzero(v30 + 32, 4 * v5);
  isUniquelyReferenced_nonNull_native = v66;
  a2 = v33;
  a3 = v34;
LABEL_69:
  while (2)
  {
    v48 = v8 - 1;
    if (v8 >= 1)
    {
      if (!*(isUniquelyReferenced_nonNull_native + 28 + 4 * v8--))
      {
        continue;
      }

      v8 = v48 + 1;
      if (v9 >= v48 + 1)
      {
        goto LABEL_74;
      }

      __break(1u);
    }

    break;
  }

  v8 = 0;
  do
  {
LABEL_74:
    v50 = v7 - 1;
    if (v7 < 1)
    {
      goto LABEL_108;
    }
  }

  while (!*(a2 + 28 + 4 * v7--));
  v9 = v50 + 1;
  if (v6 < v50 + 1)
  {
    goto LABEL_122;
  }

  if (!v8)
  {
    goto LABEL_108;
  }

  v52 = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    goto LABEL_124;
  }

  v20 = __OFSUB__(v52, 1);
  v53 = v52 - 1;
  if (v20)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v6 = *(v30 + 2);
  if (v6 < v53)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v53 < 0)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (!v6)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v54 = a3;
  v7 = 0xFFF0000100000000;
  v5 = (v30 + 32);
  bzero(v30 + 32, 4 * v53);
  v55 = 0;
  a3 = v54;
LABEL_85:
  v56 = 0;
  v57 = v55 + 1;
  while (1)
  {
    v59 = *&v3[4 * v56] * *&v4[4 * v55];
    v60 = 4293918721 * (-1048577 * v59);
    v46 = __CFADD__(v60, v59);
    v61 = v60 + v59;
    v62 = HIDWORD(v61);
    if (v46)
    {
      v63 = HIDWORD(v61) + 0xFFFFF;
      if (v62 >= 0xFFF00001)
      {
        goto LABEL_112;
      }
    }

    else if (v61 >= 0xFFF0000100000000)
    {
      v63 = HIDWORD(v61) + 0xFFFFF;
    }

    else
    {
      v63 = HIDWORD(v61);
    }

    if (v55 + v56 >= v6)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v58 = *(v5 + 4 * v56);
    if (v63)
    {
      v46 = v63 <= 0xFFF00001;
      v64 = -1048575 - v63;
      if (!v46)
      {
        goto LABEL_111;
      }

      if (v58 >= v64)
      {
        v58 -= v64;
        goto LABEL_87;
      }

      v46 = v64 <= 0xFFF00001;
      v65 = -1048575 - v64;
      if (!v46)
      {
        goto LABEL_113;
      }

      v46 = __CFADD__(v58, v65);
      v58 += v65;
      if (v46)
      {
        break;
      }
    }

LABEL_87:
    *(v5 + 4 * v56++) = v58;
    if (v9 == v56)
    {
      v5 += 4;
      ++v55;
      if (v57 == v8)
      {
        goto LABEL_108;
      }

      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_105:
  v68 = v3;
LABEL_107:
  specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v3, v5, &v69);

  v30 = v69;
  a3 = v66;
LABEL_108:
  if (!*(v30 + 2))
  {
    goto LABEL_118;
  }

  *a3 = v30;
}

void _s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_130;
  }

  v7 = *(a1 + 16);
  v4 = (a1 + 32);
  v8 = v7;
  do
  {
    if (v8 < 1)
    {
LABEL_13:
      *a3 = &_s4VDAF10PolynomialV1moiyACyxGAE_AEtFZAA7Field64V_Tt2B5Tv_r;
      return;
    }
  }

  while (!*(a1 + 24 + 8 * v8--));
  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_131;
  }

  v11 = *(a2 + 16);
  v3 = (a2 + 32);
  v12 = v11;
  do
  {
    if (v12 < 1)
    {
      goto LABEL_13;
    }
  }

  while (!*(a2 + 24 + 8 * v12--));
  v14 = *(a1 + 16);
  while (1)
  {
    v15 = v14 - 1;
    if (v14 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v14--))
    {
      goto LABEL_15;
    }
  }

  v15 = -1;
LABEL_15:
  v17 = *(a2 + 16);
  while (1)
  {
    v18 = v17 - 1;
    if (v17 < 1)
    {
      break;
    }

    if (*(a2 + 24 + 8 * v17--))
    {
      goto LABEL_20;
    }
  }

  v18 = -1;
LABEL_20:
  v20 = __OFADD__(v15, v18);
  v21 = v15 + v18;
  if (v20)
  {
    goto LABEL_133;
  }

  v5 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v22 = *(a1 + 16);
  while (1)
  {
    v23 = v22 - 1;
    if (v22 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v22--))
    {
      goto LABEL_27;
    }
  }

  v23 = -1;
LABEL_27:
  v25 = *(a2 + 16);
  while (1)
  {
    v26 = v25 - 1;
    if (v25 < 1)
    {
      break;
    }

    if (*(a2 + 24 + 8 * v25--))
    {
      goto LABEL_32;
    }
  }

  v26 = -1;
LABEL_32:
  if (v26 > v23)
  {
    v23 = v26;
  }

  if (v23 >= 61)
  {
    v28 = a1;
    v29 = a2;
    v84 = a3;
    a1 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v5);
    if ((a1 & 0x8000000000000000) == 0)
    {
      v30 = MEMORY[0x277D84F90];
      if (a1)
      {
        v5 = a1;
        v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v30 + 2) = v5;
        bzero(v30 + 32, 8 * v5);
      }

      a3 = v84;
      v87 = v30;
      do
      {
        v31 = v7 - 1;
        if (v7 < 1)
        {
          v7 = 0;
          goto LABEL_47;
        }
      }

      while (!*(v28 + 24 + 8 * v7--));
      v7 = v31 + 1;
      if (v6 < v31 + 1)
      {
        __break(1u);
        goto LABEL_43;
      }

LABEL_47:
      v35 = 2 * v10 + 3;
      do
      {
        v36 = v11 - 1;
        if (v11 < 1)
        {
          goto LABEL_123;
        }

        v37 = *(v29 + 24 + 8 * v11);
        v35 -= 2;
        --v11;
      }

      while (!v37);
      v38 = v36 + 1;
      if (v10 >= v36 + 1)
      {
        if (!v7)
        {
          goto LABEL_123;
        }

        v39 = v7 + v38;
        if (!__OFADD__(v7, v38))
        {
          if (!__OFSUB__(v39, 1))
          {
            v40 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v39 - 1);
            if (*(v30 + 2) >= v40)
            {
              v5 = v40;
              if ((v40 & 0x8000000000000000) == 0)
              {
                v41 = (2 * v7) | 1;
                if (!v40)
                {
                  v85 = MEMORY[0x277D84F90];
                  v86 = MEMORY[0x277D84F90];
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, (2 * v7) | 1, 0, &v86);
                  specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v35, 0, &v85);
                  v3 = v86;
                  goto LABEL_122;
                }

                bzero(v30 + 32, 8 * v40);
                v87 = v30;
                v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v42 + 16) = v5;
                bzero((v42 + 32), 8 * v5);
                v86 = v42;
                v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v43 + 16) = v5;
                bzero((v43 + 32), 8 * v5);
                v85 = v43;
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v4, 0, v41, v5, &v86);
                specialized discreteFourierTransform<A, B, C>(input:size:output:)(v3, 0, v35, v5, &v85);
                v4 = v85;
                if (v5 <= *(v85 + 2))
                {
                  v3 = v86;
                  if (v5 <= *(v86 + 2))
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_60:
                      v44 = 32;
                      v45 = v5;
                      while (1)
                      {
                        v50 = *&v3[v44];
                        v51 = *&v4[v44];
                        v52 = (v50 * v51) >> 64;
                        v53 = (0xFFFFFFFEFFFFFFFFLL * v50 * v51 * 0xFFFFFFFF00000001) >> 64;
                        v46 = __CFADD__(-(v50 * v51), v50 * v51);
                        v54 = v53 + v52;
                        if (__CFADD__(v53, v52))
                        {
                          goto LABEL_62;
                        }

                        if (v54 == -1)
                        {
                          if (v46)
                          {
                            v46 = 1;
LABEL_62:
                            v47 = v46 + v54;
                            v48 = __CFADD__(v47, 0xFFFFFFFFLL);
                            v49 = v47 + 0xFFFFFFFFLL;
                            if (v48)
                            {
                              goto LABEL_132;
                            }

                            goto LABEL_63;
                          }

                          v49 = 4294967294;
                        }

                        else
                        {
                          v49 = v54 + v46;
                          if (v49 >= 0xFFFFFFFF00000001)
                          {
                            v49 += 0xFFFFFFFFLL;
                          }
                        }

LABEL_63:
                        *&v3[v44] = v49;
                        v44 += 8;
                        if (!--v45)
                        {
                          goto LABEL_120;
                        }
                      }
                    }

LABEL_151:
                    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
                    goto LABEL_60;
                  }

LABEL_150:
                  __break(1u);
                  goto LABEL_151;
                }

LABEL_149:
                __break(1u);
                goto LABEL_150;
              }

              goto LABEL_146;
            }

            goto LABEL_144;
          }

          goto LABEL_142;
        }

        goto LABEL_140;
      }

      goto LABEL_138;
    }

    goto LABEL_136;
  }

LABEL_43:
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v5)
  {
    v84 = a1;
    v33 = a2;
    v34 = a3;
    v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v30 + 2) = v5;
    bzero(v30 + 32, 8 * v5);
    a1 = v84;
    a2 = v33;
    a3 = v34;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  while (1)
  {
    v55 = v7 - 1;
    if (v7 < 1)
    {
      break;
    }

    if (*(a1 + 24 + 8 * v7--))
    {
      v57 = v55 + 1;
      if (v6 >= v55 + 1)
      {
        goto LABEL_80;
      }

      __break(1u);
      break;
    }
  }

  v57 = 0;
  do
  {
LABEL_80:
    v58 = v11 - 1;
    if (v11 < 1)
    {
      goto LABEL_123;
    }
  }

  while (!*(a2 + 24 + 8 * v11--));
  v60 = v58 + 1;
  if (v10 < v58 + 1)
  {
    goto LABEL_139;
  }

  if (!v57)
  {
    goto LABEL_123;
  }

  v61 = v57 + v60;
  if (__OFADD__(v57, v60))
  {
    goto LABEL_141;
  }

  v20 = __OFSUB__(v61, 1);
  v62 = v61 - 1;
  if (v20)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v63 = *(v30 + 2);
  if (v63 < v62)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v62 < 0)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (!v63)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v64 = a3;
  v5 = (v30 + 32);
  bzero(v30 + 32, 8 * v62);
  v65 = 0;
  v66 = v30 + 32;
  a3 = v64;
LABEL_91:
  v67 = 0;
  v68 = v65 + 1;
  v69 = v66;
  while (1)
  {
    v71 = *&v4[8 * v65];
    v72 = v65 + v67;
    v73 = *&v3[8 * v67];
    v74 = (v73 * v71) >> 64;
    v75 = (0xFFFFFFFEFFFFFFFFLL * v73 * v71 * 0xFFFFFFFF00000001) >> 64;
    v76 = __CFADD__(-(v73 * v71), v73 * v71);
    v77 = v75 + v74;
    if (!__CFADD__(v75, v74))
    {
      if (v77 != -1)
      {
        v80 = v77 + v76;
        v79 = v80 + 0xFFFFFFFF;
        if (v80 < 0xFFFFFFFF00000001)
        {
          v79 = v80;
        }

        if (v72 >= v63)
        {
          goto LABEL_126;
        }

        goto LABEL_106;
      }

      if (!v76)
      {
        if (v72 >= v63)
        {
          goto LABEL_126;
        }

        v81 = *v69;
        v70 = v69;
        v82 = 0xFFFFFFFE00000003;
LABEL_109:
        if (v81 >= v82)
        {
          v81 -= v82;
        }

        else
        {
          v48 = v82 <= 0xFFFFFFFF00000001;
          v83 = 0xFFFFFFFF00000001 - v82;
          if (!v48)
          {
            goto LABEL_128;
          }

          v48 = __CFADD__(v81, v83);
          v81 += v83;
          if (v48)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_93;
      }

      v76 = 1;
    }

    v78 = v76 + v77;
    v79 = v78 + 0xFFFFFFFF;
    if (v78 >= 0xFFFFFFFF00000001)
    {
      goto LABEL_127;
    }

    if (v72 >= v63)
    {
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

LABEL_106:
    v81 = *v69;
    if (v79)
    {
      break;
    }

    v70 = v69;
LABEL_93:
    ++v67;
    *v70 = v81;
    ++v69;
    if (v60 == v67)
    {
      v66 += 8;
      ++v65;
      if (v68 == v57)
      {
        goto LABEL_123;
      }

      goto LABEL_91;
    }
  }

  v70 = (v5 + 8 * v72);
  v48 = v79 <= 0xFFFFFFFF00000001;
  v82 = 0xFFFFFFFF00000001 - v79;
  if (v48)
  {
    goto LABEL_109;
  }

  __break(1u);
LABEL_120:
  v86 = v3;
LABEL_122:
  specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v3, v5, &v87);

  v30 = v87;
  a3 = v84;
LABEL_123:
  if (!*(v30 + 2))
  {
    goto LABEL_135;
  }

  *a3 = v30;
}

uint64_t specialized FullyLinearProof.proofLength.getter()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v2 = *(v0 + 8);
  specialized Gadget.wirePolynomialLength.getter();
  v3 = specialized Gadget.gadgetPolynomialLength.getter();
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v5 = __OFADD__(v2, v3);
  v6 = v2 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v11;
  v1 = *(v11 + 16);
  v4 = *(v11 + 24);
  v3 = v1 + 1;
  if (v1 >= v4 >> 1)
  {
LABEL_9:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3, 1);
    v7 = v11;
  }

  v8 = 0;
  *(v7 + 16) = v3;
  *(v7 + 8 * v1 + 32) = v6;
  v4 = 32;
  do
  {
    v9 = *(v7 + v4);
    v5 = __OFADD__(v8, v9);
    v8 += v9;
    if (v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 += 8;
    --v3;
  }

  while (v3);

  return v8;
}

{
  v12 = *(v0 + 24);
  v13 = *(v0 + 40);
  v2 = *(v0 + 8);
  specialized Gadget.wirePolynomialLength.getter();
  v3 = specialized Gadget.gadgetPolynomialLength.getter();
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v5 = __OFADD__(v2, v3);
  v6 = v2 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v11;
  v1 = *(v11 + 16);
  v4 = *(v11 + 24);
  v3 = v1 + 1;
  if (v1 >= v4 >> 1)
  {
LABEL_9:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3, 1);
    v7 = v11;
  }

  v8 = 0;
  *(v7 + 16) = v3;
  *(v7 + 8 * v1 + 32) = v6;
  v4 = 32;
  do
  {
    v9 = *(v7 + v4);
    v5 = __OFADD__(v8, v9);
    v8 += v9;
    if (v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 += 8;
    --v3;
  }

  while (v3);

  return v8;
}

{
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  v2 = *(v0 + 48);
  specialized Gadget.wirePolynomialLength.getter();
  v3 = specialized Gadget.gadgetPolynomialLength.getter();
  v11 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v5 = __OFADD__(v2, v3);
  v6 = v2 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v11;
  v1 = *(v11 + 16);
  v4 = *(v11 + 24);
  v3 = v1 + 1;
  if (v1 >= v4 >> 1)
  {
LABEL_9:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3, 1);
    v7 = v11;
  }

  v8 = 0;
  *(v7 + 16) = v3;
  *(v7 + 8 * v1 + 32) = v6;
  v4 = 32;
  do
  {
    v9 = *(v7 + v4);
    v5 = __OFADD__(v8, v9);
    v8 += v9;
    if (v5)
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 += 8;
    --v3;
  }

  while (v3);

  return v8;
}

uint64_t specialized FullyLinearProof.verifierLength.getter()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 40);
  v2 = *(v0 + 8);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v4 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v10;
  v1 = *(v10 + 16);
  v3 = *(v10 + 24);
  v2 = v1 + 1;
  if (v1 >= v3 >> 1)
  {
LABEL_10:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v2, 1);
    v5 = v10;
  }

  v6 = 0;
  *(v5 + 16) = v2;
  *(v5 + 8 * v1 + 32) = v4;
  v3 = 32;
  do
  {
    v7 = *(v5 + v3);
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 += 8;
    --v2;
  }

  while (v2);

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  return result;
}

{
  v11 = *(v0 + 24);
  v12 = *(v0 + 40);
  v2 = *(v0 + 8);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v4 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v10;
  v1 = *(v10 + 16);
  v3 = *(v10 + 24);
  v2 = v1 + 1;
  if (v1 >= v3 >> 1)
  {
LABEL_10:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v2, 1);
    v5 = v10;
  }

  v6 = 0;
  *(v5 + 16) = v2;
  *(v5 + 8 * v1 + 32) = v4;
  v3 = 32;
  do
  {
    v7 = *(v5 + v3);
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 += 8;
    --v2;
  }

  while (v2);

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  return result;
}

{
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v2 = *(v0 + 48);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v4 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v10;
  v1 = *(v10 + 16);
  v3 = *(v10 + 24);
  v2 = v1 + 1;
  if (v1 >= v3 >> 1)
  {
LABEL_10:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v2, 1);
    v5 = v10;
  }

  v6 = 0;
  *(v5 + 16) = v2;
  *(v5 + 8 * v1 + 32) = v4;
  v3 = 32;
  do
  {
    v7 = *(v5 + v3);
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_9;
    }

    v3 += 8;
    --v2;
  }

  while (v2);

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(unsigned __int8 a1, int a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 7, 0, MEMORY[0x277D84F90]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 1;
  v12[0] = v4;
  v11 = a2;
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(&v11, v12);
  specialized Array.append<A>(contentsOf:)(v7);
  LOWORD(v11) = __rev16(a1 + 1);
  v8 = specialized _copyCollectionToContiguousArray<A>(_:)(&v11, &v11 + 2);
  specialized Array.append<A>(contentsOf:)(v8);
  result = v12[0];
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized closure #1 in PINE.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v7 = _s4VDAF4PINEV19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA7Field40V_SRySfGAA19XofHmacSha256Aes128CTt0B5Tm(1u, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44590;
  v9 = *(a2 + 320);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v9 > 0xFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = v9;
  v10 = *(a2 + 312);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 > 0xFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(result + 33) = v10;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 <= 0xFF)
  {
    *(result + 34) = a3;
    v11 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(a1, v7, result);

    swift_setDeallocating();
    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

void specialized PINECircuit.truncate(measurement:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 96);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(a1 + 16) != v4)
  {
    _StringGuts.grow(_:)(35);

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v6);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v7 = 0xD00000000000001BLL;
    *(v7 + 8) = 0x8000000270C51C80;
    *(v7 + 16) = 2;
    swift_willThrow();
    return;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if (v4 < v3)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v4 == v3)
  {
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v3) | 1);
  }
}

uint64_t specialized PINECircuit.truncate(measurement:)(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t))
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 96);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(result + 16) == v5)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (v5 >= v4)
      {
        if (v5 != v4)
        {
          return a2(result, result + 32, 0, (2 * v4) | 1);
        }

        v6 = result;

        return v6;
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  _StringGuts.grow(_:)(35);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v7);

  MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v8);

  lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  swift_allocError();
  *v9 = 0xD00000000000001BLL;
  *(v9 + 8) = 0x8000000270C51C80;
  *(v9 + 16) = 2;
  swift_willThrow();
  return v6;
}

void specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 128);
  if (v6 < 0)
  {
    __break(1u);
  }

  else if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v9 = 0;
    v10 = v17;
    do
    {
      specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:)(a2, a3, a4, a5, &v16);
      v11 = v16;
      v17 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v17;
      }

      ++v9;
      *(v10 + 16) = v13 + 1;
      *(v10 + 4 * v13 + 32) = v11;
    }

    while (v6 != v9);
  }
}

uint64_t specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(BOOL, uint64_t, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v8 = *(v7 + 128);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v12 = result;
      v23 = MEMORY[0x277D84F90];
      a6(0, v8, 0);
      v13 = 0;
      v9 = v23;
      do
      {
        a7(&v22, v13, v12, a2, a3, a4, a5, v21);
        v14 = v22;
        v23 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          a6(v15 > 1, v16 + 1, 1);
          v9 = v23;
        }

        ++v13;
        *(v9 + 16) = v16 + 1;
        *(v9 + 8 * v16 + 32) = v14;
      }

      while (v8 != v13);
    }

    return v9;
  }

  return result;
}

uint64_t specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(v9 + 72);
  if (*(a2 + 16) != v16)
  {
    _StringGuts.grow(_:)(35);

    v103 = 0xD00000000000001BLL;
    v104 = 0x8000000270C51C80;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = v16;
    goto LABEL_10;
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v14 = v10;
  v13 = v9;
  v95 = a1;
  v16 = a4;
  v12 = a5;
  v15 = a6;
  v11 = a3;
  v100 = a2;
  v101 = a8;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v103 = 0xD000000000000015;
    v104 = 0x8000000270C51CA0;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_10;
  }

  v96 = a7;
  v19 = *(a7 + 16);
  v20 = *(v9 + 24);
  v105 = *(v9 + 8);
  v106 = v20;
  v107 = *(v9 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v19 != 1)
  {
    _StringGuts.grow(_:)(33);

    v103 = 0xD000000000000019;
    v104 = 0x8000000270C51CC0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v109 = 1;
    goto LABEL_10;
  }

  if (*(v101 + 16))
  {
    _StringGuts.grow(_:)(33);

    v103 = 0xD000000000000019;
    v104 = 0x8000000270C51CE0;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v21);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = 0;
LABEL_10:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    v26 = v104;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v27 = v103;
    *(v27 + 8) = v26;
    *(v27 + 16) = 2;
    return swift_willThrow();
  }

  if (a9 < 1)
  {
    goto LABEL_102;
  }

  v29 = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v31 + 16);

  if (v32 != v17)
  {
    goto LABEL_107;
  }

  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v98 = *(v16 + 16);
  v33 = *(&v105 + 1);
  v15 = v105;
  v34 = *(&v106 + 1);
  v12 = specialized Gadget.wirePolynomialLength.getter();
  v11 = specialized Gadget.gadgetPolynomialLength.getter();
  v109 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v35 = *(v96 + 32);
  v96 += 32;
  v108[0] = v15;
  v108[1] = v33;
  v108[2] = v34;
  v108[3] = v12;
  v108[4] = v11;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v99 = v35;
    specialized FieldElement.pow(_:)(v12, v35, &v103);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_21:
  v36 = v96;
  if (v103 == static Field40.one)
  {
    v103 = 0;
    v104 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v37 = specialized FieldElement.description.getter(v99);
    MEMORY[0x2743B25F0](v37);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v102 = v12;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v38);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v39 = v103;
    v40 = v104;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v41 = v39;
    *(v41 + 8) = v40;
    *(v41 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v42 = (2 * v98) | 1;
  v98 = specialized Collection.prefix(_:)(v15, v16, v16 + 32, 0, v42);
  v92 = v44;
  v93 = v43;
  v91 = v45;
  v46 = specialized Collection.dropFirst(_:)(v15, v16, v16 + 32, 0, v42);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = specialized Collection.prefix(_:)(v11, v46, v47, v49, v51);
  v89 = v54;
  v90 = v53;
  v87 = v56;
  v88 = v55;
  specialized Collection.dropFirst(_:)(v11, v46, v48, v50, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field40VGMd, &_s4VDAF11QueryGadgetCyAA7Field40VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v90, v89, v88, v87, v98, v93, v92, v91, v99, v108);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v57 = *(v109 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v99 = v109;
  if (v109 < 0 || (v109 & 0x4000000000000000) != 0)
  {
    v15 = MEMORY[0x2743B2FD0]();
  }

  else
  {
    v15 = *(v109 + 16);
  }

  v58 = v100;
  v59 = v101;
  v16 = v95;
  v11 = MEMORY[0x277D84F90];
  v94 = v15;
  if (v15)
  {
    v103 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_110:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
      goto LABEL_42;
    }

    v11 = v103;
    if ((v99 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v61 = MEMORY[0x2743B2D10](i, v99);
        v103 = v11;
        v63 = *(v11 + 16);
        v62 = *(v11 + 24);
        if (v63 >= v62 >> 1)
        {
          v64 = v61;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v61 = v64;
          v11 = v103;
        }

        *(v11 + 16) = v63 + 1;
        *(v11 + 8 * v63 + 32) = v61 | 0x4000000000000000;
      }
    }

    else
    {
      v65 = (v99 + 32);
      v66 = *(v103 + 16);
      do
      {
        v67 = *v65;
        v103 = v11;
        v68 = *(v11 + 24);

        if (v66 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v66 + 1, 1);
          v11 = v103;
        }

        *(v11 + 16) = v66 + 1;
        *(v11 + 8 * v66 + 32) = v67 | 0x4000000000000000;
        ++v65;
        ++v66;
        --v15;
        v36 = v96;
      }

      while (v15);
    }

    v58 = v100;
    v59 = v101;
    v15 = v94;
    v16 = v95;
  }

  specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v58, v59, v11, &v109);
  v101 = v14;
  if (v14)
  {
    swift_unknownObjectRelease();
  }

  v11 = v109;
  v13 = *v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_42:
  v12 = *(v13 + 2);
  v69 = *(v13 + 3);
  if (v12 >= v69 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v12 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v12 + 1;
  *&v13[8 * v12 + 32] = v11;
  *v16 = v13;
  if ((v15 & 0x8000000000000000) == 0)
  {
    v70 = v99;
    if (!v15)
    {
LABEL_91:
      swift_unknownObjectRelease();
    }

    v14 = 0;
    v100 = v99 & 0xC000000000000001;
    v97 = v99 + 32;
    while (1)
    {
      if (v100)
      {
        v71 = MEMORY[0x2743B2D10](v14, v70);
      }

      else
      {
        if (v14 >= *(v70 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_unknownObjectRelease();
          v29 = v15;
LABEL_13:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v12, v29);
          v16 = v30;
          goto LABEL_19;
        }

        v72 = *(v97 + 8 * v14);
      }

      v73 = *(v71 + 72);

      if (__OFADD__(v73, 1))
      {
        goto LABEL_97;
      }

      if (((v73 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      v74 = 1 << -__clz(v73);
      if (v73 == -1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v74;
      }

      if (v14 == 1)
      {
        goto LABEL_99;
      }

      v98 = *(v36 + 8 * v14);
      if (v100)
      {
        break;
      }

      v76 = *(v97 + 8 * v14);
      v75 = *(v76 + 56);
      if (v75 < 0)
      {
        goto LABEL_106;
      }

      if (v75)
      {
        goto LABEL_63;
      }

      v36 = v96;
LABEL_87:
      v11 = *(v76 + 32);
LABEL_88:
      v12 = *(v13 + 2);
      v86 = *(v13 + 3);
      if (v12 >= v86 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v12 + 1, 1, v13);
      }

      ++v14;
      *(v13 + 2) = v12 + 1;
      *&v13[8 * v12 + 32] = v11;
      *v16 = v13;
      v70 = v99;
      if (v14 == v15)
      {
        goto LABEL_91;
      }
    }

    v75 = *(MEMORY[0x2743B2D10](v14, v70) + 56);
    swift_unknownObjectRelease();
    if (v75 < 0)
    {
      goto LABEL_100;
    }

    if (!v75)
    {
      v36 = v96;
LABEL_84:
      v11 = *(MEMORY[0x2743B2D10](v14, v70) + 32);
      swift_unknownObjectRelease();
      goto LABEL_88;
    }

LABEL_63:
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v16 = 0;
    v11 = 8 * v12;
    do
    {
      if (v100)
      {
        v15 = MEMORY[0x2743B2D10](v14, v99);
      }

      else
      {
        v15 = *(v97 + 8 * v14);
      }

      swift_beginAccess();
      v77 = *(v15 + 16);
      if (v16 >= *(v77 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v78 = *(v77 + 8 * v16 + 32);

      v79 = *(v78 + 16);
      if (v12 < v79 || v79 == 0)
      {
        goto LABEL_94;
      }

      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v15 + 16) = v12;
      bzero((v15 + 32), 8 * v12);
      v102 = v15;
      specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v78, v12, &v102);

      v81 = *(v102 + 2);
      if (!v81)
      {
        goto LABEL_95;
      }

      ++v16;
      while (v81 >= 1)
      {
        if (*&v102[8 * v81-- + 24])
        {
          specialized evaluateUsingHorner<A, B>(_:atInput:)(v102, v98, &v102);

          v83 = v102;
          goto LABEL_79;
        }
      }

      v83 = 0;
      v102 = 0;
LABEL_79:
      v85 = *(v13 + 2);
      v84 = *(v13 + 3);
      if (v85 >= v84 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v13);
      }

      *(v13 + 2) = v85 + 1;
      *&v13[8 * v85 + 32] = v83;
    }

    while (v16 != v75);
    if (v100)
    {
      v16 = v95;
      v36 = v96;
      v70 = v99;
      v15 = v94;
      goto LABEL_84;
    }

    v36 = v96;
    v76 = *(v97 + 8 * v14);
    v15 = v94;
    v16 = v95;
    goto LABEL_87;
  }

  __break(1u);
  return result;
}

{
  v17 = *(v9 + 72);
  if (*(a2 + 16) != v17)
  {
    _StringGuts.grow(_:)(35);

    v101 = 0xD00000000000001BLL;
    v102 = 0x8000000270C51C80;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v107 = v17;
    goto LABEL_10;
  }

  v18 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_97:
    __break(1u);
LABEL_98:
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
    goto LABEL_105;
  }

  v15 = v10;
  v14 = v9;
  v93 = a1;
  v17 = a4;
  v12 = a5;
  v16 = a6;
  v11 = a3;
  v98 = a2;
  v99 = a8;
  if (v18 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v101 = 0xD000000000000015;
    v102 = 0x8000000270C51CA0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v107 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_10;
  }

  v94 = a7;
  v20 = *(a7 + 16);
  v21 = *(v9 + 24);
  v103 = *(v9 + 8);
  v104 = v21;
  v105 = *(v9 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v20 != 1)
  {
    _StringGuts.grow(_:)(33);

    v101 = 0xD000000000000019;
    v102 = 0x8000000270C51CC0;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v107 = 1;
    goto LABEL_10;
  }

  v13 = *(v99 + 16);
  if (v13)
  {
    _StringGuts.grow(_:)(33);

    v101 = 0xD000000000000019;
    v102 = 0x8000000270C51CE0;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v107 = 0;
LABEL_10:
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    v27 = v102;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v28 = v101;
    *(v28 + 8) = v27;
    *(v28 + 16) = 2;
    return swift_willThrow();
  }

  if (a9 < 1)
  {
    goto LABEL_103;
  }

  v30 = v16;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (v33 != v18)
  {
    goto LABEL_109;
  }

  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v96 = *(v17 + 16);
  v13 = *(&v103 + 1);
  v16 = v103;
  v34 = *(&v104 + 1);
  v12 = specialized Gadget.wirePolynomialLength.getter();
  v11 = specialized Gadget.gadgetPolynomialLength.getter();
  v107 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v35 = *(v94 + 32);
  v94 += 32;
  v106[0] = v16;
  v106[1] = v13;
  v106[2] = v34;
  v106[3] = v12;
  v106[4] = v11;
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (!HIDWORD(v12))
  {
    LODWORD(v97) = v35;
    specialized FieldElement.pow(_:)(v12, v35, &v101);
    v13 = v94;
    if (one-time initialization token for one == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_106;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_22:
  if (v101 == static Field32.one)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v36 = specialized FieldElement.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v100 = v12;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v37);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v38 = v101;
    v39 = v102;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v41 = (2 * v96) | 1;
  v96 = specialized Collection.prefix(_:)(v16, v17, v17 + 32, 0, v41);
  v90 = v43;
  v91 = v42;
  v89 = v44;
  v45 = specialized Collection.dropFirst(_:)(v16, v17, v17 + 32, 0, v41);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = specialized Collection.prefix(_:)(v11, v45, v46, v48, v50);
  v87 = v53;
  v88 = v52;
  v85 = v55;
  v86 = v54;
  specialized Collection.dropFirst(_:)(v11, v45, v47, v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field32VGMd, &_s4VDAF11QueryGadgetCyAA7Field32VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v88, v87, v86, v85, v96, v91, v90, v89, v97, v106);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v56 = *(v107 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v97 = v107;
  if (v107 < 0 || (v107 & 0x4000000000000000) != 0)
  {
    v16 = MEMORY[0x2743B2FD0]();
  }

  else
  {
    v16 = *(v107 + 16);
  }

  v57 = v98;
  v58 = v99;
  v17 = v93;
  v11 = MEMORY[0x277D84F90];
  v92 = v16;
  if (v16)
  {
    v101 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
LABEL_112:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      v14 = result;
      goto LABEL_43;
    }

    v11 = v101;
    if ((v97 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v60 = MEMORY[0x2743B2D10](i, v97);
        v101 = v11;
        v62 = *(v11 + 16);
        v61 = *(v11 + 24);
        if (v62 >= v61 >> 1)
        {
          v63 = v60;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
          v60 = v63;
          v11 = v101;
        }

        *(v11 + 16) = v62 + 1;
        *(v11 + 8 * v62 + 32) = v60 | 0x4000000000000000;
      }
    }

    else
    {
      v64 = (v97 + 32);
      v65 = *(v101 + 16);
      do
      {
        v66 = *v64;
        v101 = v11;
        v67 = *(v11 + 24);

        if (v65 >= v67 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v65 + 1, 1);
          v11 = v101;
        }

        *(v11 + 16) = v65 + 1;
        *(v11 + 8 * v65 + 32) = v66 | 0x4000000000000000;
        ++v64;
        ++v65;
        --v16;
        v13 = v94;
      }

      while (v16);
    }

    v57 = v98;
    v58 = v99;
    v16 = v92;
    v17 = v93;
  }

  specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v57, v58, v11, &v100);
  v99 = v15;
  if (v15)
  {
    swift_unknownObjectRelease();
  }

  v11 = v100;
  v14 = *v17;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_112;
  }

LABEL_43:
  v12 = *(v14 + 2);
  v68 = *(v14 + 3);
  if (v12 >= v68 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v12 + 1, 1, v14);
    v14 = result;
  }

  *(v14 + 2) = v12 + 1;
  *&v14[4 * v12 + 32] = v11;
  *v17 = v14;
  if ((v16 & 0x8000000000000000) == 0)
  {
    v69 = v97;
    if (!v16)
    {
LABEL_92:
      swift_unknownObjectRelease();
    }

    v15 = 0;
    v98 = v97 & 0xC000000000000001;
    v95 = v97 + 32;
    while (1)
    {
      if (v98)
      {
        v70 = MEMORY[0x2743B2D10](v15, v69);
      }

      else
      {
        if (v15 >= *(v69 + 16))
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          swift_unknownObjectRelease();
          v30 = v16;
LABEL_13:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v17, v12, v30);
          v17 = v31;
          goto LABEL_19;
        }

        v71 = *(v95 + 8 * v15);
      }

      v72 = *(v70 + 72);

      if (__OFADD__(v72, 1))
      {
        goto LABEL_98;
      }

      if (((v72 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      v73 = 1 << -__clz(v72);
      if (v72 == -1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v73;
      }

      if (v15 == 1)
      {
        goto LABEL_100;
      }

      LODWORD(v96) = *(v13 + 4 * v15);
      if (v98)
      {
        break;
      }

      v74 = *(v95 + 8 * v15);
      v13 = *(v74 + 56);
      if (v13 < 0)
      {
        goto LABEL_108;
      }

      if (v13)
      {
        goto LABEL_64;
      }

      v13 = v94;
LABEL_88:
      v11 = *(v74 + 32);
LABEL_89:
      v12 = *(v14 + 2);
      v84 = *(v14 + 3);
      if (v12 >= v84 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v12 + 1, 1, v14);
      }

      ++v15;
      *(v14 + 2) = v12 + 1;
      *&v14[4 * v12 + 32] = v11;
      *v17 = v14;
      v69 = v97;
      if (v15 == v16)
      {
        goto LABEL_92;
      }
    }

    v13 = *(MEMORY[0x2743B2D10](v15, v69) + 56);
    swift_unknownObjectRelease();
    if (v13 < 0)
    {
      goto LABEL_101;
    }

    if (!v13)
    {
      v13 = v94;
LABEL_85:
      v11 = *(MEMORY[0x2743B2D10](v15, v69) + 32);
      swift_unknownObjectRelease();
      goto LABEL_89;
    }

LABEL_64:
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_102;
    }

    v17 = 0;
    v11 = 4 * v12;
    do
    {
      if (v98)
      {
        v16 = MEMORY[0x2743B2D10](v15, v97);
      }

      else
      {
        v16 = *(v95 + 8 * v15);
      }

      swift_beginAccess();
      v75 = *(v16 + 16);
      if (v17 >= *(v75 + 16))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v76 = *(v75 + 8 * v17 + 32);

      v77 = *(v76 + 16);
      if (v12 < v77 || v77 == 0)
      {
        goto LABEL_95;
      }

      v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v16 + 16) = v12;
      bzero((v16 + 32), 4 * v12);
      v107 = v16;
      specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v76, v12, &v107);

      v79 = *(v107 + 16);
      if (!v79)
      {
        goto LABEL_96;
      }

      ++v17;
      while (v79 >= 1)
      {
        if (*(v107 + 4 * v79-- + 28))
        {
          specialized evaluateUsingHorner<A, B>(_:atInput:)(v107, v96, &v107);

          v81 = v107;
          goto LABEL_80;
        }
      }

      v81 = 0;
      LODWORD(v107) = 0;
LABEL_80:
      v83 = *(v14 + 2);
      v82 = *(v14 + 3);
      if (v83 >= v82 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v14);
      }

      *(v14 + 2) = v83 + 1;
      *&v14[4 * v83 + 32] = v81;
    }

    while (v17 != v13);
    if (v98)
    {
      v17 = v93;
      v13 = v94;
      v69 = v97;
      v16 = v92;
      goto LABEL_85;
    }

    v13 = v94;
    v74 = *(v95 + 8 * v15);
    v16 = v92;
    v17 = v93;
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

{
  v16 = *(v9 + 72);
  if (*(a2 + 16) != v16)
  {
    _StringGuts.grow(_:)(35);

    v103 = 0xD00000000000001BLL;
    v104 = 0x8000000270C51C80;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = v16;
    goto LABEL_10;
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v14 = v10;
  v13 = v9;
  v95 = a1;
  v16 = a4;
  v12 = a5;
  v15 = a6;
  v11 = a3;
  v100 = a2;
  v101 = a8;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v103 = 0xD000000000000015;
    v104 = 0x8000000270C51CA0;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_10;
  }

  v96 = a7;
  v19 = *(a7 + 16);
  v20 = *(v9 + 24);
  v105 = *(v9 + 8);
  v106 = v20;
  v107 = *(v9 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v19 != 1)
  {
    _StringGuts.grow(_:)(33);

    v103 = 0xD000000000000019;
    v104 = 0x8000000270C51CC0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v109 = 1;
    goto LABEL_10;
  }

  if (*(v101 + 16))
  {
    _StringGuts.grow(_:)(33);

    v103 = 0xD000000000000019;
    v104 = 0x8000000270C51CE0;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v21);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v109 = 0;
LABEL_10:
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    v26 = v104;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v27 = v103;
    *(v27 + 8) = v26;
    *(v27 + 16) = 2;
    return swift_willThrow();
  }

  if (a9 < 1)
  {
    goto LABEL_102;
  }

  v29 = v15;
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v31 + 16);

  if (v32 != v17)
  {
    goto LABEL_107;
  }

  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v98 = *(v16 + 16);
  v33 = *(&v105 + 1);
  v15 = v105;
  v34 = *(&v106 + 1);
  v12 = specialized Gadget.wirePolynomialLength.getter();
  v11 = specialized Gadget.gadgetPolynomialLength.getter();
  v109 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v35 = *(v96 + 32);
  v96 += 32;
  v108[0] = v15;
  v108[1] = v33;
  v108[2] = v34;
  v108[3] = v12;
  v108[4] = v11;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v99 = v35;
    specialized FieldElement.pow(_:)(v12, v35, &v103);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_21:
  v36 = v96;
  if (v103 == static Field64.one)
  {
    v103 = 0;
    v104 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v37 = specialized FieldElement.description.getter(v99);
    MEMORY[0x2743B25F0](v37);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v102 = v12;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v38);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v39 = v103;
    v40 = v104;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v41 = v39;
    *(v41 + 8) = v40;
    *(v41 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v42 = (2 * v98) | 1;
  v98 = specialized Collection.prefix(_:)(v15, v16, v16 + 32, 0, v42);
  v92 = v44;
  v93 = v43;
  v91 = v45;
  v46 = specialized Collection.dropFirst(_:)(v15, v16, v16 + 32, 0, v42);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = specialized Collection.prefix(_:)(v11, v46, v47, v49, v51);
  v89 = v54;
  v90 = v53;
  v87 = v56;
  v88 = v55;
  specialized Collection.dropFirst(_:)(v11, v46, v48, v50, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field64VGMd, &_s4VDAF11QueryGadgetCyAA7Field64VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v90, v89, v88, v87, v98, v93, v92, v91, v99, v108);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v57 = *(v109 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v99 = v109;
  if (v109 < 0 || (v109 & 0x4000000000000000) != 0)
  {
    v15 = MEMORY[0x2743B2FD0]();
  }

  else
  {
    v15 = *(v109 + 16);
  }

  v58 = v100;
  v59 = v101;
  v16 = v95;
  v11 = MEMORY[0x277D84F90];
  v94 = v15;
  if (v15)
  {
    v103 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_110:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      v13 = result;
      goto LABEL_42;
    }

    v11 = v103;
    if ((v99 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v61 = MEMORY[0x2743B2D10](i, v99);
        v103 = v11;
        v63 = *(v11 + 16);
        v62 = *(v11 + 24);
        if (v63 >= v62 >> 1)
        {
          v64 = v61;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v61 = v64;
          v11 = v103;
        }

        *(v11 + 16) = v63 + 1;
        *(v11 + 8 * v63 + 32) = v61 | 0x4000000000000000;
      }
    }

    else
    {
      v65 = (v99 + 32);
      v66 = *(v103 + 16);
      do
      {
        v67 = *v65;
        v103 = v11;
        v68 = *(v11 + 24);

        if (v66 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v66 + 1, 1);
          v11 = v103;
        }

        *(v11 + 16) = v66 + 1;
        *(v11 + 8 * v66 + 32) = v67 | 0x4000000000000000;
        ++v65;
        ++v66;
        --v15;
        v36 = v96;
      }

      while (v15);
    }

    v58 = v100;
    v59 = v101;
    v15 = v94;
    v16 = v95;
  }

  specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v58, v59, v11, &v109);
  v101 = v14;
  if (v14)
  {
    swift_unknownObjectRelease();
  }

  v11 = v109;
  v13 = *v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_42:
  v12 = *(v13 + 2);
  v69 = *(v13 + 3);
  if (v12 >= v69 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v12 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v12 + 1;
  *&v13[8 * v12 + 32] = v11;
  *v16 = v13;
  if ((v15 & 0x8000000000000000) == 0)
  {
    v70 = v99;
    if (!v15)
    {
LABEL_91:
      swift_unknownObjectRelease();
    }

    v14 = 0;
    v100 = v99 & 0xC000000000000001;
    v97 = v99 + 32;
    while (1)
    {
      if (v100)
      {
        v71 = MEMORY[0x2743B2D10](v14, v70);
      }

      else
      {
        if (v14 >= *(v70 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_unknownObjectRelease();
          v29 = v15;
LABEL_13:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v12, v29);
          v16 = v30;
          goto LABEL_19;
        }

        v72 = *(v97 + 8 * v14);
      }

      v73 = *(v71 + 72);

      if (__OFADD__(v73, 1))
      {
        goto LABEL_97;
      }

      if (((v73 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      v74 = 1 << -__clz(v73);
      if (v73 == -1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v74;
      }

      if (v14 == 1)
      {
        goto LABEL_99;
      }

      v98 = *(v36 + 8 * v14);
      if (v100)
      {
        break;
      }

      v76 = *(v97 + 8 * v14);
      v75 = *(v76 + 56);
      if (v75 < 0)
      {
        goto LABEL_106;
      }

      if (v75)
      {
        goto LABEL_63;
      }

      v36 = v96;
LABEL_87:
      v11 = *(v76 + 32);
LABEL_88:
      v12 = *(v13 + 2);
      v86 = *(v13 + 3);
      if (v12 >= v86 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v12 + 1, 1, v13);
      }

      ++v14;
      *(v13 + 2) = v12 + 1;
      *&v13[8 * v12 + 32] = v11;
      *v16 = v13;
      v70 = v99;
      if (v14 == v15)
      {
        goto LABEL_91;
      }
    }

    v75 = *(MEMORY[0x2743B2D10](v14, v70) + 56);
    swift_unknownObjectRelease();
    if (v75 < 0)
    {
      goto LABEL_100;
    }

    if (!v75)
    {
      v36 = v96;
LABEL_84:
      v11 = *(MEMORY[0x2743B2D10](v14, v70) + 32);
      swift_unknownObjectRelease();
      goto LABEL_88;
    }

LABEL_63:
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    v16 = 0;
    v11 = 8 * v12;
    do
    {
      if (v100)
      {
        v15 = MEMORY[0x2743B2D10](v14, v99);
      }

      else
      {
        v15 = *(v97 + 8 * v14);
      }

      swift_beginAccess();
      v77 = *(v15 + 16);
      if (v16 >= *(v77 + 16))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v78 = *(v77 + 8 * v16 + 32);

      v79 = *(v78 + 16);
      if (v12 < v79 || v79 == 0)
      {
        goto LABEL_94;
      }

      v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v15 + 16) = v12;
      bzero((v15 + 32), 8 * v12);
      v102 = v15;
      specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v78, v12, &v102);

      v81 = *(v102 + 2);
      if (!v81)
      {
        goto LABEL_95;
      }

      ++v16;
      while (v81 >= 1)
      {
        if (*&v102[8 * v81-- + 24])
        {
          specialized evaluateUsingHorner<A, B>(_:atInput:)(v102, v98, &v102);

          v83 = v102;
          goto LABEL_79;
        }
      }

      v83 = 0;
      v102 = 0;
LABEL_79:
      v85 = *(v13 + 2);
      v84 = *(v13 + 3);
      if (v85 >= v84 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v13);
      }

      *(v13 + 2) = v85 + 1;
      *&v13[8 * v85 + 32] = v83;
    }

    while (v16 != v75);
    if (v100)
    {
      v16 = v95;
      v36 = v96;
      v70 = v99;
      v15 = v94;
      goto LABEL_84;
    }

    v36 = v96;
    v76 = *(v97 + 8 * v14);
    v15 = v94;
    v16 = v95;
    goto LABEL_87;
  }

  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, char *a7, void *a8, uint64_t a9)
{
  v15 = *(v9 + 72);
  v16 = *(a2 + 16);
  if (v16 != v15)
  {
    _StringGuts.grow(_:)(35);

    v102 = 0xD00000000000001BLL;
    v103 = 0x8000000270C51C80;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v15;
LABEL_14:
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    v29 = v103;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v30 = v102;
    *(v30 + 8) = v29;
    *(v30 + 16) = 2;
    return swift_willThrow();
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v99 = a2;
  v12 = a7;
  v16 = a4;
  v15 = a5;
  v13 = a6;
  v11 = a3;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v102 = 0xD000000000000015;
    v103 = 0x8000000270C51CA0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_14;
  }

  v90 = v10;
  v18 = *(v9 + 40);
  v19 = *(v9 + 24);
  v104 = *(v9 + 8);
  v105 = v19;
  v106 = v18;
  v20 = *(v12 + 2);
  v96 = *(&v104 + 1);
  v97 = v104;
  v94 = v18;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v20 != 1)
  {
    _StringGuts.grow(_:)(33);

    v102 = 0xD000000000000019;
    v103 = 0x8000000270C51CC0;
    v108 = v20;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v26 = 1;
LABEL_13:
    v108 = v26;
    goto LABEL_14;
  }

  v14 = a8[2];
  if (v14 != 3)
  {
    _StringGuts.grow(_:)(33);

    v102 = 0xD000000000000019;
    v103 = 0x8000000270C51CE0;
    v108 = v14;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v26 = 3;
    goto LABEL_13;
  }

  if (a9 < 1)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v89 = a9;
  v21 = v13;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (v33 != v17)
  {
    goto LABEL_107;
  }

  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v15 = *(v14 + 16);
  v17 = 1;
  v11 = specialized Gadget.wirePolynomialLength.getter();
  v16 = specialized Gadget.gadgetPolynomialLength.getter();
  v108 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v13 = (v12 + 32);
  v34 = *(v12 + 4);
  v12 = v97;
  v107[0] = v97;
  v107[1] = v96;
  v107[2] = v94;
  v107[3] = v11;
  v107[4] = v16;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v96 = v34;
    specialized FieldElement.pow(_:)(v11, v34, &v102);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_22:
  if (v102 == static Field40.one)
  {
    v102 = 0;
    v103 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v35 = specialized FieldElement.description.getter(v96);
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v101 = v11;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v37 = v102;
    v38 = v103;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v95 = specialized Collection.prefix(_:)(v12, v14, v14 + 32, 0, v17 | (2 * v15));
  v91 = v40;
  v86 = v42;
  v87 = v41;
  v43 = specialized Collection.dropFirst(_:)(v12, v14, v14 + 32, 0, v17 | (2 * v15));
  v17 = v44;
  v46 = v45;
  v48 = v47;
  v98 = specialized Collection.prefix(_:)(v16, v43, v44, v45, v47);
  v84 = v50;
  v85 = v49;
  v83 = v51;
  v12 = specialized Collection.dropFirst(_:)(v16, v43, v17, v46, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field40VGMd, &_s4VDAF11QueryGadgetCyAA7Field40VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v98, v85, v84, v83, v95, v91, v87, v86, v96, v107);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v52 = *(v108 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v97 = v108;
  if (v108 < 0 || (v108 & 0x4000000000000000) != 0)
  {
    v14 = MEMORY[0x2743B2FD0](v108);
  }

  else
  {
    v14 = *(v108 + 16);
  }

  v15 = a1;
  v53 = MEMORY[0x277D84F90];
  v92 = v14;
  if (v14)
  {
    v102 = MEMORY[0x277D84F90];
    v54 = &v102;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_110:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
      goto LABEL_43;
    }

    v55 = v13;
    v53 = v102;
    v56 = v97;
    if ((v97 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v58 = MEMORY[0x2743B2D10](i, v56);
        v102 = v53;
        v60 = *(v53 + 16);
        v59 = *(v53 + 24);
        v17 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v61 = v58;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v56 = v97;
          v58 = v61;
          v53 = v102;
        }

        *(v53 + 16) = v17;
        *(v53 + 8 * v60 + 32) = v58 | 0x4000000000000000;
      }
    }

    else
    {
      v62 = (v97 + 32);
      v63 = *(v102 + 16);
      v64 = v14;
      do
      {
        v17 = *v62;
        v102 = v53;
        v65 = *(v53 + 24);

        if (v63 >= v65 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v63 + 1, 1);
          v53 = v102;
        }

        *(v53 + 16) = v63 + 1;
        *(v53 + 8 * v63 + 32) = v17 | 0x4000000000000000;
        ++v62;
        ++v63;
        --v64;
        v14 = v92;
      }

      while (v64);
    }

    v13 = v55;
    v15 = a1;
  }

  specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v99, a8, v89, v53, &v108);
  v99 = v90;
  if (v90)
  {
    swift_unknownObjectRelease();
  }

  v54 = v108;
  v12 = *v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_43:
  v11 = *(v12 + 2);
  v66 = *(v12 + 3);
  v16 = v11 + 1;
  if (v11 >= v66 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v11 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v16;
  *&v12[8 * v11 + 32] = v54;
  *v15 = v12;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v67 = v97;
    if (!v14)
    {
LABEL_91:
      swift_unknownObjectRelease();
    }

    v68 = 0;
    a8 = (v97 & 0xC000000000000001);
    v94 = v97 + 32;
    v88 = v13;
    while (1)
    {
      if (a8)
      {
        v69 = MEMORY[0x2743B2D10](v68, v67);
      }

      else
      {
        if (v68 >= *(v67 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_unknownObjectRelease();
          v21 = v13;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v15, v21);
          v14 = v22;
          goto LABEL_20;
        }

        v70 = *(v94 + 8 * v68);
      }

      v16 = *(v69 + 72);

      if (__OFADD__(v16, 1))
      {
        goto LABEL_97;
      }

      if (v16 + 1 < 0)
      {
        goto LABEL_98;
      }

      v71 = 1 << -__clz(v16);
      if (v16 == -1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v71;
      }

      if (v68 == 1)
      {
        goto LABEL_99;
      }

      v96 = *(v13 + 8 * v68);
      if (!a8)
      {
        break;
      }

      v72 = *(MEMORY[0x2743B2D10](v68, v67) + 56);
      swift_unknownObjectRelease();
      if (v72 < 0)
      {
        goto LABEL_100;
      }

      if (v72)
      {
        goto LABEL_64;
      }

LABEL_85:
      v17 = v92;
      v81 = *(MEMORY[0x2743B2D10](v68, v97) + 32);
      swift_unknownObjectRelease();
LABEL_88:
      v11 = *(v12 + 2);
      v82 = *(v12 + 3);
      v16 = v11 + 1;
      if (v11 >= v82 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v11 + 1, 1, v12);
      }

      ++v68;
      *(v12 + 2) = v16;
      *&v12[8 * v11 + 32] = v81;
      *v15 = v12;
      v67 = v97;
      if (v68 == v17)
      {
        goto LABEL_91;
      }
    }

    v73 = *(v94 + 8 * v68);
    v72 = *(v73 + 56);
    if (v72 < 0)
    {
      goto LABEL_106;
    }

    if (v72)
    {
LABEL_64:
      if (v14 < 0)
      {
        goto LABEL_101;
      }

      v17 = 0;
      v11 = 8 * v14;
      do
      {
        if (a8)
        {
          v13 = MEMORY[0x2743B2D10](v68, v97);
        }

        else
        {
          v13 = *(v94 + 8 * v68);
        }

        swift_beginAccess();
        v74 = *(v13 + 16);
        if (v17 >= *(v74 + 16))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v16 = *(v74 + 8 * v17 + 32);

        v75 = *(v16 + 16);
        if (v14 < v75 || v75 == 0)
        {
          goto LABEL_94;
        }

        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v14;
        bzero((v13 + 32), 8 * v14);
        v101 = v13;
        specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v16, v14, &v101);

        v77 = *(v101 + 2);
        if (!v77)
        {
          goto LABEL_95;
        }

        ++v17;
        while (v77 >= 1)
        {
          if (*&v101[8 * v77-- + 24])
          {
            specialized evaluateUsingHorner<A, B>(_:atInput:)(v101, v96, &v101);

            v79 = v101;
            goto LABEL_80;
          }
        }

        v79 = 0;
        v101 = 0;
LABEL_80:
        v15 = *(v12 + 2);
        v80 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v80 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v16;
        *&v12[8 * v15 + 32] = v79;
      }

      while (v17 != v72);
      if (a8)
      {
        v13 = v88;
        v15 = a1;
        goto LABEL_85;
      }

      v15 = a1;
      v73 = *(v94 + 8 * v68);
      v13 = v88;
    }

    v17 = v92;
    v81 = *(v73 + 32);
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

{
  v15 = *(v9 + 72);
  v16 = *(a2 + 16);
  if (v16 != v15)
  {
    _StringGuts.grow(_:)(35);

    v102 = 0xD00000000000001BLL;
    v103 = 0x8000000270C51C80;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v15;
LABEL_14:
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    v29 = v103;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v30 = v102;
    *(v30 + 8) = v29;
    *(v30 + 16) = 2;
    return swift_willThrow();
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v99 = a2;
  v12 = a7;
  v16 = a4;
  v15 = a5;
  v13 = a6;
  v11 = a3;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v102 = 0xD000000000000015;
    v103 = 0x8000000270C51CA0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_14;
  }

  v90 = v10;
  v18 = *(v9 + 40);
  v19 = *(v9 + 24);
  v104 = *(v9 + 8);
  v105 = v19;
  v106 = v18;
  v20 = *(v12 + 2);
  v96 = *(&v104 + 1);
  v97 = v104;
  v94 = v18;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v20 != 1)
  {
    _StringGuts.grow(_:)(33);

    v102 = 0xD000000000000019;
    v103 = 0x8000000270C51CC0;
    v108 = v20;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v26 = 1;
LABEL_13:
    v108 = v26;
    goto LABEL_14;
  }

  v14 = a8[2];
  if (v14 != 3)
  {
    _StringGuts.grow(_:)(33);

    v102 = 0xD000000000000019;
    v103 = 0x8000000270C51CE0;
    v108 = v14;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v26 = 3;
    goto LABEL_13;
  }

  if (a9 < 1)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v89 = a9;
  v21 = v13;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (v33 != v17)
  {
    goto LABEL_107;
  }

  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v15 = *(v14 + 16);
  v17 = 1;
  v11 = specialized Gadget.wirePolynomialLength.getter();
  v16 = specialized Gadget.gadgetPolynomialLength.getter();
  v108 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v13 = (v12 + 32);
  v34 = *(v12 + 4);
  v12 = v97;
  v107[0] = v97;
  v107[1] = v96;
  v107[2] = v94;
  v107[3] = v11;
  v107[4] = v16;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v96 = v34;
    specialized FieldElement.pow(_:)(v11, v34, &v102);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_22:
  if (v102 == static Field64.one)
  {
    v102 = 0;
    v103 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v35 = specialized FieldElement.description.getter(v96);
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v101 = v11;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v37 = v102;
    v38 = v103;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v95 = specialized Collection.prefix(_:)(v12, v14, v14 + 32, 0, v17 | (2 * v15));
  v91 = v40;
  v86 = v42;
  v87 = v41;
  v43 = specialized Collection.dropFirst(_:)(v12, v14, v14 + 32, 0, v17 | (2 * v15));
  v17 = v44;
  v46 = v45;
  v48 = v47;
  v98 = specialized Collection.prefix(_:)(v16, v43, v44, v45, v47);
  v84 = v50;
  v85 = v49;
  v83 = v51;
  v12 = specialized Collection.dropFirst(_:)(v16, v43, v17, v46, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field64VGMd, &_s4VDAF11QueryGadgetCyAA7Field64VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v98, v85, v84, v83, v95, v91, v87, v86, v96, v107);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v52 = *(v108 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v97 = v108;
  if (v108 < 0 || (v108 & 0x4000000000000000) != 0)
  {
    v14 = MEMORY[0x2743B2FD0](v108);
  }

  else
  {
    v14 = *(v108 + 16);
  }

  v15 = a1;
  v53 = MEMORY[0x277D84F90];
  v92 = v14;
  if (v14)
  {
    v102 = MEMORY[0x277D84F90];
    v54 = &v102;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_110:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
      goto LABEL_43;
    }

    v55 = v13;
    v53 = v102;
    v56 = v97;
    if ((v97 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v58 = MEMORY[0x2743B2D10](i, v56);
        v102 = v53;
        v60 = *(v53 + 16);
        v59 = *(v53 + 24);
        v17 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v61 = v58;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v56 = v97;
          v58 = v61;
          v53 = v102;
        }

        *(v53 + 16) = v17;
        *(v53 + 8 * v60 + 32) = v58 | 0x4000000000000000;
      }
    }

    else
    {
      v62 = (v97 + 32);
      v63 = *(v102 + 16);
      v64 = v14;
      do
      {
        v17 = *v62;
        v102 = v53;
        v65 = *(v53 + 24);

        if (v63 >= v65 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v63 + 1, 1);
          v53 = v102;
        }

        *(v53 + 16) = v63 + 1;
        *(v53 + 8 * v63 + 32) = v17 | 0x4000000000000000;
        ++v62;
        ++v63;
        --v64;
        v14 = v92;
      }

      while (v64);
    }

    v13 = v55;
    v15 = a1;
  }

  specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v99, a8, v89, v53, &v108);
  v99 = v90;
  if (v90)
  {
    swift_unknownObjectRelease();
  }

  v54 = v108;
  v12 = *v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_43:
  v11 = *(v12 + 2);
  v66 = *(v12 + 3);
  v16 = v11 + 1;
  if (v11 >= v66 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v11 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v16;
  *&v12[8 * v11 + 32] = v54;
  *v15 = v12;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v67 = v97;
    if (!v14)
    {
LABEL_91:
      swift_unknownObjectRelease();
    }

    v68 = 0;
    a8 = (v97 & 0xC000000000000001);
    v94 = v97 + 32;
    v88 = v13;
    while (1)
    {
      if (a8)
      {
        v69 = MEMORY[0x2743B2D10](v68, v67);
      }

      else
      {
        if (v68 >= *(v67 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_unknownObjectRelease();
          v21 = v13;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v15, v21);
          v14 = v22;
          goto LABEL_20;
        }

        v70 = *(v94 + 8 * v68);
      }

      v16 = *(v69 + 72);

      if (__OFADD__(v16, 1))
      {
        goto LABEL_97;
      }

      if (v16 + 1 < 0)
      {
        goto LABEL_98;
      }

      v71 = 1 << -__clz(v16);
      if (v16 == -1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v71;
      }

      if (v68 == 1)
      {
        goto LABEL_99;
      }

      v96 = *(v13 + 8 * v68);
      if (!a8)
      {
        break;
      }

      v72 = *(MEMORY[0x2743B2D10](v68, v67) + 56);
      swift_unknownObjectRelease();
      if (v72 < 0)
      {
        goto LABEL_100;
      }

      if (v72)
      {
        goto LABEL_64;
      }

LABEL_85:
      v17 = v92;
      v81 = *(MEMORY[0x2743B2D10](v68, v97) + 32);
      swift_unknownObjectRelease();
LABEL_88:
      v11 = *(v12 + 2);
      v82 = *(v12 + 3);
      v16 = v11 + 1;
      if (v11 >= v82 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v11 + 1, 1, v12);
      }

      ++v68;
      *(v12 + 2) = v16;
      *&v12[8 * v11 + 32] = v81;
      *v15 = v12;
      v67 = v97;
      if (v68 == v17)
      {
        goto LABEL_91;
      }
    }

    v73 = *(v94 + 8 * v68);
    v72 = *(v73 + 56);
    if (v72 < 0)
    {
      goto LABEL_106;
    }

    if (v72)
    {
LABEL_64:
      if (v14 < 0)
      {
        goto LABEL_101;
      }

      v17 = 0;
      v11 = 8 * v14;
      do
      {
        if (a8)
        {
          v13 = MEMORY[0x2743B2D10](v68, v97);
        }

        else
        {
          v13 = *(v94 + 8 * v68);
        }

        swift_beginAccess();
        v74 = *(v13 + 16);
        if (v17 >= *(v74 + 16))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v16 = *(v74 + 8 * v17 + 32);

        v75 = *(v16 + 16);
        if (v14 < v75 || v75 == 0)
        {
          goto LABEL_94;
        }

        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v14;
        bzero((v13 + 32), 8 * v14);
        v101 = v13;
        specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v16, v14, &v101);

        v77 = *(v101 + 2);
        if (!v77)
        {
          goto LABEL_95;
        }

        ++v17;
        while (v77 >= 1)
        {
          if (*&v101[8 * v77-- + 24])
          {
            specialized evaluateUsingHorner<A, B>(_:atInput:)(v101, v96, &v101);

            v79 = v101;
            goto LABEL_80;
          }
        }

        v79 = 0;
        v101 = 0;
LABEL_80:
        v15 = *(v12 + 2);
        v80 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v80 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v16;
        *&v12[8 * v15 + 32] = v79;
      }

      while (v17 != v72);
      if (a8)
      {
        v13 = v88;
        v15 = a1;
        goto LABEL_85;
      }

      v15 = a1;
      v73 = *(v94 + 8 * v68);
      v13 = v88;
    }

    v17 = v92;
    v81 = *(v73 + 32);
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char *a7, unint64_t a8, uint64_t a9)
{
  v15 = *(v9 + 72);
  v16 = *(a2 + 16);
  if (v16 != v15)
  {
    _StringGuts.grow(_:)(35);

    v104 = 0xD00000000000001BLL;
    v105 = 0x8000000270C51C80;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = v15;
LABEL_14:
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v28);

    v29 = v105;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v30 = v104;
    *(v30 + 8) = v29;
    *(v30 + 16) = 2;
    return swift_willThrow();
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v101 = a2;
  v12 = a7;
  v16 = a4;
  v15 = a5;
  v13 = a6;
  v11 = a3;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v104 = 0xD000000000000015;
    v105 = 0x8000000270C51CA0;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v108 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_14;
  }

  v92 = v10;
  v18 = *(v9 + 40);
  v19 = *(v9 + 24);
  v106[0] = *(v9 + 8);
  v106[1] = v19;
  v106[2] = v18;
  v20 = *(v12 + 2);
  v98 = *(&v106[0] + 1);
  v99 = *&v106[0];
  v96 = v18;
  specialized Gadget.wirePolynomialLength.getter();
  v9 = v106;
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v20 != 1)
  {
    _StringGuts.grow(_:)(33);

    v104 = 0xD000000000000019;
    v105 = 0x8000000270C51CC0;
    v108 = v20;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v26 = 1;
LABEL_13:
    v108 = v26;
    goto LABEL_14;
  }

  v14 = *(a8 + 16);
  if (v14 != 3)
  {
    _StringGuts.grow(_:)(33);

    v104 = 0xD000000000000019;
    v105 = 0x8000000270C51CE0;
    v108 = v14;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v26 = 3;
    goto LABEL_13;
  }

  if (a9 < 1)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v91 = a9;
  v21 = v13;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v32 + 16);

  if (v33 != v17)
  {
    goto LABEL_109;
  }

  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v16 = *(v14 + 16);
  v17 = 1;
  v11 = specialized Gadget.wirePolynomialLength.getter();
  v15 = specialized Gadget.gadgetPolynomialLength.getter();
  v108 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v13 = (v12 + 32);
  v34 = *(v12 + 8);
  v9 = v99;
  v107[0] = v99;
  v107[1] = v98;
  v107[2] = v96;
  v107[3] = v11;
  v107[4] = v15;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_104;
  }

  if (!HIDWORD(v11))
  {
    v12 = v34;
    specialized FieldElement.pow(_:)(v11, v34, &v104);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_106;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_23:
  if (v104 == static Field32.one)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v35 = specialized FieldElement.description.getter();
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v103 = v11;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v37 = v104;
    v38 = v105;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v40 = v17 | (2 * v16);
  v41 = specialized Collection.prefix(_:)(v9, v14, v14 + 32, 0, v40);
  v97 = v42;
  v98 = v41;
  v93 = v43;
  v89 = v44;
  v45 = specialized Collection.dropFirst(_:)(v9, v14, v14 + 32, 0, v40);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v100 = specialized Collection.prefix(_:)(v15, v45, v46, v48, v50);
  v87 = v53;
  v88 = v52;
  v86 = v54;
  v17 = specialized Collection.dropFirst(_:)(v15, v45, v47, v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field32VGMd, &_s4VDAF11QueryGadgetCyAA7Field32VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v100, v88, v87, v86, v98, v97, v93, v89, v12, v107);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v55 = *(v108 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v85 = v17;
  v99 = v108;
  if (v108 < 0 || (v108 & 0x4000000000000000) != 0)
  {
    v14 = MEMORY[0x2743B2FD0](v108);
  }

  else
  {
    v14 = *(v108 + 16);
  }

  v15 = a1;
  v56 = MEMORY[0x277D84F90];
  v94 = v14;
  if (v14)
  {
    v104 = MEMORY[0x277D84F90];
    v57 = &v104;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
LABEL_112:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
      goto LABEL_44;
    }

    v58 = v13;
    v56 = v104;
    v59 = v99;
    if ((v99 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v61 = MEMORY[0x2743B2D10](i, v59);
        v104 = v56;
        v63 = *(v56 + 16);
        v62 = *(v56 + 24);
        if (v63 >= v62 >> 1)
        {
          v64 = v61;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1);
          v59 = v99;
          v61 = v64;
          v56 = v104;
        }

        *(v56 + 16) = v63 + 1;
        *(v56 + 8 * v63 + 32) = v61 | 0x4000000000000000;
      }
    }

    else
    {
      v65 = (v99 + 32);
      v66 = *(v104 + 16);
      v67 = v14;
      do
      {
        v68 = *v65;
        v104 = v56;
        v69 = *(v56 + 24);

        if (v66 >= v69 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v66 + 1, 1);
          v56 = v104;
        }

        *(v56 + 16) = v66 + 1;
        *(v56 + 8 * v66 + 32) = v68 | 0x4000000000000000;
        ++v65;
        ++v66;
        --v67;
        v14 = v94;
      }

      while (v67);
    }

    v13 = v58;
    v15 = a1;
    v17 = v85;
  }

  specialized PINEMainCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v101, a8, v91, v56, &v103);
  v101 = v92;
  if (v92)
  {
    swift_unknownObjectRelease();
  }

  LODWORD(v57) = v103;
  v12 = *v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_112;
  }

LABEL_44:
  v11 = *(v12 + 2);
  v70 = *(v12 + 3);
  v16 = v11 + 1;
  if (v11 >= v70 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v11 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v16;
  *&v12[4 * v11 + 32] = v57;
  *v15 = v12;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v9 = v99;
    if (!v14)
    {
LABEL_92:
      swift_unknownObjectRelease();
    }

    v71 = 0;
    a8 = v99 & 0xC000000000000001;
    v96 = v99 + 32;
    v90 = v13;
    while (1)
    {
      if (a8)
      {
        v72 = MEMORY[0x2743B2D10](v71, v9);
      }

      else
      {
        if (v71 >= *(v9 + 16))
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          swift_unknownObjectRelease();
          v21 = v13;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v15, v21);
          v14 = v22;
          goto LABEL_20;
        }

        v73 = *(v96 + 8 * v71);
      }

      v16 = *(v72 + 72);

      if (__OFADD__(v16, 1))
      {
        goto LABEL_98;
      }

      if (((v16 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      v74 = 1 << -__clz(v16);
      if (v16 == -1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v74;
      }

      if (v71 == 1)
      {
        goto LABEL_100;
      }

      LODWORD(v98) = *(v13 + 4 * v71);
      if (!a8)
      {
        break;
      }

      v9 = *(MEMORY[0x2743B2D10](v71, v9) + 56);
      swift_unknownObjectRelease();
      if (v9 < 0)
      {
        goto LABEL_101;
      }

      if (v9)
      {
        goto LABEL_65;
      }

LABEL_86:
      v17 = v94;
      v83 = *(MEMORY[0x2743B2D10](v71, v99) + 32);
      swift_unknownObjectRelease();
LABEL_89:
      v11 = *(v12 + 2);
      v84 = *(v12 + 3);
      v16 = v11 + 1;
      if (v11 >= v84 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v11 + 1, 1, v12);
      }

      ++v71;
      *(v12 + 2) = v16;
      *&v12[4 * v11 + 32] = v83;
      *v15 = v12;
      v9 = v99;
      if (v71 == v17)
      {
        goto LABEL_92;
      }
    }

    v75 = *(v96 + 8 * v71);
    v9 = *(v75 + 56);
    if (v9 < 0)
    {
      goto LABEL_108;
    }

    if (v9)
    {
LABEL_65:
      if (v14 < 0)
      {
        goto LABEL_102;
      }

      v17 = 0;
      v11 = 4 * v14;
      do
      {
        if (a8)
        {
          v13 = MEMORY[0x2743B2D10](v71, v99);
        }

        else
        {
          v13 = *(v96 + 8 * v71);
        }

        swift_beginAccess();
        v76 = *(v13 + 16);
        if (v17 >= *(v76 + 16))
        {
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v16 = *(v76 + 8 * v17 + 32);

        v77 = *(v16 + 16);
        if (v14 < v77 || v77 == 0)
        {
          goto LABEL_95;
        }

        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v14;
        bzero((v13 + 32), 4 * v14);
        v108 = v13;
        specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v16, v14, &v108);

        v79 = *(v108 + 16);
        if (!v79)
        {
          goto LABEL_96;
        }

        ++v17;
        while (v79 >= 1)
        {
          if (*(v108 + 4 * v79-- + 28))
          {
            specialized evaluateUsingHorner<A, B>(_:atInput:)(v108, v98, &v108);

            v81 = v108;
            goto LABEL_81;
          }
        }

        v81 = 0;
        LODWORD(v108) = 0;
LABEL_81:
        v15 = *(v12 + 2);
        v82 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v82 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v16;
        *&v12[4 * v15 + 32] = v81;
      }

      while (v17 != v9);
      if (a8)
      {
        v13 = v90;
        v15 = a1;
        goto LABEL_86;
      }

      v15 = a1;
      v75 = *(v96 + 8 * v71);
      v13 = v90;
    }

    v17 = v94;
    v83 = *(v75 + 32);
    goto LABEL_89;
  }

  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9)
{
  v15 = *v9;
  v16 = *(a2 + 16);
  if (v16 != *v9)
  {
    _StringGuts.grow(_:)(35);

    v99 = 0xD00000000000001BLL;
    v100 = 0x8000000270C51C80;
    v105 = v16;
LABEL_10:
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v105 = v15;
LABEL_13:
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    v28 = v100;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v29 = v99;
    *(v29 + 8) = v28;
    *(v29 + 16) = 2;
    return swift_willThrow();
  }

  v17 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v12 = a2;
  v96 = v10;
  v16 = a4;
  v15 = a5;
  v13 = a6;
  v11 = a3;
  if (v17 != specialized FullyLinearProof.proofLength.getter())
  {
    _StringGuts.grow(_:)(29);

    v99 = 0xD000000000000015;
    v100 = 0x8000000270C51CA0;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v25);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v105 = specialized FullyLinearProof.proofLength.getter();
    goto LABEL_13;
  }

  v19 = *(v9 + 80);
  v102 = *(v9 + 64);
  v103 = v19;
  v101 = *(v9 + 48);
  v86 = a7;
  v20 = *(a7 + 16);
  v93 = *(&v101 + 1);
  v94 = v101;
  v91 = v19;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  if (v20 != 1)
  {
    _StringGuts.grow(_:)(33);

    v99 = 0xD000000000000019;
    v100 = 0x8000000270C51CC0;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter();
    v105 = 1;
    goto LABEL_13;
  }

  v14 = *(a8 + 16);
  if (v14 != *(v9 + 16))
  {
    v15 = *(v9 + 16);
    _StringGuts.grow(_:)(33);

    v99 = 0xD000000000000019;
    v100 = 0x8000000270C51CE0;
    v105 = v14;
    goto LABEL_10;
  }

  if (a9 < 1)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v85 = a9;
  v21 = v13;
  v22 = v86;
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v31 = swift_dynamicCastClass();
  if (!v31)
  {
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277D84F90];
  }

  v32 = *(v31 + 16);

  if (v32 != v17)
  {
    goto LABEL_107;
  }

  v13 = swift_dynamicCastClass();
  v22 = v86;
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v15 = *(v13 + 16);
  v17 = 1;
  v11 = specialized Gadget.wirePolynomialLength.getter();
  v16 = specialized Gadget.gadgetPolynomialLength.getter();
  v105 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v34 = *(v22 + 32);
  v14 = v22 + 32;
  v33 = v34;
  v104[0] = v94;
  v104[1] = v93;
  v104[2] = v91;
  v104[3] = v11;
  v104[4] = v16;
  if ((v11 & 0x8000000000000000) == 0)
  {
    v93 = v33;
    specialized FieldElement.pow(_:)(v11, v33, &v99);
    if (one-time initialization token for one == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  swift_once();
LABEL_22:
  if (v99 == static Field64.one)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD00000000000001ALL, 0x8000000270C51D00);
    v35 = specialized FieldElement.description.getter(v93);
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](544434464, 0xE400000000000000);
    v98 = v11;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51D20);
    v37 = v99;
    v38 = v100;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v92 = specialized Collection.prefix(_:)(v94, v13, v13 + 32, 0, v17 | (2 * v15));
  v87 = v41;
  v88 = v40;
  v84 = v42;
  v43 = specialized Collection.dropFirst(_:)(v94, v13, v13 + 32, 0, v17 | (2 * v15));
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v95 = specialized Collection.prefix(_:)(v16, v43, v44, v46, v48);
  v82 = v51;
  v83 = v50;
  v81 = v52;
  specialized Collection.dropFirst(_:)(v16, v43, v45, v47, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF11QueryGadgetCyAA7Field64VGMd, &_s4VDAF11QueryGadgetCyAA7Field64VGMR);
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  specialized QueryGadget.init<A, B>(gadgetPolynomialCoefficients:proveRand:queryRand:parameters:)(v95, v83, v82, v81, v92, v88, v87, v84, v93, v104);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v53 = *(v105 + 16);
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v94 = v105;
  if (v105 < 0 || (v105 & 0x4000000000000000) != 0)
  {
    v17 = MEMORY[0x2743B2FD0](v105);
  }

  else
  {
    v17 = *(v105 + 16);
  }

  v15 = a1;
  v54 = MEMORY[0x277D84F90];
  v86 = v14;
  v89 = v17;
  if (v17)
  {
    v99 = MEMORY[0x277D84F90];
    v55 = &v99;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
LABEL_110:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
      goto LABEL_43;
    }

    v54 = v99;
    v56 = v94;
    if ((v94 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        v58 = MEMORY[0x2743B2D10](i, v56);
        v99 = v54;
        v60 = *(v54 + 16);
        v59 = *(v54 + 24);
        if (v60 >= v59 >> 1)
        {
          v61 = v58;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
          v56 = v94;
          v58 = v61;
          v54 = v99;
        }

        *(v54 + 16) = v60 + 1;
        *(v54 + 8 * v60 + 32) = v58 | 0x4000000000000000;
      }
    }

    else
    {
      v62 = (v94 + 32);
      v14 = *(v99 + 16);
      v13 = v17;
      do
      {
        v63 = *v62;
        v99 = v54;
        v64 = *(v54 + 24);

        if (v14 >= v64 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v14 + 1, 1);
          v54 = v99;
        }

        *(v54 + 16) = v14 + 1;
        *(v54 + 8 * v14 + 32) = v63 | 0x4000000000000000;
        ++v62;
        ++v14;
        --v13;
      }

      while (v13);
    }

    v17 = v89;
    v15 = a1;
  }

  specialized SumVectorType.evaluate(measurement:jointRand:numOfShares:for:)(v12, a8, v85, v54, &v105);
  if (v96)
  {
    swift_unknownObjectRelease();
  }

  v55 = v105;
  v12 = *v15;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_43:
  v11 = *(v12 + 2);
  v65 = *(v12 + 3);
  v16 = v11 + 1;
  if (v11 >= v65 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v11 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 2) = v16;
  *&v12[8 * v11 + 32] = v55;
  *v15 = v12;
  if ((v17 & 0x8000000000000000) == 0)
  {
    v66 = v94;
    if (!v17)
    {
LABEL_91:
      swift_unknownObjectRelease();
    }

    v67 = 0;
    a8 = v94 & 0xC000000000000001;
    v91 = v94 + 32;
    while (1)
    {
      if (a8)
      {
        v68 = MEMORY[0x2743B2D10](v67, v66);
      }

      else
      {
        if (v67 >= *(v66 + 16))
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_unknownObjectRelease();
          v21 = v13;
          v22 = v86;
LABEL_8:
          specialized _copyCollectionToContiguousArray<A>(_:)(v11, v16, v15, v21);
          v13 = v23;
          goto LABEL_20;
        }

        v69 = *(v91 + 8 * v67);
      }

      v16 = *(v68 + 72);

      if (__OFADD__(v16, 1))
      {
        goto LABEL_97;
      }

      if (v16 + 1 < 0)
      {
        goto LABEL_98;
      }

      v70 = 1 << -__clz(v16);
      if (v16 == -1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v70;
      }

      if (v67 == 1)
      {
        goto LABEL_99;
      }

      v93 = *(v86 + 8 * v67);
      if (!a8)
      {
        break;
      }

      v71 = *(MEMORY[0x2743B2D10](v67, v66) + 56);
      swift_unknownObjectRelease();
      if (v71 < 0)
      {
        goto LABEL_100;
      }

      if (v71)
      {
        goto LABEL_64;
      }

LABEL_85:
      v79 = *(MEMORY[0x2743B2D10](v67, v94) + 32);
      swift_unknownObjectRelease();
LABEL_88:
      v11 = *(v12 + 2);
      v80 = *(v12 + 3);
      v16 = v11 + 1;
      if (v11 >= v80 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v11 + 1, 1, v12);
      }

      ++v67;
      *(v12 + 2) = v16;
      *&v12[8 * v11 + 32] = v79;
      *v15 = v12;
      v66 = v94;
      if (v67 == v17)
      {
        goto LABEL_91;
      }
    }

    v72 = *(v91 + 8 * v67);
    v71 = *(v72 + 56);
    if (v71 < 0)
    {
      goto LABEL_106;
    }

    if (v71)
    {
LABEL_64:
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_101;
      }

      v17 = 0;
      v11 = 8 * v14;
      do
      {
        if (a8)
        {
          v13 = MEMORY[0x2743B2D10](v67, v94);
        }

        else
        {
          v13 = *(v91 + 8 * v67);
        }

        swift_beginAccess();
        v73 = *(v13 + 16);
        if (v17 >= *(v73 + 16))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v16 = *(v73 + 8 * v17 + 32);

        v74 = *(v16 + 16);
        if (v14 < v74 || v74 == 0)
        {
          goto LABEL_94;
        }

        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 16) = v14;
        bzero((v13 + 32), 8 * v14);
        v98 = v13;
        specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v16, v14, &v98);

        v76 = *(v98 + 2);
        if (!v76)
        {
          goto LABEL_95;
        }

        ++v17;
        while (v76 >= 1)
        {
          if (*&v98[8 * v76-- + 24])
          {
            specialized evaluateUsingHorner<A, B>(_:atInput:)(v98, v93, &v98);

            v13 = v98;
            goto LABEL_80;
          }
        }

        v13 = 0;
        v98 = 0;
LABEL_80:
        v15 = *(v12 + 2);
        v78 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v78 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v16;
        *&v12[8 * v15 + 32] = v13;
      }

      while (v17 != v71);
      if (a8)
      {
        v17 = v89;
        v15 = a1;
        goto LABEL_85;
      }

      v15 = a1;
      v72 = *(v91 + 8 * v67);
      v17 = v89;
    }

    v79 = *(v72 + 32);
    goto LABEL_88;
  }

  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.decide<A>(verifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v6 = a1;
  if (v10 != specialized FullyLinearProof.verifierLength.getter())
  {
    _StringGuts.grow(_:)(32);

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v37 = specialized FullyLinearProof.verifierLength.getter();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v14 = 0xD000000000000018;
    *(v14 + 8) = 0x8000000270C51BE0;
    *(v14 + 16) = 2;
    swift_willThrow();
    return v15 & 1;
  }

  if (v7)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);

    if (v17 != v10)
    {
      goto LABEL_21;
    }

    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    goto LABEL_11;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v9, v8, v7);
LABEL_11:
    v18 = *(v11 + 16);
    if (v18)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_unknownObjectRelease();
  }

  if (*(v11 + 32))
  {
LABEL_17:
    swift_unknownObjectRelease();
    v15 = 0;
    return v15 & 1;
  }

  v19 = (2 * v18) | 1;
  v20 = *(v5 + 24);
  v34 = *(v5 + 8);
  v35 = v20;
  v36 = *(v5 + 40);
  v21 = v11;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Collection.prefix(_:)(v34, v21, v21 + 32, 1, v19);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = specialized Collection.dropFirst(_:)(v34, v21, v21 + 32, 1, v19);
  if (v30 == v31 >> 1)
  {
    __break(1u);
  }

  else if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + 4 * v30);
    specialized ParallelSum.evaluate<A>(at:)(v23, v25, v27, &v33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v33 == v32)
    {
      swift_unknownObjectRelease();
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

{
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v6 = a1;
  if (v10 != specialized FullyLinearProof.verifierLength.getter())
  {
    _StringGuts.grow(_:)(32);

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v37 = specialized FullyLinearProof.verifierLength.getter();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v14 = 0xD000000000000018;
    *(v14 + 8) = 0x8000000270C51BE0;
    *(v14 + 16) = 2;
    swift_willThrow();
    return v15 & 1;
  }

  if (v7)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);

    if (v17 != v10)
    {
      goto LABEL_21;
    }

    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    goto LABEL_11;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v9, v8, v7);
LABEL_11:
    v18 = *(v11 + 16);
    if (v18)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_unknownObjectRelease();
  }

  if (*(v11 + 32))
  {
LABEL_17:
    swift_unknownObjectRelease();
    v15 = 0;
    return v15 & 1;
  }

  v19 = (2 * v18) | 1;
  v20 = *(v5 + 24);
  v34 = *(v5 + 8);
  v35 = v20;
  v36 = *(v5 + 40);
  v21 = v11;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Collection.prefix(_:)(v34, v21, v21 + 32, 1, v19);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = specialized Collection.dropFirst(_:)(v34, v21, v21 + 32, 1, v19);
  if (v30 == v31 >> 1)
  {
    __break(1u);
  }

  else if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + 4 * v30);
    specialized ParallelSum.evaluate<A>(at:)(v23, v25, v27, &v33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v33 == v32)
    {
      swift_unknownObjectRelease();
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

{
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v6 = a1;
  if (v10 != specialized FullyLinearProof.verifierLength.getter())
  {
    _StringGuts.grow(_:)(32);

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v37 = specialized FullyLinearProof.verifierLength.getter();
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v14 = 0xD000000000000018;
    *(v14 + 8) = 0x8000000270C51BE0;
    *(v14 + 16) = 2;
    swift_willThrow();
    return v15 & 1;
  }

  if (v7)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);

    if (v17 != v10)
    {
      goto LABEL_21;
    }

    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    goto LABEL_11;
  }

  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v6, v9, v8, v7);
LABEL_11:
    v18 = *(v11 + 16);
    if (v18)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    swift_unknownObjectRelease();
  }

  if (*(v11 + 32))
  {
LABEL_17:
    swift_unknownObjectRelease();
    v15 = 0;
    return v15 & 1;
  }

  v19 = (2 * v18) | 1;
  v20 = v5[4];
  v34 = v5[3];
  v35 = v20;
  v36 = v5[5];
  v21 = v11;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Collection.prefix(_:)(v34, v21, v21 + 32, 1, v19);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = specialized Collection.dropFirst(_:)(v34, v21, v21 + 32, 1, v19);
  if (v30 == v31 >> 1)
  {
    __break(1u);
  }

  else if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + 8 * v30);
    specialized ParallelSum.evaluate<A>(at:)(v23, v25, v27, &v33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v33 == v32)
    {
      swift_unknownObjectRelease();
      v15 = 1;
      return v15 & 1;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t specialized FullyLinearProof.decide<A>(verifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = a5;
  v10 = v8;
  v14 = a4;
  v9 = a3;
  v11 = a2;
  v12 = a1;
  v40 = a6;
  v41 = a7;
  v39 = a8;
  if (v15 != specialized FullyLinearProof.verifierLength.getter())
  {
    _StringGuts.grow(_:)(32);

    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v46 = specialized FullyLinearProof.verifierLength.getter();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v19 = 0xD000000000000018;
    *(v19 + 8) = 0x8000000270C51BE0;
    *(v19 + 16) = 2;
    swift_willThrow();
    return v20 & 1;
  }

  if (v14)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (v22 != v15)
    {
      goto LABEL_22;
    }

    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    goto LABEL_11;
  }

  while (1)
  {
    v16 = v13(v12, v11, v9, v14);
LABEL_11:
    v23 = *(v16 + 16);
    if (v23)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_unknownObjectRelease();
  }

  if (*(v16 + 32))
  {
    swift_unknownObjectRelease();
    v20 = 0;
    return v20 & 1;
  }

  v24 = (2 * v23) | 1;
  v25 = *(v10 + 24);
  v43 = *(v10 + 8);
  v44 = v25;
  v45 = *(v10 + 40);
  v26 = v16;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v27 = v40(v43, v26, v26 + 32, 1, v24);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = v41(v43, v26, v26 + 32, 1, v24);
  if (v36 == v37 >> 1)
  {
    __break(1u);
  }

  else if (v36 < (v37 >> 1))
  {
    v38 = *(v35 + 8 * v36);
    v39(&v42, v27, v29, v31, v33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v42 == v38)
    {
      swift_unknownObjectRelease();
      v20 = 1;
    }

    else
    {
      swift_unknownObjectRelease();
      v20 = 0;
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

{
  v15 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = a5;
  v10 = v8;
  v14 = a4;
  v9 = a3;
  v11 = a2;
  v12 = a1;
  v40 = a6;
  v41 = a7;
  v39 = a8;
  if (v15 != specialized FullyLinearProof.verifierLength.getter())
  {
    _StringGuts.grow(_:)(32);

    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v46 = specialized FullyLinearProof.verifierLength.getter();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v19 = 0xD000000000000018;
    *(v19 + 8) = 0x8000000270C51BE0;
    *(v19 + 16) = 2;
    swift_willThrow();
    return v20 & 1;
  }

  if (v14)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (v22 != v15)
    {
      goto LABEL_22;
    }

    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    goto LABEL_11;
  }

  while (1)
  {
    v16 = v13(v12, v11, v9, v14);
LABEL_11:
    v23 = *(v16 + 16);
    if (v23)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_unknownObjectRelease();
  }

  if (*(v16 + 32))
  {
    swift_unknownObjectRelease();
    v20 = 0;
    return v20 & 1;
  }

  v24 = (2 * v23) | 1;
  v25 = *(v10 + 24);
  v43 = *(v10 + 8);
  v44 = v25;
  v45 = *(v10 + 40);
  v26 = v16;
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v27 = v40(v43, v26, v26 + 32, 1, v24);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = v41(v43, v26, v26 + 32, 1, v24);
  if (v36 == v37 >> 1)
  {
    __break(1u);
  }

  else if (v36 < (v37 >> 1))
  {
    v38 = *(v35 + 8 * v36);
    v39(&v42, v27, v29, v31, v33);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v42 == v38)
    {
      swift_unknownObjectRelease();
      v20 = 1;
    }

    else
    {
      swift_unknownObjectRelease();
      v20 = 0;
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, int64_t a3@<X2>, char a4@<W3>, size_t *a5@<X8>)
{
  if (a4)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  if (result)
  {
    v7 = &a2[-result];
  }

  else
  {
    v7 = 0;
  }

  if ((a3 - 0x200000000000000) >> 58 == 63)
  {
    if (v7 != a3 << 6)
    {
      _StringGuts.grow(_:)(33);

      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v12);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v13);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v16[4] = v7;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v14);

      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v15 = 0xD000000000000033;
      v15[1] = 0x8000000270C52350;
      return swift_willThrow();
    }

    result = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
    v9 = (2 * *(result + 16)) | 1;
    v16[0] = result;
    v16[1] = result + 32;
    v16[2] = 0;
    v16[3] = v9;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg5072_s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E38VSiXEfU_AA19XofHmacSha256Aes128C_SWTG5s10ArraySliceVys0T0VGTf1cn_nTm(0, a3, v16);
      v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg5072_s4VDAF15PINEPublicShareV4from9parameterACyxGqd___SiSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E38VSiXEfU_AA19XofHmacSha256Aes128C_SWTG5s10ArraySliceVys0T0VGTf1cn_nTm(0, a3, v16);
      result = swift_unknownObjectRelease();
      *a5 = v10;
      a5[1] = v11;
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

uint64_t _s4VDAF18PINEPrepareMessageV4from9parameterACyxGqd___ytSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt2g5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && a2 - a1 == 64)
  {
    v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
    v5 = v4;
    v6 = v4[2];
    if (v6 >= 0x20)
    {
      v7 = 32;
    }

    else
    {
      v7 = v4[2];
    }

    swift_retain_n();

    v8 = v5;
    if (v6 >= 0x21)
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + 32, 0, (2 * v7) | 1);
      v8 = v16;
    }

    if (v6 - v7 >= 0x20)
    {
      v9 = v7 + 32;
    }

    else
    {
      v9 = v6;
    }

    if (v6 < v9)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v5 + 16);
      swift_retain_n();

      v11 = v5;
      if (v10 == v9 - v7)
      {
LABEL_13:

        *a3 = v8;
        a3[1] = v11;
        return result;
      }
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + 32, v7, (2 * v9) | 1);
    v11 = v17;

    goto LABEL_13;
  }

  _StringGuts.grow(_:)(24);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v13);

  MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v14);

  lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  swift_allocError();
  *v15 = 0xD000000000000032;
  v15[1] = 0x8000000270C52290;
  return swift_willThrow();
}

uint64_t specialized PINE.splitSeedBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v10 = a1;
  outlined copy of Data._Representation(a1, a2);
  v11 = specialized Collection._copyToContiguousArray()(v10, a2);
  v12 = (2 * *(v11 + 16)) | 1;
  v30 = v11;
  v31 = v11 + 32;
  v32 = 0;
  v33 = v12;
  v13 = *v2 - 1;
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  if (v13 < 0)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v10 = 0;
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AI24wraparoundJointRandBlindAI012verificationjkL0ts5NeverOTg5020_s4VDAF4PINEV14splite65Bytes33_96F6F895E25AE9C9B366289ACE02F486LLySayAA0D0V16measurementg26_AG05proofO0AG24wraparoundjkl117AG012verificationrsT0tG12helperShares_AG016leaderWraparoundrsT0AG0x12VerificationrsT0AG05provesD0tqd__SkRd__s5UInt8V7B89Rtd__lFAgH_AgigjgKtSiXEfU_AA7Field40V_SRySfGAA19XofHmacSha256Aes128C10Foundation4DataVTG5s10ArraySliceVys5UInt8VGTf1cn_nTm(0, v13, &v30);
  v3 = v32;
  v5 = v33;
  v7 = v33 >> 1;
  v15 = (v33 >> 1) - v32;
  if (__OFSUB__(v33 >> 1, v32))
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v2 = v30;
  v10 = v31;
  v8 = v33 >> 1;
  if (v15 >= 0x20)
  {
    v8 = v32 + 32;
    if (__OFADD__(v32, 32))
    {
      goto LABEL_86;
    }
  }

  if (v8 < v32)
  {
    goto LABEL_68;
  }

  if (v7 < v32)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v7 < v8)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v8 < 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v4 = v33 >> 1;
  if (v15 >= 0x20)
  {
    v4 = v32 + 32;
    if (__OFADD__(v32, 32))
    {
      goto LABEL_87;
    }

    if (v7 < v4)
    {
      goto LABEL_72;
    }
  }

  if (v4 < v32)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v29 = v14;
  v6 = v33 & 1;
  if (v33)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);

    if (__OFSUB__(v8, v3))
    {
      goto LABEL_88;
    }

    if (v18 != v8 - v3)
    {
      goto LABEL_89;
    }

    v3 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v3)
    {
      goto LABEL_24;
    }

    v3 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    v5 = v5 & 1 | (2 * v8);
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v10, v3, v5);
    v3 = v16;
LABEL_23:
    swift_unknownObjectRelease();
LABEL_24:
    v19 = v7 - v4;
    if (__OFSUB__(v7, v4))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v8 = v7;
    if (v19 >= 0x20)
    {
      v8 = v4 + 32;
      if (__OFADD__(v4, 32))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        swift_unknownObjectRelease_n();
LABEL_36:
        specialized _copyCollectionToContiguousArray<A>(_:)(v2, v10, v4, v6 | (2 * v8));
        v4 = v20;
        goto LABEL_43;
      }
    }

    if (v8 < v4)
    {
      goto LABEL_75;
    }

    if (v7 < v8)
    {
      goto LABEL_76;
    }

    if (v8 < 0)
    {
      goto LABEL_77;
    }

    v5 = v7;
    if (v19 >= 0x20)
    {
      v5 = v4 + 32;
      if (__OFADD__(v4, 32))
      {
        goto LABEL_91;
      }

      if (v7 < v5)
      {
        goto LABEL_78;
      }
    }

    if (v5 < v4)
    {
      goto LABEL_79;
    }

    if (!v6)
    {
      swift_unknownObjectRetain();
      goto LABEL_36;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {
      swift_unknownObjectRelease();
      v21 = MEMORY[0x277D84F90];
    }

    v22 = *(v21 + 16);

    if (__OFSUB__(v8, v4))
    {
      goto LABEL_92;
    }

    if (v22 != v8 - v4)
    {
      goto LABEL_93;
    }

    v4 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v4)
    {
      goto LABEL_44;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_43:
    swift_unknownObjectRelease();
LABEL_44:
    v23 = v7 - v5;
    if (__OFSUB__(v7, v5))
    {
      goto LABEL_80;
    }

    v8 = v7;
    if (v23 >= 0x20)
    {
      v8 = v5 + 32;
      if (__OFADD__(v5, 32))
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_unknownObjectRelease_n();
LABEL_57:
        specialized _copyCollectionToContiguousArray<A>(_:)(v2, v10, v5, v6 | (2 * v8));
        v24 = v29;
        goto LABEL_63;
      }
    }

    if (v8 < v5)
    {
      goto LABEL_81;
    }

    if (v7 < v8)
    {
      goto LABEL_82;
    }

    if (v8 < 0)
    {
      goto LABEL_83;
    }

    if (v23 >= 0x20)
    {
      if (__OFADD__(v5, 32))
      {
        goto LABEL_95;
      }

      if (v7 < v5 + 32)
      {
        goto LABEL_84;
      }

      v7 = v5 + 32;
    }

    if (v7 >= v5)
    {
      break;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_unknownObjectRelease_n();
  }

  if (!v6)
  {
    swift_unknownObjectRetain();
    goto LABEL_57;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x277D84F90];
  }

  v26 = *(v25 + 16);

  if (__OFSUB__(v8, v5))
  {
    goto LABEL_96;
  }

  if (v26 != v8 - v5)
  {
    goto LABEL_97;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v24 = v29;
  if (v27)
  {
    goto LABEL_64;
  }

LABEL_63:
  swift_unknownObjectRelease();
LABEL_64:
  swift_unknownObjectRelease();
  return v24;
}

uint64_t specialized PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(float *a1, uint64_t a2, char **a3)
{
  v7 = v3[9];
  v8 = v3[11];
  v9 = v3[12];
  v10 = v3[13];
  v11 = v3[14];
  v43 = v10;
  v44 = v8;
  v12 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v7 > *(v12 + 3) >> 1)
  {
    if (*(v12 + 2) <= v7)
    {
      v14 = v7;
    }

    else
    {
      v14 = *(v12 + 2);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0, v12);
  }

  *a3 = v12;
  if (v9 != a2)
  {
    _StringGuts.grow(_:)(44);

    v46[0] = 0xD00000000000001DLL;
    v46[1] = 0x8000000270C52030;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v30);

    MEMORY[0x2743B25F0](0x746365707865202CLL, 0xEB000000003D6465);
    v47 = v9;
LABEL_43:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    v36 = v46[0];
    v37 = v46[1];
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    return swift_willThrow();
  }

  v42 = v11;
  v15 = 0;
  if (a1 && a2)
  {
    v16 = 4 * a2;
    while (1)
    {
      result = _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field40V_SfTt2g5(v44, *a1);
      if (v4)
      {
        return result;
      }

      result = _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(result, v46);
      v18 = v46[0];
      v20 = *(v12 + 2);
      v19 = *(v12 + 3);
      if (v20 >= v19 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v20 + 1;
      *&v12[8 * v20 + 32] = v18;
      *a3 = v12;
      v21 = (v18 * v18) >> 64;
      v22 = (0xCFFE47FFFEAFFFFFLL * v18 * v18 * 0xFFFEB00001uLL) >> 64;
      v23 = __CFADD__(-(v18 * v18), v18 * v18);
      v24 = __CFADD__(v22, v21);
      v25 = v22 + v21;
      if (v24)
      {
        break;
      }

      if (v25 == -1)
      {
        if (!v23)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v26 = 0;
LABEL_22:
        v24 = __CFADD__(v26, 0xFFFFFF00014FFFFFLL);
        v27 = v26 - 0xFFFEB00001;
        if (v24)
        {
          goto LABEL_54;
        }

        if (!v27)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      v27 = v25 + v23;
      if (v27 >= 0xFFFEB00001)
      {
        v27 -= 0xFFFEB00001;
      }

      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_24:
      v24 = v27 <= 0xFFFEB00001;
      v28 = 0xFFFEB00001 - v27;
      if (!v24)
      {
        goto LABEL_53;
      }

      if (v15 >= v28)
      {
        v15 -= v28;
      }

      else
      {
        v24 = v28 <= 0xFFFEB00001;
        v29 = 0xFFFEB00001 - v28;
        if (!v24)
        {
          goto LABEL_55;
        }

        v24 = __CFADD__(v15, v29);
        v15 += v29;
        if (v24)
        {
          goto LABEL_56;
        }
      }

LABEL_12:
      ++a1;
      v16 -= 4;
      if (!v16)
      {
        goto LABEL_41;
      }
    }

    v26 = v25 + v23;
    goto LABEL_22;
  }

LABEL_41:
  v31 = specialized FieldElement.integerValue.getter(v15);
  v32 = specialized FieldElement.integerValue.getter(v42);
  if (v32 < v31)
  {
    v33 = v32;
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    strcpy(v46, "squared norm=");
    HIWORD(v46[1]) = -4864;
    v47 = v31;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](0x6B63656863203E20, 0xEF3D646E756F6220);
    v47 = v33;
    goto LABEL_43;
  }

  result = v42 - v15;
  if (v42 < v15)
  {
    v39 = 0xFFFEB00001 - v15;
    if (v15 > 0xFFFEB00001)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    result = v42 + v39;
    v40 = v43;
    if (!__CFADD__(v42, v39))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  v40 = v43;
LABEL_51:
  v41 = specialized FieldElement.integerValue.getter(result);
  result = _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field40V_Tt2g5(v31, a3, v40);
  if (!v4)
  {
    return _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field40V_Tt2g5(v41, a3, v40);
  }

  return result;
}

{
  v8 = *(v3 + 72);
  v9 = *(v3 + 96);
  v38 = *(v3 + 104);
  v39 = *(v3 + 112);
  v40 = *(v3 + 88);
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v10 + 3) >> 1)
  {
    if (*(v10 + 2) <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = *(v10 + 2);
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 0, v10);
  }

  *a3 = v10;
  if (v9 != a2)
  {
    _StringGuts.grow(_:)(44);

    v41[0] = 0xD00000000000001DLL;
    v41[1] = 0x8000000270C52030;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v29);

    MEMORY[0x2743B25F0](0x746365707865202CLL, 0xEB000000003D6465);
    v42 = v9;
LABEL_50:
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    v34 = v41[1];
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v35 = v41[0];
    *(v35 + 8) = v34;
    *(v35 + 16) = 1;
    return swift_willThrow();
  }

  v13 = 0;
  if (a1 && a2)
  {
    for (i = 4 * a2; i; i -= 4)
    {
      result = _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field32V_SfTt2g5(v40, *a1);
      if (v4)
      {
        return result;
      }

      if (result >= 0xFFF00002)
      {
        goto LABEL_58;
      }

      if (result == -1048575)
      {
        v16 = 0;
      }

      else
      {
        v17 = 266338049 * result;
        v18 = 4293918721 * (1048831 * result);
        v19 = __CFADD__(v18, v17);
        v20 = v18 + v17;
        if (v19)
        {
          v16 = HIDWORD(v20) + 0xFFFFF;
          if (HIDWORD(v20) >= 0xFFF00001)
          {
            goto LABEL_57;
          }
        }

        else if (v20 >= 0xFFF0000100000000)
        {
          v16 = HIDWORD(v20) + 0xFFFFF;
        }

        else
        {
          v16 = HIDWORD(v20);
        }
      }

      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
      }

      *(v10 + 2) = v22 + 1;
      *&v10[4 * v22 + 32] = v16;
      *a3 = v10;
      v23 = v16 * v16;
      v24 = 4293918721 * (-1048577 * v23);
      v19 = __CFADD__(v24, v23);
      v25 = v24 + v23;
      v26 = HIDWORD(v25);
      if (v19)
      {
        LODWORD(v26) = HIDWORD(v25) + 0xFFFFF;
        if (HIDWORD(v25) >= 0xFFF00001)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v25 >= 0xFFF0000100000000)
        {
          LODWORD(v26) = HIDWORD(v25) + 0xFFFFF;
        }

        if (!v26)
        {
          goto LABEL_12;
        }
      }

      v19 = v26 <= 0xFFF00001;
      v27 = -1048575 - v26;
      if (!v19)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        _StringGuts.grow(_:)(40);

        strcpy(v41, "Integer(");
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v36);

        MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v37);

        MEMORY[0x2743B25F0](41, 0xE100000000000000);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (v13 >= v27)
      {
        v13 -= v27;
      }

      else
      {
        v19 = v27 <= 0xFFF00001;
        v28 = -1048575 - v27;
        if (!v19)
        {
          goto LABEL_55;
        }

        v19 = __CFADD__(v13, v28);
        v13 += v28;
        if (v19)
        {
          goto LABEL_56;
        }
      }

LABEL_12:
      ++a1;
    }
  }

  if (v13 + 4293918721u * (-1048577 * v13) >= 0xFFF0000100000000)
  {
    v30 = 0;
  }

  else
  {
    v30 = (v13 + 4293918721u * (-1048577 * v13)) >> 32;
  }

  if (v39 + 4293918721u * (-1048577 * v39) >= 0xFFF0000100000000)
  {
    v31 = 0;
  }

  else
  {
    v31 = (v39 + 4293918721u * (-1048577 * v39)) >> 32;
  }

  if (v31 < v30)
  {
    _StringGuts.grow(_:)(32);

    strcpy(v41, "squared norm=");
    HIWORD(v41[1]) = -4864;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v32);

    MEMORY[0x2743B25F0](0x6B63656863203E20, 0xEF3D646E756F6220);
    LODWORD(v42) = v31;
    goto LABEL_50;
  }

  _s4VDAF11PINECircuitPAAE17computeRangeCheck_10lowerBound05upperG0Sb04isInD0_1F_11FiniteField11IntegerTypeQZ1vAK1utAHQz_A2NtFZAA15PINEMainCircuitVyAA7Field32VSRySfGG_Tt4B5(v41, &v42, v13, 0, v39);
  result = _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field32V_Tt2g5(LODWORD(v41[0]), a3, v38);
  if (!v4)
  {
    return _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field32V_Tt2g5(v42, a3, v38);
  }

  return result;
}

{
  v8 = v3[9];
  v9 = v3[11];
  v10 = v3[12];
  v11 = v3[13];
  v12 = v3[14];
  v44 = v11;
  v45 = v9;
  v13 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v13 + 3) >> 1)
  {
    if (*(v13 + 2) <= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = *(v13 + 2);
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 0, v13);
  }

  *a3 = v13;
  if (v10 != a2)
  {
    _StringGuts.grow(_:)(44);

    v46[0] = 0xD00000000000001DLL;
    v46[1] = 0x8000000270C52030;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v31);

    MEMORY[0x2743B25F0](0x746365707865202CLL, 0xEB000000003D6465);
    v47 = v10;
LABEL_43:
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v36);

    v37 = v46[0];
    v38 = v46[1];
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 1;
    return swift_willThrow();
  }

  v43 = v12;
  v16 = 0;
  if (a1 && a2)
  {
    v17 = 4 * a2;
    while (1)
    {
      result = _s4VDAF12FieldElementPAAE11integerFrom10floatValue18fractionalBitCount06FiniteB0_11IntegerTypeQZqd___SitKSBRd__lFZAA7Field64V_SfTt2g5(v45, *a1);
      if (v4)
      {
        return result;
      }

      result = _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(result, v46);
      v19 = v46[0];
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v21 + 1;
      *&v13[8 * v21 + 32] = v19;
      *a3 = v13;
      v22 = (v19 * v19) >> 64;
      v23 = (0xFFFFFFFEFFFFFFFFLL * v19 * v19 * 0xFFFFFFFF00000001) >> 64;
      v24 = __CFADD__(-(v19 * v19), v19 * v19);
      v25 = __CFADD__(v23, v22);
      v26 = v23 + v22;
      if (v25)
      {
        break;
      }

      if (v26 != -1)
      {
        v28 = v26 + v24;
        if (v28 >= 0xFFFFFFFF00000001)
        {
          v28 += 0xFFFFFFFFLL;
        }

        if (!v28)
        {
          goto LABEL_12;
        }

        goto LABEL_24;
      }

      if (v24)
      {
        v27 = 0;
        goto LABEL_22;
      }

      v29 = 0xFFFFFFFE00000003;
LABEL_26:
      if (v16 >= v29)
      {
        v16 -= v29;
      }

      else
      {
        v25 = v29 <= 0xFFFFFFFF00000001;
        v30 = 0xFFFFFFFF00000001 - v29;
        if (!v25)
        {
          goto LABEL_54;
        }

        v25 = __CFADD__(v16, v30);
        v16 += v30;
        if (v25)
        {
          goto LABEL_55;
        }
      }

LABEL_12:
      ++a1;
      v17 -= 4;
      if (!v17)
      {
        goto LABEL_41;
      }
    }

    v27 = v26 + v24;
LABEL_22:
    v25 = __CFADD__(v27, 0xFFFFFFFFLL);
    v28 = v27 + 0xFFFFFFFFLL;
    if (v25)
    {
      goto LABEL_53;
    }

    if (!v28)
    {
      goto LABEL_12;
    }

LABEL_24:
    v25 = v28 <= 0xFFFFFFFF00000001;
    v29 = 0xFFFFFFFF00000001 - v28;
    if (!v25)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_26;
  }

LABEL_41:
  v32 = specialized FieldElement.integerValue.getter(v16);
  v33 = specialized FieldElement.integerValue.getter(v43);
  if (v33 < v32)
  {
    v34 = v33;
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    strcpy(v46, "squared norm=");
    HIWORD(v46[1]) = -4864;
    v47 = v32;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    MEMORY[0x2743B25F0](0x6B63656863203E20, 0xEF3D646E756F6220);
    v47 = v34;
    goto LABEL_43;
  }

  result = v43 - v16;
  if (v43 < v16)
  {
    v40 = 0xFFFFFFFF00000001 - v16;
    if (v16 > 0xFFFFFFFF00000001)
    {
LABEL_56:
      __break(1u);
      return result;
    }

    result = v43 + v40;
    v41 = v44;
    if (!__CFADD__(v43, v40))
    {
      goto LABEL_51;
    }

    __break(1u);
  }

  v41 = v44;
LABEL_51:
  v42 = specialized FieldElement.integerValue.getter(result);
  result = _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(v32, a3, v41);
  if (!v4)
  {
    return _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(v42, a3, v41);
  }

  return result;
}

unint64_t specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(char **a1, uint64_t a2)
{
  v8 = v3[12];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v7 = a1;
  v9 = *a1;
  if (*(*a1 + 2) < v8)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_5;
  }

  v2 = v4;
  v6 = v3[17];
  v43 = v3[15];
  v44 = v3[18];
  v11 = (2 * v8) | 1;

  v5 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v12, (v9 + 32), 0, v11, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));
  v42 = *(v5 + 16);
  if (!v42)
  {
    if (!v6)
    {
      goto LABEL_47;
    }

LABEL_46:

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v34 = 0xD000000000000023;
    *(v34 + 8) = 0x8000000270C51FA0;
    *(v34 + 16) = 4;
    swift_willThrow();
    goto LABEL_47;
  }

  v13 = one-time initialization token for one;

  if (v13 != -1)
  {
    goto LABEL_62;
  }

LABEL_5:
  v14 = 0;
  v15 = 0;
  v16 = v44;
  v40 = static Field40.one - v44;
  v41 = static Field40.one;
  v37 = static Field40.one + 0xFFFEB00001 - v44;
  v17 = __CFADD__(static Field40.one, 0xFFFEB00001 - v44);
  v36 = v17;
  v38 = v5;
  v39 = v7;
  v18 = v2;
  do
  {
    if (v15 >= *(v5 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v19 = *(v5 + 8 * v15 + 32);
    v20 = v40;
    if (v41 < v16)
    {
      if (v44 > 0xFFFEB00001)
      {
        goto LABEL_54;
      }

      v20 = v37;
      if (v36)
      {
        goto LABEL_56;
      }
    }

    v21 = v19 - v20;
    if (v19 < v20)
    {
      v22 = 0xFFFEB00001 - v20;
      if (v20 > 0xFFFEB00001)
      {
        goto LABEL_55;
      }

      v23 = __CFADD__(v19, v22);
      v21 = v19 + v22;
      if (v23)
      {
        goto LABEL_57;
      }
    }

    if (__CFADD__(-v21, v21))
    {
      v24 = ((0xCFFE47FFFEAFFFFFLL * v21 * 0xFFFEB00001uLL) >> 64) + 1;
    }

    else
    {
      v24 = (0xCFFE47FFFEAFFFFFLL * v21 * 0xFFFEB00001uLL) >> 64;
    }

    if (v24 >= 0xFFFEB00001)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    v26 = v16 - v20;
    if (v16 < v20)
    {
      v23 = v20 <= 0xFFFEB00001;
      v27 = 0xFFFEB00001 - v20;
      if (!v23)
      {
        goto LABEL_58;
      }

      v26 = v16 + v27;
      if (__CFADD__(v16, v27))
      {
        goto LABEL_59;
      }
    }

    if (__CFADD__(-v26, v26))
    {
      v28 = ((0xCFFE47FFFEAFFFFFLL * v26 * 0xFFFEB00001uLL) >> 64) + 1;
    }

    else
    {
      v28 = (0xCFFE47FFFEAFFFFFLL * v26 * 0xFFFEB00001uLL) >> 64;
    }

    if (v28 >= 0xFFFEB00001)
    {
      v28 = 0;
    }

    v30 = v28 >= v25 && v14 < v6;
    _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field40V_Tt2g5(v25, v7, v43);
    if (v18)
    {

      swift_bridgeObjectRelease_n();
      return v5;
    }

    v2 = v6;
    _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field40V_Tt1g5(v30, &v45);
    v31 = v45;
    v6 = *v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v5 = *(v6 + 2);
    v32 = *(v6 + 3);
    if (v5 >= v32 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v5 + 1, 1, v6);
    }

    *(v6 + 2) = v5 + 1;
    *&v6[8 * v5 + 32] = v31;
    v7 = v39;
    *v39 = v6;
    v33 = __OFADD__(v14, v30);
    v14 += v30;
    if (v33)
    {
      goto LABEL_53;
    }

    ++v15;
    v5 = v38;
    v6 = v2;
    v18 = 0;
    v16 = v44;
  }

  while (v42 != v15);

  if (v14 != v2)
  {
    goto LABEL_46;
  }

LABEL_47:

  return v5;
}

char *specialized PINECircuit.appendWraparoundCheck<A>(into:random:)(char **a1, uint64_t a2)
{
  v8 = *(v3 + 96);
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v7 = a1;
  v9 = *a1;
  if (*(*a1 + 2) < v8)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
    goto LABEL_5;
  }

  v2 = v4;
  v45 = *(v3 + 120);
  v5 = *(v3 + 136);
  v46 = *(v3 + 144);
  v11 = (2 * v8) | 1;

  specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v12, (v9 + 32), 0, v11, a2);
  v6 = v13;
  v44 = *(v13 + 16);
  if (!v44)
  {
    if (!v5)
    {
      goto LABEL_46;
    }

LABEL_45:

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v37 = 0xD000000000000023;
    *(v37 + 8) = 0x8000000270C51FA0;
    *(v37 + 16) = 4;
    swift_willThrow();
    goto LABEL_46;
  }

  v14 = one-time initialization token for one;

  if (v14 != -1)
  {
    goto LABEL_63;
  }

LABEL_5:
  v15 = 0;
  v16 = 0;
  v17 = v46;
  v42 = static Field32.one - v46;
  v43 = static Field32.one;
  v40 = static Field32.one + -1048575 - v46;
  v18 = __CFADD__(static Field32.one, -1048575 - v46);
  v39 = v18;
  v41 = v7;
  v19 = v2;
  do
  {
    if (v16 >= *(v6 + 2))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v20 = *&v6[4 * v16 + 32];
    v21 = v42;
    if (v43 < v17)
    {
      if (v46 > 0xFFF00001)
      {
        goto LABEL_53;
      }

      v21 = v40;
      if (v39)
      {
        goto LABEL_55;
      }
    }

    v22 = v20 - v21;
    if (v20 < v21)
    {
      v23 = -1048575 - v21;
      if (v21 > 0xFFF00001)
      {
        goto LABEL_54;
      }

      v24 = __CFADD__(v20, v23);
      v22 = v20 + v23;
      if (v24)
      {
        goto LABEL_56;
      }
    }

    v25 = 0xFFF000FEFFFFFFFFLL * v22 + v22;
    if (v25 >= 0xFFF0000100000000)
    {
      v26 = 0;
    }

    else
    {
      v26 = HIDWORD(v25);
    }

    if (v17 < v20)
    {
      v24 = v20 <= 0xFFF00001;
      v27 = -1048575 - v20;
      if (!v24)
      {
        goto LABEL_57;
      }

      if (__CFADD__(v17, v27))
      {
        goto LABEL_59;
      }
    }

    v28 = v17 - v21;
    if (v17 < v21)
    {
      v24 = v21 <= 0xFFF00001;
      v29 = -1048575 - v21;
      if (!v24)
      {
        goto LABEL_58;
      }

      v28 = v17 + v29;
      if (__CFADD__(v17, v29))
      {
        goto LABEL_60;
      }
    }

    if (0xFFF000FEFFFFFFFFLL * v28 + v28 >= 0xFFF0000100000000)
    {
      v30 = 0;
    }

    else
    {
      v30 = (0xFFF000FEFFFFFFFFLL * v28 + v28) >> 32;
    }

    v32 = v30 >= v26 && v15 < v5;
    _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field32V_Tt2g5(v26, v7, v45);
    if (v19)
    {

      swift_bridgeObjectRelease_n();
      return v6;
    }

    v2 = v5;
    v5 = v6;
    _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v32, &v47);
    v33 = v47;
    v6 = *v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v35 = *(v6 + 2);
    v34 = *(v6 + 3);
    if (v35 >= v34 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v6);
    }

    *(v6 + 2) = v35 + 1;
    *&v6[4 * v35 + 32] = v33;
    v7 = v41;
    *v41 = v6;
    v36 = __OFADD__(v15, v32);
    v15 += v32;
    if (v36)
    {
      goto LABEL_52;
    }

    ++v16;
    v6 = v5;
    v5 = v2;
    v19 = 0;
    v17 = v46;
  }

  while (v44 != v16);

  if (v15 != v2)
  {
    goto LABEL_45;
  }

LABEL_46:

  return v6;
}

{
  v8 = v3[12];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
  }

  else
  {
    v5 = a1;
    v9 = *a1;
    if (*(*a1 + 2) >= v8)
    {
      v2 = v4;
      v7 = v3[17];
      v42 = v3[15];
      v43 = v3[18];
      v11 = (2 * v8) | 1;

      v6 = specialized PINECircuit.wraparoundDotProducts<A>(_:random:)(v12, (v9 + 32), 0, v11, a2, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), specialized closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:));
      v41 = *(v6 + 2);
      if (!v41)
      {
        if (v7)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      v13 = one-time initialization token for one;

      if (v13 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_5:
  v14 = 0;
  v15 = 0;
  v16 = v43;
  v39 = static Field64.one - v43;
  v40 = static Field64.one;
  v36 = static Field64.one + 0xFFFFFFFF00000001 - v43;
  v17 = __CFADD__(static Field64.one, 0xFFFFFFFF00000001 - v43);
  v35 = v17;
  v37 = v7;
  v38 = v6;
  do
  {
    if (v15 >= *(v6 + 2))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v18 = *&v6[8 * v15 + 32];
    v19 = v39;
    if (v40 < v16)
    {
      if (v43 > 0xFFFFFFFF00000001)
      {
        goto LABEL_55;
      }

      v19 = v36;
      if (v35)
      {
        goto LABEL_57;
      }
    }

    v20 = v18 - v19;
    if (v18 < v19)
    {
      v21 = 0xFFFFFFFF00000001 - v19;
      if (v19 > 0xFFFFFFFF00000001)
      {
        goto LABEL_56;
      }

      v22 = __CFADD__(v18, v21);
      v20 = v18 + v21;
      if (v22)
      {
        goto LABEL_58;
      }
    }

    v23 = (0xFFFFFFFEFFFFFFFFLL * v20 * 0xFFFFFFFF00000001) >> 64;
    if (__CFADD__(-v20, v20))
    {
      if (v23 > 0xFFFFFFFEFFFFFFFFLL)
      {
        v23 += 0x100000000;
        v24 = v16 - v19;
        if (v16 >= v19)
        {
          goto LABEL_27;
        }

        goto LABEL_21;
      }

      ++v23;
    }

    v24 = v16 - v19;
    if (v16 >= v19)
    {
      goto LABEL_27;
    }

LABEL_21:
    v22 = v19 <= 0xFFFFFFFF00000001;
    v25 = 0xFFFFFFFF00000001 - v19;
    if (!v22)
    {
      goto LABEL_59;
    }

    v24 = v16 + v25;
    if (__CFADD__(v16, v25))
    {
      goto LABEL_60;
    }

LABEL_27:
    v26 = (0xFFFFFFFEFFFFFFFFLL * v24 * 0xFFFFFFFF00000001) >> 64;
    if (__CFADD__(-v24, v24))
    {
      if (v26 > 0xFFFFFFFEFFFFFFFFLL)
      {
        v26 += 0x100000000;
      }

      else
      {
        ++v26;
      }
    }

    v28 = v26 >= v23 && v14 < v7;
    _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(v23, v5, v42);
    if (v2)
    {

      swift_bridgeObjectRelease_n();
      return v6;
    }

    _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field64V_Tt1g5(v28, &v44);
    v29 = v44;
    v6 = *v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    }

    v31 = *(v6 + 2);
    v30 = *(v6 + 3);
    v7 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v6);
    }

    *(v6 + 2) = v7;
    *&v6[8 * v31 + 32] = v29;
    *v5 = v6;
    v32 = __OFADD__(v14, v28);
    v14 += v28;
    if (v32)
    {
      goto LABEL_54;
    }

    ++v15;
    v7 = v37;
    v6 = v38;
    v16 = v43;
  }

  while (v41 != v15);

  if (v14 == v37)
  {
    goto LABEL_48;
  }

LABEL_47:

  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v33 = 0xD000000000000023;
  *(v33 + 8) = 0x8000000270C51FA0;
  *(v33 + 16) = 4;
  swift_willThrow();
LABEL_48:

  return v6;
}

uint64_t specialized FullyLinearProof.proveRandLength.getter()
{
  v10 = *(v0 + 8);
  v11 = *(v0 + 24);
  v12 = *(v0 + 40);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v9 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v1 = v9;
  v3 = *(v9 + 16);
  v2 = *(v9 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
LABEL_7:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v4, 1);
    v1 = v9;
  }

  v5 = 0;
  *(v1 + 16) = v4;
  *(v1 + 8 * v3 + 32) = v10;
  v2 = 32;
  do
  {
    v6 = *(v1 + v2);
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_7;
    }

    v2 += 8;
    --v4;
  }

  while (v4);

  return v5;
}

{
  v11 = *(v0 + 24);
  v12 = *(v0 + 40);
  v1 = *(v0 + 8);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v2 = v10;
  v4 = *(v10 + 16);
  v3 = *(v10 + 24);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
LABEL_7:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v5, 1);
    v2 = v10;
  }

  v6 = 0;
  *(v2 + 16) = v5;
  *(v2 + 8 * v4 + 32) = v1;
  v3 = 32;
  do
  {
    v7 = *(v2 + v3);
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_7;
    }

    v3 += 8;
    --v5;
  }

  while (v5);

  return v6;
}

{
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v1 = *(v0 + 48);
  specialized Gadget.wirePolynomialLength.getter();
  specialized Gadget.gadgetPolynomialLength.getter();
  v10 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
  v2 = v10;
  v4 = *(v10 + 16);
  v3 = *(v10 + 24);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
LABEL_7:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v5, 1);
    v2 = v10;
  }

  v6 = 0;
  *(v2 + 16) = v5;
  *(v2 + 8 * v4 + 32) = v1;
  v3 = 32;
  do
  {
    v7 = *(v2 + v3);
    v8 = __OFADD__(v6, v7);
    v6 += v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_7;
    }

    v3 += 8;
    --v5;
  }

  while (v5);

  return v6;
}

uint64_t specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(char **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v98 = 0xD00000000000001BLL;
    v99 = 0x8000000270C51C80;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = v6;
    goto LABEL_7;
  }

  v10 = v5;
  v12 = *(a3 + 16);
  if (v12 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51F80;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_7;
  }

  if (*(a4 + 16))
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51CE0;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = 0;
LABEL_7:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v17 = v99;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v98;
    *(v18 + 8) = v17;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v90 = a2;
  v92 = a4;
  v86 = a1;
  v105 = a3;
  v98 = a3;
  v99 = a3 + 32;
  v100 = 0;
  v101 = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v21 = *(v4 + 24);
  v102 = *(v4 + 8);
  v103 = v21;
  v104 = *(v4 + 40);
  v23 = *(&v102 + 1);
  v22 = v102;
  v24 = *(&v21 + 1);
  v87 = v21;
  v25 = v104;
  v26 = specialized Gadget.wirePolynomialLength.getter();
  v27 = specialized Gadget.gadgetPolynomialLength.getter();
  v84 = v22;
  *(inited + 32) = __PAIR128__(v23, v22);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  *(inited + 64) = v27;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field40VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v98);
  v29 = v28;
  swift_setDeallocating();
  v91 = v29;
  if (v29 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v83))
  {
    v31 = MEMORY[0x277D84F90];
    v85 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v105 = v10;
    v94 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v32 = v85;
    if (v85 < 0)
    {
      break;
    }

    v33 = 0;
    v31 = v94;
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2743B2D10](v33, v91);
      }

      else
      {
        v34 = *(v91 + 8 * v33 + 32);
      }

      v94 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v32 = v85;
        v31 = v94;
      }

      ++v33;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v32 != v33);
    v10 = v105;
LABEL_20:
    specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v90, v92, v31, v96);
    if (v10)
    {

      return swift_unknownObjectRelease();
    }

    v37 = v91;
    if (v85 < 0)
    {
      goto LABEL_146;
    }

    v38 = v86;
    if (!v85)
    {
LABEL_116:

      return swift_unknownObjectRelease();
    }

    if (!v87)
    {
      goto LABEL_147;
    }

    v39 = 0;
    v92 = v91 & 0xC000000000000001;
    v88 = v91 + 32;
    while (1)
    {
      v29 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[12] = v29;
      if (v39 == 1)
      {
        goto LABEL_132;
      }

      v10 = 40 * v39;
      v29 = v97[5 * v39 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[0] = v84;
      v41 = v97[5 * v39];
      if (v41 < 0)
      {
        goto LABEL_133;
      }

      v105 = v39;
      if (v41)
      {
        break;
      }

      v44 = MEMORY[0x277D84F90];
      v57 = v87;
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v93[4] = result;
      v90 = v93[5 * v39 + 4];
      if (v57 < 1)
      {
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v10 = v44[2];
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v10)
        {
          v58 = 0;
          v59 = 1;
          while (1)
          {
            v61 = v58;
            v62 = v10 - v58;
            v63 = __OFSUB__(v10, v58);
            v64 = __OFADD__(v58, v57);
            v58 += v57;
            if (v64)
            {
              if (v63)
              {
                goto LABEL_129;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                goto LABEL_148;
              }

              v65 = v62 >= v57;
              v66 = v62 >= v57 ? v58 : v10;
              if (v65)
              {
                goto LABEL_148;
              }

              v58 = 0x7FFFFFFFFFFFFFFFLL;
              if (v66 < v61)
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v63)
              {
                goto LABEL_128;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                v66 = v58;
                if (v58 < v61)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v62 >= v57)
                {
                  v66 = v58;
                }

                else
                {
                  v66 = v10;
                }

                if (v66 < v61)
                {
                  goto LABEL_122;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_123;
            }

            if (v61 < 0)
            {
              break;
            }

            if (v10 < v66)
            {
              goto LABEL_125;
            }

            if (v61 >= v66)
            {
              goto LABEL_126;
            }

            v67 = *(v25 + 16);
            if (!v67)
            {
              goto LABEL_127;
            }

            v68 = v44[v61 + 4];
            do
            {
              if (v67 < 1)
              {
                v60 = &outlined read-only object #1 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
LABEL_61:

                goto LABEL_62;
              }
            }

            while (!*(v25 + 8 * v67-- + 24));
            v70 = *(v68 + 16);
            if (!v70)
            {
              goto LABEL_130;
            }

            v71 = *(v68 + 16);
            do
            {
              if (v71 < 1)
              {
                v77 = *(v25 + 32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
                v60 = swift_allocObject();
                v60[1] = xmmword_270C44540;
                *(v60 + 4) = v77;
                goto LABEL_61;
              }
            }

            while (!*(v68 + 8 * v71-- + 24));
            do
            {
              v73 = v70 - 1;
              if (v70 < 1)
              {
                goto LABEL_99;
              }
            }

            while (!*(v68 + 8 * v70-- + 24));
            if ((v73 + 1) <= 0x3C)
            {
LABEL_99:

              specialized evaluateUsingHorner<A, B, C>(_:atInput:)(v25, v68);
              v60 = v75;
              v76 = v75[2];

              if (!v76)
              {
                goto LABEL_131;
              }

              goto LABEL_103;
            }

            v60 = specialized evaluateUsingDFT<A, B, C>(_:atInput:)(v25, v68);
            v78 = *(v60 + 2);

            if (!v78)
            {
              goto LABEL_138;
            }

LABEL_103:
            v57 = v87;
LABEL_62:
            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field40V_Tt2B5(v29, v60, &v95);

            v29 = v95;
            v59 = v10 >= v58;
            if (v58 >= v10)
            {
              goto LABEL_105;
            }
          }

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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

LABEL_105:

      v79 = *(v29 + 16);
      if (!v79)
      {
        goto LABEL_134;
      }

      v39 = v105 + 1;
      v80 = *(v29 + 16);
      v38 = v86;
      do
      {
        v81 = v80 - 1;
        if (v80 < 1)
        {
          v10 = 0;
          goto LABEL_112;
        }
      }

      while (!*(v29 + 8 * v80-- + 24));
      v10 = v81 + 1;
      if (v79 < v81 + 1)
      {
        goto LABEL_135;
      }

LABEL_112:
      specialized Array.append<A>(contentsOf:)(v29, v29 + 32, 0, (2 * v10) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v37 = v91;
      v29 = v90 - v10;
      if (__OFSUB__(v90, v10))
      {
        goto LABEL_136;
      }

      if (v29 < 0)
      {
        goto LABEL_137;
      }

      if (v29)
      {
        v40 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v40 + 16) = v29;
        bzero((v40 + 32), 8 * v29);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v40, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v39 == v85)
      {
        goto LABEL_116;
      }
    }

    if (v92 || v39 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        v42 = *v38;
        v89 = -v41;
        v90 = 8 * v29;
        v43 = 4;
        v44 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v92)
          {
            v45 = MEMORY[0x2743B2D10](v105, v37);
          }

          else
          {
            v45 = *(v88 + 8 * v105);
          }

          v10 = v43 - 4;
          swift_beginAccess();
          v46 = *(v45 + 32);
          if ((v43 - 4) >= *(v46 + 16))
          {
            break;
          }

          v47 = *(v46 + 8 * v43);

          if (*(v47 + 16) - 1 >= v29)
          {
            goto LABEL_118;
          }

          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v48 + 16) = v29;
          bzero((v48 + 32), v90);
          v95 = v48;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v47, v29, &v95);

          v49 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
          }

          v51 = v44[2];
          v50 = v44[3];
          if (v51 >= v50 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v44);
          }

          v44[2] = v51 + 1;
          v44[v51 + 4] = v49;
          if (v92)
          {
            v37 = v91;
            v52 = MEMORY[0x2743B2D10](v105, v91);
          }

          else
          {
            v52 = *(v88 + 8 * v105);

            v37 = v91;
          }

          swift_beginAccess();
          v53 = *(v52 + 32);
          if (v10 >= *(v53 + 16))
          {
            goto LABEL_120;
          }

          v54 = *(v53 + 8 * v43);
          if (!*(v54 + 16))
          {
            goto LABEL_121;
          }

          v10 = *(v54 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
          }

          v56 = *(v42 + 2);
          v55 = *(v42 + 3);
          if (v56 >= v55 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v42);
          }

          *(v42 + 2) = v56 + 1;
          *&v42[8 * v56 + 32] = v10;
          ++v43;
          if (v89 + v43 == 4)
          {
            *v86 = v42;
            v57 = v87;
            v39 = v105;
            goto LABEL_57;
          }
        }

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
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_139;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    if (v29 < 0)
    {
      v83 = v29;
    }

    else
    {
      v83 = v29 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v98 = 0xD00000000000001BLL;
    v99 = 0x8000000270C51C80;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96 = v6;
    goto LABEL_7;
  }

  v10 = v5;
  v12 = *(a3 + 16);
  if (v12 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51F80;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96 = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_7;
  }

  if (*(a4 + 16))
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51CE0;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96 = 0;
LABEL_7:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v17 = v99;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v98;
    *(v18 + 8) = v17;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v90 = a2;
  v92 = a4;
  v86 = a1;
  v105 = a3;
  v98 = a3;
  v99 = a3 + 32;
  v100 = 0;
  v101 = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v21 = *(v4 + 24);
  v102 = *(v4 + 8);
  v103 = v21;
  v104 = *(v4 + 40);
  v23 = *(&v102 + 1);
  v22 = v102;
  v24 = *(&v21 + 1);
  v87 = v21;
  v25 = v104;
  v26 = specialized Gadget.wirePolynomialLength.getter();
  v27 = specialized Gadget.gadgetPolynomialLength.getter();
  v84 = v22;
  *(inited + 32) = __PAIR128__(v23, v22);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  *(inited + 64) = v27;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay4VDAF16GadgetParametersVG_AF0E10WireInputsCyAF7Field32VGs5NeverOTg5096_s4VDAF16FullyLinearProofPAAE5prove4into11measurement0E4Rand05jointH0yqd__z_Say1FQzGA2KtKSmRd__7b15Qyd__AJRSlFAA16egh11CyAJGAA0K10f43VXEfU_AA28PINENormEqualityCheckCircuitVyAA7I18VSRySfGG_SayAVGTG5s10ArraySliceVyAMGTf1cn_nTm(inited, &v98);
  v29 = v28;
  swift_setDeallocating();
  v91 = v29;
  if (v29 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v83))
  {
    v31 = MEMORY[0x277D84F90];
    v85 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v105 = v10;
    v96 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v32 = v85;
    if (v85 < 0)
    {
      break;
    }

    v33 = 0;
    v31 = v96;
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2743B2D10](v33, v91);
      }

      else
      {
        v34 = *(v91 + 8 * v33 + 32);
      }

      v96 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v32 = v85;
        v31 = v96;
      }

      ++v33;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v32 != v33);
    v10 = v105;
LABEL_20:
    specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v90, v92, v31, v94);
    if (v10)
    {

      return swift_unknownObjectRelease();
    }

    v37 = v91;
    if (v85 < 0)
    {
      goto LABEL_146;
    }

    v38 = v86;
    if (!v85)
    {
LABEL_116:

      return swift_unknownObjectRelease();
    }

    if (!v87)
    {
      goto LABEL_147;
    }

    v39 = 0;
    v92 = v91 & 0xC000000000000001;
    v88 = v91 + 32;
    while (1)
    {
      v29 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[12] = v29;
      if (v39 == 1)
      {
        goto LABEL_132;
      }

      v10 = 40 * v39;
      v29 = v97[5 * v39 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[0] = v84;
      v41 = v97[5 * v39];
      if (v41 < 0)
      {
        goto LABEL_133;
      }

      v105 = v39;
      if (v41)
      {
        break;
      }

      v44 = MEMORY[0x277D84F90];
      v57 = v87;
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v93[4] = result;
      v90 = v93[5 * v39 + 4];
      if (v57 < 1)
      {
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v10 = v44[2];
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v10)
        {
          v58 = 0;
          v59 = 1;
          while (1)
          {
            v61 = v58;
            v62 = v10 - v58;
            v63 = __OFSUB__(v10, v58);
            v64 = __OFADD__(v58, v57);
            v58 += v57;
            if (v64)
            {
              if (v63)
              {
                goto LABEL_129;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                goto LABEL_148;
              }

              v65 = v62 >= v57;
              v66 = v62 >= v57 ? v58 : v10;
              if (v65)
              {
                goto LABEL_148;
              }

              v58 = 0x7FFFFFFFFFFFFFFFLL;
              if (v66 < v61)
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v63)
              {
                goto LABEL_128;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                v66 = v58;
                if (v58 < v61)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v62 >= v57)
                {
                  v66 = v58;
                }

                else
                {
                  v66 = v10;
                }

                if (v66 < v61)
                {
                  goto LABEL_122;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_123;
            }

            if (v61 < 0)
            {
              break;
            }

            if (v10 < v66)
            {
              goto LABEL_125;
            }

            if (v61 >= v66)
            {
              goto LABEL_126;
            }

            v67 = *(v25 + 16);
            if (!v67)
            {
              goto LABEL_127;
            }

            v68 = v44[v61 + 4];
            do
            {
              if (v67 < 1)
              {
                v60 = &outlined read-only object #1 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
LABEL_61:

                goto LABEL_62;
              }
            }

            while (!*(v25 + 4 * v67-- + 28));
            v70 = *(v68 + 16);
            if (!v70)
            {
              goto LABEL_130;
            }

            v71 = *(v68 + 16);
            do
            {
              if (v71 < 1)
              {
                v77 = *(v25 + 32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
                v60 = swift_allocObject();
                v60[1] = xmmword_270C44540;
                *(v60 + 8) = v77;
                goto LABEL_61;
              }
            }

            while (!*(v68 + 4 * v71-- + 28));
            do
            {
              v73 = v70 - 1;
              if (v70 < 1)
              {
                goto LABEL_99;
              }
            }

            while (!*(v68 + 4 * v70-- + 28));
            if ((v73 + 1) <= 0x3C)
            {
LABEL_99:

              specialized evaluateUsingHorner<A, B, C>(_:atInput:)(v25, v68);
              v60 = v75;
              v76 = v75[2];

              if (!v76)
              {
                goto LABEL_131;
              }

              goto LABEL_103;
            }

            v60 = specialized evaluateUsingDFT<A, B, C>(_:atInput:)(v25, v68);
            v78 = *(v60 + 2);

            if (!v78)
            {
              goto LABEL_138;
            }

LABEL_103:
            v57 = v87;
LABEL_62:
            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field32V_Tt2B5(v29, v60, &v95);

            v29 = v95;
            v59 = v10 >= v58;
            if (v58 >= v10)
            {
              goto LABEL_105;
            }
          }

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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

LABEL_105:

      v79 = *(v29 + 16);
      if (!v79)
      {
        goto LABEL_134;
      }

      v39 = v105 + 1;
      v80 = *(v29 + 16);
      v38 = v86;
      do
      {
        v81 = v80 - 1;
        if (v80 < 1)
        {
          v10 = 0;
          goto LABEL_112;
        }
      }

      while (!*(v29 + 4 * v80-- + 28));
      v10 = v81 + 1;
      if (v79 < v81 + 1)
      {
        goto LABEL_135;
      }

LABEL_112:
      specialized Array.append<A>(contentsOf:)(v29, v29 + 32, 0, (2 * v10) | 1);
      v37 = v91;
      v29 = v90 - v10;
      if (__OFSUB__(v90, v10))
      {
        goto LABEL_136;
      }

      if (v29 < 0)
      {
        goto LABEL_137;
      }

      if (v29)
      {
        v40 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v40 + 16) = v29;
        bzero((v40 + 32), 4 * v29);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v40);
      if (v39 == v85)
      {
        goto LABEL_116;
      }
    }

    if (v92 || v39 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        v42 = *v38;
        v89 = -v41;
        v90 = 4 * v29;
        v43 = 4;
        v44 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v92)
          {
            v45 = MEMORY[0x2743B2D10](v105, v37);
          }

          else
          {
            v45 = *(v88 + 8 * v105);
          }

          v10 = v43 - 4;
          swift_beginAccess();
          v46 = *(v45 + 32);
          if ((v43 - 4) >= *(v46 + 16))
          {
            break;
          }

          v47 = *(v46 + 8 * v43);

          if (*(v47 + 16) - 1 >= v29)
          {
            goto LABEL_118;
          }

          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v48 + 16) = v29;
          bzero((v48 + 32), v90);
          v95 = v48;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v47, v29, &v95);

          v49 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
          }

          v51 = v44[2];
          v50 = v44[3];
          if (v51 >= v50 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v44);
          }

          v44[2] = v51 + 1;
          v44[v51 + 4] = v49;
          if (v92)
          {
            v37 = v91;
            v52 = MEMORY[0x2743B2D10](v105, v91);
          }

          else
          {
            v52 = *(v88 + 8 * v105);

            v37 = v91;
          }

          swift_beginAccess();
          v53 = *(v52 + 32);
          if (v10 >= *(v53 + 16))
          {
            goto LABEL_120;
          }

          v54 = *(v53 + 8 * v43);
          if (!*(v54 + 16))
          {
            goto LABEL_121;
          }

          v10 = *(v54 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
          }

          v56 = *(v42 + 2);
          v55 = *(v42 + 3);
          if (v56 >= v55 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v42);
          }

          *(v42 + 2) = v56 + 1;
          *&v42[4 * v56 + 32] = v10;
          ++v43;
          if (v89 + v43 == 4)
          {
            *v86 = v42;
            v57 = v87;
            v39 = v105;
            goto LABEL_57;
          }
        }

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
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_139;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    if (v29 < 0)
    {
      v83 = v29;
    }

    else
    {
      v83 = v29 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

{
  v6 = *(v4 + 72);
  if (*(a2 + 16) != v6)
  {
    _StringGuts.grow(_:)(35);

    v98 = 0xD00000000000001BLL;
    v99 = 0x8000000270C51C80;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = v6;
    goto LABEL_7;
  }

  v10 = v5;
  v12 = *(a3 + 16);
  if (v12 != specialized FullyLinearProof.proveRandLength.getter())
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51F80;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v15);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = specialized FullyLinearProof.proveRandLength.getter();
    goto LABEL_7;
  }

  if (*(a4 + 16))
  {
    _StringGuts.grow(_:)(33);

    v98 = 0xD000000000000019;
    v99 = 0x8000000270C51CE0;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v96[0] = 0;
LABEL_7:
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v16);

    v17 = v99;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v18 = v98;
    *(v18 + 8) = v17;
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  v90 = a2;
  v92 = a4;
  v86 = a1;
  v105 = a3;
  v98 = a3;
  v99 = a3 + 32;
  v100 = 0;
  v101 = (2 * v12) | 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMd, &_ss23_ContiguousArrayStorageCy4VDAF16GadgetParametersVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  v21 = *(v4 + 24);
  v102 = *(v4 + 8);
  v103 = v21;
  v104 = *(v4 + 40);
  v23 = *(&v102 + 1);
  v22 = v102;
  v24 = *(&v21 + 1);
  v87 = v21;
  v25 = v104;
  v26 = specialized Gadget.wirePolynomialLength.getter();
  v27 = specialized Gadget.gadgetPolynomialLength.getter();
  v84 = v22;
  *(inited + 32) = __PAIR128__(v23, v22);
  *(inited + 48) = v24;
  *(inited + 56) = v26;
  *(inited + 64) = v27;

  sub_270B600A8(inited, &v98);
  v29 = v28;
  swift_setDeallocating();
  v91 = v29;
  if (v29 >> 62)
  {
    goto LABEL_141;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2743B2FD0](v83))
  {
    v31 = MEMORY[0x277D84F90];
    v85 = i;
    if (!i)
    {
      goto LABEL_20;
    }

    v105 = v10;
    v94 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    v32 = v85;
    if (v85 < 0)
    {
      break;
    }

    v33 = 0;
    v31 = v94;
    do
    {
      if ((v91 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2743B2D10](v33, v91);
      }

      else
      {
        v34 = *(v91 + 8 * v33 + 32);
      }

      v94 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v32 = v85;
        v31 = v94;
      }

      ++v33;
      *(v31 + 16) = v36 + 1;
      *(v31 + 8 * v36 + 32) = v34;
    }

    while (v32 != v33);
    v10 = v105;
LABEL_20:
    specialized PINENormEqualityCheckCircuit.evaluate(measurement:jointRand:numOfShares:for:)(v90, v92, v31, v96);
    if (v10)
    {

      return swift_unknownObjectRelease();
    }

    v37 = v91;
    if (v85 < 0)
    {
      goto LABEL_146;
    }

    v38 = v86;
    if (!v85)
    {
LABEL_116:

      return swift_unknownObjectRelease();
    }

    if (!v87)
    {
      goto LABEL_147;
    }

    v39 = 0;
    v92 = v91 & 0xC000000000000001;
    v88 = v91 + 32;
    while (1)
    {
      v29 = specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[12] = v29;
      if (v39 == 1)
      {
        goto LABEL_132;
      }

      v10 = 40 * v39;
      v29 = v97[5 * v39 + 12];
      specialized Gadget.wirePolynomialLength.getter();
      specialized Gadget.gadgetPolynomialLength.getter();
      v97[0] = v84;
      v41 = v97[5 * v39];
      if (v41 < 0)
      {
        goto LABEL_133;
      }

      v105 = v39;
      if (v41)
      {
        break;
      }

      v44 = MEMORY[0x277D84F90];
      v57 = v87;
LABEL_57:
      specialized Gadget.wirePolynomialLength.getter();
      result = specialized Gadget.gadgetPolynomialLength.getter();
      v93[4] = result;
      v90 = v93[5 * v39 + 4];
      if (v57 < 1)
      {
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
      }

      else
      {
        v10 = v44[2];
        v29 = &outlined read-only object #0 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
        if (v10)
        {
          v58 = 0;
          v59 = 1;
          while (1)
          {
            v61 = v58;
            v62 = v10 - v58;
            v63 = __OFSUB__(v10, v58);
            v64 = __OFADD__(v58, v57);
            v58 += v57;
            if (v64)
            {
              if (v63)
              {
                goto LABEL_129;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                goto LABEL_148;
              }

              v65 = v62 >= v57;
              v66 = v62 >= v57 ? v58 : v10;
              if (v65)
              {
                goto LABEL_148;
              }

              v58 = 0x7FFFFFFFFFFFFFFFLL;
              if (v66 < v61)
              {
                goto LABEL_122;
              }
            }

            else
            {
              if (v63)
              {
                goto LABEL_128;
              }

              if ((v62 & 0x8000000000000000) != 0)
              {
                v66 = v58;
                if (v58 < v61)
                {
                  goto LABEL_122;
                }
              }

              else
              {
                if (v62 >= v57)
                {
                  v66 = v58;
                }

                else
                {
                  v66 = v10;
                }

                if (v66 < v61)
                {
                  goto LABEL_122;
                }
              }
            }

            if (!v59)
            {
              goto LABEL_123;
            }

            if (v61 < 0)
            {
              break;
            }

            if (v10 < v66)
            {
              goto LABEL_125;
            }

            if (v61 >= v66)
            {
              goto LABEL_126;
            }

            v67 = *(v25 + 16);
            if (!v67)
            {
              goto LABEL_127;
            }

            v68 = v44[v61 + 4];
            do
            {
              if (v67 < 1)
              {
                v60 = &outlined read-only object #1 of specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:);
LABEL_61:

                goto LABEL_62;
              }
            }

            while (!*(v25 + 8 * v67-- + 24));
            v70 = *(v68 + 16);
            if (!v70)
            {
              goto LABEL_130;
            }

            v71 = *(v68 + 16);
            do
            {
              if (v71 < 1)
              {
                v77 = *(v25 + 32);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
                v60 = swift_allocObject();
                v60[1] = xmmword_270C44540;
                *(v60 + 4) = v77;
                goto LABEL_61;
              }
            }

            while (!*(v68 + 8 * v71-- + 24));
            do
            {
              v73 = v70 - 1;
              if (v70 < 1)
              {
                goto LABEL_99;
              }
            }

            while (!*(v68 + 8 * v70-- + 24));
            if ((v73 + 1) <= 0x3C)
            {
LABEL_99:

              specialized evaluateUsingHorner<A, B, C>(_:atInput:)(v25, v68);
              v60 = v75;
              v76 = v75[2];

              if (!v76)
              {
                goto LABEL_131;
              }

              goto LABEL_103;
            }

            v60 = specialized evaluateUsingDFT<A, B, C>(_:atInput:)(v25, v68);
            v78 = *(v60 + 2);

            if (!v78)
            {
              goto LABEL_138;
            }

LABEL_103:
            v57 = v87;
LABEL_62:
            _s4VDAF10PolynomialV1poiyACyxGAE_AEtFZAA7Field64V_Tt2B5(v29, v60, &v95);

            v29 = v95;
            v59 = v10 >= v58;
            if (v58 >= v10)
            {
              goto LABEL_105;
            }
          }

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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }
      }

LABEL_105:

      v79 = *(v29 + 16);
      if (!v79)
      {
        goto LABEL_134;
      }

      v39 = v105 + 1;
      v80 = *(v29 + 16);
      v38 = v86;
      do
      {
        v81 = v80 - 1;
        if (v80 < 1)
        {
          v10 = 0;
          goto LABEL_112;
        }
      }

      while (!*(v29 + 8 * v80-- + 24));
      v10 = v81 + 1;
      if (v79 < v81 + 1)
      {
        goto LABEL_135;
      }

LABEL_112:
      specialized Array.append<A>(contentsOf:)(v29, v29 + 32, 0, (2 * v10) | 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      v37 = v91;
      v29 = v90 - v10;
      if (__OFSUB__(v90, v10))
      {
        goto LABEL_136;
      }

      if (v29 < 0)
      {
        goto LABEL_137;
      }

      if (v29)
      {
        v40 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v40 + 16) = v29;
        bzero((v40 + 32), 8 * v29);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      specialized Array.append<A>(contentsOf:)(v40, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
      if (v39 == v85)
      {
        goto LABEL_116;
      }
    }

    if (v92 || v39 < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v29 & 0x8000000000000000) == 0)
      {
        v42 = *v38;
        v89 = -v41;
        v90 = 8 * v29;
        v43 = 4;
        v44 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v92)
          {
            v45 = MEMORY[0x2743B2D10](v105, v37);
          }

          else
          {
            v45 = *(v88 + 8 * v105);
          }

          v10 = v43 - 4;
          swift_beginAccess();
          v46 = *(v45 + 32);
          if ((v43 - 4) >= *(v46 + 16))
          {
            break;
          }

          v47 = *(v46 + 8 * v43);

          if (*(v47 + 16) - 1 >= v29)
          {
            goto LABEL_118;
          }

          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v48 + 16) = v29;
          bzero((v48 + 32), v90);
          v95 = v48;
          specialized inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(v47, v29, &v95);

          v49 = v95;
          if (!*(v95 + 2))
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44[2] + 1, 1, v44);
          }

          v51 = v44[2];
          v50 = v44[3];
          if (v51 >= v50 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v44);
          }

          v44[2] = v51 + 1;
          v44[v51 + 4] = v49;
          if (v92)
          {
            v37 = v91;
            v52 = MEMORY[0x2743B2D10](v105, v91);
          }

          else
          {
            v52 = *(v88 + 8 * v105);

            v37 = v91;
          }

          swift_beginAccess();
          v53 = *(v52 + 32);
          if (v10 >= *(v53 + 16))
          {
            goto LABEL_120;
          }

          v54 = *(v53 + 8 * v43);
          if (!*(v54 + 16))
          {
            goto LABEL_121;
          }

          v10 = *(v54 + 32);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
          }

          v56 = *(v42 + 2);
          v55 = *(v42 + 3);
          if (v56 >= v55 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v42);
          }

          *(v42 + 2) = v56 + 1;
          *&v42[8 * v56 + 32] = v10;
          ++v43;
          if (v89 + v43 == 4)
          {
            *v86 = v42;
            v57 = v87;
            v39 = v105;
            goto LABEL_57;
          }
        }

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
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      goto LABEL_139;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    if (v29 < 0)
    {
      v83 = v29;
    }

    else
    {
      v83 = v29 & 0xFFFFFFFFFFFFFF8;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}