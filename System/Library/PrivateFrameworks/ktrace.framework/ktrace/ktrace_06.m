uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22EDD0B78()
{
  result = qword_27DA94D38;
  if (!qword_27DA94D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D38);
  }

  return result;
}

unint64_t sub_22EDD0BD0()
{
  result = qword_27DA94D40;
  if (!qword_27DA94D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnownKdebugClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnownKdebugClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnownKdebugSubclass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x6B)
  {
    goto LABEL_17;
  }

  if (a2 + 149 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 149) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 149;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 149;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 149;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x96;
  v8 = v6 - 150;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnownKdebugSubclass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 149 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 149) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x6B)
  {
    v4 = 0;
  }

  if (a2 > 0x6A)
  {
    v5 = ((a2 - 107) >> 8) + 1;
    *result = a2 - 107;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 - 107;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22EDD0F0C()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_22EE3CC74();
  if (v2)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  return sub_22EE3CCC4();
}

uint64_t sub_22EDD0F84()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x2318F6370](1);
    return sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    return sub_22EE3CC94();
  }
}

uint64_t sub_22EDD0FD8()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_22EE3CC74();
  if (v2)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  return sub_22EE3CCC4();
}

uint64_t sub_22EDD104C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 2);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 == *a2;
  if (a2[1])
  {
    v3 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22EDD10A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v10 = sub_22EE3C634();
      v12 = v11;
      v13 = sub_22EE3C604();
      v14 = sub_22EE3C224();
      if (!v15)
      {
        break;
      }

      if (v10 == v14 && v15 == v12)
      {
      }

      else
      {
        v9 = sub_22EE3CBA4();

        if ((v9 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v13 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_22EE3C224();
    v7 = v6;

    if (v7)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_22EDD1210()
{
  v0 = sub_22EE3BAE4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22EE3BAB4();
  return 0x200000000000;
}

uint64_t sub_22EDD1254(uint64_t a1, int a2)
{
  v3 = v2;
  v4 = a1;
  v62 = *MEMORY[0x277D85DE8];
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v57 = a2;
  v10 = 0;
  v11 = 0;
  v51 = vdupq_n_s8(a2 << 31 >> 31);
  v52 = v2;

LABEL_5:
  v12 = v10;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v12;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v4 + 48) + ((v10 << 8) | (4 * v13)));
    if (v14[1])
    {
      sub_22EDD3000(v3, v57 & 1, *v14 >> 3, 1 << (*v14 & 7));
      goto LABEL_5;
    }

    v16 = *v3;
    v15 = v3[1];
    if ((v15 >> 62) <= 1)
    {
      v54 = v11;
      v56 = *v14;
      if (v15 >> 62 != 1)
      {
        sub_22EDD4074(v16, v15);
        v58 = v16;
        v3 = v52;
        LOWORD(v59) = v15;
        BYTE2(v59) = BYTE2(v15);
        HIBYTE(v59) = BYTE3(v15);
        LOBYTE(v60) = BYTE4(v15);
        HIBYTE(v60) = BYTE5(v15);
        v61 = BYTE6(v15);
        v47 = (&v58 + 4 * v56);
        *v47 = v51;
        v47[1] = v51;
        v48 = v50 & 0xF00000000000000 | v59 | ((v60 | (v61 << 16)) << 32);
        *v52 = v58;
        v52[1] = v48;
        v50 = v48;
        v4 = v53;
        goto LABEL_5;
      }

      v21 = v15 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22EDD4074(v16, v15);
      *v3 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      v22 = v16;
      v23 = v16 >> 32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v23 < v16)
        {
          goto LABEL_47;
        }

        if (sub_22EE3BAA4() && __OFSUB__(v16, sub_22EE3BAD4()))
        {
LABEL_50:
          __break(1u);
        }

        v39 = sub_22EE3BAE4();
        v40 = *(v39 + 48);
        v41 = *(v39 + 52);
        swift_allocObject();
        v42 = sub_22EE3BA94();

        v21 = v42;
      }

      if (v23 < v16)
      {
        goto LABEL_45;
      }

      v31 = v16;

      result = sub_22EE3BAA4();
      if (!result)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v43 = result;
      v44 = sub_22EE3BAD4();
      if (__OFSUB__(v16, v44))
      {
        goto LABEL_46;
      }

      v45 = v44;
      sub_22EE3BAC4();
      v46 = (v43 + v22 + 32 * v56 - v45);
      *v46 = v51;
      v46[1] = v51;

      v38 = v21 | 0x4000000000000000;
    }

    else
    {
      if (v15 >> 62 != 2)
      {
        goto LABEL_5;
      }

      v54 = v11;
      v55 = *v14;
      v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22EDD4074(v16, v15);
      *v3 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = v16;
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (sub_22EE3BAA4())
        {
          if (__OFSUB__(v19, sub_22EE3BAD4()))
          {
            goto LABEL_49;
          }

          if (__OFSUB__(v20, v19))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else if (__OFSUB__(v20, v19))
        {
          goto LABEL_48;
        }

        v24 = sub_22EE3BAE4();
        v25 = *(v24 + 48);
        v26 = *(v24 + 52);
        swift_allocObject();
        v27 = sub_22EE3BA94();

        v17 = v27;
        v16 = v18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v16 + 16);
        v29 = *(v16 + 24);
        sub_22EE3BCF4();
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v29;

        v16 = v30;
      }

      v31 = v16;
      v32 = *(v16 + 16);
      result = sub_22EE3BAA4();
      if (!result)
      {
        goto LABEL_52;
      }

      v34 = result;
      v35 = sub_22EE3BAD4();
      if (__OFSUB__(v32, v35))
      {
        goto LABEL_44;
      }

      v36 = v35;
      sub_22EE3BAC4();
      v37 = (v34 + v32 + 32 * v55 - v36);
      *v37 = v51;
      v37[1] = v51;
      v38 = v17 | 0x8000000000000000;
    }

    v3 = v52;
    v4 = v53;
    *v52 = v31;
    v52[1] = v38;
    v12 = v10;
    v11 = v54;
  }

  while (v8);
  while (1)
  {
LABEL_7:
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EDD17AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  LOBYTE(v3) = result;
  v45[2] = *MEMORY[0x277D85DE8];
  if ((result & 0x10000) != 0)
  {
    v9 = 1 << (result & 7);
    v10 = result >> 3;
    v11 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v45, 0, 14);
        goto LABEL_62;
      }

      v12 = *(a2 + 16);
      v3 = sub_22EE3BAA4();
      if (v3)
      {
        result = sub_22EE3BAD4();
        v4 = v12 - result;
        if (__OFSUB__(v12, result))
        {
          __break(1u);
          goto LABEL_17;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (!v11)
      {
        v45[0] = a2;
        LOWORD(v45[1]) = a3;
        BYTE2(v45[1]) = BYTE2(a3);
        BYTE3(v45[1]) = BYTE3(a3);
        BYTE4(v45[1]) = BYTE4(a3);
        BYTE5(v45[1]) = BYTE5(a3);
LABEL_62:
        v43 = *(v45 + v10);
        goto LABEL_63;
      }

      v41 = a2;
      if (a2 > a2 >> 32)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v3 = sub_22EE3BAA4();
      if (v3)
      {
        v42 = sub_22EE3BAD4();
        v4 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_73;
        }

LABEL_59:
        v3 += v4;
      }
    }

    sub_22EE3BAC4();
    v43 = *(v3 + v10);
LABEL_63:
    result = (v43 & v9) != 0;
LABEL_64:
    v44 = *MEMORY[0x277D85DE8];
    return result;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v4)
    {
      v28 = a2;
      v29 = (a2 >> 32) - a2;
      if (a2 >> 32 >= a2)
      {
        v30 = sub_22EE3BAA4();
        if (v30)
        {
          v31 = sub_22EE3BAD4();
          if (__OFSUB__(v28, v31))
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
          }

          v30 += v28 - v31;
        }

        v32 = sub_22EE3BAC4();
        if (v32 >= v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = v32;
        }

        v34 = v33 + v30;
        if (v30)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        if (v30)
        {
          v36 = 32 * v3;
          if (v35 - v30 > (v36 | 0x1F))
          {
            v37 = 0;
            v38 = v30 + v36;
            do
            {
              v39 = *(v38 + v37);
              result = v39 == 255;
            }

            while (v39 == 255 && v37++ != 31);
            goto LABEL_64;
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      v45[0] = a2;
      LOWORD(v45[1]) = a3;
      BYTE2(v45[1]) = BYTE2(a3);
      BYTE3(v45[1]) = BYTE3(a3);
      BYTE4(v45[1]) = BYTE4(a3);
      BYTE5(v45[1]) = BYTE5(a3);
      v5 = 4 * result;
      if (((v5 * 8) | 0x1F) < BYTE6(a3))
      {
        v6 = 0;
        v7 = &v45[v5];
        do
        {
          v8 = *(v7 + v6);
          result = v8 == 255;
          if (v6 == 31)
          {
            break;
          }

          ++v6;
        }

        while (v8 == 255);
        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_17:
  if (v4 == 2)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = sub_22EE3BAA4();
    if (v15)
    {
      v16 = sub_22EE3BAD4();
      if (__OFSUB__(v13, v16))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      v19 = sub_22EE3BAC4();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = v20 + v15;
      if (v15)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v15)
      {
        v23 = 32 * v3;
        if (v22 - v15 > (v23 | 0x1F))
        {
          v24 = 0;
          v25 = v15 + v23;
          do
          {
            v26 = *(v25 + v24);
            result = v26 == 255;
          }

          while (v26 == 255 && v24++ != 31);
          goto LABEL_64;
        }
      }

      goto LABEL_69;
    }

    goto LABEL_67;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDD1FA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22EE3C314();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22EDD2CA8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22EDD2CA8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22EE3C2F4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22EE3C1E4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22EE3C1E4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22EE3C314();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22EDD2CA8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22EE3C314();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22EDD2CA8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22EDD2CA8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22EE3C1E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDD2360(uint64_t a1, unsigned int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22EE3CC74();
  if ((a2 & 0x10000) != 0)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  v7 = sub_22EE3CCC4();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = v7 & ~v9;
  if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_14:
    v14 = HIWORD(a2) & 1;
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_22EDD274C(a2 & 0x1FFFF, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    result = 1;
    goto LABEL_15;
  }

  v11 = ~v9;
  v12 = *(v5 + 48);
  while (1)
  {
    v13 = (v12 + 4 * v10);
    LOBYTE(v14) = *(v13 + 2);
    if ((v14 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x10000) != 0 && *v13 == a2)
    {
      result = 0;
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((a2 & 0x10000) != 0 || *v13 != a2)
  {
    goto LABEL_6;
  }

  result = 0;
  LOWORD(a2) = *v13;
LABEL_15:
  *a1 = a2;
  *(a1 + 2) = v14;
  return result;
}

uint64_t sub_22EDD24C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  result = sub_22EE3C824();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 4 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 2);
      v22 = *(v6 + 40);
      sub_22EE3CC74();
      if (v21)
      {
        MEMORY[0x2318F6370](1);
        sub_22EE3CCA4();
      }

      else
      {
        MEMORY[0x2318F6370](0);
        sub_22EE3CC94();
      }

      result = sub_22EE3CCC4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 4 * v14;
      *v15 = v20;
      *(v15 + 2) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EDD274C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_22EDD24C0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22EDD28F8();
      a2 = v7;
      goto LABEL_21;
    }

    sub_22EDD2A4C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22EE3CC74();
  if ((v4 & 0x10000) != 0)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  result = sub_22EE3CCC4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = (*(v8 + 48) + 4 * a2);
      if (v12[1])
      {
        if ((v4 & 0x10000) != 0 && *v12 == v4)
        {
          goto LABEL_20;
        }
      }

      else if ((v4 & 0x10000) == 0 && *v12 == v4)
      {
LABEL_20:
        result = sub_22EE3CBD4();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 4 * a2;
  *v14 = v4;
  *(v14 + 2) = BYTE2(v4) & 1;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v17;
  }

  return result;
}

void *sub_22EDD28F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  v2 = *v0;
  v3 = sub_22EE3C814();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 2) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 2);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22EDD2A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  result = sub_22EE3C824();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 4 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 2);
      v21 = *(v6 + 40);
      sub_22EE3CC74();
      if (v20)
      {
        MEMORY[0x2318F6370](1);
        sub_22EE3CCA4();
      }

      else
      {
        MEMORY[0x2318F6370](0);
        sub_22EE3CC94();
      }

      result = sub_22EE3CCC4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 4 * v13;
      *v14 = v19;
      *(v14 + 2) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

