uint64_t sub_1E3924550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v75 = result;
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 88 * i;
        result = *(v10 + 16);
        v11 = *(v10 + 24);
        v12 = *a3 + 88 * v8;
        if (result == *(v12 + 16) && v11 == *(v12 + 24))
        {
          v14 = 0;
        }

        else
        {
          result = sub_1E42079A4();
          v14 = result;
        }

        v15 = 88 * v8;
        v16 = (v9 + 88 * v8 + 200);
        for (i = v8 + 2; i < v5; ++i)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 12) && *v16 == *(v16 - 11))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1E42079A4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          v16 += 11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 88 * i - 88;
          v19 = i;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v21 + v15), sizeof(__dst));
              memmove((v21 + v15), (v21 + v18), 0x58uLL);
              result = memcpy((v21 + v18), __dst, 0x58uLL);
            }

            ++v20;
            v18 -= 88;
            v15 += 88;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v22 = a3[1];
      if (i < v22)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v22)
          {
            v23 = a3[1];
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return result;
          }

          if (i != v23)
          {
            v76 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * i;
            v26 = v8 - i;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                result = v28[2];
                if (result == *(v28 - 9) && v28[3] == *(v28 - 8))
                {
                  break;
                }

                result = sub_1E42079A4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                result = memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++i;
              v25 += 88;
              --v26;
            }

            while (i != v23);
            i = v23;
            v7 = v76;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 16);
      v31 = *(v7 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_1E37FFF70((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v33;
      v34 = v7 + 32;
      v35 = (v7 + 32 + 16 * v32);
      *v35 = v8;
      v35[1] = i;
      v77 = *v75;
      if (!*v75)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = (v34 + 16 * (v33 - 1));
          v38 = (v7 + 16 * v33);
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = *(v7 + 32);
            v40 = *(v7 + 40);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
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
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = (v34 + 16 * (v36 - 1));
          v70 = *v69;
          v71 = (v34 + 16 * v36);
          v72 = v71[1];
          result = sub_1E3924BCC((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v77);
          if (v4)
          {
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = *(v68 + 16);
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          result = memmove((v34 + 16 * v36), v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          *(v68 + 16) = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = v34 + 16 * v33;
        v44 = *(v43 - 64);
        v45 = *(v43 - 56);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 48);
        v47 = *(v43 - 40);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*v75)
  {
    goto LABEL_129;
  }

  sub_1E3924A94(&v80, *v75, a3);
}

uint64_t sub_1E3924A94(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1E3924BCC((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1E3924BCC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 88;
  v9 = (a3 - __dst) / 88;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[88 * v8] <= a4)
    {
      memmove(a4, __src, 88 * v8);
    }

    v11 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_1E42079A4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 88;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    memmove(v7, v14, 0x58uLL);
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[88 * v9] <= a4)
  {
    memmove(a4, __dst, 88 * v9);
  }

  v11 = &v4[88 * v9];
LABEL_29:
  for (v5 -= 88; v11 > v4 && v6 > v7; v5 -= 88)
  {
    v17 = *(v11 - 9) == *(v6 - 9) && *(v11 - 8) == *(v6 - 8);
    if (!v17 && (sub_1E42079A4() & 1) != 0)
    {
      v18 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v18, 0x58uLL);
        v6 = v18;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 88)
    {
      memmove(v5, v11 - 88, 0x58uLL);
    }

    v11 -= 88;
  }

LABEL_46:
  v19 = (v11 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v19])
  {
    memmove(v6, v4, 88 * v19);
  }

  return 1;
}

double OUTLINED_FUNCTION_32_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  v19 = a1 & 0xFFFFFFFFFFFFLL | 0x73000000000000;

  return sub_1E3277E60(v19, 0xE700000000000000, v17, &a17);
}

uint64_t sub_1E3924DF8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  sub_1E3928994(v0, v1);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3924E8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3924DF8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3924F04(uint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = (v3 | a1) == 0;

  if (v3 && a1)
  {
    v4 = sub_1E3929398(v3, a1);
  }

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E3925060();
  }
}

uint64_t sub_1E3925000()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t sub_1E3925060()
{
  OUTLINED_FUNCTION_0_83();
  sub_1E3928994(v0, v1);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3925108()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  sub_1E3928994(v1, v2);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E3925198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925108();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E39251F0(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E3925060();
  }

  return result;
}

uint64_t sub_1E39252A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1E39252F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  sub_1E3928994(v1, v2);
  OUTLINED_FUNCTION_43();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1E392538C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E39252F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E39253F4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  v6 = *(v2 + 40);
  if (v6 & 1) != 0 || (a2)
  {
    if (v6 & a2)
    {
      goto LABEL_4;
    }
  }

  else if (*(v2 + 32) == *&a1)
  {
LABEL_4:
    *(v2 + 32) = *&a1;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1E3925060();
}

uint64_t sub_1E39254DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1E3925530()
{

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardPresenter___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E39255CC()
{
  v0 = swift_allocObject();
  sub_1E3925604();
  return v0;
}

uint64_t sub_1E3925604()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  sub_1E41FE924();
  return v0;
}

double sub_1E39256FC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E39257D4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();

  return sub_1E4200684();
}

uint64_t sub_1E3925850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E392583C();
  *a1 = result;
  return result;
}

uint64_t sub_1E39258E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39258D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3925968()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E39259C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3925954();
  *a1 = result;
  return result;
}

uint64_t sub_1E3925A34()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3925AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925AA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3925B4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925B38();
  *a1 = result & 1;
  return result;
}

double sub_1E3925BB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3925C2C(uint64_t a1@<X8>)
{
  *a1 = sub_1E3925BB4();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1E3925C88()
{
  OUTLINED_FUNCTION_0_8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3925D0C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v1;
}

double sub_1E3925DFC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v1;
}

void sub_1E3925E78(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3925EFC()
{
  OUTLINED_FUNCTION_0_8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();

  return sub_1E4200684();
}

uint64_t sub_1E3925F70(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

BOOL sub_1E3925FD8()
{
  v0 = sub_1E3925D6C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v12.origin.x = sub_1E3925DE8();
  v12.origin.y = v7;
  v12.size.width = v8;
  v12.size.height = v9;
  v11.origin.x = v0;
  v11.origin.y = v2;
  v11.size.width = v4;
  v11.size.height = v6;
  return CGRectIntersectsRect(v11, v12);
}

uint64_t sub_1E3926038()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v2 + 16) && (sub_1E3928950(*(v0 + v3)), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39260C8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E3928950(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_1E3926118(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1E3926160()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (v2 && (v3 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex, OUTLINED_FUNCTION_25(), swift_beginAccess(), *(v2 + 16)) && (sub_1E3928950(*(v0 + v3)), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39261F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    return sub_1E4207384();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E392625C()
{
  v0 = swift_allocObject();
  sub_1E39262AC();
  return v0;
}

void sub_1E39262AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v66 = v3;
  v65 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_0_10();
  v63 = v6;
  v64 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v62 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E178);
  OUTLINED_FUNCTION_0_10();
  v60 = v10;
  v61 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v59 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v57 = v14;
  v58 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v56 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168);
  OUTLINED_FUNCTION_0_10();
  v54 = v18;
  v55 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  v31 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__contentHeight;
  *&v67 = 0;
  sub_1E4200634();
  v32 = *(v27 + 32);
  v32(v2 + v31, v30, v25);
  v33 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__alpha;
  *&v67 = 0x3FF0000000000000;
  sub_1E4200634();
  v32(v2 + v33, v30, v25);
  v34 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentMetadata;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28);
  sub_1E4200634();
  (*(v21 + 32))(v2 + v34, v24, v53);
  v35 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentImage;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160);
  sub_1E4200634();
  v36 = v55;
  v37 = *(v54 + 32);
  v37(v2 + v35, v1, v55);
  v38 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentFeaturedLogo;
  *&v67 = 0;
  sub_1E4200634();
  v37(v2 + v38, v1, v36);
  v39 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreboardPresenter;
  type metadata accessor for MediaShowcasingScoreboardPresenter(0);
  v40 = swift_allocObject();
  sub_1E3925604();
  *(v2 + v39) = v40;
  LOBYTE(v67) = 0;
  sub_1E4200634();
  v41 = *(v57 + 32);
  v42 = OUTLINED_FUNCTION_45_18();
  v41(v42);
  OUTLINED_FUNCTION_64_10();
  v43 = OUTLINED_FUNCTION_45_18();
  v41(v43);
  v44 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__safeAreaInset;
  v45 = *(MEMORY[0x1E69DDCE0] + 16);
  v67 = *MEMORY[0x1E69DDCE0];
  v68 = v45;
  type metadata accessor for UIEdgeInsets();
  v46 = v59;
  sub_1E4200634();
  (*(v60 + 32))(v2 + v44, v46, v61);
  OUTLINED_FUNCTION_64_10();
  v47 = OUTLINED_FUNCTION_45_18();
  v41(v47);
  v48 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__metadataFrame;
  type metadata accessor for CGRect(0);
  v67 = 0u;
  v68 = 0u;
  v49 = v62;
  sub_1E4200634();
  v50 = v64;
  v51 = *(v63 + 32);
  v51(v2 + v48, v49, v64);
  v52 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__pageControlFrame;
  v67 = 0u;
  v68 = 0u;
  sub_1E4200634();
  v51(v2 + v52, v49, v50);
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor) = v65;

  sub_1E3744B84();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3926874(unint64_t a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) != 0 || ((v5 = *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor), OUTLINED_FUNCTION_25(), swift_beginAccess(), v6 = sub_1E32AE9B0(*(v5 + 16)), v6 >= 1) ? (v7 = v6 > a1) : (v7 = 0), !v7))
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3926A6C();
    return;
  }

  v17 = *(v5 + 16);
  v18 = a1;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  OUTLINED_FUNCTION_46();
  sub_1E328FCF4(v8, v9);
  sub_1E38D2054(&v18, &v16);
  v10 = v16;
  v11 = sub_1E392583C();
  if (v11)
  {
    v18 = v11;
    if (v10)
    {
      v17 = v10;
      type metadata accessor for ViewModel();
      sub_1E3928994(&qword_1EE23BA60, type metadata accessor for ViewModel);
      v12 = sub_1E4205E84();

      v13 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
      OUTLINED_FUNCTION_27_6();
      swift_beginAccess();
      *(v3 + v13) = a1;
      if (v12)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v15 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
    OUTLINED_FUNCTION_27_6();
    swift_beginAccess();
    *(v3 + v15) = a1;
LABEL_15:
    sub_1E3926A6C();
    goto LABEL_16;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  v14 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v3 + v14) = a1;
LABEL_16:
}

void sub_1E3926A6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E190);
  OUTLINED_FUNCTION_0_10();
  v84 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E198);
  OUTLINED_FUNCTION_0_10();
  v86 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1A0);
  OUTLINED_FUNCTION_0_10();
  v90 = v14;
  v91 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028);
  OUTLINED_FUNCTION_0_10();
  v79 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E170);
  OUTLINED_FUNCTION_0_10();
  v81 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v78[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1A8);
  OUTLINED_FUNCTION_0_10();
  v82 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v78[-v29];
  v92 = v0;
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v28);
    sub_1E4203E44();
    sub_1E4200FE4();
    v31 = v92;
  }

  else
  {
    v32 = *&v0[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v99[3] = *(v32 + 16);
    v93 = v4;
    v94 = 0;
    v33 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    OUTLINED_FUNCTION_46();
    sub_1E328FCF4(v34, v35);
    v31 = v92;
    sub_1E38D2054(&v93, v99);
    sub_1E3925A34();
  }

  sub_1E3927B8C();
  v36 = *&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v37 = sub_1E3926118(v4, *(v36 + 24));
  v38 = &selRef__shouldShowRenewalOption;
  if (v37)
  {
    v39 = v37;
    v40 = [v37 image];
    if (v40 && (v41 = v40, v31 = [v40 uiImage], v41, v31))
    {
      v42 = v4;
      v43 = v31;
      OUTLINED_FUNCTION_66_13();

      v4 = v42;
      v38 = &selRef__shouldShowRenewalOption;
    }

    else
    {
      OUTLINED_FUNCTION_66_13();
      OUTLINED_FUNCTION_4_0();
      v44 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_2_4();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = v4;
      OUTLINED_FUNCTION_18_32(v45);
      OUTLINED_FUNCTION_20_42(COERCE_DOUBLE(1107296256));
      v95 = v46;
      v96 = &block_descriptor_81;
      v47 = _Block_copy(&v93);

      [v39 addCompletion_];

      _Block_release(v47);
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v48 = *(v36 + 32);
  if (v48)
  {
    v49 = sub_1E3926118(v4, v48);
    if (v49)
    {
      v50 = v49;
      v51 = [v49 image];
      if (v51 && (v52 = v51, v31 = [v51 uiImage], v52, v31))
      {
        v38 = v4;
        v53 = v31;
        OUTLINED_FUNCTION_66_13();

        v4 = v38;
      }

      else
      {
        OUTLINED_FUNCTION_66_13();
        OUTLINED_FUNCTION_4_0();
        v54 = swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_2_4();
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        *(v55 + 24) = v4;
        OUTLINED_FUNCTION_18_32(v55);
        OUTLINED_FUNCTION_20_42(COERCE_DOUBLE(1107296256));
        v95 = v56;
        v96 = &block_descriptor_27;
        v57 = _Block_copy(&v93);

        [v50 v38[416]];

        _Block_release(v57);
      }
    }
  }

  sub_1E3744B84();
  if (sub_1E3926038())
  {

    OUTLINED_FUNCTION_11_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168);
    sub_1E4200644();
    swift_endAccess();
    OUTLINED_FUNCTION_28_26(&qword_1EE28A0B8, &qword_1ECF2E170);
    OUTLINED_FUNCTION_54_9();
    v58 = v81;
    (*(v81 + 8))(v24, v20);
    OUTLINED_FUNCTION_11_54(&qword_1EE28A330, &qword_1ECF2E1A8);
    v59 = sub_1E42006B4();
    v60 = v82;
    (*(v82 + 8))(v30, v25);
  }

  else
  {
    LOBYTE(v93) = 1;
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028);
    v59 = OUTLINED_FUNCTION_65_12();
    (*(v79 + 8))(v31, v38);
    v60 = v82;
    v58 = v81;
  }

  if (sub_1E3926160())
  {

    OUTLINED_FUNCTION_11_3();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168);
    sub_1E4200644();
    swift_endAccess();
    OUTLINED_FUNCTION_28_26(&qword_1EE28A0B8, &qword_1ECF2E170);
    OUTLINED_FUNCTION_54_9();
    (*(v58 + 8))(v24, v20);
    OUTLINED_FUNCTION_11_54(&qword_1EE28A330, &qword_1ECF2E1A8);
    v61 = sub_1E42006B4();
    (*(v60 + 8))(v30, v25);
  }

  else
  {
    LOBYTE(v93) = 1;

    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028);
    v61 = OUTLINED_FUNCTION_65_12();
    (*(v79 + 8))(v31, v60);
  }

  sub_1E39281E4(v4);
  v63 = v62;
  v64 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver;
  if (*&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver])
  {

    sub_1E42004E4();
  }

  v93 = v59;
  v97 = v63;
  v98 = v61;

  v82 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0);
  OUTLINED_FUNCTION_1_37();
  sub_1E328FCF4(v65, v66);
  sub_1E4200424();
  sub_1E328FCF4(&qword_1EE28A388, &qword_1ECF2E190);
  v67 = v83;
  sub_1E4200744();
  v68 = OUTLINED_FUNCTION_57();
  v69(v68);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v70 = sub_1E4206A04();
  v93 = v70;
  v71 = sub_1E42069A4();
  v72 = v89;
  __swift_storeEnumTagSinglePayload(v89, 1, 1, v71);
  OUTLINED_FUNCTION_11_54(&unk_1EE28A318, &qword_1ECF2E198);
  sub_1E3746800();
  v73 = v88;
  v74 = v87;
  sub_1E42007D4();
  sub_1E325F6F0(v72, &unk_1ECF2D2B0);

  (*(v86 + 8))(v67, v74);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v75 = v92;
  swift_weakInit();
  OUTLINED_FUNCTION_29_24(&qword_1EE28A258, &qword_1ECF2E1A0);
  v76 = v91;
  v77 = sub_1E4200844();

  (*(v90 + 8))(v73, v76);
  *&v75[v64] = v77;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3927714()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_23_31();
  sub_1E3928994(v0, v1);
  sub_1E4200514();
  sub_1E4200594();
}

BOOL sub_1E39277A4()
{
  v0 = sub_1E392583C();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = (*(*v0 + 488))(v0);

  if (v1)
  {
    v2 = sub_1E373E010(91, v1);

    if (v2)
    {
      OUTLINED_FUNCTION_8();
      v4 = *(v3 + 488);

      v6 = v4(v5);

      if (v6)
      {

        v1 = *(v6 + 16);

        return v1 > 0;
      }

      OUTLINED_FUNCTION_8();
      v8 = (*(v7 + 464))();
      if (v8)
      {
        v1 = sub_1E32AE9B0(v8);

        return v1 > 0;
      }
    }

LABEL_9:
    v1 = 0;
  }

  return v1 > 0;
}

uint64_t sub_1E39278E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_58_12();
  v2(v3);
  v4 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__alpha);
  v2(v4);
  v5 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentMetadata;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168);
  OUTLINED_FUNCTION_2();
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_58_12();
  v8(v9);
  v10 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentFeaturedLogo);
  v8(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_58_12();
  v12(v13);
  v14 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__isMinimalMetadata);
  v12(v14);
  v15 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__safeAreaInset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E178);
  OUTLINED_FUNCTION_2();
  (*(v16 + 8))(v0 + v15);
  v17 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__isMuted);
  v12(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180);
  OUTLINED_FUNCTION_2();
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_58_12();
  v19(v20);
  v21 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__pageControlFrame);
  v19(v21);

  return v0;
}

uint64_t sub_1E3927B34()
{
  sub_1E39278E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3927B8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B8);
  OUTLINED_FUNCTION_8_1();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_41();
  v10 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v10) = 0;

  v11 = sub_1E392583C();
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = (*(*v11 + 488))(v11);

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = sub_1E373E010(229, v12);

  if (!v13)
  {
    goto LABEL_8;
  }

  if (*v13 == _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
  {
    v23 = sub_1E3BB6124();
    v25 = v23;
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v22 = sub_1E4206A04();
    v24 = v22;
    v14 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);
    v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570);
    OUTLINED_FUNCTION_1_37();
    sub_1E328FCF4(v15, v16);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v6, &unk_1ECF2D2B0);

    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_2_4();
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v17;
    OUTLINED_FUNCTION_29_24(&qword_1ECF2E1C0, &qword_1ECF2E1B8);

    v19 = sub_1E4200844();

    (*(v8 + 8))(v2, v1);
    *(v3 + v10) = v19;

