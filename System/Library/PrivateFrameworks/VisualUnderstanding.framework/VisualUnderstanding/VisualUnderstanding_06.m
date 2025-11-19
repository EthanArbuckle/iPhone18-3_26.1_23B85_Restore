uint64_t sub_1D21DA230(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1D225043C();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_1D225028C();
    if (a1)
    {
      a1 = sub_1D22502BC();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      sub_1D22502AC();
      return sub_1D225043C();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1D225028C() || !__OFSUB__(v5, sub_1D22502BC()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return sub_1D225043C();
}

uint64_t sub_1D21DA408(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (*(a3 + 16) != v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a4 + 16) != v6)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v12 = a6;
  v13 = a5;
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1D38996F0](a3 + 32, 1, &v13, a4 + 32, 1, &v12, v8, 1, v6);

  *a2 = v6;
  return result;
}

uint64_t sub_1D21DA4FC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1D2250B2C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D21DA5FC(uint64_t *a1, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1D21A1ED8(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1D2254540;
      sub_1D21A1ED8(0, 0xC000000000000000);
      result = sub_1D21DA890(&v21, a2 & 1);
      v8 = v21;
      v9 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1D21A1ED8(v5, v4);
      *&v21 = v5;
      WORD4(v21) = v4;
      BYTE10(v21) = BYTE2(v4);
      BYTE11(v21) = BYTE3(v4);
      BYTE12(v21) = BYTE4(v4);
      BYTE13(v21) = BYTE5(v4);
      BYTE14(v21) = BYTE6(v4);
      result = sub_1D223EA28(&v21, &v21 + BYTE6(v4), a2 & 1);
      v8 = v21;
      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *a1 = v8;
    a1[1] = v9;
    return result;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    return sub_1D223EA28(&v21, &v21, a2 & 1);
  }

  sub_1D21A1ED8(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1D2254540;
  sub_1D21A1ED8(0, 0xC000000000000000);
  sub_1D225040C();
  v10 = *(&v21 + 1);
  v11 = *(v21 + 16);
  v12 = *(v21 + 24);
  result = sub_1D225028C();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_1D22502BC();
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v16 = __OFSUB__(v12, v11);
  v17 = v12 - v11;
  if (v16)
  {
    goto LABEL_17;
  }

  v18 = sub_1D22502AC();
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  result = sub_1D223EA28(v13 + v15, v13 + v15 + v19, a2 & 1);
  *a1 = v21;
  a1[1] = v10 | 0x8000000000000000;
  return result;
}

uint64_t sub_1D21DA890(int *a1, char a2)
{
  result = sub_1D225041C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1D225028C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1D22502BC();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1D22502AC();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  sub_1D223EA28(v7 + v8, v7 + v8 + v11, a2 & 1);
}

char *sub_1D21DA94C(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

uint64_t sub_1D21DA9BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2 || *(a4 + 16) == *(a4 + 24))
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (v9)
  {
    if (a4 == a4 >> 32)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if ((a5 & 0xFF000000000000) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 == 2)
    {
      v14 = *(a2 + 16);
      v13 = *(a2 + 24);
      v12 = v13 - v14;
      if (__OFSUB__(v13, v14))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v15 = *(a1 + 48);
    if (*(a1 + 56))
    {
      if ((v15 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v16 = 4 * v15;
    }

    else
    {
      if (v15 + 0x4000000000000000 < 0)
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v16 = 2 * v15;
    }

    if (!v16)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v9 == 2)
    {
      v19 = *(a4 + 16);
      v18 = *(a4 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (v20)
      {
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      if (*(a1 + 56))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v9 == 1)
      {
        LODWORD(v17) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v17 = v17;
        if ((*(a1 + 56) & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_32:
        if ((v15 - 0x2000000000000000) >> 62 != 3)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v21 = 4 * v15;
LABEL_36:
        if (!v21)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v81 = v6;
        v22 = v17 / v21;
        v24 = BYTE6(a3);
        v85 = sub_1D223EDC0(a2, a3, a4, a5, v15, *(a1 + 56));
        if (v22 >= a6)
        {
          v25 = a6;
        }

        else
        {
          v25 = v22;
        }

        v82 = v25;
        v83 = v22;
        if (v11 > 1)
        {
          if (v11 != 2)
          {
            v26 = 0;
            goto LABEL_50;
          }

          v28 = *(a2 + 16);
          v27 = *(a2 + 24);
          v20 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (!v20)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        else if (!v11)
        {
          v26 = v24;
LABEL_50:
          v29 = *(a1 + 48);
          if (*(a1 + 56))
          {
            if ((v29 - 0x2000000000000000) >> 62 != 3)
            {
LABEL_132:
              __break(1u);
              goto LABEL_133;
            }

            v30 = 4 * v29;
          }

          else
          {
            if (v29 + 0x4000000000000000 < 0)
            {
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

            v30 = 2 * v29;
          }

          if (!v30)
          {
            goto LABEL_125;
          }

          v31 = v12 / v16;
          v32 = sub_1D2195E44(0, (v26 / v30) & ~((v26 / v30) >> 63), 0, MEMORY[0x1E69E7CC0]);
          if (v12 / v16 < 0)
          {
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          v10 = v32;
          if (!v31)
          {
LABEL_113:

            return v10;
          }

          v33 = v22;
          if (v22 < 0)
          {
            goto LABEL_128;
          }

          v34 = v82;
          v35 = v82 & ~(v82 >> 63);
          v86 = 0;
          v36 = 0;
          v78 = v31;
          type metadata accessor for MinHeap();
          while (1)
          {
            inited = swift_initStackObject();
            v38 = MEMORY[0x1E69E7CC0];
            *(inited + 16) = MEMORY[0x1E69E7CC0];
            *(inited + 24) = v34;
            v39 = sub_1D2195E1C(0, v35, 0, v38);
            *(inited + 16) = v39;
            v79 = v36;
            v80 = v10;
            if (v33)
            {
              break;
            }

            v63 = v39;
LABEL_102:
            v87 = v63;
            swift_bridgeObjectRetain_n();
            sub_1D21C7E2C(&v87);
            if (v6)
            {
              goto LABEL_138;
            }

            v64 = v87;
            v65 = *(v87 + 2);
            if (v65)
            {
              v87 = MEMORY[0x1E69E7CC0];
              sub_1D21AF77C(0, v65, 0);
              v66 = 0;
              v67 = v87;
              v68 = *(v87 + 2);
              v69 = 16 * v68;
              do
              {
                v70 = *&v64[v66 + 32];
                v71 = *&v64[v66 + 40];
                v87 = v67;
                v72 = *(v67 + 3);
                v73 = v68 + 1;
                if (v68 >= v72 >> 1)
                {
                  sub_1D21AF77C((v72 > 1), v68 + 1, 1);
                  v67 = v87;
                }

                *(v67 + 2) = v73;
                v74 = &v67[v69 + v66];
                *(v74 + 4) = v70;
                *(v74 + 10) = v71;
                v66 += 16;
                v68 = v73;
                --v65;
              }

              while (v65);
            }

            else
            {

              v67 = MEMORY[0x1E69E7CC0];
            }

            v10 = v80;
            v76 = v80[2];
            v75 = v80[3];
            v34 = v82;
            v33 = v83;
            if (v76 >= v75 >> 1)
            {
              v10 = sub_1D2195E44((v75 > 1), v76 + 1, 1, v80);
            }

            v36 = v79 + 1;

            v10[2] = v76 + 1;
            v10[v76 + 4] = v67;
            v86 += v83;
            v35 = v82 & ~(v82 >> 63);
            if (v79 + 1 == v78)
            {
              goto LABEL_113;
            }
          }

          v84 = v36 * v33;
          if ((v36 * v33) >> 64 != (v36 * v33) >> 63)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v40 = 0;
          while ((v86 & 0x8000000000000000) == 0)
          {
            if ((v84 + v40) >= *(v85 + 2))
            {
              goto LABEL_120;
            }

            v41 = v85[v84 + 8 + v40];
            v42 = *(inited + 16);
            v43 = *(v42 + 2);
            if (v43 < v34)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_1D2195E1C(0, v43 + 1, 1, v42);
              }

              v45 = *(v42 + 2);
              v44 = *(v42 + 3);
              if (v45 >= v44 >> 1)
              {
                v42 = sub_1D2195E1C((v44 > 1), v45 + 1, 1, v42);
              }

              *(v42 + 2) = v45 + 1;
              v46 = &v42[16 * v45];
              *(v46 + 4) = v40;
              *(v46 + 10) = v41;
              *(inited + 16) = v42;
              v47 = (v45 - 1) / 2;
              v48 = *(v42 + 2);
              if (v47 < v48)
              {
                while (v45 < v48)
                {
                  v50 = v47;
                  v51 = 16 * v47;
                  v52 = &v42[16 * v47 + 32];
                  v53 = *v52;
                  v54 = *(v52 + 8);
                  v55 = &v42[16 * v45 + 32];
                  v56 = *v55;
                  v57 = *(v55 + 8);
                  if (v57 >= v54 && (v57 != v54 || v56 >= v53))
                  {
                    v34 = v82;
                    v33 = v83;
                    goto LABEL_63;
                  }

                  if (v50 != v45)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v42 = sub_1D2204854(v42);
                    }

                    v59 = *(v42 + 2);
                    if (v50 >= v59)
                    {
                      goto LABEL_117;
                    }

                    v60 = &v42[v51 + 32];
                    *v60 = v56;
                    *(v60 + 2) = v57;
                    if (v45 >= v59)
                    {
                      goto LABEL_118;
                    }

                    v49 = &v42[16 * v45 + 32];
                    *v49 = v53;
                    *(v49 + 8) = v54;
                    *(inited + 16) = v42;
                  }

                  v47 = (v50 - 1) / 2;
                  v48 = *(v42 + 2);
                  v45 = v50;
                  if (v47 >= v48)
                  {
                    goto LABEL_115;
                  }
                }
              }

              else
              {
LABEL_115:
                __break(1u);
              }

              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
              break;
            }

            if (!v43)
            {
              goto LABEL_121;
            }

            v61 = *(v42 + 10);
            if (v61 < v41 || (v61 == v41 ? (v62 = *(v42 + 4) < v40) : (v62 = 0), v62))
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v42 + 2))
                {
                  goto LABEL_122;
                }
              }

              else
              {
                v42 = sub_1D2204854(v42);
                if (!*(v42 + 2))
                {
                  goto LABEL_122;
                }
              }

              *(v42 + 4) = v40;
              *(v42 + 10) = v41;
              *(inited + 16) = v42;
              sub_1D220FD10();
            }

LABEL_63:
            if (++v40 == v33)
            {
              v63 = *(inited + 16);
              goto LABEL_102;
            }
          }

          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        LODWORD(v26) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
          goto LABEL_137;
        }

        v26 = v26;
        goto LABEL_50;
      }

      v17 = BYTE6(a5);
      if (*(a1 + 56))
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    v21 = 2 * v15;
    goto LABEL_36;
  }

  if (!v11)
  {
    v12 = BYTE6(a3);
    goto LABEL_19;
  }

LABEL_16:
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v12 = HIDWORD(a2) - a2;
    goto LABEL_19;
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:

  __break(1u);
  return result;
}

uint64_t sub_1D21DB0D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = *(a1 + 48);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (v6 + 0x4000000000000000 < 0)
    {
      goto LABEL_98;
    }

    v7 = 2 * v6;
LABEL_6:
    v80 = MEMORY[0x1E69E7CD0];
    v8 = MEMORY[0x1E69E7CC0];
    v79 = MEMORY[0x1E69E7CC0];
    sub_1D21A3B78(a2, a3);
    sub_1D21F4A10(v7, v5, v4, &v77);
    if (!v7)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v75 = v7;
    v3 = (v4 >> 62);
    v9 = __OFSUB__(HIDWORD(v5), v5);
    v66 = v9;
    v67 = HIDWORD(v5) - v5;
    v68 = BYTE6(v4);
    v10 = *(v8 + 16);
    v69 = (v4 >> 62);
    v70 = v4;
    v74 = v5;
    while (1)
    {
      if (v3 > 1)
      {
        if (v3 != 2)
        {
          v55 = 0;
          v8 = MEMORY[0x1E69E7CC0];
          goto LABEL_72;
        }

        v14 = *(v5 + 2);
        v13 = *(v5 + 3);
        v15 = __OFSUB__(v13, v14);
        v12 = v13 - v14;
        if (v15)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v12 = v68;
        if (v3)
        {
          v12 = v67;
          if (v66)
          {
            goto LABEL_90;
          }
        }
      }

      if (v10 >= v12 / v7)
      {
        break;
      }

      v72 = v78;
      v73 = v77;
      v3 = sub_1D223EDC0(v77, v78, v5, v4, *(a1 + 48), *(a1 + 56));
      v16 = v3[2];
      if (v16)
      {
        v17 = 0;
        v18 = v80;
        v19 = v80 + 56;
        v20 = MEMORY[0x1E69E7CC0];
        do
        {
          v21 = v17;
          while (1)
          {
            if (v21 >= v16)
            {
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v17 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_84;
            }

            v22 = *(v3 + v21 + 8);
            if (!*(v18 + 16))
            {
              break;
            }

            v23 = sub_1D225131C();
            v24 = -1 << *(v18 + 32);
            v25 = v23 & ~v24;
            if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              break;
            }

            v26 = ~v24;
            while (*(*(v18 + 48) + 8 * v25) != v21)
            {
              v25 = (v25 + 1) & v26;
              if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            ++v21;
            if (v17 == v16)
            {
              goto LABEL_41;
            }
          }

LABEL_34:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76[0] = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D21AF810(0, *(v20 + 2) + 1, 1);
            v20 = v76[0];
          }

          v29 = *(v20 + 2);
          v28 = *(v20 + 3);
          if (v29 >= v28 >> 1)
          {
            sub_1D21AF810((v28 > 1), v29 + 1, 1);
            v20 = v76[0];
          }

          *(v20 + 2) = v29 + 1;
          v30 = &v20[16 * v29];
          *(v30 + 4) = v21;
          *(v30 + 10) = v22;
        }

        while (v17 != v16);
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

LABEL_41:

      v76[0] = v20;

      sub_1D21D8004(v76);

      v31 = v76[0];
      v32 = *(v76[0] + 2);
      v4 = v70;
      v3 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v33 = 0;
        v34 = (v76[0] + 40);
        while (*v34 >= 0.9)
        {
          ++v33;
          v34 += 4;
          if (v32 == v33)
          {
            v76[0] = MEMORY[0x1E69E7CC0];
            sub_1D21AF7AC(0, v32, 0);
            v11 = v76[0];
            v35 = *(v76[0] + 2);
            v36 = 32;
            v3 = v69;
            do
            {
              v37 = *&v31[v36];
              v76[0] = v11;
              v38 = *(v11 + 3);
              if (v35 >= v38 >> 1)
              {
                sub_1D21AF7AC((v38 > 1), v35 + 1, 1);
                v11 = v76[0];
              }

              *(v11 + 2) = v35 + 1;
              *&v11[8 * v35 + 32] = v37;
              v36 += 16;
              ++v35;
              --v32;
            }

            while (v32);

            goto LABEL_12;
          }
        }

        v39 = *(v34 - 1);
        v40 = v39 * v75;
        if ((v39 * v75) >> 64 != (v39 * v75) >> 63)
        {
          goto LABEL_91;
        }

        v15 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v15)
        {
          goto LABEL_92;
        }

        if ((v41 * v75) >> 64 != (v41 * v75) >> 63)
        {
          goto LABEL_93;
        }

        if (v41 * v75 < v40)
        {
          goto LABEL_94;
        }

        v42 = sub_1D225048C();
        v44 = v43;
        sub_1D21A1ED8(v73, v72);
        v77 = v42;
        v78 = v44;
        v45 = *(v31 + 2);

        if (v45 < v33)
        {
          goto LABEL_95;
        }

        if (v33)
        {
          v76[0] = v3;
          sub_1D21AF7AC(0, v33, 0);
          v46 = v76[0];
          v47 = *(v76[0] + 2);
          v48 = 32;
          v3 = v69;
          do
          {
            v49 = *&v31[v48];
            v76[0] = v46;
            v50 = *(v46 + 3);
            if (v47 >= v50 >> 1)
            {
              sub_1D21AF7AC((v50 > 1), v47 + 1, 1);
              v46 = v76[0];
            }

            *(v46 + 2) = v47 + 1;
            *&v46[8 * v47 + 32] = v49;
            v48 += 16;
            ++v47;
            --v33;
          }

          while (v33);
        }

        else
        {

          v46 = v3;
          v3 = v69;
        }

        sub_1D2202A30(v51);
        v52 = sub_1D2206838(v46);

        sub_1D21D7CCC(v52);
      }

      else
      {

        v11 = v3;
        v3 = v69;
LABEL_12:
        sub_1D2202A30(v11);
      }

      v8 = v79;
      v10 = *(v79 + 16);
      v5 = v74;
      v7 = v75;
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    if (v3)
    {
      if (v3 == 2)
      {
        v54 = *(v5 + 2);
        v53 = *(v5 + 3);
        v55 = v53 - v54;
        if (__OFSUB__(v53, v54))
        {
          __break(1u);
LABEL_68:
          sub_1D21A1ED8(v77, v78);

          sub_1D21A3B78(v5, v4);
          goto LABEL_82;
        }
      }

      else
      {
        v55 = v67;
        if (v66)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      v55 = v68;
    }

LABEL_72:
    v56 = sub_1D2178E78(v55);
    v76[0] = v56;
    v76[1] = v57;
    v58 = *(v8 + 16);
    if (v58)
    {
      v59 = 32;
      while (1)
      {
        v60 = *(v8 + v59);
        v61 = v60 * v7;
        if ((v60 * v7) >> 64 != (v60 * v7) >> 63)
        {
          break;
        }

        v15 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v15)
        {
          goto LABEL_86;
        }

        if ((v62 * v7) >> 64 != (v62 * v7) >> 63)
        {
          goto LABEL_87;
        }

        if (v62 * v7 < v61)
        {
          goto LABEL_88;
        }

        v63 = sub_1D225048C();
        v3 = v64;
        sub_1D225047C();
        sub_1D21A1ED8(v63, v3);
        v59 += 8;
        if (!--v58)
        {

          v5 = v76[0];
          goto LABEL_81;
        }
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
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v5 = v56;

LABEL_81:
    sub_1D21A1ED8(v77, v78);
LABEL_82:

    return v5;
  }

  if ((v6 - 0x2000000000000000) >> 62 == 3)
  {
    v7 = 4 * v6;
    goto LABEL_6;
  }

LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D21DB79C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D21DB838(uint64_t a1)
{
  v2 = type metadata accessor for VUStreamingGallery.Label(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D21DB894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21DB8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id Data.multiArray(for:dataType:)(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x1E695FED0]);

  v4 = sub_1D21DBA80(v3, a2);
  MEMORY[0x1EEE9AC00](v4);
  sub_1D2250C9C();
  return v4;
}

id sub_1D21DBA80(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  sub_1D21DC344();
  v4 = sub_1D2250AEC();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_1D22502FC();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1D21DBB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v10 = v3[4];
  v9 = v3[5];

  return sub_1D21DBBEC(v7, v8, v10, v9, a1, a2, a3);
}

uint64_t sub_1D21DBBEC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v74[2] = *MEMORY[0x1E69E9840];
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v74[0] = a1;
      LOWORD(v74[1]) = a2;
      BYTE2(v74[1]) = BYTE2(a2);
      BYTE3(v74[1]) = BYTE3(a2);
      BYTE4(v74[1]) = BYTE4(a2);
      BYTE5(v74[1]) = BYTE5(a2);
      v7 = a3 & 0xC000000000000001;
      if ((a3 & 0xC000000000000001) != 0)
      {
        goto LABEL_120;
      }

      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      v13 = *(a3 + 32);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      for (i = v13; ; i = MEMORY[0x1D3898A80](0, a3))
      {
        v15 = i;
        v16 = [i integerValue];

        if ((v16 & 0x8000000000000000) != 0)
        {
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
          v59 = MEMORY[0x1D3898A80](0, a3);
LABEL_74:
          v60 = v59;
          v61 = [v59 integerValue];

          if ((v61 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_132;
          }

          if (!v61)
          {
            goto LABEL_90;
          }

          v62 = 0;
          v72 = a3 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v73)
            {
              v63 = MEMORY[0x1D3898A80](1, a3);
            }

            else
            {
              if (*(v72 + 16) < 2uLL)
              {
                goto LABEL_119;
              }

              v63 = *(a3 + 40);
            }

            v64 = v63;
            v65 = [v63 integerValue];

            v66 = v65 * a4;
            if ((v65 * a4) >> 64 != (v65 * a4) >> 63)
            {
              break;
            }

            if (!a5)
            {
              goto LABEL_138;
            }

            if (!*(a7 + 16))
            {
              goto LABEL_101;
            }

            v67 = *(a7 + 32);
            v68 = v62 * v67;
            if ((v62 * v67) >> 64 != (v62 * v67) >> 63)
            {
              goto LABEL_106;
            }

            v69 = v68 * a4;
            if ((v68 * a4) >> 64 != (v68 * a4) >> 63)
            {
              goto LABEL_109;
            }

            if (!v7)
            {
              goto LABEL_140;
            }

            v70 = v62 * v66;
            if ((v62 * v66) >> 64 != (v62 * v66) >> 63)
            {
              goto LABEL_114;
            }

            if (v66 < 0)
            {
              goto LABEL_115;
            }

            ++v62;
            memmove((a5 + v69), (v7 + v70), v66);
            if (v61 == v62)
            {
              goto LABEL_90;
            }
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_48;
          }

          v17 = 0;
          v73 = a3 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v7)
            {
              v18 = MEMORY[0x1D3898A80](1, a3);
            }

            else
            {
              if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
              {
                goto LABEL_116;
              }

              v18 = *(a3 + 40);
            }

            v19 = v18;
            v20 = [v18 integerValue];

            v21 = v20 * a4;
            if ((v20 * a4) >> 64 != (v20 * a4) >> 63)
            {
              break;
            }

            if (!a5)
            {
              goto LABEL_135;
            }

            if (!*(a7 + 16))
            {
              goto LABEL_95;
            }

            v22 = *(a7 + 32);
            v23 = v17 * v22;
            if ((v17 * v22) >> 64 != (v17 * v22) >> 63)
            {
              goto LABEL_99;
            }

            v24 = v23 * a4;
            if ((v23 * a4) >> 64 != (v23 * a4) >> 63)
            {
              goto LABEL_103;
            }

            v25 = v17 * v21;
            if ((v17 * v21) >> 64 != (v17 * v21) >> 63)
            {
              goto LABEL_107;
            }

            if (v21 < 0)
            {
              goto LABEL_111;
            }

            ++v17;
            memcpy((a5 + v24), v74 + v25, v21);
            if (v16 == v17)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
        }

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
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
      }
    }

    v30 = a1;
    if (a1 <= a1 >> 32)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = sub_1D225028C();
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D22502BC();
        if (__OFSUB__(v30, v33))
        {
          goto LABEL_134;
        }

        v7 = v30 - v33 + v32;
      }

      else
      {
        v7 = 0;
      }

      sub_1D22502AC();
      v73 = a3 & 0xC000000000000001;
      if ((a3 & 0xC000000000000001) != 0)
      {
        goto LABEL_130;
      }

      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v59 = *(a3 + 32);
        goto LABEL_74;
      }

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
      goto LABEL_137;
    }

    __break(1u);
    goto LABEL_122;
  }

  if (v12 != 2)
  {
    memset(v74, 0, 14);
    v7 = a3 & 0xC000000000000001;
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v34 = *(a3 + 32);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v35 = v34;
      goto LABEL_33;
    }

LABEL_122:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v35 = MEMORY[0x1D3898A80](0, a3);
LABEL_33:
    v36 = v35;
    v37 = [v35 integerValue];

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_125;
    }

    if (v37)
    {
      v38 = 0;
      v73 = a3 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v7)
        {
          v39 = MEMORY[0x1D3898A80](1, a3);
        }

        else
        {
          if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_117;
          }

          v39 = *(a3 + 40);
        }

        v40 = v39;
        v41 = [v39 integerValue];

        v42 = v41 * a4;
        if ((v41 * a4) >> 64 != (v41 * a4) >> 63)
        {
          goto LABEL_93;
        }

        if (!a5)
        {
          goto LABEL_136;
        }

        if (!*(a7 + 16))
        {
          goto LABEL_96;
        }

        v43 = *(a7 + 32);
        v44 = v38 * v43;
        if ((v38 * v43) >> 64 != (v38 * v43) >> 63)
        {
          goto LABEL_100;
        }

        v45 = v44 * a4;
        if ((v44 * a4) >> 64 != (v44 * a4) >> 63)
        {
          goto LABEL_104;
        }

        v46 = v38 * v42;
        if ((v38 * v42) >> 64 != (v38 * v42) >> 63)
        {
          goto LABEL_108;
        }

        if (v42 < 0)
        {
          goto LABEL_112;
        }

        ++v38;
        memcpy((a5 + v45), v74 + v46, v42);
      }

      while (v37 != v38);
    }

LABEL_48:

    goto LABEL_91;
  }

  v26 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v27 = sub_1D225028C();
  if (v27)
  {
    v28 = v27;
    v29 = sub_1D22502BC();
    if (__OFSUB__(v26, v29))
    {
      goto LABEL_133;
    }

    v7 = v26 - v29 + v28;
  }

  else
  {
    v7 = 0;
  }

  sub_1D22502AC();
  v73 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v47 = MEMORY[0x1D3898A80](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_129;
    }

    v47 = *(a3 + 32);
  }

  v48 = v47;
  v49 = [v47 integerValue];

  if ((v49 & 0x8000000000000000) != 0)
  {
    goto LABEL_128;
  }

  if (v49)
  {
    v50 = 0;
    v72 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v73)
      {
        v51 = MEMORY[0x1D3898A80](1, a3);
      }

      else
      {
        if (*(v72 + 16) < 2uLL)
        {
          goto LABEL_118;
        }

        v51 = *(a3 + 40);
      }

      v52 = v51;
      v53 = [v51 integerValue];

      v54 = v53 * a4;
      if ((v53 * a4) >> 64 != (v53 * a4) >> 63)
      {
        goto LABEL_94;
      }

      if (!a5)
      {
        break;
      }

      if (!*(a7 + 16))
      {
        goto LABEL_98;
      }

      v55 = *(a7 + 32);
      v56 = v50 * v55;
      if ((v50 * v55) >> 64 != (v50 * v55) >> 63)
      {
        goto LABEL_102;
      }

      v57 = v56 * a4;
      if ((v56 * a4) >> 64 != (v56 * a4) >> 63)
      {
        goto LABEL_105;
      }

      if (!v7)
      {
        goto LABEL_139;
      }

      v58 = v50 * v54;
      if ((v50 * v54) >> 64 != (v50 * v54) >> 63)
      {
        goto LABEL_110;
      }

      if (v54 < 0)
      {
        goto LABEL_113;
      }

      ++v50;
      memmove((a5 + v57), (v7 + v58), v54);
      if (v49 == v50)
      {
        goto LABEL_90;
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
  }

LABEL_90:
  swift_bridgeObjectRelease_n();
LABEL_91:
  swift_bridgeObjectRelease_n();

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1D21DC344()
{
  result = qword_1EDC876F8;
  if (!qword_1EDC876F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC876F8);
  }

  return result;
}

id sub_1D21DC3B4(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  sub_1D21DC4E4(a3, v7);

  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1D225052C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_1D21DC4E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  sub_1D2174DA8(v2 + v4, &v8, &unk_1EC6D2180);
  if (v9)
  {
    sub_1D21A6450(&v8, &v10);
    v5 = sub_1D225055C();
    swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {
    sub_1D2176170(&v8, &unk_1EC6D2180);
    v7 = sub_1D225055C();
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

void sub_1D21DC61C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_1D225054C();
    v10 = sub_1D225055C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D225055C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  sub_1D21DC738(v9, a4);
}

uint64_t sub_1D21DC738(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  sub_1D2174DA8(a1, &v13 - v6, &qword_1EC6D2110);
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D2176170(a1, &qword_1EC6D2110);
    sub_1D2176170(v7, &qword_1EC6D2110);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
    sub_1D2176170(a1, &qword_1EC6D2110);
  }

  v11 = *a2;
  swift_beginAccess();
  sub_1D21A6488(&v14, v2 + v11, &unk_1EC6D2180);
  return swift_endAccess();
}

id VUWGalleryContext.init(moment:asset:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = 0;
  if (v8(a1, 1, v6) != 1)
  {
    v9 = sub_1D225052C();
    (*(v7 + 8))(a1, v6);
  }

  if (v8(a2, 1, v6) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1D225052C();
    (*(v7 + 8))(a2, v6);
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMoment:v9 asset:v10 source:a3];

  return v11;
}

id VUWGalleryContext.init(moment:asset:source:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v12 = &v3[OBJC_IVAR___VUWGalleryContext__moment];
  *v12 = 0u;
  v12[1] = 0u;
  v13 = &v3[OBJC_IVAR___VUWGalleryContext__asset];
  *v13 = 0u;
  v13[1] = 0u;
  v23 = OBJC_IVAR___VUWGalleryContext__source;
  v3[OBJC_IVAR___VUWGalleryContext__source] = 3;
  v25 = a1;
  sub_1D2174DA8(a1, &v23 - v10, &qword_1EC6D2110);
  v14 = sub_1D225055C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v14) == 1)
  {
    sub_1D2176170(v11, &qword_1EC6D2110);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(v15 + 32))(boxed_opaque_existential_1, v11, v14);
  }

  swift_beginAccess();
  sub_1D21A6488(&v27, v12, &unk_1EC6D2180);
  swift_endAccess();
  v18 = v24;
  sub_1D2174DA8(v24, v9, &qword_1EC6D2110);
  if (v16(v9, 1, v14) == 1)
  {
    sub_1D2176170(v9, &qword_1EC6D2110);
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = v14;
    v19 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(v15 + 32))(v19, v9, v14);
  }

  swift_beginAccess();
  sub_1D21A6488(&v27, v13, &unk_1EC6D2180);
  swift_endAccess();
  v20 = 0x10003u >> (8 * a3);
  if (a3 >= 3)
  {
    LOBYTE(v20) = 2;
  }

  v3[v23] = v20;
  *&v3[OBJC_IVAR___VUWGalleryContext_source] = a3;
  v26.receiver = v3;
  v26.super_class = VUWGalleryContext;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  sub_1D2176170(v18, &qword_1EC6D2110);
  sub_1D2176170(v25, &qword_1EC6D2110);
  return v21;
}