char *sub_22EDD2CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D90, &unk_22EE43590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22EDD2DB4(char *a1, int64_t a2, char a3)
{
  result = sub_22EDD2DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDD2DD4(char *a1, int64_t a2, char a3)
{
  result = sub_22EDD2EF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDD2DF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D78, &unk_22EE3FAA0);
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
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_22EDD2EF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
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

uint64_t *sub_22EDD3000(uint64_t *result, char a2, uint64_t a3, char a4)
{
  v7 = result;
  v38 = *MEMORY[0x277D85DE8];
  v9 = *result;
  v8 = result[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_27:
      v32 = *MEMORY[0x277D85DE8];
      return result;
    }

    v12 = *result;

    sub_22EDD4074(v9, v8);
    v36 = v9;
    v37 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *v7 = xmmword_22EE3F920;
    sub_22EDD4074(0, 0xC000000000000000);
    sub_22EE3BCC4();
    v14 = v36;
    v13 = v37;
    v15 = *(v36 + 16);
    result = sub_22EE3BAA4();
    if (!result)
    {
      __break(1u);
      goto LABEL_34;
    }

    v16 = result;
    v17 = sub_22EE3BAD4();
    if (!__OFSUB__(v15, v17))
    {
      v18 = v16 + v15 - v17;
      result = sub_22EE3BAC4();
      if (a2)
      {
        v19 = v18[a3] | a4;
      }

      else
      {
        v19 = v18[a3] & ~a4;
      }

      v18[a3] = v19;
      *v7 = v14;
      v7[1] = v13 | 0x8000000000000000;
      goto LABEL_27;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v10)
  {
    result = sub_22EDD4074(v9, v8);
    v36 = v9;
    LOWORD(v37) = v8;
    BYTE2(v37) = BYTE2(v8);
    BYTE3(v37) = BYTE3(v8);
    BYTE4(v37) = BYTE4(v8);
    BYTE5(v37) = BYTE5(v8);
    BYTE6(v37) = BYTE6(v8);
    if (a2)
    {
      v11 = *(&v36 + a3) | a4;
    }

    else
    {
      v11 = *(&v36 + a3) & ~a4;
    }

    *(&v36 + a3) = v11;
    v22 = v37 | ((WORD2(v37) | (BYTE6(v37) << 16)) << 32);
    *v7 = v36;
    v7[1] = v22;
    goto LABEL_27;
  }

  v20 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_22EDD4074(v9, v8);
  *v7 = xmmword_22EE3F920;
  sub_22EDD4074(0, 0xC000000000000000);
  v21 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v21 < v9)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_22EE3BAA4() && __OFSUB__(v9, sub_22EE3BAD4()))
    {
LABEL_32:
      __break(1u);
    }

    v23 = sub_22EE3BAE4();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = sub_22EE3BA94();

    v20 = v26;
  }

  if (v21 < v9)
  {
    goto LABEL_29;
  }

  v27 = a2;

  result = sub_22EE3BAA4();
  if (result)
  {
    v28 = result;
    v29 = sub_22EE3BAD4();
    if (!__OFSUB__(v9, v29))
    {
      v30 = v28 + v9 - v29;
      sub_22EE3BAC4();
      if (v27)
      {
        v31 = v30[a3] | a4;
      }

      else
      {
        v31 = v30[a3] & ~a4;
      }

      v30[a3] = v31;

      *v7 = v9;
      v7[1] = v20 | 0x4000000000000000;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_22EDD33A8(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(__int128 *, uint64_t, unint64_t), void (*a5)(uint64_t, uint64_t, unint64_t))
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (v10)
    {
      sub_22EDD4020(a2, a3);
      sub_22EDD4020(v9, v8);
      sub_22EDD4074(v9, v8);
      *&v26 = v9;
      *(&v26 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      sub_22EDD36EC(&v26, a2, a3, a5);
      result = sub_22EDD4074(a2, a3);
      v22 = *(&v26 + 1) | 0x4000000000000000;
      *a1 = v26;
      a1[1] = v22;
    }

    else
    {
      sub_22EDD4020(a2, a3);
      sub_22EDD4074(v9, v8);
      *&v26 = v9;
      WORD4(v26) = v8;
      BYTE10(v26) = BYTE2(v8);
      BYTE11(v26) = BYTE3(v8);
      BYTE12(v26) = BYTE4(v8);
      BYTE13(v26) = BYTE5(v8);
      BYTE14(v26) = BYTE6(v8);
      a4(&v26, a2, a3);
      v11 = v26;
      v12 = DWORD2(v26) | ((WORD6(v26) | (BYTE14(v26) << 16)) << 32);
      sub_22EDD4074(a2, a3);
      result = sub_22EDD4074(a2, a3);
      *a1 = v11;
      a1[1] = v12;
    }

    goto LABEL_11;
  }

  if (v10 != 2)
  {
    *(&v26 + 7) = 0;
    *&v26 = 0;
    a4(&v26, a2, a3);
    result = sub_22EDD4074(a2, a3);
    goto LABEL_11;
  }

  sub_22EDD4020(a2, a3);

  sub_22EDD4074(v9, v8);
  *&v26 = v9;
  *(&v26 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_22EE3F920;
  sub_22EDD4074(0, 0xC000000000000000);
  sub_22EE3BCC4();
  v14 = *(&v26 + 1);
  v16 = *(v26 + 16);
  v15 = *(v26 + 24);
  v17 = sub_22EE3BAA4();
  if (v17)
  {
    v18 = v17;
    v19 = sub_22EE3BAD4();
    v20 = v16 - v19;
    if (__OFSUB__(v16, v19))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v15, v16))
    {
      sub_22EE3BAC4();
      a4((v18 + v20), a2, a3);
      sub_22EDD4074(a2, a3);
      result = sub_22EDD4074(a2, a3);
      *a1 = v26;
      a1[1] = v14 | 0x8000000000000000;
LABEL_11:
      v23 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
  }

  result = sub_22EDD4074(a2, a3);
  __break(1u);
  return result;
}

uint64_t sub_22EDD36EC(int *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, unint64_t))
{
  result = sub_22EE3BCE4();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(a1 + 1);

  result = sub_22EE3BAA4();
  if (result)
  {
    v11 = result;
    result = sub_22EE3BAD4();
    v12 = __OFSUB__(v9, result);
    v13 = v9 - result;
    if (!v12)
    {
      sub_22EE3BAC4();
      a4(v11 + v13, a2, a3);

      return sub_22EDD4074(a2, a3);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22EDD37A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22EE3BAA4();
    if (v10)
    {
      v11 = sub_22EE3BAD4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22EE3BAC4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22EE3BAA4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22EE3BAD4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22EE3BAC4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22EDD39D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22EDD40C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22EDD4074(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_22EDD37A8(v14, a3, a4, &v13);
  v10 = v4;
  sub_22EDD4074(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_22EDD3B68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22EDD459C();
  result = MEMORY[0x2318F5B30](v2, &type metadata for Filter, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 34);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 4;
      sub_22EDD2360(v8, v6 | (v7 << 16));
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_22EDD3BE4(uint64_t a1, unint64_t a2)
{
  v41 = 44;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EDD4544, v39, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v36 = a1;
    v37 = a2;
    v45 = MEMORY[0x277D84F90];
    result = sub_22EDD2DB4(0, v7, 0);
    v9 = 0;
    v10 = v45;
    v11 = (v6 + 56);
    v38 = v7;
    while (v9 < *(v6 + 16))
    {
      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      v16 = sub_22EDD10A0(83, 0xE100000000000000, v13, v12);
      if (v16)
      {
        result = sub_22EE3C614();
        if (v17)
        {
          result = v12;
        }

        if (v12 >> 14 < result >> 14)
        {
          goto LABEL_28;
        }

        v41 = sub_22EE3C654();
        v42 = v18;
        v43 = v19;
        v44 = v20;
        v21 = sub_22EDD4648();
        v22 = sub_22EE11A98(MEMORY[0x277D83E40], v21);
        v24 = v23;

        if ((v24 & 1) != 0 || v22 >> 16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((sub_22EDD10A0(67, 0xE100000000000000, v13, v12) & 1) == 0)
        {
          goto LABEL_23;
        }

        result = sub_22EE3C614();
        if (v25)
        {
          result = v12;
        }

        if (v12 >> 14 < result >> 14)
        {
          goto LABEL_29;
        }

        v41 = sub_22EE3C654();
        v42 = v26;
        v43 = v27;
        v44 = v28;
        v29 = sub_22EDD4648();
        v22 = sub_22EE11A98(MEMORY[0x277D83E40], v29);
        v31 = v30;

        if ((v31 & 1) != 0 || v22 >= 0x100)
        {
LABEL_23:
          v22 = type metadata accessor for KTraceRecordError();
          sub_22EDD45F0();
          swift_allocError();
          *v35 = v36;
          v35[1] = v37;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

LABEL_24:

          return v22;
        }
      }

      if (v2)
      {
        goto LABEL_24;
      }

      v45 = v10;
      v33 = *(v10 + 16);
      v32 = *(v10 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_22EDD2DB4((v32 > 1), v33 + 1, 1);
        v10 = v45;
      }

      ++v9;
      *(v10 + 16) = v33 + 1;
      v34 = v10 + 4 * v33;
      *(v34 + 32) = v22;
      *(v34 + 34) = v16 & 1;
      v11 += 4;
      if (v38 == v9)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_25:
    v22 = sub_22EDD3B68(v10);

    return v22;
  }

  return result;
}

unint64_t sub_22EDD3F74()
{
  result = qword_27DA94D50;
  if (!qword_27DA94D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA94D48, &qword_22EE41F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22EDD4020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22EDD4074(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22EDD40C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22EE3BAA4();
  v11 = result;
  if (result)
  {
    result = sub_22EE3BAD4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22EE3BAC4();
  sub_22EDD37A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22EDD4180(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22EDD4020(a3, a4);
          return sub_22EDD39D8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22EDD42EC()
{
  result = qword_27DA94D58;
  if (!qword_27DA94D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D58);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Filter(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Filter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22EDD4494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EDD44E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22EDD4544(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EE3CBA4() & 1;
  }
}

unint64_t sub_22EDD459C()
{
  result = qword_27DA94D68;
  if (!qword_27DA94D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D68);
  }

  return result;
}

unint64_t sub_22EDD45F0()
{
  result = qword_27DA94D80;
  if (!qword_27DA94D80)
  {
    type metadata accessor for KTraceRecordError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D80);
  }

  return result;
}

unint64_t sub_22EDD4648()
{
  result = qword_27DA94D88;
  if (!qword_27DA94D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D88);
  }

  return result;
}

unint64_t PassiveCollectingError.errorDescription.getter()
{
  v1 = sub_22EE3BCB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22EE3BDA4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for PassiveCollectingError(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22EDDB544(v0, v17, type metadata accessor for PassiveCollectingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v2 + 32))(v5, v17, v1);
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_22EE3C864();

        v33 = 0xD000000000000012;
        v34 = 0x800000022EE47C90;
        sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260]);
        v30 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v30);

        v20 = 0xD000000000000014;
        v21 = 0x800000022EE47CB0;
        goto LABEL_12;
      }

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DA0, &qword_22EE3FAD8) + 48);
      v23 = v7[4];
      v23(v13, v17, v6);
      v23(v11, (v17 + v22), v6);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22EE3C864();

      v33 = 0x6164207472617453;
      v34 = 0xEB00000000206574;
      sub_22EDD4D0C(&qword_27DA94DA8, MEMORY[0x277CC9578]);
      v24 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v24);

      MEMORY[0x2318F58F0](0xD000000000000010, 0x800000022EE47CD0);
      v25 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v25);

      v26 = v33;
      v27 = v7[1];
      v27(v11, v6);
      v27(v13, v6);
    }

    else
    {
      v28 = *v17;
      v29 = v17[1];
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22EE3C864();

      v33 = 0xD000000000000019;
      v34 = 0x800000022EE47C40;
      MEMORY[0x2318F58F0](v28, v29);

      return v33;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        (*(v2 + 32))(v5, v17, v1);
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_22EE3C864();

        v33 = 0xD000000000000017;
        v34 = 0x800000022EE47C00;
        sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260]);
        v31 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v31);

        goto LABEL_14;
      }

      (*(v2 + 32))(v5, v17, v1);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_22EE3C864();

      v33 = 0xD00000000000002ALL;
      v34 = 0x800000022EE47C60;
      sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260]);
      v19 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v19);

      v20 = 39;
      v21 = 0xE100000000000000;
LABEL_12:
      MEMORY[0x2318F58F0](v20, v21);
LABEL_14:
      v26 = v33;
      (*(v2 + 8))(v5, v1);
      return v26;
    }

    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  return v26;
}

uint64_t sub_22EDD4D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EDD4DBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v45 = type metadata accessor for PassiveTraceInterval(0);
  v47 = *(v45 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_22EE3BDA4();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = swift_projectBox();
  v51 = swift_projectBox();
  v52 = a1;
  v21 = [a1 bootDate];
  sub_22EE3BD84();

  swift_beginAccess();
  v22 = v13[2];
  v50 = v20;
  v22(v17, v20, v12);
  LOBYTE(v21) = sub_22EE3BD64();
  v48 = v13;
  v23 = v13[1];
  v23(v17, v12);
  v23(v19, v12);
  if (v21)
  {
    v24 = [v52 uuid];
    sub_22EE3BDC4();

    v25 = sub_22EE3BDF4();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    v26 = v51;
  }

  else
  {
    v27 = [v52 bootDate];
    sub_22EE3BD84();

    sub_22EE3BA44();
    v28 = sub_22EE3BD54();
    v23(v17, v12);
    result = (v23)(v19, v12);
    if (v28)
    {
      return result;
    }

    v30 = v50;
    swift_beginAccess();
    v44 = v12;
    v22(v19, v30, v12);
    v31 = v52;
    v32 = [v52 bootDate];
    sub_22EE3BD84();

    v33 = v46;
    sub_22EE3BA54();
    v26 = v51;
    swift_beginAccess();
    sub_22EDDB6E8(v26, v33 + *(v45 + 20), &qword_27DA94DB0, &unk_22EE3FAE0);
    v34 = v49;
    swift_beginAccess();
    v35 = *(v34 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 16) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_22EDDA04C(0, v35[2] + 1, 1, v35);
      *(v34 + 16) = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_22EDDA04C(v37 > 1, v38 + 1, 1, v35);
    }

    v35[2] = v38 + 1;
    sub_22EDDC3D0(v33, v35 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v38, type metadata accessor for PassiveTraceInterval);
    *(v34 + 16) = v35;
    swift_endAccess();
    v39 = [v31 bootDate];
    sub_22EE3BD84();

    v40 = v50;
    swift_beginAccess();
    (v48[5])(v40, v19, v44);
    v41 = [v31 uuid];
    sub_22EE3BDC4();

    v42 = sub_22EE3BDF4();
    (*(*(v42 - 8) + 56))(v11, 0, 1, v42);
  }

  swift_beginAccess();
  return sub_22EDDC5D4(v11, v26);
}

void sub_22EDD5384(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t PassiveDataSourceCollectionConfig.options.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t PassiveDataSourceCollectionConfig.dataCategoryNames.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

ktrace::PassiveDataSourceCollectionConfig __swiftcall PassiveDataSourceCollectionConfig.init(options:dataCategoryNames:)(Swift::OpaquePointer options, Swift::OpaquePointer dataCategoryNames)
{
  v2->_rawValue = options._rawValue;
  v2[1]._rawValue = dataCategoryNames._rawValue;
  result.dataCategoryNames = dataCategoryNames;
  result.options = options;
  return result;
}

Swift::Void __swiftcall PassiveDataSourceCollectionConfig.add(name:value:)(Swift::String name, Swift::String value)
{
  v3 = v2;
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = name._object;
  v7 = name._countAndFlagsBits;
  v8 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = sub_22EDDADA0(v7, v6, sub_22EDDA5EC);
  v13 = *(v10 + 2);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  if (*(v10 + 3) < v15)
  {
    sub_22EDDA7A8(v15, isUniquelyReferenced_nonNull_native, &qword_27DA94F08, &unk_22EE3FF50);
    v17 = sub_22EDDADA0(v7, v6, sub_22EDDA5EC);
    if ((v16 & 1) != (v18 & 1))
    {
      goto LABEL_21;
    }

    v12 = v17;
    *v3 = v10;
    if (v16)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *v3 = v10;
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_22EDDAA48(&qword_27DA94F08, &unk_22EE3FF50);
  *v3 = v10;
  if ((v16 & 1) == 0)
  {
LABEL_8:
    *&v10[8 * (v12 >> 6) + 64] |= 1 << v12;
    v19 = (*(v10 + 6) + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    *(*(v10 + 7) + 8 * v12) = MEMORY[0x277D84F90];
    v20 = *(v10 + 2);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v10 + 2) = v22;

      goto LABEL_10;
    }

    __break(1u);
LABEL_21:
    sub_22EE3CBE4();
    __break(1u);
    return;
  }

LABEL_10:
  v7 = *(v10 + 7);
  v10 = *(v7 + 8 * v12);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v12) = v10;
  if ((v23 & 1) == 0)
  {
LABEL_17:
    v10 = sub_22EDDA224(0, *(v10 + 2) + 1, 1, v10);
    *(v7 + 8 * v12) = v10;
  }

  v25 = *(v10 + 2);
  v24 = *(v10 + 3);
  if (v25 >= v24 >> 1)
  {
    v10 = sub_22EDDA224((v24 > 1), v25 + 1, 1, v10);
    *(v7 + 8 * v12) = v10;
  }

  *(v10 + 2) = v25 + 1;
  v26 = &v10[16 * v25];
  *(v26 + 4) = countAndFlagsBits;
  *(v26 + 5) = object;
}