LABEL_8:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3927F14()
{
  OUTLINED_FUNCTION_31_1();
  v22 = v1;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v25 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v18 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v4;
  v26[4] = v22;
  v26[5] = v19;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1E378AEA4;
  v26[3] = v23;
  v20 = _Block_copy(v26);
  v21 = v8;

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1E3928994(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v17, v0, v20);
  _Block_release(v20);

  (*(v25 + 8))(v0, v9);
  (*(v13 + 8))(v17, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39281E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v10 = sub_1E39260C8(a1, *(v9 + 40));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  if (!sub_1E32AE9B0(v10))
  {

LABEL_13:
    LOBYTE(aBlock[0]) = 1;
    sub_1E42005C4();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028);
    sub_1E42006B4();
    (*(v5 + 8))(v8, v3);
    return;
  }

  v25 = v8;
  v26 = v5;
  v27 = v3;
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v11;
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  v24[1] = v12;

  v16 = sub_1E32AE9B0(v15);
  *(v14 + 16) = sub_1E39288C0(0, v16);
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = sub_1E32AE9B0(v11);
  v19 = 0;
  v28 = v11 & 0xFFFFFFFFFFFFFF8;
  v29 = v11 & 0xC000000000000001;
  while (1)
  {
    if (v18 == v19)
    {

      v5 = v26;
      v3 = v27;
      v8 = v25;
      goto LABEL_13;
    }

    if (v29)
    {
      v20 = MEMORY[0x1E6911E60](v19, v11);
    }

    else
    {
      if (v19 >= *(v28 + 16))
      {
        goto LABEL_15;
      }

      v20 = *(v11 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v22 = swift_allocObject();
    v22[2] = v14;
    v22[3] = v19;
    v22[4] = v17;
    v22[5] = v11;
    v22[6] = sub_1E392909C;
    v22[7] = v13;
    aBlock[4] = sub_1E3929254;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E38B2C5C;
    aBlock[3] = &block_descriptor_109_0;
    v23 = _Block_copy(aBlock);

    [v21 fetchImageWithCompletion_];
    _Block_release(v23);

    ++v19;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1E3928580@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3928570(*a1, a1[1], a1[2]);
  *a2 = result & 1;
  return result;
}

void sub_1E39285BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = (*(*v3 + 552))();
  if (!v7)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  sub_1E3277E60(0x4D746E65746E6F63, 0xEF61746164617465, v7, &v20);

  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v20, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v9 = v18;
    v8 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0xE300000000000000;
  v9 = 7104878;
LABEL_8:
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v10, v0);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v20 = v14;
    *v13 = 136315138;
    v15 = sub_1E3270FC8(v9, v8, &v20);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v11, v12, "MediaShowcasingScoreboard:: [CloudChannels] Updated contentMetadata: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(0);
    OUTLINED_FUNCTION_23_31();
    sub_1E3928994(v16, v17);
    OUTLINED_FUNCTION_20_2();
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E39288C0(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160);
      v4 = sub_1E4206314();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        v7 = v3;
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

unint64_t sub_1E3928950(uint64_t a1)
{
  v2 = sub_1E4207B34();

  return sub_1E3887CB0(a1, v2);
}

uint64_t sub_1E3928994(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3928A00()
{
  result = sub_1E41FE934();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_59_7();
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3928AAC(uint64_t a1)
{
  OUTLINED_FUNCTION_27_23(a1, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0]);
  if (v1 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1EE289FD0, &qword_1ECF2BB28);
    if (v2 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289F08, &qword_1ECF2E160);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_27_23(v3 - 8, &qword_1EE289F50, MEMORY[0x1E69E6370]);
        if (v5 <= 0x3F)
        {
          sub_1E3928D60(319, &unk_1EE289F30, type metadata accessor for UIEdgeInsets);
          if (v6 <= 0x3F)
          {
            sub_1E3928D60(319, &qword_1EE289F20, type metadata accessor for CGRect);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_59_7();
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1E3928D10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E3928D60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E3928DB0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3744B84();
  }

  return result;
}

uint64_t sub_1E3928E98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9[5] = *(v3 + 16);
  v7 = v1;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  OUTLINED_FUNCTION_46();
  sub_1E328FCF4(v4, v5);
  sub_1E38D2054(&v7, v9);
  return sub_1E3925A34();
}

uint64_t objectdestroy_83Tm()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t sub_1E3928FD0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (v1)
    {
      v5 = [v1 uiImage];
      if (v5)
      {
        v6 = v5;
        v7 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        if (*(v4 + v7) == v2)
        {
          v8 = v6;
          sub_1E3925A34();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E392909C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(v6 + v7) != v3)
  {
  }

  if (!a1)
  {
    v14 = 0;
    v9 = 0;
LABEL_14:
    v15 = sub_1E32AE9B0(v4);
    if (a1 && v14 == v15)
    {
    }

    else
    {

      v9 = 0;
    }

    sub_1E3924F04(v9);
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  while (1)
  {
    if (v10 == v8)
    {
      v14 = sub_1E32AE9B0(v9);
      goto LABEL_14;
    }

    if (v8 >= v10)
    {
      break;
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_22;
    }

    v12 = *(a1 + 32 + 8 * v8++);
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1E6910BF0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      v9 = v16;
      v8 = v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1E3929254(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = [a1 uiImage];
  OUTLINED_FUNCTION_11_3();
  v8 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v8;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1E392937C();
  v8 = result;
  *(v2 + 16) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (*(v8 + 16) <= v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8 + 8 * v3;
  v11 = *(v10 + 32);
  *(v10 + 32) = v7;
  *(v2 + 16) = v8;
  swift_endAccess();

  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v5 + 16) = v13;
  result = sub_1E32AE9B0(v4);
  if (v13 == result)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    v6(v14);
  }

  return result;
}

uint64_t sub_1E3929398(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AE00);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E392956C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1E39295EC(uint64_t a1)
{
  sub_1E3929628(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1E3929628(uint64_t a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE5C4();
  sub_1E41FE574();
  v9 = v8;
  (*(v4 + 8))(v7, v2);
  LOBYTE(v16) = 35;
  v10 = *(*a1 + 776);
  v10(&v18, &v16, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v19)
  {
    goto LABEL_15;
  }

  result = OUTLINED_FUNCTION_1_93();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = v16;
  LOBYTE(v16) = 36;
  v10(&v18, &v16, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v19)
  {
    result = OUTLINED_FUNCTION_1_93();
    if (result)
    {
      v13 = v9 * 1000.0;
      if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v13 > -1.0)
      {
        if (v13 < 1.84467441e19)
        {
          if (v12 >= v13 && v16 <= v13)
          {
            goto LABEL_16;
          }

          if (v16 >= v12)
          {
            return result;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
LABEL_15:
    result = sub_1E329505C(&v18);
  }

LABEL_16:
  v10(&v16, result, &unk_1F5D5D378, &off_1F5D5C7F8);
  if (!v17)
  {
    return sub_1E329505C(&v16);
  }

  sub_1E329504C(&v16, &v18);
  sub_1E329504C(&v18, &v16);
  return swift_dynamicCast();
}

uint64_t sub_1E39298C8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1E42022A4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1C8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  *&v25[2] = a2;
  v26 = 0;
  v25[1] = 0x3FF0000000000000;
  sub_1E3929B88();
  sub_1E4200CB4();
  sub_1E4202294();
  sub_1E32752B0(&qword_1ECF2E1D0, &qword_1ECF2E1C8);
  sub_1E3929BDC();
  sub_1E4202CF4();
  (*(v6 + 8))(v9, v4);
  (*(v12 + 8))(v15, v10);
  v16 = sub_1E4203744();
  KeyPath = swift_getKeyPath();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1E0) + 36));
  *v18 = KeyPath;
  v18[1] = v16;
  LODWORD(v16) = sub_1E4202184();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1E8) + 36));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1F0);
  v21 = *(v20 + 52);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1E4201C44();
  result = (*(*(v23 - 8) + 104))(&v19[v21], v22, v23);
  *v19 = v16;
  *&v19[*(v20 + 56)] = 256;
  return result;
}

unint64_t sub_1E3929B88()
{
  result = qword_1EE28A3E0;
  if (!qword_1EE28A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3E0);
  }

  return result;
}

unint64_t sub_1E3929BDC()
{
  result = qword_1ECF2E1D8;
  if (!qword_1ECF2E1D8)
  {
    sub_1E42022A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E1D8);
  }

  return result;
}

uint64_t sub_1E3929C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4201A84();
  *a1 = result;
  return result;
}

unint64_t sub_1E3929CD0()
{
  result = qword_1ECF2E1F8;
  if (!qword_1ECF2E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1E8);
    sub_1E3929D88();
    sub_1E32752B0(&qword_1ECF2E208, &qword_1ECF2E1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E1F8);
  }

  return result;
}

unint64_t sub_1E3929D88()
{
  result = qword_1ECF2E200;
  if (!qword_1ECF2E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1C8);
    sub_1E42022A4();
    sub_1E32752B0(&qword_1ECF2E1D0, &qword_1ECF2E1C8);
    sub_1E3929BDC();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E200);
  }

  return result;
}

uint64_t sub_1E3929ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DescriptionTemplateLayout();
  v6 = sub_1E3D5030C();

  v7 = sub_1E39C408C(9);
  v8 = v7;
  if (v7 && *v7 != _TtC8VideosUI13TextViewModel)
  {

    v8 = 0;
  }

  v9 = sub_1E39C408C(24);

  if (v9 && *v9 != _TtC8VideosUI13TextViewModel)
  {

    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v8;
  a3[5] = 0;
  a3[6] = 0;
  a3[4] = v9;
  return result;
}

double sub_1E392A014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3929ED0(a1, 0, &v7);
  result = *&v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  return result;
}

void sub_1E392A064(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D54();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E248);
  sub_1E392A0C4(a1, a2 + *(v4 + 44));
}

void sub_1E392A0C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E250);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E258);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E260);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  sub_1E392A3CC(&v35 - v21);
  sub_1E392A6F4(v6);
  (*(**(a1 + 16) + 152))(v37);
  v25 = 0uLL;
  v26 = 0uLL;
  if ((v38 & 1) == 0)
  {
    v26.n128_u64[0] = v37[2];
    v24.n128_u64[0] = v37[3];
    v25.n128_u64[0] = v37[0];
    v23.n128_u64[0] = v37[1];
    v25.n128_f64[0] = j_nullsub_1(v25, v23, v26, v24);
    v26.n128_u64[1] = v27;
    v25.n128_u64[1] = v28;
  }

  v35 = v26;
  v36 = v25;
  v29 = sub_1E4202734();
  sub_1E3741EA0(v6, v13, &qword_1ECF2E250);
  v30 = &v13[*(v7 + 36)];
  *v30 = v29;
  v31 = v36;
  *(v30 + 24) = v35;
  *(v30 + 8) = v31;
  v30[40] = 0;
  sub_1E3741EA0(v13, v16, &qword_1ECF2E258);
  sub_1E3743538(v22, v19, &qword_1ECF2E260);
  sub_1E3743538(v16, v10, &qword_1ECF2E258);
  v32 = OUTLINED_FUNCTION_38_0();
  sub_1E3743538(v32, v33, &qword_1ECF2E260);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E268);
  sub_1E3743538(v10, a2 + *(v34 + 48), &qword_1ECF2E258);
  sub_1E325F6F0(v16, &qword_1ECF2E258);
  sub_1E325F6F0(v22, &qword_1ECF2E260);
  sub_1E325F6F0(v10, &qword_1ECF2E258);
  sub_1E325F6F0(v19, &qword_1ECF2E260);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E392A3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E280);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = (*(**v1 + 464))(v6);
  if (v9)
  {
    v10 = v9;
    result = sub_1E32AE9B0(v9);
    if (result)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 32);
      }

      if (*v12 == _TtC8VideosUI13TextViewModel)
      {
        v14 = *(v2 + 8);
        if (v14 && (v15 = v30, (*(*v14 + 152))(v30, v13), (v31 & 1) == 0))
        {
          v17.n128_u64[0] = v30[1];
          v18.n128_u64[0] = v30[2];
          v19.n128_u64[0] = v30[3];
        }

        else
        {
          v20 = sub_1E3C27528();
          if (!v20)
          {
            v16 = 0uLL;
            v18 = 0uLL;
            goto LABEL_20;
          }

          v15 = v32;
          (*(*v20 + 152))(v32);

          v16 = 0uLL;
          v18 = 0uLL;
          if (v33)
          {
LABEL_20:
            v28 = v18;
            v29 = v16;
            OUTLINED_FUNCTION_18();
            sub_1E3F23370();
            sub_1E4203D44();
            sub_1E4200D94();
            v23 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48) + 36)];
            v24 = v35;
            *v23 = v34;
            *(v23 + 1) = v24;
            *(v23 + 2) = v36;
            v25 = sub_1E4202734();

            v26 = &v8[*(v4 + 36)];
            *v26 = v25;
            v27 = v29;
            *(v26 + 24) = v28;
            *(v26 + 8) = v27;
            v26[40] = 0;
            sub_1E3741EA0(v8, a1, &qword_1ECF2E280);
            return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
          }

          v17.n128_u64[0] = v32[1];
          v18.n128_u64[0] = v32[2];
          v19.n128_u64[0] = v32[3];
        }

        v16.n128_u64[0] = *v15;
        v16.n128_f64[0] = j_nullsub_1(v16, v17, v18, v19);
        v18.n128_u64[1] = v21;
        v16.n128_u64[1] = v22;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

void sub_1E392A6F4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E270);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E278);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  if (*(v1 + 32))
  {
    v42 = v17;
    v43 = v16;
    v41 = v19;
    type metadata accessor for AttributionTextViewLayout();
    v20 = swift_retain_n();
    v21 = *(sub_1E3C82468(v20) + 104);
    swift_retain_n();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = a1;
    v23 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_38_0();
    v24 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_38_0();
    v25 = j__OUTLINED_FUNCTION_18();
    v39 = v9;
    v26 = v25;
    OUTLINED_FUNCTION_38_0();
    v27 = OUTLINED_FUNCTION_51_1();
    sub_1E383F6D4(v21, v24 & 1, v26 & 1, 1, v27 & 1, v3, v23);

    (*(v5 + 8))(v8, v3);

    v44 = v3;
    v45 = v23;
    swift_getOpaqueTypeConformance2();
    v28 = v41;
    v29 = v39;
    sub_1E4202E74();

    (*(v11 + 8))(v14, v29);
    v30 = v40;
    v31 = v28;
    v32 = v43;
    (*(v42 + 32))(v40, v31, v43);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

void sub_1E392AA74(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E210);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  sub_1E4202704();
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E218);
  OUTLINED_FUNCTION_2_71();
  sub_1E32752B0(v8, v9);
  sub_1E4200AD4();
  v10 = *sub_1E3E6011C();
  OUTLINED_FUNCTION_3_70();
  sub_1E32752B0(v11, &qword_1ECF2E210);
  v12 = v10;
  v13 = v15;
  sub_1E39B87A4(v10);

  (*(v4 + 8))(v7, v2);
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E230) + 36)) = 0;
  OUTLINED_FUNCTION_25_2();
}

double sub_1E392AC10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E392A014(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

unint64_t sub_1E392AC5C(uint64_t a1)
{
  result = sub_1E392AC84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E392AC84()
{
  result = qword_1EE274968[0];
  if (!qword_1EE274968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE274968);
  }

  return result;
}

uint64_t sub_1E392AD4C(uint64_t *a1, int a2)
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

uint64_t sub_1E392AD8C(uint64_t result, int a2, int a3)
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

unint64_t sub_1E392ADE8()
{
  result = qword_1ECF2E238;
  if (!qword_1ECF2E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E210);
    sub_1E32752B0(&qword_1ECF2E228, &qword_1ECF2E210);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289DF0, &qword_1ECF2E240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E238);
  }

  return result;
}

uint64_t sub_1E392AF14(char a1)
{
  v2 = *sub_1E3C2AE50();
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a1 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E392AF60(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return OUTLINED_FUNCTION_51_1();
    }

    return 0;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_1E392AFA8(char a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 & 1;
  }
}

uint64_t sub_1E392AFBC(uint64_t result)
{
  if (result == 3)
  {
    v1 = 1;
  }

  else
  {
    v1 = result & 1;
  }

  if (result == 2)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E392AFDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E288);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E42ABB10;
  v1 = *MEMORY[0x1E69DDC90];
  v2 = *MEMORY[0x1E69DDC68];
  *(v0 + 32) = *MEMORY[0x1E69DDC90];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69DDC88];
  v4 = *MEMORY[0x1E69DDC78];
  *(v0 + 48) = *MEMORY[0x1E69DDC88];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69DDC70];
  v6 = *MEMORY[0x1E69DDC60];
  *(v0 + 64) = *MEMORY[0x1E69DDC70];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69DDC58];
  v8 = *MEMORY[0x1E69DDC50];
  *(v0 + 80) = *MEMORY[0x1E69DDC58];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69DDC40];
  v10 = *MEMORY[0x1E69DDC38];
  *(v0 + 96) = *MEMORY[0x1E69DDC40];
  *(v0 + 104) = v10;
  v26 = *MEMORY[0x1E69DDC30];
  v27 = *MEMORY[0x1E69DDC28];
  v11 = *MEMORY[0x1E69DDC28];
  *(v0 + 112) = *MEMORY[0x1E69DDC30];
  *(v0 + 120) = v11;
  v28 = *MEMORY[0x1E69DDC20];
  *(v0 + 128) = *MEMORY[0x1E69DDC20];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  return v0;
}

uint64_t sub_1E392B158()
{
  OUTLINED_FUNCTION_15_0();
  result = *(v0 + 98);
  if (result == 4)
  {
    return *(v0 + 99);
  }

  return result;
}

uint64_t sub_1E392B18C(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v2 + 98);
  *(v2 + 98) = a1;
  OUTLINED_FUNCTION_111();
  result = OUTLINED_FUNCTION_5_0();
  if (*(v2 + 98) == 4)
  {
    if (v4 == 4)
    {
      return result;
    }

LABEL_6:
    sub_1E392B158();
    sub_1E392C5E0();
    sub_1E392B774();
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v6, v7);
    sub_1E4200514();
    sub_1E4200594();
  }

  if (v4 == 4)
  {
    goto LABEL_6;
  }

  sub_1E392EDD8();
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

double sub_1E392B2CC()
{
  v0 = sub_1E392B304();
  v1 = 4.0;
  if (v0)
  {
    v1 = 2.0;
  }

  return sub_1E392B33C(v1);
}

uint64_t sub_1E392B304()
{
  v0 = sub_1E392B158();
  v1 = (v0 & 1) == 0;
  if (v0 == 3)
  {
    v1 = 0;
  }

  return v0 == 2 || v1;
}

double sub_1E392B33C(double a1)
{
  v2 = v1;
  v4 = sub_1E3C2F8E8();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 preferredContentSizeCategory];

    OUTLINED_FUNCTION_15_0();
    v7 = *(v2 + 128);
    if (v7)
    {
      v8 = *(v2 + 128);
    }

    else
    {
      v8 = *MEMORY[0x1E69DDC20];
      v7 = 0;
    }

    v9 = *(v2 + 120);
    v10 = v7;
    v11 = v9;
    if (sub_1E4206CA4())
    {
      v12 = v8;

      v11 = v12;
    }

    if ((sub_1E4206CA4() & 1) == 0)
    {
      v13 = v6;

      v11 = v13;
    }

    v14 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    v16 = v15;

    return v16 * *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  }

  return a1;
}

double sub_1E392B4A8()
{
  v0 = sub_1E392B304();
  result = 20.0;
  if ((v0 & 1) == 0)
  {

    return sub_1E392B33C(20.0);
  }

  return result;
}

uint64_t sub_1E392B4E0(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  v6 = sub_1E3C2F8E8();
  v7 = &selRef_textLayout;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 preferredContentSizeCategory];

    if (!a2)
    {
      if (v9)
      {

        v10 = 0;
        v9 = 0;
        v11 = 1;
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
LABEL_15:
      v11 = 1;
      v10 = 1;
      goto LABEL_21;
    }
  }

  v12 = [a2 preferredContentSizeCategory];
  v13 = v12;
  if (v9)
  {
    if (v12)
    {
      v14 = sub_1E4205F14();
      v16 = v15;
      if (v14 == sub_1E4205F14() && v16 == v17)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1E42079A4();
      }

      v7 = &selRef_textLayout;
    }

    else
    {
      v10 = 0;
      v13 = v9;
    }
  }

  else
  {
    if (!v12)
    {
      v10 = 1;
      goto LABEL_20;
    }

    v10 = 0;
  }