uint64_t sub_1D21DCF54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = [v2 moment];
  if (v10)
  {
    v11 = v10;
    sub_1D225054C();

    v12 = sub_1D225055C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D225055C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = [v2 asset];
  if (v14)
  {
    v15 = v14;
    sub_1D225054C();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1D225055C();
  v18 = *(*(v17 - 8) + 56);
  v18(v7, v16, 1, v17);
  v19 = *(v2 + OBJC_IVAR___VUWGalleryContext__source);
  v18(a1, 1, 1, v17);
  v20 = type metadata accessor for VUGallery.Context(0);
  v21 = *(v20 + 20);
  v18((a1 + v21), 1, 1, v17);
  v22 = *(v20 + 24);
  *(a1 + v22) = 3;
  sub_1D21A6488(v9, a1, &qword_1EC6D2110);
  result = sub_1D21A6488(v7, a1 + v21, &qword_1EC6D2110);
  *(a1 + v22) = v19;
  return result;
}

void __swiftcall VUWGalleryContext.init()(VUWGalleryContext *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

char *static VUWGalleryTransaction.create(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(VUWGalleryTransaction) init];
  *&v2[OBJC_IVAR___VUWGalleryTransaction_transaction] = a1;
  v3 = v2;

  return v3;
}

id sub_1D21DD344(NSObject *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[0] = a1;
  v7 = type metadata accessor for VUGallery.Context(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v18 - v12);
  if (a2)
  {

    sub_1D21DCF54(v10);
    sub_1D21DDB1C(v10, v13);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  v19 = a3 != 0;
  if (a4)
  {
    v14 = [a4 value];
  }

  else
  {
    v14 = 0;
  }

  v15 = v18[1];
  v16 = sub_1D2247368(v18[0], v13, &v19, v14, a4 == 0);
  sub_1D2176170(v13, &qword_1EC6D30C0);

  if (!v15)
  {
    return [objc_allocWithZone(VUWGalleryObservationIdentifier) initWithValue_];
  }

  return result;
}

uint64_t sub_1D21DD7F4(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___VUWGalleryTransaction_transaction);

  v8 = [a1 value];
  if (a3 >= 3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v14 = v9;
  if (*(v7 + 16))
  {
    v10 = *(v7 + 16) == 5;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  v13 = v11;
  sub_1D224BA74(v8, a2, &v14, &v13);
}

uint64_t sub_1D21DDA24(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;

  a5([v7 value]);

  return 1;
}

uint64_t sub_1D21DDB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUGallery.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21DDB80(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D2176758(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D21DDBD8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D2196D38(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D21DDC30(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D2176758(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D21DDC80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1D2176758(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

uint64_t sub_1D21DDCDC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D2176758(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D21DDD2C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D2196E40(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D21DDD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1D2176758(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for VUStreamingGallery.Label(0);
    v16 = *(v9 - 8);
    sub_1D220C5D4(v8 + *(v16 + 72) * v7, a3, type metadata accessor for VUStreamingGallery.Label);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for VUStreamingGallery.Label(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

unint64_t sub_1D21DDEA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D21AF7AC(0, v2, 0);
  v3 = v13;
  for (i = (a1 + 32); ; ++i)
  {
    v8 = *a2;
    if (!*(*a2 + 16))
    {
      break;
    }

    result = sub_1D2176758(*i);
    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = *(*(*(v8 + 56) + 8 * result) + 16);
    v12 = *(v13 + 16);
    v11 = *(v13 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_1D21AF7AC((v11 > 1), v12 + 1, 1);
    }

    *(v13 + 16) = v12 + 1;
    *(v13 + 8 * v12 + 32) = v10;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D21DDFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v27 = *(a1 + 16);
    sub_1D21AFB90(0, v1, 0);
    v3 = v29;
    v4 = a1 + 64;
    result = sub_1D2250EBC();
    v6 = v27;
    v7 = a1;
    v8 = 0;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v7 + 32))
    {
      v10 = result >> 6;
      v11 = 1 << result;
      if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      v12 = v2;
      v13 = *(*(v7 + 48) + 8 * result);
      v14 = *(v7 + 36);
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = *(v7 + 36);
        v26 = result;
        sub_1D21AFB90((v15 > 1), v16 + 1, 1);
        v6 = v27;
        v7 = a1;
        v14 = v25;
        result = v26;
      }

      *(v29 + 16) = v16 + 1;
      v17 = v29 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      v9 = 1 << *(v7 + 32);
      if (result >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v4 + 8 * v10);
      if ((v18 & v11) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(v7 + 36))
      {
        goto LABEL_26;
      }

      v2 = v12;
      v19 = v18 & (-2 << (result & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1D217B36C(result, v14, 0);
            v6 = v27;
            v7 = a1;
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        sub_1D217B36C(result, v14, 0);
        v6 = v27;
        v7 = a1;
      }

LABEL_4:
      ++v8;
      result = v9;
      if (v8 == v6)
      {
        return v3;
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

void sub_1D21DE1D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2418);
    v2 = sub_1D225114C();
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

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1D2196C7C(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_1D21DE3B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2588);
    v2 = sub_1D225114C();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1D2174E10(0, &qword_1EC6D2CF0);

        v19 = v18;
        swift_dynamicCast();
        sub_1D21A6450(&v25, v27);
        sub_1D21A6450(v27, v28);
        sub_1D21A6450(v28, &v26);
        result = sub_1D2196C7C(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_1D21A6450(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1D21A6450(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D21DE620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    result = sub_1D2176758(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B6D70();
        v11 = v13;
      }

      result = sub_1D22011F0(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v5 = *&a1;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D21B9EA4(a2, v6, v5);
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1D21DE6DC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D2196D38(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B716C();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1D225055C();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1D2201680(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1D225055C();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1D21BA320(a1, a3, v17);
    v18 = sub_1D225055C();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1D21DE890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D2176170(a1, &qword_1EC6D2110);
    v13 = sub_1D2176758(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B7144();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1D2201D14(v15, v17, MEMORY[0x1E69695A8]);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D2176170(v8, &qword_1EC6D2110);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D21BA170(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D21DEAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D21BA640(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1D2196C7C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1D21B7560();
        v14 = v16;
      }

      result = sub_1D22019A0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1D21DEBEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1D21BA7F0(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1D220C574(a2, type metadata accessor for VUStreamingGallery.Label);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1D2196E40(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_1D21B7988();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for VUStreamingGallery.Label(0);
      sub_1D220C574(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for VUStreamingGallery.Label);

      sub_1D2201EC8(v10, v12);
      result = sub_1D220C574(a2, type metadata accessor for VUStreamingGallery.Label);
      *v3 = v12;
    }

    else
    {
      return sub_1D220C574(a2, type metadata accessor for VUStreamingGallery.Label);
    }
  }

  return result;
}

uint64_t sub_1D21DED3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D2176170(a1, &qword_1EC6D2B88);
    v13 = sub_1D2176758(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B7B34();
        v17 = v21;
      }

      sub_1D21A6938(*(v17 + 56) + *(v10 + 72) * v15, v8, &qword_1EC6D2968);
      sub_1D2201B50(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D2176170(v8, &qword_1EC6D2B88);
  }

  else
  {
    sub_1D21A6938(a1, v12, &qword_1EC6D2968);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D21BAAC4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D21DEF90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for VUStreamingGallery.Label(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1D2176170(a1, &qword_1EC6D2C08);
    v13 = sub_1D2176758(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D21B7ED4();
        v17 = v21;
      }

      sub_1D220C50C(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for VUStreamingGallery.Label);
      sub_1D2201D14(v15, v17, type metadata accessor for VUStreamingGallery.Label);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1D2176170(v8, &qword_1EC6D2C08);
  }

  else
  {
    sub_1D220C50C(a1, v12, type metadata accessor for VUStreamingGallery.Label);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1D21BAC5C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t (*sub_1D21DF1F8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D21FA528(v4, a2);
  return sub_1D21DF270;
}

void (*sub_1D21DF274(uint64_t *a1, uint64_t a2))(void *)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for VUStreamingGallery.Label(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1D220C5D4(a2, v8, type metadata accessor for VUStreamingGallery.Label);
  v6[5] = sub_1D21FA5D0(v6, v9);
  return sub_1D21DF350;
}

uint64_t (*sub_1D21DF354(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D21FA6D0(v4, a2);
  return sub_1D220F1F0;
}

void sub_1D21DF3CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1D21DF418(uint64_t *a1, uint64_t a2))(void *)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for VUStreamingGallery.Label(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1D220C5D4(a2, v8, type metadata accessor for VUStreamingGallery.Label);
  v6[5] = sub_1D21FA7D4(v6, v9);
  return sub_1D220F1F4;
}

void sub_1D21DF4F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1D220C574(v2, type metadata accessor for VUStreamingGallery.Label);
  free(v2);

  free(v1);
}

uint64_t sub_1D21DF564(uint64_t a1)
{
  result = MEMORY[0x1D3898620](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1D2198024(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21DF65C(uint64_t a1)
{
  result = MEMORY[0x1D3898620](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1D2198024(&v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21DF754(uint64_t a1)
{
  result = MEMORY[0x1D3898620](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D21983EC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21DF870(uint64_t a1)
{
  v2 = type metadata accessor for VUStreamingGallery.Label(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D220E134(&qword_1EC6D2CD0, type metadata accessor for VUStreamingGallery.Label);
  result = MEMORY[0x1D3898620](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D220C574(v8, type metadata accessor for VUStreamingGallery.Label))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D220C5D4(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C50C(v10, v5, type metadata accessor for VUStreamingGallery.Label);
    sub_1D219853C(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t VUStreamingGallery.init()()
{
  *(v0 + 48) = vdupq_n_s64(0x64uLL);
  *(v0 + 64) = xmmword_1D2254B30;
  *(v0 + 80) = 0;
  *(v0 + 84) = xmmword_1D2254B40;
  *(v0 + 104) = 100;
  *(v0 + 112) = 0;
  *(v0 + 116) = 1;
  v2 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  sub_1D225081C();
  v3 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  sub_1D225079C();
  type metadata accessor for VUStreamingIndex();
  swift_allocObject();
  v4 = sub_1D21D3078(0);
  if (v1)
  {
    v6 = sub_1D225082C();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
    v7 = sub_1D22507AC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    type metadata accessor for VUStreamingGallery(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v4;
    swift_allocObject();
    v5 = sub_1D21D3078(0);
    v9 = MEMORY[0x1E69E7CC8];
    *(v0 + 24) = v5;
    *(v0 + 32) = v9;
    *(v0 + 40) = v9;
  }

  return v0;
}

uint64_t VUStreamingGallery.init(with:)(uint64_t *a1)
{
  v18 = *a1;
  v16 = a1[2];
  v17 = a1[1];
  v14 = a1[4];
  v15 = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = *(a1 + 11);
  v5 = *(a1 + 48);
  *(v1 + 48) = vdupq_n_s64(0x64uLL);
  *(v1 + 64) = xmmword_1D2254B30;
  *(v1 + 80) = 0;
  *(v1 + 84) = xmmword_1D2254B40;
  *(v1 + 104) = 100;
  *(v1 + 112) = 0;
  *(v1 + 116) = 1;
  v6 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  sub_1D225081C();
  v7 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  sub_1D225079C();
  type metadata accessor for VUStreamingIndex();
  swift_allocObject();
  v8 = sub_1D21D3078(0);
  if (v2)
  {
    v10 = sub_1D225082C();
    (*(*(v10 - 8) + 8))(v1 + v6, v10);
    v11 = sub_1D22507AC();
    (*(*(v11 - 8) + 8))(v1 + v7, v11);
    type metadata accessor for VUStreamingGallery(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 16) = v8;
    swift_allocObject();
    v9 = sub_1D21D3078(0);
    v13 = MEMORY[0x1E69E7CC8];
    *(v1 + 24) = v9;
    *(v1 + 32) = v13;
    *(v1 + 40) = v13;
    *(v1 + 48) = v18;
    *(v1 + 56) = v17;
    *(v1 + 64) = v16;
    *(v1 + 81) = v15;
    *(v1 + 80) = v3;
    *(v1 + 112) = v4;
    *(v1 + 116) = v5;
    *(v1 + 72) = v14;
    *(v1 + 117) = 1;
  }

  return v1;
}

uint64_t VUStreamingGallery.init(with:dimensions:dataType:)(uint64_t *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v22 = a1[1];
  v23 = *a1;
  v21 = a1[2];
  v19 = a1[4];
  v20 = *(a1 + 40);
  v18 = *(a1 + 41);
  v5 = *(a1 + 11);
  v6 = *(a1 + 48);
  v26 = *a3;
  *(v4 + 48) = vdupq_n_s64(0x64uLL);
  *(v4 + 64) = xmmword_1D2254B30;
  *(v4 + 80) = 0;
  *(v4 + 84) = xmmword_1D2254B40;
  *(v4 + 104) = 100;
  *(v4 + 112) = 0;
  *(v4 + 116) = 1;
  v24 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  sub_1D225081C();
  v25 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  sub_1D225079C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526E0;
  *(inited + 32) = 42;
  type metadata accessor for VUIndexParameters();
  v8 = swift_allocObject();
  *(v8 + 48) = 128;
  *(v8 + 56) = 1;
  sub_1D225081C();
  *(v8 + 16) = 42;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *(v8 + 64) = xmmword_1D2254B50;
  v9 = v5;
  if (v6)
  {
    v9 = 0.73;
  }

  *(v8 + 80) = v9;
  *(v8 + 84) = 0;
  *(v8 + 92) = 0;
  *(v8 + 48) = a2;
  *(v8 + 56) = v26;
  *(inited + 40) = v8;
  v10 = sub_1D21A27F4(inited);
  swift_setDeallocating();
  sub_1D2176170(inited + 32, &qword_1EC6D2C00);
  type metadata accessor for VUStreamingIndex();
  swift_allocObject();

  v12 = sub_1D21D3078(v11);
  if (v28)
  {

    v14 = sub_1D225082C();
    (*(*(v14 - 8) + 8))(v4 + v24, v14);
    v15 = sub_1D22507AC();
    (*(*(v15 - 8) + 8))(v4 + v25, v15);
    type metadata accessor for VUStreamingGallery(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v12;
    swift_allocObject();
    v13 = sub_1D21D3078(v10);
    v17 = MEMORY[0x1E69E7CC8];
    *(v4 + 24) = v13;
    *(v4 + 32) = v17;
    *(v4 + 40) = v17;
    *(v4 + 48) = v23;
    *(v4 + 56) = v22;
    *(v4 + 64) = v21;
    *(v4 + 81) = v20;
    *(v4 + 80) = v18;
    *(v4 + 112) = v5;
    *(v4 + 116) = v6;
    *(v4 + 72) = v19;
    *(v4 + 117) = 1;
  }

  return v4;
}

uint64_t VUStreamingGallery.init(maximumIdentities:maximumObservationsPerIdentity:autoUpdate:isStreamingEnabled:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 48) = vdupq_n_s64(0x64uLL);
  *(v4 + 64) = xmmword_1D2254B30;
  *(v4 + 80) = 0;
  *(v4 + 84) = xmmword_1D2254B40;
  *(v4 + 104) = 100;
  *(v4 + 112) = 0;
  *(v4 + 116) = 1;
  v9 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  sub_1D225081C();
  v10 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  sub_1D225079C();
  type metadata accessor for VUStreamingIndex();
  swift_allocObject();
  v11 = sub_1D21D3078(0);
  if (v5)
  {
    v13 = sub_1D225082C();
    (*(*(v13 - 8) + 8))(v4 + v9, v13);
    v14 = sub_1D22507AC();
    (*(*(v14 - 8) + 8))(v4 + v10, v14);
    type metadata accessor for VUStreamingGallery(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v11;
    swift_allocObject();
    v12 = sub_1D21D3078(0);
    v16 = MEMORY[0x1E69E7CC8];
    *(v4 + 24) = v12;
    *(v4 + 32) = v16;
    *(v4 + 40) = v16;
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
    *(v4 + 81) = a3 & 1;
    *(v4 + 80) = a4 & 1;
  }

  return v4;
}

uint64_t VUStreamingGallery.deinit()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_1D21E0634()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v71 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v70 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v69 = &v67 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v67 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v67 - v8;
  v78 = type metadata accessor for VUStreamingGallery.Label(0);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v67 - v12);
  v82 = MEMORY[0x1E69E7CC8];
  v76 = v0;

  v14 = sub_1D21CBA6C();

  v16 = 0;
  v18 = v14 + 64;
  v17 = *(v14 + 64);
  v79 = v14;
  v19 = 1 << *(v14 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v73 = xmmword_1D22526E0;
  v74 = v22;
  v75 = v14 + 64;
  v72 = v11;
  v77 = v13;
LABEL_7:
  if (v21)
  {
LABEL_12:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = (v16 << 9) | (8 * v26);
    v28 = *(v79 + 56);
    v80 = *(*(v79 + 48) + v27);
    v29 = *(v28 + v27);
    *v13 = v29;
    swift_storeEnumTagMultiPayload();
    v30 = *(*(v76 + 16) + 16);
    result = swift_beginAccess();
    v31 = 0;
    v32 = *(v30 + 24);
    v33 = 1 << *(v32 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v32 + 64);
    v36 = (v33 + 63) >> 6;
LABEL_16:
    while (v35)
    {
LABEL_21:
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v39 = *(*(v32 + 56) + ((v31 << 9) | (8 * v38)));
      result = swift_beginAccess();
      v40 = v39[7];
      v41 = *(v40 + 16);
      if (v41)
      {
        v42 = 0;
        v43 = (v40 + 40);
        while ((*v43 & 1) != 0 || *(v43 - 1) != v29)
        {
          ++v42;
          v43 += 16;
          if (v41 == v42)
          {
            goto LABEL_16;
          }
        }

        v44 = v39[2];
        if (v42 >= *(v44 + 16))
        {
          goto LABEL_42;
        }

        v45 = *(v44 + 8 * v42 + 32);
        result = swift_beginAccess();
        v46 = v39[9];
        if (*(v46 + 16))
        {
          result = sub_1D2176758(v45);
          if (v47)
          {
            v48 = v69;
            sub_1D2174DA8(*(v46 + 56) + *(v71 + 72) * result, v69, &qword_1EC6D2968);
            v49 = v48;
            v50 = v68;
            sub_1D21A6938(v49, v68, &qword_1EC6D2968);
            v51 = v77;
            sub_1D220C574(v77, type metadata accessor for VUStreamingGallery.Label);
            v52 = v50;
            v53 = v67;
            sub_1D21A6938(v52, v67, &qword_1EC6D2968);
            v54 = v53;
            v55 = v70;
            sub_1D21A6938(v54, v70, &qword_1EC6D2968);
            v56 = sub_1D225055C();
            (*(*(v56 - 8) + 32))(v51, v55, v56);
            swift_storeEnumTagMultiPayload();
LABEL_30:
            v57 = v82;
            v13 = v77;
            if (*(v82 + 16) && (sub_1D2196E40(v77), (v58 & 1) != 0))
            {
              v59 = v72;
              sub_1D220C5D4(v13, v72, type metadata accessor for VUStreamingGallery.Label);
              v61 = sub_1D21DF274(v81, v59);
              v62 = *v60;
              v22 = v74;
              if (*v60)
              {
                v63 = v60;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v63 = v62;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v62 = sub_1D2195F78(0, *(v62 + 2) + 1, 1, v62);
                  *v63 = v62;
                }

                v66 = *(v62 + 2);
                v65 = *(v62 + 3);
                if (v66 >= v65 >> 1)
                {
                  v62 = sub_1D2195F78((v65 > 1), v66 + 1, 1, v62);
                  *v63 = v62;
                }

                v18 = v75;
                *(v62 + 2) = v66 + 1;
                *&v62[8 * v66 + 32] = v80;
                (v61)(v81, 0);
                sub_1D220C574(v59, type metadata accessor for VUStreamingGallery.Label);
              }

              else
              {
                (v61)(v81, 0);
                sub_1D220C574(v59, type metadata accessor for VUStreamingGallery.Label);
                v18 = v75;
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
              v23 = swift_allocObject();
              *(v23 + 16) = v73;
              *(v23 + 32) = v80;
              v24 = swift_isUniquelyReferenced_nonNull_native();
              v81[0] = v57;
              sub_1D21BA7F0(v23, v13, v24);
              v82 = v81[0];
              v22 = v74;
              v18 = v75;
            }

            result = sub_1D220C574(v13, type metadata accessor for VUStreamingGallery.Label);
            goto LABEL_7;
          }
        }
      }
    }

    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= v36)
      {
        goto LABEL_30;
      }

      v35 = *(v32 + 64 + 8 * v37);
      ++v31;
      if (v35)
      {
        v31 = v37;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v25 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return v82;
      }

      v21 = *(v18 + 8 * v25);
      ++v16;
      if (v21)
      {
        v16 = v25;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_1D21E0CEC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  sub_1D2174DA8(a1, &v39 - v11, &qword_1EC6D2100);
  LOBYTE(v48) = 5;
  type metadata accessor for VUGallery(0);
  swift_allocObject();
  v13 = VUGallery.init(for:at:)(&v48, v12);
  v14 = v3;
  if (!v3)
  {
    v15 = v13;
    v41 = a2;
    v16 = sub_1D22503FC();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    LOBYTE(v48) = 0;
    v49 = 1;
    sub_1D2184650(&unk_1F4DADAE8, v10, &v48, 0, 0x100000000, 0, 0);
    sub_1D2176170(v10, &qword_1EC6D2100);
    v17 = sub_1D2183614(0);
    v18 = v17;
    v44 = *(v17 + 16);
    if (v44)
    {
      v46 = v15;
      v19 = 0;
      v42 = v17 + 32;
      v43 = v17;
      v20 = v41;
      v40 = v4;
      while (v19 < *(v18 + 16))
      {
        v21 = v46;
        MEMORY[0x1EEE9AC00](v17);
        *(&v39 - 4) = v21;
        *(&v39 - 3) = v22;
        *(&v39 - 2) = v20;
        *(&v39 - 1) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
        sub_1D2250D5C();
        v23 = v48;
        v24 = *(*(v21 + 16) + 16);
        v25 = *(v48 + 16);
        v47 = v24;
        if (v25)
        {
          v45 = v14;
          v48 = MEMORY[0x1E69E7CC0];

          sub_1D21AF7AC(0, v25, 0);
          v26 = v48;
          v27 = *(v48 + 16);
          v28 = 32;
          do
          {
            v29 = *(v23 + v28);
            v48 = v26;
            v30 = *(v26 + 24);
            if (v27 >= v30 >> 1)
            {
              sub_1D21AF7AC((v30 > 1), v27 + 1, 1);
              v26 = v48;
            }

            *(v26 + 16) = v27 + 1;
            *(v26 + 8 * v27 + 32) = v29;
            v28 += 16;
            ++v27;
            --v25;
          }

          while (v25);

          v4 = v40;
          v20 = v41;
          v24 = v47;
          v14 = v45;
        }

        else
        {

          v26 = MEMORY[0x1E69E7CC0];
        }

        v32 = MEMORY[0x1EEE9AC00](v31);
        v33 = v46;
        *(&v39 - 2) = v4;
        *(&v39 - 1) = v33;
        v34 = MEMORY[0x1EEE9AC00](v32);
        *(&v39 - 4) = v26;
        *(&v39 - 3) = v24;
        *(&v39 - 2) = sub_1D220F168;
        *(&v39 - 1) = v35;
        MEMORY[0x1EEE9AC00](v34);
        *(&v39 - 2) = sub_1D220F184;
        *(&v39 - 1) = v36;
        v38 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CC8);
        sub_1D2250DBC();
        if (v14)
        {

          v14 = 0;
        }

        v18 = v43;
        ++v19;

        if (v19 == v44)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }
}

uint64_t sub_1D21E1194()
{
  v1 = *(v0[2] + 16);
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = MEMORY[0x1E69E7CC8];

  v3 = *(v0[3] + 16);
  swift_beginAccess();
  *(v3 + 24) = v2;

  swift_beginAccess();
  v0[4] = v2;

  swift_beginAccess();
  v0[5] = v2;

  v0[13] = 100;
  return result;
}

uint64_t sub_1D21E1268(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v100 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v93 = &v81 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - v17;
  v99 = type metadata accessor for VUStreamingGallery.Label(0);
  v101 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v21 = (a1 >> 62);
  if (a3)
  {
    v22 = *(a3 + 16);
    if (v21)
    {
      goto LABEL_67;
    }

    if (v22 != *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_68:
      v75 = sub_1D225080C();
      v76 = sub_1D2250CDC();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        v78 = "Unable to add observations: track identifiers count must equal observation count";
        goto LABEL_73;
      }

LABEL_74:

      sub_1D217EE2C();
      v79 = swift_allocError();
      *v80 = 1;
      v103 = v79;
      swift_willThrow();
      return v21;
    }
  }

LABEL_4:
  if (v100)
  {
    v23 = *(v100 + 16);
    if (v21)
    {
      if (v23 != sub_1D2250F4C())
      {
LABEL_71:
        v75 = sub_1D225080C();
        v76 = sub_1D2250CDC();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          v78 = "Unable to add observations: observation identifiers count must equal number of observations";
LABEL_73:
          _os_log_impl(&dword_1D2171000, v75, v76, v78, v77, 2u);
          MEMORY[0x1D3899640](v77, -1, -1);
        }

        goto LABEL_74;
      }
    }

    else if (v23 != *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_71;
    }
  }

  v91 = v18;
  v98 = v16;
  if (!a3)
  {
    v25 = 0;
    v22 = v99;
    if (!v21)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

  v24 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    v22 = v99;
    if (!v21)
    {
      goto LABEL_14;
    }

LABEL_49:
    v16 = sub_1D2250F4C();
    if (!v16)
    {
LABEL_50:
      v21 = MEMORY[0x1E69E7CC0];
LABEL_51:

      return v21;
    }

    goto LABEL_15;
  }

  v102[0] = MEMORY[0x1E69E7CC0];
  sub_1D21AFB4C(0, v24, 0);
  v25 = v102[0];
  v26 = (a3 + 32);
  v22 = v99;
  do
  {
    v27 = *v26++;
    *v20 = v27;
    swift_storeEnumTagMultiPayload();
    v102[0] = v25;
    v29 = *(v25 + 16);
    v28 = *(v25 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1D21AFB4C(v28 > 1, v29 + 1, 1);
      v22 = v99;
      v25 = v102[0];
    }

    *(v25 + 16) = v29 + 1;
    sub_1D220C50C(v20, v25 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v29, type metadata accessor for VUStreamingGallery.Label);
    --v24;
  }

  while (v24);
  v18 = v91;
  if (v21)
  {
    goto LABEL_49;
  }

LABEL_14:
  v16 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_50;
  }

LABEL_15:
  v87 = v100 == 0;
  v89 = v97 & 0xFFFFFFFFFFFFFF8;
  v90 = v97 & 0xC000000000000001;
  v88 = (v101 + 56);
  v85 = (v101 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v20 = 4;
  v86 = v16;
  v81 = v25;
  while (1)
  {
    a3 = v20 - 4;
    if (v90)
    {
      v30 = MEMORY[0x1D3898A80](v20 - 4, v97);
    }

    else
    {
      if (a3 >= *(v89 + 16))
      {
        goto LABEL_64;
      }

      v30 = *(v97 + 8 * v20);
    }

    v31 = v30;
    if (__OFADD__(a3, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      if (v22 != sub_1D2250F4C())
      {
        goto LABEL_68;
      }

      goto LABEL_4;
    }

    if (v100)
    {
      if (a3 >= *(v100 + 16))
      {
        goto LABEL_65;
      }

      v32 = *(v100 + 8 * v20);
    }

    else
    {
      v32 = 0;
    }

    v94 = v20 - 3;
    v95 = v20;
    v96 = v32;
    if (v25)
    {
      if (a3 >= *(v25 + 16))
      {
        goto LABEL_66;
      }

      sub_1D220C5D4(v25 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * a3, v18, type metadata accessor for VUStreamingGallery.Label);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    (*v88)(v18, v33, 1, v22);
    sub_1D2174DA8(v18, v98, &qword_1EC6D2C08);
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (v34)
    {
      v35 = v34;
      v36 = a3;
      v37 = v31;
      v92 = v21;
      v38 = sub_1D22504FC();
      v39 = *(*(v38 - 8) + 56);
      v40 = v83;
      v39(v83, 1, 1, v38);
      v41 = v84;
      v39(v84, 1, 1, v38);
      v42 = v37;
      v43 = v103;
      v44 = sub_1D224639C(v35, v40, v41);
      v103 = v43;
      if (v43)
      {

        v21 = &unk_1D2254B88;
        sub_1D2176170(v98, &qword_1EC6D2C08);
        sub_1D2176170(v91, &qword_1EC6D2C08);

        return v21;
      }

      v45 = v44;

      v21 = v92;
      v31 = v37;
      a3 = v36;
      v25 = v81;
    }

    else
    {
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        v47 = v46;
        v48 = v31;
        v49 = _s19VisualUnderstanding13VUObservationC17animalObservationACSo08VNAnimalE0C_tcfC_0(v47);
      }

      else
      {
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        v51 = v31;
        if (!v50)
        {
          v72 = v51;

          sub_1D217EE2C();
          v73 = swift_allocError();
          *v74 = 1;
          v103 = v73;
          swift_willThrow();

          v21 = &unk_1D2254B88;
          sub_1D2176170(v98, &qword_1EC6D2C08);
          v64 = v18;
          goto LABEL_55;
        }

        _s19VisualUnderstanding13VUObservationC16sceneObservationACSo07VNSceneE0C_tcfC_0(v50);
      }

      v45 = v49;
    }

    v52 = v103;
    v53 = sub_1D21E3AE0(v45, v96, v87, 0);
    v103 = v52;
    if (v52)
    {

      v21 = &unk_1D2254B88;
      sub_1D2176170(v98, &qword_1EC6D2C08);
      v64 = v91;
LABEL_55:
      sub_1D2176170(v64, &qword_1EC6D2C08);

      return v21;
    }

    if (v54)
    {
      break;
    }

    v55 = v53;
    v56 = v98;
    v57 = v93;
    sub_1D2174DA8(v98, v93, &qword_1EC6D2C08);
    if ((*v85)(v57, 1, v99) == 1)
    {

      sub_1D2176170(v56, &qword_1EC6D2C08);
      v18 = v91;
      v58 = v91;
    }

    else
    {
      sub_1D2176170(v57, &qword_1EC6D2C08);
      v59 = v21;
      v60 = v82;
      sub_1D2174DA8(v56, v82, &qword_1EC6D2C08);
      swift_beginAccess();
      v61 = v60;
      v21 = v59;
      sub_1D21DEF90(v61, v55);
      swift_endAccess();

      v58 = v56;
      v18 = v91;
      v57 = v91;
    }

    sub_1D2176170(v58, &qword_1EC6D2C08);
    sub_1D2176170(v57, &qword_1EC6D2C08);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D2195F78(0, *(v21 + 2) + 1, 1, v21);
    }

    v63 = *(v21 + 2);
    v62 = *(v21 + 3);
    if (v63 >= v62 >> 1)
    {
      v21 = sub_1D2195F78((v62 > 1), v63 + 1, 1, v21);
    }

    *(v21 + 2) = v63 + 1;
    *&v21[8 * v63 + 32] = v55;
    v20 = v95 + 1;
    v16 = v86;
    v22 = v99;
    if (v94 == v86)
    {
      goto LABEL_51;
    }
  }

  v65 = a3;

  sub_1D2176170(v98, &qword_1EC6D2C08);
  sub_1D2176170(v91, &qword_1EC6D2C08);

  v66 = sub_1D225080C();
  v67 = sub_1D2250CDC();

  if (!os_log_type_enabled(v66, v67))
  {
    goto LABEL_60;
  }

  v68 = swift_slowAlloc();
  result = swift_slowAlloc();
  v21 = result;
  v102[0] = result;
  *v68 = 136315138;
  if (v100 && v65 >= *(v100 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v68 + 4) = sub_1D21761D0(0xD000000000000020, 0x80000001D22586A0, v102);
    _os_log_impl(&dword_1D2171000, v66, v67, "Unable to add observation with observation identifier: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x1D3899640](v21, -1, -1);
    MEMORY[0x1D3899640](v68, -1, -1);
LABEL_60:

    sub_1D217EE2C();
    v70 = swift_allocError();
    *v71 = 1;
    v103 = v70;
    swift_willThrow();

    return v21;
  }

  return result;
}

uint64_t *sub_1D21E1E50(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = a3;
  v25 = a6;
  v23 = a2;
  v9 = &qword_1EC6D2C08;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_1D2174DA8(a4, &v23 - v17, &qword_1EC6D2C08);
  sub_1D2246CB4(a1);
  if (!v6)
  {
    v9 = sub_1D21E3AE0(v19, v23, v24 & 1, v25 & 1);
    if ((v21 & 1) == 0)
    {
      sub_1D2174DA8(v18, v16, &qword_1EC6D2C08);
      v22 = type metadata accessor for VUStreamingGallery.Label(0);
      if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
      {

        sub_1D2176170(v18, &qword_1EC6D2C08);
        v18 = v16;
        goto LABEL_2;
      }

      sub_1D2176170(v16, &qword_1EC6D2C08);
      sub_1D2174DA8(v18, v13, &qword_1EC6D2C08);
      swift_beginAccess();
      sub_1D21DEF90(v13, v9);
      swift_endAccess();
    }
  }

LABEL_2:
  sub_1D2176170(v18, &qword_1EC6D2C08);
  return v9;
}

void *sub_1D21E20D8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  v25 = a6;
  v24 = a2;
  v10 = type metadata accessor for VUStreamingGallery.Label(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1D220C5D4(a4, &v24 - v18, type metadata accessor for VUStreamingGallery.Label);
  (*(v11 + 56))(v19, 0, 1, v10);
  sub_1D2246CB4(a1);
  if (v6)
  {
    sub_1D2176170(v19, &qword_1EC6D2C08);
  }

  else
  {
    a1 = sub_1D21E2684(v20, v24, a3 & 1, v19, v25 & 1, 1);
    LODWORD(v26) = v22;

    sub_1D21A6938(v19, v17, &qword_1EC6D2C08);
    v23 = *(v11 + 48);
    if (v23(v17, 1, v10) == 1)
    {
      sub_1D220C50C(a4, v13, type metadata accessor for VUStreamingGallery.Label);
      if (v23(v17, 1, v10) != 1)
      {
        sub_1D2176170(v17, &qword_1EC6D2C08);
      }
    }

    else
    {
      sub_1D220C574(a4, type metadata accessor for VUStreamingGallery.Label);
      sub_1D220C50C(v17, v13, type metadata accessor for VUStreamingGallery.Label);
    }

    sub_1D220C50C(v13, a4, type metadata accessor for VUStreamingGallery.Label);
  }

  return a1;
}

uint64_t sub_1D21E2400(uint64_t *a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for VUStreamingGallery.Tag(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D21E3AE0(a1, 0, 1, 0);
  if (!v3)
  {
    v4 = v14;
    v17 = v15;
    sub_1D2174DA8(a2, v9, &qword_1EC6D2888);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D2176170(v9, &qword_1EC6D2888);
    }

    else
    {
      sub_1D220C50C(v9, v13, type metadata accessor for VUStreamingGallery.Tag);
      if ((v17 & 1) == 0)
      {
        sub_1D21E4888(v4, v13);
      }

      sub_1D220C574(v13, type metadata accessor for VUStreamingGallery.Tag);
    }

    if (*(v2 + 81) == 1 && (sub_1D21F216C() & 1) != 0)
    {
      sub_1D21EB4B0();
    }
  }

  return v4;
}

uint64_t sub_1D21E2684(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, int a5, int a6)
{
  LODWORD(v184) = a6;
  v190 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v178 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v179 = &v166 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v182 = &v166 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v183 = &v166 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v176 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v177 = &v166 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v180 = &v166 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v181 = &v166 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C18);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v187 = (&v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v186 = (&v166 - v30);
  v188 = type metadata accessor for VUStreamingGallery.Label(0);
  v192 = *(v188 - 8);
  v31 = MEMORY[0x1EEE9AC00](v188);
  v191 = &v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v189 = &v166 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v185 = &v166 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v166 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v166 - v43;
  v45 = v193;
  result = sub_1D21E3AE0(a1, a2, a3 & 1, a5);
  if (v45)
  {
    return result;
  }

  v173 = v42;
  v175 = v39;
  LODWORD(v172) = a5;
  v171 = a3 & 1;
  v193 = v6;
  if (v47)
  {
    return result;
  }

  v169 = a1;
  v167 = a2;
  v170 = result;
  v174 = 0;
  v48 = v190;
  sub_1D2174DA8(v190, v44, &qword_1EC6D2C08);
  v49 = v192[6];
  v50 = v188;
  v51 = v49(v44, 1, v188);
  sub_1D2176170(v44, &qword_1EC6D2C08);
  if (v51 == 1)
  {
    return v170;
  }

  v52 = v185;
  if ((v184 & 1) == 0)
  {
    v58 = v175;
    sub_1D2174DA8(v48, v175, &qword_1EC6D2C08);
    swift_beginAccess();
    v59 = v170;
    sub_1D21DEF90(v58, v170);
    swift_endAccess();
    return v59;
  }

  v53 = v173;
  sub_1D2174DA8(v48, v173, &qword_1EC6D2C08);
  v54 = v49(v53, 1, v50);
  v55 = v175;
  if (v54 != 1)
  {
    v56 = v193;
    v57 = v174;
    sub_1D21EA69C(v169, v53, 0x1E, v172 & 1, v52);
    v174 = v57;
    if (v57)
    {
      return sub_1D220C574(v53, type metadata accessor for VUStreamingGallery.Label);
    }

    sub_1D2176170(v48, &qword_1EC6D2C08);
    sub_1D220C574(v53, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C5D4(v52, v48, type metadata accessor for VUStreamingGallery.Label);
    v60 = v192[7];
    v60(v48, 0, 1, v50);
    if (_s19VisualUnderstanding18VUStreamingGalleryC5LabelO09isUnknownE05labelSbAE_tFZ_0(v52))
    {

      v61 = v174;
      sub_1D21CC850(v170);
      sub_1D220C574(v52, type metadata accessor for VUStreamingGallery.Label);

      if (!v61)
      {
        return 0;
      }

      return result;
    }

    sub_1D220C5D4(v52, v55, type metadata accessor for VUStreamingGallery.Label);
    v60(v55, 0, 1, v50);
    swift_beginAccess();
    sub_1D21DEF90(v55, v170);
    swift_endAccess();
    v62 = *(*(v56 + 24) + 16);
    swift_beginAccess();
    v63 = *(v62 + 24);
    v66 = *(v63 + 64);
    v65 = v63 + 64;
    v64 = v66;
    v67 = 1 << *(*(v62 + 24) + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & v64;
    v70 = (v67 + 63) >> 6;
    v190 = *(v62 + 24);
    swift_bridgeObjectRetain_n();
    v184 = v62;

    v71 = 0;
    v72 = MEMORY[0x1E69E7CC0];
    while (v69)
    {
LABEL_24:
      v74 = *(*(v190[7] + ((v71 << 9) | (8 * __clz(__rbit64(v69))))) + 16);
      v75 = *(v74 + 16);
      v76 = *(v72 + 2);
      v77 = v76 + v75;
      if (__OFADD__(v76, v75))
      {
        goto LABEL_95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v77 > *(v72 + 3) >> 1)
      {
        if (v76 <= v77)
        {
          v79 = v76 + v75;
        }

        else
        {
          v79 = v76;
        }

        v72 = sub_1D2195F78(isUniquelyReferenced_nonNull_native, v79, 1, v72);
      }

      v69 &= v69 - 1;
      if (*(v74 + 16))
      {
        v80 = *(v72 + 2);
        if ((*(v72 + 3) >> 1) - v80 < v75)
        {
          goto LABEL_97;
        }

        memcpy(&v72[8 * v80 + 32], (v74 + 32), 8 * v75);

        if (v75)
        {
          v81 = *(v72 + 2);
          v82 = __OFADD__(v81, v75);
          v83 = v81 + v75;
          if (v82)
          {
            goto LABEL_98;
          }

          *(v72 + 2) = v83;
        }
      }

      else
      {

        if (v75)
        {
          goto LABEL_96;
        }
      }
    }

    while (1)
    {
      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_92;
      }

      if (v73 >= v70)
      {
        break;
      }

      v69 = *(v65 + 8 * v73);
      ++v71;
      if (v69)
      {
        v71 = v73;
        goto LABEL_24;
      }
    }

    v84 = *(v193 + 40);
    v85 = *(v84 + 64);
    v166 = v84 + 64;
    v86 = 1 << *(v84 + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & v85;
    v89 = (v86 + 63) >> 6;
    v184 = v72;
    v173 = v72 + 32;
    v172 = v84;

    v175 = 0;
    v90 = 0;
    v190 = MEMORY[0x1E69E7CC8];
    v168 = v89;
LABEL_39:
    v91 = v90;
    v93 = v186;
    v92 = v187;
    v94 = v191;
    v95 = v189;
    if (!v88)
    {
      goto LABEL_41;
    }

    while (2)
    {
      v96 = v91;
LABEL_48:
      v98 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v99 = v98 | (v96 << 6);
      v100 = *(*(v172 + 48) + 8 * v99);
      sub_1D220C5D4(*(v172 + 56) + v192[9] * v99, v95, type metadata accessor for VUStreamingGallery.Label);
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
      v102 = *(v101 + 48);
      *v92 = v100;
      sub_1D220C50C(v95, v92 + v102, type metadata accessor for VUStreamingGallery.Label);
      (*(*(v101 - 8) + 56))(v92, 0, 1, v101);
      v90 = v96;
      v94 = v191;
      v89 = v168;
LABEL_49:
      sub_1D21A6938(v92, v93, &qword_1EC6D2C18);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
      if ((*(*(v103 - 8) + 48))(v93, 1, v103) != 1)
      {
        v104 = *v93;
        sub_1D220C50C(v93 + *(v103 + 48), v94, type metadata accessor for VUStreamingGallery.Label);
        v105 = *(v184 + 2);
        v106 = v173;
        while (v105)
        {
          v107 = *v106;
          v106 += 8;
          --v105;
          if (v107 == v104)
          {
            sub_1D220DA08(v175);
            v109 = v190;
            v110 = swift_isUniquelyReferenced_nonNull_native();
            v194 = v109;
            v111 = sub_1D2196E40(v94);
            v113 = v111;
            v114 = *(v109 + 16);
            v115 = (v112 & 1) == 0;
            v116 = v114 + v115;
            if (__OFADD__(v114, v115))
            {
              goto LABEL_93;
            }

            v117 = v112;
            if (*(v109 + 24) < v116)
            {
              sub_1D21B2A84(v116, v110);
              v118 = sub_1D2196E40(v94);
              if ((v117 & 1) != (v119 & 1))
              {
                goto LABEL_102;
              }

              v113 = v118;
              v120 = v194;
              if (v117)
              {
                goto LABEL_66;
              }

LABEL_64:
              v120[(v113 >> 6) + 8] |= 1 << v113;
              sub_1D220C5D4(v94, v120[6] + v192[9] * v113, type metadata accessor for VUStreamingGallery.Label);
              *(v120[7] + 8 * v113) = MEMORY[0x1E69E7CC0];
              v121 = v120[2];
              v82 = __OFADD__(v121, 1);
              v122 = v121 + 1;
              if (v82)
              {
                goto LABEL_94;
              }

              v120[2] = v122;
              goto LABEL_66;
            }

            if (v110)
            {
              v120 = v194;
              if ((v112 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              sub_1D21B7988();
              v120 = v194;
              if ((v117 & 1) == 0)
              {
                goto LABEL_64;
              }
            }

LABEL_66:
            v190 = v120;
            v123 = v120[7];
            v124 = *(v123 + 8 * v113);
            v125 = swift_isUniquelyReferenced_nonNull_native();
            *(v123 + 8 * v113) = v124;
            if ((v125 & 1) == 0)
            {
              v124 = sub_1D2195F78(0, *(v124 + 2) + 1, 1, v124);
              *(v123 + 8 * v113) = v124;
            }

            v127 = *(v124 + 2);
            v126 = *(v124 + 3);
            if (v127 >= v126 >> 1)
            {
              *(v123 + 8 * v113) = sub_1D2195F78((v126 > 1), v127 + 1, 1, v124);
            }

            sub_1D220C574(v191, type metadata accessor for VUStreamingGallery.Label);
            v128 = *(v123 + 8 * v113);
            *(v128 + 16) = v127 + 1;
            *(v128 + 8 * v127 + 32) = v104;
            v175 = sub_1D220F1E0;
            goto LABEL_39;
          }
        }

        sub_1D220C574(v94, type metadata accessor for VUStreamingGallery.Label);
        v91 = v90;
        v95 = v189;
        if (v88)
        {
          continue;
        }

LABEL_41:
        if (v89 <= v91 + 1)
        {
          v97 = v91 + 1;
        }

        else
        {
          v97 = v89;
        }

        v90 = v97 - 1;
        while (1)
        {
          v96 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          if (v96 >= v89)
          {
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
            (*(*(v108 - 8) + 56))(v92, 1, 1, v108);
            v88 = 0;
            goto LABEL_49;
          }

          v88 = *(v166 + 8 * v96);
          ++v91;
          if (v88)
          {
            goto LABEL_48;
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
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      break;
    }

    v129 = v190;
    if (v190[2] && (, sub_1D2196E40(v185), v131 = v130, , (v131 & 1) != 0))
    {
      if (!*(v129 + 16))
      {
        goto LABEL_99;
      }

      v132 = sub_1D2196E40(v185);
      if ((v133 & 1) == 0)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v134 = *(*(v129 + 56) + 8 * v132);

      v135 = *(v134 + 16);

      if (v135 >= *(v193 + 64))
      {
        sub_1D220C574(v185, type metadata accessor for VUStreamingGallery.Label);

        sub_1D220DA08(v175);
        return v170;
      }
    }

    else
    {
    }

    v136 = v169;
    if (*(v169 + 16))
    {
      v137 = sub_1D225126C();

      if ((v137 & 1) == 0)
      {
        v151 = *(v136 + 24);
        v192 = *(v136 + 32);
        v193 = v151;
        v191 = *(v136 + 40);
        LODWORD(v189) = *(v136 + 48);
        v152 = v136;
        v153 = sub_1D22504FC();
        v154 = *(*(v153 - 8) + 56);
        v155 = v177;
        v154(v177, 1, 1, v153);
        v156 = v176;
        v154(v176, 1, 1, v153);
        v157 = sub_1D225055C();
        v158 = *(*(v157 - 8) + 56);
        v159 = v179;
        v158(v179, 1, 1, v157);
        v160 = v178;
        v158(v178, 1, 1, v157);
        v161 = *(v152 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence);
        LOBYTE(v157) = *(v152 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4);

        LOBYTE(v194) = v157;
        v165 = v161 | (v157 << 32);
        v162 = v174;
        sub_1D21D0018(0x3Fu, v193, v192, v191, v189, v155, 0, 0xF000000000000000, 0, 1u, v156, v159, v160, v165, SBYTE4(v165), 0, 1, v167, v171);
        if (v162)
        {

          sub_1D2176170(v160, &qword_1EC6D2110);
          sub_1D2176170(v159, &qword_1EC6D2110);
          sub_1D2176170(v156, &qword_1EC6D23C0);
          v150 = v155;
          goto LABEL_87;
        }

        sub_1D2176170(v160, &qword_1EC6D2110);
        sub_1D2176170(v159, &qword_1EC6D2110);
        sub_1D2176170(v156, &qword_1EC6D23C0);
        v163 = v155;
LABEL_90:
        sub_1D2176170(v163, &qword_1EC6D23C0);
        sub_1D220C574(v185, type metadata accessor for VUStreamingGallery.Label);

        sub_1D220DA08(v175);
        return v170;
      }
    }

    else
    {
    }

    v138 = *(v136 + 24);
    v192 = *(v136 + 32);
    v193 = v138;
    v191 = *(v136 + 40);
    LODWORD(v189) = *(v136 + 48);
    v139 = sub_1D22504FC();
    v140 = *(*(v139 - 8) + 56);
    v141 = v181;
    v140(v181, 1, 1, v139);
    v142 = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
    v187 = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8);
    v188 = v142;
    v186 = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision);
    LODWORD(v184) = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision + 8);
    v143 = v180;
    v140(v180, 1, 1, v139);
    v144 = sub_1D225055C();
    v145 = *(*(v144 - 8) + 56);
    v146 = v183;
    v145(v183, 1, 1, v144);
    v147 = v182;
    v145(v182, 1, 1, v144);
    v148 = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence);
    LOBYTE(v145) = *(v136 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4);

    LOBYTE(v194) = v145;
    v164 = v148 | (v145 << 32);
    v149 = v174;
    sub_1D21D0018(2u, v193, v192, v191, v189, v141, v188, v187, v186, v184, v143, v146, v147, v164, SBYTE4(v164), 0, 1, v167, v171);
    if (v149)
    {

      sub_1D2176170(v147, &qword_1EC6D2110);
      sub_1D2176170(v146, &qword_1EC6D2110);
      sub_1D2176170(v143, &qword_1EC6D23C0);
      v150 = v141;
LABEL_87:
      sub_1D2176170(v150, &qword_1EC6D23C0);
      sub_1D220C574(v185, type metadata accessor for VUStreamingGallery.Label);

      return sub_1D220DA08(v175);
    }

    sub_1D2176170(v147, &qword_1EC6D2110);
    sub_1D2176170(v146, &qword_1EC6D2110);
    sub_1D2176170(v143, &qword_1EC6D23C0);
    v163 = v141;
    goto LABEL_90;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21E3AE0(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v101) = a4;
  v99 = a3;
  v100 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v97 = v91 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v91 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v91 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v91 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (v91 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v91 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v91 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v32 = v91 - v31;
  v33 = *(a1 + 16);
  v102 = v4;
  if (v33 > 1)
  {
    v94 = v30;
    v95 = v13;
    v96 = v15;
  }

  else
  {
    if (!v33)
    {

LABEL_7:
      v37 = a1[3];
      v36 = a1[4];
      v38 = a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding;
      v39 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
      v40 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8);
      if (v36 >> 60 == 15 && v40 >> 60 == 15)
      {
        sub_1D21A3B64(a1[3], a1[4]);
        v41 = v39;
        sub_1D21A3B64(v39, v40);
        v42 = sub_1D225080C();
        v43 = sub_1D2250CDC();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1D2171000, v42, v43, "Unable to add observation: either or an embedding or contextual embedding should be provided", v44, 2u);
          MEMORY[0x1D3899640](v44, -1, -1);
        }

        sub_1D217EE2C();
        swift_allocError();
        *v45 = 1;
        swift_willThrow();
        sub_1D21A1F98(v37, v36);
        sub_1D21A1F98(v41, v40);
        return a1;
      }

      if (v101)
      {
        if (v36 >> 60 == 15)
        {
          goto LABEL_22;
        }

        if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence) >= 0.6)
        {
LABEL_22:
          result = sub_1D21A3B64(a1[3], a1[4]);
        }

        else
        {
          v37 = 0;
          v36 = 0xF000000000000000;
        }

        if (*(v38 + 1) >> 60 != 15)
        {
          if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence + 4))
          {
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence) < 0.6)
          {
            v39 = 0;
            v40 = 0xF000000000000000;
LABEL_28:
            if (v36 >> 60 == 15 && v40 >> 60 == 15)
            {
              a1 = 0;
              v46 = v103;
LABEL_60:
              if (*(v46 + 81) == 1 && (sub_1D21F216C() & 1) != 0)
              {
                sub_1D21EB4B0();
              }

              return a1;
            }

            v91[1] = *(*(v103 + 16) + 16);
            v101 = a1[5];
            LODWORD(v98) = *(a1 + 48);
            v96 = OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration;
            v97 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision);
            LODWORD(v95) = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision + 8);
            v93 = a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration;
            v47 = sub_1D225055C();
            v94 = v39;
            v48 = v47;
            v49 = *(*(v47 - 8) + 56);
            v92 = v37;
            v49(v32, 1, 1, v47);
            v49(v29, 1, 1, v48);
            v50 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence);
            LOBYTE(v48) = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4);

            v105 = v48;
            v89 = v50 | (v48 << 32);
            v51 = v92;
            v52 = v102;
            v53 = v94;
            a1 = sub_1D21D0018(2u, v92, v36, v101, v98, a1 + v96, v94, v40, v97, v95, v93, v32, v29, v89, SBYTE4(v89), 0, 1, v100, v99 & 1);

            sub_1D21A1F98(v53, v40);
            sub_1D21A1F98(v51, v36);
            sub_1D2176170(v29, &qword_1EC6D2110);
            result = sub_1D2176170(v32, &qword_1EC6D2110);
            if (!v52)
            {
              goto LABEL_58;
            }

            return a1;
          }
        }
      }

      else
      {
        sub_1D21A3B64(a1[3], a1[4]);
      }

      sub_1D21A3B64(v39, v40);
      goto LABEL_28;
    }

    v94 = v30;
    v95 = v13;
    v96 = v15;
  }

  v35 = sub_1D225126C();

  if (v35)
  {
    goto LABEL_7;
  }

  if (*(a1 + 16) <= 1u && *(a1 + 16))
  {
  }

  else
  {
    v54 = sub_1D225126C();

    if ((v54 & 1) == 0)
    {
      if (*(a1 + 16) <= 1u || *(a1 + 16) == 2)
      {
        v67 = sub_1D225126C();

        if ((v67 & 1) == 0)
        {
          v68 = sub_1D225080C();
          v69 = sub_1D2250CDC();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_1D2171000, v68, v69, "Unable to add observation. Observation must be of type person (originated from VNFaceObservation) or animal (originated from VNAnimalObservation).", v70, 2u);
            MEMORY[0x1D3899640](v70, -1, -1);
          }

          goto LABEL_51;
        }
      }

      else
      {
      }

      v71 = a1[4];
      if (v71 >> 60 != 15)
      {
        v101 = a1[3];
        v73 = sub_1D22504FC();
        v74 = *(*(v73 - 8) + 56);
        v75 = v97;
        v74(v97, 1, 1, v73);
        v76 = v98;
        v74(v98, 1, 1, v73);
        v77 = sub_1D225055C();
        v78 = *(*(v77 - 8) + 56);
        v78(v20, 1, 1, v77);
        v23 = v94;
        v79 = v77;
        v63 = v76;
        v78(v94, 1, 1, v79);

        v105 = 1;
        v80 = v102;
        v81 = sub_1D21D0018(0x2Au, v101, v71, 0, 0, v75, 0, 0xF000000000000000, 0, 1u, v76, v20, v23, 0, 1, 0, 1, v100, v99 & 1);
        if (v80)
        {

          a1 = &qword_1EC6D2110;
          sub_1D2176170(v23, &qword_1EC6D2110);
          sub_1D2176170(v20, &qword_1EC6D2110);
          sub_1D2176170(v76, &qword_1EC6D23C0);
          v66 = v75;
          goto LABEL_54;
        }

        a1 = v81;
        v26 = v20;
        v58 = v75;
LABEL_57:

        sub_1D2176170(v23, &qword_1EC6D2110);
        sub_1D2176170(v26, &qword_1EC6D2110);
        sub_1D2176170(v63, &qword_1EC6D23C0);
        result = sub_1D2176170(v58, &qword_1EC6D23C0);
LABEL_58:
        v46 = v103;
        v82 = *(v103 + 104);
        v83 = __OFSUB__(v82, 1);
        v84 = v82 - 1;
        if (!v83)
        {
          *(v103 + 104) = v84;
          v85 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
          [v85 timeIntervalSince1970];
          v87 = v86;

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = *(v46 + 32);
          *(v46 + 32) = 0x8000000000000000;
          sub_1D21BA99C(a1, isUniquelyReferenced_nonNull_native, v87);
          *(v46 + 32) = v104;
          swift_endAccess();
          goto LABEL_60;
        }

        __break(1u);
        goto LABEL_65;
      }

LABEL_51:
      sub_1D217EE2C();
      swift_allocError();
      *v72 = 1;
      swift_willThrow();
      return a1;
    }
  }

  v55 = a1[4];
  if (v55 >> 60 == 15)
  {
    goto LABEL_51;
  }

  v46 = v103;
  if ((v101 & 1) == 0)
  {
LABEL_42:
    v94 = *(*(v103 + 16) + 16);
    v97 = a1[3];
    v101 = a1[5];
    LODWORD(v98) = *(a1 + 48);
    v56 = sub_1D22504FC();
    v57 = *(*(v56 - 8) + 56);
    v58 = v96;
    v57(v96, 1, 1, v56);
    v59 = v95;
    v57(v95, 1, 1, v56);
    v60 = sub_1D225055C();
    v61 = *(*(v60 - 8) + 56);
    v61(v26, 1, 1, v60);
    v61(v23, 1, 1, v60);
    v62 = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence);
    LOBYTE(v61) = *(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4);
    a1 = v94;

    v105 = v61;
    v63 = v59;
    v90 = v62 | (v105 << 32);
    v64 = v102;
    v65 = sub_1D21D0018(0x3Fu, v97, v55, v101, v98, v58, 0, 0xF000000000000000, 0, 1u, v59, v26, v23, v90, SBYTE4(v90), 0, 1, v100, v99 & 1);
    if (v64)
    {

      sub_1D2176170(v23, &qword_1EC6D2110);
      sub_1D2176170(v26, &qword_1EC6D2110);
      sub_1D2176170(v59, &qword_1EC6D23C0);
      v66 = v58;
LABEL_54:
      sub_1D2176170(v66, &qword_1EC6D23C0);
      return a1;
    }

    a1 = v65;
    goto LABEL_57;
  }

  if ((*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4) & 1) == 0)
  {
    if (*(a1 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence) < 0.6)
    {
      a1 = 0;
      goto LABEL_60;
    }

    goto LABEL_42;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1D21E4888(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for VUStreamingGallery.Tag(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D220C5D4(a2, v15, type metadata accessor for VUStreamingGallery.Tag);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = *(v7 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v17(v10, v15, v6);

    v18 = v26;
    v19 = v25;
    sub_1D21D1598(v26, v10, 2);
    if (v19)
    {
      v12 = v10;
LABEL_5:
      (*(v7 + 8))(v12, v6);
    }

    (*(v7 + 16))(v5, v10, v6);
    v23 = type metadata accessor for VUStreamingGallery.Label(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    swift_beginAccess();
    sub_1D21DEF90(v5, v18);
    swift_endAccess();
    v12 = v10;
  }

  else
  {
    v17(v12, v15, v6);

    v20 = v26;
    v21 = v25;
    sub_1D21D1598(v26, v12, 0);
    if (v21)
    {
      goto LABEL_5;
    }

    (*(v7 + 16))(v5, v12, v6);
    v24 = type metadata accessor for VUStreamingGallery.Label(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
    swift_beginAccess();
    sub_1D21DEF90(v5, v20);
    swift_endAccess();
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_1D21E4C80(unint64_t a1, uint64_t a2)
{
  v230 = a1;
  v231 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C10);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v228 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v228 - v8;
  v10 = type metadata accessor for VUStreamingGallery.Label(0);
  v242 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v246 = (v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v241 = v228 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C18);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v240 = (v228 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v239 = (v228 - v17);
  v245 = sub_1D225077C();
  v18 = *(v245 - 1);
  v19 = MEMORY[0x1EEE9AC00](v245);
  v21 = v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v228 - v22;
  CFAbsoluteTimeGetCurrent();
  v232 = v2;
  v24 = *(*(v2 + 16) + 16);
  swift_beginAccess();
  v25 = 0;
  v26 = 0;
  v27 = *(v24 + 24);
  v28 = 1 << *(v27 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v27 + 64);
  v31 = (v28 + 63) >> 6;
  do
  {
    if (v30)
    {
      v32 = v26;
    }

    else
    {
      do
      {
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_195;
        }

        if (v32 >= v31)
        {
          goto LABEL_13;
        }

        v30 = *(v27 + 64 + 8 * v32);
        ++v26;
      }

      while (!v30);
      v26 = v32;
    }

    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = *(*(*(*(v27 + 56) + ((v32 << 9) | (8 * v33))) + 16) + 16);
    v35 = __OFADD__(v25, v34);
    v25 += v34;
  }

  while (!v35);
  __break(1u);
LABEL_13:
  v228[0] = v10;
  v228[1] = v25;
  v237 = v9;
  v238 = v7;
  v236 = v3;
  sub_1D225076C();
  v36 = sub_1D225078C();
  v37 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v36, v37, v39, "update", "", v38, 2u);
    MEMORY[0x1D3899640](v38, -1, -1);
  }

  v40 = v245;
  (*(v18 + 16))(v21, v23, v245);
  sub_1D22507EC();
  swift_allocObject();
  v229 = sub_1D22507DC();
  (*(v18 + 8))(v23, v40);
  v41 = *(v232 + 16);
  v42 = *(v232 + 112);
  LODWORD(v243) = *(v232 + 116);
  v43 = *(v41 + 2);
  swift_beginAccess();
  v44 = *(v43 + 16);
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v44 + 64);
  v49 = (v46 + 63) >> 6;
  v245 = v41;

  v244 = v44;

  v50 = 0;
  if (!v48)
  {
    goto LABEL_19;
  }

  do
  {
    v51 = v50;
LABEL_22:
    v52 = __clz(__rbit64(v48)) | (v51 << 6);
    v53 = *(*(v244 + 6) + v52);
    v54 = *(*(v244 + 7) + 8 * v52);
    if ((v243 & 1) == 0)
    {
      *(v54 + 80) = v42;
    }

    v55 = *(v245 + 3);
    v248 = type metadata accessor for VUIndexStreamingScanner();
    v249 = &off_1F4DAFD88;
    v247[0] = v55;

    v56 = v236;
    sub_1D222DE40(v53, v54, v247, 0, 0, 0, 0, 0);
    v236 = v56;
    if (v56)
    {
LABEL_188:

      __swift_destroy_boxed_opaque_existential_0Tm(v247);
      sub_1D21F6300(v232, v229, "update");
    }

    v48 &= v48 - 1;

    __swift_destroy_boxed_opaque_existential_0Tm(v247);
    v50 = v51;
  }

  while (v48);
  while (1)
  {
LABEL_19:
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_196;
    }

    if (v51 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v51);
    ++v50;
    if (v48)
    {
      goto LABEL_22;
    }
  }

  v57 = v232;

  v58 = sub_1D21CBA6C();

  swift_beginAccess();
  v59 = *(v57 + 40);
  v60 = v59 + 64;
  v61 = 1 << *(v59 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & *(v59 + 64);
  v233 = (v61 + 63) >> 6;
  v234 = v59;

  v64 = 0;
  v244 = MEMORY[0x1E69E7CC8];
  v245 = v58;
  v65 = &unk_1D2254BA8;
  v235 = v60;
  v243 = 0;
  if (!v63)
  {
LABEL_31:
    if (v233 <= v64 + 1)
    {
      v67 = v64 + 1;
    }

    else
    {
      v67 = v233;
    }

    v68 = v67 - 1;
    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v66 >= v233)
      {
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
        v102 = v240;
        (*(*(v101 - 8) + 56))(v240, 1, 1, v101);
        v63 = 0;
        v64 = v68;
        v76 = v102;
        goto LABEL_40;
      }

      v63 = *(v60 + 8 * v66);
      ++v64;
      if (v63)
      {
        v64 = v66;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_190:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2118);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2252700;
    strcpy((inited + 32), "update_timing");
    *(inited + 46) = -4864;
    *(inited + 48) = sub_1D2250B6C();
    *(inited + 56) = 0xD00000000000001DLL;
    *(inited + 64) = 0x80000001D22574F0;
    *(inited + 72) = sub_1D2250B6C();
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x80000001D22586D0;
    *(inited + 96) = sub_1D2250C1C();
    v224 = sub_1D21A1EA0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2120);
    swift_arrayDestroy();
    v225 = sub_1D225092C();
    v226 = swift_allocObject();
    *(v226 + 16) = v224;
    v249 = sub_1D21A6D34;
    v250 = v226;
    v247[0] = MEMORY[0x1E69E9820];
    v247[1] = 1107296256;
    v247[2] = sub_1D2182414;
    v248 = &block_descriptor_2;
    v227 = _Block_copy(v247);

    AnalyticsSendEventLazy();
    _Block_release(v227);

LABEL_191:
    sub_1D21F6300(v232, v229, "update");

    sub_1D220DA08(v243);
    return v65;
  }

  while (1)
  {
    v66 = v64;
LABEL_39:
    v69 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
    v70 = v69 | (v66 << 6);
    v71 = *(*(v234 + 48) + 8 * v70);
    v72 = v241;
    sub_1D220C5D4(*(v234 + 56) + *(v242 + 72) * v70, v241, type metadata accessor for VUStreamingGallery.Label);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
    v74 = *(v73 + 48);
    v75 = v240;
    *v240 = v71;
    v76 = v75;
    sub_1D220C50C(v72, v75 + v74, type metadata accessor for VUStreamingGallery.Label);
    (*(*(v73 - 8) + 56))(v76, 0, 1, v73);
LABEL_40:
    v77 = v239;
    sub_1D21A6938(v76, v239, &qword_1EC6D2C18);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
    if ((*(*(v78 - 8) + 48))(v77, 1, v78) == 1)
    {
      break;
    }

    v79 = *v77;
    v80 = v77 + *(v78 + 48);
    v81 = v246;
    sub_1D220C50C(v80, v246, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220DA08(v243);
    v82 = v244;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v247[0] = v82;
    v85 = sub_1D2196E40(v81);
    v86 = *(v82 + 2);
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_197;
    }

    v89 = v84;
    if (*(v82 + 3) < v88)
    {
      sub_1D21B2A84(v88, isUniquelyReferenced_nonNull_native);
      v90 = v247[0];
      v91 = sub_1D2196E40(v246);
      if ((v89 & 1) != (v92 & 1))
      {
        goto LABEL_205;
      }

      v85 = v91;
      v82 = v90;
      if (v89)
      {
        goto LABEL_50;
      }

LABEL_48:
      *&v82[8 * (v85 >> 6) + 64] |= 1 << v85;
      sub_1D220C5D4(v246, *(v82 + 6) + *(v242 + 72) * v85, type metadata accessor for VUStreamingGallery.Label);
      *(*(v82 + 7) + 8 * v85) = MEMORY[0x1E69E7CC0];
      v93 = *(v82 + 2);
      v35 = __OFADD__(v93, 1);
      v94 = v93 + 1;
      if (v35)
      {
        goto LABEL_201;
      }

      *(v82 + 2) = v94;
      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v84 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1D21B7988();
      v82 = v247[0];
      if ((v89 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    v244 = v82;
    v95 = *(v82 + 7);
    v96 = *(v95 + 8 * v85);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *(v95 + 8 * v85) = v96;
    if ((v97 & 1) == 0)
    {
      v96 = sub_1D2195F78(0, *(v96 + 2) + 1, 1, v96);
      *(v95 + 8 * v85) = v96;
    }

    v99 = *(v96 + 2);
    v98 = *(v96 + 3);
    if (v99 >= v98 >> 1)
    {
      *(v95 + 8 * v85) = sub_1D2195F78((v98 > 1), v99 + 1, 1, v96);
    }

    sub_1D220C574(v246, type metadata accessor for VUStreamingGallery.Label);
    v100 = *(v95 + 8 * v85);
    *(v100 + 16) = v99 + 1;
    *(v100 + 8 * v99 + 32) = v79;
    v58 = v245;
    v60 = v235;
    v65 = &unk_1D2254BA8;
    v243 = sub_1D220F1E0;
    if (!v63)
    {
      goto LABEL_31;
    }
  }

  v103 = v244 + 64;
  v104 = 1 << v244[32];
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & *(v244 + 8);
  v234 = (v104 + 63) >> 6;

  v107 = 0;
  v108 = v237;
  v235 = v103;
  while (2)
  {
    v109 = v238;
    if (v106)
    {
      v240 = v107;
      v110 = v107;
      goto LABEL_73;
    }

    if (v234 <= v107 + 1)
    {
      v111 = v107 + 1;
    }

    else
    {
      v111 = v234;
    }

    v112 = (v111 - 1);
    while (2)
    {
      v110 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      if (v110 >= v234)
      {
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
        (*(*(v145 - 8) + 56))(v109, 1, 1, v145);
        v239 = 0;
        v240 = v112;
        goto LABEL_74;
      }

      v106 = *&v103[8 * v110];
      v107 = (v107 + 1);
      if (!v106)
      {
        continue;
      }

      break;
    }

    v240 = v110;
LABEL_73:
    v239 = ((v106 - 1) & v106);
    v113 = __clz(__rbit64(v106)) | (v110 << 6);
    v114 = v244;
    v115 = v241;
    sub_1D220C5D4(*(v244 + 6) + *(v242 + 72) * v113, v241, type metadata accessor for VUStreamingGallery.Label);
    v116 = *(*(v114 + 7) + 8 * v113);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
    v118 = *(v117 + 48);
    v119 = v115;
    v109 = v238;
    sub_1D220C50C(v119, v238, type metadata accessor for VUStreamingGallery.Label);
    *(v109 + v118) = v116;
    (*(*(v117 - 8) + 56))(v109, 0, 1, v117);

    v108 = v237;
LABEL_74:
    sub_1D21A6938(v109, v108, &qword_1EC6D2C10);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
    if ((*(*(v120 - 8) + 48))(v108, 1, v120) != 1)
    {
      v121 = *(v108 + *(v120 + 48));
      v122 = *(v121 + 16);
      if (!v122)
      {
LABEL_62:

        v108 = v237;
        sub_1D220C574(v237, type metadata accessor for VUStreamingGallery.Label);
        v103 = v235;
        v106 = v239;
        v107 = v240;
        continue;
      }

      v123 = 0;
      v124 = (v121 + 32);
      v245 = (v121 + 32);
      v246 = v122;
      while (2)
      {
        if (v123 >= *(v121 + 16))
        {
          __break(1u);
          goto LABEL_188;
        }

        v125 = v124[v123];
        if (*(v58 + 2))
        {
          v126 = sub_1D2176758(*v124);
          if (v127)
          {
            v128 = v121;
            v129 = *(*(v58 + 7) + 8 * v126);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            v247[0] = v58;
            v132 = sub_1D2176758(v125);
            v133 = *(v58 + 2);
            v134 = (v131 & 1) == 0;
            v135 = v133 + v134;
            if (__OFADD__(v133, v134))
            {
              goto LABEL_193;
            }

            v136 = v131;
            if (*(v58 + 3) >= v135)
            {
              if (v130)
              {
                v58 = v247[0];
                if ((v131 & 1) == 0)
                {
                  goto LABEL_94;
                }
              }

              else
              {
                sub_1D21B6C24();
                v58 = v247[0];
                if ((v136 & 1) == 0)
                {
                  goto LABEL_94;
                }
              }
            }

            else
            {
              sub_1D21B140C(v135, v130);
              v137 = sub_1D2176758(v125);
              if ((v136 & 1) != (v138 & 1))
              {
                goto LABEL_204;
              }

              v132 = v137;
              v58 = v247[0];
              if ((v136 & 1) == 0)
              {
LABEL_94:
                *&v58[8 * (v132 >> 6) + 64] |= 1 << v132;
                *(*(v58 + 6) + 8 * v132) = v125;
                *(*(v58 + 7) + 8 * v132) = v129;
                v143 = *(v58 + 2);
                v35 = __OFADD__(v143, 1);
                v144 = v143 + 1;
                if (v35)
                {
                  goto LABEL_194;
                }

                *(v58 + 2) = v144;
LABEL_78:
                v121 = v128;
                v124 = v245;
                v122 = v246;
LABEL_79:
                if (v122 == ++v123)
                {
                  goto LABEL_62;
                }

                continue;
              }
            }

            *(*(v58 + 7) + 8 * v132) = v129;
            goto LABEL_78;
          }
        }

        break;
      }

      v139 = sub_1D2176758(v125);
      if (v140)
      {
        v141 = v139;
        v142 = swift_isUniquelyReferenced_nonNull_native();
        v247[0] = v58;
        if (!v142)
        {
          sub_1D21B6C24();
          v58 = v247[0];
        }

        sub_1D2201080(v141, v58);
      }

      goto LABEL_79;
    }

    break;
  }

  v147 = sub_1D21DF65C(v146);
  v148 = 0;
  v150 = v147 + 56;
  v149 = *(v147 + 56);
  v237 = v147;
  v151 = 1 << *(v147 + 32);
  v251 = MEMORY[0x1E69E7CC0];
  v152 = -1;
  if (v151 < 64)
  {
    v152 = ~(-1 << v151);
  }

  v153 = v152 & v149;
  v154 = (v151 + 63) >> 6;
  v233 = v231 + 40;
  v234 = v154;
  v245 = v58;
  v235 = v147 + 56;
  while (v153)
  {
LABEL_108:
    v156 = *(*(v232 + 16) + 16);
    v241 = *(*(v237 + 6) + ((v148 << 9) | (8 * __clz(__rbit64(v153)))));
    v157 = HIBYTE(v241);
    v158 = 16;
    if (HIBYTE(v241) != 63)
    {
      v158 = 0;
    }

    if (v157 == 42)
    {
      v158 = 32;
    }

    v159 = 24;
    if (v157 != 6)
    {
      v159 = 0;
    }

    if (v157 == 2)
    {
      v159 = 8;
    }

    if (v157 <= 41)
    {
      v160 = v159;
    }

    else
    {
      v160 = v158;
    }

    swift_beginAccess();
    v238 = v156;
    v161 = *(v156 + 24);
    v162 = *(v161 + 16);
    v240 = v148;
    v242 = v153;
    if (v162 && (v163 = sub_1D2176DFC(0x2A063F0200uLL >> v160), (v164 & 1) != 0))
    {
      v165 = *(*(v161 + 56) + 8 * v163);
      v166 = v165[2];
      v167 = *(v166 + 16);
      v246 = v165;
      if (v167)
      {

        swift_beginAccess();
        swift_beginAccess();
        v168 = 0;
        v169 = 0;
        v170 = MEMORY[0x1E69E7CC0];
        v171 = v241;
        v239 = v166;
        while (1)
        {
          v175 = v165[7];
          if (v169 >= *(v175 + 16))
          {
            goto LABEL_200;
          }

          v176 = v175 + v168;
          if ((*(v176 + 40) & 1) == 0 && *(v176 + 32) == v171)
          {
            v177 = v165[3];
            if (v169 >= *(v177 + 16))
            {
              goto LABEL_202;
            }

            if (*(v177 + v168 + 40) >> 60 != 15)
            {
              v178 = *(v166 + 8 * v169 + 32);
              v179 = swift_isUniquelyReferenced_nonNull_native();
              v247[0] = v170;
              if ((v179 & 1) == 0)
              {
                sub_1D21AF860(0, *(v170 + 2) + 1, 1);
                v171 = v241;
                v170 = v247[0];
              }

              v173 = *(v170 + 2);
              v172 = *(v170 + 3);
              if (v173 >= v172 >> 1)
              {
                sub_1D21AF860((v172 > 1), v173 + 1, 1);
                v171 = v241;
                v170 = v247[0];
              }

              *(v170 + 2) = v173 + 1;
              v174 = &v170[16 * v173];
              *(v174 + 4) = v169;
              *(v174 + 5) = v178;
              v165 = v246;
              v166 = v239;
            }
          }

          ++v169;
          v168 += 16;
          if (v167 == v169)
          {

            v153 = v242;
            goto LABEL_144;
          }
        }
      }

      v170 = MEMORY[0x1E69E7CC0];
LABEL_144:
      v187 = *(v231 + 16);
      if (v187)
      {
        v188 = v233;
        do
        {
          v189 = *(v188 - 1) == 0x6E656469666E6F63 && *v188 == 0xEA00000000006563;
          if (v189 || (sub_1D225126C() & 1) != 0)
          {
            v247[0] = v170;

            v190 = v236;
            sub_1D220D79C(v247, v165);
            v236 = v190;
            if (v190)
            {
              goto LABEL_206;
            }

            v170 = v247[0];
          }

          v188 += 2;
          --v187;
        }

        while (v187);
      }

      if ((v230 & 0x8000000000000000) != 0)
      {
        goto LABEL_203;
      }

      if (*(v170 + 2) >= v230)
      {
        v191 = v230;
      }

      else
      {
        v191 = *(v170 + 2);
      }

      if (v230 && v191)
      {
        v247[0] = MEMORY[0x1E69E7CC0];
        sub_1D21AFBD0(0, v191, 0);
        v180 = v247[0];
        v192 = *(v247[0] + 2);
        v193 = 16 * v192;
        v194 = 40;
        do
        {
          v195 = *&v170[v194];
          v247[0] = v180;
          v196 = *(v180 + 3);
          v197 = v192 + 1;
          if (v192 >= v196 >> 1)
          {
            sub_1D21AFBD0((v196 > 1), v192 + 1, 1);
            v180 = v247[0];
          }

          *(v180 + 2) = v197;
          v198 = &v180[v193];
          *(v198 + 4) = v195;
          *(v198 + 10) = 1065353216;
          v193 += 16;
          v194 += 16;
          v192 = v197;
          --v191;
        }

        while (v191);

        v154 = v234;
        v150 = v235;
        v148 = v240;
        v153 = v242;
      }

      else
      {

        v180 = MEMORY[0x1E69E7CC0];
        v154 = v234;
        v150 = v235;
        v148 = v240;
      }
    }

    else
    {
      v180 = MEMORY[0x1E69E7CC0];
    }

    v181 = *(v180 + 2);
    if (v181)
    {
      v247[0] = MEMORY[0x1E69E7CC0];
      sub_1D21AF7AC(0, v181, 0);
      v182 = v247[0];
      v183 = *(v247[0] + 2);
      v184 = 32;
      do
      {
        v185 = *&v180[v184];
        v247[0] = v182;
        v186 = *(v182 + 3);
        if (v183 >= v186 >> 1)
        {
          sub_1D21AF7AC((v186 > 1), v183 + 1, 1);
          v182 = v247[0];
        }

        *(v182 + 2) = v183 + 1;
        *&v182[8 * v183 + 32] = v185;
        v184 += 16;
        ++v183;
        --v181;
      }

      while (v181);

      v154 = v234;
      v150 = v235;
      v148 = v240;
      v153 = v242;
    }

    else
    {

      v182 = MEMORY[0x1E69E7CC0];
    }

    v153 &= v153 - 1;
    sub_1D2202A30(v182);
    v58 = v245;
  }

  while (1)
  {
    v155 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      break;
    }

    if (v155 >= v154)
    {

      v199 = v58 + 64;
      v200 = 1 << v58[32];
      v201 = -1;
      if (v200 < 64)
      {
        v201 = ~(-1 << v200);
      }

      v202 = v201 & *(v58 + 8);
      v203 = (v200 + 63) >> 6;

      v204 = 0;
      v205 = MEMORY[0x1E69E7CC0];
      if (v202)
      {
        goto LABEL_173;
      }

      while (1)
      {
        v206 = v204 + 1;
        if (__OFADD__(v204, 1))
        {
          goto LABEL_199;
        }

        if (v206 >= v203)
        {
          v65 = v205;

          v220 = sub_1D225092C();
          v221 = NSClassFromString(v220);

          if (v221)
          {

            goto LABEL_191;
          }

          CFAbsoluteTimeGetCurrent();
          goto LABEL_190;
        }

        v202 = *&v199[8 * v206];
        ++v204;
        if (v202)
        {
          v204 = v206;
          do
          {
LABEL_173:
            v207 = (v204 << 9) | (8 * __clz(__rbit64(v202)));
            v208 = *(*(v245 + 6) + v207);
            v202 &= v202 - 1;
            v246 = *(*(v245 + 7) + v207);
            v209 = *(v251 + 16);
            v210 = (v251 + 32);
            do
            {
              v211 = v209;
              if (v209-- == 0)
              {
                break;
              }

              v213 = *v210++;
            }

            while (v213 != v208);
            v214 = v211 != 0;
            v215 = v205;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v205 = v215;
            }

            else
            {
              v205 = sub_1D21965CC(0, *(v215 + 2) + 1, 1, v215);
            }

            v217 = *(v205 + 2);
            v216 = *(v205 + 3);
            if (v217 >= v216 >> 1)
            {
              v205 = sub_1D21965CC((v216 > 1), v217 + 1, 1, v205);
            }

            *(v205 + 2) = v217 + 1;
            v218 = &v205[24 * v217];
            v219 = v246;
            *(v218 + 4) = v208;
            *(v218 + 5) = v219;
            v218[48] = v214;
          }

          while (v202);
        }
      }
    }

    v153 = *(v150 + 8 * v155);
    ++v148;
    if (v153)
    {
      v148 = v155;
      goto LABEL_108;
    }
  }

LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  sub_1D22512AC();
  __break(1u);
LABEL_205:
  sub_1D22512AC();
  __break(1u);
LABEL_206:

  __break(1u);
  return result;
}

uint64_t sub_1D21E6454(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = type metadata accessor for VUStreamingGallery.Tag(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  if (v10 && v10 != 2)
  {
    result = sub_1D22510FC();
    __break(1u);
  }

  else
  {
    v11 = sub_1D225055C();
    (*(*(v11 - 8) + 16))(v9, a2, v11);
    swift_storeEnumTagMultiPayload();
    sub_1D21E4888(a1, v9);
    if (v3)
    {
    }

    return sub_1D220C574(v9, type metadata accessor for VUStreamingGallery.Tag);
  }

  return result;
}

uint64_t sub_1D21E65E0(void *a1)
{
  v3 = type metadata accessor for VUStreamingGallery.Label(0);
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v34 - v7;
  v9 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);

  v14 = a1;
  v15 = v39;
  sub_1D2246CB4(v14);
  if (v15)
  {
  }

  else
  {
    v17 = v10;
    v35 = v5;
    v18 = sub_1D21E77A8(v13, v16, 5, 0, 0, 0);

    if (v18)
    {
      v34[1] = 0;
      v20 = *(v18 + 16);
      if (v20)
      {
        v40 = MEMORY[0x1E69E7CC0];
        sub_1D21AFC00(0, v20, 0);
        v1 = v40;
        v21 = v17;
        v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v34[0] = v18;
        v23 = v18 + v22;
        v24 = *(v21 + 72);
        v36 = (v38 + 48);
        v37 = v24;
        v38 = v8;
        v39 = v3;
        do
        {
          sub_1D220C5D4(v23, v12, type metadata accessor for VUStreamingGallery.Recognition);
          sub_1D2174DA8(v12, v8, &qword_1EC6D2C08);
          if ((*v36)(v8, 1, v3) == 1)
          {
            sub_1D2176170(v8, &qword_1EC6D2C08);
            v25 = 0;
            v26 = 1;
          }

          else
          {
            v27 = v35;
            sub_1D220C5D4(v8, v35, type metadata accessor for VUStreamingGallery.Label);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v26 = EnumCaseMultiPayload == 1;
            if (EnumCaseMultiPayload == 1)
            {
              sub_1D220C574(v27, type metadata accessor for VUStreamingGallery.Label);
              v25 = 0;
            }

            else
            {
              v25 = *v27;
            }

            sub_1D220C574(v8, type metadata accessor for VUStreamingGallery.Label);
          }

          v29 = v9;
          v30 = *&v12[*(v9 + 20)];
          sub_1D220C574(v12, type metadata accessor for VUStreamingGallery.Recognition);
          v40 = v1;
          v32 = *(v1 + 16);
          v31 = *(v1 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D21AFC00((v31 > 1), v32 + 1, 1);
            v1 = v40;
          }

          *(v1 + 16) = v32 + 1;
          v33 = v1 + 16 * v32;
          *(v33 + 32) = v25;
          *(v33 + 40) = v26;
          *(v33 + 44) = v30;
          v23 += v37;
          --v20;
          v9 = v29;
          v8 = v38;
          v3 = v39;
        }

        while (v20);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

char *sub_1D21E6A20(void *a1, char *a2, char a3)
{
  sub_1D2246CB4(a1);
  if (!v3)
  {
    a2 = sub_1D21E6B68(v6, a2, a3 & 1, 0);
  }

  return a2;
}

char *sub_1D21E6A90(void *a1, uint64_t a2, char *a3)
{
  sub_1D2246CB4(a1);
  if (!v3)
  {
    a3 = sub_1D21E6B68(v5, a3, 0, 0);
  }

  return a3;
}

char *sub_1D21E6AFC(void *a1, char *a2)
{
  sub_1D2246CB4(a1);
  if (!v2)
  {
    a2 = sub_1D21E6B68(v4, a2, 0, 0);
  }

  return a2;
}

void *sub_1D21E6B68(uint64_t a1, char *a2, int a3, int a4)
{
  v97 = a1;
  v98 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C28);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v85 = &v79 - v9;
  v84 = type metadata accessor for VUStreamingGallery.Tag(0);
  v87 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v79 - v12;
  v89 = type metadata accessor for VUStreamingGallery.RecognitionKey(0);
  v83 = *(v89 - 8);
  v13 = MEMORY[0x1EEE9AC00](v89);
  v100 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v79 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v79 - v17;
  v94 = type metadata accessor for VUStreamingGallery.Label(0);
  v96 = *(v94 - 8);
  v19 = MEMORY[0x1EEE9AC00](v94);
  v102 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - v21;
  v23 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v104 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v79 - v27;

  v30 = a3;
  v31 = a4;
  v32 = v101;
  v33 = sub_1D21E77A8(v29, v97, v98, 0, v30, a4);

  if (v32)
  {
    return result;
  }

  v88 = v31;
  v92 = v26;
  v93 = v23;
  v101 = v22;
  if (!v33)
  {
    return 0;
  }

  v80 = 0;
  v98 = *(v33 + 16);
  if (!v98)
  {

    v37 = MEMORY[0x1E69E7CC8];
    v75 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v75)
    {
      goto LABEL_35;
    }

LABEL_39:

    v76 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v35 = 0;
  v36 = v104;
  v97 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v96 += 6;
  v81 = (v87 + 48);
  v37 = MEMORY[0x1E69E7CC8];
  v86 = (v104 + 56);
  v38 = v91;
  v87 = v18;
  v39 = v94;
  v95 = v33;
  do
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      sub_1D22512AC();
      __break(1u);
      goto LABEL_47;
    }

    v33 = *(v36 + 72);
    sub_1D220C5D4(v97 + v33 * v35, v28, type metadata accessor for VUStreamingGallery.Recognition);
    sub_1D2174DA8(v28, v18, &qword_1EC6D2C08);
    if ((*v96)(v18, 1, v39) == 1)
    {
      sub_1D220C574(v28, type metadata accessor for VUStreamingGallery.Recognition);
      sub_1D2176170(v18, &qword_1EC6D2C08);
      v36 = v104;
      v33 = v95;
      goto LABEL_6;
    }

    v40 = v18;
    v41 = v101;
    sub_1D220C50C(v40, v101, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C5D4(v41, v102, type metadata accessor for VUStreamingGallery.Label);
    if (v88)
    {
      v42 = v93;
      sub_1D2174DA8(&v28[*(v93 + 24)], v38, &qword_1EC6D2888);
      if ((*v81)(v38, 1, v84) == 1)
      {
        sub_1D2176170(v38, &qword_1EC6D2888);
        v43 = 0;
      }

      else
      {
        v46 = v82;
        sub_1D220C5D4(v38, v82, type metadata accessor for VUStreamingGallery.Tag);
        v47 = swift_getEnumCaseMultiPayload() == 1;
        v48 = v46;
        v43 = !v47;
        sub_1D220C574(v48, type metadata accessor for VUStreamingGallery.Tag);
        sub_1D220C574(v38, type metadata accessor for VUStreamingGallery.Tag);
      }

      v45 = v102;
      v49 = &v28[*(v42 + 32)];
      v50 = v85;
      sub_1D2174DA8(v49, v85, &qword_1EC6D23C0);
      v51 = sub_1D22504FC();
      v44 = (*(*(v51 - 8) + 48))(v50, 1, v51) != 1;
      sub_1D2176170(v50, &qword_1EC6D23C0);
      v39 = v94;
    }

    else
    {
      v44 = 0;
      v43 = 0;
      v45 = v102;
    }

    v52 = v45;
    v53 = v99;
    sub_1D220C50C(v52, v99, type metadata accessor for VUStreamingGallery.Label);
    v54 = v89;
    *(v53 + *(v89 + 20)) = v43;
    *(v53 + *(v54 + 24)) = v44;
    if (!v37[2] || (v55 = sub_1D2197034(v53), (v56 & 1) == 0))
    {
      v59 = v90;
      (*v86)(v90, 1, 1, v93);
      sub_1D2176170(v59, &qword_1EC6D2C28);
      v60 = v53;
      v61 = v100;
      sub_1D220C5D4(v60, v100, type metadata accessor for VUStreamingGallery.RecognitionKey);
      sub_1D220C5D4(v28, v92, type metadata accessor for VUStreamingGallery.Recognition);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v37;
      v64 = sub_1D2197034(v61);
      v65 = v37[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      v18 = v87;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_44;
      }

      v68 = v63;
      if (v37[3] < v67)
      {
        sub_1D21B4354(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_1D2197034(v100);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_46;
        }

        v64 = v69;
        v37 = v103;
        if ((v68 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_28:
        sub_1D220DA58(v92, v37[7] + v64 * v33, type metadata accessor for VUStreamingGallery.Recognition);
        sub_1D220C574(v100, type metadata accessor for VUStreamingGallery.RecognitionKey);
        sub_1D220C574(v99, type metadata accessor for VUStreamingGallery.RecognitionKey);
        sub_1D220C574(v101, type metadata accessor for VUStreamingGallery.Label);
        sub_1D220C574(v28, type metadata accessor for VUStreamingGallery.Recognition);
LABEL_32:
        v38 = v91;
        v36 = v104;
        v39 = v94;
        goto LABEL_33;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = v103;
        if (v63)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D21B89A8();
        v37 = v103;
        if (v68)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      v37[(v64 >> 6) + 8] |= 1 << v64;
      v71 = v100;
      sub_1D220C5D4(v100, v37[6] + *(v83 + 72) * v64, type metadata accessor for VUStreamingGallery.RecognitionKey);
      sub_1D220C50C(v92, v37[7] + v64 * v33, type metadata accessor for VUStreamingGallery.Recognition);
      sub_1D220C574(v71, type metadata accessor for VUStreamingGallery.RecognitionKey);
      sub_1D220C574(v99, type metadata accessor for VUStreamingGallery.RecognitionKey);
      sub_1D220C574(v101, type metadata accessor for VUStreamingGallery.Label);
      sub_1D220C574(v28, type metadata accessor for VUStreamingGallery.Recognition);
      v72 = v37[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_45;
      }

      v37[2] = v74;
      goto LABEL_32;
    }

    v57 = v37[7] + v55 * v33;
    v58 = v90;
    sub_1D220C5D4(v57, v90, type metadata accessor for VUStreamingGallery.Recognition);
    (*v86)(v58, 0, 1, v93);
    sub_1D220C574(v53, type metadata accessor for VUStreamingGallery.RecognitionKey);
    sub_1D220C574(v101, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C574(v28, type metadata accessor for VUStreamingGallery.Recognition);
    sub_1D2176170(v58, &qword_1EC6D2C28);
    v38 = v91;
    v18 = v87;
    v36 = v104;
LABEL_33:
    v33 = v95;
LABEL_6:
    ++v35;
  }

  while (v98 != v35);

  v75 = v37[2];
  if (!v75)
  {
    goto LABEL_39;
  }

LABEL_35:
  v76 = sub_1D21F81B8(v75, 0, &qword_1EC6D24B0, &unk_1D2254440, type metadata accessor for VUStreamingGallery.Recognition);
  v77 = sub_1D21F992C(&v103, v76 + ((*(v104 + 80) + 32) & ~*(v104 + 80)), v75, v37);
  swift_bridgeObjectRetain_n();
  sub_1D217CF78();
  if (v77 == v75)
  {
LABEL_40:
    v103 = v76;
    v78 = v80;
    sub_1D21F6888(&v103);
    v33 = v78;
    if (v78)
    {
LABEL_47:

      __break(1u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      return v103;
    }

    return result;
  }

  __break(1u);
  return 0;
}

uint64_t sub_1D21E77A8(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  v8 = v7;
  v392 = a6;
  LODWORD(v408) = a5;
  LODWORD(v416) = a4;
  v399 = a3;
  v417 = type metadata accessor for VUStreamingGallery.Label(0);
  v404 = *(v417 - 8);
  v11 = MEMORY[0x1EEE9AC00](v417);
  v389 = &v374 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v388 = &v374 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v402 = &v374 - v15;
  v406 = sub_1D225055C();
  v400 = *(v406 - 8);
  v16 = MEMORY[0x1EEE9AC00](v406);
  v384 = &v374 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v393 = &v374 - v18;
  v19 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v412 = *(v19 - 8);
  v413 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v409 = &v374 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v414 = &v374 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v407 = &v374 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v401 = &v374 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v422 = &v374 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v391 = &v374 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v390 = &v374 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v415 = &v374 - v34;
  v35 = sub_1D225077C();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v374 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v374 - v40;
  v410 = a1;
  v42 = *(a1 + 16);
  swift_beginAccess();
  v43 = 0;
  v44 = 0;
  v45 = *(v42 + 24);
  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v45 + 64);
  v49 = (v46 + 63) >> 6;
  while (2)
  {
    if (v48)
    {
      v50 = v44;
      goto LABEL_10;
    }

    do
    {
      v50 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_114:

        v89 = v375;
        goto LABEL_115;
      }

      if (v50 >= v49)
      {
        goto LABEL_13;
      }

      v48 = *(v45 + 64 + 8 * v50);
      ++v44;
    }

    while (!v48);
    v44 = v50;
LABEL_10:
    v51 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v52 = *(*(*(*(v45 + 56) + ((v50 << 9) | (8 * v51))) + 16) + 16);
    v53 = __OFADD__(v43, v52);
    v43 += v52;
    if (!v53)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_13:
  if (!v43)
  {
    return 0;
  }

  v385 = v7;
  sub_1D225076C();
  v411 = v6;
  v54 = sub_1D225078C();
  v55 = sub_1D2250DAC();
  v56 = sub_1D2250E4C();
  v403 = a2;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v54, v55, v58, "KNNSearch", "", v57, 2u);
    v59 = v57;
    a2 = v403;
    MEMORY[0x1D3899640](v59, -1, -1);
  }

  (*(v36 + 16))(v39, v41, v35);
  sub_1D22507EC();
  swift_allocObject();
  v383 = sub_1D22507DC();
  (*(v36 + 8))(v41, v35);
  v60 = *(a2 + 24);
  v61 = *(a2 + 32);
  v62 = a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding;
  v63 = *(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  v64 = *(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8);
  v65 = *(a2 + 16);
  v394 = v60;
  v395 = v63;
  v405 = v61;
  if (v65 > 1)
  {
    v8 = v411;
  }

  else
  {
    v8 = v411;
    if (!v65)
    {
      sub_1D21A3B64(v60, v61);
      sub_1D21A3B64(v63, v64);

      goto LABEL_22;
    }
  }

  v66 = sub_1D225126C();
  sub_1D21A3B64(v394, v405);
  sub_1D21A3B64(v395, v64);

  if ((v66 & 1) == 0)
  {
    if (*(a2 + 16) <= 1u && *(a2 + 16))
    {
    }

    else
    {
      v102 = sub_1D225126C();

      if ((v102 & 1) == 0)
      {
        if (*(a2 + 16) <= 1u || *(a2 + 16) == 2)
        {
          v162 = sub_1D225126C();

          if ((v162 & 1) == 0)
          {
            v163 = sub_1D225080C();
            v164 = sub_1D2250CDC();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              *v165 = 0;
              _os_log_impl(&dword_1D2171000, v163, v164, "Unable to recognize observation: observation must be a valid VNFaceObservation or VNAnimalObservation", v165, 2u);
              MEMORY[0x1D3899640](v165, -1, -1);
            }

            sub_1D217EE2C();
            swift_allocError();
            *v166 = 1;
            swift_willThrow();
            sub_1D21A1F98(v394, v405);
            sub_1D21A1F98(v395, v64);
            sub_1D21F6300(v8, v383, "KNNSearch");

            return v41;
          }
        }

        else
        {
        }

        v167 = *(a2 + 32);
        if (v167 >> 60 == 15)
        {
          goto LABEL_101;
        }

        v168 = *(a2 + 24);
        v169 = *(v410 + 16);
        swift_beginAccess();
        v170 = *(v169 + 16);
        if (!*(v170 + 16) || (v171 = sub_1D2176DFC(0x2Au), (v172 & 1) == 0))
        {
          v97 = sub_1D225080C();
          v98 = sub_1D2250CDC();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v421[0] = v100;
            *v99 = 136315138;
            v101 = 42;
            goto LABEL_111;
          }

          goto LABEL_112;
        }

        v173 = *(*(v170 + 56) + 8 * v171);
        v174 = *(v410 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D22526E0;
        *(inited + 32) = v168;
        *(inited + 40) = v167;
        v176 = v174[2];
        swift_beginAccess();
        v177 = *(v176 + 3);
        if (!*(v177 + 16) || (v415 = v173, v397 = inited, v178 = sub_1D2176DFC(0x2Au), (v179 & 1) == 0))
        {

          sub_1D21A3B64(v168, v167);

          v161 = MEMORY[0x1E69E7CC0];
          v85 = v407;
          goto LABEL_248;
        }

        v180 = *(*(v177 + 56) + 8 * v178);
        v181 = v415;

        v182 = v168;
        v183 = v181;
        sub_1D21A3B64(v182, v167);
        v184 = qword_1F4DAE3B8;
        type metadata accessor for MinHeap();

        v185 = swift_initStackObject();
        *(v185 + 16) = MEMORY[0x1E69E7CC0];
        v186 = (v185 + 16);
        v187 = v399;
        v398 = v185;
        *(v185 + 24) = v399;
        sub_1D21C7DC8(v187);
        v408 = v180;
        v188 = *(v180 + 16);
        v189 = *(v188 + 2);
        v190 = v385;
        v380 = v174;
        v191 = v397;
        v416 = v189;
        v382 = v64;
        if (!v189)
        {
          goto LABEL_221;
        }

        v379 = v186;

        swift_beginAccess();
        swift_beginAccess();
        v192 = 0;
        v193 = 0;
        v399 = v188;
        *&v396 = v184;
        while (1)
        {
          if (v193 >= *(v188 + 2))
          {
            goto LABEL_307;
          }

          v264 = *&v188[8 * v193 + 32];
          if (v184 == v264)
          {
            goto LABEL_202;
          }

          v265 = *(v191 + 40);
          v266 = 0.0;
          if (v265 >> 60 == 15)
          {
            goto LABEL_208;
          }

          v267 = *(v408 + 24);
          if (v193 >= *(v267 + 16))
          {
            goto LABEL_310;
          }

          v268 = v267 + v192;
          v269 = *(v268 + 40);
          if (v269 >> 60 == 15)
          {
LABEL_208:
            v270 = 1;
          }

          else
          {
            v271 = *(v191 + 32);
            v272 = *(v268 + 32);
            v387 = *(v183 + 48);
            v273 = *(v183 + 56);
            sub_1D21A3B64(v271, v265);
            sub_1D21A3B64(v272, v269);
            v274 = sub_1D223EDC0(v271, v265, v272, v269, v387, v273);
            if (!*(v274 + 2))
            {
              goto LABEL_319;
            }

            v266 = v274[8];

            sub_1D21A1F98(v271, v265);
            sub_1D21A1F98(v272, v269);
            v270 = 0;
            v190 = v385;
            v191 = v397;
          }

          v275 = qword_1F4DAE3E8;
          if (qword_1F4DAE3E8 >> 60 != 15)
          {
            v276 = *(v408 + 40);
            if (v193 >= *(v276 + 16))
            {
              goto LABEL_311;
            }

            v277 = v276 + v192;
            v278 = *(v277 + 40);
            if (v278 >> 60 != 15)
            {
              v279 = qword_1F4DAE3E0;
              v280 = *(v277 + 32);
              v387 = *(v415 + 48);
              LODWORD(v386) = *(v415 + 56);
              sub_1D21A3B64(qword_1F4DAE3E0, qword_1F4DAE3E8);
              sub_1D21A3B64(v280, v278);
              v381 = v280;
              v281 = sub_1D223EDC0(v279, v275, v280, v278, v387, v386);
              if (*(v281 + 2))
              {
                v282 = v281[8];
                sub_1D21A1F98(v279, v275);
                sub_1D21A1F98(v381, v278);

                if (v270)
                {
                  v263 = v282;
                }

                else
                {
                  v263 = (v266 + v282) * 0.5;
                  if (v263 < v266)
                  {
                    v263 = v266;
                  }
                }

                v190 = v385;
                v191 = v397;
                goto LABEL_201;
              }

              sub_1D21A1F98(v279, v275);
              sub_1D21A1F98(v381, v278);

              v190 = v385;
              v191 = v397;
            }
          }

          if (v270)
          {
            v263 = 0.0;
          }

          else
          {
            v263 = v266;
          }

LABEL_201:
          v184 = v396;
          v188 = v399;
          sub_1D220FA74(v264, v263);
          v183 = v415;
LABEL_202:
          ++v193;
          v192 += 16;
          if (v416 == v193)
          {

            v64 = v382;
            v186 = v379;
LABEL_221:
            v421[0] = *v186;
            v283 = v421[0];
            swift_bridgeObjectRetain_n();
            sub_1D21C7E2C(v421);
            v241 = v190;
            if (v190)
            {
              goto LABEL_321;
            }

            v399 = v283;

            v284 = v421[0];
            v285 = *(v421[0] + 2);
            v385 = 0;
            if (v285)
            {
              v421[0] = MEMORY[0x1E69E7CC0];
              sub_1D21AF64C(v285);
              v286 = 40;
              v287 = v421[0];
              v288 = v285;
              do
              {
                v289 = *&v284[v286];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1D21AF75C(0, *(v287 + 2) + 1, 1);
                  v287 = v421[0];
                }

                v291 = *(v287 + 2);
                v290 = *(v287 + 3);
                if (v291 >= v290 >> 1)
                {
                  sub_1D21AF75C((v290 > 1), v291 + 1, 1);
                  v287 = v421[0];
                }

                *(v287 + 2) = v291 + 1;
                *&v287[4 * v291 + 32] = v289;
                v286 += 16;
                --v288;
              }

              while (v288);
              v421[0] = MEMORY[0x1E69E7CC0];
              sub_1D21AF664(v285);
              v292 = 32;
              v293 = v421[0];
              do
              {
                v294 = *&v284[v292];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1D21AF7AC(0, *(v293 + 2) + 1, 1);
                  v293 = v421[0];
                }

                v296 = *(v293 + 2);
                v295 = *(v293 + 3);
                if (v296 >= v295 >> 1)
                {
                  sub_1D21AF7AC((v295 > 1), v296 + 1, 1);
                  v293 = v421[0];
                }

                *(v293 + 2) = v296 + 1;
                *&v293[8 * v296 + 32] = v294;
                v292 += 16;
                --v285;
              }

              while (v285);

              v64 = v382;
            }

            else
            {

              v293 = MEMORY[0x1E69E7CC0];
              v287 = MEMORY[0x1E69E7CC0];
            }

            v297 = *(v287 + 2);
            v85 = v407;
            if (v297)
            {
              if (v297 > *(v293 + 2))
              {
                goto LABEL_314;
              }

              v298 = 0;
              v161 = MEMORY[0x1E69E7CC0];
              v416 = *(v287 + 2);
              do
              {
                v299 = *&v293[8 * v298 + 32];
                v300 = *&v287[4 * v298 + 32];
                v301 = v161;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v301 = sub_1D21964C0(0, *(v161 + 2) + 1, 1, v161);
                }

                v303 = *(v301 + 2);
                v302 = *(v301 + 3);
                if (v303 >= v302 >> 1)
                {
                  v301 = sub_1D21964C0((v302 > 1), v303 + 1, 1, v301);
                }

                ++v298;
                v161 = v301;
                *(v301 + 2) = v303 + 1;
                v304 = &v301[16 * v303];
                *(v304 + 4) = v299;
                *(v304 + 10) = v300;
                v85 = v407;
              }

              while (v416 != v298);

              v64 = v382;
            }

            else
            {

              v161 = MEMORY[0x1E69E7CC0];
            }

            v8 = v411;
LABEL_248:
            v219 = &qword_1F4DAE3E0;
LABEL_249:
            sub_1D2176170(v219, &qword_1EC6D23D0);
LABEL_250:
            v382 = v64;
            v305 = v161;
            v306 = *(v161 + 2);
            v379 = v305;
            if (!v306)
            {
              v41 = MEMORY[0x1E69E7CC0];
LABEL_300:

              sub_1D21A1F98(v395, v382);
              sub_1D21A1F98(v394, v405);
              goto LABEL_301;
            }

            v408 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
            swift_beginAccess();
            v415 = v404 + 56;
            v378 = (v400 + 8);
            v386 = (v400 + 56);
            v387 = (v404 + 48);
            v380 = (v400 + 48);
            v381 = (v400 + 32);
            v41 = MEMORY[0x1E69E7CC0];
            v307 = v305 + 40;
            *&v308 = 134217984;
            v396 = v308;
            while (2)
            {
              v416 = v41;
              v309 = *(v307 - 1);
              v310 = *v307;
              v311 = *(v8 + 40);
              if (*(v311 + 16) && (v312 = sub_1D2176758(*(v307 - 1)), (v313 & 1) != 0))
              {
                v314 = *(v311 + 56);
                v315 = v404;
                v316 = v422;
                sub_1D220C5D4(v314 + *(v404 + 72) * v312, v422, type metadata accessor for VUStreamingGallery.Label);
                (*(v315 + 56))(v316, 0, 1, v417);
                if (*(v403 + 16) <= 1u && !*(v403 + 16))
                {

                  goto LABEL_266;
                }

                v329 = sub_1D225126C();

                if (v329)
                {
LABEL_266:

                  v330 = sub_1D21CEF4C(v309);

                  v331 = 2;
                  if ((v330 & 1) != 0 && v405 >> 60 != 15)
                  {
                    v331 = (v330 & 0x100) == 0 || v382 >> 60 == 15;
                  }
                }

                else
                {
                  v331 = 3;
                }

                v333 = v414;
                sub_1D2174DA8(v422, v414, &qword_1EC6D2C08);
                v334 = v413;
                v335 = v413[8];

                sub_1D21CCDF8(v309, v333 + v335);

                v336 = v334[6];
                v337 = type metadata accessor for VUStreamingGallery.Tag(0);
                v338 = *(v337 - 8);
                v339 = *(v338 + 56);
                v397 = v336;
                v398 = v338 + 56;
                v399 = v339;
                v400 = v337;
                (v339)(v333 + v336, 1, 1);
                *(v333 + v334[5]) = v310;
                *(v333 + v334[7]) = v331;

                v340 = sub_1D21CBA6C();

                if (!*(v340 + 16) || (v341 = sub_1D2176758(v309), (v342 & 1) == 0))
                {

                  v8 = v411;
                  v345 = v401;
                  sub_1D21DDD7C(v309, *(v411 + 40), v401);
                  if ((*v387)(v345, 1, v417))
                  {
                    sub_1D2176170(v345, &qword_1EC6D2C08);
                    v346 = v402;
                    (*v386)(v402, 1, 1, v406);
                    v85 = v407;
                  }

                  else
                  {
                    v347 = v388;
                    sub_1D220C5D4(v345, v388, type metadata accessor for VUStreamingGallery.Label);
                    sub_1D2176170(v345, &qword_1EC6D2C08);
                    v348 = v347;
                    v349 = v389;
                    sub_1D220C50C(v348, v389, type metadata accessor for VUStreamingGallery.Label);
                    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                    v85 = v407;
                    if (EnumCaseMultiPayload == 1)
                    {
                      v346 = v402;
                      v351 = v349;
                      v352 = v406;
                      (*v381)(v402, v351, v406);
                      v353 = 0;
                    }

                    else
                    {
                      v353 = 1;
                      v346 = v402;
                      v352 = v406;
                    }

                    (*v386)(v346, v353, 1, v352);
                    if ((*v380)(v346, 1, v352) != 1)
                    {
                      v359 = *v381;
                      v360 = v384;
                      v361 = v406;
                      (*v381)(v384, v402, v406);
                      v362 = v414;
                      v363 = v397;
                      sub_1D2176170(v414 + v397, &qword_1EC6D2888);
                      v359((v362 + v363), v360, v361);
                      v364 = v400;
                      swift_storeEnumTagMultiPayload();
                      v365 = v362 + v363;
                      v8 = v411;
                      v85 = v407;
                      (v399)(v365, 0, 1, v364);
                      v41 = v416;
                      goto LABEL_294;
                    }
                  }

                  sub_1D2176170(v346, &qword_1EC6D2110);
                  v41 = v416;
                  goto LABEL_294;
                }

                v343 = *(*(v340 + 56) + 8 * v341);

                v344 = v390;
                if (v392)
                {
                  sub_1D21CCBD4(v309, v390);
                }

                else
                {
                  sub_1D21CC964(v343, v390);
                }

                v85 = v407;
                v41 = v416;

                v354 = v344;
                v355 = v391;
                sub_1D21A6938(v354, v391, &qword_1EC6D2B88);
                v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
                if ((*(*(v356 - 8) + 48))(v355, 1, v356) == 1)
                {
                  sub_1D2176170(v355, &qword_1EC6D2B88);
                }

                else
                {
                  v357 = *(v355 + *(v356 + 48));
                  v358 = *v381;
                  (*v381)(v393, v355, v406);
                  if (v357 == 1)
                  {
                    (*v378)(v393, v406);
                  }

                  else
                  {
                    v366 = v414;
                    v367 = v397;
                    sub_1D2176170(v414 + v397, &qword_1EC6D2888);
                    v358((v366 + v367), v393, v406);
                    v368 = v400;
                    swift_storeEnumTagMultiPayload();
                    v369 = v366 + v367;
                    v85 = v407;
                    (v399)(v369, 0, 1, v368);
                  }
                }

                v8 = v411;
LABEL_294:
                sub_1D220C5D4(v414, v409, type metadata accessor for VUStreamingGallery.Recognition);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_1D2196498(0, *(v41 + 2) + 1, 1, v41);
                }

                v371 = *(v41 + 2);
                v370 = *(v41 + 3);
                if (v371 >= v370 >> 1)
                {
                  v41 = sub_1D2196498(v370 > 1, v371 + 1, 1, v41);
                }

                sub_1D2176170(v422, &qword_1EC6D2C08);
                *(v41 + 2) = v371 + 1;
                sub_1D220C50C(v409, &v41[((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * v371], type metadata accessor for VUStreamingGallery.Recognition);
                sub_1D220C574(v414, type metadata accessor for VUStreamingGallery.Recognition);
              }

              else
              {
                v317 = *v415;
                (*v415)(v422, 1, 1, v417);
                v318 = sub_1D225080C();
                v319 = sub_1D2250CDC();
                if (os_log_type_enabled(v318, v319))
                {
                  v320 = swift_slowAlloc();
                  *v320 = v396;
                  *(v320 + 4) = v309;
                  _os_log_impl(&dword_1D2171000, v318, v319, "(rdar://109365063) identifier %ld not in observationTrackMap", v320, 0xCu);
                  v321 = v320;
                  v8 = v411;
                  MEMORY[0x1D3899640](v321, -1, -1);
                }

                v317(v85, 1, 1, v417);
                v322 = v413;
                v323 = v413[8];
                v324 = sub_1D22504FC();
                (*(*(v324 - 8) + 56))(v85 + v323, 1, 1, v324);
                v325 = v322[6];
                v326 = type metadata accessor for VUStreamingGallery.Tag(0);
                (*(*(v326 - 8) + 56))(v85 + v325, 1, 1, v326);
                *(v85 + v322[5]) = v310;
                *(v85 + v322[7]) = 3;
                v41 = v416;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_1D2196498(0, *(v41 + 2) + 1, 1, v41);
                }

                v328 = *(v41 + 2);
                v327 = *(v41 + 3);
                if (v328 >= v327 >> 1)
                {
                  v41 = sub_1D2196498(v327 > 1, v328 + 1, 1, v41);
                }

                sub_1D2176170(v422, &qword_1EC6D2C08);
                *(v41 + 2) = v328 + 1;
                sub_1D220C50C(v85, &v41[((*(v412 + 80) + 32) & ~*(v412 + 80)) + *(v412 + 72) * v328], type metadata accessor for VUStreamingGallery.Recognition);
              }

              v307 += 4;
              if (!--v306)
              {
                goto LABEL_300;
              }

              continue;
            }
          }
        }
      }
    }

    v103 = *(a2 + 32);
    if (v103 >> 60 == 15)
    {
LABEL_101:
      sub_1D21A1F98(v394, v405);
      sub_1D21A1F98(v395, v64);
      v41 = 0;
LABEL_301:
      sub_1D21F6300(v8, v383, "KNNSearch");

      return v41;
    }

    v104 = *(a2 + 24);
    v105 = *(v410 + 16);
    swift_beginAccess();
    v106 = *(v105 + 16);
    if (!*(v106 + 16) || (v107 = sub_1D2176DFC(0x3Fu), (v108 & 1) == 0))
    {
      v97 = sub_1D225080C();
      v98 = sub_1D2250CDC();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v421[0] = v100;
        *v99 = 136315138;
        v101 = 63;
        goto LABEL_111;
      }

LABEL_112:

      v161 = MEMORY[0x1E69E7CC0];
      v8 = v411;
      v85 = v407;
      goto LABEL_250;
    }

    v109 = *(*(v106 + 56) + 8 * v107);
    v110 = *(v410 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C8);
    v111 = swift_initStackObject();
    *(v111 + 16) = xmmword_1D22526E0;
    *(v111 + 32) = v104;
    *(v111 + 40) = v103;
    v112 = v110[2];
    swift_beginAccess();
    v113 = *(v112 + 3);
    if (!*(v113 + 16) || (v415 = v109, v397 = v111, v114 = sub_1D2176DFC(0x3Fu), (v115 & 1) == 0))
    {

      sub_1D21A3B64(v104, v103);

      v161 = MEMORY[0x1E69E7CC0];
      v85 = v407;
LABEL_196:
      v219 = &qword_1F4DAE388;
      goto LABEL_249;
    }

    v116 = MEMORY[0x1E69E7CC0];
    v117 = *(*(v113 + 56) + 8 * v114);
    v118 = v415;

    v119 = v104;
    v120 = v118;
    sub_1D21A3B64(v119, v103);
    v121 = qword_1F4DAE360;
    type metadata accessor for MinHeap();

    v122 = swift_initStackObject();
    *(v122 + 16) = v116;
    v123 = (v122 + 16);
    v124 = v399;
    v398 = v122;
    *(v122 + 24) = v399;
    sub_1D21C7DC8(v124);
    v408 = v117;
    v125 = *(v117 + 16);
    v126 = *(v125 + 2);
    v127 = v385;
    v380 = v110;
    v128 = v397;
    v416 = v126;
    v382 = v64;
    if (!v126)
    {
      goto LABEL_168;
    }

    v379 = v123;

    swift_beginAccess();
    swift_beginAccess();
    v129 = 0;
    v130 = 0;
    v399 = v125;
    *&v396 = v121;
    while (1)
    {
      if (v130 >= *(v125 + 2))
      {
        goto LABEL_304;
      }

      v221 = *&v125[8 * v130 + 32];
      if (v121 == v221)
      {
        goto LABEL_149;
      }

      v222 = *(v128 + 40);
      v223 = 0.0;
      if (v222 >> 60 == 15)
      {
        goto LABEL_155;
      }

      v224 = *(v408 + 24);
      if (v130 >= *(v224 + 16))
      {
        goto LABEL_308;
      }

      v225 = v224 + v129;
      v226 = *(v225 + 40);
      if (v226 >> 60 == 15)
      {
LABEL_155:
        v227 = 1;
      }

      else
      {
        v228 = *(v128 + 32);
        v229 = *(v225 + 32);
        v387 = *(v120 + 48);
        v230 = *(v120 + 56);
        sub_1D21A3B64(v228, v222);
        sub_1D21A3B64(v229, v226);
        v231 = sub_1D223EDC0(v228, v222, v229, v226, v387, v230);
        if (!*(v231 + 2))
        {
          goto LABEL_318;
        }

        v223 = v231[8];

        sub_1D21A1F98(v228, v222);
        sub_1D21A1F98(v229, v226);
        v227 = 0;
        v127 = v385;
        v128 = v397;
      }

      v232 = qword_1F4DAE390;
      if (qword_1F4DAE390 >> 60 != 15)
      {
        v233 = *(v408 + 40);
        if (v130 >= *(v233 + 16))
        {
          goto LABEL_309;
        }

        v234 = v233 + v129;
        v235 = *(v234 + 40);
        if (v235 >> 60 != 15)
        {
          v236 = qword_1F4DAE388;
          v237 = *(v234 + 32);
          v386 = *(v415 + 48);
          LODWORD(v381) = *(v415 + 56);
          sub_1D21A3B64(qword_1F4DAE388, qword_1F4DAE390);
          sub_1D21A3B64(v237, v235);
          v387 = v237;
          v238 = sub_1D223EDC0(v236, v232, v237, v235, v386, v381);
          if (*(v238 + 2))
          {
            v239 = v238[8];
            sub_1D21A1F98(v236, v232);
            sub_1D21A1F98(v387, v235);

            if (v227)
            {
              v220 = v239;
            }

            else
            {
              v220 = (v223 + v239) * 0.5;
              if (v220 < v223)
              {
                v220 = v223;
              }
            }

            v127 = v385;
            v128 = v397;
            goto LABEL_148;
          }

          sub_1D21A1F98(v236, v232);
          sub_1D21A1F98(v387, v235);

          v127 = v385;
          v128 = v397;
        }
      }

      if (v227)
      {
        v220 = 0.0;
      }

      else
      {
        v220 = v223;
      }

LABEL_148:
      v121 = v396;
      v125 = v399;
      sub_1D220FA74(v221, v220);
      v120 = v415;
LABEL_149:
      ++v130;
      v129 += 16;
      if (v416 == v130)
      {

        v64 = v382;
        v123 = v379;
LABEL_168:
        v421[0] = *v123;
        v240 = v421[0];
        swift_bridgeObjectRetain_n();
        sub_1D21C7E2C(v421);
        v241 = v127;
        if (!v127)
        {
          v399 = v240;

          v242 = v421[0];
          v243 = *(v421[0] + 2);
          v385 = 0;
          if (v243)
          {
            v421[0] = MEMORY[0x1E69E7CC0];
            sub_1D21AF64C(v243);
            v244 = 40;
            v245 = v421[0];
            v246 = v243;
            do
            {
              v247 = *&v242[v244];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D21AF75C(0, *(v245 + 2) + 1, 1);
                v245 = v421[0];
              }

              v249 = *(v245 + 2);
              v248 = *(v245 + 3);
              if (v249 >= v248 >> 1)
              {
                sub_1D21AF75C((v248 > 1), v249 + 1, 1);
                v245 = v421[0];
              }

              *(v245 + 2) = v249 + 1;
              *&v245[4 * v249 + 32] = v247;
              v244 += 16;
              --v246;
            }

            while (v246);
            v421[0] = MEMORY[0x1E69E7CC0];
            sub_1D21AF664(v243);
            v250 = 32;
            v251 = v421[0];
            do
            {
              v252 = *&v242[v250];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1D21AF7AC(0, *(v251 + 2) + 1, 1);
                v251 = v421[0];
              }

              v254 = *(v251 + 2);
              v253 = *(v251 + 3);
              if (v254 >= v253 >> 1)
              {
                sub_1D21AF7AC((v253 > 1), v254 + 1, 1);
                v251 = v421[0];
              }

              *(v251 + 2) = v254 + 1;
              *&v251[8 * v254 + 32] = v252;
              v250 += 16;
              --v243;
            }

            while (v243);

            v64 = v382;
          }

          else
          {

            v251 = MEMORY[0x1E69E7CC0];
            v245 = MEMORY[0x1E69E7CC0];
          }

          v255 = *(v245 + 2);
          v85 = v407;
          if (v255)
          {
            if (v255 > *(v251 + 2))
            {
              goto LABEL_313;
            }

            v256 = 0;
            v161 = MEMORY[0x1E69E7CC0];
            v416 = *(v245 + 2);
            do
            {
              v257 = *&v251[8 * v256 + 32];
              v258 = *&v245[4 * v256 + 32];
              v259 = v161;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v259 = sub_1D21964C0(0, *(v161 + 2) + 1, 1, v161);
              }

              v261 = *(v259 + 2);
              v260 = *(v259 + 3);
              if (v261 >= v260 >> 1)
              {
                v259 = sub_1D21964C0((v260 > 1), v261 + 1, 1, v259);
              }

              ++v256;
              v161 = v259;
              *(v259 + 2) = v261 + 1;
              v262 = &v259[16 * v261];
              *(v262 + 4) = v257;
              *(v262 + 10) = v258;
              v85 = v407;
            }

            while (v416 != v256);

            v64 = v382;
          }

          else
          {

            v161 = MEMORY[0x1E69E7CC0];
          }

          v8 = v411;
          goto LABEL_196;
        }

LABEL_321:
        v373 = v241;
        goto LABEL_322;
      }
    }
  }

LABEL_22:
  if (v416)
  {
    v67 = v394;
    v68 = v395;
    v69 = v405;
    if (*(a2 + 32) >> 60 != 15)
    {
      if (*(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence + 4))
      {
        goto LABEL_315;
      }

      if (*(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence) < 0.6)
      {
        sub_1D21A1F98(v394, v405);
        v67 = 0;
        v69 = 0xF000000000000000;
      }
    }

    if (*(v62 + 8) >> 60 != 15)
    {
      if (*(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence + 4))
      {
        goto LABEL_316;
      }

      if (*(a2 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence) < 0.6)
      {
        v70 = v67;
        v71 = v68;
        v72 = v69;
        sub_1D21A1F98(v71, v64);
        v67 = v70;
        v69 = v72;
        v68 = 0;
        v64 = 0xF000000000000000;
      }
    }
  }

  else
  {
    v67 = v394;
    v68 = v395;
    v69 = v405;
  }

  if (v69 >> 60 == 15 && v64 >> 60 == 15)
  {
    v41 = 0;
    goto LABEL_301;
  }

  v394 = v67;
  v395 = v68;
  v405 = v69;
  v73 = *(v410 + 16);
  swift_beginAccess();
  v74 = *(v73 + 16);
  if (!*(v74 + 16) || (v75 = sub_1D2176DFC(2u), (v76 & 1) == 0))
  {
    v97 = sub_1D225080C();
    v98 = sub_1D2250CDC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v421[0] = v100;
      *v99 = 136315138;
      v101 = 2;
LABEL_111:
      v420 = v101;
      v194 = sub_1D225125C();
      v196 = sub_1D21761D0(v194, v195, v421);

      *(v99 + 4) = v196;
      _os_log_impl(&dword_1D2171000, v97, v98, "No parameters in store for type %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x1D3899640](v100, -1, -1);
      MEMORY[0x1D3899640](v99, -1, -1);
      goto LABEL_112;
    }

    goto LABEL_112;
  }

  v398 = *(*(v74 + 56) + 8 * v75);
  v77 = *(v410 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C8);
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_1D22526E0;
  v80 = v394;
  v79 = v395;
  v81 = v405;
  *(v78 + 32) = v394;
  *(v78 + 40) = v81;
  v418 = v79;
  v419 = v64;
  v82 = *(v77 + 16);
  swift_beginAccess();
  v83 = *(v82 + 24);
  if (!*(v83 + 16))
  {

    sub_1D21A3B64(v80, v81);
    sub_1D21A3B64(v79, v64);

    v161 = MEMORY[0x1E69E7CC0];
    v85 = v407;
LABEL_143:
    v219 = &v418;
    goto LABEL_249;
  }

  *&v396 = v78;
  v84 = sub_1D2176DFC(2u);
  v85 = v407;
  if ((v86 & 1) == 0)
  {

    sub_1D21A3B64(v394, v405);
    sub_1D21A3B64(v395, v64);

    v161 = MEMORY[0x1E69E7CC0];
    goto LABEL_143;
  }

  v87 = *(*(v83 + 56) + 8 * v84);

  sub_1D21A3B64(v394, v405);
  sub_1D21A3B64(v395, v64);
  v397 = qword_1F4DAE338;
  type metadata accessor for MinHeap();

  v88 = swift_initStackObject();
  v88[2] = MEMORY[0x1E69E7CC0];
  v89 = (v88 + 2);
  v90 = v399;
  v387 = v88;
  v88[3] = v399;
  sub_1D21C7DC8(v90);
  v399 = v87;
  v91 = *(v87 + 16);
  v92 = v91[2];
  v376 = v77;
  v416 = v92;
  v382 = v64;
  if (!v92)
  {
LABEL_115:
    v197 = *v89;
    v421[0] = v197;
    swift_bridgeObjectRetain_n();
    v198 = v385;
    sub_1D21C7E2C(v421);
    v385 = v198;
    if (v198)
    {
      goto LABEL_320;
    }

    v416 = v197;

    v199 = v421[0];
    v200 = *(v421[0] + 2);
    if (v200)
    {
      v421[0] = MEMORY[0x1E69E7CC0];
      sub_1D21AF64C(v200);
      v201 = 40;
      v202 = v421[0];
      v203 = v200;
      do
      {
        v204 = *&v199[v201];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D21AF75C(0, *(v202 + 2) + 1, 1);
          v202 = v421[0];
        }

        v206 = *(v202 + 2);
        v205 = *(v202 + 3);
        if (v206 >= v205 >> 1)
        {
          sub_1D21AF75C((v205 > 1), v206 + 1, 1);
          v202 = v421[0];
        }

        *(v202 + 2) = v206 + 1;
        *&v202[4 * v206 + 32] = v204;
        v201 += 16;
        --v203;
      }

      while (v203);
      v421[0] = MEMORY[0x1E69E7CC0];
      sub_1D21AF664(v200);
      v207 = 32;
      v208 = v421[0];
      do
      {
        v209 = *&v199[v207];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D21AF7AC(0, *(v208 + 2) + 1, 1);
          v208 = v421[0];
        }

        v211 = *(v208 + 2);
        v210 = *(v208 + 3);
        if (v211 >= v210 >> 1)
        {
          sub_1D21AF7AC((v210 > 1), v211 + 1, 1);
          v208 = v421[0];
        }

        *(v208 + 2) = v211 + 1;
        *&v208[8 * v211 + 32] = v209;
        v207 += 16;
        --v200;
        v8 = v411;
      }

      while (v200);
    }

    else
    {

      v208 = MEMORY[0x1E69E7CC0];
      v202 = MEMORY[0x1E69E7CC0];
    }

    v212 = *(v202 + 2);
    if (v212)
    {
      if (v212 > *(v208 + 2))
      {
        goto LABEL_312;
      }

      v213 = 0;
      v161 = MEMORY[0x1E69E7CC0];
      do
      {
        v214 = *&v208[8 * v213 + 32];
        v215 = *&v202[4 * v213 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = sub_1D21964C0(0, *(v161 + 2) + 1, 1, v161);
        }

        v217 = *(v161 + 2);
        v216 = *(v161 + 3);
        if (v217 >= v216 >> 1)
        {
          v161 = sub_1D21964C0((v216 > 1), v217 + 1, 1, v161);
        }

        ++v213;
        *(v161 + 2) = v217 + 1;
        v218 = &v161[16 * v217];
        *(v218 + 4) = v214;
        *(v218 + 10) = v215;
        v8 = v411;
      }

      while (v212 != v213);
    }

    else
    {

      v161 = MEMORY[0x1E69E7CC0];
    }

    v85 = v407;
    v64 = v382;
    goto LABEL_143;
  }

  v375 = v89;

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v93 = 0;
  v94 = 0;
  v95 = v415;
  v96 = v397;
  v386 = v91;
  while (v94 < v91[2])
  {
    v131 = v91[v94 + 4];
    if (v96 != v131)
    {
      if ((v408 & 1) == 0)
      {
        goto LABEL_70;
      }

      v132 = *(v399 + 9);
      if (*(v132 + 16))
      {
        v133 = sub_1D2176758(v91[v94 + 4]);
        if (v134)
        {
          v135 = v133;
          v136 = *(v132 + 56);
          v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
          v137 = *(v381 - 1);
          v138 = v136 + *(v137 + 72) * v135;
          v8 = v411;
          sub_1D2174DA8(v138, v415, &qword_1EC6D2968);
          (*(v137 + 56))(v415, 0, 1, v381);
          v95 = v415;
        }

        else
        {
          v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
          (*(*(v140 - 8) + 56))(v95, 1, 1, v140);
        }

        v96 = v397;
      }

      else
      {
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
        (*(*(v139 - 8) + 56))(v95, 1, 1, v139);
      }

      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
      if ((*(*(v141 - 8) + 48))(v95, 1, v141))
      {
        sub_1D2176170(v95, &qword_1EC6D2B88);
        v91 = v386;
      }

      else
      {
        v142 = *(v95 + *(v141 + 48));
        sub_1D2176170(v95, &qword_1EC6D2B88);
        v91 = v386;
        if (!v142)
        {
LABEL_70:
          v143 = *(v396 + 40);
          v144 = 0.0;
          if (v143 >> 60 == 15)
          {
            goto LABEL_73;
          }

          v145 = *(v399 + 3);
          if (v94 >= *(v145 + 16))
          {
            goto LABEL_305;
          }

          v146 = v145 + v93;
          v147 = *(v146 + 40);
          if (v147 >> 60 == 15)
          {
LABEL_73:
            v148 = 1;
          }

          else
          {
            v149 = *(v396 + 32);
            v150 = *(v146 + 32);
            v381 = *(v398 + 48);
            LODWORD(v380) = *(v398 + 56);
            sub_1D21A3B64(v149, v143);
            sub_1D21A3B64(v150, v147);
            v151 = sub_1D223EDC0(v149, v143, v150, v147, v381, v380);
            if (!*(v151 + 2))
            {
              goto LABEL_317;
            }

            v144 = v151[8];

            sub_1D21A1F98(v149, v143);
            sub_1D21A1F98(v150, v147);
            v148 = 0;
            v8 = v411;
          }

          v152 = v419;
          if (v419 >> 60 != 15)
          {
            v153 = *(v399 + 5);
            if (v94 >= *(v153 + 16))
            {
              goto LABEL_306;
            }

            v154 = v153 + v93;
            v155 = *(v154 + 40);
            if (v155 >> 60 != 15)
            {
              LODWORD(v379) = v148;
              v156 = v418;
              v157 = *(v154 + 32);
              v378 = *(v398 + 48);
              v377 = *(v398 + 56);
              sub_1D21A3B64(v418, v419);
              sub_1D21A3B64(v157, v155);
              v380 = v156;
              v381 = v157;
              v158 = sub_1D223EDC0(v156, v152, v157, v155, v378, v377);
              if (*(v158 + 2))
              {
                v159 = v158[8];
                sub_1D21A1F98(v380, v152);
                sub_1D21A1F98(v381, v155);

                if (v379)
                {
                  v160 = v159;
                }

                else
                {
                  v160 = (v144 + v159) * 0.5;
                  if (v160 < v144)
                  {
                    v160 = v144;
                  }
                }

                v8 = v411;
                goto LABEL_86;
              }

              sub_1D21A1F98(v380, v152);
              sub_1D21A1F98(v381, v155);

              v8 = v411;
              v148 = v379;
            }
          }

          if (v148)
          {
            v160 = 0.0;
          }

          else
          {
            v160 = v144;
          }

LABEL_86:
          v96 = v397;
          sub_1D220FA74(v131, v160);
          v95 = v415;
        }
      }
    }

    ++v94;
    v93 += 16;
    if (v416 == v94)
    {
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
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
LABEL_316:
  __break(1u);
LABEL_317:

  __break(1u);
LABEL_318:

  __break(1u);
LABEL_319:

  __break(1u);
LABEL_320:
  v373 = v385;
LABEL_322:

  __break(1u);
  return result;
}

uint64_t sub_1D21EA69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v130) = a4;
  v132 = a3;
  v129 = a1;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C30);
  v8 = MEMORY[0x1EEE9AC00](v137);
  v136 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v135 = &v120 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v120 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v131 = &v120 - v14;
  v133 = type metadata accessor for VUStreamingGallery.Label(0);
  v142 = *(v133 - 8);
  v15 = MEMORY[0x1EEE9AC00](v133);
  v126 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v124 = &v120 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v125 = (&v120 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v120 - v21;
  v127 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v140 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v141 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D225077C();
  v128 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v120 - v27;
  swift_beginAccess();

  v30 = sub_1D21DF870(v29);
  v31 = sub_1D21D3518(a2, v30);

  if ((v31 & 1) == 0)
  {
    return sub_1D220C5D4(a2, a5, type metadata accessor for VUStreamingGallery.Label);
  }

  v122 = a2;
  v123 = a5;
  v32 = *(*(v5 + 24) + 16);
  swift_beginAccess();
  v33 = 0;
  v34 = 0;
  v35 = *(v32 + 24);
  v36 = 1 << *(v35 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v35 + 64);
  v39 = (v36 + 63) >> 6;
  a2 = v139;
  while (v38)
  {
    v40 = v34;
LABEL_11:
    v41 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v42 = *(*(*(*(v35 + 56) + ((v40 << 9) | (8 * v41))) + 16) + 16);
    v43 = __OFADD__(v33, v42);
    v33 += v42;
    if (v43)
    {
      __break(1u);
      return sub_1D220C5D4(a2, a5, type metadata accessor for VUStreamingGallery.Label);
    }
  }

  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v35 + 64 + 8 * v40);
    ++v34;
    if (v38)
    {
      v34 = v40;
      goto LABEL_11;
    }
  }

  if (!v33)
  {
    return sub_1D220C5D4(v122, v123, type metadata accessor for VUStreamingGallery.Label);
  }

  sub_1D225076C();
  v121 = v5;
  v45 = sub_1D225078C();
  v46 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v45, v46, v48, "verifyLabel", "", v47, 2u);
    a2 = v139;
    MEMORY[0x1D3899640](v47, -1, -1);
  }

  v49 = v128;
  (*(v128 + 16))(v26, v28, v23);
  sub_1D22507EC();
  swift_allocObject();
  v50 = sub_1D22507DC();
  (*(v49 + 8))(v28, v23);
  v51 = v121;

  v53 = sub_1D21E77A8(v52, v129, v132, v130 & 1, 0, 0);
  if (a2)
  {

    v54 = v51;
LABEL_73:
    sub_1D21F6300(v54, v50, "verifyLabel");
  }

  v55 = v53;

  if (!v55)
  {
    sub_1D220C5D4(v122, v123, type metadata accessor for VUStreamingGallery.Label);
    v54 = v121;
    goto LABEL_73;
  }

  v120 = v50;
  v139 = 0;
  v56 = sub_1D21A2904(MEMORY[0x1E69E7CC0]);
  v57 = *(v55 + 16);
  if (v57)
  {
    v58 = 0;
    v59 = *(v140 + 80);
    v132 = *(v127 + 20);
    v60 = v55 + ((v59 + 32) & ~v59);
    v129 = v55;
    v130 = (v142 + 48);
    v61 = v131;
    v128 = v57;
    while (v58 < *(v55 + 16))
    {
      v62 = v141;
      sub_1D220C5D4(v60 + *(v140 + 72) * v58, v141, type metadata accessor for VUStreamingGallery.Recognition);
      if (*&v132[v62] <= 0.85)
      {
        sub_1D220C574(v62, type metadata accessor for VUStreamingGallery.Recognition);
      }

      else
      {
        sub_1D2174DA8(v62, v61, &qword_1EC6D2C08);
        if ((*v130)(v61, 1, v133) == 1)
        {
          sub_1D220C574(v62, type metadata accessor for VUStreamingGallery.Recognition);
          sub_1D2176170(v61, &qword_1EC6D2C08);
          v57 = v128;
          v55 = v129;
        }

        else
        {
          v63 = v61;
          v64 = v138;
          sub_1D220C50C(v63, v138, type metadata accessor for VUStreamingGallery.Label);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v56;
          v66 = sub_1D2196E40(v64);
          v68 = v56[2];
          v69 = (v67 & 1) == 0;
          v43 = __OFADD__(v68, v69);
          v70 = v68 + v69;
          if (v43)
          {
            goto LABEL_81;
          }

          v71 = v67;
          if (v56[3] >= v70)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v79 = v66;
              sub_1D21B8370();
              v66 = v79;
            }
          }

          else
          {
            sub_1D21B388C(v70, isUniquelyReferenced_nonNull_native);
            v66 = sub_1D2196E40(v138);
            if ((v71 & 1) != (v72 & 1))
            {
              goto LABEL_85;
            }
          }

          v57 = v128;
          v55 = v129;
          v56 = v143;
          if ((v71 & 1) == 0)
          {
            *(v143 + 8 * (v66 >> 6) + 64) |= 1 << v66;
            v73 = v66;
            sub_1D220C5D4(v138, v56[6] + *(v142 + 72) * v66, type metadata accessor for VUStreamingGallery.Label);
            *(v56[7] + 8 * v73) = 0;
            v74 = v56[2];
            v43 = __OFADD__(v74, 1);
            v75 = v74 + 1;
            if (v43)
            {
              goto LABEL_83;
            }

            v66 = v73;
            v56[2] = v75;
          }

          v76 = v56[7];
          v77 = *(v76 + 8 * v66);
          v43 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v43)
          {
            goto LABEL_82;
          }

          *(v76 + 8 * v66) = v78;
          sub_1D220C574(v138, type metadata accessor for VUStreamingGallery.Label);
          sub_1D220C574(v141, type metadata accessor for VUStreamingGallery.Recognition);
          v61 = v131;
        }
      }

      if (v57 == ++v58)
      {
        goto LABEL_41;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_41:

  if (!v56[2])
  {

    v111 = v122;
    v112 = v124;
    sub_1D220C5D4(v122, v124, type metadata accessor for VUStreamingGallery.Label);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v114 = v125;
    sub_1D21F5388(v111, v125);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D220C574(v112, type metadata accessor for VUStreamingGallery.Label);
    }

    sub_1D220C50C(v114, v123, type metadata accessor for VUStreamingGallery.Label);
    v54 = v121;
    goto LABEL_72;
  }

  v81 = sub_1D21F4E58(v80);
  v83 = v82;

  v84 = v139;
  v85 = sub_1D21FA960(v56, v81, v83 & 1);
  v139 = v84;

  v86 = *(v85 + 16);
  if (v86)
  {
    v143 = MEMORY[0x1E69E7CC0];
    sub_1D21AFB4C(0, v86, 0);
    v141 = v143;
    v87 = v85 + 64;
    v88 = sub_1D2250EBC();
    v89 = 0;
    v131 = (v85 + 72);
    v90 = v126;
    v132 = v86;
    v133 = v85 + 64;
    while ((v88 & 0x8000000000000000) == 0 && v88 < 1 << *(v85 + 32))
    {
      v92 = v88 >> 6;
      if ((*(v87 + 8 * (v88 >> 6)) & (1 << v88)) == 0)
      {
        goto LABEL_77;
      }

      v138 = v89;
      v140 = *(v85 + 36);
      v93 = *(v142 + 72);
      v94 = v134;
      sub_1D220C5D4(*(v85 + 48) + v93 * v88, v134, type metadata accessor for VUStreamingGallery.Label);
      v95 = v85;
      v96 = *(*(v85 + 56) + 8 * v88);
      v97 = v94;
      v98 = v135;
      sub_1D220C50C(v97, v135, type metadata accessor for VUStreamingGallery.Label);
      *(v98 + *(v137 + 48)) = v96;
      v99 = v136;
      sub_1D21A6938(v98, v136, &qword_1EC6D2C30);
      sub_1D220C50C(v99, v90, type metadata accessor for VUStreamingGallery.Label);
      v100 = v141;
      v143 = v141;
      v102 = *(v141 + 16);
      v101 = *(v141 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_1D21AFB4C(v101 > 1, v102 + 1, 1);
        v100 = v143;
      }

      *(v100 + 16) = v102 + 1;
      v103 = *(v142 + 80);
      v141 = v100;
      sub_1D220C50C(v90, v100 + ((v103 + 32) & ~v103) + v102 * v93, type metadata accessor for VUStreamingGallery.Label);
      v91 = 1 << *(v95 + 32);
      if (v88 >= v91)
      {
        goto LABEL_78;
      }

      v87 = v133;
      v104 = *(v133 + 8 * v92);
      if ((v104 & (1 << v88)) == 0)
      {
        goto LABEL_79;
      }

      v85 = v95;
      if (v140 != *(v95 + 36))
      {
        goto LABEL_80;
      }

      v105 = v104 & (-2 << (v88 & 0x3F));
      if (v105)
      {
        v91 = __clz(__rbit64(v105)) | v88 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v106 = v92 << 6;
        v107 = v92 + 1;
        v108 = &v131[8 * v92];
        while (v107 < (v91 + 63) >> 6)
        {
          v110 = *v108++;
          v109 = v110;
          v106 += 64;
          ++v107;
          if (v110)
          {
            sub_1D217B36C(v88, v140, 0);
            v91 = __clz(__rbit64(v109)) + v106;
            goto LABEL_60;
          }
        }

        sub_1D217B36C(v88, v140, 0);
LABEL_60:
        v85 = v95;
      }

      v89 = v138 + 1;
      v88 = v91;
      if ((v138 + 1) == v132)
      {

        v115 = v121;
        v116 = v122;
        v117 = v141;
        goto LABEL_67;
      }
    }

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
    goto LABEL_84;
  }

  v117 = MEMORY[0x1E69E7CC0];
  v115 = v121;
  v116 = v122;
LABEL_67:
  if (sub_1D222D9FC(v116, v117))
  {
    v118 = v116;
    v119 = v123;
LABEL_71:
    sub_1D220C5D4(v118, v119, type metadata accessor for VUStreamingGallery.Label);

    v54 = v115;
LABEL_72:
    v50 = v120;
    goto LABEL_73;
  }

  v119 = v123;
  if (*(v117 + 16))
  {
    v118 = v117 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
    goto LABEL_71;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21EB4B0()
{
  v2 = v1;
  v3 = sub_1D225077C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v37 = v0;
  v10 = sub_1D225080C();
  v11 = sub_1D2250CBC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2171000, v10, v11, "Updating streaming gallery", v12, 2u);
    MEMORY[0x1D3899640](v12, -1, -1);
  }

  sub_1D225076C();
  v13 = sub_1D225078C();
  v14 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v13, v14, v16, "update", "", v15, 2u);
    v17 = v15;
    v2 = v1;
    MEMORY[0x1D3899640](v17, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_1D22507EC();
  swift_allocObject();
  v36 = sub_1D22507DC();
  (*(v4 + 8))(v9, v3);
  v18 = *(v37 + 16);
  v19 = *(v37 + 112);
  v38 = *(v37 + 116);
  v20 = *(v18 + 16);
  swift_beginAccess();
  v21 = *(v20 + 16);
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  v40 = v18;

  v39 = v21;

  v27 = 0;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_12:
      v29 = v2;
      v30 = __clz(__rbit64(v24)) | (v28 << 6);
      v31 = *(*(v39 + 48) + v30);
      v32 = *(*(v39 + 56) + 8 * v30);
      if ((v38 & 1) == 0)
      {
        *(v32 + 80) = v19;
      }

      v33 = *(v40 + 24);
      v41[3] = type metadata accessor for VUIndexStreamingScanner();
      v41[4] = &off_1F4DAFD88;
      v41[0] = v33;

      sub_1D222DE40(v31, v32, v41, 0, 0, 0, 0, 0);
      v2 = v29;
      if (v29)
      {
        break;
      }

      v24 &= v24 - 1;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v41);
      v27 = v28;
      if (!v24)
      {
        goto LABEL_9;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v34 = v37;
  }

  else
  {
    while (1)
    {
LABEL_9:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return result;
      }

      if (v28 >= v25)
      {
        break;
      }

      v24 = *(v21 + 64 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    v34 = v37;
    if (*(v37 + 117))
    {
      sub_1D21EF45C();
    }

    else
    {
      sub_1D21EB8E8();
    }
  }

  sub_1D21F6300(v34, v36, "autoUpdate");
}

uint64_t sub_1D21EB8E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v517 = &v487 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v511 = &v487 - v5;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2490);
  v491 = *(v514 - 8);
  v6 = MEMORY[0x1EEE9AC00](v514);
  v497 = &v487 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v508 = &v487 - v8;
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C30);
  v9 = MEMORY[0x1EEE9AC00](v504);
  v503 = &v487 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v502 = &v487 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v501 = &v487 - v13;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
  v498 = *(v534 - 8);
  v14 = MEMORY[0x1EEE9AC00](v534);
  v521 = &v487 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v520 = (&v487 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v519 = &v487 - v18;
  v518 = type metadata accessor for VUStreamingGallery.Label(0);
  v537 = *(v518 - 8);
  v19 = MEMORY[0x1EEE9AC00](v518);
  v510 = &v487 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v525 = &v487 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v505 = &v487 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v516 = &v487 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v528 = &v487 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v524 = &v487 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v487 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v539 = (&v487 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v535 = &v487 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v541 = &v487 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v530 = &v487 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C18);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v540 = &v487 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v487 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C08);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v488 = &v487 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v509 = &v487 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v496 = &v487 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v506 = &v487 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v490 = &v487 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v512 = &v487 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v494 = (&v487 - v59);
  v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v513 = *(v515 - 8);
  v60 = MEMORY[0x1EEE9AC00](v515);
  v493 = &v487 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v507 = (&v487 - v63);
  MEMORY[0x1EEE9AC00](v62);
  v529 = &v487 - v64;
  v489 = OBJC_IVAR____TtC19VisualUnderstanding18VUStreamingGallery_logger;
  v65 = sub_1D225080C();
  v66 = sub_1D2250CBC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1D2171000, v65, v66, "Pruning gallery using legacy path", v67, 2u);
    MEMORY[0x1D3899640](v67, -1, -1);
  }

  v68 = sub_1D21CBA6C();

  v526 = sub_1D21CBF54();

  v69 = MEMORY[0x1E69E7CC8];
  v551 = MEMORY[0x1E69E7CC8];
  v70 = *(v68 + 64);
  v532 = (v68 + 64);
  v550 = MEMORY[0x1E69E7CC8];
  v71 = 1 << *(v68 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & v70;
  v531 = ((v71 + 63) >> 6);
  v500 = (v537 + 56);
  v523 = v68;

  v74 = 0;
  v75 = 0;
  isUniquelyReferenced_nonNull_native = v69;
  v495 = v69;
  v527 = v69;
  v542 = v1;
  v522 = v33;
  v77 = v540;
  v533 = v45;
  while (v73)
  {
    v78 = isUniquelyReferenced_nonNull_native;
LABEL_12:
    v80 = (v75 << 9) | (8 * __clz(__rbit64(v73)));
    v81 = *(v523 + 56);
    v538 = *(*(v523 + 48) + v80);
    v82 = *(v81 + v80);
    sub_1D220DA08(v74);
    v83 = v551;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v549 = v83;
    v85 = sub_1D2176758(v82);
    v86 = v83[2];
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_394;
    }

    v89 = v84;
    if (v83[3] >= v88)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v551 = v83;
        if (v84)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1D21B7130();
        v83 = v549;
        v551 = v549;
        if (v89)
        {
          goto LABEL_21;
        }
      }

LABEL_19:
      v83[(v85 >> 6) + 8] |= 1 << v85;
      *(v83[6] + 8 * v85) = v82;
      *(v83[7] + 8 * v85) = MEMORY[0x1E69E7CC0];
      v93 = v83[2];
      v94 = __OFADD__(v93, 1);
      v95 = v93 + 1;
      if (v94)
      {
        goto LABEL_405;
      }

      v83[2] = v95;
      goto LABEL_21;
    }

    sub_1D21B1C6C(v88, isUniquelyReferenced_nonNull_native);
    v90 = v549;
    v91 = sub_1D2176758(v82);
    if ((v89 & 1) != (v92 & 1))
    {
      goto LABEL_437;
    }

    v85 = v91;
    v83 = v90;
    v551 = v90;
    if ((v89 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v527 = v83;
    v96 = v83[7];
    v97 = *(v96 + 8 * v85);
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *(v96 + 8 * v85) = v97;
    v536 = v82;
    if ((v98 & 1) == 0)
    {
      v97 = sub_1D2195F78(0, *(v97 + 2) + 1, 1, v97);
      *(v96 + 8 * v85) = v97;
    }

    v100 = *(v97 + 2);
    v99 = *(v97 + 3);
    if (v100 >= v99 >> 1)
    {
      v97 = sub_1D2195F78((v99 > 1), v100 + 1, 1, v97);
      *(v96 + 8 * v85) = v97;
    }

    *(v97 + 2) = v100 + 1;
    *&v97[8 * v100 + 32] = v538;
    v1 = v542;
    v101 = v542[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v549 = v78;
    v102 = v536;
    v103 = sub_1D2176758(v536);
    v105 = *(v78 + 16);
    v106 = (v104 & 1) == 0;
    v94 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    if (v94)
    {
      goto LABEL_395;
    }

    v108 = v104;
    if (*(v78 + 24) < v107)
    {
      sub_1D21B140C(v107, isUniquelyReferenced_nonNull_native);
      v103 = sub_1D2176758(v102);
      v77 = v540;
      if ((v108 & 1) != (v109 & 1))
      {
        goto LABEL_437;
      }

LABEL_30:
      isUniquelyReferenced_nonNull_native = v549;
      if (v108)
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    v77 = v540;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v110 = v103;
    sub_1D21B6C24();
    v103 = v110;
    isUniquelyReferenced_nonNull_native = v549;
    if (v108)
    {
LABEL_31:
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v103) = v101;
      goto LABEL_37;
    }

LABEL_35:
    *(isUniquelyReferenced_nonNull_native + 8 * (v103 >> 6) + 64) |= 1 << v103;
    *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v103) = v536;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v103) = v101;
    v111 = *(isUniquelyReferenced_nonNull_native + 16);
    v94 = __OFADD__(v111, 1);
    v112 = v111 + 1;
    if (v94)
    {
      goto LABEL_406;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v112;
LABEL_37:
    v73 &= v73 - 1;
    v74 = sub_1D220F1E0;
    v45 = &unk_1D22558A0;
    if (*(v526 + 16))
    {
      v113 = sub_1D2176758(v538);
      v74 = sub_1D220F1E0;
      if (v114)
      {
        v115 = v507;
        sub_1D2174DA8(*(v526 + 56) + *(v513 + 9) * v113, v507, &unk_1EC6D2D60);
        v116 = v115;
        v117 = v529;
        sub_1D21A6938(v116, v529, &unk_1EC6D2D60);
        if (!*(v117 + *(v515 + 48)))
        {
          v118 = v117;
          v119 = v493;
          sub_1D2174DA8(v118, v493, &unk_1EC6D2D60);
          v120 = sub_1D225055C();
          v121 = v77;
          v122 = v494;
          (*(*(v120 - 8) + 32))(v494, v119, v120);
          v123 = v518;
          swift_storeEnumTagMultiPayload();
          v124 = v123;
          v117 = v529;
          (*v500)(v122, 0, 1, v124);
          v125 = v122;
          v77 = v121;
          v45 = &unk_1D22558A0;
          sub_1D21DEF90(v125, v536);
        }

        sub_1D2176170(v117, &unk_1EC6D2D60);
        v74 = sub_1D220F1E0;
      }
    }
  }

  while (1)
  {
    v79 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      goto LABEL_354;
    }

    if (v79 >= v531)
    {
      break;
    }

    v73 = *&v532[8 * v79];
    ++v75;
    if (v73)
    {
      v78 = isUniquelyReferenced_nonNull_native;
      v75 = v79;
      goto LABEL_12;
    }
  }

  v538 = isUniquelyReferenced_nonNull_native;
  v494 = v74;
  v126 = v523;

  swift_beginAccess();

  v128 = v499;
  v129 = sub_1D2206E3C(v127, v126);

  v1[4] = v129;

  swift_beginAccess();

  v131 = sub_1D220DD90(v130, v126);
  v499 = v128;

  v1[5] = v131;

  v132 = v1[5];
  v134 = v132 + 64;
  v133 = *(v132 + 64);
  v135 = MEMORY[0x1E69E7CC8];
  v548 = MEMORY[0x1E69E7CC8];
  v136 = 1 << *(v132 + 32);
  v137 = -1;
  if (v136 < 64)
  {
    v137 = ~(-1 << v136);
  }

  v138 = v137 & v133;
  v139 = (v136 + 63) >> 6;
  v532 = v498 + 56;
  v531 = v498 + 48;
  v529 = v132;

  v140 = 0;
  isUniquelyReferenced_nonNull_native = v548;
  v141 = v535;
  if (!v138)
  {
    goto LABEL_48;
  }

LABEL_47:
  v45 = v140;
LABEL_55:
  v144 = __clz(__rbit64(v138));
  v138 &= v138 - 1;
  v145 = v144 | (v45 << 6);
  v146 = *(*(v529 + 48) + 8 * v145);
  v147 = v530;
  sub_1D220C5D4(*(v529 + 56) + *(v537 + 72) * v145, v530, type metadata accessor for VUStreamingGallery.Label);
  v148 = v534;
  v149 = *(v534 + 48);
  v150 = v540;
  *v540 = v146;
  v77 = v150;
  sub_1D220C50C(v147, v150 + v149, type metadata accessor for VUStreamingGallery.Label);
  v151 = 0;
  v536 = v45;
  v141 = v535;
  while (1)
  {
    (*v532)(v77, v151, 1, v148);
    v45 = v533;
    sub_1D21A6938(v77, v533, &qword_1EC6D2C18);
    if ((*v531)(v45, 1, v148) == 1)
    {
      break;
    }

    v152 = *v45;
    v153 = *(v148 + 48);
    sub_1D220C5D4(v45 + v153, v541, type metadata accessor for VUStreamingGallery.Label);
    sub_1D220C50C(v45 + v153, v141, type metadata accessor for VUStreamingGallery.Label);
    v154 = 0.0;
    if (v135[2])
    {
      v155 = sub_1D2196E40(v141);
      v156 = v542;
      if (v157)
      {
        v154 = *(v135[7] + 8 * v155);
      }
    }

    else
    {
      v156 = v542;
    }

    sub_1D220C574(v141, type metadata accessor for VUStreamingGallery.Label);
    v158 = v156[4];
    v79 = *(v158 + 16);
    if (!v79)
    {
      goto LABEL_363;
    }

    v159 = sub_1D2176758(v152);
    if ((v160 & 1) == 0)
    {
      goto LABEL_364;
    }

    v161 = *(v158 + 56);
    if (v154 <= *(v161 + 8 * v159))
    {
      v154 = *(v161 + 8 * v159);
    }

    v162 = swift_isUniquelyReferenced_nonNull_native();
    v545 = isUniquelyReferenced_nonNull_native;
    v164 = sub_1D2196E40(v541);
    v79 = *(isUniquelyReferenced_nonNull_native + 16);
    v165 = (v163 & 1) == 0;
    v166 = v79 + v165;
    if (__OFADD__(v79, v165))
    {
      goto LABEL_365;
    }

    v167 = v163;
    if (*(isUniquelyReferenced_nonNull_native + 24) >= v166)
    {
      v77 = v540;
      if ((v162 & 1) == 0)
      {
        sub_1D21B813C();
      }
    }

    else
    {
      sub_1D21B33A8(v166, v162);
      v168 = sub_1D2196E40(v541);
      v77 = v540;
      if ((v167 & 1) != (v169 & 1))
      {
        goto LABEL_438;
      }

      v164 = v168;
    }

    v141 = v535;
    v135 = v545;
    if (v167)
    {
      *(v545[7] + 8 * v164) = v154;
      sub_1D220C574(v541, type metadata accessor for VUStreamingGallery.Label);
      isUniquelyReferenced_nonNull_native = v135;
      v140 = v536;
      if (v138)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v545[(v164 >> 6) + 8] |= 1 << v164;
      v45 = type metadata accessor for VUStreamingGallery.Label;
      v170 = v541;
      sub_1D220C5D4(v541, v135[6] + *(v537 + 72) * v164, type metadata accessor for VUStreamingGallery.Label);
      *(v135[7] + 8 * v164) = v154;
      sub_1D220C574(v170, type metadata accessor for VUStreamingGallery.Label);
      v171 = v135[2];
      v94 = __OFADD__(v171, 1);
      v172 = v171 + 1;
      if (v94)
      {
        goto LABEL_385;
      }

      v135[2] = v172;
      isUniquelyReferenced_nonNull_native = v135;
      v140 = v536;
      v77 = v540;
      if (v138)
      {
        goto LABEL_47;
      }
    }

LABEL_48:
    if (v139 <= v140 + 1)
    {
      v142 = v140 + 1;
    }

    else
    {
      v142 = v139;
    }

    v143 = v142 - 1;
    while (1)
    {
      v45 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        v548 = isUniquelyReferenced_nonNull_native;
        __break(1u);
LABEL_238:
        v546 = isUniquelyReferenced_nonNull_native;
        goto LABEL_239;
      }

      if (v45 >= v139)
      {
        break;
      }

      v138 = *(v134 + 8 * v45);
      ++v140;
      if (v138)
      {
        goto LABEL_55;
      }
    }

    v536 = v143;
    v138 = 0;
    v151 = 1;
    v148 = v534;
  }

  v548 = isUniquelyReferenced_nonNull_native;

  v547 = MEMORY[0x1E69E7CC8];
  v139 = (v527 + 8);
  v173 = v527[8];
  v174 = MEMORY[0x1E69E7CC0];
  v546 = MEMORY[0x1E69E7CC0];
  v175 = 1 << *(v527 + 32);
  if (v175 < 64)
  {
    v176 = ~(-1 << v175);
  }

  else
  {
    v176 = -1;
  }

  isUniquelyReferenced_nonNull_native = v176 & v173;
  v529 = (v175 + 63) >> 6;
  v507 = (v537 + 48);

  v492 = 0;
  v177 = 0;
  v498 = v174;
  v45 = v522;
  v178 = v542;
  v515 = v139;
LABEL_80:
  v179 = v527;
  v180 = v529;
LABEL_81:
  v181 = v550;
  v540 = v550;
  while (1)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      while (1)
      {
        v182 = v177 + 1;
        if (__OFADD__(v177, 1))
        {
          break;
        }

        if (v182 >= v180)
        {

          isUniquelyReferenced_nonNull_native = v495;
          v328 = v495[2];
          v329 = *(v498 + 2);
          v330 = v328 + v329;
          if (!__OFADD__(v328, v329))
          {
            v331 = v499;
            sub_1D21F66B4(&v546, &v551, sub_1D2204868);
            v545 = sub_1D21F8660(isUniquelyReferenced_nonNull_native);
            sub_1D21F6738(&v545, &v548);
            if (v331)
            {
              v486 = v331;
              goto LABEL_443;
            }

            v544 = v545;
            v332 = v178[6];
            v333 = *(v550 + 16);
            v334 = v332 - v333;
            if (!__OFSUB__(v332, v333))
            {
              v541 = 0;
              v529 = v550;
              if ((v334 & 0x8000000000000000) == 0)
              {
                if (v334 >= v330)
                {
                  goto LABEL_239;
                }

LABEL_214:
                isUniquelyReferenced_nonNull_native = v546;
                v540 = v334;
                while (1)
                {
                  if (*(isUniquelyReferenced_nonNull_native + 16))
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v335 = *(isUniquelyReferenced_nonNull_native + 16);
                      if (!v335)
                      {
                        goto LABEL_235;
                      }
                    }

                    else
                    {
                      isUniquelyReferenced_nonNull_native = sub_1D2204868(isUniquelyReferenced_nonNull_native);
                      v335 = *(isUniquelyReferenced_nonNull_native + 16);
                      if (!v335)
                      {
LABEL_235:
                        __break(1u);
                        goto LABEL_236;
                      }
                    }

                    v336 = v335 - 1;
                    v337 = *(isUniquelyReferenced_nonNull_native + 8 * v336 + 32);
                    *(isUniquelyReferenced_nonNull_native + 16) = v336;
                    v338 = v551;
                    if (!v551[2])
                    {
                      goto LABEL_415;
                    }

                    v339 = sub_1D2176758(v337);
                    if ((v340 & 1) == 0)
                    {
                      goto LABEL_416;
                    }

                    v45 = *(*(v338 + 56) + 8 * v339);

                    v342 = v541;
                    sub_1D21F227C(v341);
                    v541 = v342;
                    if (v342)
                    {
                      v546 = isUniquelyReferenced_nonNull_native;

                      goto LABEL_289;
                    }

                    sub_1D21FA3FC(v337);

                    v94 = __OFSUB__(v330--, 1);
                    if (v94)
                    {
                      goto LABEL_407;
                    }
                  }

                  else
                  {
                    v343 = v508;
                    sub_1D21F6ADC(v508);
                    sub_1D21F4164(v343);

                    v344 = v497;
                    sub_1D2174DA8(v343, v497, &qword_1EC6D2490);
                    v345 = *(v344 + *(v514 + 48));
                    sub_1D220C574(v344, type metadata accessor for VUStreamingGallery.Label);
                    v346 = *(v345 + 16);
                    if (v346)
                    {
                      v347 = 0;
                      while (1)
                      {
                        if (v347 >= *(v345 + 16))
                        {
                          goto LABEL_389;
                        }

                        v348 = v551;
                        if (!v551[2])
                        {
LABEL_390:
                          __break(1u);
LABEL_391:
                          __break(1u);
                          goto LABEL_392;
                        }

                        v349 = *(v345 + 8 * v347 + 32);
                        v350 = sub_1D2176758(v349);
                        if ((v351 & 1) == 0)
                        {
                          goto LABEL_391;
                        }

                        v45 = *(*(v348 + 56) + 8 * v350);

                        v353 = v541;
                        sub_1D21F227C(v352);
                        v541 = v353;
                        if (v353)
                        {
                          break;
                        }

                        ++v347;

                        sub_1D21FA3FC(v349);

                        if (v346 == v347)
                        {
                          goto LABEL_215;
                        }
                      }

LABEL_236:
                      v546 = isUniquelyReferenced_nonNull_native;

                      sub_1D2176170(v508, &qword_1EC6D2490);
                      goto LABEL_289;
                    }

LABEL_215:
                    sub_1D2176170(v508, &qword_1EC6D2490);

                    v334 = v540;
                    v94 = __OFSUB__(v330--, 1);
                    if (v94)
                    {
                      goto LABEL_407;
                    }
                  }

                  if (v334 >= v330)
                  {
                    goto LABEL_238;
                  }
                }
              }

              if (v330 > 0)
              {
                v334 = 0;
                goto LABEL_214;
              }

LABEL_239:
              v354 = (v547 + 8);
              v355 = 1 << *(v547 + 32);
              v356 = -1;
              if (v355 < 64)
              {
                v356 = ~(-1 << v355);
              }

              v357 = v356 & v547[8];
              v528 = (v355 + 63) >> 6;
              v534 = v491 + 56;
              v533 = (v491 + 48);
              v358 = 0;

              v359 = v532;
              v531 = v354;
              while (1)
              {
                v360 = v517;
                if (v357)
                {
                  v361 = v358;
                  goto LABEL_253;
                }

                if (v528 <= v358 + 1)
                {
                  v362 = v358 + 1;
                }

                else
                {
                  v362 = v528;
                }

                v363 = v362 - 1;
                do
                {
                  v361 = v358 + 1;
                  if (__OFADD__(v358, 1))
                  {
                    __break(1u);
LABEL_389:
                    __break(1u);
                    goto LABEL_390;
                  }

                  if (v361 >= v528)
                  {
                    v368 = v514;
                    (*v534)(v517, 1, 1, v514);
                    v536 = 0;
                    v358 = v363;
                    goto LABEL_254;
                  }

                  v357 = *&v354[8 * v361];
                  ++v358;
                }

                while (!v357);
                v358 = v361;
LABEL_253:
                v536 = (v357 - 1) & v357;
                v364 = __clz(__rbit64(v357)) | (v361 << 6);
                v365 = v532;
                v366 = v530;
                sub_1D220C5D4(*(v532 + 6) + *(v537 + 72) * v364, v530, type metadata accessor for VUStreamingGallery.Label);
                v367 = *(*(v365 + 7) + 8 * v364);
                v368 = v514;
                v369 = *(v514 + 48);
                v370 = v366;
                v360 = v517;
                sub_1D220C50C(v370, v517, type metadata accessor for VUStreamingGallery.Label);
                *(v360 + v369) = v367;
                (*v534)(v360, 0, 1, v368);

LABEL_254:
                v371 = v511;
                sub_1D21A6938(v360, v511, &qword_1EC6D2C10);
                if ((*v533)(v371, 1, v368) == 1)
                {
                  v535 = v359;

                  v410 = v551;
                  v411 = (v551 + 8);
                  v412 = 1 << *(v551 + 32);
                  v413 = -1;
                  if (v412 < 64)
                  {
                    v413 = ~(-1 << v412);
                  }

                  v414 = v413 & v551[8];
                  v540 = (v412 + 63) >> 6;

                  v415 = 0;
                  v45 = v542;
                  while (!v414)
                  {
                    isUniquelyReferenced_nonNull_native = v538;
                    do
                    {
                      v416 = v415 + 1;
                      if (__OFADD__(v415, 1))
                      {
                        goto LABEL_420;
                      }

                      if (v416 >= v540)
                      {

                        v440 = *(*(v45 + 16) + 16);
                        swift_beginAccess();
                        v441 = 0;
                        v442 = 0;
                        v443 = *(v440 + 24);
                        v444 = 1 << *(v443 + 32);
                        v445 = -1;
                        if (v444 < 64)
                        {
                          v445 = ~(-1 << v444);
                        }

                        v446 = v445 & *(v443 + 64);
                        v447 = (v444 + 63) >> 6;
                        do
                        {
                          if (v446)
                          {
                            v448 = v442;
                          }

                          else
                          {
                            do
                            {
                              v448 = v442 + 1;
                              if (__OFADD__(v442, 1))
                              {
                                goto LABEL_421;
                              }

                              if (v448 >= v447)
                              {
                                goto LABEL_329;
                              }

                              v446 = *(v443 + 64 + 8 * v448);
                              ++v442;
                            }

                            while (!v446);
                            v442 = v448;
                          }

                          v449 = __clz(__rbit64(v446));
                          v446 &= v446 - 1;
                          v450 = *(*(*(*(v443 + 56) + ((v448 << 9) | (8 * v449))) + 16) + 16);
                          v94 = __OFADD__(v441, v450);
                          v441 += v450;
                        }

                        while (!v94);
                        __break(1u);
LABEL_329:
                        v451 = *(*(v45 + 16) + 16);
                        swift_beginAccess();
                        v452 = 0;
                        v453 = 0;
                        v454 = *(v451 + 24);
                        v455 = 1 << *(v454 + 32);
                        v456 = -1;
                        if (v455 < 64)
                        {
                          v456 = ~(-1 << v455);
                        }

                        v457 = v456 & *(v454 + 64);
                        v458 = (v455 + 63) >> 6;
                        do
                        {
                          if (v457)
                          {
                            v459 = v453;
                          }

                          else
                          {
                            do
                            {
                              v459 = v453 + 1;
                              if (__OFADD__(v453, 1))
                              {
                                goto LABEL_423;
                              }

                              if (v459 >= v458)
                              {
                                goto LABEL_341;
                              }

                              v457 = *(v454 + 64 + 8 * v459);
                              ++v453;
                            }

                            while (!v457);
                            v453 = v459;
                          }

                          v460 = __clz(__rbit64(v457));
                          v457 &= v457 - 1;
                          v461 = *(*(*(*(v454 + 56) + ((v459 << 9) | (8 * v460))) + 16) + 16);
                          v94 = __OFADD__(v452, v461);
                          v452 += v461;
                        }

                        while (!v94);
                        __break(1u);
LABEL_341:
                        if (v441 == v452)
                        {
                          v462 = *(*(v45 + 16) + 16);
                          swift_beginAccess();
                          v79 = 0;
                          v463 = 0;
                          v464 = *(v462 + 24);
                          v465 = 1 << *(v464 + 32);
                          v466 = -1;
                          if (v465 < 64)
                          {
                            v466 = ~(-1 << v465);
                          }

                          v467 = v466 & *(v464 + 64);
                          v468 = (v465 + 63) >> 6;
                          do
                          {
                            if (v467)
                            {
                              v469 = v463;
                            }

                            else
                            {
                              do
                              {
                                v469 = v463 + 1;
                                if (__OFADD__(v463, 1))
                                {
                                  goto LABEL_427;
                                }

                                if (v469 >= v468)
                                {
                                  goto LABEL_366;
                                }

                                v467 = *(v464 + 64 + 8 * v469);
                                ++v463;
                              }

                              while (!v467);
                              v463 = v469;
                            }

                            v470 = __clz(__rbit64(v467));
                            v467 &= v467 - 1;
                            v471 = *(*(*(*(v464 + 56) + ((v469 << 9) | (8 * v470))) + 16) + 16);
                            v94 = __OFADD__(v79, v471);
                            v79 += v471;
                          }

                          while (!v94);
                          __break(1u);
LABEL_354:
                          __break(1u);
LABEL_355:
                          __break(1u);
LABEL_356:
                          __break(1u);
LABEL_357:
                          __break(1u);
LABEL_358:
                          __break(1u);
LABEL_359:
                          __break(1u);
LABEL_360:
                          __break(1u);
LABEL_361:
                          __break(1u);
LABEL_362:
                          __break(1u);
LABEL_363:
                          v548 = isUniquelyReferenced_nonNull_native;
                          __break(1u);
LABEL_364:
                          v548 = isUniquelyReferenced_nonNull_native;
                          __break(1u);
LABEL_365:
                          v548 = isUniquelyReferenced_nonNull_native;
                          __break(1u);
LABEL_366:
                          if (v79 == *(*(v45 + 32) + 16))
                          {
                            v472 = *(*(v45 + 16) + 16);
                            swift_beginAccess();
                            v139 = 0;
                            v473 = 0;
                            v474 = *(v472 + 24);
                            v475 = 1 << *(v474 + 32);
                            v476 = -1;
                            if (v475 < 64)
                            {
                              v476 = ~(-1 << v475);
                            }

                            v477 = v476 & *(v474 + 64);
                            v478 = (v475 + 63) >> 6;
                            while (v477)
                            {
                              v479 = v473;
LABEL_376:
                              v480 = __clz(__rbit64(v477));
                              v477 &= v477 - 1;
                              v481 = *(*(*(*(v474 + 56) + ((v479 << 9) | (8 * v480))) + 16) + 16);
                              v94 = __OFADD__(v139, v481);
                              v139 += v481;
                              if (v94)
                              {
                                __break(1u);
                                goto LABEL_379;
                              }
                            }

                            while (1)
                            {
                              v479 = v473 + 1;
                              if (__OFADD__(v473, 1))
                              {
                                goto LABEL_428;
                              }

                              if (v479 >= v478)
                              {
                                goto LABEL_386;
                              }

                              v477 = *(v474 + 64 + 8 * v479);
                              ++v473;
                              if (v477)
                              {
                                v473 = v479;
                                goto LABEL_376;
                              }
                            }
                          }
                        }

LABEL_379:

LABEL_380:
                        v482 = sub_1D225080C();
                        v483 = sub_1D2250CDC();
                        if (os_log_type_enabled(v482, v483))
                        {
                          v484 = swift_slowAlloc();
                          *v484 = 0;
                          _os_log_impl(&dword_1D2171000, v482, v483, "videoIndex size and observationTrackMap are not equal", v484, 2u);
                          v45 = v542;
                          MEMORY[0x1D3899640](v484, -1, -1);
                        }

LABEL_383:
                        *(v45 + 104) = 100;

                        sub_1D220DA08(v494);
                        return sub_1D220DA08(v492);
                      }

                      v414 = *(v411 + 8 * v416);
                      ++v415;
                    }

                    while (!v414);
                    v415 = v416;
                    if (!v538[2])
                    {
                      goto LABEL_429;
                    }

LABEL_301:
                    v417 = isUniquelyReferenced_nonNull_native;
                    v418 = (v415 << 9) | (8 * __clz(__rbit64(v414)));
                    isUniquelyReferenced_nonNull_native = *(*(v410 + 48) + v418);
                    v419 = *(*(v410 + 56) + v418);
                    v420 = *(v419 + 16);
                    v421 = sub_1D2176758(isUniquelyReferenced_nonNull_native);
                    if ((v422 & 1) == 0)
                    {
                      goto LABEL_430;
                    }

                    v414 &= v414 - 1;
                    if (*(*(v417 + 56) + 8 * v421) >= v420)
                    {
                      continue;
                    }

                    v423 = v538;
                    if (!v538[2])
                    {
                      goto LABEL_436;
                    }

                    v424 = *(v45 + 64);
                    v425 = sub_1D2176758(isUniquelyReferenced_nonNull_native);
                    if ((v426 & 1) == 0)
                    {
                      goto LABEL_436;
                    }

                    if (*(v423[7] + 8 * v425) >= v424)
                    {
                      v427 = v424;
                    }

                    else
                    {
                      v427 = *(v423[7] + 8 * v425);
                    }

                    v429 = v427;
                    v430 = v541;
                    v431 = sub_1D21F2594(v428, v429);
                    isUniquelyReferenced_nonNull_native = v430;
                    if (v430)
                    {
                      goto LABEL_401;
                    }

                    v541 = v431;
                    v539 = v411;
                    v432 = v526;

                    v433 = sub_1D22064E4(v419, v432);

                    v434 = *(v433 + 16);

                    for (i = 0; v434 != i; i = v436)
                    {
                      if (i >= *(v433 + 16))
                      {
                        goto LABEL_419;
                      }

                      v436 = i + 1;
                      sub_1D21CC850(*(v433 + 8 * i + 32));
                    }

                    v45 = v542;

                    v438 = v541;
                    sub_1D21CD2B8(v437, v541);

                    v439 = sub_1D22066FC(v433, v438);

                    sub_1D21F227C(v439);
                    v541 = 0;

                    v411 = v539;
                  }

                  isUniquelyReferenced_nonNull_native = v538;
                  if (v538[2])
                  {
                    goto LABEL_301;
                  }

LABEL_429:
                  __break(1u);
LABEL_430:
                  __break(1u);
LABEL_431:
                  __break(1u);
LABEL_432:
                  __break(1u);
LABEL_433:
                  __break(1u);
LABEL_434:
                  __break(1u);
LABEL_435:
                  __break(1u);
LABEL_436:
                  __break(1u);
LABEL_437:
                  sub_1D22512AC();
                  __break(1u);
LABEL_438:
                  v548 = isUniquelyReferenced_nonNull_native;
LABEL_439:
                  sub_1D22512AC();
                  __break(1u);
LABEL_440:
                  __break(1u);
LABEL_441:
                  v486 = isUniquelyReferenced_nonNull_native;
LABEL_443:

                  __break(1u);
                  return result;
                }

                v372 = *(v371 + *(v368 + 48));
                sub_1D220C50C(v371, v525, type metadata accessor for VUStreamingGallery.Label);

                v374 = v541;
                v375 = sub_1D2206234(v373, &v550);
                isUniquelyReferenced_nonNull_native = v374;

                v376 = v375[2];
                v377 = v542[9];
                v540 = v372;
                v539 = v375;
                if (v377 >= v376)
                {
                  goto LABEL_267;
                }

                v545 = v375;

                sub_1D21F66B4(&v545, &v551, sub_1D21C8A98);
                if (v374)
                {
                  goto LABEL_441;
                }

                v378 = v545;
                v379 = v542[9];
                v380 = v545[2];
                if (v380 < v379)
                {
                  goto LABEL_417;
                }

                if (v379 < 0)
                {
                  goto LABEL_418;
                }

                sub_1D220C5D4(v525, v510, type metadata accessor for VUStreamingGallery.Label);
                v381 = swift_retain_n();
                v382 = sub_1D2205110(v381, (v378 + 4), 0, (2 * v379) | 1);
                if (!v382)
                {
                  sub_1D21F8344(v378, (v378 + 4), 0, (2 * v379) | 1);
                }

                v383 = v382;

                sub_1D21DEBEC(v383, v510);
                v384 = v380 - v379;
                if (v384)
                {
                  v385 = 8 * v379 + 32;
                  while (1)
                  {
                    v386 = v551;
                    if (!v551[2])
                    {
                      break;
                    }

                    v387 = *(v378 + v385);
                    v388 = sub_1D2176758(v387);
                    if ((v389 & 1) == 0)
                    {
                      goto LABEL_393;
                    }

                    v45 = *(*(v386 + 56) + 8 * v388);

                    sub_1D21F227C(v390);

                    sub_1D21FA3FC(v387);

                    v385 += 8;
                    if (!--v384)
                    {
                      goto LABEL_266;
                    }
                  }

LABEL_392:
                  __break(1u);
LABEL_393:
                  __break(1u);
LABEL_394:
                  __break(1u);
LABEL_395:
                  __break(1u);
LABEL_396:
                  __break(1u);
LABEL_397:
                  __break(1u);
LABEL_398:
                  __break(1u);
LABEL_399:
                  __break(1u);
LABEL_400:
                  __break(1u);
LABEL_401:

                  goto LABEL_289;
                }

LABEL_266:

LABEL_267:
                v391 = v547;
                v392 = sub_1D21DDD2C(v525, v547);
                if (!v392)
                {
                  goto LABEL_433;
                }

                isUniquelyReferenced_nonNull_native = sub_1D21DDEA4(v392, &v551);
                v541 = v374;

                v79 = *(isUniquelyReferenced_nonNull_native + 16);
                if (v79)
                {
                  v393 = 0;
                  v394 = 32;
                  do
                  {
                    v395 = *(isUniquelyReferenced_nonNull_native + v394);
                    v94 = __OFADD__(v393, v395);
                    v393 += v395;
                    if (v94)
                    {
                      goto LABEL_355;
                    }

                    v394 += 8;
                    --v79;
                  }

                  while (v79);

                  v396 = v393;
                }

                else
                {

                  v396 = 0.0;
                }

                v397 = sub_1D21DDD2C(v525, v391);
                if (!v397)
                {
                  goto LABEL_434;
                }

                isUniquelyReferenced_nonNull_native = v397;
                v535 = v391;
                v398 = *(v397 + 16);
                if (v398)
                {
                  v45 = 0;
                  v399 = v397 + 32;
                  do
                  {
                    v79 = *(isUniquelyReferenced_nonNull_native + 16);
                    if (v45 >= v79)
                    {
                      goto LABEL_357;
                    }

                    v400 = v551;
                    v79 = v551[2];
                    if (!v79)
                    {
                      goto LABEL_358;
                    }

                    v401 = *(v399 + 8 * v45);
                    v402 = v542[7];
                    v403 = sub_1D2176758(v401);
                    if ((v404 & 1) == 0)
                    {
                      goto LABEL_359;
                    }

                    v405 = (*(*(*(v400 + 56) + 8 * v403) + 16) / v396) * v402;
                    v79 = COERCE_UNSIGNED_INT(fabs(v405));
                    if (v79 > 2139095039)
                    {
                      goto LABEL_360;
                    }

                    v79 = 3741319169;
                    if (v405 <= -9.2234e18)
                    {
                      goto LABEL_361;
                    }

                    if (v405 >= 9.2234e18)
                    {
                      goto LABEL_362;
                    }

                    ++v45;
                    if (v405 <= 1)
                    {
                      v406 = 1;
                    }

                    else
                    {
                      v406 = v405;
                    }

                    v407 = v538;
                    v408 = swift_isUniquelyReferenced_nonNull_native();
                    v545 = v407;
                    sub_1D21B9BE8(v406, v401, v408);
                    v538 = v545;
                  }

                  while (v398 != v45);
                }

                sub_1D220C574(v525, type metadata accessor for VUStreamingGallery.Label);

                v359 = v535;
                v354 = v531;
                v357 = v536;
              }
            }

LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
LABEL_427:
            __break(1u);
LABEL_428:
            __break(1u);
            goto LABEL_429;
          }

LABEL_424:
          __break(1u);
          goto LABEL_425;
        }

        isUniquelyReferenced_nonNull_native = *(v139 + 8 * v182);
        ++v177;
        if (isUniquelyReferenced_nonNull_native)
        {
          v177 = v182;
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_385:
      v548 = isUniquelyReferenced_nonNull_native;
      __break(1u);
LABEL_386:
      v485 = *(*(v45 + 40) + 16);

      if (v139 != v485)
      {
        goto LABEL_380;
      }

      goto LABEL_383;
    }

LABEL_89:
    v532 = ((isUniquelyReferenced_nonNull_native - 1) & isUniquelyReferenced_nonNull_native);
    v533 = v177;
    v183 = (v177 << 9) | (8 * __clz(__rbit64(isUniquelyReferenced_nonNull_native)));
    v184 = *(v179[6] + v183);
    v185 = *(v179[7] + v183);
    v186 = *(v181 + 16);
    v541 = v185;
    if (!v186 || (v187 = v184, v188 = sub_1D2176758(v184), v184 = v187, (v189 & 1) == 0))
    {
      v487 = v184;
      swift_bridgeObjectRetain_n();

      v206 = v499;
      v207 = sub_1D22072C0(v205, v185);
      v499 = v206;

      v208 = *(v207 + 16);
      if (v208)
      {
        v545 = MEMORY[0x1E69E7CC0];
        v531 = v207;
        sub_1D21AF694(v208);
        v540 = (v531 + 64);
        v209 = sub_1D2250EBC();
        v210 = v531;
        v211 = 0;
        v493 = v531 + 72;
        v513 = v208;
        do
        {
          if (v209 < 0 || v209 >= 1 << v210[32])
          {
            goto LABEL_396;
          }

          v213 = v209 >> 6;
          if ((*(v540 + 8 * (v209 >> 6)) & (1 << v209)) == 0)
          {
            goto LABEL_397;
          }

          v535 = *(v210 + 9);
          v214 = *(v534 + 48);
          v215 = *(v210 + 7);
          v216 = v534;
          v217 = *(*(v210 + 6) + 8 * v209);
          v536 = *(v537 + 72);
          v218 = v519;
          sub_1D220C5D4(v215 + v536 * v209, &v519[v214], type metadata accessor for VUStreamingGallery.Label);
          v219 = v520;
          *v520 = v217;
          sub_1D220C50C(&v218[v214], v219 + *(v216 + 48), type metadata accessor for VUStreamingGallery.Label);
          v220 = v521;
          sub_1D21A6938(v219, v521, &qword_1EC6D2C20);
          sub_1D220C50C(v220 + *(v216 + 48), v524, type metadata accessor for VUStreamingGallery.Label);
          v221 = v545;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D21AFB4C(0, v221[2] + 1, 1);
            v221 = v545;
          }

          v223 = v221[2];
          v222 = v221[3];
          v224 = v221;
          v45 = v522;
          if (v223 >= v222 >> 1)
          {
            sub_1D21AFB4C(v222 > 1, v223 + 1, 1);
            v224 = v545;
          }

          v224[2] = v223 + 1;
          sub_1D220C50C(v524, v224 + ((*(v537 + 80) + 32) & ~*(v537 + 80)) + v223 * v536, type metadata accessor for VUStreamingGallery.Label);
          v210 = v531;
          v212 = 1 << v531[32];
          if (v209 >= v212)
          {
            goto LABEL_398;
          }

          v225 = *(v540 + 8 * v213);
          if ((v225 & (1 << v209)) == 0)
          {
            goto LABEL_399;
          }

          if (v535 != *(v531 + 9))
          {
            goto LABEL_400;
          }

          v226 = v224;
          v227 = v225 & (-2 << (v209 & 0x3F));
          if (v227)
          {
            v212 = __clz(__rbit64(v227)) | v209 & 0x7FFFFFFFFFFFFFC0;
            v178 = v542;
          }

          else
          {
            v228 = v213 << 6;
            v229 = v213 + 1;
            v230 = &v493[8 * v213];
            v178 = v542;
            while (v229 < (v212 + 63) >> 6)
            {
              v232 = *v230++;
              v231 = v232;
              v228 += 64;
              ++v229;
              if (v232)
              {
                sub_1D217B36C(v209, v535, 0);
                v210 = v531;
                v212 = __clz(__rbit64(v231)) + v228;
                goto LABEL_108;
              }
            }

            sub_1D217B36C(v209, v535, 0);
            v210 = v531;
          }

LABEL_108:
          ++v211;
          v209 = v212;
        }

        while (v211 != v513);

        v233 = MEMORY[0x1E69E7CC0];
        v185 = v541;
      }

      else
      {

        v233 = MEMORY[0x1E69E7CC0];
        v226 = MEMORY[0x1E69E7CC0];
      }

      v234 = sub_1D21A2904(v233);
      v540 = v226[2];
      if (v540)
      {
        v235 = 0;
        v536 = v226 + ((*(v537 + 80) + 32) & ~*(v537 + 80));
        do
        {
          if (v235 >= v226[2])
          {
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:
            __break(1u);

            goto LABEL_289;
          }

          v236 = *(v537 + 72);
          isUniquelyReferenced_nonNull_native = v528;
          sub_1D220C5D4(v536 + v236 * v235, v528, type metadata accessor for VUStreamingGallery.Label);
          v237 = swift_isUniquelyReferenced_nonNull_native();
          v545 = v234;
          v238 = sub_1D2196E40(isUniquelyReferenced_nonNull_native);
          v240 = v239;
          v241 = v234[2];
          v242 = (v239 & 1) == 0;
          if (__OFADD__(v241, v242))
          {
            goto LABEL_403;
          }

          v243 = v238;
          v244 = sub_1D2201018(v237, v241 + v242, sub_1D21B388C, sub_1D21B8370);
          v234 = v545;
          if (v244)
          {
            v245 = sub_1D2196E40(v528);
            v185 = v541;
            if ((v240 & 1) != (v246 & 1))
            {
              goto LABEL_439;
            }

            v243 = v245;
            if ((v240 & 1) == 0)
            {
LABEL_136:
              v234[(v243 >> 6) + 8] |= 1 << v243;
              sub_1D220C5D4(v528, v234[6] + v243 * v236, type metadata accessor for VUStreamingGallery.Label);
              *(v234[7] + 8 * v243) = 0;
              v247 = v234[2];
              v94 = __OFADD__(v247, 1);
              v248 = v247 + 1;
              if (v94)
              {
                goto LABEL_408;
              }

              v234[2] = v248;
            }
          }

          else
          {
            v185 = v541;
            if ((v240 & 1) == 0)
            {
              goto LABEL_136;
            }
          }

          v249 = v234[7];
          v250 = *(v249 + 8 * v243);
          v94 = __OFADD__(v250, 1);
          v251 = v250 + 1;
          if (v94)
          {
            goto LABEL_404;
          }

          ++v235;
          *(v249 + 8 * v243) = v251;
          sub_1D220C574(v528, type metadata accessor for VUStreamingGallery.Label);
          v178 = v542;
        }

        while (v540 != v235);
      }

      v252 = 0;
      v253 = 1 << *(v234 + 32);
      v254 = (v253 + 63) >> 6;
      v255 = 8;
      while (1)
      {
        v256 = v234[v255];
        if (v256)
        {
          break;
        }

        v252 -= 64;
        ++v255;
        if (!--v254)
        {
          goto LABEL_145;
        }
      }

      v257 = __clz(__rbit64(v256));
      if (v257 - v253 == v252)
      {
LABEL_145:
        v258 = 1;
        goto LABEL_147;
      }

      sub_1D22051D4(v257 - v252, *(v234 + 9), v234, v512);
      v258 = 0;
LABEL_147:
      v513 = *v500;
      (v513)(v512, v258, 1, v518);
      v259 = v234[2];
      v535 = v234;
      if (v259 <= 1)
      {
        isUniquelyReferenced_nonNull_native = v509;
        goto LABEL_186;
      }

      v261 = sub_1D21F4E58(v260);
      v263 = v262;

      v265 = v499;
      isUniquelyReferenced_nonNull_native = sub_1D21FA960(v264, v261, v263 & 1);
      v499 = v265;

      v266 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v266)
      {
        v545 = MEMORY[0x1E69E7CC0];
        sub_1D21AF694(v266);
        v267 = (isUniquelyReferenced_nonNull_native + 64);
        v268 = sub_1D2250EBC();
        v531 = (isUniquelyReferenced_nonNull_native + 64);
        while ((v268 & 0x8000000000000000) == 0 && v268 < 1 << *(isUniquelyReferenced_nonNull_native + 32))
        {
          if ((*&v267[8 * (v268 >> 6)] & (1 << v268)) == 0)
          {
            goto LABEL_411;
          }

          LODWORD(v536) = *(isUniquelyReferenced_nonNull_native + 36);
          v269 = *(isUniquelyReferenced_nonNull_native + 48);
          v540 = *(v537 + 72);
          v270 = v501;
          sub_1D220C5D4(v269 + v540 * v268, v501, type metadata accessor for VUStreamingGallery.Label);
          v271 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v268);
          v272 = v270;
          v273 = v502;
          sub_1D220C50C(v272, v502, type metadata accessor for VUStreamingGallery.Label);
          *(v273 + *(v504 + 48)) = v271;
          v274 = v503;
          sub_1D21A6938(v273, v503, &qword_1EC6D2C30);
          sub_1D220C50C(v274, v516, type metadata accessor for VUStreamingGallery.Label);
          v275 = v545;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D21AFB4C(0, v275[2] + 1, 1);
            v275 = v545;
          }

          v277 = v275[2];
          v276 = v275[3];
          if (v277 >= v276 >> 1)
          {
            sub_1D21AFB4C(v276 > 1, v277 + 1, 1);
            v275 = v545;
          }

          v275[2] = v277 + 1;
          sub_1D220C50C(v516, v275 + ((*(v537 + 80) + 32) & ~*(v537 + 80)) + v277 * v540, type metadata accessor for VUStreamingGallery.Label);
          if (v268 >= -(-1 << *(isUniquelyReferenced_nonNull_native + 32)))
          {
            goto LABEL_412;
          }

          v267 = v531;
          if ((*&v531[8 * (v268 >> 6)] & (1 << v268)) == 0)
          {
            goto LABEL_413;
          }

          if (v536 != *(isUniquelyReferenced_nonNull_native + 36))
          {
            goto LABEL_414;
          }

          v268 = sub_1D2250EDC();
          --v266;
          v178 = v542;
          if (!v266)
          {

            v185 = v541;
            goto LABEL_164;
          }
        }

        __break(1u);
LABEL_410:
        __break(1u);
LABEL_411:
        __break(1u);
LABEL_412:
        __break(1u);
LABEL_413:
        __break(1u);
LABEL_414:
        __break(1u);
LABEL_415:
        __break(1u);
LABEL_416:
        __break(1u);
LABEL_417:
        __break(1u);
LABEL_418:
        __break(1u);
LABEL_419:
        __break(1u);
LABEL_420:
        __break(1u);
LABEL_421:
        __break(1u);
LABEL_422:
        __break(1u);
LABEL_423:
        __break(1u);
        goto LABEL_424;
      }

      v275 = MEMORY[0x1E69E7CC0];
LABEL_164:
      if (!v275[2])
      {
        goto LABEL_431;
      }

      v278 = v490;
      sub_1D220C5D4(v275 + ((*(v537 + 80) + 32) & ~*(v537 + 80)), v490, type metadata accessor for VUStreamingGallery.Label);

      v279 = v512;
      isUniquelyReferenced_nonNull_native = &qword_1EC6D2C08;
      sub_1D2176170(v512, &qword_1EC6D2C08);
      (v513)(v278, 0, 1, v518);
      sub_1D21A6938(v278, v279, &qword_1EC6D2C08);
      v280 = *(v185 + 16);
      if (v280)
      {
        v281 = 0;
        v540 = v185 + 32;
        while (1)
        {
          if (v281 >= *(v185 + 16))
          {
            goto LABEL_410;
          }

          isUniquelyReferenced_nonNull_native = *(v540 + 8 * v281);
          v284 = v506;
          sub_1D2174DA8(v512, v506, &qword_1EC6D2C08);
          swift_beginAccess();
          if ((*v507)(v284, 1, v518) == 1)
          {
            sub_1D2176170(v284, &qword_1EC6D2C08);
            v285 = sub_1D2176758(isUniquelyReferenced_nonNull_native);
            if (v286)
            {
              v287 = v285;
              v288 = swift_isUniquelyReferenced_nonNull_native();
              v289 = v178[5];
              v543 = v289;
              v178[5] = 0x8000000000000000;
              if (!v288)
              {
                sub_1D21B7ED4();
                v289 = v543;
              }

              v290 = v496;
              sub_1D220C50C(*(v289 + 56) + *(v537 + 72) * v287, v496, type metadata accessor for VUStreamingGallery.Label);
              sub_1D2201D14(v287, v289, type metadata accessor for VUStreamingGallery.Label);
              v178[5] = v289;

              v283 = v290;
              v282 = 0;
            }

            else
            {
              v282 = 1;
              v283 = v496;
            }

            (v513)(v283, v282, 1, v518);
            sub_1D2176170(v283, &qword_1EC6D2C08);
            goto LABEL_169;
          }

          sub_1D220C50C(v284, v505, type metadata accessor for VUStreamingGallery.Label);
          v291 = swift_isUniquelyReferenced_nonNull_native();
          v543 = v178[5];
          v292 = v543;
          v178[5] = 0x8000000000000000;
          v293 = sub_1D2176758(isUniquelyReferenced_nonNull_native);
          v295 = v294;
          v296 = v292[2];
          v297 = (v294 & 1) == 0;
          if (__OFADD__(v296, v297))
          {
            goto LABEL_422;
          }

          v298 = v293;
          if (sub_1D2201018(v291, v296 + v297, sub_1D21B3050, sub_1D21B7ED4))
          {
            v299 = sub_1D2176758(isUniquelyReferenced_nonNull_native);
            v185 = v541;
            if ((v295 & 1) != (v300 & 1))
            {
              goto LABEL_437;
            }

            v298 = v299;
            v301 = v543;
            if ((v295 & 1) == 0)
            {
LABEL_180:
              v301[(v298 >> 6) + 8] |= 1 << v298;
              *(v301[6] + 8 * v298) = isUniquelyReferenced_nonNull_native;
              sub_1D220C50C(v505, v301[7] + *(v537 + 72) * v298, type metadata accessor for VUStreamingGallery.Label);
              v302 = v301[2];
              v94 = __OFADD__(v302, 1);
              v303 = v302 + 1;
              if (v94)
              {
                goto LABEL_426;
              }

              v301[2] = v303;
              goto LABEL_184;
            }
          }

          else
          {
            v185 = v541;
            v301 = v543;
            if ((v295 & 1) == 0)
            {
              goto LABEL_180;
            }
          }

          sub_1D220DA58(v505, v301[7] + *(v537 + 72) * v298, type metadata accessor for VUStreamingGallery.Label);
LABEL_184:
          v178 = v542;
          v542[5] = v301;

LABEL_169:
          ++v281;
          swift_endAccess();
          isUniquelyReferenced_nonNull_native = v509;
          if (v280 == v281)
          {
            goto LABEL_186;
          }
        }
      }

      isUniquelyReferenced_nonNull_native = v509;
LABEL_186:
      sub_1D2174DA8(v512, isUniquelyReferenced_nonNull_native, &qword_1EC6D2C08);
      v304 = *v507;
      if ((*v507)(isUniquelyReferenced_nonNull_native, 1, v518) != 1)
      {
        sub_1D2176170(isUniquelyReferenced_nonNull_native, &qword_1EC6D2C08);
        isUniquelyReferenced_nonNull_native = v488;
        sub_1D2174DA8(v512, v488, &qword_1EC6D2C08);
        if (v304(isUniquelyReferenced_nonNull_native, 1, v518) == 1)
        {
          goto LABEL_440;
        }

        sub_1D220DA08(v492);
        v308 = v547;
        v309 = swift_isUniquelyReferenced_nonNull_native();
        v545 = v308;
        v310 = sub_1D2196E40(isUniquelyReferenced_nonNull_native);
        v312 = v311;
        v313 = v308[2];
        v314 = (v311 & 1) == 0;
        if (__OFADD__(v313, v314))
        {
          goto LABEL_432;
        }

        isUniquelyReferenced_nonNull_native = v310;
        v315 = sub_1D2201018(v309, v313 + v314, sub_1D21B2A84, sub_1D21B7988);
        v316 = v545;
        if (v315)
        {
          v317 = sub_1D2196E40(v488);
          if ((v312 & 1) != (v318 & 1))
          {
            goto LABEL_439;
          }

          isUniquelyReferenced_nonNull_native = v317;
          v319 = v488;
        }

        else
        {
          v319 = v488;
        }

        v547 = v316;
        if ((v312 & 1) == 0)
        {
          v316[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
          sub_1D220C5D4(v319, v316[6] + *(v537 + 72) * isUniquelyReferenced_nonNull_native, type metadata accessor for VUStreamingGallery.Label);
          *(v316[7] + 8 * isUniquelyReferenced_nonNull_native) = MEMORY[0x1E69E7CC0];
          v320 = v316[2];
          v94 = __OFADD__(v320, 1);
          v321 = v320 + 1;
          if (v94)
          {
            goto LABEL_435;
          }

          v316[2] = v321;
        }

        v495 = v316;
        v322 = v316[7];
        v323 = *(v322 + 8 * isUniquelyReferenced_nonNull_native);
        v324 = swift_isUniquelyReferenced_nonNull_native();
        *(v322 + 8 * isUniquelyReferenced_nonNull_native) = v323;
        if ((v324 & 1) == 0)
        {
          v323 = sub_1D2195F78(0, *(v323 + 2) + 1, 1, v323);
          *(v322 + 8 * isUniquelyReferenced_nonNull_native) = v323;
        }

        v326 = *(v323 + 2);
        v325 = *(v323 + 3);
        if (v326 >= v325 >> 1)
        {
          *(v322 + 8 * isUniquelyReferenced_nonNull_native) = sub_1D2195F78((v325 > 1), v326 + 1, 1, v323);
        }

        sub_1D2176170(v512, &qword_1EC6D2C08);
        v327 = *(v322 + 8 * isUniquelyReferenced_nonNull_native);
        *(v327 + 16) = v326 + 1;
        *(v327 + 8 * v326 + 32) = v487;
        sub_1D220C574(v488, type metadata accessor for VUStreamingGallery.Label);
        v492 = sub_1D220F1E0;
        v139 = v515;
        v177 = v533;
        isUniquelyReferenced_nonNull_native = v532;
        goto LABEL_80;
      }

      sub_1D2176170(isUniquelyReferenced_nonNull_native, &qword_1EC6D2C08);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v498 = sub_1D2195F78(0, *(v498 + 2) + 1, 1, v498);
      }

      v306 = *(v498 + 2);
      v305 = *(v498 + 3);
      if (v306 >= v305 >> 1)
      {
        v498 = sub_1D2195F78((v305 > 1), v306 + 1, 1, v498);
      }

      sub_1D2176170(v512, &qword_1EC6D2C08);
      v307 = v498;
      *(v498 + 2) = v306 + 1;
      *&v307[8 * v306 + 32] = v487;
      v546 = v307;
      v179 = v527;
      v139 = v515;
      v180 = v529;
      v177 = v533;
      isUniquelyReferenced_nonNull_native = v532;
      goto LABEL_81;
    }

    v190 = *(v537 + 72);
    sub_1D220C5D4(*(v181 + 56) + v190 * v188, v539, type metadata accessor for VUStreamingGallery.Label);
    isUniquelyReferenced_nonNull_native = *(v185 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v139 = v515;
    isUniquelyReferenced_nonNull_native = v532;
LABEL_83:
    sub_1D220C574(v539, type metadata accessor for VUStreamingGallery.Label);
    v179 = v527;
    v180 = v529;
    v177 = v533;
  }

  v191 = 0;
  while (v191 < *(v185 + 16))
  {
    v192 = *(v185 + 8 * v191 + 32);
    swift_beginAccess();
    sub_1D220C5D4(v539, v45, type metadata accessor for VUStreamingGallery.Label);
    v193 = swift_isUniquelyReferenced_nonNull_native();
    v543 = v178[5];
    v194 = v543;
    v178[5] = 0x8000000000000000;
    v195 = sub_1D2176758(v192);
    v197 = v196;
    v198 = v194[2];
    v199 = (v196 & 1) == 0;
    if (__OFADD__(v198, v199))
    {
      goto LABEL_316;
    }

    v200 = v195;
    if (sub_1D2201018(v193, v198 + v199, sub_1D21B3050, sub_1D21B7ED4))
    {
      v201 = sub_1D2176758(v192);
      v185 = v541;
      if ((v197 & 1) != (v202 & 1))
      {
        goto LABEL_437;
      }

      v200 = v201;
      v203 = v543;
      if ((v197 & 1) == 0)
      {
LABEL_102:
        v203[(v200 >> 6) + 8] |= 1 << v200;
        *(v203[6] + 8 * v200) = v192;
        sub_1D220C50C(v45, v203[7] + v200 * v190, type metadata accessor for VUStreamingGallery.Label);
        v204 = v203[2];
        v94 = __OFADD__(v204, 1);
        v79 = v204 + 1;
        if (v94)
        {
          goto LABEL_356;
        }

        v203[2] = v79;
        goto LABEL_94;
      }
    }

    else
    {
      v185 = v541;
      v203 = v543;
      if ((v197 & 1) == 0)
      {
        goto LABEL_102;
      }
    }

    sub_1D220DA58(v45, v203[7] + v200 * v190, type metadata accessor for VUStreamingGallery.Label);
LABEL_94:
    ++v191;
    v178 = v542;
    v542[5] = v203;

    swift_endAccess();
    if (isUniquelyReferenced_nonNull_native == v191)
    {

      v139 = v515;
      isUniquelyReferenced_nonNull_native = v532;
      v181 = v540;
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_316:
  __break(1u);

LABEL_289:

  sub_1D220DA08(v494);
  return sub_1D220DA08(v492);
}