uint64_t PassiveCollectionResult.OutputFile.succinctDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22EE3FAB0;
  v2 = sub_22EE3BC84();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_22EDDB4DC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  v6 = *(v0 + *(v5 + 24));
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v1 + 96) = MEMORY[0x277D839F8];
  *(v1 + 104) = v8;
  *(v1 + 72) = v6;
  v9 = *(v0 + *(v5 + 20));
  *(v1 + 136) = v7;
  *(v1 + 144) = v8;
  *(v1 + 112) = v9;

  return sub_22EE3C134();
}

uint64_t sub_22EDD5824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = sub_22EE3BCB4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2, a1, v6);
  v8 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  *(a2 + *(v8 + 20)) = a3;
  v9 = [objc_opt_self() defaultManager];
  sub_22EE3BC84();
  v10 = sub_22EE3C0F4();

  v23[0] = 0;
  v11 = [v9 attributesOfItemAtPath:v10 error:v23];

  v12 = v23[0];
  if (!v11)
  {
    v19 = v23[0];
    sub_22EE3BBA4();

    swift_willThrow();
    v20 = *(v7 + 8);
    v20(a1, v6);
    result = (v20)(a2, v6);
    goto LABEL_10;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_22EDD4D0C(&qword_27DA94DC0, type metadata accessor for FileAttributeKey);
  v13 = sub_22EE3C064();
  v14 = v12;

  if (!*(v13 + 16) || (v15 = sub_22EDDA558(*MEMORY[0x277CCA1C0]), (v16 & 1) == 0))
  {

    result = (*(v7 + 8))(a1, v6);
    goto LABEL_7;
  }

  sub_22ED7E678(*(v13 + 56) + 32 * v15, v23);
  (*(v7 + 8))(a1, v6);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    v18 = 0.0;
    goto LABEL_8;
  }

  v18 = v22 * 0.0009765625 * 0.0009765625;
LABEL_8:
  *(a2 + *(v8 + 24)) = v18;
LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PassiveCollectionResult.dataSourceErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassiveCollectionResult(0) + 24));
}

uint64_t PassiveCollectionResult.infrastructureErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassiveCollectionResult(0) + 28));
}

uint64_t PassiveCollectionResult.succinctDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v68 - v3;
  v5 = sub_22EE3BDA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v78 = 0xE000000000000000;
  v10 = type metadata accessor for PassiveCollectionResult(0);
  v11 = *(v0 + *(v10 + 24));
  if (v11)
  {
    v68 = v0;
    v69 = v10;
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;

    v18 = 0;
    v70 = v16;
    v71 = v11 + 64;
    v72 = v11;
    while (v15)
    {
LABEL_11:
      v20 = __clz(__rbit64(v15)) | (v18 << 6);
      v21 = (*(v11 + 48) + 16 * v20);
      v22 = v21[1];
      v23 = *(*(v11 + 56) + 8 * v20);
      v75 = *v21;
      v76 = v22;

      MEMORY[0x2318F58F0](8250, 0xE200000000000000);
      v74 = *(v23 + 16);
      v24 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v24);

      MEMORY[0x2318F58F0](0x73726F72726520, 0xE700000000000000);
      MEMORY[0x2318F58F0](v75, v76);

      v73 = v23;
      v25 = *(v23 + 16);
      if (v25)
      {
        v26 = (v73 + 32);
        do
        {
          v27 = *v26++;
          v75 = 2314;
          v76 = 0xE200000000000000;
          swift_getErrorValue();
          v28 = v27;
          v29 = sub_22EE3CBF4();
          MEMORY[0x2318F58F0](v29);

          MEMORY[0x2318F58F0](v75, v76);

          --v25;
        }

        while (v25);
      }

      v15 &= v15 - 1;

      v12 = v71;
      v11 = v72;
      v16 = v70;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_11;
      }
    }

    v30 = *(v68 + *(v69 + 28));
    if (v30)
    {
      goto LABEL_18;
    }

    return v77;
  }

  v30 = *(v0 + *(v10 + 28));
  if (v30)
  {
LABEL_18:
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_22EE3C864();

    v75 = 0xD000000000000017;
    v76 = 0x800000022EE47D20;
    v74 = *(v30 + 16);
    v31 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v31);

    MEMORY[0x2318F58F0](0x73726F72726520, 0xE700000000000000);
    MEMORY[0x2318F58F0](v75, v76);

    v32 = *(v30 + 16);
    if (v32)
    {
      v33 = (v30 + 32);
      do
      {
        v34 = *v33++;
        v75 = 2314;
        v76 = 0xE200000000000000;
        swift_getErrorValue();
        v35 = v34;
        v36 = sub_22EE3CBF4();
        MEMORY[0x2318F58F0](v36);

        MEMORY[0x2318F58F0](v75, v76);

        --v32;
      }

      while (v32);
    }

    return v77;
  }

  v69 = v10;
  v37 = objc_opt_self();
  v38 = v0;
  sub_22EE3BA64();
  v39 = sub_22EE3BD44();
  v40 = *(v6 + 8);
  v40(v9, v5);
  v41 = [v37 localizedStringFromDate:v39 dateStyle:1 timeStyle:1];

  v72 = sub_22EE3C124();
  v73 = v42;

  sub_22EE3BA44();
  v43 = sub_22EE3BD44();
  v40(v9, v5);
  v44 = [v37 localizedStringFromDate:v43 dateStyle:1 timeStyle:1];

  v45 = sub_22EE3C124();
  v47 = v46;

  v48 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v48 setAllowedUnits_];
  [v48 setUnitsStyle_];
  sub_22EE3BA74();
  v49 = [v48 stringFromTimeInterval_];
  if (v49)
  {
    v50 = v49;
    v51 = sub_22EE3C124();
    v53 = v52;
  }

  else
  {
    v53 = 0xE700000000000000;
    v51 = 0x6E776F6E6B6E55;
  }

  v75 = v51;
  v76 = v53;

  MEMORY[0x2318F58F0](10272, 0xE200000000000000);
  MEMORY[0x2318F58F0](v72, v73);
  MEMORY[0x2318F58F0](540945696, 0xE400000000000000);
  MEMORY[0x2318F58F0](v45, v47);
  MEMORY[0x2318F58F0](41, 0xE100000000000000);
  v55 = v75;
  v54 = v76;
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_22EDDB6E8(v38 + *(v69 + 20), v4, &qword_27DA94DC8, &unk_22EE3FAF0);
  v56 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  result = (*(*(v56 - 8) + 48))(v4, 1, v56);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_22EE3FAB0;
    v58 = sub_22EE3BC84();
    v60 = v59;
    *(v57 + 56) = MEMORY[0x277D837D0];
    *(v57 + 64) = sub_22EDDB4DC();
    *(v57 + 32) = v58;
    *(v57 + 40) = v60;
    v61 = *&v4[*(v56 + 24)];
    v62 = MEMORY[0x277D839F8];
    v63 = MEMORY[0x277D83A80];
    *(v57 + 96) = MEMORY[0x277D839F8];
    *(v57 + 104) = v63;
    *(v57 + 72) = v61;
    v64 = *&v4[*(v56 + 20)];
    *(v57 + 136) = v62;
    *(v57 + 144) = v63;
    *(v57 + 112) = v64;
    v65 = sub_22EE3C134();
    v67 = v66;
    sub_22EDDB5CC(v4);
    MEMORY[0x2318F58F0](v65, v67);

    MEMORY[0x2318F58F0](8250, 0xE200000000000000);
    MEMORY[0x2318F58F0](v55, v54);

    return v75;
  }

  return result;
}

uint64_t sub_22EDD63F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PassiveCollection.outputDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassiveCollection(0) + 20);
  v4 = sub_22EE3BCB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassiveCollection.dataSourceOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassiveCollection(0) + 24));
}

uint64_t PassiveCollection.traceNamePrefix.getter()
{
  v1 = (v0 + *(type metadata accessor for PassiveCollection(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PassiveCollection.traceIntervals.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassiveCollection(0) + 32));
}

uint64_t sub_22EDD65A8()
{
  v0 = sub_22EE3BE94();
  __swift_allocate_value_buffer(v0, qword_27DA9C8D0);
  __swift_project_value_buffer(v0, qword_27DA9C8D0);
  return sub_22EE3BE84();
}

uint64_t PassiveCollection.init(traceNamePrefix:startDate:endDate:outputDirectory:dataSourceOptions:flags:logger:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v94 = a6;
  v95 = a8;
  v85 = a7;
  v93 = a5;
  v98 = a4;
  v13 = sub_22EE3BA84();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v91 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v78 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  v27 = sub_22EE3BDA4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v82 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v90 = &v78 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v96 = &v78 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v78 - v36;
  v38 = type metadata accessor for PassiveCollection(0);
  *(a9 + *(v38 + 44)) = 1;
  v39 = 0x5F65766973736170;
  if (a2)
  {
    v39 = a1;
    v40 = a2;
  }

  else
  {
    v40 = 0xED00006563617274;
  }

  v81 = v38;
  v41 = *(v38 + 28);
  v84 = a9;
  v42 = (a9 + v41);
  *v42 = v39;
  v42[1] = v40;
  v89 = v40;
  v97 = a3;
  sub_22EDDB6E8(a3, v26, &qword_27DA94DD0, &unk_22EE40AE0);
  v43 = *(v28 + 48);
  if (v43(v26, 1, v27) == 1)
  {
    sub_22EE3BD24();
    if (v43(v26, 1, v27) != 1)
    {
      sub_22EDDBA48(v26, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v28 + 32))(v37, v26, v27);
  }

  sub_22EDDB6E8(v98, v24, &qword_27DA94DD0, &unk_22EE40AE0);
  v44 = v43(v24, 1, v27);
  v45 = v96;
  if (v44 == 1)
  {
    sub_22EE3BD94();
    v46 = v43(v24, 1, v27);
    v47 = v91;
    if (v46 != 1)
    {
      sub_22EDDBA48(v24, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v28 + 32))(v96, v24, v27);
    v47 = v91;
  }

  sub_22EDD4D0C(&qword_27DA94DD8, MEMORY[0x277CC9578]);
  v48 = sub_22EE3C0C4();
  v92 = v37;
  if ((v48 & 1) == 0)
  {

    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    swift_allocError();
    v56 = v55;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DA0, &qword_22EE3FAD8);
    v58 = v37;
    v59 = *(v57 + 48);
    v60 = *(v28 + 16);
    v60(v56, v58, v27);
    v60(v56 + v59, v45, v27);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_22EE3BCB4();
    (*(*(v61 - 8) + 8))(v93, v61);
    sub_22EDDBA48(v98, &qword_27DA94DD0, &unk_22EE40AE0);
    sub_22EDDBA48(v97, &qword_27DA94DD0, &unk_22EE40AE0);
    v62 = *(v28 + 8);
    v62(v45, v27);
    v62(v92, v27);
  }

  v49 = v80;
  sub_22EDDB6E8(v97, v80, &qword_27DA94DD0, &unk_22EE40AE0);
  if (v43(v49, 1, v27) == 1)
  {
    sub_22EE3BD24();
    v50 = v43(v49, 1, v27) == 1;
    v51 = v93;
    v52 = v49;
    v54 = v87;
    v53 = v88;
    if (!v50)
    {
      sub_22EDDBA48(v52, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v28 + 32))(v90, v49, v27);
    v51 = v93;
    v54 = v87;
    v53 = v88;
  }

  sub_22EDDB6E8(v98, v47, &qword_27DA94DD0, &unk_22EE40AE0);
  v63 = v43(v47, 1, v27);
  v79 = v28;
  if (v63 == 1)
  {
    sub_22EE3BD94();
    if (v43(v47, 1, v27) != 1)
    {
      sub_22EDDBA48(v47, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v28 + 32))(v82, v47, v27);
  }

  v64 = v83;
  sub_22EE3BA54();
  v65 = v84;
  (*(v54 + 32))(v84, v64, v53);
  v66 = v81;
  v67 = v81[5];
  v68 = sub_22EE3BCB4();
  v69 = *(v68 - 8);
  (*(v69 + 16))(v65 + v67, v51, v68);
  *(v65 + v66[6]) = v94;
  *(v65 + v66[10]) = v95;
  *(v65 + v66[9]) = v85;
  v70 = v86;
  v71 = sub_22EDDAE24(v65);
  v72 = v51;
  v93 = v70;
  if (v70)
  {
    v73 = *(v69 + 8);
    v73(v51, v68);
    sub_22EDDBA48(v98, &qword_27DA94DD0, &unk_22EE40AE0);
    sub_22EDDBA48(v97, &qword_27DA94DD0, &unk_22EE40AE0);
    v74 = *(v79 + 8);
    v74(v96, v27);
    v74(v92, v27);
    (*(v54 + 8))(v65, v88);
    v73(v65 + v67, v68);
    swift_unknownObjectRelease();
  }

  v76 = v71;
  (*(v69 + 8))(v72, v68);
  sub_22EDDBA48(v98, &qword_27DA94DD0, &unk_22EE40AE0);
  sub_22EDDBA48(v97, &qword_27DA94DD0, &unk_22EE40AE0);
  v77 = *(v79 + 8);
  v77(v96, v27);
  result = (v77)(v92, v27);
  *(v65 + v66[8]) = v76;
  return result;
}