LABEL_20:
  v9 = [a2 v7[284]];
  v11 = 0;
LABEL_21:
  v19 = sub_1E3C2F8E8();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 v7[284]];

    if (v9 == v21)
    {
      v22 = v11;
    }

    else
    {
      v22 = 1;
    }

    if (v22 == 1)
    {
      goto LABEL_26;
    }
  }

  else if ((v11 & 1) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v23, v24);
    sub_1E4200514();
    sub_1E4200594();
  }

  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  result = (*(v25 + 1640))(a1, a2, a3);
  if ((v10 & 1) == 0)
  {

    return sub_1E392B774();
  }

  return result;
}

uint64_t sub_1E392B774()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_94();
  sub_1E392EACC(v2, v3);
  sub_1E4200514();
  sub_1E4200594();

  sub_1E392B158();
  OUTLINED_FUNCTION_38_15();
  if (v4)
  {
    sub_1E392B33C(5.0);
    OUTLINED_FUNCTION_52_12();
    v5 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_32_29(v5, v6, v7, v8, v9, v10, v11, v12, *v271, v271[8]);
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_30_24();
    OUTLINED_FUNCTION_29_25();
    OUTLINED_FUNCTION_12_49();
    sub_1E3C2FCB8(v13, v14);
    v23 = OUTLINED_FUNCTION_35_22(v15, v16, v17, v18, v19, v20, v21, v22, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    memcpy(v23, v24, 0x59uLL);
    v25 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36_22(v25, v26, v27, v28, v29, v30, v31, v32, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    sub_1E3C2FDFC();
    [objc_opt_self() isPad];
  }

  else
  {
    sub_1E3C2EAE8();
    OUTLINED_FUNCTION_36_0();
  }

  sub_1E3C2CE80();
  v33 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor;
  v34 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  v35 = sub_1E392B158();
  sub_1E392D628();
  if (v35 == 2)
  {
    OUTLINED_FUNCTION_8();
    (*(v36 + 1768))(0, 0);

    OUTLINED_FUNCTION_36();
    v38 = *(v37 + 1816);

    v39 = OUTLINED_FUNCTION_36_0();
    v38(v39);

    OUTLINED_FUNCTION_36();
    v41 = *(v40 + 1696);

    v41(17);

    OUTLINED_FUNCTION_36();
    v43 = *(v42 + 1840);

    v43(0);

    OUTLINED_FUNCTION_36();
    v45 = *(v44 + 1792);

    v46 = 10;
  }

  else
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_8();
    (*(v47 + 1768))();

    if (sub_1E392B304())
    {
      v48 = 42.0;
    }

    else
    {
      v48 = 50.0;
    }

    *v271 = sub_1E392B33C(v48);
    v271[8] = 0;
    v49 = sub_1E392B304();
    *&v50 = 76.0;
    if (v49)
    {
      *&v50 = 56.0;
    }

    v327 = *&v50;
    LOBYTE(v328) = 0;
    v322 = v34 * 48.0;
    LOBYTE(v323) = 0;
    v51 = sub_1E392B304();
    v52 = 60.0;
    if (v51)
    {
      v52 = 42.0;
    }

    sub_1E392B33C(v52);
    OUTLINED_FUNCTION_52_12();
    v53 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00(v53);
    OUTLINED_FUNCTION_9_53();
    v62 = OUTLINED_FUNCTION_26_30(v54, v55, v56, v57, v58, v59, v60, v61, *v271);
    sub_1E3C2FCB8(v62, v63);
    v72 = OUTLINED_FUNCTION_35_22(v64, v65, v66, v67, v68, v69, v70, v71, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    memcpy(v72, v73, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_27();
    v82 = OUTLINED_FUNCTION_36_22(v74, v75, v76, v77, v78, v79, v80, v81, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    v83(v82, 52);

    OUTLINED_FUNCTION_36();
    v85 = *(v84 + 1840);

    v85(4);

    OUTLINED_FUNCTION_36();
    v45 = *(v86 + 1792);

    v46 = 6;
  }

  v45(v46);

  v87 = *(v1 + v33);
  sub_1E392B158();
  OUTLINED_FUNCTION_38_15();
  if (v4)
  {
    *&v284 = 0x4051000000000000;
    BYTE8(v284) = 0;
    v88 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_32_29(v88, v89, v90, v91, v92, v93, v94, v95, *v271, v271[8]);
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_30_24();
    OUTLINED_FUNCTION_29_25();
    OUTLINED_FUNCTION_12_49();
  }

  else
  {
    sub_1E392B33C(54.0);
    OUTLINED_FUNCTION_52_12();
    *v271 = 0x404F000000000000;
    v271[8] = 0;
    v327 = v87 * 50.0;
    LOBYTE(v328) = 0;
    v322 = sub_1E392B33C(62.0);
    LOBYTE(v323) = 0;
    v96 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00(v96);
    OUTLINED_FUNCTION_9_53();
    v98 = &v284;
  }

  sub_1E3C2FCB8(v98, v97);
  memcpy(v271, __src, 0x59uLL);
  memcpy(__src, v271, 0x59uLL);
  v99 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_28_27();
  v101 = *(v100 + 1600);
  (v101)(__src, 2, v102 & 1, v99);
  memcpy(__src, v271, 0x59uLL);
  v103 = OUTLINED_FUNCTION_18();
  (v101)(__src, 6, v103 & 1, v99);
  sub_1E392B158();
  OUTLINED_FUNCTION_38_15();
  if (v4)
  {
    v104 = *(MEMORY[0x1E69DDCE0] + 16);
    v284 = *MEMORY[0x1E69DDCE0];
    v285 = v104;
    LOBYTE(v286) = 0;
    type metadata accessor for UIEdgeInsets();
    v106 = v105;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_37_0();
    sub_1E3C3DE00(v106);
    OUTLINED_FUNCTION_8_47();
    sub_1E3C3DE00(v106);
    OUTLINED_FUNCTION_7_33();
    v107 = sub_1E3C3DE00(v106);
    OUTLINED_FUNCTION_17_39(v107, v108, v109, v110, v111, v112, v113, v114, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, *(&v284 + 1), v285, *(&v285 + 1), v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312);
    v115 = sub_1E3C3DE00(v106);
    LOBYTE(v276) = v282;
    v138 = OUTLINED_FUNCTION_50_10(v115, v116, v117, v118, v119, v120, v121, v122, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v278, v279, v280, v281, v276, v277, v278, v279, v280, v281, v282, v283, v284);
  }

  else
  {
    sub_1E392B33C(8.0);
    *&v284 = sub_1E3952CA4();
    *(&v284 + 1) = v123;
    *&v285 = v124;
    *(&v285 + 1) = v125;
    LOBYTE(v286) = 0;
    v327 = sub_1E3952CA4();
    v328 = v126;
    v329 = v127;
    v330 = v128;
    v331 = 0;
    v322 = sub_1E3952CA4();
    v323 = v129;
    v324 = v130;
    v325 = v131;
    v326 = 0;
    sub_1E392B33C(10.0);
    v317 = sub_1E3952CA4();
    v318 = v132;
    v319 = v133;
    v320 = v134;
    v321 = 0;
    type metadata accessor for UIEdgeInsets();
    v136 = v135;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_33_27();
    sub_1E3C3DE00(v136);
    OUTLINED_FUNCTION_47_14();
    v137 = __src;
    v138 = &v284;
  }

  sub_1E3C2FCB8(v138, v137);
  v147 = OUTLINED_FUNCTION_35_22(v139, v140, v141, v142, v143, v144, v145, v146, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
  memcpy(v147, v148, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  v150 = v149;
  v151 = OUTLINED_FUNCTION_18();
  v159 = OUTLINED_FUNCTION_36_22(v151, v152, v153, v154, v155, v156, v157, v158, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
  v101(v159, 0);
  v160 = sub_1E392B158() & 0xFE;
  sub_1E392CEFC();
  if (v160 == 2)
  {
    memset(__src, 0, 32);
    LOBYTE(__src[2]) = 1;
    OUTLINED_FUNCTION_8();
    (*(v161 + 160))(__src);
  }

  else
  {
    v284 = 0uLL;
    v285 = 0uLL;
    LOBYTE(v286) = 1;
    sub_1E3952C78();
    *v271 = v162;
    *&v271[8] = v163;
    *&v271[16] = v164;
    *&v271[24] = v165;
    v271[32] = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_37_0();
    sub_1E3C3DE00(v150);
    OUTLINED_FUNCTION_8_47();
    sub_1E3C3DE00(v150);
    OUTLINED_FUNCTION_7_33();
    v166 = sub_1E3C3DE00(v150);
    OUTLINED_FUNCTION_17_39(v166, v167, v168, v169, v170, v171, v172, v173, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, *(&v284 + 1), v285, *(&v285 + 1), v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312);
    v182 = OUTLINED_FUNCTION_50_10(v174, v175, v176, v177, v178, v179, v180, v181, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    sub_1E3C2FCB8(v182, v183);
    v192 = OUTLINED_FUNCTION_35_22(v184, v185, v186, v187, v188, v189, v190, v191, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    memcpy(v192, v193, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v202 = OUTLINED_FUNCTION_36_22(v194, v195, v196, v197, v198, v199, v200, v201, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    v203(v202, 0);
  }

  v204 = sub_1E392B158();
  sub_1E392CEFC();
  if (v204 == 2)
  {
    v205 = *sub_1E3E5FDEC();
    OUTLINED_FUNCTION_8();
    v207 = *(v206 + 680);
    v208 = v205;
    v207(v205);

    v209 = v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
    OUTLINED_FUNCTION_36();
    v211 = *(v210 + 1696);

    v211(17);

    v212 = 1;
  }

  else
  {
    v213 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v215 = *(v214 + 680);
    v216 = v213;
    v215(v213);

    v209 = v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
    v271[0] = 17;
    LOBYTE(v327) = 21;

    sub_1E3C2FC98();
    LOBYTE(v317) = LOBYTE(v322);
    sub_1E3C3DE00(&qword_1F5D549D8);
    v315 = v316;
    sub_1E3C3DE00(&qword_1F5D549D8);
    v313 = v314;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v278) = v312;
    sub_1E3C2FCB8(v271, &v284);
    *v271 = v284;
    *&v271[4] = WORD2(v284);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v217 + 1600))(v271, 48, v218 & 1, &qword_1F5D549D8);

    v212 = 3;
  }

  v219 = *(**v209 + 2272);

  v219(v212);

  v220 = *sub_1E392CEFC();
  (*(v220 + 1720))(6);

  sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout);
  v221 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v221, v222, 0);

  sub_1E392CD7C(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationTextLayout);
  v223 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v223, v224, 0);

  sub_1E392CD7C(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationSecondaryTextLayout);
  v225 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v225, v226, 1);

  sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout);
  v227 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v227, v228, 1);

  LODWORD(v219) = sub_1E392B158();
  OUTLINED_FUNCTION_2_72();
  v230 = *(*sub_1E392DAEC(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout, v229) + 1984);
  if (v219 == 2)
  {
    v230(1);

    v231 = *(v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout);

    v232 = sub_1E392B33C(30.0);
    (*(*v231 + 1816))(COERCE_DOUBLE(*&v232), 0);
  }

  else
  {
    v230(5);

    if (sub_1E392B304())
    {
      v233 = 42.0;
    }

    else
    {
      v233 = 50.0;
    }

    *v271 = sub_1E392B33C(v233);
    v271[8] = 0;
    v234 = sub_1E392B304();
    *&v235 = 76.0;
    if (v234)
    {
      *&v235 = 56.0;
    }

    v327 = *&v235;
    v236 = *(v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
    LOBYTE(v328) = 0;
    v322 = v236 * 48.0;
    LOBYTE(v323) = 0;
    v237 = sub_1E392B304();
    v238 = 60.0;
    if (v237)
    {
      v238 = 42.0;
    }

    sub_1E392B33C(v238);
    OUTLINED_FUNCTION_52_12();
    v239 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00(v239);
    OUTLINED_FUNCTION_9_53();
    v248 = OUTLINED_FUNCTION_26_30(v240, v241, v242, v243, v244, v245, v246, v247, *v271);
    sub_1E3C2FCB8(v248, v249);
    v258 = OUTLINED_FUNCTION_35_22(v250, v251, v252, v253, v254, v255, v256, v257, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    memcpy(v258, v259, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_27();
    v268 = OUTLINED_FUNCTION_36_22(v260, v261, v262, v263, v264, v265, v266, v267, *v271, *&v271[8], *&v271[16], *&v271[24], *&v271[32], *&v271[40], *&v271[48], *&v271[56], *&v271[64], *&v271[72], *&v271[80], *&v271[88], v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284);
    v269(v268, 52);
  }
}

void sub_1E392C5E0()
{
  if (*(v0 + 100) - 1 >= 2)
  {
    sub_1E392B158();
    OUTLINED_FUNCTION_38_15();
    if (v1)
    {
      OUTLINED_FUNCTION_49_15();
      type metadata accessor for UIEdgeInsets();
      v3 = v2;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_8_47();
      sub_1E3C3DE00(v3);
      OUTLINED_FUNCTION_7_33();
      v4 = sub_1E3C3DE00(v3);
      OUTLINED_FUNCTION_17_39(v4, v5, v6, v7, v8, v9, v10, v11, v22, v24, v26, v28, v30, v32, *&__dst[0], *&__dst[1], *&__dst[2], *&__dst[3], *&__dst[4], *&__dst[5], *&__dst[6], *&__dst[7], *&__dst[8], *&__dst[9], *&__dst[10], *&__dst[11], *&__dst[12], *&__dst[13], *&__dst[14], *&__dst[15], *&__dst[16], *&__dst[17], *&__dst[18], *&__dst[19], *&__dst[20], *&__dst[21], *&__dst[22], *&__dst[23], *&__dst[24], *&__dst[25], *&__dst[26], *&__dst[27], *&__dst[28], *&__dst[29], v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47);
      sub_1E3C3DE00(v3);
      OUTLINED_FUNCTION_4_10(v12, v13, v14, v15, v16, v17, v18, v19, v23, v25, v27, v29, v31, v33, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], *&v35, *(&v35 + 1), *&v36, *(&v36 + 1), *&v37, *&v38, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), *&v41, *&v42, *&v43);
      sub_1E3C3DE00(v3);
    }

    else
    {
      OUTLINED_FUNCTION_49_15();
      v50 = 0x4034000000000000;
      v51 = 0;
      v53 = 0;
      v52 = 0;
      v54 = 0;
      type metadata accessor for UIEdgeInsets();
      v21 = v20;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_33_27();
      sub_1E3C3DE00(v21);
      OUTLINED_FUNCTION_47_14();
      sub_1E3C3DE00(v21);
      v43 = v47;
      v44 = v48;
      LOBYTE(v45) = v49;
      sub_1E3C3DE00(v21);
      v35 = v39;
      v36 = v40;
      LOBYTE(v37) = v41;
    }

    sub_1E3C2FCB8(__dst, __src);
    memcpy(__dst, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    sub_1E3C2FDFC();
  }
}

void sub_1E392C768(double a1)
{
  OUTLINED_FUNCTION_14_0();
  if (*(v1 + 112) == a1)
  {
    return;
  }

  *(v1 + 112) = a1;
  v3 = a1 / 66.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v4 = *(sub_1E392AFDC() + 16);

  v5 = v4 - 1;
  if (v4 - 1 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 & ~(v5 >> 63);
  v7 = sub_1E392AFDC();
  if (v6 >= *(v7 + 16))
  {
    goto LABEL_20;
  }

  v8 = *(v7 + 8 * v6 + 32);

  v9 = sub_1E4205F14();
  v11 = v10;
  if (v9 == sub_1E4205F14() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1E42079A4();

    if ((v14 & 1) == 0)
    {
      v15 = *(v1 + 120);
      *(v1 + 120) = v8;
      v8 = v8;

      sub_1E392B774();
    }
  }
}

uint64_t sub_1E392C8F8(double a1, uint64_t a2, char a3)
{
  sub_1E392B158();
  OUTLINED_FUNCTION_38_15();
  if (v5)
  {
    OUTLINED_FUNCTION_111();
    (*(v6 + 464))(1);
    OUTLINED_FUNCTION_111();
    (*(v7 + 1984))(1);
    OUTLINED_FUNCTION_9_2();
    (*(v8 + 1696))(27);
    OUTLINED_FUNCTION_9_2();
    (*(v9 + 1816))(0x404A000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    return (*(v10 + 1792))(5);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v13 = (v12 + 464);
    if (a3)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }

    if (a3)
    {
      v15 = 5;
    }

    else
    {
      v15 = 6;
    }

    (*v13)(v14);
    OUTLINED_FUNCTION_9_2();
    (*(v16 + 1984))(v15);
    v17 = sub_1E392B304();
    v18 = 50.0;
    if (v17)
    {
      v18 = 42.0;
    }

    v92 = sub_1E392B33C(v18);
    v93 = 0;
    v19 = sub_1E392B304();
    v20 = 0x4053000000000000;
    if (v19)
    {
      v20 = 0x404C000000000000;
    }

    v90 = v20;
    v91 = 0;
    *&__dst[30] = a1 * 48.0;
    v89 = 0;
    v21 = sub_1E392B304();
    v22 = 60.0;
    if (v21)
    {
      v22 = 42.0;
    }

    sub_1E392B33C(v22);
    v23 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v83 = *v57;
    LOBYTE(v84) = v57[8];
    sub_1E3C3DE00(v23);
    v73 = v78;
    LOBYTE(v74) = v79;
    sub_1E3C2FCB8(&v92, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v25 = *(v24 + 1600);
    v25(__dst, 52, v26 & 1, v23);
    OUTLINED_FUNCTION_9_2();
    result = (*(v27 + 1792))(6);
    if (a3)
    {
      sub_1E392B33C(18.0);
      sub_1E3952C78();
      v83 = v28;
      v84 = v29;
      v85 = v30;
      v86 = v31;
      v87 = 0;
      v32 = sub_1E392B304();
      v33 = 27.0;
      if (v32)
      {
        v33 = 20.0;
      }

      sub_1E392B33C(v33);
      sub_1E3952C78();
      *v57 = v34;
      *&v57[8] = v35;
      *&v57[16] = v36;
      *&v57[24] = v37;
      v57[32] = 0;
      sub_1E392B33C(17.0);
      sub_1E3952C78();
      v78 = v38;
      v79 = v39;
      v80 = v40;
      v81 = v41;
      v82 = 0;
      sub_1E392B33C(18.0);
      sub_1E3952C78();
      v73 = v42;
      v74 = v43;
      v75 = v44;
      v76 = v45;
      v77 = 0;
      type metadata accessor for UIEdgeInsets();
      v47 = v46;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_4_10(v48, v49, v50, v51, v52, v53, v54, v55, *v57, *&v57[8], *&v57[16], *&v57[24], *&v57[32], *&v57[40], *&v57[48], *&v57[56], *&v57[64], *&v57[72], *&v57[80], *&v57[88], *&v57[96], *&v57[104], *&v57[112], *&v57[120], *&v57[128], *&v57[136], *&v57[144], *&v57[152], *&v57[160], *&v57[168], *&v57[176], *&v57[184], *&v57[192], *&v57[200], *&v57[208], *&v57[216], *&v57[224], *&v57[232], *&v58, *(&v58 + 1), *&v59, *(&v59 + 1), v60, v61, *&v62, *(&v62 + 1), *&v63, *(&v63 + 1), v64, v65, v66, v67, v68, v69, v70, v71, v72[0]);
      sub_1E3C3DE00(v47);
      v58 = v62;
      v59 = v63;
      LOBYTE(v60) = LOBYTE(v64);
      sub_1E3C2FCB8(&v83, __dst);
      memcpy(v57, __dst, 0xE9uLL);
      v56 = OUTLINED_FUNCTION_18();
      return v25(v57, 1, v56 & 1, v47);
    }
  }

  return result;
}

uint64_t sub_1E392CD7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = sub_1E392D4B0();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1E392CDE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = v1;
    v4 = sub_1E392D4B0();

    v6 = *sub_1E3E5FD88();
    v7 = sub_1E3E5F2C0();

    OUTLINED_FUNCTION_9_2();
    (*(v8 + 680))(v7);
    OUTLINED_FUNCTION_9_2();
    (*(v9 + 728))(2);

    *(v5 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1E392CEFC()
{
  v1 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SportsClockTextLayout();
    v2 = sub_1E3B4767C();
    v4 = *(*v2 + 1696);

    v4(17);
    OUTLINED_FUNCTION_36();
    (*(v5 + 1792))(5);

    v6 = *sub_1E3E5FDEC();
    v7 = *(*v2 + 680);
    v8 = v6;
    v7(v6);

    OUTLINED_FUNCTION_36();
    (*(v9 + 2272))(1);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E392D0B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = *a1;
  OUTLINED_FUNCTION_5_0();
  sub_1E392EBD4(v3 + v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) != 1)
  {
    return sub_1E392ED74(v16, a3);
  }

  sub_1E392E2E4(v16);
  v18 = *sub_1E3E5FD88();
  v19 = sub_1E3B030C0();
  OUTLINED_FUNCTION_5_0();
  v20 = *(v7 + 36);
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(&v10[v20], v19);
  *v10 = 0x6C69662E72617473;
  *(v10 + 1) = 0xE90000000000006CLL;
  *(v10 + 2) = v18;
  *(v10 + 3) = 0;
  v10[32] = 1;
  *(v10 + 40) = xmmword_1E42ABB20;
  sub_1E41E1A64(v10, a2, v7, a3);
  sub_1E392EC44(v10);
  sub_1E392ECA0(a3, v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
  swift_beginAccess();
  sub_1E392ED04(v13, v3 + v17);
  return swift_endAccess();
}

uint64_t sub_1E392D328(uint64_t a1, double (*a2)(void), uint64_t (*a3)(void), unsigned int *a4)
{
  v8 = sub_1E3E5FD88();
  objc_storeStrong((a1 + 16), *v8);
  *(a1 + 24) = a2();
  *(a1 + 32) = 0;
  v9 = a3();

  *(a1 + 40) = v9;
  *(a1 + 48) = 1;
  v10 = *(type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0) + 36);
  v11 = sub_1E42012F4();
  v15 = *(v11 - 8);
  (*(v15 + 8))(a1 + v10, v11);
  v12 = *a4;
  v13 = *(v15 + 104);

  return v13(a1 + v10, v12, v11);
}

uint64_t sub_1E392D428@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v1 + 98);
  v4 = v3 - 5;
  v5 = v3 & 1;
  if (v4 <= 0xFFFFFFFC && v5 == 0)
  {
    v7 = &OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout;
    v8 = sub_1E392D2F4;
  }

  else
  {
    v7 = &OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout;
    v8 = sub_1E392D07C;
  }

  return sub_1E392D0B0(v7, v8, a1);
}

uint64_t sub_1E392D4B0()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_36();
  (*(v3 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1840))(4);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v5 + 1768))();

  v6 = *sub_1E3E5FD88();
  v7 = *(*v0 + 680);
  v8 = v6;
  v7(v6);

  return v0;
}

