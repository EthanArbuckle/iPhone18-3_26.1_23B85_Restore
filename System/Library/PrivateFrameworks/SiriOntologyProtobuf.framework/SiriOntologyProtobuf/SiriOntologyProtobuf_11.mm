_BYTE *sub_26865C8A8(_BYTE *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result && a2 - result >= 1)
  {
    v4 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v4 != 2)
      {
        LOBYTE(v9) = 0;
LABEL_17:
        *result = v9;
        return sub_2685CFF98(a3, a4);
      }

      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
LABEL_12:
        if (v5 < 0x80)
        {
          LOBYTE(v9) = v5;
        }

        else
        {
          do
          {
            *result++ = v5 | 0x80;
            v9 = v5 >> 7;
            v10 = v5 >> 14;
            v5 >>= 7;
          }

          while (v10);
        }

        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v4)
    {
      v5 = BYTE6(a4);
      goto LABEL_12;
    }

    LODWORD(v5) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      return result;
    }

    v5 = v5;
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_26865C974(unint64_t result)
{
  v3 = result & 7;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3u:
        v15 = v1[15];
        v16 = __OFSUB__(v15, 1);
        v17 = (v15 - 1);
        if (v16)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v1[15] = v17;
        if ((v17 & 0x8000000000000000) != 0)
        {
          sub_26861C77C();
          swift_allocError();
          v8 = 6;
          goto LABEL_44;
        }

        v18 = v1[1];
        if (v18 < 1)
        {
          goto LABEL_43;
        }

        while (1)
        {
          v19 = **v1;
          v20 = v18 - 1;
          if ((v19 & 0x8000000000000000) != 0)
          {
            if (v18 < 2)
            {
              goto LABEL_12;
            }

            v19 &= 0x7Fu;
            v21 = *v1 + 2;
            v22 = 7;
            while (1)
            {
              v19 |= (*(v21 - 1) & 0x7F) << v22;
              if ((*(v21 - 1) & 0x80) == 0)
              {
                break;
              }

              if (v20 >= 2)
              {
                ++v21;
                --v20;
                v24 = v22 >= 0x39;
                v22 += 7;
                if (!v24)
                {
                  continue;
                }
              }

              goto LABEL_12;
            }

            *v1 = v21;
            v1[1] = v20 - 1;
            if (v19 >= 0xFFFFFFFF)
            {
              goto LABEL_12;
            }
          }

          else
          {
            ++*v1;
            v1[1] = v20;
          }

          v23 = v19 & 7;
          v24 = v19 < 8 || v23 >= 6;
          if (v24)
          {
            goto LABEL_12;
          }

          if (v23 == 4)
          {
            break;
          }

          v25 = result;
          *(v1 + 33) = v23;
          v1[5] = v19 >> 3;
          result = sub_26865C974(v19);
          if (v2)
          {
            return result;
          }

          v18 = v1[1];
          result = v25;
          if (v18 < 1)
          {
            goto LABEL_43;
          }
        }

        *(v1 + 33) = 4;
        v27 = (v19 >> 3);
        v1[5] = v27;
        if (v27 != result >> 3)
        {
LABEL_12:
          sub_26861C77C();
          swift_allocError();
          v8 = 3;
LABEL_44:
          *v7 = v8;
          return swift_willThrow();
        }

        v28 = v1[15];
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
LABEL_56:
          __break(1u);
          return result;
        }

        v1[15] = v29;
        if (v1[13] >= v29)
        {
          return result;
        }

        result = sub_268689DA4();
        __break(1u);
        break;
      case 4u:
        goto LABEL_12;
      case 5u:
        v26 = v1[1];
        if (v26 > 3)
        {
          v6 = *v1 + 4;
          v5 = (v26 - 4);
          goto LABEL_46;
        }

LABEL_43:
        sub_26861C77C();
        swift_allocError();
        v8 = 1;
        goto LABEL_44;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((result & 7) != 0)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        result = sub_2685B3B10();
        if (v2)
        {
          return result;
        }

        v4 = v1[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          v24 = v4 >= result;
          v5 = (v4 - result);
          if (!v24)
          {
            goto LABEL_43;
          }

          v6 = *v1 + result;
          goto LABEL_46;
        }

        goto LABEL_55;
      }

      goto LABEL_53;
    }

    v9 = v1[1];
    if (v9 > 7)
    {
      v6 = *v1 + 8;
      v5 = (v9 - 8);
LABEL_46:
      *v1 = v6;
      v1[1] = v5;
      return result;
    }

    goto LABEL_43;
  }

  v10 = v1[1];
  if (v10 <= 0)
  {
    goto LABEL_43;
  }

  v11 = (v10 - 1);
  v12 = *v1 + 1;
  while (1)
  {
    v13 = *(v12 - 1);
    *v1 = v12;
    v1[1] = v11;
    if ((v13 & 0x80000000) == 0)
    {
      return result;
    }

    v14 = (v11-- + 1);
    ++v12;
    if (v14 <= 1)
    {
      goto LABEL_43;
    }
  }
}

unint64_t sub_26865CC60()
{
  v2 = *(v0 + 8);
  if (v2 < 1)
  {
    v6 = 0;
    return v6 | ((v2 < 1) << 32);
  }

  result = sub_2685B3B10();
  if (v1)
  {
    return result;
  }

  if (result <= 0xFFFFFFFE)
  {
    v4 = sub_268647DD4(result);
    if ((v4 & 0x100000000) == 0)
    {
      v5 = v4;
      *(v0 + 33) = sub_268647DC0(v4);
      *(v0 + 40) = v5 >> 3;
      v6 = v5;
      return v6 | ((v2 < 1) << 32);
    }
  }

  sub_26861C77C();
  swift_allocError();
  *v7 = 3;
  return swift_willThrow();
}

void sub_26865CD38(uint64_t a1)
{
  if (*(v1 + 33) == 5)
  {
    sub_268655394();
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 4) = 0;
      *(v1 + 32) = 1;
    }
  }
}

void sub_26865CD94(void *a1)
{
  if (*(v1 + 33) == 1)
  {
    sub_26865567C();
    if (!v2)
    {
      *a1 = v4;
      *(v1 + 32) = 1;
    }
  }
}

void sub_26865CDD4(uint64_t a1)
{
  if (*(v1 + 33) == 1)
  {
    sub_26865567C();
    if (!v2)
    {
      *a1 = v4;
      *(a1 + 8) = 0;
      *(v1 + 32) = 1;
    }
  }
}