void sub_22EDD6FC8(uint64_t a1@<X8>)
{
  v29 = sub_22EE3BCB4();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PassiveCollection(0);
  v8 = (v1 + v7[7]);
  v9 = v7[11];
  v27 = v7[5];
  v10 = objc_opt_self();
  v11 = 0;
  v28 = v1;
  v22 = v9;
  v12 = *(v1 + v9);
  v23 = (v3 + 8);
  v24 = v10;
  v13 = (v3 + 32);
  v14 = v8[1];
  v26 = *v8;
  v25 = xmmword_22EE3F500;
  while (1)
  {
    v30 = v26;
    v31 = v14;

    MEMORY[0x2318F58F0](95, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v15 = swift_allocObject();
    *(v15 + 16) = v25;
    *(v15 + 56) = MEMORY[0x277D83E88];
    *(v15 + 64) = MEMORY[0x277D83ED0];
    *(v15 + 32) = v12;
    v16 = sub_22EE3C134();
    MEMORY[0x2318F58F0](v16);

    MEMORY[0x2318F58F0](0x637274612ELL, 0xE500000000000000);
    sub_22EE3BC44();

    if (v11)
    {
      (*v23)(a1, v29);
    }

    (*v13)(a1, v6, v29);
    v17 = v12 + 1;
    if (v12 == -1)
    {
      break;
    }

    v18 = [v24 defaultManager];
    v11 = 1;
    sub_22EE3BC84();
    v19 = sub_22EE3C0F4();

    v20 = [v18 fileExistsAtPath_];

    ++v12;
    if ((v20 & 1) == 0)
    {
      *(v28 + v22) = v17;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22EDD725C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v214 = a1;
  v223 = *MEMORY[0x277D85DE8];
  v205 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  v204 = *(v205 - 8);
  v4 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v188 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_22EE3BA84();
  v189 = *(v190 - 8);
  v6 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v183 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v185 = &v182 - v12;
  v201 = type metadata accessor for PassiveTraceInterval(0);
  v13 = *(*(v201 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v201);
  v182 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v184 = &v182 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v199 = &v182 - v19;
  v200 = sub_22EE3BDF4();
  v198 = *(v200 - 1);
  v20 = *(v198 + 64);
  MEMORY[0x28223BE20](v200);
  v196 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22EE3BE64();
  v209 = *(v22 - 8);
  v210 = v22;
  v23 = v209[8];
  v24 = MEMORY[0x28223BE20](v22);
  v208 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v182 - v26;
  v28 = sub_22EE3BCB4();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = MEMORY[0x28223BE20](v28);
  v187 = &v182 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v182 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v182 - v36;
  v38 = sub_22EE3BDA4();
  v216 = *(v38 - 8);
  v39 = *(v216 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v186 = &v182 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v213 = &v182 - v43;
  MEMORY[0x28223BE20](v42);
  v211 = &v182 - v44;
  sub_22EE3BD94();
  v192 = v2;
  sub_22EDD6FC8(v37);
  if (qword_27DA96160 != -1)
  {
    goto LABEL_71;
  }

LABEL_2:
  v45 = sub_22EE3BE94();
  __swift_project_value_buffer(v45, qword_27DA9C8D0);
  v46 = v29[2];
  v215 = v37;
  v203 = v29 + 2;
  v202 = v46;
  v46(v35, v37, v28);
  sub_22EE3BE54();
  v47 = sub_22EE3BE74();
  v48 = sub_22EE3C574();
  v49 = sub_22EE3C5C4();
  v207 = v28;
  v212 = v29;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v194 = a2;
    v51 = v50;
    v52 = swift_slowAlloc();
    v197 = v38;
    v53 = v52;
    *&v220 = v52;
    *v51 = 136446210;
    v54 = sub_22EE3BC94();
    v55 = v28;
    v57 = v56;
    v58 = v29[1];
    v58(v35, v55);
    v59 = sub_22ED7DF24(v54, v57, &v220);

    *(v51 + 4) = v59;
    v60 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v47, v48, v60, "PassiveCollectInterval", "Collecting to path: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v61 = v53;
    v38 = v197;
    MEMORY[0x2318F8320](v61, -1, -1);
    v62 = v51;
    a2 = v194;
    MEMORY[0x2318F8320](v62, -1, -1);
  }

  else
  {

    v58 = v29[1];
    v58(v35, v28);
  }

  v63 = v209;
  v64 = v210;
  (v209[2])(v208, v27, v210);
  v65 = sub_22EE3BED4();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  v68 = sub_22EE3BEC4();
  (*(v63 + 8))(v27, v64);
  v37 = swift_allocObject();
  v69 = v215;
  sub_22EE3BC84();
  v70 = sub_22EE3C184();

  v71 = ktrace_file_create(0, (v70 + 32));

  v210 = v37;
  v72 = v214;
  v206 = v58;
  if (!v71)
  {
    *(v37 + 2) = 0xD000000000000015;
    *(v37 + 3) = 0x800000022EE47D40;
    sub_22EDDB544(v72, a2, type metadata accessor for PassiveTraceInterval);
    v89 = type metadata accessor for PassiveCollectionResult(0);
    (*(v204 + 56))(a2 + v89[5], 1, 1, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_22EE3F500;
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    *(v90 + 32) = swift_allocError();
    v91 = v207;
    v202(v92, v69, v207);
    v93 = v210;
    swift_storeEnumTagMultiPayload();
    *(a2 + v89[6]) = 0;
    *(a2 + v89[7]) = v90;
    sub_22EDD8CA0(v68, v93);
    v94 = 0;
    goto LABEL_69;
  }

  v209 = v71;
  v193 = v68;
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v73 = v213;
  sub_22EE3BA64();
  v74 = v73;
  sub_22EE3BD74();
  v76 = v75;
  v77 = v75;
  v78 = *(v216 + 8);
  v208 = (v216 + 8);
  v195 = v78;
  v78(v73, v38);
  v80 = *&v77 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_73:
    __break(1u);
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
    v79 = sub_22EDDA330((v80 > 1), v74, 1, v79);
LABEL_56:
    v151 = v211;
    v152 = v216;
    v79[2] = v74;
    v200 = v79;
    v79[a2 + 4] = v72;
    goto LABEL_63;
  }

  v80 = 0xC3E0000000000001;
  if (v76 <= -9.22337204e18)
  {
    goto LABEL_73;
  }

  v80 = 0x43E0000000000000;
  if (v76 >= 9.22337204e18)
  {
    goto LABEL_74;
  }

  v81 = (v76 - v76) * 1000000.0;
  v80 = fabs(v81);
  if (v80 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_75;
  }

  v80 = 0xC1E0000000200000;
  if (v81 <= -2147483650.0)
  {
    goto LABEL_76;
  }

  v80 = 0x41E0000000000000;
  if (v81 >= 2147483650.0)
  {
    goto LABEL_77;
  }

  *&v220 = v76;
  DWORD2(v220) = v81;
  v73 = v213;
  sub_22EE3BA44();
  v74 = v73;
  sub_22EE3BD74();
  v83 = v82;
  v84 = v82;
  v195(v73, v38);
  v80 = *&v84 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_78;
  }

  v80 = 0xC3E0000000000001;
  if (v83 <= -9.22337204e18)
  {
    goto LABEL_79;
  }

  v80 = 0x43E0000000000000;
  if (v83 >= 9.22337204e18)
  {
    goto LABEL_80;
  }

  v85 = (v83 - v83) * 1000000.0;
  v80 = fabs(v85);
  if (v80 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  v80 = 0xC1E0000000200000;
  if (v85 <= -2147483650.0)
  {
    goto LABEL_82;
  }

  v80 = 0x41E0000000000000;
  if (v85 >= 2147483650.0)
  {
    goto LABEL_83;
  }

  *&v221 = v83;
  DWORD2(v221) = v85;
  v86 = v199;
  sub_22EDDB6E8(v72 + *(v201 + 20), v199, &qword_27DA94DB0, &unk_22EE3FAE0);
  v87 = v198;
  v88 = v200;
  if ((*(v198 + 48))(v86, 1, v200) == 1)
  {
    sub_22EDDBA48(v86, &qword_27DA94DB0, &unk_22EE3FAE0);
    v222 = 0uLL;
  }

  else
  {
    v95 = v37;
    v96 = a2;
    v97 = v38;
    v98 = v69;
    v99 = v196;
    (*(v87 + 32))(v196, v86, v88);
    v100 = sub_22EE3BDD4();
    v102 = v101;
    v103 = v99;
    v69 = v98;
    v38 = v97;
    a2 = v96;
    v37 = v95;
    v72 = v214;
    (*(v87 + 8))(v103, v88);
    *&v222 = v100;
    *(&v222 + 1) = v102;
  }

  v104 = v209;
  if (!ktrace_file_append_chunk(v209, 32816, 1, 0, &v220, 48))
  {
    *(v37 + 2) = 0xD000000000000029;
    *(v37 + 3) = 0x800000022EE47D60;
    sub_22EDDB544(v72, a2, type metadata accessor for PassiveTraceInterval);
    v109 = type metadata accessor for PassiveCollectionResult(0);
    (*(v204 + 56))(a2 + v109[5], 1, 1, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_22EE3F500;
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    *(v110 + 32) = swift_allocError();
    v91 = v207;
    v202(v111, v215, v207);
    v112 = v210;
    v69 = v215;
    swift_storeEnumTagMultiPayload();
    *(a2 + v109[6]) = 0;
    *(a2 + v109[7]) = v110;
    sub_22EDD8CA0(v193, v112);
    v94 = 0;
    goto LABEL_69;
  }

  v105 = v217;
  v106 = sub_22EDDB85C(v104);
  if (v105)
  {
    *(v37 + 2) = 0xD00000000000002ALL;
    *(v37 + 3) = 0x800000022EE47D90;
    sub_22EDDB544(v72, a2, type metadata accessor for PassiveTraceInterval);
    v107 = type metadata accessor for PassiveCollectionResult(0);
    (*(v204 + 56))(a2 + v107[5], 1, 1, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_22EE3F500;
    *(v108 + 32) = v105;
    *(a2 + v107[6]) = 0;
    *(a2 + v107[7]) = v108;
    sub_22EDD8CA0(v193, v37);
    v94 = 0;
    v91 = v207;
    goto LABEL_69;
  }

  v201 = v106;
  v197 = v38;
  v217 = 0;
  v194 = a2;
  v199 = sub_22EDDB750(MEMORY[0x277D84F90], &qword_27DA94EF8, &unk_22EE3FF40, sub_22EDDA5EC);
  v113 = type metadata accessor for PassiveCollection(0);
  v114 = v192;
  v115 = *(v192 + v113[9]);
  v29 = *(v192 + v113[10]);
  swift_unknownObjectRetain();
  *&v220 = sub_22EDE4694();
  DWORD2(v220) = v116;
  *&v221 = v117;
  v118 = *(v114 + v113[6]);
  v35 = (v118 + 64);
  v119 = 1 << *(v118 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v28 = v120 & *(v118 + 64);
  a2 = (v119 + 63) >> 6;
  v200 = v118;

  v198 = 0;
  v121 = 0;
  while (v28)
  {
    v27 = v121;
LABEL_35:
    v122 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v123 = (v27 << 10) | (16 * v122);
    v124 = (v200[6] + v123);
    v37 = *v124;
    v125 = v124[1];
    v126 = v200[7] + v123;
    v127 = *v126;
    v29 = *(v126 + 8);

    v128 = v217;
    sub_22EDE46A8(v37, v125, v201, v127, v29);
    v217 = v128;
    if (v128)
    {

      sub_22ED97EE0(v198);
      v129 = v199;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218 = v129;
      v132 = sub_22EDDADA0(v37, v125, sub_22EDDA5EC);
      v133 = *(v129 + 16);
      v134 = (v131 & 1) == 0;
      v135 = v133 + v134;
      if (__OFADD__(v133, v134))
      {
        __break(1u);
LABEL_86:
        __break(1u);
      }

      if (*(v129 + 24) >= v135)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v131)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v147 = v131;
          sub_22EDDAA48(&qword_27DA94EF8, &unk_22EE3FF40);
          v199 = v218;
          if (v147)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        LODWORD(v198) = v131;
        sub_22EDDA7A8(v135, isUniquelyReferenced_nonNull_native, &qword_27DA94EF8, &unk_22EE3FF40);
        v199 = v218;
        v136 = sub_22EDDADA0(v37, v125, sub_22EDDA5EC);
        if ((v198 & 1) != (v137 & 1))
        {
          result = sub_22EE3CBE4();
          __break(1u);
          return result;
        }

        v132 = v136;
        if (v198)
        {
LABEL_45:

          v138 = v199;
          goto LABEL_46;
        }
      }

      v138 = v199;
      *(v199 + 8 * (v132 >> 6) + 64) |= 1 << v132;
      v139 = (v138[6] + 16 * v132);
      *v139 = v37;
      v139[1] = v125;
      *(v138[7] + 8 * v132) = MEMORY[0x277D84F90];
      v140 = v138[2];
      v141 = __OFADD__(v140, 1);
      v142 = v140 + 1;
      if (v141)
      {
        goto LABEL_86;
      }

      v138[2] = v142;
LABEL_46:
      v37 = v138[7];
      v143 = *&v37[8 * v132];
      v144 = swift_isUniquelyReferenced_nonNull_native();
      *&v37[8 * v132] = v143;
      if ((v144 & 1) == 0)
      {
        v143 = sub_22EDDA330(0, v143[2] + 1, 1, v143);
        *&v37[8 * v132] = v143;
      }

      v146 = v143[2];
      v145 = v143[3];
      v29 = (v146 + 1);
      if (v146 >= v145 >> 1)
      {
        v143 = sub_22EDDA330((v145 > 1), v146 + 1, 1, v143);
        *&v37[8 * v132] = v143;
      }

      v143[2] = v29;
      v143[v146 + 4] = v217;
      v198 = sub_22EDD8FD0;
      v121 = v27;
      v217 = 0;
    }

    else
    {

      v121 = v27;
    }
  }

  v38 = v197;
  while (1)
  {
    v27 = v121 + 1;
    if (__OFADD__(v121, 1))
    {
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_2;
    }

    if (v27 >= a2)
    {
      break;
    }

    v28 = *&v35[8 * v27];
    ++v121;
    if (v28)
    {
      goto LABEL_35;
    }
  }

  ktrace_machine_destroy(v201);
  if (*(v220 + 16))
  {
    v148 = v221;
    v149 = v209;
    v209 = v220;
    v150 = v217;
    sub_22EDE5B5C(v149, v214, v220);
    v72 = v150;
    v73 = v215;
    v201 = v148;
    if (v150)
    {
      v79 = sub_22EDDA330(0, 1, 1, MEMORY[0x277D84F90]);
      a2 = v79[2];
      v80 = v79[3];
      v74 = a2 + 1;
      if (a2 < v80 >> 1)
      {
        goto LABEL_56;
      }

      goto LABEL_84;
    }

    v200 = MEMORY[0x277D84F90];
    v151 = v211;
    v152 = v216;
LABEL_63:
    (*(v152 + 16))(v213, v151, v38);
    sub_22EE3BD94();
    sub_22EE3BA54();
    v218 = 0;
    v219 = 0xE000000000000000;
    sub_22EE3C864();

    v218 = 0xD000000000000012;
    v219 = 0x800000022EE47DC0;
    sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260]);
    v163 = v207;
    v164 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v164);

    v165 = v219;
    v166 = v210;
    *(v210 + 2) = v218;
    *(v166 + 3) = v165;
    v167 = v187;
    v202(v187, v73, v163);
    sub_22EE3BA74();
    v168 = v188;
    sub_22EDD5824(v167, v188, v169);
    v170 = v194;
    v217 = 0;
    v213 = v165;
    v171 = v182;
    sub_22EDDB544(v214, v182, type metadata accessor for PassiveTraceInterval);
    v172 = v183;
    sub_22EDDB544(v168, v183, type metadata accessor for PassiveCollectionResult.OutputFile);
    (*(v204 + 56))(v172, 0, 1, v205);
    if (!*(v199 + 16))
    {

      v199 = 0;
    }

    v69 = v215;
    v173 = v210;
    v174 = v191;
    v175 = v200;
    if (!v200[2])
    {

      v175 = 0;
    }

    sub_22EDDC3D0(v171, v170, type metadata accessor for PassiveTraceInterval);
    v176 = type metadata accessor for PassiveCollectionResult(0);
    sub_22EDDB628(v172, v170 + v176[5], &qword_27DA94DC8, &unk_22EE3FAF0);
    *(v170 + v176[6]) = v199;
    *(v170 + v176[7]) = v175;
    v177 = PassiveCollectionResult.succinctDescription.getter();
    v179 = v178;
    sub_22EDDB5CC(v168);
    (*(v189 + 8))(v174, v190);

    swift_unknownObjectRelease();

    *(v173 + 16) = v177;
    *(v173 + 24) = v179;
    sub_22EDD8CA0(v193, v173);
    v91 = v163;
    v38 = v197;
  }

  else
  {
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    v153 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v154 = sub_22EDDA330(0, 1, 1, MEMORY[0x277D84F90]);
    v156 = v154[2];
    v155 = v154[3];
    v157 = v194;
    v69 = v215;
    if (v156 >= v155 >> 1)
    {
      v154 = sub_22EDDA330((v155 > 1), v156 + 1, 1, v154);
    }

    v154[2] = v156 + 1;
    v154[v156 + 4] = v153;
    v158 = v210;
    *(v210 + 2) = 0xD00000000000002ALL;
    *(v158 + 24) = 0x800000022EE47DE0;
    v159 = v184;
    sub_22EDDB544(v214, v184, type metadata accessor for PassiveTraceInterval);
    v160 = v185;
    (*(v204 + 56))(v185, 1, 1, v205);
    v161 = v199;
    if (!*(v199 + 16))
    {

      v161 = 0;
    }

    sub_22EDDC3D0(v159, v157, type metadata accessor for PassiveTraceInterval);
    v162 = type metadata accessor for PassiveCollectionResult(0);
    sub_22EDDB628(v160, v157 + v162[5], &qword_27DA94DC8, &unk_22EE3FAF0);

    *(v157 + v162[6]) = v161;
    *(v157 + v162[7]) = v154;
    swift_unknownObjectRelease();
    sub_22EDD8CA0(v193, v158);
    v91 = v207;
  }

  v94 = v198;
LABEL_69:

  v206(v69, v91);
  (*(v216 + 8))(v211, v38);

  result = sub_22ED97EE0(v94);
  v181 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EDD8CA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22EE3BEA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22EE3BE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27DA96160 != -1)
  {
    swift_once();
  }

  v13 = sub_22EE3BE94();
  __swift_project_value_buffer(v13, qword_27DA9C8D0);

  v14 = sub_22EE3BE74();
  sub_22EE3BEB4();
  v26 = sub_22EE3C564();

  if (sub_22EE3C5C4())
  {

    sub_22EE3BEE4();

    if ((*(v4 + 88))(v7, v3) == *MEMORY[0x277D85B00])
    {
      v15 = 0;
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v17 = "%{public}s";
      v16 = 2;
      v15 = 1;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = v16;
    *(v18 + 1) = v15;
    *(v18 + 2) = 2082;
    swift_beginAccess();
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);

    v22 = sub_22ED7DF24(v20, v21, &v27);

    *(v18 + 4) = v22;
    v23 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v14, v26, v23, "PassiveCollectInterval", v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2318F8320](v19, -1, -1);
    MEMORY[0x2318F8320](v18, -1, -1);
  }

  return (*(v9 + 8))(v12, v8);
}