uint64_t sub_1E392D628()
{
  v1 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();

    v4 = *sub_1E3E5FD88();
    v5 = *(*v2 + 680);
    v6 = v4;
    v5(v4);

    OUTLINED_FUNCTION_36();
    (*(v7 + 1936))(2);
    OUTLINED_FUNCTION_36();
    v8 = OUTLINED_FUNCTION_15_8();
    v9(v8);
    OUTLINED_FUNCTION_36();
    v10 = OUTLINED_FUNCTION_15_8();
    v11(v10);
    OUTLINED_FUNCTION_36();
    v12 = OUTLINED_FUNCTION_15_8();
    v13(v12);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E392D7F8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1792))(6);
  v3 = *sub_1E3E5FD88();
  v4 = *(*v1 + 680);
  v5 = v3;
  v4(v3);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1840))(4);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1936))(2);
  OUTLINED_FUNCTION_36();
  v8 = OUTLINED_FUNCTION_36_0();
  v9(v8);
  OUTLINED_FUNCTION_36();
  v10 = OUTLINED_FUNCTION_36_0();
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = OUTLINED_FUNCTION_36_0();
  v13(v12);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  return (*(v14 + 1768))();
}

uint64_t sub_1E392DA10()
{
  OUTLINED_FUNCTION_19_39();
  sub_1E3C2FC98();
  v0 = OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_18_33(v0);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_36();
  v9 = OUTLINED_FUNCTION_46_16(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14);
  v10(v9);
  OUTLINED_FUNCTION_36();
  return (*(v11 + 1792))(7);
}

uint64_t sub_1E392DAEC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = v2;
    v8 = type metadata accessor for TextLayout();
    v10 = sub_1E383BCC0();
    sub_1E41E1A64(&v10, a2, v8, &v11);

    v5 = v11;
    *(v7 + v3) = v11;
  }

  return v5;
}

uint64_t sub_1E392DB98()
{
  OUTLINED_FUNCTION_19_39();
  sub_1E3C2FC98();
  v0 = OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_18_33(v0);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_36();
  v9 = OUTLINED_FUNCTION_46_16(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13);
  return v10(v9);
}

uint64_t sub_1E392DC90(char a1)
{
  v2 = v1;
  *(v1 + 98) = 4;
  *(v1 + 101) = 1;
  *(v1 + 104) = xmmword_1E42ABB30;
  v4 = *MEMORY[0x1E69DDC20];
  *(v1 + 120) = *MEMORY[0x1E69DDC20];
  *(v1 + 128) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout;
  v6 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout;
  type metadata accessor for ImageLayout();
  v8 = v4;
  *(v2 + v7) = sub_1E3BD61D8();
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationTextLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationSecondaryTextLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___errorTitleLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___errorSubtitleLayout) = 0;
  *(v2 + 99) = sub_1E3D3CD00(2, 0);
  *(v2 + 100) = a1;
  v9 = sub_1E3C2F9A0();

  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v34 = v36;
  v35 = v37;
  sub_1E3C2FC98();
  v30 = v32;
  v31 = v33;
  sub_1E3C3DE00(v10);
  v26 = v28;
  v27 = v29;
  sub_1E3C3DE00(v10);
  v22 = v24;
  v23 = v25;
  sub_1E3C3DE00(v10);
  v18[12] = v20;
  v19 = v21;
  sub_1E3C2FCB8(&v34, __src);
  memcpy(v18, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC();
  sub_1E392B158();
  sub_1E392C5E0();
  sub_1E392B774();
  v11 = sub_1E392D628();
  sub_1E3C37CBC(v11, 16);

  sub_1E3C37CBC(v12, 15);

  v13 = sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout);
  sub_1E3C37CBC(v13, 237);

  v14 = sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout);
  sub_1E3C37CBC(v14, 238);

  OUTLINED_FUNCTION_2_72();
  v16 = sub_1E392DAEC(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout, v15);
  sub_1E3C37CBC(v16, 236);

  sub_1E3C37CBC(*(v9 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout), 40);

  return v9;
}

uint64_t sub_1E392DF94()
{
  v1 = *(v0 + 100);
  v2 = 1.0;
  if (v1 != 3)
  {
    v3 = sub_1E392B158();
    if (v1 == 2 && v3 != 2)
    {
      v2 = 0.5;
      if ((sub_1E373F630() & 1) == 0)
      {
        if (sub_1E373F630())
        {
          v2 = 0.5;
        }

        else
        {
          v2 = 1.0;
        }
      }
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) = v2;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) != v5)
  {
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v6, v7);
    sub_1E4200514();
    sub_1E4200594();
  }

  sub_1E392B158();
  sub_1E392C5E0();

  return sub_1E392B774();
}

uint64_t sub_1E392E0C8()
{
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout);
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout);
}

uint64_t sub_1E392E19C()
{
  v0 = sub_1E3C36C6C();

  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout);
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout);

  return v0;
}

uint64_t sub_1E392E270()
{
  v0 = sub_1E392E19C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E392E2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E392E350()
{
  result = qword_1ECF2E298;
  if (!qword_1ECF2E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E298);
  }

  return result;
}

unint64_t sub_1E392E3A8()
{
  result = qword_1ECF2E2A0;
  if (!qword_1ECF2E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E2A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalBannerScoreboardViewLayout.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v7);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v7);
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v7);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E392E638(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E392E64C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation.Size(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

void sub_1E392E740()
{
  sub_1E392E83C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E392E83C()
{
  if (!qword_1EE23CFD8[0])
  {
    type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(255);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, qword_1EE23CFD8);
    }
  }
}

void sub_1E392E8BC()
{
  v0 = sub_1E3755B54();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_13_59(v0, &qword_1EE288748, MEMORY[0x1E6980E60]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_13_59(v2, &qword_1EE288738, MEMORY[0x1E6980F50]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for SymbolScale(319);
        if (v5 <= 0x3F)
        {
          sub_1E42012F4();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E392E9D8()
{
  sub_1E392EACC(&qword_1ECF2E2C0, type metadata accessor for UIContentSizeCategory);
  sub_1E392EACC(&qword_1ECF2E2C8, type metadata accessor for UIContentSizeCategory);

  return sub_1E4207764();
}

uint64_t sub_1E392EACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E392EB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1E392EBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392EC44(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E392ECA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392ED04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E392EDD8()
{
  result = qword_1EE23DF30;
  if (!qword_1EE23DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23DF30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  STACK[0x300] = a9;
  LOBYTE(STACK[0x308]) = a10;

  return sub_1E3C3DE00(v10);
}

uint64_t sub_1E392EE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1720))();
  if (v6)
  {
    sub_1E4203F04();
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v4;
    v10 = v5;
  }

  OUTLINED_FUNCTION_47_0();
  v12 = (*(v11 + 1744))();
  if (v14)
  {
    sub_1E4203F54();
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = v12;
    v18 = v13;
  }

  OUTLINED_FUNCTION_47_0();
  v20 = (*(v19 + 1792))();
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v20;
    v23 = sub_1E32AE9B0(v20);
    if (v23)
    {
      v24 = v23;
      v59 = v21;
      result = sub_1E4207574();
      if (v24 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1E6911E60](v26, v22);
        }

        else
        {
          v27 = *(v22 + 8 * v26 + 32);
        }

        v28 = v27;
        ++v26;
        sub_1E38F08C4(v27);

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v24 != v26);

      v21 = v59;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_47_0();
  v30 = (*(v29 + 1816))();
  if (v30)
  {
    if (*(v30 + 16) >= *(v21 + 16))
    {
      v31 = *(v21 + 16);
    }

    else
    {
      v31 = *(v30 + 16);
    }

    if (v31)
    {
      v32 = v21 + 32;
      v33 = v30 + 32;
      v34 = MEMORY[0x1E69E7CC0];
      do
      {

        v35 = sub_1E4203C14();
        v37 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1E392FDC8(0, *(v34 + 2) + 1, 1, v34);
        }

        v39 = *(v34 + 2);
        v38 = *(v34 + 3);
        if (v39 >= v38 >> 1)
        {
          v34 = sub_1E392FDC8((v38 > 1), v39 + 1, 1, v34);
        }

        *(v34 + 2) = v39 + 1;
        v40 = &v34[16 * v39];
        *(v40 + 4) = v35;
        *(v40 + 5) = v37;
        v33 += 8;
        v32 += 8;
        --v31;
      }

      while (v31);
    }

    v41 = sub_1E4203C24();
  }

  else
  {
    v41 = MEMORY[0x1E690E590](v21);
  }

  v42 = v41;
  OUTLINED_FUNCTION_47_0();
  v44 = *(v43 + 200);

  v46 = v44(v45);
  v62 = v47 & 1;
  v48 = (*(*a1 + 304))();
  v50 = v49;

  v61 = v50 & 1;
  v52 = (*(*a1 + 1768))(v51);
  if (v52 == 4)
  {
    v53 = 2;
  }

  else
  {
    v53 = v52 == 2;
  }

  v54 = (*(*a1 + 1840))();
  v60 = v55 & 1;
  v56 = (*(*a1 + 1864))();
  v58 = v57;

  *a2 = v42;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v53;
  *(a2 + 48) = v46;
  *(a2 + 56) = v62;
  *(a2 + 64) = v48;
  *(a2 + 72) = v61;
  *(a2 + 80) = v54;
  *(a2 + 88) = v60;
  *(a2 + 96) = v56;
  *(a2 + 104) = v58 & 1;
  return result;
}

uint64_t sub_1E392F30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v50 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v45 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v45 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v45 - v24;
  if (*(v2 + 40))
  {
    if (*(v2 + 40) == 1)
    {
      sub_1E392FED0(v2, __dst);
      sub_1E4201144();
      v26 = __dst[0];
      v27 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300);
      OUTLINED_FUNCTION_2();
      (*(v28 + 16))(v9, v47);
      v29 = v9 + *(v46 + 36);
      *v29 = v26;
      v30 = *&__dst[1];
      *(v29 + 24) = *&__dst[3];
      *(v29 + 8) = v30;
      *(v29 + 40) = v27;
      sub_1E3930240(v9, v12);
      v31 = &qword_1ECF2E2D8;
      OUTLINED_FUNCTION_10_48(v12, v18);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF94();
      sub_1E3930078();
      OUTLINED_FUNCTION_9_54();
      sub_1E4201F44();
      sub_1E37E93E8(v21, v15, &qword_1ECF2E2F0);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF08();
      sub_1E393015C();
      OUTLINED_FUNCTION_6_57();
      OUTLINED_FUNCTION_7_75();
      sub_1E325F6F0(v32, v33);
      v34 = v12;
    }

    else
    {
      sub_1E392FED0(v2, __dst);
      sub_1E4201144();
      v39 = __dst[0];
      v40 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300);
      OUTLINED_FUNCTION_2();
      (*(v41 + 16))(v5, v47);
      v42 = &v5[*(v51 + 36)];
      *v42 = v39;
      v43 = *&__dst[1];
      *(v42 + 24) = *&__dst[3];
      *(v42 + 8) = v43;
      v42[40] = v40;
      v31 = &qword_1ECF2E2D0;
      OUTLINED_FUNCTION_10_48(v5, v15);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF08();
      sub_1E393015C();
      sub_1E4201F44();
      v34 = v5;
    }
  }

  else
  {
    sub_1E392FED0(v2, __dst);
    sub_1E4201064();
    sub_1E4203DA4();
    sub_1E4200D94();
    v35 = sub_1E4203D94();
    v37 = v36;
    memcpy(v54, v53, 0x58uLL);
    v54[11] = v35;
    v54[12] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300);
    OUTLINED_FUNCTION_2();
    (*(v38 + 16))(v25, v47);
    memcpy(&v25[*(v22 + 36)], v54, 0x68uLL);
    memcpy(__dst, v53, 0x58uLL);
    __dst[11] = v35;
    __dst[12] = v37;
    OUTLINED_FUNCTION_10_48(v54, &v52);
    sub_1E325F6F0(__dst, &qword_1ECF2E328);
    v31 = &qword_1ECF2E2F8;
    OUTLINED_FUNCTION_10_48(v25, v18);
    swift_storeEnumTagMultiPayload();
    sub_1E392FF94();
    sub_1E3930078();
    OUTLINED_FUNCTION_9_54();
    sub_1E4201F44();
    sub_1E37E93E8(v21, v15, &qword_1ECF2E2F0);
    swift_storeEnumTagMultiPayload();
    sub_1E392FF08();
    sub_1E393015C();
    OUTLINED_FUNCTION_6_57();
    sub_1E325F6F0(v21, &qword_1ECF2E2F0);
    v34 = v25;
  }

  return sub_1E325F6F0(v34, v31);
}

uint64_t sub_1E392F9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v56 = a3;
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  OUTLINED_FUNCTION_7_75();
  sub_1E4201F54();
  OUTLINED_FUNCTION_1_2();
  v53 = v26;
  v54 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v52 = &v50 - v28;
  if (a1)
  {
    v29 = swift_retain_n();
    sub_1E392EE54(v29, v59);
    v50 = a1;
    v30 = v56;
    MEMORY[0x1E690DE70](v59, a2, &type metadata for GradientModifier, v56);
    memcpy(v60, v59, 0x69uLL);
    sub_1E3930304(v60);
    v31 = sub_1E39302B0();
    v57 = v30;
    v58 = v31;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v32 = *(v17 + 16);
    v32(v24, v21, v15);
    v33 = *(v17 + 8);
    v33(v21, v15);
    v32(v21, v24, v15);
    v34 = v52;
    OUTLINED_FUNCTION_7_75();
    sub_1E37B8D98(v35, v36);

    v33(v21, v15);
    v33(v24, v15);
  }

  else
  {
    v37 = *(v7 + 16);
    v37(v14, WitnessTable, a2);
    v37(v11, v14, a2);
    v38 = sub_1E39302B0();
    v65 = v56;
    v66 = v38;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v39 = v52;
    OUTLINED_FUNCTION_7_75();
    sub_1E37B8E90(v40, v41, v42);
    v43 = *(v7 + 8);
    v44 = v11;
    v34 = v39;
    v43(v44, a2);
    v43(v14, a2);
  }

  v45 = sub_1E39302B0();
  v46 = v56;
  v63 = v56;
  v64 = v45;
  OUTLINED_FUNCTION_4_1();
  v61 = swift_getWitnessTable();
  v62 = v46;
  OUTLINED_FUNCTION_2_25();
  v47 = v54;
  swift_getWitnessTable();
  v48 = v53;
  (*(v53 + 16))(v55, v34, v47);
  return (*(v48 + 8))(v34, v47);
}

char *sub_1E392FDC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E392FF08()
{
  result = qword_1ECF2E308;
  if (!qword_1ECF2E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2F0);
    sub_1E392FF94();
    sub_1E3930078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E308);
  }

  return result;
}

unint64_t sub_1E392FF94()
{
  result = qword_1ECF2E310;
  if (!qword_1ECF2E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2F8);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300);
    sub_1E32752B0(&qword_1ECF2E320, &qword_1ECF2E328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E310);
  }

  return result;
}

unint64_t sub_1E3930078()
{
  result = qword_1ECF2E330;
  if (!qword_1ECF2E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2D8);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300);
    sub_1E32752B0(&qword_1ECF2E338, &qword_1ECF2E340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E330);
  }

  return result;
}

unint64_t sub_1E393015C()
{
  result = qword_1ECF2E348;
  if (!qword_1ECF2E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2D0);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300);
    sub_1E32752B0(&qword_1ECF2E350, &qword_1ECF2E358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E348);
  }

  return result;
}

uint64_t sub_1E3930240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E39302B0()
{
  result = qword_1EE27E4F0;
  if (!qword_1EE27E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27E4F0);
  }

  return result;
}

unint64_t sub_1E3930338()
{
  result = qword_1ECF2E360;
  if (!qword_1ECF2E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E360);
  }

  return result;
}

uint64_t sub_1E39303B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1E39303F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GradientModifier.GradientType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3930538()
{
  result = qword_1ECF2E368;
  if (!qword_1ECF2E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E370);
    sub_1E392FF08();
    sub_1E393015C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E368);
  }

  return result;
}

uint64_t sub_1E39305C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF2E428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4201CF4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000013, 0x80000001E4268150, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3930868()
{
  type metadata accessor for SportsPlayByPlayItemViewData();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_100_2();
  sub_1E38197D0();
  if (!v1 && sub_1E38196B0())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 112))();

    OUTLINED_FUNCTION_22_25();
    sub_1E393B640();
  }

  return OUTLINED_FUNCTION_53();
}