uint64_t sub_26865CE88(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = result;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865CEC4(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = result;
      *(v3 + 4) = 0;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865CF30(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = result;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865CF6C(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = result;
      *(v3 + 8) = 0;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865CFD8(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = -(result & 1) ^ (result >> 1);
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865D020(uint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = -(result & 1) ^ (result >> 1);
      *(v3 + 4) = 0;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

unint64_t sub_26865D084(unint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = -(result & 1) ^ (result >> 1);
      *(v1 + 32) = 1;
    }
  }

  return result;
}

unint64_t sub_26865D0CC(unint64_t result)
{
  if (!*(v1 + 33))
  {
    v3 = result;
    result = sub_2685B3B10();
    if (!v2)
    {
      *v3 = -(result & 1) ^ (result >> 1);
      *(v3 + 8) = 0;
      *(v1 + 32) = 1;
    }
  }

  return result;
}

uint64_t sub_26865D370(uint64_t *a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&v40 + 7) = 0;
      *&v40 = 0;
      sub_268658444(&v40, &v40, a2, a3, a4);

      goto LABEL_26;
    }

    sub_2685B593C(v8, v7);
    *&v40 = v8;
    *(&v40 + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_26868A5E0;
    sub_2685B593C(0, 0xC000000000000000);
    sub_2686897D4();
    v13 = *(&v40 + 1);
    v15 = *(v40 + 16);
    v14 = *(v40 + 24);
    v16 = sub_268689764();
    if (!v16)
    {

      __break(1u);
      goto LABEL_34;
    }

    v17 = v16;
    v18 = sub_268689794();
    v19 = v15 - v18;
    if (!__OFSUB__(v15, v18))
    {
      v20 = __OFSUB__(v14, v15);
      v21 = v14 - v15;
      if (!v20)
      {
        v22 = sub_268689784();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        sub_268658444((v17 + v19), v17 + v19 + v23, a2, a3, a4);
        result = swift_bridgeObjectRelease_n();
        *a1 = v40;
        a1[1] = v13 | 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v9)
  {

    sub_2685B593C(v8, v7);
    *&v40 = v8;
    WORD4(v40) = v7;
    BYTE10(v40) = BYTE2(v7);
    BYTE11(v40) = BYTE3(v7);
    BYTE12(v40) = BYTE4(v7);
    BYTE13(v40) = BYTE5(v7);
    BYTE14(v40) = BYTE6(v7);
    sub_268658444(&v40, &v40 + BYTE6(v7), a2, a3, a4);
    v10 = v40;
    v11 = DWORD2(v40) | ((WORD6(v40) | (BYTE14(v40) << 16)) << 32);
    result = swift_bridgeObjectRelease_n();
    *a1 = v10;
    a1[1] = v11;
LABEL_26:
    v37 = *MEMORY[0x277D85DE8];
    return result;
  }

  v24 = v7 & 0x3FFFFFFFFFFFFFFFLL;

  sub_2685BA80C(v8, v7);
  sub_2685B593C(v8, v7);
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);

  v25 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_268689764() && __OFSUB__(v8, sub_268689794()))
    {
LABEL_32:
      __break(1u);
    }

    v26 = sub_2686897B4();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = sub_268689744();

    v24 = v29;
  }

  v30 = v25 < v8;
  v31 = v25 - v8;
  if (v30)
  {
    goto LABEL_28;
  }

  result = sub_268689764();
  if (result)
  {
    v32 = result;
    v33 = sub_268689794();
    v34 = v8 - v33;
    if (!__OFSUB__(v8, v33))
    {
      v35 = sub_268689784();
      if (v35 >= v31)
      {
        v36 = v31;
      }

      else
      {
        v36 = v35;
      }

      sub_268658444((v32 + v34), v32 + v34 + v36, a2, a3, a4);
      swift_bridgeObjectRelease_n();

      *a1 = v8;
      a1[1] = v24 | 0x4000000000000000;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26865D790(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {
      sub_2685BA80C(a2, a3);
      sub_2685BA80C(v7, v6);
      sub_2685B593C(v7, v6);
      *&v25 = v7;
      *(&v25 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_26868A5E0;
      sub_2685B593C(0, 0xC000000000000000);
      sub_26865DAD4(&v25, a2, a3);
      result = sub_2685B593C(a2, a3);
      v23 = *(&v25 + 1) | 0x4000000000000000;
      *a1 = v25;
      a1[1] = v23;
    }

    else
    {
      sub_2685BA80C(a2, a3);
      sub_2685B593C(v7, v6);
      *&v25 = v7;
      WORD4(v25) = v6;
      BYTE10(v25) = BYTE2(v6);
      BYTE11(v25) = BYTE3(v6);
      BYTE12(v25) = BYTE4(v6);
      BYTE13(v25) = BYTE5(v6);
      BYTE14(v25) = BYTE6(v6);
      sub_26865C8A8(&v25, &v25 + BYTE6(v6), a2, a3);
      v9 = v25;
      v10 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
      sub_2685B593C(a2, a3);
      result = sub_2685B593C(a2, a3);
      *a1 = v9;
      a1[1] = v10;
    }

    goto LABEL_14;
  }

  if (v8 != 2)
  {
    *(&v25 + 7) = 0;
    *&v25 = 0;
    sub_26865C8A8(&v25, &v25, a2, a3);
    result = sub_2685B593C(a2, a3);
LABEL_14:
    v24 = *MEMORY[0x277D85DE8];
    return result;
  }

  sub_2685BA80C(a2, a3);

  sub_2685B593C(v7, v6);
  *&v25 = v7;
  *(&v25 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  sub_2686897D4();
  v12 = *(&v25 + 1);
  v14 = *(v25 + 16);
  v13 = *(v25 + 24);
  v15 = sub_268689764();
  if (v15)
  {
    v16 = v15;
    v17 = sub_268689794();
    v18 = v14 - v17;
    if (__OFSUB__(v14, v17))
    {
      __break(1u);
    }

    else
    {
      v19 = __OFSUB__(v13, v14);
      v20 = v13 - v14;
      if (!v19)
      {
        v21 = sub_268689784();
        if (v21 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        sub_26865C8A8((v16 + v18), v16 + v18 + v22, a2, a3);
        sub_2685B593C(a2, a3);
        result = sub_2685B593C(a2, a3);
        *a1 = v25;
        a1[1] = v12 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  result = sub_2685B593C(a2, a3);
  __break(1u);
  return result;
}

uint64_t sub_26865DAD4(int *a1, uint64_t a2, unint64_t a3)
{
  result = sub_2686897E4();
  v7 = *a1;
  v8 = a1[1];
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(a1 + 1);

  result = sub_268689764();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_268689794();
  v11 = v7 - result;
  if (__OFSUB__(v7, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v8 - v7;
  v13 = sub_268689784();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_26865C8A8((v10 + v11), v10 + v11 + v14, a2, a3);

  return sub_2685B593C(a2, a3);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_26865DBD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26865DC34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_26865DD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v94 = a3;
  v85 = a1;
  v7 = sub_268689C74();
  v8 = *(v7 - 8);
  v81 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v80 = &v68 - v11;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v10, v14);
  v83 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v84 = &v68 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v82 = &v68 - v21;
  v23 = v3[1];
  v22 = v3[2];
  if (v22 == v23)
  {
    goto LABEL_8;
  }

  v24 = *v3;
  while (1)
  {
    v25 = *(v24 + v22);
    v26 = v25 > 0x20;
    v27 = (1 << v25) & 0x100002600;
    if (v26 || v27 == 0)
    {
      break;
    }

    v3[2] = ++v22;
    if (v23 == v22)
    {
      goto LABEL_8;
    }
  }

  if (v23 == v22 || *(*v3 + v22) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v4)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        v72 = (v12 + 32);
        v68 = (v8 + 8);
        v70 = (v12 + 48);
        v71 = (v12 + 56);
        v78 = (v12 + 16);
        v79 = (v12 + 8);
        v77 = v94 + 16;
        v30 = v3[2];
        v73 = a2;
        v69 = v7;
        if (v30 != v23)
        {
          goto LABEL_18;
        }

        while (1)
        {
          if (v30 != v23 && (v31 = *v5, *(*v5 + v30) == 110) && (sub_2685BD87C(&unk_287928788) & 1) != 0)
          {
            v32 = swift_conformsToProtocol2();
            if (!v32 || !a2)
            {
              goto LABEL_56;
            }

            v34 = a2;
            v76 = &v68;
            v35 = *(v32 + 24);
            MEMORY[0x28223BE20](v32, v33);
            v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
            v75 = v38;
            v39(v34, v38);
            if ((*v70)(v37, 1, v34) == 1)
            {
              (*v68)(v37, v69);
              *&v90 = 0;
              v88 = 0u;
              v89 = 0u;
            }

            else
            {
              *(&v89 + 1) = v34;
              *&v90 = v75;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v88);
              (*v72)(boxed_opaque_existential_1, v37, v34);
            }

            v58 = v34;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D900, &qword_2686921D8);
            v59 = v80;
            v60 = swift_dynamicCast();
            v61 = *v71;
            if ((v60 & 1) == 0)
            {
              v61(v59, 1, 1, v58);
              (*v68)(v59, v69);
LABEL_56:
              sub_2685BD910();
              swift_allocError();
              v66 = xmmword_268692180;
LABEL_46:
              *v65 = v66;
              return swift_willThrow();
            }

            v61(v59, 0, 1, v58);
            (*v72)(v82, v59, v58);
            (*v78)(v84, v82, v58);
            sub_268689BA4();
            sub_268689B84();
            result = (*v79)(v82, v58);
            v52 = v5[2];
            if (v52 != v23)
            {
LABEL_40:
              while (1)
              {
                v62 = *(v31 + v52);
                v26 = v62 > 0x20;
                v63 = (1 << v62) & 0x100002600;
                if (v26 || v63 == 0)
                {
                  break;
                }

                v5[2] = ++v52;
                if (v23 == v52)
                {
                  goto LABEL_45;
                }
              }
            }
          }

          else
          {
LABEL_24:
            v44 = v94;
            v45 = v83;
            (*(v94 + 16))(a2, v94);
            v47 = v5[2];
            v46 = v5[3];
            v48 = *(v5 + 48);
            v49 = v5[7];
            v50 = *(v5 + 64);
            *(&v92 + 1) = 0;
            LOBYTE(v93[0]) = 0;
            memset(v93 + 8, 0, 32);
            v88 = *v5;
            *&v89 = v47;
            *(&v89 + 1) = v46;
            v90 = *(v5 + 2);
            LOBYTE(v91) = v48;
            *(&v91 + 1) = v49;
            LOBYTE(v92) = v50;

            sub_2686605B8(v45, a2, v44);
            (*v78)(v84, v45, a2);
            sub_268689BA4();
            sub_268689B84();
            (*v79)(v45, a2);
            v23 = *(&v88 + 1);
            v31 = v88;
            v51 = *(&v89 + 1);
            v52 = v89;
            v75 = *(&v90 + 1);
            v76 = v90;
            v74 = v91;
            v86[4] = v92;
            v86[5] = v93[0];
            v86[6] = v93[1];
            v87 = *&v93[2];
            v86[0] = v88;
            v86[1] = v89;
            v86[2] = v90;
            v86[3] = v91;

            sub_268647D6C(v86);
            v53 = v5[3];

            *v5 = v31;
            v5[1] = v23;
            v5[2] = v52;
            v5[3] = v51;
            v54 = v75;
            v5[4] = v76;
            v5[5] = v54;
            *(v5 + 48) = v74;
            if (v52 != v23)
            {
              goto LABEL_40;
            }
          }

          if (v52 == v23)
          {
            goto LABEL_45;
          }

          if (*(v31 + v52) == 93)
          {
            break;
          }

          while (1)
          {
            v55 = *(v31 + v52);
            if (v55 > 0x20 || ((1 << v55) & 0x100002600) == 0)
            {
              break;
            }

            v5[2] = ++v52;
            if (v23 == v52)
            {
              goto LABEL_45;
            }
          }

          if (v23 == v52)
          {
LABEL_45:
            sub_2685BD910();
            swift_allocError();
            v66 = xmmword_26868A580;
            goto LABEL_46;
          }

          if (v55 != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v67 = 0;
            v67[1] = 0;
            return swift_willThrow();
          }

          v30 = v52 + 1;
          v5[2] = v52 + 1;
          a2 = v73;
          if (v30 != v23)
          {
LABEL_18:
            v40 = *v5;
            while (1)
            {
              v41 = *(v40 + v30);
              v26 = v41 > 0x20;
              v42 = (1 << v41) & 0x100002600;
              if (v26 || v42 == 0)
              {
                break;
              }

              v5[2] = ++v30;
              if (v23 == v30)
              {
                goto LABEL_24;
              }
            }
          }
        }

        v5[2] = v52 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_26865E578()
{
  v2 = v1;
  if (sub_2685BE428())
  {
    return 0;
  }

  v4 = v0[9];
  if (v4 < 1 || (result = sub_2685BE1FC(44), !v1))
  {
    result = v0[11];
    if (result)
    {
      v6 = v0[13];
      v5 = v0[14];
      v7 = v0[12];
      v12[0] = v0[11];
      v12[1] = v7;
      v12[2] = v6;
      v12[3] = v5;

      v8 = sub_2685BDD9C(v12);
      if (v2)
      {
      }

      v10 = v9;
      v11 = v8;

      if (v10)
      {
        return v11;
      }

      if (!__OFADD__(v4, 1))
      {
        v0[9] = v4 + 1;
        return v11;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_26865E6B8(char **a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (sub_2685BD87C(&unk_287928360) & 1) == 0)
  {
LABEL_8:
    sub_2685BE1FC(91);
    if (!v2 && (sub_2685BE8E0() & 1) == 0)
    {
      sub_2685BCCA0();
      for (i = v11; ; i = v27)
      {
        v13 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_268666050(0, *(v13 + 2) + 1, 1, v13);
          *a1 = v13;
        }

        v15 = *(v13 + 2);
        v16 = *(v13 + 3);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v33 = v15 + 1;
          v28 = v13;
          v29 = *(v13 + 2);
          v30 = sub_268666050((v16 > 1), v15 + 1, 1, v28);
          v15 = v29;
          v17 = v33;
          v13 = v30;
        }

        *(v13 + 2) = v17;
        *&v13[4 * v15 + 32] = i;
        *a1 = v13;
        v18 = v1[2];
        if (v18 == v5)
        {
          goto LABEL_38;
        }

        v19 = *v1;
        while (1)
        {
          v20 = *(v19 + v18);
          v8 = v20 > 0x20;
          v21 = (1 << v20) & 0x100002600;
          if (v8 || v21 == 0)
          {
            break;
          }

          v1[2] = ++v18;
          if (v5 == v18)
          {
            goto LABEL_38;
          }
        }

        if (v5 == v18)
        {
LABEL_38:
          sub_2685BD910();
          swift_allocError();
          *v31 = xmmword_26868A580;
LABEL_39:
          swift_willThrow();
          return;
        }

        v23 = *v1;
        if (*(*v1 + v18) == 93)
        {
          break;
        }

        while (1)
        {
          v24 = *(v23 + v18);
          v8 = v24 > 0x20;
          v25 = (1 << v24) & 0x100002600;
          if (v8 || v25 == 0)
          {
            break;
          }

          v1[2] = ++v18;
          if (v5 == v18)
          {
            goto LABEL_38;
          }
        }

        if (v5 == v18)
        {
          goto LABEL_38;
        }

        if (*(*v1 + v18) != 44)
        {
          sub_2685BD910();
          swift_allocError();
          *v32 = 0;
          v32[1] = 0;
          goto LABEL_39;
        }

        v1[2] = v18 + 1;
        sub_2685BCCA0();
      }

      v1[2] = v18 + 1;
    }
  }
}

void sub_26865E94C(char **a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (sub_2685BD87C(&unk_287928360) & 1) == 0)
  {
LABEL_8:
    sub_2685BE1FC(91);
    if (!v2 && (sub_2685BE8E0() & 1) == 0)
    {
      sub_2685BD298();
      for (i = v11; ; i = v27)
      {
        v13 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_26866617C(0, *(v13 + 2) + 1, 1, v13);
          *a1 = v13;
        }

        v15 = *(v13 + 2);
        v16 = *(v13 + 3);
        v17 = v15 + 1;
        if (v15 >= v16 >> 1)
        {
          v33 = v15 + 1;
          v28 = v13;
          v29 = *(v13 + 2);
          v30 = sub_26866617C((v16 > 1), v15 + 1, 1, v28);
          v15 = v29;
          v17 = v33;
          v13 = v30;
        }

        *(v13 + 2) = v17;
        *&v13[8 * v15 + 32] = i;
        *a1 = v13;
        v18 = v1[2];
        if (v18 == v5)
        {
          goto LABEL_38;
        }

        v19 = *v1;
        while (1)
        {
          v20 = *(v19 + v18);
          v8 = v20 > 0x20;
          v21 = (1 << v20) & 0x100002600;
          if (v8 || v21 == 0)
          {
            break;
          }

          v1[2] = ++v18;
          if (v5 == v18)
          {
            goto LABEL_38;
          }
        }

        if (v5 == v18)
        {
LABEL_38:
          sub_2685BD910();
          swift_allocError();
          *v31 = xmmword_26868A580;
LABEL_39:
          swift_willThrow();
          return;
        }

        v23 = *v1;
        if (*(*v1 + v18) == 93)
        {
          break;
        }

        while (1)
        {
          v24 = *(v23 + v18);
          v8 = v24 > 0x20;
          v25 = (1 << v24) & 0x100002600;
          if (v8 || v25 == 0)
          {
            break;
          }

          v1[2] = ++v18;
          if (v5 == v18)
          {
            goto LABEL_38;
          }
        }

        if (v5 == v18)
        {
          goto LABEL_38;
        }

        if (*(*v1 + v18) != 44)
        {
          sub_2685BD910();
          swift_allocError();
          *v32 = 0;
          v32[1] = 0;
          goto LABEL_39;
        }

        v1[2] = v18 + 1;
        sub_2685BD298();
      }

      v1[2] = v18 + 1;
    }
  }
}

uint64_t sub_26865EBE0(uint64_t a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BC8CC();
    if (!v2)
    {
      if (result == result)
      {
        *a1 = result;
        *(a1 + 4) = 0;
      }

      else
      {
        sub_2685BD910();
        swift_allocError();
        *v12 = xmmword_26868A590;
        return swift_willThrow();
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 4) = 1;
  }

  return result;
}

uint64_t sub_26865ECD8(uint64_t *a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        for (i = sub_2685BC8CC(); ; i = sub_2685BC8CC())
        {
          if (i != i)
          {
            sub_2685BD910();
            swift_allocError();
            v30 = xmmword_26868A590;
            goto LABEL_40;
          }

          v13 = i;
          v14 = *a1;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v14;
          if ((result & 1) == 0)
          {
            result = sub_268666154(0, *(v14 + 16) + 1, 1, v14);
            v14 = result;
            *a1 = result;
          }

          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = v15 + 1;
          if (v15 >= v16 >> 1)
          {
            v32 = v15 + 1;
            v27 = v14;
            v28 = *(v14 + 16);
            result = sub_268666154((v16 > 1), v15 + 1, 1, v27);
            v15 = v28;
            v17 = v32;
            v14 = result;
          }

          *(v14 + 16) = v17;
          *(v14 + 4 * v15 + 32) = v13;
          *a1 = v14;
          v18 = v1[2];
          if (v18 == v5)
          {
            goto LABEL_39;
          }

          v19 = *v1;
          while (1)
          {
            v20 = *(v19 + v18);
            v8 = v20 > 0x20;
            v21 = (1 << v20) & 0x100002600;
            if (v8 || v21 == 0)
            {
              break;
            }

            v1[2] = ++v18;
            if (v5 == v18)
            {
              goto LABEL_39;
            }
          }

          if (v5 == v18)
          {
LABEL_39:
            sub_2685BD910();
            swift_allocError();
            v30 = xmmword_26868A580;
LABEL_40:
            *v29 = v30;
            return swift_willThrow();
          }

          v23 = *v1;
          if (*(*v1 + v18) == 93)
          {
            break;
          }

          while (1)
          {
            v24 = *(v23 + v18);
            v8 = v24 > 0x20;
            v25 = (1 << v24) & 0x100002600;
            if (v8 || v25 == 0)
            {
              break;
            }

            v1[2] = ++v18;
            if (v5 == v18)
            {
              goto LABEL_39;
            }
          }

          if (v5 == v18)
          {
            goto LABEL_39;
          }

          if (*(*v1 + v18) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v31 = 0;
            v31[1] = 0;
            return swift_willThrow();
          }

          v1[2] = v18 + 1;
        }

        v1[2] = v18 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_26865EFA0(uint64_t *a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        for (i = sub_2685BC45C(); ; i = sub_2685BC45C())
        {
          if (HIDWORD(i))
          {
            sub_2685BD910();
            swift_allocError();
            v30 = xmmword_26868A590;
            goto LABEL_40;
          }

          v13 = i;
          v14 = *a1;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v14;
          if ((result & 1) == 0)
          {
            result = sub_268666280(0, *(v14 + 16) + 1, 1, v14);
            v14 = result;
            *a1 = result;
          }

          v15 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = v15 + 1;
          if (v15 >= v16 >> 1)
          {
            v32 = v15 + 1;
            v27 = v14;
            v28 = *(v14 + 16);
            result = sub_268666280((v16 > 1), v15 + 1, 1, v27);
            v15 = v28;
            v17 = v32;
            v14 = result;
          }

          *(v14 + 16) = v17;
          *(v14 + 4 * v15 + 32) = v13;
          *a1 = v14;
          v18 = v1[2];
          if (v18 == v5)
          {
            goto LABEL_39;
          }

          v19 = *v1;
          while (1)
          {
            v20 = *(v19 + v18);
            v8 = v20 > 0x20;
            v21 = (1 << v20) & 0x100002600;
            if (v8 || v21 == 0)
            {
              break;
            }

            v1[2] = ++v18;
            if (v5 == v18)
            {
              goto LABEL_39;
            }
          }

          if (v5 == v18)
          {
LABEL_39:
            sub_2685BD910();
            swift_allocError();
            v30 = xmmword_26868A580;
LABEL_40:
            *v29 = v30;
            return swift_willThrow();
          }

          v23 = *v1;
          if (*(*v1 + v18) == 93)
          {
            break;
          }

          while (1)
          {
            v24 = *(v23 + v18);
            v8 = v24 > 0x20;
            v25 = (1 << v24) & 0x100002600;
            if (v8 || v25 == 0)
            {
              break;
            }

            v1[2] = ++v18;
            if (v5 == v18)
            {
              goto LABEL_39;
            }
          }

          if (v5 == v18)
          {
            goto LABEL_39;
          }

          if (*(*v1 + v18) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v31 = 0;
            v31[1] = 0;
            return swift_willThrow();
          }

          v1[2] = v18 + 1;
        }

        v1[2] = v18 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_26865F268(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v9 = v3[1];
  v8 = v3[2];
  if (v8 == v9)
  {
    goto LABEL_8;
  }

  v10 = *v3;
  while (1)
  {
    v11 = *(v10 + v8);
    v12 = v11 > 0x20;
    v13 = (1 << v11) & 0x100002600;
    if (v12 || v13 == 0)
    {
      break;
    }

    v3[2] = ++v8;
    if (v9 == v8)
    {
      goto LABEL_8;
    }
  }

  if (v9 == v8 || *(*v3 + v8) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v4)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        for (i = a2(); ; i = a2())
        {
          v17 = *a1;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v17;
          v32 = i;
          if ((result & 1) == 0)
          {
            result = a3(0, *(v17 + 16) + 1, 1, v17);
            v17 = result;
            *a1 = result;
          }

          v19 = *(v17 + 16);
          v18 = *(v17 + 24);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            result = a3(v18 > 1, v19 + 1, 1, v17);
            v20 = v19 + 1;
            v17 = result;
          }

          *(v17 + 16) = v20;
          *(v17 + 8 * v19 + 32) = v32;
          *a1 = v17;
          v21 = v3[2];
          if (v21 == v9)
          {
            goto LABEL_38;
          }

          v22 = *v3;
          while (1)
          {
            v23 = *(v22 + v21);
            v12 = v23 > 0x20;
            v24 = (1 << v23) & 0x100002600;
            if (v12 || v24 == 0)
            {
              break;
            }

            v3[2] = ++v21;
            if (v9 == v21)
            {
              goto LABEL_38;
            }
          }

          if (v9 == v21)
          {
LABEL_38:
            sub_2685BD910();
            swift_allocError();
            *v30 = xmmword_26868A580;
            return swift_willThrow();
          }

          v26 = *v3;
          if (*(*v3 + v21) == 93)
          {
            break;
          }

          while (1)
          {
            v27 = *(v26 + v21);
            v12 = v27 > 0x20;
            v28 = (1 << v27) & 0x100002600;
            if (v12 || v28 == 0)
            {
              break;
            }

            v3[2] = ++v21;
            if (v9 == v21)
            {
              goto LABEL_38;
            }
          }

          if (v9 == v21)
          {
            goto LABEL_38;
          }

          if (*(*v3 + v21) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v31 = 0;
            v31[1] = 0;
            return swift_willThrow();
          }

          v3[2] = v21 + 1;
        }

        v3[2] = v21 + 1;
      }
    }
  }

  return result;
}

uint64_t sub_26865F51C(uint64_t *a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        sub_2685BBB94();
        v12 = v1[2];
        if (v12 == v5)
        {
          v13 = 13;
LABEL_12:
          sub_2685BD910();
          swift_allocError();
          *v14 = 0;
          v14[1] = v13;
        }

        else
        {
          while (1)
          {
            v15 = *v1;
            v16 = *(*v1 + v12);
            if (v16 == 102)
            {
              if ((sub_2685BD87C(&unk_287928388) & 1) == 0)
              {
                goto LABEL_49;
              }

              v28 = 0;
            }

            else
            {
              if (v16 != 116 || (sub_2685BD87C(&unk_2879283B0) & 1) == 0)
              {
LABEL_49:
                v13 = 4;
                goto LABEL_12;
              }

              v28 = 1;
            }

            v17 = *a1;
            result = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v17;
            if ((result & 1) == 0)
            {
              result = sub_268665E50(0, *(v17 + 16) + 1, 1, v17);
              v17 = result;
              *a1 = result;
            }

            v19 = *(v17 + 16);
            v18 = *(v17 + 24);
            v20 = v19 + 1;
            if (v19 >= v18 >> 1)
            {
              result = sub_268665E50((v18 > 1), v19 + 1, 1, v17);
              v20 = v19 + 1;
              v17 = result;
            }

            *(v17 + 16) = v20;
            *(v17 + v19 + 32) = v28;
            *a1 = v17;
            v21 = v1[2];
            if (v21 == v5)
            {
              goto LABEL_46;
            }

            while (1)
            {
              v22 = *(v15 + v21);
              if (v22 > 0x20 || ((1 << v22) & 0x100002600) == 0)
              {
                break;
              }

              v1[2] = ++v21;
              if (v5 == v21)
              {
                goto LABEL_46;
              }
            }

            if (v5 == v21)
            {
LABEL_46:
              sub_2685BD910();
              swift_allocError();
              *v26 = xmmword_26868A580;
              return swift_willThrow();
            }

            if (v22 == 93)
            {
              v1[2] = v21 + 1;
              return result;
            }

            while (1)
            {
              v24 = *(v15 + v21);
              if (v24 > 0x20 || ((1 << v24) & 0x100002600) == 0)
              {
                break;
              }

              v1[2] = ++v21;
              if (v5 == v21)
              {
                goto LABEL_46;
              }
            }

            if (v5 == v21)
            {
              goto LABEL_46;
            }

            if (v24 != 44)
            {
              break;
            }

            v1[2] = v21 + 1;
            sub_2685BBB94();
            v12 = v1[2];
            v13 = 13;
            if (v12 == v5)
            {
              goto LABEL_12;
            }
          }

          sub_2685BD910();
          swift_allocError();
          *v27 = 0;
          v27[1] = 0;
        }

        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_26865F838(uint64_t *a1)
{
  v5 = v1[1];
  v4 = v1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *v1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    v1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        while (1)
        {
          v12 = v1[2];
          if (v12 == v5)
          {
            goto LABEL_35;
          }

          v13 = *v1;
          while (1)
          {
            v14 = *(v13 + v12);
            v8 = v14 > 0x20;
            v15 = (1 << v14) & 0x100002600;
            if (v8 || v15 == 0)
            {
              break;
            }

            v1[2] = ++v12;
            if (v5 == v12)
            {
              goto LABEL_35;
            }
          }

          if (v5 == v12)
          {
LABEL_35:
            sub_2685BD910();
            swift_allocError();
            v31 = xmmword_26868A580;
            goto LABEL_36;
          }

          v17 = *v1;
          if (*(*v1 + v12) != 34)
          {
            break;
          }

          sub_2685BC360();
          if (!v19)
          {
            break;
          }

          v20 = v18;
          v21 = v19;
          v22 = *a1;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v22;
          v32 = v20;
          if ((result & 1) == 0)
          {
            result = sub_2685B54B4(0, *(v22 + 16) + 1, 1, v22);
            v22 = result;
            *a1 = result;
          }

          v24 = *(v22 + 16);
          v23 = *(v22 + 24);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            result = sub_2685B54B4((v23 > 1), v24 + 1, 1, v22);
            v25 = v24 + 1;
            v22 = result;
          }

          *(v22 + 16) = v25;
          v26 = v22 + 16 * v24;
          *(v26 + 32) = v32;
          *(v26 + 40) = v21;
          *a1 = v22;
          v27 = v1[2];
          if (v27 != v5)
          {
            while (1)
            {
              v28 = *(v17 + v27);
              if (v28 > 0x20 || ((1 << v28) & 0x100002600) == 0)
              {
                break;
              }

              v1[2] = ++v27;
              if (v5 == v27)
              {
                goto LABEL_31;
              }
            }

            if (v5 != v27 && v28 == 93)
            {
              v1[2] = v27 + 1;
              return result;
            }
          }

LABEL_31:
          sub_2685BE1FC(44);
        }

        sub_2685BD910();
        swift_allocError();
        v31 = xmmword_26868A570;
LABEL_36:
        *v30 = v31;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_26865FAE0(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), __n128 a3)
{
  v7 = v3[2];
  v8 = v3[1];
  if (v7 == v8)
  {
    goto LABEL_8;
  }

  v9 = *v3;
  while (1)
  {
    v10 = *(v9 + v7);
    v11 = v10 > 0x20;
    v12 = (1 << v10) & 0x100002600;
    if (v11 || v12 == 0)
    {
      break;
    }

    v3[2] = ++v7;
    if (v8 == v7)
    {
      goto LABEL_8;
    }
  }

  if (v8 == v7 || *(*v3 + v7) != 110 || (sub_2685BD87C(&unk_287928360) & 1) == 0)
  {
LABEL_8:
    sub_2685BBB94();
    if (v3[2] == v8)
    {
      sub_2685BD910();
      swift_allocError();
      *v14 = xmmword_26868A580;
      return swift_willThrow();
    }

    else
    {
      result = sub_2685BA9B8(*v3, v8, v3 + 2, v8);
      if (!v4)
      {
        v17 = result;
        v18 = v16;
        result = a2(*a1, a1[1]);
        *a1 = v17;
        a1[1] = v18;
      }
    }
  }

  else
  {
    result = a2(*a1, a1[1]);
    *a1 = a3;
  }

  return result;
}

uint64_t sub_26865FC3C(char **a1)
{
  v5 = v1 + 2;
  v4 = v1[2];
  v6 = v1[1];
  if (v4 == v6)
  {
    goto LABEL_8;
  }

  v7 = *v1;
  while (1)
  {
    v8 = *(v7 + v4);
    v9 = v8 > 0x20;
    v10 = (1 << v8) & 0x100002600;
    if (v9 || v10 == 0)
    {
      break;
    }

    *v5 = ++v4;
    if (v6 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 == v4 || *(*v1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        sub_2685BBB94();
        if (v1[2] == v6)
        {
LABEL_11:
          sub_2685BD910();
          swift_allocError();
          *v13 = xmmword_26868A580;
          return swift_willThrow();
        }

        else
        {
          v26 = a1;
          while (1)
          {
            v14 = *v1;
            v15 = sub_2685BA9B8(*v1, v6, v1 + 2, v6);
            v17 = v16;
            v18 = *a1;
            sub_2685BA80C(v15, v16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a1 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v18 = sub_268665F44(0, *(v18 + 2) + 1, 1, v18);
              *a1 = v18;
            }

            v21 = *(v18 + 2);
            v20 = *(v18 + 3);
            if (v21 >= v20 >> 1)
            {
              v18 = sub_268665F44((v20 > 1), v21 + 1, 1, v18);
            }

            *(v18 + 2) = v21 + 1;
            v22 = &v18[16 * v21];
            *(v22 + 4) = v15;
            *(v22 + 5) = v17;
            a1 = v26;
            *v26 = v18;
            v23 = *v5;
            if (*v5 != v6)
            {
              while (1)
              {
                v24 = *(v14 + v23);
                if (v24 > 0x20 || ((1 << v24) & 0x100002600) == 0)
                {
                  break;
                }

                *v5 = ++v23;
                if (v6 == v23)
                {
                  goto LABEL_28;
                }
              }

              if (v6 != v23 && v24 == 93)
              {
                break;
              }
            }

LABEL_28:
            sub_2685BE1FC(44);
            sub_2685B593C(v15, v17);
            sub_2685BBB94();
            if (v1[2] == v6)
            {
              goto LABEL_11;
            }
          }

          result = sub_2685B593C(v15, v17);
          *v5 = v23 + 1;
        }
      }
    }
  }

  return result;
}

void sub_26865FEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21 - v12;
  v15 = v3[1];
  v14 = v3[2];
  if (v14 == v15)
  {
    goto LABEL_8;
  }

  v16 = *v3;
  while (1)
  {
    v17 = *(v16 + v14);
    v18 = v17 > 0x20;
    v19 = (1 << v17) & 0x100002600;
    if (v18 || v19 == 0)
    {
      break;
    }

    v3[2] = ++v14;
    if (v15 == v14)
    {
      goto LABEL_8;
    }
  }

  if (v15 == v14 || *(*v3 + v14) != 110 || (sub_2685BD87C(&unk_287928360) & 1) == 0)
  {
LABEL_8:
    sub_2685BE520(a2, a3, v13);
    if (!v4)
    {
      (*(v9 + 8))(a1, v8);
      (*(*(a2 - 8) + 56))(v13, 0, 1, a2);
      (*(v9 + 32))(a1, v13, v8);
    }
  }

  else
  {
    (*(v9 + 8))(a1, v8);
    (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
  }
}

void sub_2686600D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2685BD964())
  {
    (*(v7 + 8))(a1, a2);
    (*(a3 + 24))(a2, a3);
  }

  else
  {
    sub_2685BE520(a2, a3, v10);
    if (!v3)
    {
      (*(v7 + 8))(a1, a2);
      (*(v7 + 32))(a1, v10, a2);
    }
  }
}

void sub_268660228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = a1;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v38 - v15;
  v18 = v3[1];
  v17 = v3[2];
  if (v17 == v18)
  {
    goto LABEL_8;
  }

  v19 = *v3;
  while (1)
  {
    v20 = *(v19 + v17);
    v21 = v20 > 0x20;
    v22 = (1 << v20) & 0x100002600;
    if (v21 || v22 == 0)
    {
      break;
    }

    v3[2] = ++v17;
    if (v18 == v17)
    {
      goto LABEL_8;
    }
  }

  if (v18 == v17 || *(*v3 + v17) != 110 || (v42 = v8, v35 = sub_2685BD87C(&unk_287928360), v8 = v42, (v35 & 1) == 0))
  {
LABEL_8:
    sub_2685BE1FC(91);
    if (!v4)
    {
      v42 = v8;
      if ((sub_2685BE8E0() & 1) == 0)
      {
        v24 = 0;
        sub_2685BE520(a2, a3, v16);
        v39 = a3;
        v25 = *(v9 + 16);
        v41 = (v9 + 8);
        v38 = v25;
        while (1)
        {
          v40 = v24;
          v25(v13, v16, a2);
          sub_268689BA4();
          sub_268689B84();
          v26 = v5[2];
          if (v26 == v18)
          {
            goto LABEL_35;
          }

          v27 = *v5;
          while (1)
          {
            v28 = *(v27 + v26);
            v21 = v28 > 0x20;
            v29 = (1 << v28) & 0x100002600;
            if (v21 || v29 == 0)
            {
              break;
            }

            v5[2] = ++v26;
            if (v18 == v26)
            {
              goto LABEL_35;
            }
          }

          if (v18 == v26)
          {
LABEL_35:
            sub_2685BD910();
            swift_allocError();
            *v36 = xmmword_26868A580;
LABEL_36:
            swift_willThrow();
            (*v41)(v16, a2);
            return;
          }

          v31 = *v5;
          if (*(*v5 + v26) == 93)
          {
            break;
          }

          while (1)
          {
            v32 = *(v31 + v26);
            v21 = v32 > 0x20;
            v33 = (1 << v32) & 0x100002600;
            if (v21 || v33 == 0)
            {
              break;
            }

            v5[2] = ++v26;
            if (v18 == v26)
            {
              goto LABEL_35;
            }
          }

          if (v18 == v26)
          {
            goto LABEL_35;
          }

          if (*(*v5 + v26) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v37 = 0;
            v37[1] = 0;
            goto LABEL_36;
          }

          (*v41)(v16, a2);
          v5[2] = v26 + 1;
          v24 = v40;
          sub_2685BE520(a2, v39, v16);
          v25 = v38;
          if (v24)
          {
            return;
          }
        }

        (*v41)(v16, a2);
        v5[2] = v26 + 1;
      }
    }
  }
}

uint64_t sub_2686605B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = swift_conformsToProtocol2();
  if (!a2 || !v12)
  {
    sub_2685BD910();
    swift_allocError();
    v21 = xmmword_268692190;
LABEL_8:
    *v20 = v21;
    return swift_willThrow();
  }

  (*(v12 + 8))(v30, a2);
  v13 = v3[12];
  v14 = v3[13];
  v15 = v3[14];
  sub_2685B2FBC(v3[11]);
  v16 = v30[0];
  *(v3 + 13) = v30[1];
  *(v3 + 11) = v16;
  (*(v8 + 16))(v11, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v27, v30);
    sub_2685B1724(v30, &v27);
    v17 = *(&v28 + 1);
    v18 = v29;
    __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    (*(v18 + 16))(v3, v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v30);
    if (!v4)
    {
      (*(v8 + 8))(a1, a2);
      sub_2685B1724(&v27, v26);
      swift_dynamicCast();
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_2686633D0(&v27);
  result = sub_2685BE1FC(123);
  if (v4)
  {
    return result;
  }

  v22 = v3[5];
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    return result;
  }

  v3[5] = v24;
  if (v24 < 0)
  {
    sub_2685BD910();
    swift_allocError();
    v21 = xmmword_26868A5D0;
    goto LABEL_8;
  }

  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    return (*(a3 + 64))(v3, &type metadata for JSONDecoder, &off_28792FB90, a2, a3);
  }

  return result;
}

uint64_t sub_2686608D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *&v63 = a3;
  v8 = sub_268689C74();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v20 = v5[1];
  v19 = v5[2];
  if (v19 == v20)
  {
    goto LABEL_8;
  }

  v21 = *v5;
  while (1)
  {
    v22 = *(v21 + v19);
    v23 = v22 > 0x20;
    v24 = (1 << v22) & 0x100002600;
    if (v23 || v24 == 0)
    {
      break;
    }

    v5[2] = ++v19;
    if (v20 == v19)
    {
      goto LABEL_8;
    }
  }

  if (v20 == v19 || *(*v5 + v19) != 110 || (v78 = v9, v62 = (&v59 - v18), v45 = sub_2685BD87C(&unk_287928360), v9 = v78, (v45 & 1) == 0))
  {
LABEL_8:
    v61 = v4;
    (*(v9 + 16))(v16, a1, v8);
    v26 = *(a2 - 8);
    v78 = a1;
    v27 = v26;
    v62 = *(v26 + 48);
    v28 = v9;
    v29 = v62(v16, 1, a2);
    (*(v28 + 8))(v16, v8);
    v30 = v63;
    if (v29 == 1)
    {
      v31 = v60;
      (*(v63 + 16))(a2, v63);
      (*(v27 + 56))(v31, 0, 1, a2);
      v32 = v31;
      v30 = v63;
      (*(v28 + 40))(v78, v32, v8);
    }

    v33 = v5[2];
    v34 = v5[3];
    v35 = *(v5 + 48);
    v36 = v5[7];
    v37 = *(v5 + 64);
    *(&v76 + 1) = 0;
    LOBYTE(v77[0]) = 0;
    *(v77 + 8) = 0u;
    *(&v77[1] + 8) = 0u;
    v72 = *v5;
    *&v73 = v33;
    *(&v73 + 1) = v34;
    v74 = *(v5 + 2);
    LOBYTE(v75) = v35;
    *(&v75 + 1) = v36;
    LOBYTE(v76) = v37;
    v38 = v78;
    result = v62(v78, 1, a2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {

      v40 = v61;
      sub_2686605B8(v38, a2, v30);
      if (v40)
      {
        v68 = v76;
        v69 = v77[0];
        v70 = v77[1];
        v71 = *&v77[2];
        v64 = v72;
        v65 = v73;
        v66 = v74;
        v67 = v75;
        return sub_268647D6C(&v64);
      }

      else
      {
        v41 = v73;
        v42 = v74;
        v43 = v75;
        v68 = v76;
        v69 = v77[0];
        v70 = v77[1];
        v71 = *&v77[2];
        v63 = v72;
        v64 = v72;
        v65 = v73;
        v66 = v74;
        v67 = v75;

        sub_268647D6C(&v64);
        v44 = v5[3];

        *v5 = v63;
        *(v5 + 1) = v41;
        *(v5 + 2) = v42;
        *(v5 + 48) = v43;
      }
    }
  }

  else
  {
    v46 = v8;
    v47 = a2;
    v48 = swift_conformsToProtocol2();
    if (v48 && a2)
    {
      v50 = v48;
      v51 = *(v48 + 24);
      MEMORY[0x28223BE20](v48, v49);
      v52 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = v53(v47, v50);
      if (!v4)
      {
        v54 = *(v47 - 8);
        if ((*(v54 + 48))(v52, 1, v47) == 1)
        {
          v55 = v78;
          (*(v78 + 8))(v52, v46);
          *&v74 = 0;
          v72 = 0u;
          v73 = 0u;
        }

        else
        {
          *(&v73 + 1) = v47;
          *&v74 = v50;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
          (*(v54 + 32))(boxed_opaque_existential_1, v52, v47);
          v55 = v78;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D900, &qword_2686921D8);
        v57 = v62;
        v58 = swift_dynamicCast();
        (*(v54 + 56))(v57, v58 ^ 1u, 1, v47);
        return (*(v55 + 40))(a1, v57, v46);
      }
    }

    else
    {
      (*(v9 + 8))(a1, v46);
      return (*(*(a2 - 8) + 56))(a1, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_268660ED4()
{
  sub_2685BD910();
  swift_allocError();
  *v0 = xmmword_26868F110;
  return swift_willThrow();
}

uint64_t sub_268660F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v92 = a1;
  v10 = *(a5 + 8);
  v94 = a3;
  v95 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v13);
  v91 = &v69 - v14;
  v99 = *(a4 + 8);
  v97 = a2;
  v15 = swift_getAssociatedTypeWitness();
  v87 = *(v15 - 8);
  v16 = *(v87 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v90 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v93 = &v69 - v21;
  v96 = sub_268689C74();
  v86 = *(v96 - 8);
  v22 = *(v86 + 64);
  v24 = MEMORY[0x28223BE20](v96, v23);
  v89 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v69 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v100 = &v69 - v31;
  v98 = sub_268689C74();
  v32 = *(v98 - 8);
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v98, v34);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v69 - v39;
  v42 = v7[1];
  v41 = v7[2];
  if (v41 == v42)
  {
    goto LABEL_8;
  }

  v43 = *v7;
  while (1)
  {
    v44 = *(v43 + v41);
    v45 = v44 > 0x20;
    v46 = (1 << v44) & 0x100002600;
    if (v45 || v46 == 0)
    {
      break;
    }

    v7[2] = ++v41;
    if (v42 == v41)
    {
      goto LABEL_8;
    }
  }

  if (v42 == v41 || *(*v7 + v41) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v49 = v7[5];
      v50 = __OFSUB__(v49, 1);
      v51 = v49 - 1;
      if (v50)
      {
        __break(1u);
      }

      else
      {
        v7[5] = v51;
        if (v51 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v53 = xmmword_26868A5D0;
LABEL_14:
          *v52 = v53;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v54 = sub_2685BBBDC();
          v83 = v99 + 32;
          v84 = (v87 + 56);
          v85 = (v88 + 56);
          v81 = (v32 + 16);
          v82 = v95 + 32;
          v79 = (v87 + 32);
          v80 = (v87 + 48);
          v78 = (v86 + 16);
          v77 = (v88 + 48);
          v74 = (v88 + 32);
          v73 = (v87 + 16);
          v72 = (v88 + 16);
          v71 = (v88 + 8);
          v76 = (v87 + 8);
          v86 += 8;
          v70 = v29;
          v75 = v40;
          v87 = v32 + 8;
          while (1)
          {
            if (v54 == 34 && v55 == 0xE100000000000000)
            {
            }

            else
            {
              v56 = sub_268689E14();

              if ((v56 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v53 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v84)(v40, 1, 1, v15);
            (*(v99 + 32))(v40, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v57 = *v85;
            v58 = v100;
            (*v85)(v100, 1, 1, AssociatedTypeWitness);
            (*(v95 + 32))(v58, v7, &type metadata for JSONDecoder, &off_28792FB90);
            v88 = 0;
            (*v81)(v37, v40, v98);
            if ((*v80)(v37, 1, v15) == 1)
            {
              v64 = v87;
              v65 = v98;
              (*v87)(v37, v98);
              v66 = v96;
              v67 = v86;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v68 = xmmword_2686921B0;
              swift_willThrow();
              (*v67)(v100, v66);
              return (*v64)(v40, v65);
            }

            v59 = v93;
            (*v79)(v93, v37, v15);
            (*v78)(v29, v100, v96);
            if ((*v77)(v29, 1, AssociatedTypeWitness) == 1)
            {
              (*v76)(v59, v15);
              v67 = v86;
              v66 = v96;
              (*v86)(v29, v96);
              v65 = v98;
              v64 = v87;
              goto LABEL_32;
            }

            v60 = v91;
            (*v74)(v91, v29, AssociatedTypeWitness);
            (*v73)(v90, v59, v15);
            v61 = v89;
            (*v72)(v89, v60, AssociatedTypeWitness);
            v57(v61, 0, 1, AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v71)(v60, AssociatedTypeWitness);
            (*v76)(v59, v15);
            if (sub_2685BE428())
            {
              (*v86)(v100, v96);
              return (*v87)(v75, v98);
            }

            v62 = v88;
            sub_2685BE1FC(44);
            v40 = v75;
            v63 = v87;
            if (v62)
            {
              (*v86)(v100, v96);
              return (*v63)(v40, v98);
            }

            (*v86)(v100, v96);
            (*v63)(v40, v98);
            v54 = sub_2685BBBDC();
            v29 = v70;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268661974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v91 = a5;
  v89 = a1;
  v85 = *(a3 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v88 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v11 + 8);
  v93 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v14 = *(v84 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v87 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v90 = &v67 - v19;
  v92 = sub_268689C74();
  v83 = *(v92 - 8);
  v20 = *(v83 + 64);
  v22 = MEMORY[0x28223BE20](v92, v21);
  v86 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v96 = &v67 - v29;
  v94 = sub_268689C74();
  v30 = *(v94 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v94, v32);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v67 - v37;
  v40 = v5[1];
  v39 = v5[2];
  if (v39 == v40)
  {
    goto LABEL_8;
  }

  v41 = *v5;
  while (1)
  {
    v42 = *(v41 + v39);
    v43 = v42 > 0x20;
    v44 = (1 << v42) & 0x100002600;
    if (v43 || v44 == 0)
    {
      break;
    }

    v5[2] = ++v39;
    if (v40 == v39)
    {
      goto LABEL_8;
    }
  }

  if (v40 == v39 || *(*v5 + v39) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v47 = v5[5];
      v48 = __OFSUB__(v47, 1);
      v49 = v47 - 1;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        v5[5] = v49;
        if (v49 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v51 = xmmword_26868A5D0;
LABEL_14:
          *v50 = v51;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v52 = sub_2685BBBDC();
          v80 = v95 + 32;
          v81 = (v84 + 56);
          v82 = (v85 + 56);
          v78 = (v84 + 48);
          v79 = (v30 + 16);
          v77 = (v84 + 32);
          v76 = (v83 + 16);
          v75 = (v85 + 48);
          v72 = (v85 + 32);
          v71 = (v84 + 16);
          v70 = (v85 + 16);
          v69 = (v85 + 8);
          v74 = (v84 + 8);
          v83 += 8;
          v68 = v27;
          v73 = v38;
          v84 = v30 + 8;
          while (1)
          {
            if (v52 == 34 && v53 == 0xE100000000000000)
            {
            }

            else
            {
              v54 = sub_268689E14();

              if ((v54 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v51 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v81)(v38, 1, 1, AssociatedTypeWitness);
            (*(v95 + 32))(v38, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v55 = *v82;
            v56 = v96;
            (*v82)(v96, 1, 1, a3);
            sub_26865FEC4(v56, a3, v91);
            v85 = 0;
            (*v79)(v35, v38, v94);
            if ((*v78)(v35, 1, AssociatedTypeWitness) == 1)
            {
              v62 = v84;
              v63 = v94;
              (*v84)(v35, v94);
              v64 = v92;
              v65 = v83;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v66 = xmmword_2686921B0;
              swift_willThrow();
              (*v65)(v96, v64);
              return (*v62)(v38, v63);
            }

            v57 = v90;
            (*v77)(v90, v35, AssociatedTypeWitness);
            (*v76)(v27, v96, v92);
            if ((*v75)(v27, 1, a3) == 1)
            {
              (*v74)(v57, AssociatedTypeWitness);
              v65 = v83;
              v64 = v92;
              (*v83)(v27, v92);
              v63 = v94;
              v62 = v84;
              goto LABEL_32;
            }

            v58 = v88;
            (*v72)(v88, v27, a3);
            (*v71)(v87, v57, AssociatedTypeWitness);
            v59 = v86;
            (*v70)(v86, v58, a3);
            v55(v59, 0, 1, a3);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v69)(v58, a3);
            (*v74)(v57, AssociatedTypeWitness);
            if (sub_2685BE428())
            {
              (*v83)(v96, v92);
              return (*v84)(v73, v94);
            }

            v60 = v85;
            sub_2685BE1FC(44);
            v38 = v73;
            v61 = v84;
            if (v60)
            {
              (*v83)(v96, v92);
              return (*v61)(v38, v94);
            }

            (*v83)(v96, v92);
            (*v61)(v38, v94);
            v52 = sub_2685BBBDC();
            v27 = v68;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268662368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v91 = a5;
  v89 = a1;
  v85 = *(a3 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v88 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v11 + 8);
  v93 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v14 = *(v84 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v87 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v90 = &v67 - v19;
  v92 = sub_268689C74();
  v83 = *(v92 - 8);
  v20 = *(v83 + 64);
  v22 = MEMORY[0x28223BE20](v92, v21);
  v86 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v67 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v96 = &v67 - v29;
  v94 = sub_268689C74();
  v30 = *(v94 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v94, v32);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v67 - v37;
  v40 = v5[1];
  v39 = v5[2];
  if (v39 == v40)
  {
    goto LABEL_8;
  }

  v41 = *v5;
  while (1)
  {
    v42 = *(v41 + v39);
    v43 = v42 > 0x20;
    v44 = (1 << v42) & 0x100002600;
    if (v43 || v44 == 0)
    {
      break;
    }

    v5[2] = ++v39;
    if (v40 == v39)
    {
      goto LABEL_8;
    }
  }

  if (v40 == v39 || *(*v5 + v39) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(123);
    if (!v6)
    {
      v47 = v5[5];
      v48 = __OFSUB__(v47, 1);
      v49 = v47 - 1;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        v5[5] = v49;
        if (v49 < 0)
        {
          sub_2685BD910();
          swift_allocError();
          v51 = xmmword_26868A5D0;
LABEL_14:
          *v50 = v51;
          return swift_willThrow();
        }

        result = sub_2685BE428();
        if ((result & 1) == 0)
        {
          v52 = sub_2685BBBDC();
          v80 = v95 + 32;
          v81 = (v84 + 56);
          v82 = (v85 + 56);
          v78 = (v84 + 48);
          v79 = (v30 + 16);
          v77 = (v84 + 32);
          v76 = (v83 + 16);
          v75 = (v85 + 48);
          v72 = (v85 + 32);
          v71 = (v84 + 16);
          v70 = (v85 + 16);
          v69 = (v85 + 8);
          v74 = (v84 + 8);
          v83 += 8;
          v68 = v27;
          v73 = v38;
          v84 = v30 + 8;
          while (1)
          {
            if (v52 == 34 && v53 == 0xE100000000000000)
            {
            }

            else
            {
              v54 = sub_268689E14();

              if ((v54 & 1) == 0)
              {
                sub_2685BD910();
                swift_allocError();
                v51 = xmmword_2686921A0;
                goto LABEL_14;
              }
            }

            *(v7 + 80) = 1;
            (*v81)(v38, 1, 1, AssociatedTypeWitness);
            (*(v95 + 32))(v38, v7, &type metadata for JSONDecoder, &off_28792FB90);
            *(v7 + 80) = 0;
            sub_2685BE1FC(58);
            v55 = *v82;
            v56 = v96;
            (*v82)(v96, 1, 1, a3);
            sub_2686608D4(v56, a3, v91);
            v85 = 0;
            (*v79)(v35, v38, v94);
            if ((*v78)(v35, 1, AssociatedTypeWitness) == 1)
            {
              v62 = v84;
              v63 = v94;
              (*v84)(v35, v94);
              v64 = v92;
              v65 = v83;
LABEL_32:
              sub_2685BD910();
              swift_allocError();
              *v66 = xmmword_2686921B0;
              swift_willThrow();
              (*v65)(v96, v64);
              return (*v62)(v38, v63);
            }

            v57 = v90;
            (*v77)(v90, v35, AssociatedTypeWitness);
            (*v76)(v27, v96, v92);
            if ((*v75)(v27, 1, a3) == 1)
            {
              (*v74)(v57, AssociatedTypeWitness);
              v65 = v83;
              v64 = v92;
              (*v83)(v27, v92);
              v63 = v94;
              v62 = v84;
              goto LABEL_32;
            }

            v58 = v88;
            (*v72)(v88, v27, a3);
            (*v71)(v87, v57, AssociatedTypeWitness);
            v59 = v86;
            (*v70)(v86, v58, a3);
            v55(v59, 0, 1, a3);
            swift_getAssociatedConformanceWitness();
            sub_2686898F4();
            sub_268689914();
            (*v69)(v58, a3);
            (*v74)(v57, AssociatedTypeWitness);
            if (sub_2685BE428())
            {
              (*v83)(v96, v92);
              return (*v84)(v73, v94);
            }

            v60 = v85;
            sub_2685BE1FC(44);
            v38 = v73;
            v61 = v84;
            if (v60)
            {
              (*v83)(v96, v92);
              return (*v61)(v38, v94);
            }

            (*v83)(v96, v92);
            (*v61)(v38, v94);
            v52 = sub_2685BBBDC();
            v27 = v68;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_268662D5C()
{
  sub_2685BD910();
  swift_allocError();
  *v0 = xmmword_2686921C0;
  return swift_willThrow();
}

uint64_t sub_268662DB0()
{
  result = sub_26865E578();
  if (v0)
  {
    return v2;
  }

  return result;
}

void sub_268662DD4(_DWORD *a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) != 0 || (sub_2685BCCA0(), !v1))
  {
    *a1 = v4;
  }
}

void sub_268662E14(uint64_t a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = v3;
    sub_2685BCCA0();
    if (v1)
    {
      return;
    }

    v3 = v5;
  }

  *a1 = v4;
  *(a1 + 4) = v3 & 1;
}

void sub_268662E8C(void *a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) != 0 || (sub_2685BD298(), !v1))
  {
    *a1 = v4;
  }
}

void sub_268662ECC(uint64_t a1)
{
  v3 = sub_2685BD964();
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    v5 = v3;
    sub_2685BD298();
    if (v1)
    {
      return;
    }

    v3 = v5;
  }

  *a1 = v4;
  *(a1 + 8) = v3 & 1;
}

unint64_t sub_268662F44(_DWORD *a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    result = sub_2685BC45C();
    if (!v1)
    {
      if (HIDWORD(result))
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }

      else
      {
        *a1 = result;
      }
    }
  }

  return result;
}

unint64_t sub_268662FD0(uint64_t a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
    *(a1 + 4) = 1;
  }

  else
  {
    result = sub_2685BC45C();
    if (!v1)
    {
      if (HIDWORD(result))
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }

      else
      {
        *a1 = result;
        *(a1 + 4) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_268663068(_DWORD *a1)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = 0;
  }

  else
  {
    result = sub_2685BC8CC();
    if (!v1)
    {
      if (result == result)
      {
        *a1 = result;
      }

      else
      {
        sub_2685BD910();
        swift_allocError();
        *v4 = xmmword_26868A590;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_2686630F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_2685BD964())
  {
    result = 0;
  }

  else
  {
    result = a4();
    if (v4)
    {
      return result;
    }
  }

  *a1 = result;
  return result;
}

uint64_t sub_26866314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_2685BD964();
  v8 = v7;
  if (v7)
  {
    result = 0;
  }

  else
  {
    v10 = v7;
    result = a4();
    if (v4)
    {
      return result;
    }

    v8 = v10;
  }

  *a1 = result;
  *(a1 + 8) = v8 & 1;
  return result;
}

uint64_t sub_2686631F0(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_2685BD964();
  if (result)
  {
    *a1 = a4;
    return result;
  }

  if (*(v4 + 80))
  {
    result = sub_2685BDAD0();
    if (v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_2685BD9D4();
  if (!v5)
  {
LABEL_5:
    *a1 = result & 1;
  }

  return result;
}

void sub_268663278(void *a1)
{
  if (sub_2685BD964())
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    sub_2685BC49C();
    if (v1)
    {
      return;
    }

    v3 = v5;
    v4 = v6;
  }

  v7 = a1[1];

  *a1 = v3;
  a1[1] = v4;
}

void sub_2686632E0(void *a1)
{
  if (sub_2685BD964())
  {
    v3 = a1[1];

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    sub_2685BC49C();
    if (!v1)
    {
      v6 = v4;
      v7 = v5;
      v8 = a1[1];

      *a1 = v6;
      a1[1] = v7;
    }
  }
}

uint64_t sub_2686633D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D900, &qword_2686921D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268663438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268663480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2686636FC@<X0>(char *a1@<X8>)
{
  sub_2685B403C(" {\n", 3, a1);
  v2 = *(v1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 8) = v2;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
    *(v1 + 8) = result;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    result = sub_2685B3F48((v4 > 1), v5 + 1, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v6;
  *(v2 + v5 + 32) = 32;
  *(v1 + 8) = v2;
  v7 = *(v2 + 24);
  v8 = v5 + 2;
  if (v8 > (v7 >> 1))
  {
    result = sub_2685B3F48((v7 > 1), v8, 1, v2);
    v2 = result;
  }

  *(v2 + 16) = v8;
  *(v2 + v6 + 32) = 32;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_2686637F4(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 34;
  *v2 = v5;
  sub_2686641D8(a1, a2, v2, &v5[v8]);
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *v2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  *(v9 + v12 + 32) = 34;
  *v2 = v9;
  return result;
}

uint64_t sub_26866393C(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) == 0)
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "nan";
    }

    else
    {
      if (a1 < 0.0)
      {
        v1 = "-inf";
        v5 = 4;
LABEL_11:

        return sub_2685B403C(v1, v5, LODWORD(a1));
      }

      v1 = "inf";
    }

    v5 = 3;
    goto LABEL_11;
  }

  v2 = sub_268689BE4();

  return sub_2686689EC(v2, v3);
}

uint64_t sub_2686639C4(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) == 0)
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v1 = "nan";
    }

    else
    {
      if (a1 < 0.0)
      {
        v1 = "-inf";
        v5 = 4;
LABEL_11:

        return sub_2685B403C(v1, v5, *&a1);
      }

      v1 = "inf";
    }

    v5 = 3;
    goto LABEL_11;
  }

  v2 = sub_268689BD4();

  return sub_2686689EC(v2, v3);
}

uint64_t sub_268663A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_2685C23CC(a2, a3, v18);
  if (v19 == 255)
  {
    v7 = (*(a3 + 40))(a2, a3);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = v7;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *v4 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v15 = v9;
        v16 = *(v9 + 2);
        v17 = sub_2685B3F48((v12 > 1), v11 + 1, 1, v15);
        v11 = v16;
        v9 = v17;
      }

      *(v9 + 2) = v13;
      v9[v11 + 32] = 45;
      *v4 = v9;
      v7 = -v8;
    }

    return sub_268663B88(v7);
  }

  else
  {
    sub_2685B403C(v18[0], v18[1], v19);
    return sub_2686643A4(v18);
  }
}

uint64_t sub_268663B88(unint64_t a1)
{
  if (a1 >= 0x3E8)
  {
    sub_268663B88(a1 / 0x3E8);
  }

  else if (a1 < 0x64)
  {
    v3 = *v1;
    if (a1 < 0xA)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = (a1 / 0x64 - 10 * ((a1 / 0x64 * 0x199999999999999AuLL) >> 64)) | 0x30;
  *v1 = v3;
LABEL_11:
  v7 = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((v7 & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v3[v9 + 32] = (a1 / 0xA - 10 * ((a1 / 0xA * 0x199999999999999AuLL) >> 64)) | 0x30;
  *v1 = v3;
LABEL_16:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    *v1 = result;
  }

  v12 = *(v3 + 2);
  v11 = *(v3 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v12 + 1;
  v3[v12 + 32] = (a1 % 0xA) | 0x30;
  *v1 = v3;
  return result;
}

uint64_t sub_268663DD0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = a2 - 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      v8 = a1;
      sub_268663DD0(a1 >> 4, v7);
      if ((v8 & 0xFu) >= 0xA)
      {
        v5 = (v8 & 0xF) + 55;
      }

      else
      {
        v5 = v8 & 0xF | 0x30;
      }

      v3 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v3;
      if (result)
      {
        goto LABEL_7;
      }
    }

    result = sub_2685B3F48(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
    *v4 = result;
LABEL_7:
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_2685B3F48((v10 > 1), v11 + 1, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v11 + 1;
    *(v3 + v11 + 32) = v5;
    *v4 = v3;
    return result;
  }

  return sub_2685B403C("0x", 2, a3);
}

uint64_t sub_268663EDC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  if (result)
  {
    v4 = result;
    v5 = a2 - result;
    if (a2 - result >= 1)
    {
      do
      {
        v9 = *v4++;
        v8 = v9;
        if (v9 > 11)
        {
          if (v8 > 33)
          {
            if (v8 == 34)
            {
              v7 = "\\"";
            }

            else
            {
              if (v8 != 92)
              {
LABEL_25:
                v10 = *a3;
                result = swift_isUniquelyReferenced_nonNull_native();
                *a3 = v10;
                if ((v8 - 127) >= 0xFFFFFFA1)
                {
                  if ((result & 1) == 0)
                  {
                    result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  v23 = *(v10 + 16);
                  v22 = *(v10 + 24);
                  if (v23 >= v22 >> 1)
                  {
                    result = sub_2685B3F48((v22 > 1), v23 + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  *(v10 + 16) = v23 + 1;
                  a4 = (v10 + v23);
                  *(v10 + v23 + 32) = v8;
                }

                else
                {
                  if ((result & 1) == 0)
                  {
                    result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  v12 = *(v10 + 16);
                  v11 = *(v10 + 24);
                  if (v12 >= v11 >> 1)
                  {
                    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
                    v10 = result;
                    *a3 = result;
                  }

                  *(v10 + 16) = v12 + 1;
                  *(v10 + v12 + 32) = 92;
                  v13 = *a3;
                  v15 = *(*a3 + 16);
                  v14 = *(*a3 + 24);
                  if (v15 >= v14 >> 1)
                  {
                    result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
                    v13 = result;
                    *a3 = result;
                  }

                  *(v13 + 16) = v15 + 1;
                  *(v13 + v15 + 32) = (v8 >> 6) | 0x30;
                  v16 = *a3;
                  v18 = *(*a3 + 16);
                  v17 = *(*a3 + 24);
                  if (v18 >= v17 >> 1)
                  {
                    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v16);
                    v16 = result;
                    *a3 = result;
                  }

                  *(v16 + 16) = v18 + 1;
                  *(v16 + v18 + 32) = (v8 >> 3) & 7 | 0x30;
                  v19 = *a3;
                  v21 = *(*a3 + 16);
                  v20 = *(*a3 + 24);
                  if (v21 >= v20 >> 1)
                  {
                    result = sub_2685B3F48((v20 > 1), v21 + 1, 1, v19);
                    v19 = result;
                    *a3 = result;
                  }

                  a4 = (v8 & 7 | 0x30u);
                  *(v19 + 16) = v21 + 1;
                  *(v19 + v21 + 32) = v8 & 7 | 0x30;
                }

                goto LABEL_6;
              }

              v7 = "\\\";
            }
          }

          else if (v8 == 12)
          {
            v7 = "\\f";
          }

          else
          {
            if (v8 != 13)
            {
              goto LABEL_25;
            }

            v7 = "\\r";
          }
        }

        else if (v8 > 9)
        {
          if (v8 == 10)
          {
            v7 = "\\n";
          }

          else
          {
            if (v8 != 11)
            {
              goto LABEL_25;
            }

            v7 = "\\v";
          }
        }

        else if (v8 == 8)
        {
          v7 = "\\b";
        }

        else
        {
          if (v8 != 9)
          {
            goto LABEL_25;
          }

          v7 = "\\t";
        }

        result = sub_2685B403C(v7, 2, a4);
LABEL_6:
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_2686641D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
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
  }

  else
  {
    if (!v4)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      v5 = v10 + BYTE6(a2);
LABEL_9:
      result = sub_268663EDC(v10, v5, a3, a4);
      goto LABEL_10;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_268664300(v6, v7, a3, a4);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268664300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, char *a4@<X8>)
{
  result = sub_268689764();
  v9 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 += a1 - result;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_268689784();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 + v9;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return sub_268663EDC(v9, v15, a3, a4);
}

uint64_t sub_2686643A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3B8, &qword_268692270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26866440C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_268664454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double Google_Protobuf_Duration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_Duration.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Duration.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t static Google_Protobuf_Duration._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D910;
  v2 = qword_28028D918;
  v3 = unk_28028D920;
  *a1 = qword_28028D908;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Duration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 72))(v3 + 8, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Duration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    if (!v8 || (result = (*(a3 + 24))(v8, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v9, v10);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v9, v10);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Duration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t sub_268664918@<X0>(void *a1@<X8>)
{
  if (qword_28028BE50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D910;
  v2 = qword_28028D918;
  v3 = unk_28028D920;
  *a1 = qword_28028D908;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

unint64_t sub_2686649C4(uint64_t a1)
{
  result = sub_2686649EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686649EC()
{
  result = qword_28028D928;
  if (!qword_28028D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D928);
  }

  return result;
}

unint64_t sub_268664A40(uint64_t a1)
{
  *(a1 + 8) = sub_268653BF0();
  result = sub_268664A70();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268664A70()
{
  result = qword_28028D930;
  if (!qword_28028D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D930);
  }

  return result;
}

unint64_t sub_268664AC8()
{
  result = qword_28028D938;
  if (!qword_28028D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D938);
  }

  return result;
}

uint64_t sub_268664B2C()
{
  v1 = *v0;
  sub_268689E94();
  sub_268689EB4();
  return sub_268689EF4();
}

uint64_t sub_268664BA0()
{
  v1 = *v0;
  sub_268689E94();
  sub_268689EB4();
  return sub_268689EF4();
}

uint64_t sub_268664BE4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2685B428C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_268664C30()
{
  result = qword_28028D940;
  if (!qword_28028D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D940);
  }

  return result;
}

uint64_t Message.jsonUTF8Data(options:)(char *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v4 = v3;
  v7 = sub_2686899A4();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  v17 = *a1;
  v18 = a1[1];
  v21 = *(v13 + 16);
  v19 = v13 + 16;
  v20 = v21;
  v21((&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)), v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (!swift_dynamicCast())
  {
    *&v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_2686633D0(&v46);
    v24 = v44;
    *(&v47 + 1) = a2;
    *&v48 = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    v20(boxed_opaque_existential_1, v4, a2);
    v54[0] = v17;
    v54[1] = v18;
    v26 = v45;
    sub_26862CC74(&v46, v54, &v50);
    if (!v26)
    {
      v30 = v50;
      if ((BYTE9(v50) & 1) == 0)
      {
        v31 = BYTE8(v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        if (v33 >= v32 >> 1)
        {
          v30 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
        }

        *(v30 + 2) = v33 + 1;
        v30[v33 + 32] = v31;
        *&v50 = v30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        *&v50 = v30;
      }

      v36 = *(v30 + 2);
      v35 = *(v30 + 3);
      if (v36 >= v35 >> 1)
      {
        v30 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v30);
      }

      *(v30 + 2) = v36 + 1;
      v30[v36 + 32] = 123;
      *&v50 = v30;
      WORD4(v50) = 256;
      (*(v24 + 72))(&v50, &type metadata for JSONEncodingVisitor, &off_28792D200, a2, v24);
      v37 = v50;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *&v50 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_2685B3F48(0, *(v37 + 2) + 1, 1, v37);
        *&v50 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_2685B3F48((v39 > 1), v40 + 1, 1, v37);
      }

      *(v37 + 2) = v40 + 1;
      v37[v40 + 32] = 125;
      *&v50 = v37;
      WORD4(v50) = 44;

      v19 = sub_26866677C(v41);

      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      sub_268647CF4(&v46);
    }

    return v19;
  }

  sub_2685B17CC(&v46, &v50);
  v19 = *(&v51 + 1);
  v22 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
  LOBYTE(v46) = v17;
  BYTE1(v46) = v18;
  v23 = v45;
  (*(v22 + 8))(&v46, v19, v22);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(&v50);
    return v19;
  }

  sub_268689994();
  v19 = sub_268689954();
  v28 = v27;
  result = (*(v43 + 8))(v12, v7);
  if (v28 >> 60 != 15)
  {

    __swift_destroy_boxed_opaque_existential_1(&v50);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t Message.init(jsonString:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v27 = a4;
  v12 = sub_2686899A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v26[1] = v6;
    v26[2] = v7;
    v19 = *a3;
    v20 = *(a3 + 8);
    sub_268689994();
    v21 = sub_268689954();
    v23 = v22;

    (*(v13 + 8))(v17, v12);
    if (v23 >> 60 != 15)
    {
      v28 = v19;
      v29 = v20;
      return Message.init(jsonUTF8Data:options:)(v21, v23, &v28, v27, v30, a6);
    }
  }

  else
  {
  }

  sub_2685BD910();
  swift_allocError();
  *v25 = xmmword_26868A580;
  return swift_willThrow();
}

uint64_t Message.init(jsonUTF8Data:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  (*(a5 + 16))(a4, a5);
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v12;
  v16 = v13;
  v17 = a6;
  sub_2685B2660(sub_26866682C, v15, a1, a2);
  result = sub_2685B593C(a1, a2);
  if (v6)
  {
    return (*(*(a4 - 8) + 8))(a6, a4);
  }

  return result;
}

uint64_t sub_268665530(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result)
  {
    v8 = result;
    v9 = a2 - result;
    v10 = a2 - result - 1;
    if (a2 - result >= 1)
    {
      v46 = a5;
      v47 = a6;
      *(&v64 + 1) = 0;
      LOBYTE(v65[0]) = 0;
      memset(v65 + 8, 0, 32);
      *(&v63 + 1) = a3;
      v12 = a4 & 1;
      LOBYTE(v64) = a4 & 1;
      v66 = v7;
      type metadata accessor for DoubleParser();
      v14 = swift_allocObject();
      v15 = swift_slowAlloc();
      v16 = 0;
      *(v14 + 16) = v15;
      *(v14 + 24) = v15 + 128;
      *&v60 = v8;
      *(&v60 + 1) = v9;
      *(&v61 + 1) = v14;
      *&v62 = a3;
      *(&v62 + 1) = a3;
      LOBYTE(v63) = v12;
      while (1)
      {
        v17 = *(v8 + v16);
        v18 = v17 > 0x20;
        v19 = (1 << v17) & 0x100002600;
        if (v18 || v19 == 0)
        {
          break;
        }

        if (v9 == ++v16)
        {
          v16 = v9;
          goto LABEL_10;
        }
      }

      *&v61 = v16;
      if (v9 != v16 && *(v8 + v16) == 110)
      {
        if (aNull_0[0] == 110 && v10 != v16 && *(v8 + v16 + 1) == aNull_0[1] && v9 - 2 != v16 && *(v8 + v16 + 2) == aNull_0[2] && v9 - 3 != v16 && *(v8 + v16 + 3) == aNull_0[3])
        {
          *&v61 = v16 + 4;
          if (v9 - 4 == v16 || (*(v8 + v16 + 4) & 0xDFu) - 91 < 0xFFFFFFE6)
          {
            v45 = v16 + 4;
            v25 = v47;
            v26 = swift_conformsToProtocol2();
            if (!v26 || !v47)
            {
              sub_2685BD910();
              swift_allocError();
              *v39 = xmmword_268692180;
              swift_willThrow();
              v56 = v64;
              v57 = v65[0];
              v58 = v65[1];
              v59 = *&v65[2];
              v52 = v60;
              v53 = v61;
              v37 = v62;
              v38 = v63;
              goto LABEL_40;
            }

            v27 = v26;
            v28 = *(v26 + 24);
            v29 = sub_268689C74();
            v44 = &v44;
            v30 = *(v29 - 8);
            v31 = *(v30 + 64);
            MEMORY[0x28223BE20](v29, v32);
            v34 = &v44 - v33;
            v35 = v66;
            v28(v25, v27);
            v66 = v35;
            if (v35)
            {
              v56 = v64;
              v57 = v65[0];
              v58 = v65[1];
              v59 = *&v65[2];
              v52 = v60;
              v53 = v61;
              v54 = v62;
              v55 = v63;
              return sub_268647D6C(&v52);
            }

            v40 = *(v47 - 8);
            if ((*(v40 + 48))(v34, 1) == 1)
            {
              (*(v30 + 8))(v34, v29);
              sub_2685BD910();
              swift_allocError();
              *v41 = xmmword_268692180;
              swift_willThrow();
              v56 = v64;
              v57 = v65[0];
              v58 = v65[1];
              v59 = *&v65[2];
              v52 = v60;
              v53 = v61;
              v54 = v62;
              v55 = v63;
              return sub_268647D6C(&v52);
            }

            v42 = v47;
            v49 = v47;
            v50 = v27;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
            (*(v40 + 32))(boxed_opaque_existential_1, v34, v42);
            sub_2685B17CC(&v48, v51);
            sub_2685B17CC(v51, &v52);
            (*(v40 + 8))(v46, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
            swift_dynamicCast();
            v21 = v45;
            if (v45 != v9)
            {
LABEL_13:
              while (1)
              {
                v22 = *(v60 + v21);
                v18 = v22 > 0x20;
                v23 = (1 << v22) & 0x100002600;
                if (v18 || v23 == 0)
                {
                  break;
                }

                if (v9 == ++v21)
                {
                  v21 = v9;
                  break;
                }
              }

              *&v61 = v21;
            }

LABEL_20:
            if (v21 == v9)
            {
              goto LABEL_21;
            }

            sub_2685BD910();
            swift_allocError();
            *v36 = xmmword_268690760;
            swift_willThrow();
            v56 = v64;
            v57 = v65[0];
            v58 = v65[1];
            v59 = *&v65[2];
            v52 = v60;
            v53 = v61;
            v37 = v62;
            v38 = v63;
LABEL_40:
            v54 = v37;
            v55 = v38;
            return sub_268647D6C(&v52);
          }
        }

LABEL_10:
        *&v61 = v16;
      }

      sub_2686605B8(v46, v47, a7);
      if (v7)
      {
LABEL_21:
        v56 = v64;
        v57 = v65[0];
        v58 = v65[1];
        v59 = *&v65[2];
        v52 = v60;
        v53 = v61;
        v54 = v62;
        v55 = v63;
        return sub_268647D6C(&v52);
      }

      v9 = *(&v60 + 1);
      v21 = v61;
      if (v61 != *(&v60 + 1))
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  return result;
}

char *sub_268665B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D968, &qword_268692518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_268665C24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D948, &qword_268692500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_268665D44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D950, &qword_268692508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_268665E50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D978, &qword_268692528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_268665F44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D970, &qword_268692520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_268666050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9A8, &qword_268692558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26866617C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9A0, &qword_268692550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_268666294(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_2686663A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_2686664A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C078, &unk_268692750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C080, &qword_26868A780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_2686665E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_26863B948(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26866667C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2686666F8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26866667C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2686897B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_268689754();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_268689804();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2686666F8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2686897B4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_268689754();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26866677C(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  v10 = sub_268666854();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2686665E8(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

unint64_t sub_268666854()
{
  result = qword_28028D960;
  if (!qword_28028D960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028C318, &unk_2686929B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D960);
  }

  return result;
}

uint64_t sub_2686668B8(uint64_t a1, unint64_t a2)
{
  v18 = 0;
  v19 = 0xE000000000000000;
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v17[0] = a2;
  v17[1] = 0;
  v17[2] = v2;

  v3 = sub_268689A74();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = &v19;
    while (v6 == 95 && v5 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v12 = sub_268689A74();
      v5 = v13;
      if (!v13)
      {

        goto LABEL_32;
      }

      v14 = v12;
      result = sub_268689E14();
      if (result)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      if (v14 == 97 && v5 == 0xE100000000000000)
      {
        goto LABEL_5;
      }

      if (sub_268689E14())
      {
        goto LABEL_28;
      }

      if (v14 != 122 || v5 != 0xE100000000000000)
      {
LABEL_5:
        if (sub_268689E14())
        {
          goto LABEL_28;
        }
      }

      v8 = sub_2686899D4();
      v10 = v9;

      MEMORY[0x26D61D4B0](v8, v10);
LABEL_7:

      v6 = sub_268689A74();
      v5 = v11;
      if (!v11)
      {
        v5 = v18;
        goto LABEL_30;
      }
    }

    result = sub_268689E14();
    if (result)
    {
      goto LABEL_34;
    }

    if (v6 != 65 || v5 != 0xE100000000000000)
    {
      if (sub_268689E14())
      {
LABEL_25:
        MEMORY[0x26D61D4A0](v6, v5);
        goto LABEL_7;
      }

      if (v6 == 90 && v5 == 0xE100000000000000)
      {
LABEL_28:

        v5 = 0;
        goto LABEL_32;
      }
    }

    if ((sub_268689E14() & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_30:
  v7 = v17;
LABEL_32:
  v16 = *v7;

  return v5;
}

uint64_t sub_268666B28(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v16 = 0xE000000000000000;
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v14[0] = a2;
  v14[1] = 0;
  v14[2] = v2;

  v3 = sub_268689A74();
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    v7 = &v16;
    while (1)
    {
      if (v6 == 95 && v5 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
      {

        v5 = 0;
        goto LABEL_22;
      }

      result = sub_268689E14();
      if (result)
      {
        __break(1u);
        return result;
      }

      if (v6 != 65 || v5 != 0xE100000000000000)
      {
        if (sub_268689E14())
        {
          goto LABEL_5;
        }

        if (v6 == 90 && v5 == 0xE100000000000000)
        {
LABEL_18:
          MEMORY[0x26D61D4A0](95, 0xE100000000000000);
          v10 = sub_2686899B4();
          v12 = v11;

          MEMORY[0x26D61D4B0](v10, v12);
          goto LABEL_6;
        }
      }

      if ((sub_268689E14() & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_5:
      MEMORY[0x26D61D4A0](v6, v5);
LABEL_6:

      v6 = sub_268689A74();
      v5 = v8;
      if (!v8)
      {
        v5 = v15;
        break;
      }
    }
  }

  v7 = v14;
LABEL_22:
  v13 = *v7;

  return v5;
}

char *sub_268666D04(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = 0;
  v23 = 0xE000000000000000;

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v4 = 0;
  while (1)
  {
    v5 = sub_268689A74();
    if (!v6)
    {
      break;
    }

    v7 = v5;
    v8 = v6;
    if (v5 == 44 && v6 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      if (!v4)
      {

LABEL_29:

        goto LABEL_30;
      }

      v11 = sub_268666B28(v22, v23);
      v13 = v12;

      if (!v13)
      {
        goto LABEL_29;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2685B54B4(0, *(v3 + 2) + 1, 1, v3);
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        v3 = sub_2685B54B4((v14 > 1), v15 + 1, 1, v3);
      }

      *(v3 + 2) = v15 + 1;
      v16 = &v3[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
      v22 = 0;
      v23 = 0xE000000000000000;
      goto LABEL_5;
    }

    v9 = &v22;
    MEMORY[0x26D61D4A0](v7, v8);

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_33:
      v3 = sub_2685B54B4(0, *(v3 + 2) + 1, 1, v3);
      goto LABEL_23;
    }
  }

  if (!v4)
  {
    goto LABEL_29;
  }

  v9 = sub_268666B28(v22, v23);
  v8 = v17;

  if (!v8)
  {
LABEL_30:

    return 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_23:
  v19 = *(v3 + 2);
  v18 = *(v3 + 3);
  if (v19 >= v18 >> 1)
  {
    v3 = sub_2685B54B4((v18 > 1), v19 + 1, 1, v3);
  }

  *(v3 + 2) = v19 + 1;
  v20 = &v3[16 * v19];
  *(v20 + 4) = v9;
  *(v20 + 5) = v8;
  return v3;
}

double Google_Protobuf_FieldMask.init(protoPaths:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_FieldMask.init(jsonPaths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = result + 40;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v6 + 16 * v4);
  while (1)
  {
    if (v5 == v4)
    {

      *a2 = v7;
      *(a2 + 8) = xmmword_26868A5E0;
      return result;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v9 = v8 + 2;
    v10 = *(v8 - 1);
    v11 = *v8;

    v12 = sub_268666B28(v10, v11);
    v14 = v13;

    v8 = v9;
    if (v14)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2685B54B4(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2685B54B4((v15 > 1), v16 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_268667118()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F90];
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v8 = sub_2686668B8(v6, v7);
      v10 = v9;

      if (!v10)
      {

        sub_2685D104C();
        swift_allocError();
        *v17 = 3;
        swift_willThrow();
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2685B54B4(0, *(v5 + 2) + 1, 1, v5);
      }

      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_2685B54B4((v11 > 1), v12 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v12 + 1;
      v13 = &v5[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
    sub_268621BAC();
    v14 = sub_268689934();
    v16 = v15;

    MEMORY[0x26D61D4B0](v14, v16);

    MEMORY[0x26D61D4B0](34, 0xE100000000000000);
  }
}

void sub_26866732C()
{
  v2 = v0;
  sub_2685BC49C();
  if (!v1)
  {
    v5 = sub_268666D04(v3, v4);

    if (v5)
    {
      v6 = *v2;

      *v2 = v5;
    }

    else
    {
      sub_2685BD910();
      swift_allocError();
      *v7 = xmmword_268692560;
      swift_willThrow();
    }
  }
}

void sub_2686673C8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = sub_2686899A4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(v2 + 16);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  if ((~v13 & 0x3000000000000000) == 0 && v14 == 255)
  {
    sub_2685D104C();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
    return;
  }

  v16 = ((v13 >> 60) & 3 | (4 * (v14 & 1u)));
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        sub_26863183C(*&v12);
        return;
      }

      sub_2685D10C8(v12, v11, v13, v14 & 1);
      sub_268631D18(v12, v11);
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (v16 == 3)
  {
    if ((v12 & 1) == 0)
    {
      v25 = "false";
      v26 = 5;
      goto LABEL_29;
    }

    v25 = "true";
LABEL_19:
    v26 = 4;
LABEL_29:
    sub_2685B403C(v25, v26, v16);
    return;
  }

  v17 = v14 & 1;
  if (v16 == 4)
  {
    sub_2685D10C8(v12, v11, v13, v17);
    if (v9)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_268667FE8(v18 | v8, v12, v11, v13, &type metadata for Google_Protobuf_Struct, &off_287929FB8, sub_2685D8AEC);
    if (v3)
    {
      goto LABEL_27;
    }

    v21 = v19;
    v22 = v20;
    sub_268689994();
    v23 = sub_268689964();
    if (!v24)
    {
      __break(1u);
LABEL_16:
      v25 = "null";
      goto LABEL_19;
    }

LABEL_26:
    v30 = v23;
    v31 = v24;
    sub_2685B593C(v21, v22);
    sub_2686689EC(v30, v31);
LABEL_27:
    sub_2685D1170(v12, v11, v13, v14);
    return;
  }

  sub_2685D10C8(v12, v11, v13, v17);
  if (v9)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_268667FE8(v27 | v8, v12, v11, v13 & 0xCFFFFFFFFFFFFFFFLL, &type metadata for Google_Protobuf_ListValue, &off_287929740, sub_2685D0240);
  if (v3)
  {
    goto LABEL_27;
  }

  v21 = v28;
  v22 = v29;
  sub_268689994();
  v23 = sub_268689964();
  if (v24)
  {
    goto LABEL_26;
  }

  __break(1u);
}

void sub_268667698(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2685BBBDC();
  if (v2)
  {
    return;
  }

  v7 = v5;
  v8 = v6;
  if ((v5 != 110 || v6 != 0xE100000000000000) && (sub_268689E14() & 1) == 0)
  {
    if (v7 == 91 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v67 = MEMORY[0x277D84F90];
      sub_2685D0838(a1);
      v18 = *(v3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v3 + 16);
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v20 + 32);
        v24 = *(v20 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v25 = swift_allocObject();
        v26 = *(v20 + 24);
        v65 = *(v20 + 16);
        v27 = *(v20 + 32);
        v24 = *(v20 + 40);
        *(v25 + 16) = v65;
        *(v25 + 24) = v26;
        *(v25 + 32) = v27;
        *(v25 + 40) = v24;
        sub_2685D10A0(v65, v26, v27, v24);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        v23 = v27;
        v22 = v26;
        *(v3 + 16) = v25;
        v20 = v25;
        v21 = v65;
      }

      *(v20 + 16) = v67;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xD000000000000000;
      *(v20 + 40) = 1;
      sub_2685D1170(v21, v22, v23, v24);
      return;
    }

    if (v7 == 123 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v68 = sub_2686892D4(MEMORY[0x277D84F90]);
      sub_2685D8F60(a1);
      v28 = *(v3 + 16);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v3 + 16);
      if (v29)
      {
        v31 = *(v30 + 16);
        v32 = *(v30 + 24);
        v33 = *(v30 + 32);
        v34 = *(v30 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v43 = swift_allocObject();
        v44 = *(v30 + 24);
        v66 = *(v30 + 16);
        v45 = *(v30 + 32);
        v34 = *(v30 + 40);
        *(v43 + 16) = v66;
        *(v43 + 24) = v44;
        *(v43 + 32) = v45;
        *(v43 + 40) = v34;
        sub_2685D10A0(v66, v44, v45, v34);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        v33 = v45;
        v32 = v44;
        v31 = v66;
        *(v3 + 16) = v43;
        v30 = v43;
      }

      *(v30 + 16) = v68;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0xC000000000000000;
      *(v30 + 40) = 1;
LABEL_35:
      sub_2685D1170(v31, v32, v33, v34);
      return;
    }

    if (v7 == 116 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0 || v7 == 102 && v8 == 0xE100000000000000 || (sub_268689E14() & 1) != 0)
    {

      v35 = sub_2685BD9D4() & 1;
      v36 = *(v3 + 16);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v3 + 16);
      if (v37)
      {
        v39 = *(v38 + 16);
        v40 = *(v38 + 24);
        v41 = *(v38 + 32);
        v42 = *(v38 + 40);
      }

      else
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v46 = swift_allocObject();
        v39 = *(v38 + 16);
        v40 = *(v38 + 24);
        v41 = *(v38 + 32);
        v42 = *(v38 + 40);
        *(v46 + 16) = v39;
        *(v46 + 24) = v40;
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        sub_2685D10A0(v39, v40, v41, v42);
        sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

        *(v3 + 16) = v46;
        v38 = v46;
      }

      *(v38 + 16) = v35;
      v47 = xmmword_268692590;
      goto LABEL_38;
    }

    if (v7 == 34 && v8 == 0xE100000000000000)
    {
    }

    else
    {
      v48 = sub_268689E14();

      if ((v48 & 1) == 0)
      {
        sub_2685BD298();
        v61 = v59;
        v62 = *(v3 + 16);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v3 + 16);
        if (v63)
        {
          v39 = *(v38 + 16);
          v40 = *(v38 + 24);
          v41 = *(v38 + 32);
          v42 = *(v38 + 40);
        }

        else
        {
          type metadata accessor for Google_Protobuf_Value._StorageClass();
          v64 = swift_allocObject();
          v39 = *(v38 + 16);
          v40 = *(v38 + 24);
          v41 = *(v38 + 32);
          v42 = *(v38 + 40);
          *(v64 + 16) = v39;
          *(v64 + 24) = v40;
          *(v64 + 32) = v41;
          *(v64 + 40) = v42;
          sub_2685D10A0(v39, v40, v41, v42);
          sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

          *(v3 + 16) = v64;
          v38 = v64;
        }

        *(v38 + 16) = v61;
        v47 = xmmword_268692580;
LABEL_38:
        *(v38 + 24) = v47;
        *(v38 + 40) = 0;
        sub_2685D1170(v39, v40, v41, v42);
        return;
      }
    }

    sub_2685BC49C();
    v50 = v49;
    v52 = v51;
    v53 = *(v3 + 16);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v3 + 16);
    if (v54)
    {
      v56 = *(v55 + 16);
      v57 = *(v55 + 24);
      v58 = *(v55 + 32);
      v34 = *(v55 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v60 = swift_allocObject();
      v56 = *(v55 + 16);
      v57 = *(v55 + 24);
      v58 = *(v55 + 32);
      v34 = *(v55 + 40);
      *(v60 + 16) = v56;
      *(v60 + 24) = v57;
      *(v60 + 32) = v58;
      *(v60 + 40) = v34;
      sub_2685D10A0(v56, v57, v58, v34);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v3 + 16) = v60;
      v55 = v60;
    }

    *(v55 + 16) = v50;
    *(v55 + 24) = v52;
    *(v55 + 32) = 0x2000000000000000;
    *(v55 + 40) = 0;
    v31 = v56;
    v32 = v57;
    v33 = v58;
    goto LABEL_35;
  }

  if (sub_2685BD964())
  {
    v9 = *(v3 + 16);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    if (v10)
    {
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v17 = swift_allocObject();
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
      *(v17 + 16) = v12;
      *(v17 + 24) = v13;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      sub_2685D10A0(v12, v13, v14, v15);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v3 + 16) = v17;
      v11 = v17;
    }

    *(v11 + 16) = 0;
    *(v11 + 24) = xmmword_2686925A0;
    *(v11 + 40) = 0;
    sub_2685D1170(v12, v13, v14, v15);
  }

  else
  {
    sub_2685BD910();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_268667DB8(__int16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = sub_2686899A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &type metadata for Google_Protobuf_Value;
  v28[4] = &off_28792FFB8;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v15 = __swift_project_boxed_opaque_existential_1(v28, &type metadata for Google_Protobuf_Value);
  v16 = v15[2];
  v27 = 256;
  v24 = *v15;
  v25 = v16;
  v26 = MEMORY[0x277D84F90];
  v23 = a1 & 0x101;
  sub_2685BA80C(a2, a3);

  sub_2686673C8(&v26, &v23);
  if (v4)
  {
    goto LABEL_4;
  }

  *&v24 = v26;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  sub_268689974();
  v18 = v17;

  if (v18)
  {

    sub_268689994();
    a3 = sub_268689954();
    v21 = v20;
    result = (*(v10 + 8))(v14, v9);
    if (v21 >> 60 != 15)
    {
LABEL_4:

      __swift_destroy_boxed_opaque_existential_1(v28);
      return a3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268667FE8(__int16 a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int16 *))
{
  v11 = v7;
  v16 = sub_2686899A4();
  v25 = *(v16 - 8);
  v26 = v16;
  v17 = *(v25 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a5;
  v27[4] = a6;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  __swift_project_boxed_opaque_existential_1(v27, a5);
  v28 = a1 & 0x101;

  sub_2685BA80C(a3, a4);
  a7(&v28);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    return v11;
  }

  sub_268689994();
  v11 = sub_268689954();
  v22 = v21;
  result = (*(v25 + 8))(v20, v26);
  if (v22 >> 60 != 15)
  {

    __swift_destroy_boxed_opaque_existential_1(v27);
    return v11;
  }

  __break(1u);
  return result;
}

double Google_Protobuf_Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

void sub_2686681F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  inited = swift_initStaticObject();
  *a2 = xmmword_26868A5E0;
  *(a2 + 16) = inited;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *(inited + 16);
    v9 = *(inited + 24);
    v10 = *(inited + 32);
    v11 = *(inited + 40);
  }

  else
  {
    v13 = v6;
    v12 = swift_allocObject();
    v8 = *(inited + 16);
    v9 = *(inited + 24);
    v10 = *(inited + 32);
    v11 = *(inited + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(a2 + 16) = v12;
    inited = v12;
    v6 = v13;
  }

  *(inited + 16) = v3;
  *(inited + 24) = v4;
  *(inited + 32) = v5;
  *(inited + 40) = v6;

  sub_2685D1170(v8, v9, v10, v11);
}

double sub_268668320@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_268668380@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_2686683DC@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = xmmword_268692590;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double sub_268668438@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v6[2] = 0x2000000000000000;
  v7 = 0;
  sub_2686681F0(v6, &v8);
  v4 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v4;
  return result;
}

double Google_Protobuf_Value.init(nilLiteral:)@<D0>(uint64_t a1@<X8>)
{
  v4 = 0;
  v5 = xmmword_2686925A0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

double sub_2686684E8@<D0>(uint64_t a1@<X8>)
{
  v4 = xmmword_26868A5A0;
  v5 = 0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_268668540(_BYTE *a1)
{
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  LOBYTE(v7) = *a1;
  v9 = a1[1];
  v10 = *(v1 + 2);
  v18 = MEMORY[0x277D84F90];
  v19 = 256;
  v16 = *v1;
  v17 = v10;
  v15[0] = v7;
  v15[1] = v9;
  sub_2686673C8(&v18, v15);
  if (v2)
  {
    goto LABEL_3;
  }

  *&v16 = v18;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v8 = sub_268689974();
  v12 = v11;

  if (v12)
  {
LABEL_3:

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2686686B8@<D0>(uint64_t a1@<X8>)
{
  v4 = xmmword_26868A5A0;
  v5 = 0;
  v6 = 0;
  sub_2686681F0(&v4, &v7);
  v2 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v2;
  return result;
}

double sub_26866871C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = a2;
  v6 = xmmword_268692580;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v3;
  return result;
}

double sub_268668778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = 0x2000000000000000;
  v7 = 0;
  sub_2686681F0(v6, &v8);
  v4 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v4;
  return result;
}

double sub_2686687D0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a1 & 1;
  v6 = xmmword_268692590;
  v7 = 0;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double Google_Protobuf_Value.init(structValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 1;
  sub_2686681F0(&v5, &v8);
  v3 = v9;
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v3;
  return result;
}

double Google_Protobuf_Value.init(listValue:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2] | 0x1000000000000000;
  v7[0] = *a1;
  v7[1] = v3;
  v7[2] = v4;
  v8 = 1;
  sub_2686681F0(v7, &v9);
  v5 = v10;
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v5;
  return result;
}

unint64_t sub_268668904()
{
  result = qword_28028D9B0;
  if (!qword_28028D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9B0);
  }

  return result;
}

unint64_t sub_268668968()
{
  result = qword_28028D9B8;
  if (!qword_28028D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9B8);
  }

  return result;
}

uint64_t sub_2686689EC(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_268689A84();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      *v2 = v4;
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = sub_268689CF4();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;

    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_268668B04(uint64_t result)
{
  if (BYTE1(result) < result)
  {
    v3 = -(result - BYTE1(result));
  }

  else
  {
    v3 = BYTE1(result) - result;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3 + 1;
  if (__OFADD__(v5, v3 + 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (v28)
    {
      goto LABEL_16;
    }

    v14 = *(v4 + 2);
    LODWORD(v13) = v27;
    v7 = v26;
    v17 = v27 == v26;
    if (v27 == v26)
    {
      v18 = 0;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v7 = result;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3 + 1;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_26866A174(&v25, &v4[v12 + 32], v10 - v12, v7);
  if (result <= v3)
  {
    goto LABEL_18;
  }

  if (result < 1)
  {
    goto LABEL_15;
  }

  v15 = *(v4 + 2);
  v16 = __OFADD__(v15, result);
  v17 = v15 + result;
  if (!v16)
  {
    *(v4 + 2) = v17;
LABEL_15:
    if (result != v13)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_23:
  v18 = (v13 + 1);
  if (((v13 + 1) & 0x100) != 0)
  {
    __break(1u);
LABEL_25:
    v14 = v1;
    goto LABEL_26;
  }

LABEL_27:
  while (1)
  {
    v19 = *(v4 + 3);
    v1 = v19 >> 1;
    if ((v19 >> 1) < v14 + 1)
    {
      break;
    }

    if (v14 < v1)
    {
      goto LABEL_29;
    }

LABEL_26:
    *(v4 + 2) = v14;
  }

  v21 = v4;
  v22 = v17;
  v23 = v18;
  v24 = v14;
  result = sub_2685B3F48((v19 > 1), v14 + 1, 1, v21);
  v14 = v24;
  v18 = v23;
  v17 = v22;
  v4 = result;
  *v2 = result;
  v1 = *(result + 24) >> 1;
  if (v24 >= v1)
  {
    goto LABEL_26;
  }

LABEL_29:
  v20 = v14 + 32;
  while (1)
  {
    v4[v20] = v13;
    if (v17)
    {
      break;
    }

    LOBYTE(v13) = v18;
    v17 = v18 == v7;
    if (v18 == v7)
    {
      v18 = 0;
    }

    else
    {
      v18 = v18 + 1;
      if ((v18 & 0x100) != 0)
      {
        __break(1u);
        return result;
      }
    }

    if (++v20 - v1 == 32)
    {
      goto LABEL_25;
    }
  }

  *(v4 + 2) = v20 - 31;
LABEL_16:
  *v2 = v4;
  return result;
}

uint64_t sub_268668CF8(uint64_t a1, unint64_t a2)
{
  v5 = sub_268689864();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5, v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2 || (v15 = *(a1 + 16), v14 = *(a1 + 24), v13 = v14 - v15, !__OFSUB__(v14, v15)))
    {
LABEL_10:
      v16 = *v2;
      v17 = *(*v2 + 2);
      v18 = v17 + v13;
      if (__OFADD__(v17, v13))
      {
        __break(1u);
      }

      else
      {
        v19 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v16;
        if (!isUniquelyReferenced_nonNull_native || (v21 = *(v16 + 3) >> 1, v21 < v18))
        {
          if (v17 <= v18)
          {
            v22 = v17 + v13;
          }

          else
          {
            v22 = v17;
          }

          v16 = sub_2685B3F48(isUniquelyReferenced_nonNull_native, v22, 1, v16);
          *v2 = v16;
          v21 = *(v16 + 3) >> 1;
        }

        v23 = v21 - *(v16 + 2);
        v24 = sub_2686897F4();
        sub_2685B593C(a1, a2);
        if (v24 >= v13)
        {
          if (v24 >= 1)
          {
            v25 = *(v16 + 2);
            v26 = __OFADD__(v25, v24);
            v27 = v25 + v24;
            if (v26)
            {
              __break(1u);
LABEL_28:
              v2 = a1;
              while (1)
              {
                v28 = *(v16 + 3);
                v29 = v28 >> 1;
                if ((v28 >> 1) >= v23 + 1)
                {
                  break;
                }

                v16 = sub_2685B3F48((v28 > 1), v23 + 1, 1, v16);
                *v2 = v16;
                v30 = v32;
                v29 = *(v16 + 3) >> 1;
                if ((v32 & 1) == 0)
                {
                  goto LABEL_32;
                }

LABEL_29:
                *(v16 + 2) = v23;
                v2 = a1;
                if (v30)
                {
                  goto LABEL_22;
                }
              }

              v30 = 0;
              do
              {
LABEL_32:
                if (v23 >= v29)
                {
                  break;
                }

                v16[v23++ + 32] = v31[14];
                sub_268689C94();
                v30 = v32;
              }

              while ((v32 & 1) == 0);
              goto LABEL_29;
            }

            *(v16 + 2) = v27;
          }

          if (v24 != v23)
          {
LABEL_22:
            result = (*(v6 + 8))(v11, v5);
            *v2 = v16;
            return result;
          }

LABEL_25:
          a1 = v2;
          v23 = *(v16 + 2);
          sub_26866A228();
          sub_268689C94();
          if (v32)
          {
            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v13 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_268668FA8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2686664A0(result, v11, 1, v3);
  v3 = result;
  *v1 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C080, &qword_26868A780);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2685B1724(v3, v5);
      SimpleExtensionMap.insert(_:)(v5);
      __swift_destroy_boxed_opaque_existential_1(v5);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

Swift::Void __swiftcall SimpleExtensionMap.insert(contentsOf:)(Swift::OpaquePointer contentsOf)
{
  v1 = *(contentsOf._rawValue + 2);
  if (v1)
  {
    v2 = contentsOf._rawValue + 32;
    do
    {
      SimpleExtensionMap.insert(_:)(v2);
      v2 += 5;
      --v1;
    }

    while (v1);
  }
}

uint64_t SimpleExtensionMap.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      v8 = *(a1 + v5);
      SimpleExtensionMap.formUnion(_:)(&v8);
      v5 += 8;
      --v4;
    }

    while (v4);

    v7 = v9;
  }

  else
  {

    v7 = MEMORY[0x277D84F98];
  }

  *a2 = v7;
  return result;
}

uint64_t SimpleExtensionMap.formUnion(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v51 = v1;
  v52 = v3;
  v49 = v8;
  v50 = v4;
  if (v7)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v14 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v15 = (v9 << 9) | (8 * v14);
        v16 = *(*(v3 + 48) + v15);
        v17 = *(*(v3 + 56) + v15);
        v18 = *v2;
        v53 = v16;
        v54 = v17;
        if (*(*v2 + 16))
        {
          v19 = sub_2685B351C(v16);
          if (v20)
          {
            break;
          }
        }

        v29 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v56[0] = *v2;
        v31 = *&v56[0];
        *v2 = 0x8000000000000000;
        v32 = sub_2685B351C(v16);
        v34 = *(v31 + 16);
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_38;
        }

        v38 = v33;
        if (*(v31 + 24) >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v46 = v8;
            v47 = v32;
            sub_268688B54();
            v32 = v47;
            v8 = v46;
          }
        }

        else
        {
          sub_268687814(v37, isUniquelyReferenced_nonNull_native);
          v32 = sub_2685B351C(v53);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_40;
          }
        }

        v3 = v52;
        v40 = *&v56[0];
        if (v38)
        {
          v10 = *(*&v56[0] + 56);
          v11 = *(v10 + 8 * v32);
          *(v10 + 8 * v32) = v17;
        }

        else
        {
          *(*&v56[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
          *(v40[6] + 8 * v32) = v53;
          *(v40[7] + 8 * v32) = v17;
          v41 = v40[2];
          v36 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v36)
          {
            goto LABEL_39;
          }

          v40[2] = v42;
        }

        v12 = *v2;

        *v2 = v40;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      v22 = MEMORY[0x277D84F90];
      v57 = MEMORY[0x277D84F90];
      v23 = *(v21 + 16);

      if (v23)
      {
        break;
      }

LABEL_33:

      *&v56[0] = v22;
      sub_268668FA8(v17);
      v43 = *&v56[0];
      v2 = v51;
      v44 = *v51;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      *&v55[0] = *v51;
      *v51 = 0x8000000000000000;
      sub_2686881DC(v43, v53, v45);
      *v51 = *&v55[0];
      v3 = v52;
      v8 = v49;
      v4 = v50;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v24 = 0;
    v25 = v21 + 32;
    while (v24 < *(v21 + 16))
    {
      sub_2685B1724(v25, v56);
      if (sub_268669CA0(v56, v17))
      {
        sub_2685B17CC(v56, v55);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v57 = v22;
        if ((v26 & 1) == 0)
        {
          sub_2685C46D4(0, *(v22 + 16) + 1, 1);
          v22 = v57;
        }

        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2685C46D4((v27 > 1), v28 + 1, 1);
          v22 = v57;
        }

        *(v22 + 16) = v28 + 1;
        sub_2685B17CC(v55, v22 + 40 * v28 + 32);
        v17 = v54;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v56);
      }

      ++v24;
      v25 += 40;
      if (v23 == v24)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
      }

      v7 = *(v4 + 8 * v13);
      ++v9;
      if (v7)
      {
        v9 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  MEMORY[0x26D61DC90](0);

  __swift_destroy_boxed_opaque_existential_1(v56);

  __break(1u);
LABEL_40:
  result = sub_268689E34();
  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (!*(v5 + 16))
  {
    goto LABEL_9;
  }

  v6 = result;
  result = sub_2685B351C(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *(*(v5 + 56) + 8 * result);
  v9 = *(v8 + 16);

  if (!v9)
  {
LABEL_8:

LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v10 = 0;
  v11 = v8 + 32;
  while (v10 < *(v8 + 16))
  {
    sub_2685B1724(v11, v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v13 + 24))(v12, v13) == v6)
    {

      sub_2685B1724(v14, a3);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    ++v10;
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v11 += 40;
    if (v9 == v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t SimpleExtensionMap.fieldNumberForProto(messageType:protoFieldName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v9 = *(*v4 + 64);
  v8 = *v4 + 64;
  v7 = v9;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v36 = v8;
  v37 = result;
  v35 = v13;
  do
  {
LABEL_4:
    if (!v12)
    {
      do
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_26;
        }

        if (v16 >= v13)
        {

          return 0;
        }

        v12 = *(v8 + 8 * v16);
        ++v15;
      }

      while (!v12);
      v15 = v16;
    }

    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(result + 56);
    v19 = (v15 << 9) | (8 * v17);
    v20 = *(v18 + v19);
    v21 = *(v20 + 16);
  }

  while (!v21);
  v22 = v20 + 32;
  v23 = *(v18 + v19);

  v24 = 0;
  while (v24 < *(v20 + 16))
  {
    sub_2685B1724(v22, v40);
    v27 = v41;
    v28 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if ((*(v28 + 16))(v27, v28) == a3 && v29 == a4)
    {
    }

    else
    {
      v31 = sub_268689E14();

      if ((v31 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v25 = v41;
    v26 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if ((*(v26 + 24))(v25, v26) == a1)
    {

      v32 = v41;
      v33 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v34 = (*(v33 + 8))(v32, v33);

      __swift_destroy_boxed_opaque_existential_1(v40);
      return v34;
    }

LABEL_13:
    ++v24;
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    v22 += 40;
    if (v21 == v24)
    {

      v8 = v36;
      result = v37;
      v13 = v35;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t SimpleExtensionMap.insert(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  v8 = *v1;
  if (!*(*v2 + 16) || (v9 = sub_2685B351C(v6), (v10 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C078, &unk_268692750);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_26868F1E0;
    sub_2685B1724(a1, v26 + 32);
    v27 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37 = *v2;
    *v2 = 0x8000000000000000;
    result = sub_2686881DC(v26, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v37;
    return result;
  }

  v34 = v7;
  v35 = v2;
  v11 = *(*(v8 + 56) + 8 * v9);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 24);

  v15 = v14(v12, v13);
  v16 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v17 = *(v11 + 16);
  if (v17)
  {
    v18 = v15;
    v19 = 0;
    v20 = v11 + 32;
    while (v19 < *(v11 + 16))
    {
      sub_2685B1724(v20, &v37);
      v21 = v38;
      v22 = v39;
      __swift_project_boxed_opaque_existential_1(&v37, v38);
      if ((*(v22 + 24))(v21, v22) == v18)
      {
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        sub_2685B17CC(&v37, v36);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v40 = v16;
        if ((v23 & 1) == 0)
        {
          sub_2685C46D4(0, v16[2] + 1, 1);
          v16 = v40;
        }

        v25 = v16[2];
        v24 = v16[3];
        if (v25 >= v24 >> 1)
        {
          sub_2685C46D4((v24 > 1), v25 + 1, 1);
          v16 = v40;
        }

        v16[2] = v25 + 1;
        sub_2685B17CC(v36, &v16[5 * v25 + 4]);
      }

      ++v19;
      v20 += 40;
      if (v17 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_15:

  sub_2685B1724(a1, &v37);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_20:
    v16 = sub_2686664A0(0, v16[2] + 1, 1, v16);
  }

  v31 = v16[2];
  v30 = v16[3];
  if (v31 >= v30 >> 1)
  {
    v16 = sub_2686664A0((v30 > 1), v31 + 1, 1, v16);
  }

  v16[2] = v31 + 1;
  sub_2685B17CC(&v37, &v16[5 * v31 + 4]);
  v32 = *v35;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *&v37 = *v35;
  *v35 = 0x8000000000000000;
  result = sub_2686881DC(v16, v34, v33);
  *v35 = v37;
  return result;
}

BOOL sub_268669CA0(void *a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = a1[3];
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v5);
    v7 = (*(v6 + 24))(v5, v6);
    v8 = v3[3];
    v9 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v8);
    v3 += 5;
  }

  while (v7 != (*(v9 + 24))(v8, v9));
  return v4 == 0;
}

uint64_t SimpleExtensionMap.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  return SimpleExtensionMap.formUnion(_:)(&v6);
}

uint64_t SimpleExtensionMap.debugDescription.getter()
{
  v1 = *v0;
  v4 = *(*v0 + 64);
  v3 = *v0 + 64;
  v2 = v4;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v29 = v3;
  v30 = result;
  v28 = v8;
  while (v7)
  {
LABEL_10:
    v13 = *(*(result + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 32;

      do
      {
        sub_2685B1724(v15, &v33);
        v16 = v35;
        v17 = v36;
        __swift_project_boxed_opaque_existential_1(&v33, v35);
        v31 = (*(v17 + 16))(v16, v17);
        v32 = v18;
        MEMORY[0x26D61D4B0](10298, 0xE200000000000000);
        v19 = v35;
        v20 = v36;
        __swift_project_boxed_opaque_existential_1(&v33, v35);
        (*(v20 + 8))(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(&v33);
        v21 = sub_268689DF4();
        MEMORY[0x26D61D4B0](v21);

        MEMORY[0x26D61D4B0](41, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2685B54B4(0, *(v11 + 2) + 1, 1, v11);
        }

        v23 = *(v11 + 2);
        v22 = *(v11 + 3);
        if (v23 >= v22 >> 1)
        {
          v11 = sub_2685B54B4((v22 > 1), v23 + 1, 1, v11);
        }

        *(v11 + 2) = v23 + 1;
        v24 = &v11[16 * v23];
        *(v24 + 4) = v31;
        *(v24 + 5) = v32;
        v15 += 40;
        --v14;
      }

      while (v14);

      v3 = v29;
      result = v30;
      v8 = v28;
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      v33 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028CD88, &unk_26868F268);
      sub_268621BAC();
      v25 = sub_268689934();
      v27 = v26;

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_268689CE4();

      v33 = 0xD000000000000013;
      v34 = 0x8000000268695960;
      MEMORY[0x26D61D4B0](v25, v27);

      MEMORY[0x26D61D4B0](41, 0xE100000000000000);
      return v33;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26866A0F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_268689AC4();
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
    v5 = MEMORY[0x26D61D4F0](15, a1 >> 16);
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

uint64_t sub_26866A174(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (!a2)
  {
LABEL_13:
    v5 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v5 = 0;
LABEL_15:
    v6 = a4;
LABEL_18:
    *result = a4;
    *(result + 2) = v6;
    *(result + 3) = v5;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v4 = 0;
  v5 = 0;
  v6 = a4;
  while (1)
  {
    if (v5)
    {
      v5 = 1;
      a3 = v4;
      goto LABEL_18;
    }

    v5 = v6 == (a4 & 0xFF00) >> 8;
    if (v6 == (a4 & 0xFF00) >> 8)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = v6 + 1;
    if (((v6 + 1) & 0x100) != 0)
    {
      break;
    }

LABEL_9:
    *(a2 + v4) = v6;
    if (a3 - 1 == v4)
    {
      v6 = v7;
      goto LABEL_18;
    }

    ++v4;
    v6 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_26866A228()
{
  result = qword_28028D9C0;
  if (!qword_28028D9C0)
  {
    sub_268689864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9C0);
  }

  return result;
}

uint64_t sub_26866A280(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  v5 = v3 == *(a1 + 16) && v4 == *(a1 + 24);
  if (v5 || (v6 = 0, (sub_268689E14() & 1) != 0))
  {
    swift_beginAccess();
    sub_268643E8C(v1 + 32, v18);
    if (v19 == 1)
    {
      sub_2685B17CC(v18, v20);
      swift_beginAccess();
      sub_268643E8C(a1 + 32, v18);
      if (v19 == 1)
      {
        sub_2685B17CC(v18, v17);
        __swift_project_boxed_opaque_existential_1(v20, v21);
        DynamicType = swift_getDynamicType();
        __swift_project_boxed_opaque_existential_1(v17, v17[3]);
        if (DynamicType == swift_getDynamicType())
        {
          v15 = v21;
          v16 = v22;
          __swift_project_boxed_opaque_existential_1(v20, v21);
          v6 = (*(v16 + 88))(v17, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(v17);
          __swift_destroy_boxed_opaque_existential_1(v20);
          return v6 & 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v17);
      }

      else
      {
        sub_26866DD20(v18);
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      sub_26866DD20(v18);
    }

    sub_268643E8C(v1 + 32, v18);
    if (!v19)
    {
      v8 = v18[0];
      swift_beginAccess();
      sub_268643E8C(a1 + 32, v18);
      if (!v19)
      {
        v13 = v18[0];
        v14 = sub_2686131DC(v8, *(&v8 + 1), *&v18[0], *(&v18[0] + 1));
        sub_2685B593C(v8, *(&v8 + 1));
        sub_2685B593C(v13, *(&v13 + 1));
        if (v14)
        {
LABEL_26:
          v6 = 1;
          return v6 & 1;
        }

LABEL_17:
        sub_268643E8C(v1 + 32, v18);
        if (v19 == 2)
        {
          v9 = v18[0];
          swift_beginAccess();
          sub_268643E8C(a1 + 32, v18);
          if (v19 == 2)
          {
            v10 = v18[0];
            v11 = sub_2686131DC(v9, *(&v9 + 1), *&v18[0], *(&v18[0] + 1));
            sub_2685B593C(v9, *(&v9 + 1));
            sub_2685B593C(v10, *(&v10 + 1));
            if (v11)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }

          sub_2685B593C(v9, *(&v9 + 1));
        }

        sub_26866DD20(v18);
LABEL_23:
        v6 = 0;
        return v6 & 1;
      }

      sub_2685B593C(v8, *(&v8 + 1));
    }

    sub_26866DD20(v18);
    goto LABEL_17;
  }

  return v6 & 1;
}

uint64_t sub_26866A568(char **a1)
{
  swift_beginAccess();
  sub_268643E8C((v1 + 32), &v87);
  if (v90)
  {
    if (v90 == 1)
    {
      sub_2685B17CC(&v87, &aBlock);
      swift_beginAccess();
      v5 = *(v1 + 2);
      v4 = *(v1 + 3);
      v7 = *(&v85 + 1);
      v6 = v85;
      v8 = __swift_project_boxed_opaque_existential_1(&aBlock, v85);

      sub_26866DF6C(a1, v8, v5, v4, v6, v7);
LABEL_4:

      return __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v10 = *(&v87 + 1);
    v11 = v87;
    v2 = v88;
    v75 = v89;
    swift_beginAccess();
    v35 = *(v1 + 2);
    v36 = *(v1 + 3);

    v19 = sub_268652BF8(v35, v36);
    isEscapingClosureAtFileLocation = v37;

    v80 = 0;
    v81 = 0;
    if (qword_28028BE40 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

  v10 = *(&v87 + 1);
  v11 = v87;
  swift_beginAccess();
  v12 = *(v1 + 2);
  v13 = *(v1 + 3);

  v14 = sub_268652BF8(v12, v13);
  v16 = v15;

  v78[0] = 0uLL;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v17 = qword_28028D890;
  v18 = swift_allocObject();
  v18[2] = v78;
  v18[3] = v14;
  v18[4] = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_268653E5C;
  *(v19 + 24) = v18;
  *(&v85 + 1) = sub_26866E228;
  v86 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = sub_2686535FC;
  *&v85 = &block_descriptor_58;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  dispatch_sync(v21, v20);

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_46:
    swift_once();
LABEL_23:
    v38 = qword_28028D890;
    v39 = swift_allocObject();
    v39[2] = &v80;
    v39[3] = v19;
    v39[4] = isEscapingClosureAtFileLocation;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_268653E5C;
    *(v40 + 24) = v39;
    *(&v85 + 1) = sub_26866E228;
    v86 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_2686535FC;
    *&v85 = &block_descriptor_47;
    v41 = _Block_copy(&aBlock);
    v42 = v38;

    dispatch_sync(v42, v41);

    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      v43 = v80;
      v44 = v81;

      if (v43)
      {
        v80 = v2;
        LOBYTE(v81) = v75;
        sub_26866CA90(v11, v10, &v80, v43, v44, &aBlock);
        v66 = *(v1 + 2);
        v65 = *(v1 + 3);
        v68 = *(&v85 + 1);
        v67 = v85;
        v69 = __swift_project_boxed_opaque_existential_1(&aBlock, v85);

        sub_26866DF6C(a1, v69, v66, v65, v67, v68);

        sub_2685B593C(v11, v10);
        return __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      v46 = *(v1 + 2);
      v45 = *(v1 + 3);
      v47 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v47 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        v48 = *(v1 + 3);

        sub_2685B301C(1);
        sub_2685B403C(": ", 2, v49);
        sub_2685B43A4(v46, v45);

        v50 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_2685B3F48(0, *(v50 + 2) + 1, 1, v50);
          *a1 = v50;
        }

        v53 = *(v50 + 2);
        v52 = *(v50 + 3);
        if (v53 >= v52 >> 1)
        {
          v50 = sub_2685B3F48((v52 > 1), v53 + 1, 1, v50);
        }

        *(v50 + 2) = v53 + 1;
        v50[v53 + 32] = 10;
        *a1 = v50;
      }

      v54 = sub_26866C948();
      v56 = v55;
      v57 = a1[1];

      sub_2685B3560(v58);
      sub_2685B403C("#json: ", 7, v59);
      sub_2686637F4(v54, v56);
      sub_2685B403C("\n", 1, v60);
      sub_2685B593C(v54, v56);
      return sub_2685B593C(v11, v10);
    }

    __break(1u);
    goto LABEL_48;
  }

  v23 = v78[0];

  if (v23)
  {
    v24 = v1;
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    v76 = 100;
    v77 = 0;
    v85 = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    sub_2685BA80C(v11, v10);
    Message.init(serializedData:extensions:partial:options:)(v11, v10, v78, 1, &v76, v23, *(&v23 + 1), v25);
    v63 = *(v1 + 2);
    v64 = *(v24 + 3);

    sub_26866DF6C(a1, v25, v63, v64, v23, *(&v23 + 1));
    sub_2685B593C(v11, v10);
    goto LABEL_4;
  }

  v27 = *(v1 + 2);
  v26 = *(v1 + 3);
  v28 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = *(v1 + 3);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v30);
    sub_2685B43A4(v27, v26);

    v1 = *a1;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v1;
    if (v31)
    {
LABEL_15:
      v33 = *(v1 + 2);
      v32 = *(v1 + 3);
      if (v33 >= v32 >> 1)
      {
        v1 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v1);
      }

      *(v1 + 2) = v33 + 1;
      v1[v33 + 32] = 10;
      *a1 = v1;
      goto LABEL_18;
    }

LABEL_48:
    v1 = sub_2685B3F48(0, *(v1 + 2) + 1, 1, v1);
    *a1 = v1;
    goto LABEL_15;
  }

LABEL_18:
  v34 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v34 != 2)
    {
      return sub_2685B593C(v11, v10);
    }

    v61 = *(v11 + 16);
    v62 = *(v11 + 24);
LABEL_38:
    if (v61 != v62)
    {
      goto LABEL_40;
    }

    return sub_2685B593C(v11, v10);
  }

  if (v34)
  {
    v61 = v11;
    v62 = v11 >> 32;
    goto LABEL_38;
  }

  if ((v10 & 0xFF000000000000) == 0)
  {
    return sub_2685B593C(v11, v10);
  }

LABEL_40:
  sub_2685B301C(2);
  sub_2685B403C(": ", 2, v70);
  sub_2686637F4(v11, v10);
  v71 = *a1;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v71;
  if ((v72 & 1) == 0)
  {
    v71 = sub_2685B3F48(0, *(v71 + 2) + 1, 1, v71);
    *a1 = v71;
  }

  v74 = *(v71 + 2);
  v73 = *(v71 + 3);
  if (v74 >= v73 >> 1)
  {
    v71 = sub_2685B3F48((v73 > 1), v74 + 1, 1, v71);
  }

  result = sub_2685B593C(v11, v10);
  *(v71 + 2) = v74 + 1;
  v71[v74 + 32] = 10;
  *a1 = v71;
  return result;
}

uint64_t sub_26866ADE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  swift_beginAccess();
  v10 = *(v6 + 24);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v11 = sub_268652BF8(a1, a2);
  v13 = v12;
  v62 = 0uLL;
  if (qword_28028BE40 != -1)
  {
    swift_once();
  }

  v14 = qword_28028D890;
  v15 = swift_allocObject();
  v15[2] = &v62;
  v15[3] = v11;
  v15[4] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268653E5C;
  *(v16 + 24) = v15;
  *&v74 = sub_26866E228;
  *(&v74 + 1) = v16;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_2686535FC;
  *(&v73 + 1) = &block_descriptor_36;
  v17 = _Block_copy(&aBlock);
  v18 = v14;

  dispatch_sync(v18, v17);

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_80:

    goto LABEL_61;
  }

  v19 = v62;

  if (!v19)
  {
    goto LABEL_9;
  }

  v20 = *(a3 + 40);
  if (v20 == *(a3 + 48))
  {
    goto LABEL_9;
  }

  v21 = *v20;
  *(a3 + 40) = v20 + 1;
  sub_2685C01A0();
  if (v21 != 60)
  {
    if (v21 == 123)
    {
      v22 = 125;
      goto LABEL_11;
    }

LABEL_9:
    sub_2685C1CBC();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  v22 = 62;
LABEL_11:
  sub_268643DAC(a3, v70);
  *&v66 = 0;
  WORD4(v66) = 256;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  sub_268643DAC(v70, &v62);
  WORD4(v66) = v22;
  v25 = swift_conformsToProtocol2();
  if (v25)
  {
    (*(v25 + 8))(&v60, v19, v25);
    sub_268643E08(v70);
    sub_2685B2FBC(v67);
    v67 = v60;
    v68 = v61;
    v69 = v19;
    aBlock = v62;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v77 = v60;
    v78 = v61;
    v79 = v19;
    if (v19 != &type metadata for Google_Protobuf_Any)
    {
      v35 = *(*(&v19 + 1) + 16);
      v71 = v19;
      __swift_allocate_boxed_opaque_existential_1(v70);
      v35(v19, *(&v19 + 1));
      v37 = *(&v71 + 1);
      v36 = v71;
      __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
      (*(*(&v19 + 1) + 64))(&aBlock, &type metadata for TextFormatDecoder, &off_28792DCE0, v36, v37);
      if (v5)
      {
        sub_268643E5C(&aBlock);
        return __swift_destroy_boxed_opaque_existential_1(v70);
      }

      sub_2685B1724(v70, &v62);
      BYTE8(v64) = 1;
      swift_beginAccess();
      sub_268643EE8(&v62, v6 + 32);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_58;
    }

    if (qword_28028BE58 != -1)
    {
      swift_once();
    }

    v26 = qword_28029B270;
    v27 = *(&v74 + 1);
    for (i = v75; v27 != v75; *(&v74 + 1) = v27)
    {
      v29 = *v27;
      if (v29 > 0x23)
      {
        break;
      }

      if (((1 << v29) & 0x100002600) != 0)
      {
        ++v27;
      }

      else
      {
        if (v29 != 35)
        {
          break;
        }

        *(&v74 + 1) = ++v27;
        while (v27 != v75)
        {
          v31 = *v27++;
          v30 = v31;
          if (v31 == 10 || v30 == 13)
          {
            goto LABEL_18;
          }
        }

        v27 = v75;
      }

LABEL_18:
      ;
    }

    if (v27 == v75 || *v27 != 91)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for AnyMessageStorage();
        v47 = swift_allocObject();
        v48 = v26;
        v26 = v47;
        sub_26866D2A0(v48);
      }

      sub_2686540A4(v26, &aBlock);
      if (v5)
      {
        goto LABEL_62;
      }

LABEL_56:
      *(&v63 + 1) = &type metadata for Google_Protobuf_Any;
      v49 = sub_2685CFD4C();
      v62 = xmmword_26868A5E0;
      *&v64 = v49;
      *&v63 = v26;
      sub_2685BA80C(0, 0xC000000000000000);

      sub_2685B593C(0, 0xC000000000000000);

      BYTE8(v64) = 1;
      swift_beginAccess();
      sub_268643EE8(&v62, v6 + 32);
      swift_endAccess();
LABEL_58:
      sub_26866E11C(&aBlock, a3);
      sub_26863C318();
      if ((v50 & 1) == 0)
      {
        sub_2685C1CBC();
        swift_allocError();
        *v51 = 0;
        swift_willThrow();
      }

      goto LABEL_63;
    }

    v38 = v27 + 1;
    *(&v74 + 1) = v27 + 1;
    if (v27 + 1 == v75)
    {
      goto LABEL_60;
    }

    if ((*v38 & 0xDFu) - 91 < 0xFFFFFFE6)
    {
      goto LABEL_60;
    }

    v39 = v27 + 2;
    *(&v74 + 1) = v27 + 2;
    if (v27 + 2 == v75)
    {
      goto LABEL_60;
    }

    v40 = 1;
    while (1)
    {
      v41 = *v39;
      v42 = (v41 - 58) > 0xFFFFFFF5 || (v41 & 0xFFFFFFDF) - 91 > 0xFFFFFFE5;
      if (!v42 && (v41 - 46) >= 2 && v41 != 95)
      {
        break;
      }

      *(&v74 + 1) = ++v39;
      ++v40;
      if (v39 == v75)
      {
        goto LABEL_60;
      }
    }

    if (v41 != 93)
    {
LABEL_60:
    }

    else
    {

      v43 = sub_2685B4E1C(v38, v40);
      if (v44)
      {
        v45 = v44;
        if (v39 != i && *v39 == 93)
        {
          v46 = v39 + 1;
          for (*(&v74 + 1) = v39 + 1; v46 != i; *(&v74 + 1) = v46)
          {
            v53 = *v46;
            if (v53 > 0x23)
            {
              break;
            }

            if (((1 << v53) & 0x100002600) != 0)
            {
              ++v46;
            }

            else
            {
              if (v53 != 35)
              {
                break;
              }

              *(&v74 + 1) = ++v46;
              while (v46 != i)
              {
                v55 = *v46++;
                v54 = v55;
                if (v55 == 10 || v54 == 13)
                {
                  goto LABEL_66;
                }
              }

              v46 = i;
            }

LABEL_66:
            ;
          }

          v57 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            type metadata accessor for AnyMessageStorage();
            v58 = swift_allocObject();
            v59 = v26;
            v26 = v58;
            sub_26866D2A0(v59);
          }

          sub_26866ADE4(v57, v45, &aBlock);
          if (v5)
          {

            goto LABEL_62;
          }

          goto LABEL_56;
        }

        goto LABEL_80;
      }
    }

LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
LABEL_62:
    sub_2685B593C(0, 0xC000000000000000);

LABEL_63:
    p_aBlock = &aBlock;
    return sub_268643E5C(p_aBlock);
  }

  sub_2685C1CBC();
  swift_allocError();
  *v33 = 6;
  swift_willThrow();
  sub_268643E08(v70);
  p_aBlock = &v62;
  return sub_268643E5C(p_aBlock);
}

uint64_t sub_26866B5F8(unsigned __int8 *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2686899A4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  sub_268643E8C(v4 + 32, v60);
  if (!v61)
  {
    v51 = v10;
    v62 = *(&v60[0] + 1);
    v15 = *&v60[0];
    swift_beginAccess();
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);

    v18 = sub_268652BF8(v17, v16);
    v20 = v19;

    v54[0] = 0uLL;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v21 = qword_28028D890;
    a1 = swift_allocObject();
    *(a1 + 2) = v54;
    *(a1 + 3) = v18;
    *(a1 + 4) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_268653E5C;
    *(v22 + 24) = a1;
    *(&v57 + 1) = sub_26866E228;
    v58 = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2686535FC;
    *&v57 = &block_descriptor_25;
    v23 = _Block_copy(aBlock);
    v24 = v21;

    dispatch_sync(v24, v23);

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v28 = v54[0];

      if (v28)
      {
        v55 = 0;
        memset(v54, 0, sizeof(v54));
        v52 = 100;
        v53 = 0;
        v57 = v28;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
        v30 = v62;
        sub_2685BA80C(v15, v62);
        v31 = boxed_opaque_existential_1;
        a1 = v28;
        Message.init(serializedData:extensions:partial:options:)(v15, v30, v54, 1, &v52, v28, *(&v28 + 1), v31);
        if (v3)
        {
          sub_2685B593C(v15, v30);
          __swift_deallocate_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          v49 = *(v4 + 16);
          v50 = *(v4 + 24);
          LOBYTE(v54[0]) = v9;
          BYTE1(v54[0]) = v51;

          a1 = sub_26866C2F0(aBlock, v49, v50, v54);

          sub_2685B593C(v15, v30);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }
      }

      else
      {
        sub_2685D104C();
        swift_allocError();
        *v42 = 0;
        swift_willThrow();
        sub_2685B593C(v15, v62);
      }

      return a1;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (v61 == 1)
  {
    sub_2685B17CC(v60, aBlock);
    swift_beginAccess();
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(v4 + 24);
    }

    else
    {
      v38 = *(&v57 + 1);
      a1 = v57;
      v39 = __swift_project_boxed_opaque_existential_1(aBlock, v57);
      v11 = sub_268653A68(v39, 0xD000000000000013, 0x80000002686958C0, a1, v38);
      v12 = v40;
    }

    LOBYTE(v59) = v9;
    BYTE1(v59) = v10;
    v41 = sub_26866C2F0(aBlock, v11, v12, &v59);
    if (!v3)
    {
      a1 = v41;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);

    return a1;
  }

  v22 = *(&v60[0] + 1);
  v9 = *&v60[0];
  *&v54[0] = MEMORY[0x277D84F90];
  v26 = sub_2685B3F48(0, 1, 1, MEMORY[0x277D84F90]);
  isEscapingClosureAtFileLocation = *(v26 + 2);
  v27 = *(v26 + 3);
  v32 = v27 >> 1;
  a1 = (isEscapingClosureAtFileLocation + 1);
  if (v27 >> 1 <= isEscapingClosureAtFileLocation)
  {
LABEL_39:
    v26 = sub_2685B3F48((v27 > 1), a1, 1, v26);
    v27 = *(v26 + 3);
    v32 = v27 >> 1;
  }

  *(v26 + 2) = a1;
  v26[isEscapingClosureAtFileLocation + 32] = 123;
  WORD4(v54[0]) = 256;
  v33 = isEscapingClosureAtFileLocation + 2;
  if (v32 < v33)
  {
    v26 = sub_2685B3F48((v27 > 1), v33, 1, v26);
  }

  *(v26 + 2) = v33;
  a1[v26 + 32] = 34;
  *&v54[0] = v26;
  sub_2686689EC(0x6570797440, 0xE500000000000000);
  sub_2685B403C(":", 2, v34);
  WORD4(v54[0]) = 44;
  swift_beginAccess();
  v35 = *(v4 + 16);
  v36 = *(v4 + 24);

  sub_268631D18(v35, v36);

  v37 = (v22 >> 62);
  if ((v22 >> 62) <= 1)
  {
    if (v37)
    {
      v37 = v9;
      if (v9 == v9 >> 32)
      {
        goto LABEL_30;
      }
    }

    else if ((v22 & 0xFF000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_2685B403C(",", 1, v37);
    sub_2685BA80C(v9, v22);
    sub_268668CF8(v9, v22);
    goto LABEL_30;
  }

  if (v37 == 2)
  {
    v37 = *(v9 + 16);
    if (v37 != *(v9 + 24))
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  v43 = *&v54[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_2685B3F48(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_2685B3F48((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v43[v45 + 32] = 125;
  *&v54[0] = v43;
  WORD4(v54[0]) = 44;
  v59 = v43;
  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  a1 = sub_268689974();
  v47 = v46;

  if (v47)
  {
    sub_2685B593C(v9, v22);
    return a1;
  }

  __break(1u);
  return result;
}