id PassiveCollection.collect()()
{
  v1 = v0;
  v97[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BE64();
  v3 = *(v2 - 8);
  v95 = v2;
  v96 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v81 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  v89 = type metadata accessor for PassiveCollection(0);
  v14 = v89[5];
  sub_22EE3BC84();
  v15 = sub_22EE3C0F4();

  v16 = [v13 fileExistsAtPath_];

  if (v16)
  {
    v17 = type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    swift_allocError();
    v19 = v18;
    v20 = sub_22EE3BCB4();
    (*(*(v20 - 8) + 16))(v19, v1 + v14, v20);
    swift_storeEnumTagMultiPayload();
LABEL_8:
    swift_willThrow();
    goto LABEL_9;
  }

  v21 = [v12 defaultManager];
  v22 = sub_22EE3BC14();
  v97[0] = 0;
  v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v97];

  if (!v23)
  {
    v17 = v97[0];
    sub_22EE3BBA4();

    goto LABEL_8;
  }

  v24 = v97[0];
  v25 = sub_22EE3BC84();
  v27 = v26;
  if (qword_27DA96160 != -1)
  {
LABEL_28:
    swift_once();
  }

  v28 = sub_22EE3BE94();
  v29 = __swift_project_value_buffer(v28, qword_27DA9C8D0);

  sub_22EE3BE54();
  v87 = v29;
  v30 = sub_22EE3BE74();
  v31 = sub_22EE3C574();

  v32 = sub_22EE3C5C4();
  v88 = v1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v97[0] = v34;
    *v33 = 136446210;
    v35 = sub_22ED7DF24(v25, v27, v97);

    *(v33 + 4) = v35;
    v36 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v30, v31, v36, "PassiveCollection", "Output directory: '%{public}s'", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v37 = v34;
    v1 = v88;
    MEMORY[0x2318F8320](v37, -1, -1);
    MEMORY[0x2318F8320](v33, -1, -1);
  }

  else
  {
  }

  v40 = v95;
  v41 = v96;
  (*(v96 + 16))(v9, v11, v95);
  v42 = sub_22EE3BED4();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v82 = sub_22EE3BEC4();
  v45 = *(v41 + 8);
  v96 = v41 + 8;
  v86 = v45;
  v45(v11, v40);
  v46 = *(v1 + v89[6]);
  v48 = *(v46 + 64);
  v25 = v46 + 64;
  v47 = v48;
  v49 = 1 << *(*(v1 + v89[6]) + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v11 = v50 & v47;
  v27 = (v49 + 63) >> 6;
  v90 = *(v1 + v89[6]);

  v51 = 0;
  *&v52 = 136446722;
  v83 = v52;
  v53 = v94;
  while (v11)
  {
    v9 = v51;
LABEL_21:
    v54 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v55 = (v9 << 10) | (16 * v54);
    v56 = *(v90 + 56);
    v57 = (*(v90 + 48) + v55);
    v58 = v57[1];
    v91 = *v57;
    v59 = (v56 + v55);
    v60 = *v59;
    v61 = v59[1];

    sub_22EE3BE54();
    v62 = sub_22EE3BE74();
    v92 = sub_22EE3C584();
    v93 = v62;
    if (sub_22EE3C5C4())
    {
      v63 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v97[0] = v84;
      *v63 = v83;
      v64 = sub_22ED7DF24(v91, v58, v97);

      *(v63 + 4) = v64;
      *(v63 + 12) = 2082;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      v65 = sub_22EE3C074();
      v67 = v66;

      v68 = sub_22ED7DF24(v65, v67, v97);

      *(v63 + 14) = v68;
      *(v63 + 22) = 2082;

      v69 = MEMORY[0x2318F5AD0](v61, MEMORY[0x277D837D0]);
      v71 = v70;

      v72 = sub_22ED7DF24(v69, v71, v97);

      *(v63 + 24) = v72;
      v73 = sub_22EE3BE44();
      v74 = v93;
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v93, v92, v73, "PassiveDataSourceConfiguration", "Including data source '%{public}s':\nOptions:\n%{public}s\nData Categories:\n%{public}s", v63, 0x20u);
      v75 = v84;
      swift_arrayDestroy();
      MEMORY[0x2318F8320](v75, -1, -1);
      v76 = v63;
      v53 = v94;
      MEMORY[0x2318F8320](v76, -1, -1);
    }

    else
    {
    }

    v86(v53, v95);
    v51 = v9;
    v1 = v88;
  }

  while (1)
  {
    v9 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v9 >= v27)
    {
      break;
    }

    v11 = *(v25 + 8 * v9);
    ++v51;
    if (v11)
    {
      goto LABEL_21;
    }
  }

  v77 = *(v1 + v89[8]);

  v79 = v85;
  v80 = sub_22EDD9A58(v78, v1);
  if (v79)
  {

    v17 = v82;
  }

  else
  {
    v17 = v80;
  }

  sub_22EDD97CC();