uint64_t sub_1E3930950@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E388);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for SportsPlayByPlayContentView(0);
  OUTLINED_FUNCTION_8();
  (*(v6 + 176))(&v23);
  v7 = 0.0;
  if ((v27 & 1) == 0)
  {
    v7 = sub_1E3952BD8(*&v23, *&v24, *&v25);
  }

  *v2 = sub_1E4201D44();
  *(v2 + 8) = v7;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E390);
  OUTLINED_FUNCTION_140_5();
  sub_1E3930AB0(v1, v8, v9, v10, v11, v12, v13, v14, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v15 = sub_1E4203E64();
  v16 = sub_1E3818BB0();
  v17 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v17, v18, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E398);
  v21 = (a1 + *(result + 36));
  *v21 = v15;
  v21[1] = v16;
  return result;
}

void sub_1E3930AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v217 = v27;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E898);
  OUTLINED_FUNCTION_0_10();
  v201 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8_4();
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v214 = v31;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v208 = v33;
  v34 = OUTLINED_FUNCTION_138();
  v35 = type metadata accessor for SportsPlayByPlayContentView(v34);
  OUTLINED_FUNCTION_0_10();
  v209 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_6();
  v210 = v39;
  v211 = v38;
  v40 = OUTLINED_FUNCTION_138();
  v205 = type metadata accessor for SportsPlayByPlayItemView(v40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8B0);
  v43 = OUTLINED_FUNCTION_3_6(v42, &a18);
  v207 = v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v206 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v216 = v47;
  OUTLINED_FUNCTION_138();
  v48 = sub_1E4201CF4();
  v49 = OUTLINED_FUNCTION_3_6(v48, &a13);
  v198 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v51);
  v52 = sub_1E4201324();
  v53 = OUTLINED_FUNCTION_3_6(v52, &a10);
  v194 = v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v55);
  v56 = sub_1E42012F4();
  v57 = OUTLINED_FUNCTION_3_6(v56, v223);
  v189 = v58;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_3_6(v60, &a11);
  v195 = v61;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D0);
  OUTLINED_FUNCTION_3_6(v64, &a16);
  v190 = v65;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v67);
  v68 = type metadata accessor for SportsPlayByPlayItemViewData();
  v69 = OUTLINED_FUNCTION_17_2(v68);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C8);
  v72 = OUTLINED_FUNCTION_17_2(v71);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v181[-v74];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8B8);
  v77 = OUTLINED_FUNCTION_17_2(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_2_5();
  v220 = v78;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_25_3();
  v219 = v80;
  v81 = OUTLINED_FUNCTION_138();
  v82 = type metadata accessor for SportsPlayByPlayErrorView(v81);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8C0);
  v85 = OUTLINED_FUNCTION_17_2(v84);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_2_5();
  v218 = v86;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v181[-v88];
  v90 = sub_1E3819C14();
  if (v90 == 3)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v82);
  }

  else
  {
    v94 = v90;
    v187 = *(v26 + *(v35 + 28));
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    v188 = v21;
    v95 = v35;
    v96 = v20;
    v97 = v75;
    v98 = v26;
    v99 = v82[5];
    *(v22 + v99) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
    v26 = v98;
    v75 = v97;
    v20 = v96;
    v35 = v95;
    v21 = v188;
    swift_storeEnumTagMultiPayload();
    *(v22 + v82[6]) = v94;
    *(v22 + v82[7]) = v187;
    sub_1E393C6D8(v22, v89, type metadata accessor for SportsPlayByPlayErrorView);
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v82);
  }

  v100 = sub_1E38196B0();
  if (v100)
  {
    v101 = v100;
    if (sub_1E3819C14() == 3)
    {
      v102 = sub_1E3930868();
      v186 = v89;
      if (v103)
      {
        v104 = v102;
        v105 = v103;
        OUTLINED_FUNCTION_153();
        v106();
        v107 = *(v21 + 72);
        v108 = *(v21 + 80);

        OUTLINED_FUNCTION_22_25();
        sub_1E393B640();
        LOBYTE(v107) = sub_1E41494A8(v107, v108);

        if ((v107 & 1) == 0)
        {
          v221 = v104;
          v222 = v105;
          sub_1E32822E0();
          v188 = sub_1E4202C44();
          v187 = v129;
          v200 = v130;
          v221 = v188;
          v222 = v129;
          v184 = v131 & 1;
          v223[0] = v131 & 1;
          v224 = v130;
          v183 = sub_1E3753E44();
          OUTLINED_FUNCTION_142_4();
          sub_1E3746E10(v132);
          v133 = v191;
          sub_1E374709C(v191);
          v201 = v35;
          v182 = j__OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_153();
          sub_1E37B5FBC(v134);
          v135 = j__OUTLINED_FUNCTION_18();
          v136 = v193;
          sub_1E37B6028(v183, v108, v133, v182, v21, v135 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v193);

          OUTLINED_FUNCTION_15_5();
          v137(v21, v199);
          OUTLINED_FUNCTION_15_5();
          v138(v133, v196);
          OUTLINED_FUNCTION_15_5();
          v139(v108, v192);
          sub_1E37434B8(v188, v187, v184);

          v221 = MEMORY[0x1E6981148];
          v35 = v201;
          v222 = MEMORY[0x1E6981138];
          OUTLINED_FUNCTION_20_43();
          swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_41_0();
          v140 = v197;
          View.accessibilityIdentifier(key:location:)();
          OUTLINED_FUNCTION_15_5();
          v141(v136, v140);
          OUTLINED_FUNCTION_155_0();
          v142 = OUTLINED_FUNCTION_87_2();
          v110 = v202;
          v143(v142);
          v109 = 0;
          goto LABEL_15;
        }
      }

      v109 = 1;
      v110 = v202;
LABEL_15:
      __swift_storeEnumTagSinglePayload(v75, v109, 1, v110);
      v144 = *(v26 + *(v35 + 28));
      *v20 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      OUTLINED_FUNCTION_125_2();
      v145 = v205;
      v146 = v75;
      v185 = v75;
      v147 = *(v205 + 20);
      *(v20 + v147) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
      swift_storeEnumTagMultiPayload();
      *(v20 + v145[7]) = v101;
      *(v20 + v145[6]) = v144;
      v148 = *(*v101 + 112);
      swift_retain_n();

      v148(v149);

      *(v20 + v145[9]) = 0;
      OUTLINED_FUNCTION_25_34();
      v150 = v211;
      sub_1E393C67C(v26, v211, v151);
      OUTLINED_FUNCTION_16_14();
      swift_allocObject();
      OUTLINED_FUNCTION_19_40();
      sub_1E393C6D8(v150, v152, v153);
      sub_1E393CB3C(&qword_1ECF2E8F0, type metadata accessor for SportsPlayByPlayItemView);
      v154 = v216;
      sub_1E4202E74();

      OUTLINED_FUNCTION_63_10();
      v155 = v203;
      sub_1E3743538(v146, v203, &qword_1ECF2E7C8);
      v157 = v206;
      v156 = v207;
      v158 = *(v207 + 16);
      v159 = v204;
      v158(v206, v154, v204);
      v160 = v208;
      sub_1E3743538(v155, v208, &qword_1ECF2E7C8);
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E920);
      v158(v160 + *(v161 + 48), v157, v159);
      v162 = *(v156 + 8);
      v162(v157, v159);
      sub_1E325F6F0(v155, &qword_1ECF2E7C8);
      sub_1E3743538(v160, v214, &qword_1ECF2E8A8);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_112_1();
      sub_1E32752B0(v163, v164);
      sub_1E393D16C();
      v112 = v219;
      sub_1E4201F44();

      OUTLINED_FUNCTION_112_1();
      sub_1E325F6F0(v165, v166);
      v162(v216, v159);
      sub_1E325F6F0(v185, &qword_1ECF2E7C8);
      v111 = 0;
      goto LABEL_16;
    }
  }

  if (sub_1E38196B0())
  {

    v111 = 1;
    v112 = v219;
  }

  else
  {
    v225 = sub_1E3818BB0();
    OUTLINED_FUNCTION_25_34();
    v113 = v211;
    sub_1E393C67C(v26, v211, v114);
    OUTLINED_FUNCTION_16_14();
    swift_allocObject();
    OUTLINED_FUNCTION_19_40();
    sub_1E393C6D8(v113, v115, v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8C8);
    OUTLINED_FUNCTION_112_1();
    sub_1E32752B0(v117, v118);
    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E8D8);
    v120 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E8E0);
    v121 = sub_1E393D084();
    v221 = v120;
    v222 = v121;
    OUTLINED_FUNCTION_8_16();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v221 = v119;
    v222 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E393CB3C(&qword_1ECF2E8F8, type metadata accessor for SportsPlayByPlayItemViewData);
    OUTLINED_FUNCTION_19_1();
    sub_1E4203B44();
    v123 = v201;
    v124 = v215;
    v125 = OUTLINED_FUNCTION_35_5();
    v126(v125);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v127, v128);
    sub_1E393D16C();
    v112 = v219;
    sub_1E4201F44();
    (*(v123 + 8))(v21, v124);
    v111 = 0;
  }

LABEL_16:
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E910);
  __swift_storeEnumTagSinglePayload(v112, v111, 1, v167);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v168, v169, v170);
  v171 = v220;
  sub_1E3743538(v112, v220, &qword_1ECF2E8B8);
  v172 = v217;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v173, v174, v175);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E918);
  sub_1E3743538(v171, v172 + *(v176 + 48), &qword_1ECF2E8B8);
  sub_1E325F6F0(v112, &qword_1ECF2E8B8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v177, v178);
  sub_1E325F6F0(v171, &qword_1ECF2E8B8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v179, v180);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3931B64()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v58 = v6;
  v7 = type metadata accessor for SportsPlayByPlayContentView(0);
  v8 = v7 - 8;
  v57 = *(v7 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_6();
  v55 = v9;
  OUTLINED_FUNCTION_138();
  v10 = type metadata accessor for SportsPlayByPlayItemViewData();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v12 = type metadata accessor for SportsPlayByPlayItemView(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8D8);
  OUTLINED_FUNCTION_0_10();
  v53 = v17;
  v54 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v50 = v20;
  sub_1E393C67C(v5, v1, type metadata accessor for SportsPlayByPlayItemViewData);
  v22 = *(v8 + 32);
  v21 = *(v8 + 36);
  v23 = v3;
  v52 = v3;
  v24 = *(v3 + v21);
  v25 = *(v23 + v22 + 8);
  v27 = v5[1];
  v49 = *v5;
  v26 = v49;
  v28 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies;
  OUTLINED_FUNCTION_161_2();
  v29 = *(v25 + v28);

  v30 = sub_1E3893E78(v26, v27, v29);
  LOBYTE(v26) = v31;
  swift_endAccess();
  if (v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  OUTLINED_FUNCTION_125_2();
  v33 = v13[7];
  *(v0 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  *(v0 + v13[9]) = 0;
  *(v0 + v13[8]) = v24;
  OUTLINED_FUNCTION_23_33();
  sub_1E393C6D8(v1, v0 + v34, v35);
  *(v0 + v13[11]) = v32;
  sub_1E3931FE8();
  sub_1E4200DC4();
  sub_1E4200DD4();
  sub_1E4200DE4();

  v36 = sub_1E4200DB4();

  v37 = OUTLINED_FUNCTION_32_0();
  sub_1E393C67C(v37, v38, v39);
  v40 = v51;
  *&v16[*(v51 + 36)] = v36;
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_161_2();
  sub_1E3893E78(v49, v27, *(v25 + v28));
  swift_endAccess();
  v41 = sub_1E393D084();
  v42 = v50;
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v16, &qword_1ECF2E8E0);
  OUTLINED_FUNCTION_25_34();
  v43 = v55;
  sub_1E393C67C(v52, v55, v44);
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_19_40();
  sub_1E393C6D8(v43, v45, v46);
  v59 = v40;
  v60 = v41;
  OUTLINED_FUNCTION_8_16();
  swift_getOpaqueTypeConformance2();
  v47 = v53;
  sub_1E4202E74();

  (*(v54 + 8))(v42, v47);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3931FE8()
{
  __asm { FMOV            V0.2D, #1.0 }

  sub_1E3932088();
  sub_1E4200DF4();
  v5 = sub_1E4203E64();
  sub_1E4203E04();

  OUTLINED_FUNCTION_13_8();
  sub_1E4200E04();
  OUTLINED_FUNCTION_50();

  return v5;
}

unint64_t sub_1E3932088()
{
  result = qword_1ECF4FD30[0];
  if (!qword_1ECF4FD30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF4FD30);
  }

  return result;
}

uint64_t sub_1E39320F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E3741EA0(a1, a3, &qword_1ECF28BB8);
  v5 = type metadata accessor for SportsPlayByPlayContentView(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + v5[6]);
  type metadata accessor for SportsPlayByPlayViewModel(0);
  OUTLINED_FUNCTION_26_31();
  sub_1E393CB3C(v8, v9);
  OUTLINED_FUNCTION_35_5();
  result = sub_1E42010C4();
  *v7 = result;
  v7[1] = v11;
  *(a3 + v5[7]) = a2;
  return result;
}

void sub_1E39321E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v133 = v29;
  v136 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v123 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5D0);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v119 - v39;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_12();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5E0);
  OUTLINED_FUNCTION_3_6(v42, &a22);
  v130 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5E8);
  OUTLINED_FUNCTION_3_6(v46, &a20);
  v128 = v47;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5F0);
  OUTLINED_FUNCTION_6_4(v50, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v52);
  v53 = objc_opt_self();
  v54 = *(v24 + *(type metadata accessor for SportsPlayByPlayErrorView(0) + 28));
  sub_1E3754C00();
  OUTLINED_FUNCTION_2_1();
  v56 = (*(v55 + 2408))();

  v57 = [v53 vui:v56 fontFromTextLayout:?];

  sub_1E3754D00();
  OUTLINED_FUNCTION_2_1();
  v59 = (*(v58 + 2408))();

  v60 = [v53 vui:v59 fontFromTextLayout:?];

  *v25 = sub_1E4201B84();
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v120 = v25;
  v61 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5F8) + 44);
  *v40 = sub_1E4201D44();
  *(v40 + 1) = 0;
  v40[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E600);
  v62 = v121;
  sub_1E3932994(v28, v57, v60, v63, v64, v65, v66, v67, v119, v120, v121, v122, v123, v60, v57, v125, v126, v127, v128, v129);
  sub_1E3743538(v40, v37, &qword_1ECF2E5D0);
  *v61 = 0;
  *(v61 + 8) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E608);
  sub_1E3743538(v37, v61 + *(v68 + 48), &qword_1ECF2E5D0);
  v69 = v61 + *(v68 + 64);
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_1E325F6F0(v40, &qword_1ECF2E5D0);
  v70 = OUTLINED_FUNCTION_11_6();
  sub_1E325F6F0(v70, v71);
  v134 = v54;
  sub_1E375397C();
  OUTLINED_FUNCTION_2_1();
  v73 = (*(v72 + 304))();
  LOBYTE(v37) = v74;

  if (v37)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  v132 = v28;
  v76 = v123;
  sub_1E3746E10(v62);
  v77 = sub_1E42012B4();
  v78 = v62;
  v123 = v76[1];
  (v123)(v62, v136);
  OUTLINED_FUNCTION_9_0();
  v80 = sub_1E32752B0(v79, &qword_1ECF2E5D8);
  v81 = v135;
  OUTLINED_FUNCTION_27_0();
  v82 = sub_1E3B6C5B4();
  v118 = (v77 & 1) == 0;
  v117 = v83 & 1;
  v115 = v82;
  v116 = v84;
  v85 = v122;
  v86 = OUTLINED_FUNCTION_27_24();
  v87 = v120;
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v86, v88, v89, v90, v91, v92, v75, 0, 0, 1, 0, 1, v115, v116, v117, v118, v81, v80);
  sub_1E325F6F0(v87, &qword_1ECF2E5D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v94 = sub_1E4202744();
  *(inited + 32) = v94;
  *(inited + 33) = sub_1E4202754();
  v95 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v94)
  {
    v95 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v96)
  {
    v95 = sub_1E4202774();
  }

  sub_1E3754B54();
  OUTLINED_FUNCTION_30();
  (*(v97 + 176))(v139);
  OUTLINED_FUNCTION_122_1();
  v98 = v140;
  if (v140)
  {
    v99 = 0;
  }

  else
  {
    v100 = OUTLINED_FUNCTION_6();
    v99 = sub_1E3952BD8(v100, v101, v102);
  }

  sub_1E3746E10(v78);
  v103 = sub_1E42012B4();
  OUTLINED_FUNCTION_113_0();
  v104();
  v137 = v135;
  v138 = v80;
  OUTLINED_FUNCTION_5_71();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v131;
  View.conditionalPadding(edges:length:condition:)(v95, v99, v98 & 1, v103 & 1, v131, OpaqueTypeConformance2);
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_15_5();
  v108(v85, v106);
  OUTLINED_FUNCTION_155_0();
  v109 = v125;
  v110 = OUTLINED_FUNCTION_16_0();
  v111(v110);
  OUTLINED_FUNCTION_141();
  v113 = v109 + v112;
  v114 = v133;
  *v113 = v134;
  *(v113 + 8) = 0;
  sub_1E3741EA0(v109, v114, &qword_1ECF2E5F0);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3932994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v109 = v25;
  v107 = v26;
  v28 = v27;
  v110 = v29;
  v118 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v122 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v117 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v121 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v115 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v119 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v120 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v113 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  v111 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v114 = v47;
  v48 = OUTLINED_FUNCTION_138();
  v104 = *(v28 + *(type metadata accessor for SportsPlayByPlayErrorView(v48) + 24));
  SportsDisplayError.title.getter();
  sub_1E32822E0();
  v49 = sub_1E4202C44();
  v100 = v50;
  v52 = v51 & 1;
  v53 = sub_1E3754C00();
  sub_1E3746E10(v21);
  sub_1E374709C(v20);
  v54 = MEMORY[0x1E6981148];
  v55 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_154_0();
  v56 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_154_0();
  sub_1E37B5FBC(v57);
  OUTLINED_FUNCTION_154_0();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  sub_1E37B6028(v53, v21, v20, v56, v22, v58, v54, v55, v111);

  v103 = *(v122 + 8);
  v103(v22, v118);
  v102 = *(v121 + 8);
  v102(v20, v117);
  v59 = v21;
  v101 = *(v119 + 8);
  v101(v21, v115);
  sub_1E37434B8(v49, v100, v52);

  if (v107)
  {
    sub_1E405EEA0();
  }

  swift_getKeyPath();
  v60 = v111;
  v112 = *(v120 + 32);
  v112(v105, v60, v116);
  OUTLINED_FUNCTION_141_3();
  sub_1E3741EA0(v105, v114, &qword_1ECF2E470);
  SportsDisplayError.subtitle.getter(v104);
  v106 = sub_1E4202C44();
  v62 = v61;
  OUTLINED_FUNCTION_110_4(v106, v61, v63, v64, &a15);
  sub_1E3754D00();
  v65 = v59;
  sub_1E3746E10(v59);
  OUTLINED_FUNCTION_89_0();
  v66 = v20;
  sub_1E374709C(v20);
  v67 = MEMORY[0x1E6981148];
  v68 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_87_2();
  v69 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_2();
  sub_1E37B5FBC(v70);
  OUTLINED_FUNCTION_87_2();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v71 = OUTLINED_FUNCTION_35_5();
  sub_1E37B6028(v71, v72, v66, v69, v22, v73, v67, v68, v74);

  v103(v22, v118);
  v102(v66, v117);
  v101(v65, v115);
  sub_1E37434B8(v106, v62, v49);

  if (v109)
  {
    sub_1E405EEA0();
  }

  swift_getKeyPath();
  v112(v108, v113, v116);
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v75, v76, v77);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v78, v79, v80);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v81, v82, v83);
  *v110 = 0;
  *(v110 + 8) = 1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E618);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v85, v86, v87);
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v88, v89, v90);
  v91 = v110 + *(v84 + 80);
  *v91 = 0;
  *(v91 + 8) = 1;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v92, v93);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v94, v95);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v96, v97);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v98, v99);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E393310C()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v43 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3A0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  sub_1E3755264(v4);
  v12 = sub_1E4203644();
  v13 = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3B8);
  OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_113();
  v15(v14);
  v16 = v1 + *(v6 + 44);
  *v16 = v12;
  *(v16 + 8) = v13;
  sub_1E375397C();
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 552))(&v48);

  v18 = 0.0;
  if ((v49 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_86_3();
  }

  v19 = (v2 + *(v8 + 36));
  v20 = *(sub_1E4201534() + 20);
  v21 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v22 + 104))(v19 + v20, v21);
  *v19 = v18;
  v19[1] = v18;
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  sub_1E3741EA0(v1, v2, &qword_1ECF2E3A0);
  sub_1E3741EA0(v2, v0, &qword_1ECF2E3A8);
  *(v0 + *(v10 + 36)) = 0;
  v23 = sub_1E375397C();
  (*(*v23 + 600))();
  OUTLINED_FUNCTION_50();

  if (!v23)
  {
    v46 = 0u;
    v47 = 0u;
LABEL_11:
    sub_1E325F6F0(&v46, &unk_1ECF296E0);
    goto LABEL_12;
  }

  v24 = [v23 shadowColor];

  if (v24)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
    goto LABEL_11;
  }

  sub_1E3755B54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v25 = [objc_opt_self() clearColor];
  }

  v26 = sub_1E4203644();
  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v29 = v28;
  (*(v27 + 600))();
  OUTLINED_FUNCTION_50();

  v30 = 0;
  v31 = 0;
  if (v29)
  {
    [v29 shadowBlurRadius];
    v31 = v32;
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v35 = v34;
  (*(v33 + 600))();
  OUTLINED_FUNCTION_50();

  if (v35)
  {
    [v35 shadowOffset];
    v30 = v36;
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v39 = v38;
  (*(v37 + 600))();
  OUTLINED_FUNCTION_50();

  if (v39)
  {
    [v39 shadowOffset];
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  sub_1E3741EA0(v0, v43, &qword_1ECF2E3B0);
  v42 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3C0) + 36));
  *v42 = v26;
  v42[1] = v31;
  v42[2] = v30;
  v42[3] = v41;
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3933638(uint64_t (*a1)(void, void))
{
  v4 = v1;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3746E10(v2);
  v6 = sub_1E42012B4();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  v9 = type metadata accessor for SportsPlayByPlayItemView(0);
  if ((v6 & 1) == 0)
  {
    return a1(*(v4 + *(v9 + 32) + 24), *(v4 + *(v9 + 32) + 32));
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v10 + 672))();
  OUTLINED_FUNCTION_35_2();
  if (a1)
  {
    return sub_1E4203644();
  }

  else
  {
    return sub_1E4203704();
  }
}