LABEL_9:
  v38 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t sub_22EDD97CC()
{
  v0 = sub_22EE3BEA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22EE3BE64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA96160 != -1)
  {
    swift_once();
  }

  v10 = sub_22EE3BE94();
  __swift_project_value_buffer(v10, qword_27DA9C8D0);
  v11 = sub_22EE3BE74();
  sub_22EE3BEB4();
  v12 = sub_22EE3C564();
  if (sub_22EE3C5C4())
  {

    sub_22EE3BEE4();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v11, v12, v15, "PassiveCollection", v13, v14, 2u);
    MEMORY[0x2318F8320](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22EDD9A58(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v4 = type metadata accessor for PassiveCollectionResult(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22EDDABA8(0, v9, 0);
    v10 = v17;
    v11 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[0] = *(v11 + 72);
    while (1)
    {
      sub_22EDD725C(v12, v8);
      if (v2)
      {
        break;
      }

      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22EDDABA8(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_22EDDC3D0(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for PassiveCollectionResult);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_22EDD9C4C()
{
  v1 = *v0;
  v2 = sub_22EE3C124();
  v3 = MEMORY[0x2318F59B0](v2);

  return v3;
}

uint64_t sub_22EDD9C88()
{
  v1 = *v0;
  sub_22EE3C124();
  sub_22EE3C1C4();
}

uint64_t sub_22EDD9CDC()
{
  v1 = *v0;
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v2 = sub_22EE3CCC4();

  return v2;
}

uint64_t sub_22EDD9D58(uint64_t a1, id *a2)
{
  result = sub_22EE3C104();
  *a2 = 0;
  return result;
}

uint64_t sub_22EDD9DD0(uint64_t a1, id *a2)
{
  v3 = sub_22EE3C114();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22EDD9E50@<X0>(uint64_t *a1@<X8>)
{
  sub_22EE3C124();
  v2 = sub_22EE3C0F4();

  *a1 = v2;
  return result;
}

uint64_t sub_22EDD9E94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22EE3C124();
  v6 = v5;
  if (v4 == sub_22EE3C124() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22EE3CBA4();
  }

  return v9 & 1;
}

uint64_t sub_22EDD9F1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22EE3C0F4();

  *a2 = v5;
  return result;
}

uint64_t sub_22EDD9F64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22EE3C124();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22EDD9F90(uint64_t a1)
{
  v2 = sub_22EDD4D0C(&qword_27DA94DC0, type metadata accessor for FileAttributeKey);
  v3 = sub_22EDD4D0C(&qword_27DA94EE0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

size_t sub_22EDDA04C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F10, &qword_22EE3FF60);
  v10 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22EDDA224(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
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

void *sub_22EDDA330(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDDA464(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EF0, &qword_22EE40540);
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

unint64_t sub_22EDDA558(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v4 = sub_22EE3CCC4();

  return sub_22EDDA6A4(a1, v4);
}

unint64_t sub_22EDDA5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22EE3CBA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22EDDA6A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22EE3C124();
      v9 = v8;
      if (v7 == sub_22EE3C124() && v9 == v10)
      {
        break;
      }

      v12 = sub_22EE3CBA4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t sub_22EDDA7A8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_22EE3C9C4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_22EDDAA48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22EE3C9B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

size_t sub_22EDDABA8(size_t a1, int64_t a2, char a3)
{
  result = sub_22EDDABC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22EDDABC8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EE8, &unk_22EE3FF30);
  v10 = *(type metadata accessor for PassiveCollectionResult(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassiveCollectionResult(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22EDDADA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v7 = sub_22EE3CCC4();

  return a3(a1, a2, v7);
}

uint64_t sub_22EDDAE24(uint64_t a1)
{
  v44 = type metadata accessor for PassiveTraceInterval(0);
  v46 = *(v44 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22EE3BDA4();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - v8;
  v9 = sub_22EE3BA84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v54 = v13;
  *(v13 + 16) = MEMORY[0x277D84F90];
  v52 = (v13 + 16);
  v48 = v4;
  v56 = swift_allocBox();
  v49 = v14;
  sub_22EE3BA64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = sub_22EE3BDF4();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(v17, 1, 1, v18);
  v20 = v9;
  (*(v10 + 16))(v12, a1, v9);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v15;
  (*(v10 + 32))(v23 + v21, v12, v20);
  *(v23 + v22) = v54;
  aBlock[4] = sub_22EDDC534;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22EDD5384;
  aBlock[3] = &block_descriptor_55;
  v24 = _Block_copy(aBlock);

  v53 = v15;

  LOBYTE(v21) = enumerate_boots();
  _Block_release(v24);
  if (v21)
  {
    v25 = v49;
    swift_beginAccess();
    v26 = v47;
    v27 = v48;
    v28 = *(v47 + 16);
    v29 = v50;
    v28(v50, v25, v48);
    v30 = v51;
    sub_22EE3BA44();
    v31 = sub_22EE3BD64();
    v32 = *(v26 + 8);
    v32(v30, v27);
    v32(v29, v27);
    if (v31)
    {
      v28(v50, v49, v27);
      sub_22EE3BA44();
      v33 = v45;
      sub_22EE3BA54();
      v34 = v43;
      swift_beginAccess();
      sub_22EDDB6E8(v34, v33 + *(v44 + 20), &qword_27DA94DB0, &unk_22EE3FAE0);
      v35 = v52;
      swift_beginAccess();
      v36 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_22EDDA04C(0, v36[2] + 1, 1, v36);
        *v35 = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_22EDDA04C(v38 > 1, v39 + 1, 1, v36);
      }

      v36[2] = v39 + 1;
      sub_22EDDC3D0(v33, v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v39, type metadata accessor for PassiveTraceInterval);
      *v35 = v36;
      swift_endAccess();
    }

    swift_beginAccess();
    v40 = *(v54 + 16);
  }

  else
  {
    v40 = type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
    swift_allocError();
    strcpy(v41, "Unknown error");
    *(v41 + 7) = -4864;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v40;
}

unint64_t sub_22EDDB4DC()
{
  result = qword_27DA94DB8;
  if (!qword_27DA94DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94DB8);
  }

  return result;
}

uint64_t sub_22EDDB544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22EDDB5CC(uint64_t a1)
{
  v2 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EDDB628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22EDDB6B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EDDB6E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22EDDB750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22EE3C9D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_22EDDADA0(v9, v10, a4);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22EDDB85C(uint64_t a1)
{
  v9 = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22EDDC438;
  *(v3 + 24) = v2;
  v8[4] = sub_22EDDC48C;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22EDD6F98;
  v8[3] = &block_descriptor;
  v4 = _Block_copy(v8);

  v5 = ktrace_file_header_iterate(a1, 0, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 || (v7 = v9) == 0)
    {
      v7 = type metadata accessor for PassiveCollectingError(0);
      sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
    }

    return v7;
  }

  return result;
}

uint64_t sub_22EDDBA48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22EDDBB40()
{
  sub_22EDDBBEC();
  if (v0 <= 0x3F)
  {
    sub_22EDDBC1C();
    if (v1 <= 0x3F)
    {
      sub_22EDDBC84(319, &qword_27DA94E00);
      if (v2 <= 0x3F)
      {
        sub_22EDDBC84(319, &qword_27DA94E08);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22EDDBBEC()
{
  result = qword_27DA94DF0;
  if (!qword_27DA94DF0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DA94DF0);
  }

  return result;
}

void sub_22EDDBC1C()
{
  if (!qword_27DA94DF8)
  {
    sub_22EE3BDA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA94DF8);
    }
  }
}

void sub_22EDDBC84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22EE3BCB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22EDDBCF4()
{
  sub_22EE3BA84();
  if (v0 <= 0x3F)
  {
    sub_22EDDBF78(319, &qword_27DA94E10, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22EDDBDA8(uint64_t *a1, int a2)
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

uint64_t sub_22EDDBDF0(uint64_t result, int a2, int a3)
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

void sub_22EDDBE64()
{
  type metadata accessor for PassiveTraceInterval(319);
  if (v0 <= 0x3F)
  {
    sub_22EDDBF78(319, &qword_27DA94E18, type metadata accessor for PassiveCollectionResult.OutputFile, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22EDDBFDC(319, &qword_27DA94E20, &qword_27DA94E28, &qword_22EE3FCF8);
      if (v2 <= 0x3F)
      {
        sub_22EDDBFDC(319, &qword_27DA94E30, &qword_27DA94E38, &qword_22EE3FD00);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22EDDBF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22EDDBFDC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22EE3C5D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22EDDC058()
{
  result = sub_22EE3BCB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22EDDC0FC()
{
  sub_22EE3BA84();
  if (v0 <= 0x3F)
  {
    sub_22EE3BCB4();
    if (v1 <= 0x3F)
    {
      sub_22EDDC220();
      if (v2 <= 0x3F)
      {
        sub_22EDDBF78(319, &qword_27DA94E48, type metadata accessor for PassiveTraceInterval, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PassiveDataSourceFlags(319);
          if (v4 <= 0x3F)
          {
            sub_22EDDC294();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22EDDC220()
{
  if (!qword_27DA94E40)
  {
    v0 = sub_22EE3C084();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA94E40);
    }
  }
}

unint64_t sub_22EDDC294()
{
  result = qword_27DA94EB0;
  if (!qword_27DA94EB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA94EB0);
  }

  return result;
}

uint64_t sub_22EDDC3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_22EDDC438(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = ktrace_chunk_tag(a1);
  if (v4 == 35840)
  {
    *v3 = ktrace_machine_create(a1);
  }

  return v4 != 35840;
}

uint64_t sub_22EDDC48C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22EDDC534(void *a1)
{
  v3 = *(sub_22EE3BA84() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_22EDD4DBC(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_22EDDC5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22EDDC668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 112))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_22EDDC6AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_22EDDC758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
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

uint64_t sub_22EDDC7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
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

uint64_t sub_22EDDC8B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EDDC8D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

void sub_22EDDC938(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22EDDC998()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (*(v0 + 32) > 4u)
    {
      if (v3 == 5)
      {
        sub_22EE3C864();

        v12 = v2;
        v5 = ": provider failed to amend";
        v6 = 0xD000000000000024;
      }

      else
      {
        sub_22EE3C864();

        v12 = v2;
        v5 = "v16@?0@OSLogBootEntry8";
        v6 = 0xD00000000000001ALL;
      }
    }

    else
    {
      if (v3 == 3)
      {
        sub_22EE3C864();

        v12 = v2;
        v4 = ": no principal class found for provider";
      }

      else
      {
        v10 = v0[2];
        v9 = v0[3];
        v12 = 0;
        sub_22EE3C864();
        MEMORY[0x2318F58F0](v2, v1);
        MEMORY[0x2318F58F0](0x207373616C63203ALL, 0xE900000000000060);
        MEMORY[0x2318F58F0](v10, v9);
        v4 = "' does not conform to provider protocol";
      }

      v5 = (v4 - 32);
      v6 = 0xD000000000000027;
    }

    goto LABEL_16;
  }

  if (*(v0 + 32))
  {
    if (v3 == 1)
    {
      sub_22EE3C864();

      v12 = v2;
      v5 = " bundle of provider";
      v6 = 0xD000000000000014;
LABEL_16:
      v8 = v5 | 0x8000000000000000;
      goto LABEL_17;
    }

    sub_22EE3C864();

    v12 = v2;
    v7 = ": could not load bundle of provider";
  }

  else
  {
    sub_22EE3C864();

    v12 = v2;
    v7 = ": experimental provider not allowed";
  }

  v8 = (v7 - 32) | 0x8000000000000000;
  v6 = 0xD000000000000023;
LABEL_17:
  MEMORY[0x2318F58F0](v6, v8);
  return v12;
}

char *sub_22EDDCC20(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6;
    v25[0] = *(v6 - 1);
    v25[1] = v8;

    a1(&v21, v25);
    if (v3)
    {
      break;
    }

    if (*(&v21 + 1))
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22EDE17D4(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_22EDE17D4((v9 > 1), v10 + 1, 1, v7);
      }

      v15 = v19;
      v16 = v20;
      v11 = v17;
      v14 = v18;
      *(v7 + 2) = v10 + 1;
      v12 = &v7[64 * v10];
      *(v12 + 4) = v15;
      *(v12 + 5) = v16;
      *(v12 + 2) = v11;
      *(v12 + 3) = v14;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      sub_22EDDBA48(&v17, &qword_27DA95028, &qword_22EE40550);
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

double sub_22EDDCDD0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v3 = sub_22EE3BBC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22EE3BCB4();
  v31 = *(v32 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  *&v39 = *a1;
  *(&v39 + 1) = v11;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_22ED80FA0();
  sub_22EE3BCA4();
  (*(v4 + 8))(v7, v3);
  v12 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v13 = sub_22EE3BC14();
  v14 = [v12 initWithURL_];

  v15 = sub_22EE3C0F4();
  v16 = [v15 stringByDeletingPathExtension];

  v17 = sub_22EE3C124();
  v19 = v18;

  *&v39 = sub_22EE3BC84();
  *(&v39 + 1) = v20;
  strcpy(v38, "AppleInternal");
  v38[7] = -4864;
  LOBYTE(v15) = sub_22EE3C6A4();

  if (v15)
  {
    *&v39 = v17;
    *(&v39 + 1) = v19;
    MEMORY[0x2318F58F0](0x6E7265746E492820, 0xEB00000000296C61);
    v19 = *(&v39 + 1);
    v17 = v39;
  }

  if (!v14)
  {
    (*(v31 + 8))(v10, v32);
LABEL_9:

    result = 0.0;
    v26 = v33;
    v33[2] = 0u;
    v26[3] = 0u;
    *v26 = 0u;
    v26[1] = 0u;
    return result;
  }

  v21 = [v14 infoDictionary];
  if (!v21)
  {
    (*(v31 + 8))(v10, v32);

    goto LABEL_9;
  }

  v22 = v21;
  v23 = sub_22EE3C064();

  sub_22EDE27BC(v17, v19, v23, &v39);
  v34 = v39;
  v35 = v40;
  v36 = v41;
  v37 = v42;

  (*(v31 + 8))(v10, v32);
  if (v40)
  {
    sub_22EDE4390(&v39);
    result = 0.0;
    v25 = v33;
    *v33 = 0u;
    v25[1] = 0u;
    v25[2] = 0u;
    v25[3] = 0u;
  }

  else
  {
    v27 = v35;
    v28 = v33;
    *v33 = v34;
    v28[1] = v27;
    result = *&v36;
    v29 = v37;
    v28[2] = v36;
    v28[3] = v29;
  }

  return result;
}

uint64_t sub_22EDDD1C8(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_22EDE17D4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22EDDD324(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000010, 0x800000022EE48090, 0x72656469766F7250, 0xE900000000000073);
}

char *sub_22EDDD3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v57 = a2;
  v49 = a4;
  v6 = sub_22EE3BCB4();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v47 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v47 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v47 - v13;
  MEMORY[0x28223BE20](v12);
  v55 = &v47 - v14;
  has_internal_content = os_variant_has_internal_content();
  v48 = has_internal_content & a3;
  result = sub_22EDE2D50(has_internal_content & a3);
  v50 = *(result + 2);
  if (v50)
  {
    v17 = 0;
    v53 = v58 + 16;
    v54 = result;
    v59 = v58 + 8;
    v51 = a1;
    v52 = v6;
    while (1)
    {
      if (v17 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v18 = v58;
      v19 = v55;
      (*(v58 + 16))(v55, &result[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17], v6);
      v20 = v56;
      v21 = v57;
      sub_22EE3BC44();
      v22 = *(v18 + 8);
      v22(v19, v6);
      sub_22EE3BC54();
      v22(v20, v6);
      v23 = objc_opt_self();
      v24 = v21;
      v25 = [v23 defaultManager];
      sub_22EE3BC94();
      v26 = sub_22EE3C0F4();

      v27 = [v25 fileExistsAtPath_];

      if (v27)
      {

        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
        v35 = v49;
        v36 = v52;
        *v49 = v51;
        v35[1] = v24;
        (*(v58 + 32))(v35 + v34, v60, v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
        swift_storeEnumTagMultiPayload();
      }

      v28 = v22;
      v29 = [v23 defaultManager];
      v30 = v51;
      v31 = sub_22EE3C0F4();
      v32 = [v29 fileExistsAtPath_];

      if (v32)
      {
        break;
      }

      ++v17;
      v6 = v52;
      v22(v60, v52);
      a1 = v30;
      result = v54;
      if (v50 == v17)
      {
        goto LABEL_7;
      }
    }

    v37 = v52;
    if (v48)
    {
      v38 = v56;
      sub_22EE3BBF4();
      v39 = v47;
      sub_22EE3BC24();
      v40 = sub_22EE3BC04();
      v42 = v41;
      v28(v39, v37);
      v28(v60, v37);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
      v44 = v49;
      *v49 = v40;
      v44[1] = v42;
      (*(v58 + 32))(v44 + v43, v38, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
      return swift_storeEnumTagMultiPayload();
    }

    v28(v60, v52);
    v45 = v49;
    v46 = v57;
    *v49 = v30;
    v45[1] = v46;
    v45[2] = 0;
    v45[3] = 0;
    *(v45 + 32) = 0;
  }

  else
  {
LABEL_7:

    v33 = v49;
    *v49 = a1;
    v33[1] = v57;
    v33[2] = 0;
    v33[3] = 0;
    *(v33 + 32) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_22EDDD898@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v105 = a7;
  v109 = a4;
  v110 = a5;
  v104 = a3;
  v116 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v100 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  v111 = sub_22EE3BCB4();
  v18 = *(v111 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v111);
  v107 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v100 - v22;
  v108 = a1;
  sub_22EDDD3B0(a1, a2, a6 & 1, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22EDE363C(v13, v17);
    v31 = *(v17 + 1);

    (*(v18 + 32))(v23, &v17[*(v14 + 48)], v111);
    if (qword_27DA965C0 != -1)
    {
      swift_once();
    }

    v32 = sub_22EE3BF14();
    v33 = __swift_project_value_buffer(v32, qword_27DA9C8E8);
    v34 = v107;
    (*(v18 + 16))(v107, v23, v111);

    v35 = sub_22EE3BEF4();
    v36 = sub_22EE3C4C4();

    v37 = os_log_type_enabled(v35, v36);
    v103 = a2;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v101 = v18;
      v39 = v38;
      v40 = swift_slowAlloc();
      v100 = v33;
      v41 = v23;
      v42 = v40;
      v114[0] = v40;
      *v39 = 136446466;
      *(v39 + 4) = sub_22ED7DF24(v108, a2, v114);
      *(v39 + 12) = 2082;
      v43 = sub_22EE3BC94();
      v45 = v44;
      v102 = v101[1];
      v102(v34, v111);
      v46 = sub_22ED7DF24(v43, v45, v114);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_22ED7A000, v35, v36, "loading provider %{public}s's bundle at %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      v47 = v42;
      v23 = v41;
      MEMORY[0x2318F8320](v47, -1, -1);
      MEMORY[0x2318F8320](v39, -1, -1);
    }

    else
    {

      v102 = *(v18 + 8);
      v102(v34, v111);
    }

    v48 = v109;
    sub_22EE3BC94();
    v49 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v50 = sub_22EE3C0F4();

    v51 = [v49 initWithPath_];

    if (v51)
    {
      v52 = [v51 load];
      v53 = v103;
      v54 = v108;
      if ((v52 & 1) == 0)
      {

        v70 = sub_22EE3BEF4();
        v71 = sub_22EE3C4C4();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = v51;
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v114[0] = v74;
          *v73 = 136315138;
          *(v73 + 4) = sub_22ED7DF24(v54, v53, v114);
          _os_log_impl(&dword_22ED7A000, v70, v71, "failed to load %s's bundle", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          MEMORY[0x2318F8320](v74, -1, -1);
          v75 = v73;
          v51 = v72;
          MEMORY[0x2318F8320](v75, -1, -1);
        }

        v114[0] = 0;
        v114[1] = 0xE000000000000000;
        sub_22EE3C864();

        strcpy(v114, "cannot load ");
        BYTE5(v114[1]) = 0;
        HIWORD(v114[1]) = -5120;
        MEMORY[0x2318F58F0](v54, v53);

        MEMORY[0x2318F58F0](0x656469766F727020, 0xE900000000000072);
        v76 = sub_22EE3C0F4();

        [v110 warnWithMessage_];
        swift_unknownObjectRelease();

        result = (v102)(v23, v111);
        goto LABEL_20;
      }

      if ([v51 principalClass])
      {
        ObjCClassMetadata = swift_getObjCClassMetadata();
        v113 = &unk_2843A8F28;
        if (swift_dynamicCastTypeToObjCProtocolConditional())
        {
          v101 = v51;
          v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());

          swift_unknownObjectRetain();
          v57 = [v56 init];

          v107 = v57;
          swift_unknownObjectRetain();
          v58 = sub_22EE3BEF4();
          v59 = sub_22EE3C4C4();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v114[0] = v61;
            *v60 = 136446210;
            *(v60 + 4) = sub_22ED7DF24(v54, v53, v114);
            _os_log_impl(&dword_22ED7A000, v58, v59, "calling provider %{public}s's shouldInitialize", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v61);
            v62 = v61;
            v48 = v109;
            MEMORY[0x2318F8320](v62, -1, -1);
            MEMORY[0x2318F8320](v60, -1, -1);
          }

          v63 = sub_22EE3C054();

          v114[0] = 0;
          v64 = [v107 shouldInitializeWithLogger:v110 machine:v104 options:v63 error:v114];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if (v64)
          {
            v65 = v114[0];

            result = (v102)(v23, v111);
            v66 = v107;
            v67 = v108;
LABEL_21:
            v77 = v105;
            *v105 = v67;
            v77[1] = v53;
            v77[2] = v66;
            v77[3] = v110;
            v77[4] = v48;
            goto LABEL_26;
          }

          v84 = v114[0];
          v85 = sub_22EE3BBA4();

          swift_willThrow();
          v106 = 0;

          v86 = v85;
          v87 = v85;
          v88 = sub_22EE3BEF4();
          v89 = sub_22EE3C4B4();

          v90 = os_log_type_enabled(v88, v89);
          v91 = v108;
          if (v90)
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v104 = v23;
            v94 = v93;
            v114[0] = v93;
            *v92 = 136446466;
            v95 = sub_22ED7DF24(v91, v53, v114);

            *(v92 + 4) = v95;
            *(v92 + 12) = 2082;
            v112 = v87;
            v96 = v87;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
            v97 = sub_22EE3C164();
            v99 = sub_22ED7DF24(v97, v98, v114);

            *(v92 + 14) = v99;
            _os_log_impl(&dword_22ED7A000, v88, v89, "\tprovider %{public}s should not initialize: %{public}s", v92, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2318F8320](v94, -1, -1);
            MEMORY[0x2318F8320](v92, -1, -1);

            v102(v104, v111);
          }

          else
          {

            v102(v23, v111);
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

LABEL_20:
          v67 = 0;
          v53 = 0;
          v66 = 0;
          v110 = 0;
          v48 = 0;
          goto LABEL_21;
        }

        v114[0] = ObjCClassMetadata;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FC8, &unk_22EE400C0);
        v80 = sub_22EE3C164();
        v82 = v81;
        sub_22EDE35E8();
        swift_allocError();
        *v78 = v54;
        *(v78 + 8) = v53;
        *(v78 + 16) = v80;
        *(v78 + 24) = v82;
        v79 = 4;
      }

      else
      {

        sub_22EDE35E8();
        swift_allocError();
        *v78 = v54;
        *(v78 + 8) = v53;
        *(v78 + 16) = 0;
        *(v78 + 24) = 0;
        v79 = 3;
      }

      *(v78 + 32) = v79;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      sub_22EDE35E8();
      swift_allocError();
      v68 = v103;
      *v69 = v108;
      *(v69 + 8) = v68;
      *(v69 + 16) = 0;
      *(v69 + 24) = 0;
      *(v69 + 32) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    result = (v102)(v23, v111);
    goto LABEL_26;
  }

  v25 = v13[1];
  v26 = v13[2];
  v27 = v13[3];
  v28 = *(v13 + 32);
  v114[0] = *v13;
  v24 = v114[0];
  v114[1] = v25;
  v114[2] = v26;
  v114[3] = v27;
  v115 = v28;
  sub_22EDE35E8();
  swift_willThrowTypedImpl();
  swift_allocError();
  *v29 = v24;
  *(v29 + 8) = v25;
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  result = swift_unknownObjectRelease();
LABEL_26:
  v83 = *MEMORY[0x277D85DE8];
  return result;
}

id ProviderList.__allocating_init(machine:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC6ktrace12ProviderList_providers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC6ktrace12ProviderList_machine] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProviderList.init(machine:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6ktrace12ProviderList_providers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6ktrace12ProviderList_machine] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Bool __swiftcall ProviderList.contains(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == countAndFlagsBits && *v6 == object)
    {
      break;
    }

    v6 += 5;
  }

  while ((sub_22EE3CBA4() & 1) == 0);
  return v7 != 0;
}

uint64_t sub_22EDDE6A8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  v12 = *(v5 + OBJC_IVAR____TtC6ktrace12ProviderList_machine);

  swift_unknownObjectRetain();
  result = sub_22EDDD898(a1, a2, v12, a3, a4, a5, &v28);
  if (!v6)
  {
    v14 = v29;
    if (v29)
    {
      v15 = v28;
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v33[0] = v28;
      v33[1] = v29;
      v34 = v32;
      v19 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
      swift_beginAccess();
      v20 = *(v5 + v19);
      sub_22EDE3770(v33, v27);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_22EDE3700(&v34, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v19) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_22EDE18E0(0, *(v20 + 2) + 1, 1, v20);
        *(v5 + v19) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v26 = sub_22EDE18E0((v22 > 1), v23 + 1, 1, v20);
        v24 = v23 + 1;
        v20 = v26;
      }

      *(v20 + 2) = v24;
      v25 = &v20[40 * v23];
      *(v25 + 4) = v15;
      *(v25 + 5) = v14;
      *(v25 + 6) = v16;
      *(v25 + 7) = v17;
      *(v25 + 8) = v18;
      *(v5 + v19) = v20;
      swift_endAccess();
      sub_22EDE37CC(v33);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_22EDDBA48(&v34, &qword_27DA94FD8, qword_22EE400D0);
    }
  }

  return result;
}

uint64_t ProviderList.shouldStartTracing(configuration:)(uint64_t a1)
{
  v68 = a1;
  v77 = *MEMORY[0x277D85DE8];
  v69 = sub_22EE3BE64();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v7);
  v67 = *(result + 16);
  if (v67)
  {
    v64 = v6;
    v60[1] = v2;
    v66 = (v3 + 8);

    v10 = 0;
    v11 = (v9 + 64);
    *&v12 = 136446210;
    v61 = v12;
    *&v12 = 136315138;
    v63 = v12;
    v65 = v9;
    while (1)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
      }

      v70 = v10;
      v14 = *(v11 - 4);
      v13 = *(v11 - 3);
      v15 = *(v11 - 2);
      v16 = *(v11 - 1);
      v17 = *v11;
      v18 = qword_27DA965C0;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = sub_22EE3BF14();
      v20 = __swift_project_value_buffer(v19, qword_27DA9C8E8);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v62 = v20;
      v21 = sub_22EE3BEF4();
      v22 = sub_22EE3C4C4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v23 = os_log_type_enabled(v21, v22);
      v71 = v17;
      v72 = v16;
      if (v23)
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v75 = v25;
        *v24 = v61;

        v26 = sub_22ED7DF24(v14, v13, &v75);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_22ED7A000, v21, v22, "calling provider %{public}s's shouldStartTracing", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x2318F8320](v25, -1, -1);
        MEMORY[0x2318F8320](v24, -1, -1);
      }

      v27 = v13;
      if (qword_27DA965C8 != -1)
      {
        swift_once();
      }

      v28 = sub_22EE3BE94();
      __swift_project_value_buffer(v28, qword_27DA9C900);
      v29 = v64;
      sub_22EE3BE54();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v75 = v31;
      *v30 = v63;

      v32 = sub_22ED7DF24(v14, v27, &v75);
      v73 = v27;

      *(v30 + 4) = v32;
      v33 = sub_22EE3BE74();
      v34 = sub_22EE3C574();
      v35 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v33, v34, v35, "01: shouldStartTracing", "%s", v30, 0xCu);
      v74 = 0;
      if (![v15 shouldStartTracingWithConfiguration:v68 error:&v74])
      {
        break;
      }

      v10 = v70 + 1;
      v36 = v74;
      v37 = sub_22EE3C564();
      v38 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v33, v37, v38, "01: shouldStartTracing", "%s", v30, 0xCu);

      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2318F8320](v31, -1, -1);
      MEMORY[0x2318F8320](v30, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*v66)(v29, v69);
      v11 += 5;
      v9 = v65;
      if (v67 == v10)
      {

        goto LABEL_16;
      }
    }

    v68 = v14;
    v39 = v74;
    v40 = sub_22EE3BBA4();

    swift_willThrow();

    (*v66)(v29, v69);
    v75 = v40;
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    v42 = sub_22EE3C164();
    v44 = v43;

    swift_unknownObjectRetain();
    v45 = v72;
    swift_unknownObjectRetain();

    v46 = sub_22EE3BEF4();
    v47 = sub_22EE3C4B4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    LODWORD(v70) = v47;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v69 = v42;
      v49 = v48;
      v50 = swift_slowAlloc();
      v67 = v15;
      v51 = v44;
      v52 = v50;
      v75 = v50;
      *v49 = 136446466;
      v53 = v73;

      v54 = v45;
      v55 = sub_22ED7DF24(v68, v53, &v75);

      *(v49 + 4) = v55;
      v45 = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_22ED7DF24(v69, v51, &v75);
      _os_log_impl(&dword_22ED7A000, v46, v70, "provider %{public}s disallowing tracing: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      v56 = v52;
      v44 = v51;
      MEMORY[0x2318F8320](v56, -1, -1);
      v57 = v49;
      v42 = v69;
      MEMORY[0x2318F8320](v57, -1, -1);
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    swift_unknownObjectRetain();
    sub_22EE3C864();

    v75 = 0xD00000000000001ELL;
    v76 = 0x800000022EE480D0;
    MEMORY[0x2318F58F0](v42, v44);

    v58 = sub_22EE3C0F4();

    [v45 failWithReason_];
    swift_unknownObjectRelease();

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_16:
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22EDDF0A0(uint64_t a1)
{
  v76 = a1;
  v98[4] = *MEMORY[0x277D85DE8];
  v77 = sub_22EE3BE64();
  v2 = *(v77 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v77);
  v5 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v7 = *(*(v1 + v6) + 16);
  v78 = *(v1 + v6);

  v75 = v7;
  if (!v7)
  {
LABEL_15:

    goto LABEL_25;
  }

  v9 = 0;
  v73 = (v2 + 8);
  v10 = (v78 + 64);
  *&v8 = 136446210;
  v70 = v8;
  *&v8 = 136315138;
  v72 = v8;
  v74 = v5;
  while (1)
  {
    if (v9 >= *(v78 + 16))
    {
      __break(1u);
    }

    v11 = *(v10 - 4);
    v12 = *(v10 - 3);
    v13 = *(v10 - 2);
    v14 = *(v10 - 1);
    v15 = *v10;
    v91 = v11;
    v92 = v12;
    v93 = v13;
    v94 = v14;
    v95 = v15;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (!v16)
    {

      swift_unknownObjectRetain();

LABEL_18:

      sub_22EDE35E8();
      swift_allocError();
      *v45 = v11;
      *(v45 + 8) = v12;
      *(v45 + 16) = 0;
      *(v45 + 24) = 0;
      *(v45 + 32) = 5;
      swift_willThrow();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_25;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    if (![v16 respondsToSelector_])
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v89 = v11;
    v87 = sel_shouldAmendWithFile_error_;
    v86 = [v16 methodForSelector_];
    if (qword_27DA965C0 != -1)
    {
      swift_once();
    }

    v80 = v10;
    v17 = sub_22EE3BF14();
    v18 = __swift_project_value_buffer(v17, qword_27DA9C8E8);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v71 = v18;
    v19 = sub_22EE3BEF4();
    v20 = sub_22EE3C4C4();
    v83 = v15;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v21 = os_log_type_enabled(v19, v20);
    v84 = v14;
    v88 = v13;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v96 = v23;
      *v22 = v70;

      v24 = sub_22ED7DF24(v89, v12, &v96);
      v25 = v12;
      v26 = v24;
      v27 = v25;

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22ED7A000, v19, v20, "calling provider %{public}s's shouldAmend", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2318F8320](v23, -1, -1);
      MEMORY[0x2318F8320](v22, -1, -1);
    }

    else
    {
      v27 = v12;
    }

    v81 = v9;
    v28 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v29 = sub_22EE3C0F4();
    v85 = [v28 initWithDomain:v29 code:1 userInfo:0];

    if (qword_27DA965C8 != -1)
    {
      swift_once();
    }

    v30 = sub_22EE3BE94();
    __swift_project_value_buffer(v30, qword_27DA9C900);
    v31 = v74;
    sub_22EE3BE54();
    v32 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v98[0] = v79;
    *v32 = v72;

    v33 = v89;
    v34 = sub_22ED7DF24(v89, v27, v98);
    v82 = v27;

    *(v32 + 4) = v34;
    v35 = sub_22EE3BE74();
    v36 = sub_22EE3C574();
    v37 = v31;
    v38 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v35, v36, v38, "01: shouldAmend", "%s", v32, 0xCu);
    v39 = v85;
    v96 = v85;
    v40 = v76;
    v41 = v86(v88, v87, v76, &v96);
    v87 = v96;

    sub_22ED7DFF0(v40);
    if (!v41)
    {
      break;
    }

    v9 = v81 + 1;
    v42 = sub_22EE3C564();
    v43 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v35, v42, v43, "01: shouldAmend", "%s", v32, 0xCu);

    v44 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x2318F8320](v44, -1, -1);
    MEMORY[0x2318F8320](v32, -1, -1);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    (*v73)(v37, v77);

    v10 = v80 + 5;
    if (v75 == v9)
    {
      goto LABEL_15;
    }
  }

  v85 = v35;
  sub_22EDE35E8();
  v46 = swift_allocError();
  v47 = v82;
  *v48 = v33;
  *(v48 + 8) = v47;
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = 6;

  if (v87)
  {
    v49 = v87;

    v46 = v49;
  }

  v69[1] = v46;
  ErrorValue = swift_getErrorValue();
  v51 = v90;
  v52 = *(v90 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](ErrorValue);
  v55 = v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v55);
  v86 = sub_22EE3CBF4();
  v57 = v56;
  (*(v52 + 8))(v55, v51);
  swift_unknownObjectRetain();

  v58 = v84;
  swift_unknownObjectRetain();

  v59 = sub_22EE3BEF4();
  v60 = sub_22EE3C4B4();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = v58;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v96 = v63;
    *v62 = 136446466;
    v64 = v89;
    *(v62 + 4) = sub_22ED7DF24(v89, v47, &v96);
    *(v62 + 12) = 2082;
    *(v62 + 14) = sub_22ED7DF24(v86, v57, &v96);
    _os_log_impl(&dword_22ED7A000, v59, v60, "provider %{public}s cannot amend: %{public}s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v63, -1, -1);
    v65 = v62;
    v58 = v61;
    MEMORY[0x2318F8320](v65, -1, -1);

    v66 = v74;
  }

  else
  {

    v66 = v74;
    v64 = v89;
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  sub_22EE3C864();

  v96 = v64;
  v97 = v47;
  MEMORY[0x2318F58F0](0xD000000000000012, 0x800000022EE48100);
  MEMORY[0x2318F58F0](v86, v57);

  v67 = sub_22EE3C0F4();

  [v58 failWithReason_];

  swift_willThrow();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();

  (*v73)(v66, v77);
LABEL_25:
  v68 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EDDFCB0(uint64_t a1, SEL *a2, const char *a3, const char *a4)
{
  v44 = a4;
  v40 = a3;
  v50 = a2;
  v46 = a1;
  v45 = sub_22EE3BE64();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v4 + v8);
  v10 = *(result + 16);
  if (v10)
  {
    v42 = (v5 + 8);

    v11 = (v38 + 64);
    v12 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v13 = 136446210;
    v39 = v13;
    *&v13 = 136315138;
    v41 = v13;
    do
    {
      v25 = *(v11 - 4);
      v24 = *(v11 - 3);
      v27 = *(v11 - 2);
      v26 = *(v11 - 1);
      v28 = *v11;
      v51[4] = v25;
      v51[5] = v24;
      v51[6] = v27;
      v51[7] = v26;
      v51[8] = v28;
      if ([v27 v12[353]])
      {
        v49 = v10;
        v29 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = sub_22EE3BF14();
        __swift_project_value_buffer(v30, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v31 = sub_22EE3BEF4();
        v32 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v33 = os_log_type_enabled(v31, v32);
        v47 = v28;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v51[0] = v35;
          *v34 = v39;

          v36 = sub_22ED7DF24(v25, v24, v51);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_22ED7A000, v31, v32, v40, v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x2318F8320](v35, -1, -1);
          MEMORY[0x2318F8320](v34, -1, -1);
        }

        v48 = v26;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v14 = sub_22EE3BE94();
        __swift_project_value_buffer(v14, qword_27DA9C900);
        v15 = v43;
        sub_22EE3BE54();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v51[0] = v17;
        *v16 = v41;

        v18 = sub_22ED7DF24(v25, v24, v51);

        *(v16 + 4) = v18;
        v19 = sub_22EE3BE74();
        LOBYTE(v18) = sub_22EE3C574();
        v20 = sub_22EE3BE44();
        v21 = v44;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v19, v18, v20, v44, "%s", v16, 0xCu);
        v22 = v46;
        [v27 *v50];
        sub_22ED7DFF0(v22);
        LOBYTE(v22) = sub_22EE3C564();
        v23 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v19, v22, v23, v21, "%s", v16, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x2318F8320](v17, -1, -1);
        MEMORY[0x2318F8320](v16, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*v42)(v15, v45);
        v10 = v49;
        v12 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
      }

      v11 += 5;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_22EDE01E8(uint64_t a1, SEL *a2, const char *a3, const char *a4)
{
  v43 = a4;
  v39 = a3;
  v49 = a2;
  v45 = a1;
  v44 = sub_22EE3BE64();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v4 + v8);
  v10 = *(result + 16);
  if (v10)
  {
    v41 = (v5 + 8);

    v11 = (v37 + 64);
    v12 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v13 = 136446210;
    v38 = v13;
    *&v13 = 136315138;
    v40 = v13;
    do
    {
      v24 = *(v11 - 4);
      v23 = *(v11 - 3);
      v25 = *(v11 - 2);
      v26 = *(v11 - 1);
      v27 = *v11;
      if ([v25 v12[353]])
      {
        v48 = v10;
        v28 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = sub_22EE3BF14();
        __swift_project_value_buffer(v29, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v30 = sub_22EE3BEF4();
        v31 = sub_22EE3C4C4();

        v47 = v26;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v32 = v25;
        if (os_log_type_enabled(v30, v31))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v50 = v34;
          *v33 = v38;

          v35 = sub_22ED7DF24(v24, v23, &v50);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_22ED7A000, v30, v31, v39, v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x2318F8320](v34, -1, -1);
          MEMORY[0x2318F8320](v33, -1, -1);
        }

        v46 = v27;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v14 = sub_22EE3BE94();
        __swift_project_value_buffer(v14, qword_27DA9C900);
        v15 = v42;
        sub_22EE3BE54();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v50 = v17;
        *v16 = v40;

        v18 = sub_22ED7DF24(v24, v23, &v50);

        *(v16 + 4) = v18;
        v19 = sub_22EE3BE74();
        LOBYTE(v18) = sub_22EE3C574();
        v20 = sub_22EE3BE44();
        v21 = v43;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v19, v18, v20, v43, "%s", v16, 0xCu);
        [v32 *v49];
        LOBYTE(v18) = sub_22EE3C564();
        v22 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v19, v18, v22, v21, "%s", v16, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x2318F8320](v17, -1, -1);
        MEMORY[0x2318F8320](v16, -1, -1);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease_n();
        (*v41)(v15, v44);
        v12 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        v10 = v48;
      }

      v11 += 5;
      --v10;
    }

    while (v10);
  }

  return result;
}

Swift::Void __swiftcall ProviderList.postprocessingComplete(file:)(Swift::OpaquePointer file)
{
  rawValue = file._rawValue;
  v39 = sub_22EE3BE64();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v6 = *(*(v1 + v5) + 16);
  if (v6)
  {
    v36 = (v2 + 8);

    v7 = (v33 + 64);
    v8 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v9 = 136446210;
    v34 = v9;
    *&v9 = 136315138;
    v35 = v9;
    do
    {
      v20 = *(v7 - 4);
      v19 = *(v7 - 3);
      v22 = *(v7 - 2);
      v21 = *(v7 - 1);
      v23 = *v7;
      v42[4] = v20;
      v42[5] = v19;
      v42[6] = v22;
      v42[7] = v21;
      v42[8] = v23;
      if ([v22 v8[353]])
      {
        v24 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = sub_22EE3BF14();
        __swift_project_value_buffer(v25, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v26 = sub_22EE3BEF4();
        v27 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v28 = os_log_type_enabled(v26, v27);
        v40 = v23;
        v41 = v21;
        if (v28)
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v42[0] = v30;
          *v29 = v34;

          v31 = sub_22ED7DF24(v20, v19, v42);

          *(v29 + 4) = v31;
          _os_log_impl(&dword_22ED7A000, v26, v27, "calling provider %{public}s's postprocessingComplete", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          MEMORY[0x2318F8320](v30, -1, -1);
          MEMORY[0x2318F8320](v29, -1, -1);
        }

        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v10 = sub_22EE3BE94();
        __swift_project_value_buffer(v10, qword_27DA9C900);
        v11 = v37;
        sub_22EE3BE54();
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v42[0] = v13;
        *v12 = v35;

        v14 = sub_22ED7DF24(v20, v19, v42);

        *(v12 + 4) = v14;
        v15 = sub_22EE3BE74();
        LOBYTE(v14) = sub_22EE3C574();
        v16 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v15, v14, v16, "08: postprocessingComplete", "%s", v12, 0xCu);
        v17 = rawValue;
        [v22 postprocessingCompleteWithFile_];
        sub_22ED7DFF0(v17);
        LOBYTE(v17) = sub_22EE3C564();
        v18 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v15, v17, v18, "08: postprocessingComplete", "%s", v12, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x2318F8320](v13, -1, -1);
        MEMORY[0x2318F8320](v12, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*v36)(v11, v39);
        v8 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
      }

      v7 += 5;
      --v6;
    }

    while (v6);
  }
}

uint64_t ProviderList.willFinish(catalog:file:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v41 = a1;
  v40 = sub_22EE3BE64();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v2 + v6);
  v8 = *(result + 16);
  if (v8)
  {
    v37 = (v3 + 8);

    v9 = (v34 + 64);
    *&v10 = 136446210;
    v35 = v10;
    *&v10 = 136315138;
    v36 = v10;
    do
    {
      v45 = v8;
      v12 = *(v9 - 4);
      v11 = *(v9 - 3);
      v13 = *(v9 - 2);
      v14 = *(v9 - 1);
      v15 = *v9;
      v46[4] = v12;
      v46[5] = v11;
      v46[6] = v13;
      v46[7] = v14;
      v46[8] = v15;
      v16 = qword_27DA965C0;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = sub_22EE3BF14();
      __swift_project_value_buffer(v17, qword_27DA9C8E8);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v18 = sub_22EE3BEF4();
      v19 = sub_22EE3C4C4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v20 = os_log_type_enabled(v18, v19);
      v43 = v14;
      if (v20)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v46[0] = v22;
        *v21 = v35;

        v23 = sub_22ED7DF24(v12, v11, v46);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_22ED7A000, v18, v19, "calling provider %{public}s's willFinish", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x2318F8320](v22, -1, -1);
        MEMORY[0x2318F8320](v21, -1, -1);
      }

      v42 = v15;
      v44 = v13;
      if (qword_27DA965C8 != -1)
      {
        swift_once();
      }

      v24 = sub_22EE3BE94();
      __swift_project_value_buffer(v24, qword_27DA9C900);
      v25 = v38;
      sub_22EE3BE54();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46[0] = v27;
      *v26 = v36;

      v28 = sub_22ED7DF24(v12, v11, v46);

      *(v26 + 4) = v28;
      v29 = sub_22EE3BE74();
      LOBYTE(v28) = sub_22EE3C574();
      v30 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v29, v28, v30, "09: willFinish", "%s", v26, 0xCu);
      v31 = v39;
      [v44 willFinishWithCatalog:v41 file:v39];
      sub_22ED7DFF0(v31);
      LOBYTE(v31) = sub_22EE3C564();
      v32 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v29, v31, v32, "09: willFinish", "%s", v26, 0xCu);

      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2318F8320](v27, -1, -1);
      MEMORY[0x2318F8320](v26, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*v37)(v25, v40);
      v9 += 5;
      v8 = v45 - 1;
    }

    while (v45 != 1);
  }

  return result;
}

id ProviderList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProviderList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ktrace_session_provide(_TtC6ktrace12ProviderList *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v9 = sub_22EE3C064();
  swift_unknownObjectRetain();
  v10 = ktrace_session_provide(_:_:_:_:_:)(a1, a2, v9, a4, a5);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t ktrace_session_provide(_:_:_:_:_:)(_TtC6ktrace12ProviderList *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  _session_ensure_providers(a1);
  v9 = _session_providers(a1);
  v10 = sub_22EE3C214();
  v12 = v11;
  v13 = *&v9[OBJC_IVAR____TtC6ktrace12ProviderList_machine];

  swift_unknownObjectRetain();
  sub_22EDDD898(v10, v12, v13, a3, a4, a5, &v32);
  v14 = v33;
  if (v33)
  {
    v15 = v32;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v37[0] = v32;
    v37[1] = v33;
    v38 = v36;
    v19 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
    swift_beginAccess();
    v20 = *&v9[v19];
    sub_22EDE3770(v37, v31);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_22EDE3700(&v38, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_22EDE18E0(0, *(v20 + 2) + 1, 1, v20);
      *&v9[v19] = v20;
    }

    v22 = *(v20 + 2);
    v23 = *(v20 + 3);
    v24 = v22 + 1;
    if (v22 >= v23 >> 1)
    {
      v30 = v22 + 1;
      v27 = v20;
      v28 = *(v20 + 2);
      v29 = sub_22EDE18E0((v23 > 1), v22 + 1, 1, v27);
      v22 = v28;
      v24 = v30;
      v20 = v29;
    }

    *(v20 + 2) = v24;
    v25 = &v20[40 * v22];
    *(v25 + 4) = v15;
    *(v25 + 5) = v14;
    *(v25 + 6) = v16;
    *(v25 + 7) = v17;
    *(v25 + 8) = v18;
    *&v9[v19] = v20;
    swift_endAccess();
    sub_22EDE37CC(v37);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_22EDDBA48(&v38, &qword_27DA94FD8, qword_22EE400D0);
  }

  return 0;
}

char *sub_22EDE14DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95040, &qword_22EE40568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22EDE15FC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95020, &qword_22EE40548);
  v10 = *(sub_22EE3BCB4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22EE3BCB4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22EDE17D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95010, &qword_22EE40530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22EDE18E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95018, &qword_22EE40538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDE1A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95008, &unk_22EE41EC0);
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