void sub_1E393376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v28;
  a24 = v29;
  v30 = v25;
  v94 = v31;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v95 = v32;
  v96 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v34);
  v35 = sub_1E4202494();
  v36 = OUTLINED_FUNCTION_3_6(v35, &a15);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_74_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3D0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_26_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3D8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3E0);
  OUTLINED_FUNCTION_3_6(v42, &a20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3E8);
  OUTLINED_FUNCTION_6_4(v45, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v47);
  *v24 = sub_1E4201D44();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3F0);
  OUTLINED_FUNCTION_139_1();
  sub_1E3933DD4();
  sub_1E4202484();
  OUTLINED_FUNCTION_1();
  v49 = sub_1E32752B0(v48, &qword_1ECF2E3C8);
  v50 = v37;
  OUTLINED_FUNCTION_82();
  sub_1E4203224();
  OUTLINED_FUNCTION_15_5();
  v51(v27);
  sub_1E325F6F0(v24, &qword_1ECF2E3C8);
  OUTLINED_FUNCTION_89_0();
  v52 = v30;
  v54 = v53;
  v55 = v52;
  sub_1E3746E10(v53);
  LOBYTE(v52) = sub_1E42012B4();
  v91 = *(v96 + 8);
  v91(v54, v95);
  v97[0] = v50;
  v97[1] = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_32_12();
  v57 = sub_1E3B6C5B4();
  v90 = v58 & 1;
  v88 = v57;
  v89 = v59;
  v60 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v60, v61, v62, v63, v64, v65, 0, 1, 0, 1, 0, 1, v88, v89, v90, v52 & 1, v39, OpaqueTypeConformance2);
  OUTLINED_FUNCTION_15_5();
  v66(v26, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v68 = sub_1E4202744();
  *(inited + 32) = v68;
  *(inited + 33) = sub_1E4202754();
  v69 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v68)
  {
    v69 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v70)
  {
    v69 = sub_1E4202774();
  }

  v71 = v55;
  v72 = type metadata accessor for SportsPlayByPlayItemView(0);
  v73 = *(v71 + *(v72 + 24));
  sub_1E375397C();
  OUTLINED_FUNCTION_30();
  (*(v74 + 176))(v97);
  OUTLINED_FUNCTION_122_1();
  v75 = 0;
  if ((v98 & 1) == 0)
  {
    v76 = OUTLINED_FUNCTION_6();
    v75 = sub_1E3952BD8(v76, v77, v78);
  }

  sub_1E3746E10(v54);
  sub_1E42012B4();
  v91(v54, v95);
  OUTLINED_FUNCTION_5_71();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_153();
  View.conditionalPadding(edges:length:condition:)(v69, v75, v79, v80, v93, v81);
  OUTLINED_FUNCTION_15_5();
  v82 = OUTLINED_FUNCTION_16_0();
  v83(v82);
  v84 = *(v71 + *(v72 + 28)) != 0;
  OUTLINED_FUNCTION_155_0();
  v85(v92, v54);
  OUTLINED_FUNCTION_141();
  v87 = v92 + v86;
  *v87 = v73;
  *(v87 + 8) = v84;
  sub_1E3741EA0(v92, v94, &qword_1ECF2E3E8);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3933DD4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v72 = v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v61 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7E8);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v71 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v67 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0);
  OUTLINED_FUNCTION_0_10();
  v62 = v12;
  v63 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F8);
  OUTLINED_FUNCTION_0_10();
  v64 = v15;
  v65 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E800);
  OUTLINED_FUNCTION_0_10();
  v68 = v19;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v66 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = type metadata accessor for SportsPlayByPlayItemView(0);
  sub_1E39342C8(v3 + *(v24 + 32));
  v75 = v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E808);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E410);
  v27 = OUTLINED_FUNCTION_32_12();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v27);
  OUTLINED_FUNCTION_9_0();
  v30 = sub_1E32752B0(v29, &qword_1ECF2E408);
  v76 = v28;
  v77 = v30;
  OUTLINED_FUNCTION_21_37();
  v31 = OUTLINED_FUNCTION_121_2();
  v76 = v26;
  v77 = v31;
  OUTLINED_FUNCTION_55_15();
  v32 = OUTLINED_FUNCTION_121_2();
  v33 = sub_1E393CB8C();
  v34 = v62;
  sub_1E3E35D1C(v25, v1);
  (*(v63 + 8))(v0, v34);
  v76 = v34;
  v77 = v25;
  v78 = v32;
  v79 = v33;
  OUTLINED_FUNCTION_60_9();
  v35 = v64;
  View.accessibilityIdentifier(key:location:)();
  (*(v65 + 8))(v1, v35);
  if (*(v3 + *(v24 + 28)))
  {

    v36 = sub_1E4201D44();
    v37 = v61;
    *v61 = v36;
    v37[1] = 0;
    *(v37 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E830);
    v38 = OUTLINED_FUNCTION_27_0();
    sub_1E3934850(v38, v39, v40, v41, v42, v43, v44, v45, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78);

    v46 = v67;
    sub_1E3741EA0(v37, v67, &qword_1ECF2E7E0);
    v47 = 0;
  }

  else
  {
    v46 = v67;
    v47 = 1;
  }

  __swift_storeEnumTagSinglePayload(v46, v47, 1, v70);
  v48 = v68;
  v49 = *(v68 + 16);
  v50 = v69;
  v49(v66, v23, v69);
  sub_1E3743538(v46, v71, &qword_1ECF2E7E8);
  v51 = OUTLINED_FUNCTION_95_0();
  (v49)(v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E828);
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v52, v53, v54);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F6F0(v55, v56);
  v57 = *(v48 + 8);
  v57(v23, v50);
  v58 = OUTLINED_FUNCTION_77_5();
  sub_1E325F6F0(v58, v59);
  v60 = OUTLINED_FUNCTION_159();
  (v57)(v60);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3934660()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_173();
  sub_1E4201704();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E820);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = *(v2 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0);
  OUTLINED_FUNCTION_2();
  (*(v9 + 16))(v0, v4);
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_108_4();
    v11(v10);
    sub_1E4203E64();
    sub_1E42016D4();
    sub_1E42016E4();
  }

  else
  {
    sub_1E42016F4();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E808);
  v13 = OUTLINED_FUNCTION_94_6(v12);
  v14(v13);
  v15 = sub_1E42024D4();
  OUTLINED_FUNCTION_129_3(v15);
  v16 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v16, v17, v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3934850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v30;
  a26 = v31;
  v140 = v32;
  v147 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0);
  OUTLINED_FUNCTION_3_6(v34, &v148[16]);
  v135 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E838);
  OUTLINED_FUNCTION_6_4(v38, &v148[13]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E840);
  OUTLINED_FUNCTION_6_4(v41, v149);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E848);
  v45 = OUTLINED_FUNCTION_6_4(v44, &a15);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v47);
  v48 = type metadata accessor for SportsPlayByPlayItemViewData();
  v49 = OUTLINED_FUNCTION_17_2(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E850);
  OUTLINED_FUNCTION_6_4(v51, &a10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44();
  v54 = OUTLINED_FUNCTION_20(v53);
  v55 = type metadata accessor for SportsPlayByPlayGroupChildView(v54);
  v56 = OUTLINED_FUNCTION_6_4(v55, &a11);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E858);
  OUTLINED_FUNCTION_3_6(v57, &a12);
  v134 = v58;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_128();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E860);
  OUTLINED_FUNCTION_6_4(v60, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E868);
  OUTLINED_FUNCTION_17_2(v63);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_8_4();
  v65 = type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v133 - v68;
  OUTLINED_FUNCTION_8();
  v71 = *(v70 + 160);
  v72 = v71();
  sub_1E39352D8(v72, v27);

  if (__swift_getEnumTagSinglePayload(v27, 1, v65) == 1)
  {
    sub_1E325F6F0(v27, &qword_1ECF2E868);
    v73 = 1;
    v74 = v147;
  }

  else
  {
    v75 = OUTLINED_FUNCTION_95_0();
    v78 = sub_1E393C6D8(v75, v76, v77);
    (v71)(v78);
    v79 = OUTLINED_FUNCTION_159();
    sub_1E3935390(v79, v80);

    sub_1E393C67C(v69, v29, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_23_33();
      v81 = v139;
      sub_1E393C6D8(v29, v139, v82);
      OUTLINED_FUNCTION_142_4();
      v83 = v140;
      sub_1E39342C8(v81);
      OUTLINED_FUNCTION_75_5();
      v85 = *(v83 + v84);
      v86 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_highlightedPlayItemLayout;
      OUTLINED_FUNCTION_5_0();
      v87 = (**(v85 + v86) + 744);
      v88 = *v87;

      v88(v89);
      OUTLINED_FUNCTION_35_2();
      if (!v87)
      {
        v90 = [objc_opt_self() clearColor];
      }

      v91 = v143;
      v92 = v137;
      v93 = sub_1E4203644();
      v94 = sub_1E4202734();
      OUTLINED_FUNCTION_155_0();
      v95(v92, v29, v136);
      OUTLINED_FUNCTION_141();
      v97 = v92 + v96;
      *v97 = v93;
      *(v97 + 8) = v94;
      OUTLINED_FUNCTION_8();
      v99 = *(v98 + 552);

      v99(v148, v100);

      v101 = 0.0;
      if ((v148[4] & 1) == 0)
      {
        v101 = OUTLINED_FUNCTION_86_3();
      }

      OUTLINED_FUNCTION_141();
      v102 = v138;
      v104 = (v138 + v103);
      v105 = *(sub_1E4201534() + 20);
      v106 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      (*(v107 + 104))(v104 + v105, v106);
      *v104 = v101;
      v104[1] = v101;
      *(v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
      sub_1E3741EA0(v92, v102, &qword_1ECF2E838);
      sub_1E4202734();
      sub_1E4202774();
      sub_1E4202774();
      sub_1E4202774();
      OUTLINED_FUNCTION_29();
      if (!v108)
      {
        sub_1E4202774();
      }

      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_133_4();
      sub_1E3741EA0(v109, v110, v111);
      OUTLINED_FUNCTION_32_4(v105 + *(v145 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v112, v113, v114);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v115, v116, v117);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_59_8();
      v120 = sub_1E393CB3C(v118, v119);
      v149[0] = v141;
      v149[1] = v120;
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E393CD58();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v121, v122);
      OUTLINED_FUNCTION_22_25();
      sub_1E393B640();
    }

    else
    {
      memcpy(v148, v29, 0x81uLL);
      OUTLINED_FUNCTION_75_5();
      v124 = *(v140 + v123);
      *v26 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
      OUTLINED_FUNCTION_125_2();
      KeyPath = swift_getKeyPath();
      v126 = v141;
      *(v26 + v141[5]) = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      swift_storeEnumTagMultiPayload();
      v127 = v126[6];
      *(v26 + v127) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
      swift_storeEnumTagMultiPayload();
      memcpy(v26 + v126[7], v148, 0x81uLL);
      *(v26 + v126[8]) = v124;
      OUTLINED_FUNCTION_59_8();
      v130 = sub_1E393CB3C(v128, v129);

      OUTLINED_FUNCTION_57();
      View.accessibilityIdentifier(key:location:)();
      sub_1E393B640();
      v131 = v134;
      v132 = v142;
      (*(v134 + 16))(v144, v28, v142);
      swift_storeEnumTagMultiPayload();
      v149[2] = v126;
      v149[3] = v130;
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E393CD58();
      v91 = v143;
      OUTLINED_FUNCTION_57();
      sub_1E4201F44();
      (*(v131 + 8))(v28, v132);
    }

    sub_1E393B640();
    v74 = v147;
    sub_1E3741EA0(v91, v147, &qword_1ECF2E860);
    v73 = 0;
  }

  __swift_storeEnumTagSinglePayload(v74, v73, 1, v146);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E39352D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  v6 = v5;
  if (v4)
  {
    sub_1E393C67C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E3935390(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
    sub_1E393CB3C(&qword_1ECF2E890, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    if (sub_1E4205E84())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_1E39354AC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E438);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E448);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E3746E10(v2);
  v7 = OUTLINED_FUNCTION_159();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E697E6D0] || v9 == *MEMORY[0x1E697E6D8] || v9 == *MEMORY[0x1E697E6E0])
  {
    *v1 = sub_1E4201D54();
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E468);
    sub_1E39360C8();
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v12, v13, v14);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v15, &qword_1ECF2E448);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v16, v17);
    OUTLINED_FUNCTION_107_5();
    sub_1E325F6F0(v1, &qword_1ECF2E448);
  }

  else
  {
    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E450);
    sub_1E39357D0();
    v18 = OUTLINED_FUNCTION_77_5();
    sub_1E3743538(v18, v19, v20);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v21, v22);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v23, &qword_1ECF2E438);
    OUTLINED_FUNCTION_107_5();
    sub_1E325F6F0(v0, &qword_1ECF2E438);
    v24 = OUTLINED_FUNCTION_159();
    v25(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39357D0()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v2;
  v3 = sub_1E41FE1F4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v31 = v6;
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8);
  OUTLINED_FUNCTION_0_10();
  v33 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v34 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v30 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v19 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v19);

  sub_1E41FE1E4();
  OUTLINED_FUNCTION_146_4();
  sub_1E41FE1C4();
  sub_1E3935BA4();
  (*(v31 + 8))(v0, v32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E470);
  sub_1E393B558();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v20 = *(v33 + 8);
  v21 = OUTLINED_FUNCTION_160_1();
  v20(v21);
  type metadata accessor for SportsPlayByPlayItemViewData();
  sub_1E3935BA4();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v22 = OUTLINED_FUNCTION_160_1();
  v20(v22);
  v23 = OUTLINED_FUNCTION_115_1();
  v1(v23);
  v24 = OUTLINED_FUNCTION_113();
  v1(v24);
  v25 = OUTLINED_FUNCTION_87_2();
  v1(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6F0);
  v27 = v35 + *(v26 + 48);
  *v27 = 0;
  *(v27 + 8) = 0;
  (v1)(v35 + *(v26 + 64), v34, v10);
  v28 = *(v12 + 8);
  v28(v30, v10);
  v29 = OUTLINED_FUNCTION_154_0();
  (v28)(v29);
  v28(v34, v10);
  v28(v7, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3935BA4()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v2;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v4;
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_3();
  v42 = v5;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v40 = v8;
  OUTLINED_FUNCTION_138();
  v46 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v11 = sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v44 = v16;
  v45 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v53 = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v49 = v20;
  v21 = objc_opt_self();
  type metadata accessor for SportsPlayByPlayItemView(0);
  sub_1E375412C();
  OUTLINED_FUNCTION_2_1();
  v23 = (*(v22 + 2408))();

  v38 = [v21 vui:v23 fontFromTextLayout:?];

  (*(v13 + 16))(v0, v41, v11);
  v24 = sub_1E4202C34();
  v39 = v25;
  LOBYTE(v23) = v26 & 1;
  v27 = sub_1E375412C();
  sub_1E3746E10(v1);
  sub_1E374709C(v40);
  v28 = MEMORY[0x1E6981148];
  v29 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_113();
  v30 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  sub_1E37B5FBC(v31);
  OUTLINED_FUNCTION_113();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  sub_1E37B6028(v27, v1, v40, v30, v42, v32, v28, v29, v53);

  (*(v51 + 8))(v42, v52);
  (*(v48 + 8))(v40, v50);
  (*(v43 + 8))(v1, v46);
  sub_1E37434B8(v24, v39, v23);

  if (v38)
  {
    v33 = v38;
    v34 = sub_1E405EEA0();
  }

  else
  {
    v34 = 0;
  }

  KeyPath = swift_getKeyPath();
  (*(v44 + 32))(v49, v53, v45);
  v36 = (v49 + *(v47 + 36));
  *v36 = KeyPath;
  v36[1] = v34;
  sub_1E375412C();
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 672))();
  OUTLINED_FUNCTION_35_2();
  sub_1E393B558();
  sub_1E39B9138();

  sub_1E325F6F0(v49, &qword_1ECF2E470);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39360C8()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v2;
  v3 = sub_1E41FE1F4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v30 = v6;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8);
  OUTLINED_FUNCTION_0_10();
  v32 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v33 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v29 = v18;
  v19 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v19);

  sub_1E41FE1E4();
  OUTLINED_FUNCTION_146_4();
  sub_1E41FE1C4();
  sub_1E3935BA4();
  (*(v30 + 8))(v0, v31);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E470);
  sub_1E393B558();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v20 = *(v32 + 8);
  v21 = OUTLINED_FUNCTION_88();
  v20(v21);
  type metadata accessor for SportsPlayByPlayItemViewData();
  sub_1E3935BA4();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v22 = OUTLINED_FUNCTION_88();
  v20(v22);
  v23 = OUTLINED_FUNCTION_115_1();
  v1(v23);
  v24 = OUTLINED_FUNCTION_95_0();
  v1(v24);
  (v1)(v34, v7, v10);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E8);
  (v1)(v34 + *(v25 + 48), v33, v10);
  v26 = *(v12 + 8);
  v27 = OUTLINED_FUNCTION_109_2();
  v26(v27);
  (v26)(v29, v10);
  v28 = OUTLINED_FUNCTION_53();
  v26(v28);
  (v26)(v7, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3936488()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v81 = v4;
  v5 = sub_1E4203AF4();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E480);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73_5();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E488);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v74 = v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v80 = v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v78 = v14;
  v15 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v15);
  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v16 + 200))();

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_123_4();
  *&v82[6] = v83;
  *&v82[22] = v84;
  *&v82[38] = v85;
  v17 = v3;

  sub_1E375417C();
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 552))(v86);

  v19 = 0.0;
  if ((v87 & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_86_3();
  }

  v20 = (v1 + *(v7 + 36));
  v21 = *(sub_1E4201534() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v25 = *(v24 + 104);
  v25(v20 + v21, v22, v23);
  *v20 = v19;
  v20[1] = v19;
  *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  *v1 = v17;
  *(v1 + 8) = 256;
  *(v1 + 10) = *v82;
  *(v1 + 26) = *&v82[16];
  *(v1 + 42) = *&v82[32];
  *(v1 + 56) = *(&v85 + 1);
  v25(v0, v22, v23);
  sub_1E4203704();
  v26 = sub_1E4203734();

  sub_1E4200BF4();
  v27 = v74 + *(v72 + 36);
  v28 = OUTLINED_FUNCTION_67_0();
  sub_1E393C67C(v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4A0);
  OUTLINED_FUNCTION_134_3();
  v31 = v89;
  *v32 = v88;
  *(v32 + 16) = v31;
  *(v32 + 32) = v90;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4A8);
  *(v27 + *(v33 + 52)) = v26;
  *(v27 + *(v33 + 56)) = 256;
  v34 = sub_1E4203DA4();
  v36 = v35;
  sub_1E393B640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4B0);
  OUTLINED_FUNCTION_134_3();
  *v37 = v34;
  v37[1] = v36;
  v38 = sub_1E4203DA4();
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4B8);
  OUTLINED_FUNCTION_134_3();
  *v41 = v38;
  v41[1] = v40;
  v42 = OUTLINED_FUNCTION_159();
  sub_1E3741EA0(v42, v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v46 = sub_1E4202764();
  *(inited + 32) = v46;
  *(inited + 33) = sub_1E4202784();
  v47 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v46)
  {
    v47 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v48)
  {
    v47 = sub_1E4202774();
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v49 + 176))(v91);

  v50 = 0uLL;
  v51 = 0uLL;
  if ((v92 & 1) == 0)
  {
    v52 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v52, v53, v54, v55);
    sub_1E4200A54();
    *(&v51 + 1) = v56;
    v50.n128_u64[1] = v57;
  }

  v71 = v51;
  v76 = v50;
  sub_1E3741EA0(v74, v80, &qword_1ECF2E488);
  v58 = v80 + *(v73 + 36);
  *v58 = v47;
  *(v58 + 24) = v71;
  OUTLINED_FUNCTION_105_4(v58, v76);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1E4299720;
  v60 = sub_1E4202744();
  *(v59 + 32) = v60;
  *(v59 + 33) = sub_1E4202754();
  v61 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v60)
  {
    v61 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v48)
  {
    v61 = sub_1E4202774();
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v62 + 176))(v93);

  v63 = 0uLL;
  v64 = 0uLL;
  if ((v94 & 1) == 0)
  {
    v65 = OUTLINED_FUNCTION_6();
    sub_1E3952BD8(v65, v66, v67);
    sub_1E4200A54();
    *(&v64 + 1) = v68;
    v63.n128_u64[1] = v69;
  }

  v75 = v64;
  v77 = v63;
  sub_1E3741EA0(v80, v78, &qword_1ECF2E490);
  v70 = v78 + *(v79 + 36);
  *v70 = v61;
  *(v70 + 24) = v75;
  OUTLINED_FUNCTION_105_4(v70, v77);
  sub_1E3741EA0(v78, v81, &qword_1ECF2E498);
  *(v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4C0) + 36)) = 1;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3936BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v28;
  a24 = v29;
  v140 = v30;
  v137 = v31;
  v33 = v32;
  v150 = v34;
  v35 = sub_1E42012F4();
  v36 = OUTLINED_FUNCTION_3_6(v35, &a9);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6F8);
  OUTLINED_FUNCTION_6_4(v39, &a10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E700);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E708);
  v44 = OUTLINED_FUNCTION_6_4(v43, &a20);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  v149 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v151 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4C0);
  v50 = OUTLINED_FUNCTION_17_2(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E710);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_19_7();
  sub_1E3933638(sub_1E4071808);
  sub_1E3936488();

  v132 = type metadata accessor for SportsPlayByPlayItemView(0);
  HIDWORD(v144) = *(v33 + *(v132 + 32) + 32);
  if (sub_1E40781E4(SBYTE4(v144), 1))
  {
    v59 = 1.0;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = OUTLINED_FUNCTION_39_9();
  sub_1E3741EA0(v60, v61, &qword_1ECF2E4C0);
  *(v27 + *(v52 + 36)) = v59;
  sub_1E3741EA0(v27, v25, &qword_1ECF2E710);
  v62 = sub_1E4201D54();
  sub_1E3746E10(v26);
  v63 = sub_1E42012B4();
  v64 = *(v38 + 8);
  v65 = v134;
  v64(v26);
  *v24 = v62;
  *(v24 + 8) = 0;
  *(v24 + 16) = v63 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E718);
  OUTLINED_FUNCTION_139_1();
  sub_1E39373FC(v33, v137, v140, v66, v67, v68, v69, v70, v130, v131, v132, v133, v134, v135, v137, v139, v140, v142, v143, v144);
  sub_1E3746E10(v26);
  v71 = sub_1E42012B4();
  (v64)(v26, v65);
  OUTLINED_FUNCTION_1();
  v73 = sub_1E32752B0(v72, &qword_1ECF2E6F8);
  v74 = sub_1E3B6C5B4();
  v129 = v75 & 1;
  v127 = v74;
  v128 = v76;
  v77 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v77, v78, v79, v80, v81, v82, 0, 1, 0, 1, 0x7FF0000000000000, 0, v127, v128, v129, v71 & 1, v136, v73);
  sub_1E325F6F0(v24, &qword_1ECF2E6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  LOBYTE(v65) = sub_1E4202744();
  *(inited + 32) = v65;
  *(inited + 33) = sub_1E4202754();
  v84 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v65)
  {
    v84 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v85)
  {
    v84 = sub_1E4202774();
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_30();
  (*(v86 + 176))(v152);
  OUTLINED_FUNCTION_122_1();
  v87 = 0uLL;
  v88 = 0uLL;
  if ((v153 & 1) == 0)
  {
    v89 = OUTLINED_FUNCTION_6();
    sub_1E3952BD8(v89, v90, v91);
    sub_1E4200A54();
    *(&v88 + 1) = v92;
    v87.n128_u64[1] = v93;
  }

  v138 = v88;
  v141 = v87;
  OUTLINED_FUNCTION_155_0();
  v94 = OUTLINED_FUNCTION_58_1();
  v95(v94);
  OUTLINED_FUNCTION_141();
  v97 = v147 + v96;
  *v97 = v84;
  *(v97 + 24) = v138;
  OUTLINED_FUNCTION_105_4(v97, v141);
  OUTLINED_FUNCTION_146_4();
  sub_1E3741EA0(v98, v99, v100);
  sub_1E3933638(sub_1E407181C);
  sub_1E3936488();

  if (sub_1E40781E4(v145, 2))
  {
    v101 = 1.0;
  }

  else
  {
    v101 = 0.0;
  }

  sub_1E3741EA0(v148, v146, &qword_1ECF2E4C0);
  OUTLINED_FUNCTION_141();
  *(v146 + v102) = v101;
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v103, v104, v105);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v106, v107, v108);
  sub_1E3743538(v151, v149, &qword_1ECF2E708);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v109, v110, v111);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v112, v113, v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E728);
  sub_1E3743538(v149, v150 + *(v115 + 48), &qword_1ECF2E708);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v116, v117, v118);
  v119 = OUTLINED_FUNCTION_32_0();
  sub_1E325F6F0(v119, v120);
  sub_1E325F6F0(v151, &qword_1ECF2E708);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v121, v122);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v123, v124);
  sub_1E325F6F0(v149, &qword_1ECF2E708);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v125, v126);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E39373FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v175 = v24;
  v26 = v25;
  v28 = v27;
  v187 = v29;
  v184 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v182 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v32);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E730);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E738);
  OUTLINED_FUNCTION_0_10();
  v185 = v36;
  v186 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v196 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  v195 = v39;
  OUTLINED_FUNCTION_138();
  v188 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v167 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v42);
  v43 = sub_1E4201324();
  v44 = OUTLINED_FUNCTION_3_6(v43, &v194);
  v160 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v46);
  v190 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v197 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_3_6(v49, &v193);
  v159 = v50;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v189 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470);
  OUTLINED_FUNCTION_6_4(v53, &v197);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8);
  OUTLINED_FUNCTION_3_6(v56, &v195);
  v161 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E740);
  OUTLINED_FUNCTION_6_4(v60, &v201);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748);
  OUTLINED_FUNCTION_3_6(v63, &a11);
  v171 = v64;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E750);
  OUTLINED_FUNCTION_3_6(v67, &a12);
  v172 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E758);
  v72 = OUTLINED_FUNCTION_3_6(v71, &a15);
  v176 = v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_2_5();
  v194 = v74;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_25_3();
  v193 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E760);
  v78 = OUTLINED_FUNCTION_17_2(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_5();
  v192 = v79;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v155 - v81;
  *v82 = sub_1E4201B84();
  *(v82 + 1) = 0;
  v82[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E768);
  v191 = v82;
  OUTLINED_FUNCTION_11_6();
  sub_1E3938444();
  v83 = *(v26 + 40);
  v84 = *(v26 + 48);
  v183 = v26;
  v198 = v83;
  v199 = v84;
  v85 = sub_1E32822E0();

  v156 = sub_1E4202C44();
  v87 = v86;
  OUTLINED_FUNCTION_110_4(v156, v86, v88, v89, &v185);
  v157 = *(v28 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 24));
  sub_1E3753CC0();
  sub_1E3746E10(v20);
  v178 = v28;
  v90 = v158;
  sub_1E374709C(v158);
  v91 = MEMORY[0x1E6981148];
  v92 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_109_2();
  v93 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_109_2();
  sub_1E37B5FBC(v94);
  OUTLINED_FUNCTION_109_2();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v95 = OUTLINED_FUNCTION_58_1();
  sub_1E37B6028(v95, v96, v90, v93, v85, v97, v91, v92, v98);

  OUTLINED_FUNCTION_15_5();
  v99(v85, v188);
  OUTLINED_FUNCTION_15_5();
  v100(v90, v163);
  v101 = *(v197 + 8);
  v102 = v20;
  v197 += 8;
  v188 = v101;
  v101(v20);
  sub_1E37434B8(v156, v87, v21);

  v103 = v175;
  if (v175)
  {
    v103 = sub_1E405EEA0();
  }

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_155_0();
  v105 = v165;
  v106(v165, v189, v162);
  v107 = (v105 + *(v166 + 36));
  *v107 = KeyPath;
  v107[1] = v103;
  sub_1E3753CC0();
  OUTLINED_FUNCTION_2_1();
  (*(v108 + 672))();
  OUTLINED_FUNCTION_35_2();
  sub_1E393B558();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_27_0();
  sub_1E39B9138();

  sub_1E325F6F0(v105, &qword_1ECF2E470);
  OUTLINED_FUNCTION_155_0();
  v109 = v168;
  v110(v168, v85, v164);
  v111 = v169;
  *(v109 + *(v169 + 36)) = 256;
  v112 = sub_1E4203D44();
  v114 = v113;
  sub_1E3746E10(v102);
  v115 = sub_1E42012B4();
  v116 = OUTLINED_FUNCTION_109_2();
  v188(v116);
  v117 = sub_1E393C7F0();
  OUTLINED_FUNCTION_142_4();
  v118 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v118, v119, v120, v121, v122, v123, 0, 1, 0, 1, 0x7FF0000000000000, 0, v112, v114, 0, v115 & 1, v111, v117);
  v124 = sub_1E325F6F0(v109, &qword_1ECF2E740);
  MEMORY[0x1EEE9AC00](v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E778);
  v198 = v111;
  v199 = v117;
  OUTLINED_FUNCTION_5_71();
  v126 = OUTLINED_FUNCTION_121_2();
  v127 = sub_1E393C8C0();
  v128 = v170;
  v129 = v173;
  sub_1E3E35D1C(v125, v170);
  OUTLINED_FUNCTION_15_5();
  v130 = OUTLINED_FUNCTION_32_12();
  v131(v130);
  v198 = v129;
  v199 = v125;
  v200 = v126;
  v201 = v127;
  OUTLINED_FUNCTION_60_9();
  v132 = v193;
  OUTLINED_FUNCTION_41_0();
  v133 = v174;
  View.accessibilityIdentifier(key:location:)();
  OUTLINED_FUNCTION_15_5();
  v134(v128, v133);
  sub_1E3746E10(v102);
  LODWORD(v189) = sub_1E42012B4();
  (v188)(v102, v190);
  v135 = v180;
  sub_1E39354AC();
  *(v135 + *(v181 + 36)) = 0x3FF0000000000000;
  type metadata accessor for SportsPlayByPlayItemViewData();
  v136 = v182;
  v137 = v179;
  v138 = v184;
  (*(v182 + 104))(v179, *MEMORY[0x1E69D3D88], v184);
  sub_1E3938364();
  (*(v136 + 8))(v137, v138);
  sub_1E393CA84();
  v139 = v195;
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v135, &qword_1ECF2E730);
  v140 = v192;
  sub_1E3743538(v191, v192, &qword_1ECF2E760);
  v141 = v176;
  v142 = *(v176 + 16);
  v143 = v194;
  v144 = v177;
  v142(v194, v132, v177);
  v145 = v185;
  v197 = *(v185 + 16);
  v146 = v139;
  v147 = v186;
  (v197)(v196, v146, v186);
  v148 = v187;
  sub_1E3743538(v140, v187, &qword_1ECF2E760);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7B0);
  v142(v148 + v149[12], v143, v144);
  v150 = v148 + v149[16];
  *v150 = 0;
  *(v150 + 8) = v189 & 1;
  v151 = v148 + v149[20];
  v152 = v196;
  (v197)(v151, v196, v147);
  v153 = *(v145 + 8);
  v153(v195, v147);
  v154 = *(v141 + 8);
  v154(v193, v144);
  sub_1E325F6F0(v191, &qword_1ECF2E760);
  v153(v152, v147);
  v154(v194, v144);
  sub_1E325F6F0(v192, &qword_1ECF2E760);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3938120()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  if (*(v2 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 28)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748);
    OUTLINED_FUNCTION_2();
    v8 = OUTLINED_FUNCTION_35_5();
    v9(v8);
    OUTLINED_FUNCTION_58_1();
    swift_storeEnumTagMultiPayload();
    sub_1E393C990();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E740);
    sub_1E393C7F0();
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_67_0();
    sub_1E4201F44();
  }

  else
  {
    v10 = sub_1E3B16518();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748);
    OUTLINED_FUNCTION_2();
    (*(v12 + 16))(v0, v4, v11);
    *(v0 + *(v5 + 36)) = v10;
    v13 = OUTLINED_FUNCTION_74();
    sub_1E3743538(v13, v14, &qword_1ECF2E790);
    OUTLINED_FUNCTION_58_1();
    swift_storeEnumTagMultiPayload();
    sub_1E393C990();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E740);
    sub_1E393C7F0();
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_67_0();
    sub_1E4201F44();
    OUTLINED_FUNCTION_146_4();
    sub_1E325F6F0(v15, v16);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3938364()
{
  sub_1E4205BF4();
  sub_1E393CB3C(&qword_1ECF2B4F8, MEMORY[0x1E69D3D90]);
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3938444()
{
  OUTLINED_FUNCTION_31_1();
  v106 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_93_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C8);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v97 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v96 = v16;
  OUTLINED_FUNCTION_138();
  v101 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v105 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v100 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v104 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v98 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v91 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_0_10();
  v103 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D0);
  OUTLINED_FUNCTION_0_10();
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v94 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  v102 = v29;
  v30 = OUTLINED_FUNCTION_138();
  if (!*(v7 + *(type metadata accessor for SportsPlayByPlayItemView(v30) + 28)) || !*(v106 + 80))
  {
LABEL_5:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    return;
  }

  v88 = v3;
  v89 = v10;
  v90 = v9;
  v31 = (v106 + *(type metadata accessor for SportsPlayByPlayItemViewData() + 56));
  v33 = *v31;
  v32 = v31[1];

  if (sub_1E41494A8(v33, v32))
  {

    goto LABEL_5;
  }

  sub_1E32822E0();
  v86 = sub_1E4202C44();
  v84 = v39;
  v82 = v40 & 1;
  sub_1E3753FDC();
  sub_1E3746E10(v0);
  sub_1E374709C(v4);
  v41 = MEMORY[0x1E6981148];
  v42 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_88();
  v43 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_88();
  sub_1E37B5FBC(v44);
  OUTLINED_FUNCTION_88();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v45 = OUTLINED_FUNCTION_148_3();
  sub_1E37B6028(v45, v46, v47, v43, v2, v48, v41, v42, v49);

  (*(v105 + 8))(v2, v101);
  (*(v104 + 8))(v4, v100);
  v92 = *(v91 + 8);
  v92(v0, v98);
  sub_1E37434B8(v86, v84, v82);

  OUTLINED_FUNCTION_20_43();
  OUTLINED_FUNCTION_121_2();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  v87 = *(v103 + 8);
  v87(v1, v99);
  if (*(v106 + 64))
  {

    v85 = sub_1E4202C44();
    v83 = v50;
    v81 = v51 & 1;
    sub_1E3753FDC();
    sub_1E3746E10(v0);
    sub_1E374709C(v4);
    v52 = MEMORY[0x1E6981148];
    v53 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_39_9();
    v54 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_39_9();
    sub_1E37B5FBC(v55);
    OUTLINED_FUNCTION_39_9();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_92_5();
    v56 = OUTLINED_FUNCTION_148_3();
    sub_1E37B6028(v56, v57, v58, v54, v2, v59, v52, v53, v60);

    OUTLINED_FUNCTION_89_0();
    v61();
    OUTLINED_FUNCTION_113_0();
    v62();
    v92(v0, v98);
    sub_1E37434B8(v85, v83, v81);

    v63 = v94;
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    v64 = OUTLINED_FUNCTION_11_6();
    (v87)(v64);
    v66 = v95;
    v65 = v96;
    v67 = v93;
    (*(v95 + 32))(v96, v94, v93);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v66 = v95;
    v65 = v96;
    v67 = v93;
    v63 = v94;
  }

  __swift_storeEnumTagSinglePayload(v65, v68, 1, v67);
  v69 = *(v66 + 16);
  v69(v63, v102, v67);
  sub_1E3743538(v65, v97, &qword_1ECF2E7C8);
  v70 = OUTLINED_FUNCTION_95_0();
  (v69)(v70);
  v71 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D8) + 48);
  *v71 = 0;
  *(v71 + 8) = 1;
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v72, v73, v74);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F6F0(v75, v76);
  v77 = *(v66 + 8);
  v77(v102, v67);
  v78 = OUTLINED_FUNCTION_77_5();
  sub_1E325F6F0(v78, v79);
  v80 = OUTLINED_FUNCTION_160_1();
  (v77)(v80);
  sub_1E3741EA0(v88, v90, &qword_1ECF2E7C0);
  __swift_storeEnumTagSinglePayload(v90, 0, 1, v89);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3938CBC(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5B8);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5C0) + 36)) = a2;
  sub_1E4203F64();
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5C8);
  OUTLINED_FUNCTION_134_3();
  *v12 = a3;
  *(v12 + 8) = a3;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
}