unint64_t sub_22EDE1B04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v6 = sub_22EE3CCC4();

  return sub_22EDDA5EC(a1, a2, v6);
}

char *sub_22EDE1B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95010, &qword_22EE40530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22EDE1C88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDE27A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EDE1CF4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EDE1CF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EDE1ED4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22EDE1DEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EDE1DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = v10 - 4;
      v12 = *v10 == *(v10 - 8) && *(v10 + 1) == *(v10 - 7);
      if (v12 || (result = sub_22EE3CBA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 4;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = v10[2];
      v13 = v10[3];
      v16 = *v10;
      v15 = v10[1];
      v17 = *(v10 - 3);
      *v10 = *v11;
      v10[1] = v17;
      v18 = *(v10 - 1);
      v10[2] = *(v10 - 2);
      v10[3] = v18;
      *v11 = v16;
      *(v10 - 3) = v15;
      v10 -= 4;
      v11[2] = v14;
      v11[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22EDE1ED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v94 = v8 + 16;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v8[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_22EDE24C8((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), v9);
        if (v5)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_130;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_131;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_132;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + (v7 << 6));
      result = *v10;
      v11 = (*a3 + (v9 << 6));
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v13 = result;
      }

      v7 = (v9 + 2);
      if ((v9 + 2) < v6)
      {
        v14 = v11 + 9;
        v15 = v11 + 9;
        do
        {
          result = v14[7];
          v17 = v15[8];
          v15 += 8;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = (v7 << 6) - 64;
          v20 = v9 << 6;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v32 + v20);
              v24 = (v32 + v19);
              v26 = v23[2];
              v25 = v23[3];
              v28 = *v23;
              v27 = v23[1];
              v29 = v24[3];
              v31 = *v24;
              v30 = v24[1];
              v23[2] = v24[2];
              v23[3] = v29;
              *v23 = v31;
              v23[1] = v30;
              *v24 = v28;
              v24[1] = v27;
              v24[2] = v26;
              v24[3] = v25;
            }

            ++v22;
            v19 -= 64;
            v20 += 64;
          }

          while (v22 < v21);
        }
      }
    }

    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE1A00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_22EDE1A00((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_75:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_96:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v9 = *&v8[16 * v91 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_22EDE24C8((*a3 + (v9 << 6)), (*a3 + (*&v8[16 * v53 + 32] << 6)), (*a3 + (v92 << 6)), v52);
        if (v5)
        {
        }

        if (v92 < v9)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v9;
        *(v93 + 5) = v92;
        result = sub_22EDE2708(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v102 = v5;
  if (&v9[a4] >= v33)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = &v9[a4];
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v102;
    goto LABEL_55;
  }

  v34 = *a3;
  v35 = *a3 + (v7 << 6);
  v101 = v9;
  v36 = &v9[-v7];
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = v38 - 4;
    v40 = *v38 == *(v38 - 8) && *(v38 + 1) == *(v38 - 7);
    if (v40 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 64;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v101;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v42 = v38[2];
    v41 = v38[3];
    v44 = *v38;
    v43 = v38[1];
    v45 = *(v38 - 3);
    *v38 = *v39;
    v38[1] = v45;
    v46 = *(v38 - 1);
    v38[2] = *(v38 - 2);
    v38[3] = v46;
    *v39 = v44;
    *(v38 - 3) = v43;
    v38 -= 4;
    v39[2] = v42;
    v39[3] = v41;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}