uint64_t sub_1E3938DC8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_40_3();

  return swift_storeEnumTagMultiPayload();
}

void sub_1E3939300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v27;
  a24 = v32;
  v34 = v33;
  v111 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E670);
  OUTLINED_FUNCTION_17_2(v36);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_5();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E678);
  v39 = OUTLINED_FUNCTION_6_4(v38, &a14);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E680);
  OUTLINED_FUNCTION_17_2(v43);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_74_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E688);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_26_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E690);
  v48 = OUTLINED_FUNCTION_6_4(v47, v116);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  v51 = (v100 - v50);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_3();
  v54 = OUTLINED_FUNCTION_20(v53);
  v55 = type metadata accessor for SportsPlayGroupCellDivider(v54);
  v56 = OUTLINED_FUNCTION_17_2(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v57);
  v59 = (v100 - v58);
  OUTLINED_FUNCTION_119_3();
  v61 = *(v34 + v60);
  v62 = sub_1E3754B2C();
  v112 = v59;
  sub_1E3B10DE8(v59, v62);
  v101 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemVerticalMargin;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_49_16();
  v116[8] = 1;
  v116[0] = v63;
  v115 = v64;
  v65 = sub_1E4201B84();
  v66 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacing;
  v67 = *(v61 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacing);
  *v24 = v65;
  *(v24 + 8) = v67;
  *(v24 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E698);
  OUTLINED_FUNCTION_139_1();
  sub_1E3939964(v34, v68, v69, v70, v71, v72, v73, v74, v100[0], v100[1], v101, v102, v103, v104, v105, v34, v106, v107, v108, v109);
  LOBYTE(v59) = sub_1E4202724();
  v75 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v59)
  {
    v75 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v24, v25, &qword_1ECF2E680);
  v76 = v25 + *(v45 + 36);
  *v76 = v75;
  *(v76 + 8) = v28;
  *(v76 + 16) = v29;
  *(v76 + 24) = v30;
  *(v76 + 32) = v31;
  *(v76 + 40) = 0;
  v77 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v77)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v25, v51, &qword_1ECF2E688);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v51 + v78);
  sub_1E3741EA0(v51, v113, &qword_1ECF2E690);
  v79 = sub_1E4201B84();
  v80 = *(v61 + v66);
  *v26 = v79;
  *(v26 + 8) = v80;
  *(v26 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6A0);
  sub_1E3939E48();
  v81 = sub_1E4202724();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v81)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_133_4();
  sub_1E3741EA0(v82, v83, v84);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v81 + v85);
  v86 = v114;
  sub_1E3741EA0(v81, v114, &qword_1ECF2E678);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_39_17();
  v88 = sub_1E393C67C(v112, v108, v87);
  OUTLINED_FUNCTION_106_6(v88, v89, &qword_1ECF2E690);
  v90 = v110;
  sub_1E3743538(v86, v110, &qword_1ECF2E678);
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_133_4();
  sub_1E393C67C(v91, v92, v51);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6A8);
  OUTLINED_FUNCTION_47_15(&unk_1E42AC628 + v93[12]);
  sub_1E3743538(1, &unk_1E42AC628 + v94, &qword_1ECF2E690);
  sub_1E3743538(v90, &unk_1E42AC628 + v93[20], &qword_1ECF2E678);
  v95 = OUTLINED_FUNCTION_42_23(&unk_1E42AC628 + v93[24]);
  sub_1E325F6F0(v95, &qword_1ECF2E678);
  sub_1E325F6F0(v66, &qword_1ECF2E690);
  OUTLINED_FUNCTION_56_13();
  sub_1E393B640();
  v96 = OUTLINED_FUNCTION_57();
  sub_1E325F6F0(v96, v97);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F6F0(v98, v99);
  sub_1E393B640();
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3939964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v78 = v27;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v86 = v29;
  v87 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v30);
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v84 = v32;
  v85 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v83 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v81 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  v36 = OUTLINED_FUNCTION_3_6(v35, &a18);
  v80 = v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v70 - v39;
  v41 = type metadata accessor for SportsPlayByPlayGroupChildView(0);
  sub_1E3754A34();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_123_4();
  v77 = v92;
  v76 = v94;
  v75 = v96;
  v74 = v97;
  v100 = 1;
  v99 = v93;
  v98 = v95;
  v42 = v26 + *(v41 + 28);
  v43 = *(v42 + 24);
  v88 = *(v42 + 16);
  v89 = v43;
  sub_1E32822E0();

  v72 = sub_1E4202C44();
  v71 = v44;
  v73 = v45;
  v88 = v72;
  v89 = v44;
  v47 = v46 & 1;
  v90 = v46 & 1;
  v91 = v45;
  OUTLINED_FUNCTION_5_0();

  sub_1E3746E10(v21);
  sub_1E374709C(v20);
  v48 = MEMORY[0x1E6981148];
  v49 = MEMORY[0x1E6981138];
  v50 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_142_4();
  sub_1E37B5FBC(v51);
  j__OUTLINED_FUNCTION_18();
  v52 = OUTLINED_FUNCTION_87_2();
  sub_1E37B6028(v52, v53, v20, v50, v22, v54, v48, v49, v55);

  (*(v86 + 8))(v22, v87);
  (*(v84 + 8))(v20, v85);
  OUTLINED_FUNCTION_15_5();
  v56(v21, v83);
  sub_1E37434B8(v72, v71, v47);

  v57 = v100;
  LOBYTE(v48) = v99;
  LOBYTE(v43) = v98;
  v58 = v80;
  v59 = *(v80 + 16);
  v60 = v79;
  v61 = v82;
  v59(v79, v40, v82);
  v62 = v78;
  *v78 = 0;
  *(v62 + 8) = v57;
  v62[2] = v77;
  *(v62 + 24) = v48;
  v62[4] = v76;
  *(v62 + 40) = v43;
  v63 = v74;
  v62[6] = v75;
  v62[7] = v63;
  v64 = v62;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D0);
  v59(v64 + *(v65 + 48), v60, v61);
  v66 = v64 + *(v65 + 64);
  *v66 = 0;
  *(v66 + 8) = 1;
  v67 = *(v58 + 8);
  v68 = OUTLINED_FUNCTION_160_1();
  v67(v68);
  v69 = OUTLINED_FUNCTION_88();
  v67(v69);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3939E48()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v97 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_3_6(v7, &v101[9]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA88);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v16);
  v17 = sub_1E4201CF4();
  v18 = OUTLINED_FUNCTION_3_6(v17, &v101[14]);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v19 = sub_1E4201324();
  v20 = OUTLINED_FUNCTION_3_6(v19, &v101[13]);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v21 = sub_1E42012F4();
  v22 = OUTLINED_FUNCTION_3_6(v21, &v101[12]);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6B0);
  OUTLINED_FUNCTION_6_4(v23, &v101[3]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_128();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6B8);
  v26 = OUTLINED_FUNCTION_3_6(v25, &v101[7]);
  v93 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  v30 = OUTLINED_FUNCTION_20(v29);
  v88 = (v5 + *(type metadata accessor for SportsPlayByPlayGroupChildView(v30) + 28));
  sub_1E32822E0();
  OUTLINED_FUNCTION_50();

  v87 = sub_1E4202C44();
  v86 = v31;
  v101[0] = v87;
  v101[1] = v31;
  OUTLINED_FUNCTION_143_3(v33, v32 & 1);
  v35 = *(v5 + v34);
  v36 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_footnoteLayout;
  OUTLINED_FUNCTION_5_0();
  v82 = v36;
  v37 = *(v35 + v36);

  sub_1E3746E10(v1);
  sub_1E374709C(v0);
  v38 = MEMORY[0x1E6981148];
  v39 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_13_8();
  v40 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_8();
  sub_1E37B5FBC(v41);
  OUTLINED_FUNCTION_13_8();
  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v37, v1, v0, v40, v2, v42 & 1, v38, v39, v3);

  OUTLINED_FUNCTION_113_0();
  v83 = v2;
  v81 = *(v43 + 8);
  (v81)(v2);
  OUTLINED_FUNCTION_15_5();
  v80 = v44;
  v44(v0);
  OUTLINED_FUNCTION_15_5();
  v45 = v1;
  v79 = v46;
  v46(v1);
  sub_1E37434B8(v87, v86, v85);

  sub_1E3754A34();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_123_4();
  v47 = (v3 + *(v90 + 36));
  *v47 = v98;
  v47[1] = v99;
  v47[2] = v100;
  memcpy(v101, v88, 0x81uLL);
  v48 = v101[5];
  sub_1E3B0ED94();
  sub_1E4202494();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_1E393C734();
  OUTLINED_FUNCTION_27_0();
  sub_1E3E038E0();

  sub_1E325F6F0(v92, &qword_1ECF2E400);
  sub_1E325F6F0(v3, &qword_1ECF2E6B0);
  if (v48)
  {

    v91 = sub_1E4202C44();
    v89 = v53;
    v55 = v54 & 1;
    v56 = *(v35 + v82);

    v57 = v45;
    sub_1E3746E10(v45);
    OUTLINED_FUNCTION_153();
    sub_1E374709C(v58);
    v59 = MEMORY[0x1E6981148];
    v60 = MEMORY[0x1E6981138];
    v61 = j__OUTLINED_FUNCTION_18();
    sub_1E37B5FBC(v83);
    v62 = j__OUTLINED_FUNCTION_18();
    sub_1E37B6028(v56, v57, v48, v61, v83, v62 & 1, v59, v60, v84);

    OUTLINED_FUNCTION_113_0();
    v81();
    v80(v48);
    v79(v57);
    sub_1E37434B8(v91, v89, v55);

    OUTLINED_FUNCTION_155_0();
    v63 = v94;
    v64();
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v63 = v94;
  }

  __swift_storeEnumTagSinglePayload(v63, v65, 1, v95);
  v66 = *(v93 + 16);
  v66();
  sub_1E3743538(v63, v96, &qword_1ECF2DA88);
  v67 = OUTLINED_FUNCTION_95_0();
  (v66)(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6C8);
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v69, v70, v71);
  v72 = v97 + *(v68 + 64);
  *v72 = 0;
  *(v72 + 8) = 1;
  OUTLINED_FUNCTION_40_21();
  sub_1E325F6F0(v73, v74);
  v75 = *(v93 + 8);
  v75();
  v76 = OUTLINED_FUNCTION_77_5();
  sub_1E325F6F0(v76, v77);
  v78 = OUTLINED_FUNCTION_159();
  (v75)(v78);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E393A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v28;
  a24 = v33;
  v35 = v34;
  v108 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E620);
  OUTLINED_FUNCTION_17_2(v37);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_93_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E628);
  v40 = OUTLINED_FUNCTION_6_4(v39, &a14);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E630);
  OUTLINED_FUNCTION_17_2(v44);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_26_2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v98 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E640);
  v51 = OUTLINED_FUNCTION_6_4(v50, v113);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25_3();
  v55 = OUTLINED_FUNCTION_20(v54);
  v56 = type metadata accessor for SportsPlayGroupCellDivider(v55);
  v57 = OUTLINED_FUNCTION_17_2(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_119_3();
  v60 = *(v35 + v59);
  v61 = *(v60 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalMarginAX);
  v109 = v25;
  sub_1E3B10DE8(v25, v61);
  v99 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemVerticalMargin;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_49_16();
  v113[8] = 1;
  v113[0] = v62;
  v112 = v63;
  v64 = sub_1E4201B84();
  v65 = *(v60 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacingAX);
  *v24 = v64;
  *(v24 + 8) = v65;
  *(v24 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E648);
  OUTLINED_FUNCTION_140_5();
  sub_1E393AE24(v35, v66, v67, v68, v69, v70, v71, v72, v98[0], v98[1], v99, v100, v101, v102, v103, v104, v35, v105, v106, v107);
  v73 = sub_1E4202724();
  v74 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v73)
  {
    v74 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v24, v49, &qword_1ECF2E630);
  v75 = &v49[*(v46 + 36)];
  *v75 = v74;
  *(v75 + 1) = v29;
  *(v75 + 2) = v30;
  *(v75 + 3) = v31;
  *(v75 + 4) = v32;
  v75[40] = 0;
  v76 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v76)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v49, v27, &qword_1ECF2E638);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v27 + v77);
  sub_1E3741EA0(v27, v110, &qword_1ECF2E640);
  *v26 = sub_1E4201D54();
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E650);
  sub_1E393B2B8();
  sub_1E4202724();
  sub_1E4202774();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v78)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v79 = v104;
  sub_1E3741EA0(v26, v104, &qword_1ECF2E620);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v79 + v80);
  sub_1E3741EA0(v79, v111, &qword_1ECF2E628);
  v81 = *(v60 + v99);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_39_17();
  v83 = sub_1E393C67C(v109, v106, v82);
  OUTLINED_FUNCTION_106_6(v83, v84, &qword_1ECF2E640);
  OUTLINED_FUNCTION_133_4();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_52_13();
  v90 = *(v89 - 256);
  sub_1E393C67C(v88, v90, v74);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E658);
  OUTLINED_FUNCTION_47_15(v90 + v91[12]);
  sub_1E3743538(1, v90 + v92, &qword_1ECF2E640);
  sub_1E3743538(v81, v90 + v91[20], &qword_1ECF2E628);
  v93 = OUTLINED_FUNCTION_42_23(v90 + v91[24]);
  sub_1E325F6F0(v93, &qword_1ECF2E628);
  sub_1E325F6F0(v26, &qword_1ECF2E640);
  OUTLINED_FUNCTION_56_13();
  sub_1E393B640();
  v94 = OUTLINED_FUNCTION_67_0();
  sub_1E325F6F0(v94, v95);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F6F0(v96, v97);
  sub_1E393B640();
  OUTLINED_FUNCTION_10_3();
}

void sub_1E393AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400);
  OUTLINED_FUNCTION_17_2(v27);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v29);
  v30 = sub_1E4201CF4();
  v31 = OUTLINED_FUNCTION_3_6(v30, &a13);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v32 = sub_1E4201324();
  v33 = OUTLINED_FUNCTION_3_6(v32, &a11);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v34 = sub_1E42012F4();
  v35 = OUTLINED_FUNCTION_3_6(v34, &a9);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8);
  OUTLINED_FUNCTION_3_6(v36, &a14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  v39 = OUTLINED_FUNCTION_20(v38);
  v40 = (v26 + *(type metadata accessor for SportsPlayByPlayGroupChildView(v39) + 28));
  sub_1E32822E0();

  v64 = sub_1E4202C44();
  v63 = v41;
  v66[0] = v64;
  v66[1] = v41;
  OUTLINED_FUNCTION_143_3(v43, v42 & 1);
  v45 = *(v26 + v44);
  v46 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_footnoteLayout;
  OUTLINED_FUNCTION_5_0();
  v47 = *(v45 + v46);

  sub_1E3746E10(v21);
  sub_1E374709C(v20);
  v48 = MEMORY[0x1E6981148];
  v49 = MEMORY[0x1E6981138];
  v50 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v22);
  v51 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v47, v21, v20, v50, v22, v51 & 1, v48, v49, v62);

  OUTLINED_FUNCTION_15_5();
  v52(v22);
  OUTLINED_FUNCTION_15_5();
  v53(v20);
  OUTLINED_FUNCTION_15_5();
  v54(v21);
  sub_1E37434B8(v64, v63, v61);

  memcpy(v66, v40, 0x81uLL);
  sub_1E3B0ED94();
  sub_1E4202494();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  OUTLINED_FUNCTION_20_43();
  swift_getOpaqueTypeConformance2();
  sub_1E3E038E0();

  sub_1E325F6F0(v65, &qword_1ECF2E400);
  OUTLINED_FUNCTION_15_5();
  v59 = OUTLINED_FUNCTION_13_8();
  v60(v59);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E393B2B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v35 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E660);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for CrossFadeText(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_7();
  v18 = type metadata accessor for SportsPlayByPlayGroupChildView(0);
  v19 = v2 + *(v18 + 28);
  v20 = *(v2 + *(v18 + 32));
  v21 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_subheadlineEmphLayout;
  OUTLINED_FUNCTION_5_0();
  v22 = *(v20 + v21);

  OUTLINED_FUNCTION_39_9();
  sub_1E3B137A0(v22, v23);
  if (*(v19 + 40))
  {
    v24 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_footnoteLayout;
    OUTLINED_FUNCTION_5_0();
    v25 = *(v20 + v24);

    sub_1E3B137A0(v25, v16);
    v26 = OUTLINED_FUNCTION_74();
    sub_1E393C6D8(v26, v27, v28);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v29, 1, v12);
  sub_1E393C67C(v0, v16, type metadata accessor for CrossFadeText);
  v30 = OUTLINED_FUNCTION_13_8();
  sub_1E3743538(v30, v31, &qword_1ECF2E660);
  v32 = v35;
  sub_1E393C67C(v16, v35, type metadata accessor for CrossFadeText);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E668);
  sub_1E3743538(v8, v32 + *(v33 + 48), &qword_1ECF2E660);
  sub_1E325F6F0(v11, &qword_1ECF2E660);
  sub_1E393B640();
  sub_1E325F6F0(v8, &qword_1ECF2E660);
  sub_1E393B640();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E393B558()
{
  result = qword_1ECF2E478;
  if (!qword_1ECF2E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E470);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E478);
  }

  return result;
}

uint64_t sub_1E393B640()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E393B694()
{
  result = qword_1ECF2E4F8;
  if (!qword_1ECF2E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E4D0);
    sub_1E393B720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E4F8);
  }

  return result;
}

unint64_t sub_1E393B720()
{
  result = qword_1ECF2E500;
  if (!qword_1ECF2E500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E4C8);
    sub_1E32752B0(&qword_1ECF2E508, &qword_1ECF2E510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E500);
  }

  return result;
}

void sub_1E393B860()
{
  OUTLINED_FUNCTION_12_50();
  sub_1E393BCD4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_11_55();
    sub_1E393BCD4(319, v3, v4, MEMORY[0x1E697DCC0]);
    if (v5 <= 0x3F)
    {
      sub_1E393B948();
      if (v6 <= 0x3F)
      {
        type metadata accessor for SportsPlayByPlayLayout();
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E393B948()
{
  if (!qword_1ECF2E520)
  {
    type metadata accessor for SportsPlayByPlayViewModel(255);
    sub_1E393CB3C(&qword_1ECF2E380, type metadata accessor for SportsPlayByPlayViewModel);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2E520);
    }
  }
}

uint64_t sub_1E393B9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E393BA54()
{
  OUTLINED_FUNCTION_12_50();
  sub_1E393BCD4(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_11_55();
    sub_1E393BCD4(319, v3, v4, MEMORY[0x1E697DCC0]);
    if (v5 <= 0x3F)
    {
      type metadata accessor for SportsPlayByPlayLayout();
      if (v6 <= 0x3F)
      {
        sub_1E393BCD4(319, &qword_1ECF2E528, type metadata accessor for SportsPlayGroupItemViewData, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          type metadata accessor for SportsPlayByPlayItemViewData();
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_165();
          }
        }
      }
    }
  }
}