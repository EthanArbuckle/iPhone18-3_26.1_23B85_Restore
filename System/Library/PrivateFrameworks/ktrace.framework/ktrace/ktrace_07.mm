uint64_t sub_22EDE24C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v19 && (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = *(v21 - 8);
      v23 = *(v21 - 7);
      v21 -= 64;
      v24 = v22 == *(v6 - 8) && v23 == *(v6 - 7);
      if (!v24 && (sub_22EE3CBA4() & 1) != 0)
      {
        if (v5 + 64 != v6)
        {
          v28 = *v20;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 64 != v14)
      {
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_22EDE2708(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDE2794(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_22EDE27BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (v8 = sub_22EDE1B04(0x746E656D75636F44, 0xED00006E6F697461), (v9 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22ED7E678(*(a3 + 56) + 32 * v8, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95030, &qword_22EE40558);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v11 = *(v51 + 16);
  if (v11)
  {
    v12 = sub_22EDE1B04(0x736973706F6E7953, 0xE800000000000000);
    if (v13)
    {
      sub_22ED7E678(*(v51 + 56) + 32 * v12, v53);
      v14 = swift_dynamicCast();
      v15 = v51;
      if (!v14)
      {
        v15 = 0;
      }

      v50 = v15;
      if (v14)
      {
        v11 = v52;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v50 = 0;
      v11 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  v49 = v11;
  if (*(v51 + 16) && (v22 = sub_22EDE1B04(0x7470697263736544, 0xEB000000006E6F69), (v23 & 1) != 0))
  {
    sub_22ED7E678(*(v51 + 56) + 32 * v22, v53);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v19 = v51;
    }

    else
    {
      v19 = 0;
    }

    if (v24)
    {
      v20 = v52;
    }

    else
    {
      v20 = 0;
    }

    if (!*(v51 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    if (!*(v51 + 16))
    {
LABEL_30:
      v16 = 0;
      goto LABEL_31;
    }
  }

  v25 = sub_22EDE1B04(0x6E6564646948, 0xE600000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_22ED7E678(*(v51 + 56) + 32 * v25, v53);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v16 = v51;
LABEL_31:
  if (!*(v51 + 16) || (v27 = sub_22EDE1B04(0x736E6F6974704FLL, 0xE700000000000000), (v28 & 1) == 0))
  {

    goto LABEL_59;
  }

  sub_22ED7E678(*(v51 + 56) + 32 * v27, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95038, &qword_22EE40560);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_59:
    v17 = v50;
    v21 = 0;
    goto LABEL_60;
  }

  v48 = a2;
  v29 = v51;
  v30 = *(v51 + 16);
  if (!v30)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

  v31 = 0;
  v47 = v30 - 1;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v32 = v31;
    while (1)
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v33 = *(v51 + 32 + 8 * v32);
      if (*(v33 + 16))
      {
        v34 = v29;
        v35 = v30;
        result = sub_22EDE1B04(0x6E6F6974704FLL, 0xE600000000000000);
        v30 = v35;
        v29 = v34;
        if (v36)
        {
          break;
        }
      }

LABEL_39:
      if (v30 == ++v32)
      {
        goto LABEL_62;
      }
    }

    sub_22ED7E678(*(v33 + 56) + 32 * result, v53);
    result = swift_dynamicCast();
    if (!result)
    {
      goto LABEL_38;
    }

    if (!*(v33 + 16) || (v37 = sub_22EDE1B04(0x7470697263736544, 0xEB000000006E6F69), (v38 & 1) == 0) || (sub_22ED7E678(*(v33 + 56) + 32 * v37, v53), !swift_dynamicCast()))
    {

LABEL_38:
      v29 = v34;
      v30 = v35;
      goto LABEL_39;
    }

    if (*(v33 + 16) && (v39 = sub_22EDE1B04(0xD000000000000011, 0x800000022EE483B0), (v40 & 1) != 0) && (sub_22ED7E678(*(v33 + 56) + 32 * v39, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60), swift_dynamicCast()))
    {
      v41 = v51;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v46 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE14DC(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v29 = v34;
    v30 = v35;
    v43 = *(v21 + 16);
    v42 = *(v21 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_22EDE14DC((v42 > 1), v43 + 1, 1, v21);
      v44 = v43 + 1;
      v30 = v35;
      v29 = v34;
      v21 = result;
    }

    v31 = v32 + 1;
    *(v21 + 16) = v44;
    v45 = (v21 + 40 * v43);
    v45[4] = v51;
    v45[5] = v52;
    v45[6] = v51;
    v45[7] = v52;
    v45[8] = v46;
  }

  while (v47 != v32);
LABEL_62:

  a2 = v48;
  v17 = v50;
LABEL_60:
  v18 = v49;
LABEL_13:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  *(a4 + 40) = v19;
  *(a4 + 48) = v20;
  *(a4 + 56) = v21;
  return result;
}

char *sub_22EDE2D50(char a1)
{
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v40 = &v37 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v37 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  if ((a1 & 1) != 0 && getenv("KTRACE_PROVIDER_PATH"))
  {
    sub_22EE3C214();
    sub_22EE3BBF4();

    v17 = sub_22EDE15FC(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_22EDE15FC(v18 > 1, v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    (*(v3 + 32))(&v17[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19], v16, v2);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (os_variant_has_internal_content())
  {
    v20 = sub_22EE31EAC();
    v38 = *(v3 + 16);
    v38(v14, v20, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_22EDE15FC(0, *(v17 + 2) + 1, 1, v17);
    }

    v23 = *(v17 + 2);
    v22 = *(v17 + 3);
    if (v23 >= v22 >> 1)
    {
      v17 = sub_22EDE15FC(v22 > 1, v23 + 1, 1, v17);
    }

    *(v17 + 2) = v23 + 1;
    v24 = *(v3 + 32);
    v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v26 = *(v3 + 72);
    v24(&v17[v25 + v26 * v23], v14, v2);
    v27 = sub_22EE321AC();
    v38(v39, v27, v2);
    v29 = *(v17 + 2);
    v28 = *(v17 + 3);
    if (v29 >= v28 >> 1)
    {
      v17 = sub_22EDE15FC(v28 > 1, v29 + 1, 1, v17);
    }

    *(v17 + 2) = v29 + 1;
    v24(&v17[v25 + v29 * v26], v39, v2);
    v30 = sub_22EE3232C();
    v38(v40, v30, v2);
    v32 = *(v17 + 2);
    v31 = *(v17 + 3);
    if (v32 >= v31 >> 1)
    {
      v17 = sub_22EDE15FC(v31 > 1, v32 + 1, 1, v17);
    }

    *(v17 + 2) = v32 + 1;
    v24(&v17[v25 + v32 * v26], v40, v2);
    v7 = v37;
  }

  v33 = sub_22EE3202C();
  (*(v3 + 16))(v7, v33, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_22EDE15FC(0, *(v17 + 2) + 1, 1, v17);
  }

  v35 = *(v17 + 2);
  v34 = *(v17 + 3);
  if (v35 >= v34 >> 1)
  {
    v17 = sub_22EDE15FC(v34 > 1, v35 + 1, 1, v17);
  }

  *(v17 + 2) = v35 + 1;
  (*(v3 + 32))(&v17[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v35], v7, v2);
  return v17;
}

uint64_t sub_22EDE31BC(char a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_22EDE2D50(a1);
  v50 = MEMORY[0x277D84F90];
  v45 = *(v8 + 2);
  if (v45)
  {
    v9 = 0;
    v10 = 0;
    v44 = &v8[(*(v3 + 80) + 32) & ~*(v3 + 80)];
    v42 = v2;
    v43 = v3 + 16;
    v37 = (v3 + 8);
    v38 = v8;
    v40 = v6;
    v41 = v3;
    v39 = v7;
    do
    {
      if (v9 >= *(v8 + 2))
      {
        goto LABEL_26;
      }

      (*(v3 + 16))(v6, &v44[*(v3 + 72) * v9], v2);
      sub_22EE3BC84();
      v14 = sub_22EE3C0F4();

      v49 = 0;
      v15 = [v7 contentsOfDirectoryAtPath:v14 error:&v49];

      v16 = v49;
      if (v15)
      {
        v48 = v10;
        v17 = sub_22EE3C3D4();
        v18 = v16;

        v19 = *(v17 + 16);
        if (!v19)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v20 = v49;
        v21 = sub_22EE3BBA4();

        swift_willThrow();
        v48 = 0;
        v17 = MEMORY[0x277D84F90];
        v19 = *(MEMORY[0x277D84F90] + 16);
        if (!v19)
        {
LABEL_3:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_4;
        }
      }

      v22 = 0;
      v23 = v17 + 40;
      v46 = v19 - 1;
      v11 = MEMORY[0x277D84F90];
      v47 = v17 + 40;
      do
      {
        v24 = (v23 + 16 * v22);
        v25 = v22;
        while (1)
        {
          if (v25 >= *(v17 + 16))
          {
            __break(1u);
LABEL_26:
            __break(1u);
          }

          v26 = *(v24 - 1);
          v27 = *v24;
          v22 = v25 + 1;

          if (sub_22EE3C2B4())
          {
            break;
          }

          v24 += 2;
          ++v25;
          if (v19 == v22)
          {
            goto LABEL_4;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22EDD2DD4(0, v11[2] + 1, 1);
          v11 = v49;
        }

        v30 = v11[2];
        v29 = v11[3];
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v36 = v30 + 1;
          sub_22EDD2DD4((v29 > 1), v30 + 1, 1);
          v31 = v36;
          v11 = v49;
        }

        v11[2] = v31;
        v32 = &v11[2 * v30];
        v32[4] = v26;
        v32[5] = v27;
        v23 = v47;
      }

      while (v46 != v25);
LABEL_4:
      ++v9;

      MEMORY[0x28223BE20](v12);
      v6 = v40;
      *(&v35 - 2) = v40;
      v10 = v48;
      v13 = sub_22EDDCC20(sub_22EDE43C0, (&v35 - 4), v11);

      sub_22EDDD1C8(v13);
      v2 = v42;
      (*v37)(v6, v42);
      v3 = v41;
      v8 = v38;
      v7 = v39;
    }

    while (v9 != v45);

    result = v50;
  }

  else
  {

    result = MEMORY[0x277D84F90];
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22EDE35E8()
{
  result = qword_27DA94F60;
  if (!qword_27DA94F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94F60);
  }

  return result;
}

uint64_t sub_22EDE363C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22EDE36AC()
{
  result = qword_27DA94FD0;
  if (!qword_27DA94FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94FD0);
  }

  return result;
}

uint64_t sub_22EDE3700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FD8, qword_22EE400D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void deprecatedWillEndTracingToFile(void *a1, uint64_t a2)
{
  v3 = a1;
  [v3 willEndTracingToFile:a2];
}

uint64_t sub_22EDE386C(uint64_t a1, char a2)
{
  v92 = nullsub_1();
  *&v90[0] = sub_22EDE31BC(a2 & 1);

  sub_22EDE1C88(v90);

  v4 = *&v90[0];
  v5 = *(*&v90[0] + 16);
  if (!v5)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_22EE3F500;
    *&v90[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EDD3F74();
    v62 = sub_22EE3C0B4();
    v64 = v63;

    *(v61 + 56) = MEMORY[0x277D837D0];
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    sub_22ED82560();
    sub_22EE3CC44();

    return 0;
  }

  v91 = MEMORY[0x277D84F90];
  sub_22EDD2DD4(0, v5, 0);
  if (!*(v4 + 16))
  {
    goto LABEL_50;
  }

  v6 = 0;
  v70 = v4 + 32;
  v7 = v91;
  v8 = 1;
  v67 = v5;
  v68 = v4;
  while (1)
  {
    v9 = (v70 + (v6 << 6));
    v10 = v8;
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[1];
    v90[0] = *v9;
    v90[1] = v13;
    v90[2] = v12;
    v90[3] = v11;
    v15 = *(&v90[0] + 1);
    v14 = *&v90[0];
    v16 = *(&v13 + 1);
    v74 = v13;
    v78 = *(&v12 + 1);
    v17 = v12;
    v2 = *(&v11 + 1);
    v18 = v11;
    sub_22EDE4358(v90, &v82);
    v94 = 0;
    v95 = 0xE000000000000000;
    v75 = v16;
    v72 = v14;
    v73 = v15;
    if (v17)
    {
      v82 = v14;
      v83 = v15;

      MEMORY[0x2318F58F0](539831584, 0xE400000000000000);
      MEMORY[0x2318F58F0](v16, v17);
      v19 = v82;
      v15 = v83;
    }

    else
    {

      v19 = v14;
    }

    MEMORY[0x2318F58F0](v19, v15);

    if (v18)
    {
      MEMORY[0x2318F58F0](2570, 0xE200000000000000);
      v82 = 538976288;
      v83 = 0xE400000000000000;
      MEMORY[0x2318F58F0](v78, v18);
      MEMORY[0x2318F58F0](v82, v83);
    }

    v76 = v17;
    v77 = v10;
    if (!v2)
    {
      v25 = v94;
      v26 = v95;
      goto LABEL_38;
    }

    MEMORY[0x2318F58F0](2570, 0xE200000000000000);
    v20 = *(v2 + 16);
    v71 = v18;
    if (v20)
    {
      break;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_37:
    v82 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EDD3F74();
    v55 = sub_22EE3C0B4();
    v57 = v56;

    MEMORY[0x2318F58F0](v55, v57);

    v25 = v94;
    v26 = v95;
    v18 = v71;
LABEL_38:
    v82 = v72;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    v87 = v78;
    v88 = v18;
    v89 = v2;
    sub_22EDE4390(&v82);
    v91 = v7;
    v59 = *(v7 + 16);
    v58 = *(v7 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_22EDD2DD4((v58 > 1), v59 + 1, 1);
      v7 = v91;
    }

    *(v7 + 16) = v59 + 1;
    v60 = v7 + 16 * v59;
    *(v60 + 32) = v25;
    *(v60 + 40) = v26;
    v6 = v77;
    if (v77 == v5)
    {

      goto LABEL_45;
    }

    v8 = v77 + 1;
    if (v77 >= *(v4 + 16))
    {
      goto LABEL_50;
    }
  }

  MEMORY[0x2318F58F0](0x6974706F20202020, 0xED00000A3A736E6FLL);
  if (!*(v2 + 16))
  {
    goto LABEL_51;
  }

  v69 = v7;
  v22 = *(v2 + 32);
  v21 = *(v2 + 40);
  v23 = *(v2 + 56);
  v24 = *(v2 + 64);

  v81 = v2;
  if (v20 == 1)
  {
LABEL_23:

    v80 = sub_22EE3C1D4();

    v2 = v81;
    v36 = *(v81 + 16);
    if (v36)
    {
      v93 = MEMORY[0x277D84F90];
      sub_22EDD2DD4(0, v36, 0);
      v37 = 0;
      v27 = v93;
      v38 = (v81 + 64);
      v79 = v36;
      while (v37 < *(v2 + 16))
      {
        v39 = *(v38 - 4);
        v40 = *(v38 - 3);
        v2 = *(v38 - 2);
        v41 = *(v38 - 1);
        v42 = *v38;

        v43 = sub_22EE3C1D4();
        if (__OFSUB__(v80, v43))
        {
          goto LABEL_47;
        }

        if (__OFADD__(v80 - v43, 8))
        {
          goto LABEL_48;
        }

        v82 = 0x2020202020202020;
        v83 = 0xE800000000000000;
        MEMORY[0x2318F58F0](v39, v40);
        v44 = sub_22EE3C2D4();
        v46 = v45;
        v96 = v44;
        v97 = v45;

        MEMORY[0x2318F58F0](v2, v41);
        MEMORY[0x2318F58F0](v96, v97);

        v96 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v47 = sub_22EE3C0B4();
        v49 = v48;

        if (sub_22EE3C1D4() < 1)
        {
        }

        else
        {
          v96 = 0;
          v97 = 0xE000000000000000;
          sub_22EE3C864();

          v96 = v44;
          v97 = v46;
          MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE48370);
          MEMORY[0x2318F58F0](v47, v49);

          MEMORY[0x2318F58F0](v96, v97);
        }

        v2 = v81;

        v50 = v82;
        v51 = v83;
        v93 = v27;
        v53 = *(v27 + 16);
        v52 = *(v27 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22EDD2DD4((v52 > 1), v53 + 1, 1);
          v27 = v93;
        }

        ++v37;
        *(v27 + 16) = v53 + 1;
        v54 = v27 + 16 * v53;
        *(v54 + 32) = v50;
        *(v54 + 40) = v51;
        v38 += 5;
        if (v79 == v37)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_36:
    v7 = v69;
    v5 = v67;
    v4 = v68;
    goto LABEL_37;
  }

  v28 = -v20;
  v29 = v2 + 64;
  v2 = 1;
  v66 = v29;
LABEL_17:
  v30 = (v29 + 40 * v2++);
  while ((v2 - 1) < *(v81 + 16))
  {
    v32 = *(v30 - 4);
    v31 = *(v30 - 3);
    v33 = *(v30 - 1);
    v34 = *v30;

    v35 = sub_22EE3C1D4();
    if (v35 < sub_22EE3C1D4())
    {

      v29 = v66;
      if (v28 + v2)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    ++v2;
    v30 += 5;
    if (v28 + v2 == 1)
    {
      goto LABEL_23;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  v82 = v72;
  v83 = v73;
  v84 = v74;
  v85 = v75;
  v86 = v76;
  v87 = v78;
  v88 = v71;
  v89 = v2;
  sub_22EDE4390(&v82);

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_22EDE404C()
{
  result = qword_27DA94FF0;
  if (!qword_27DA94FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94FF0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22EDE4118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_22EDE4160(uint64_t result, int a2, int a3)
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

uint64_t sub_22EDE41C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDE4208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22EDE4268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22EDE42B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EDE441C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        sub_22EE3C864();

        v11 = v2;
        v4 = 0xD00000000000001FLL;
        v5 = 0x800000022EE484A0;
        goto LABEL_14;
      }

      sub_22EE3C864();

      v11 = v2;
      v9 = ": could not load bundle of passive data source";
    }

    else
    {
      sub_22EE3C864();

      v11 = v2;
      v9 = ": experimental passive data source not allowed";
    }

    v5 = (v9 - 32) | 0x8000000000000000;
    v4 = 0xD00000000000002ELL;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v11 = 0;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](v2, v1);
    v8 = ": no principal class found for passive data source";
  }

  else
  {
    v6 = v0[2];
    v7 = v0[3];
    if (v3 != 4)
    {
      sub_22EE3C864();

      v11 = v2;
      MEMORY[0x2318F58F0](0xD000000000000019, 0x800000022EE483D0);
      MEMORY[0x2318F58F0](v6, v7);
      v4 = 0x696176616E752027;
      v5 = 0xED0000656C62616CLL;
      goto LABEL_14;
    }

    v11 = 0;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](v2, v1);
    MEMORY[0x2318F58F0](0x207373616C63203ALL, 0xE900000000000060);
    MEMORY[0x2318F58F0](v6, v7);
    v8 = "' does not conform to passive data source protocol";
  }

  v4 = 0xD000000000000032;
  v5 = (v8 - 32) | 0x8000000000000000;
LABEL_14:
  MEMORY[0x2318F58F0](v4, v5);
  return v11;
}

__n128 sub_22EDE46A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = *(v5 + 8);

  swift_unknownObjectRetain();
  sub_22EDE4800(a1, a2, a3, a4, a5, v12, v13, &v24);
  if (!v6)
  {
    v15 = v25;
    if (v25)
    {
      v16 = v24;
      v29 = v26;
      v30 = v27;
      v31 = v28;
      v17 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22EDE650C(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v32 = v19 + 1;
        v23 = sub_22EDE650C((v18 > 1), v19 + 1, 1, v17);
        v20 = v32;
        v17 = v23;
      }

      *(v17 + 2) = v20;
      v21 = &v17[56 * v19];
      *(v21 + 4) = v16;
      *(v21 + 5) = v15;
      result = v29;
      v22 = v30;
      *(v21 + 10) = v31;
      *(v21 + 3) = result;
      *(v21 + 4) = v22;
      *v5 = v17;
    }
  }

  return result;
}

uint64_t sub_22EDE4800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  LODWORD(v180) = a7;
  v182 = a6;
  v183 = a5;
  v181 = a4;
  v171 = a3;
  v184 = a2;
  v174 = a8;
  v189 = *MEMORY[0x277D85DE8];
  v9 = sub_22EE3BE64();
  v177 = *(v9 - 8);
  v178 = v9;
  v10 = *(v177 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v168 = &v163[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v173 = &v163[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v169 = &v163[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v170 = &v163[-v18];
  MEMORY[0x28223BE20](v17);
  v176 = &v163[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v163[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v163[-v26];
  v28 = sub_22EE3BCB4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v163[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v35 = &v163[-v34];
  v179 = a1;
  v36 = a1;
  v37 = v184;
  sub_22EDE5E60(v36, v184, v180, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v38 = *v23;
    v39 = v23[1];
    v40 = v23[2];
    v41 = v23[3];
    v42 = *(v23 + 32);
    v187[0] = v38;
    v187[1] = v39;
    v187[2] = v40;
    v187[3] = v41;
    v188 = v42;
    sub_22EDE6634();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v43 = v38;
    *(v43 + 8) = v39;
    *(v43 + 16) = v40;
    *(v43 + 24) = v41;
    *(v43 + 32) = v42;
    result = swift_unknownObjectRelease();
    goto LABEL_23;
  }

  sub_22EDE363C(v23, v27);
  v45 = *(v27 + 1);

  (*(v29 + 32))(v35, &v27[*(v24 + 48)], v28);
  if (qword_27DA967D8 != -1)
  {
    swift_once();
  }

  v46 = sub_22EE3BE94();
  v47 = __swift_project_value_buffer(v46, qword_27DA9C918);
  v48 = *(v29 + 16);
  v172 = v35;
  v48(v33, v35, v28);

  v49 = v176;
  sub_22EE3BE54();
  v166 = v47;
  v50 = sub_22EE3BE74();
  v51 = sub_22EE3C584();

  v52 = sub_22EE3C5C4();
  v175 = v29;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v167 = v28;
    v54 = v53;
    v55 = swift_slowAlloc();
    v187[0] = v55;
    *v54 = 136446466;
    *(v54 + 4) = sub_22ED7DF24(v179, v37, v187);
    *(v54 + 12) = 2082;
    v56 = sub_22EE3BC94();
    v58 = v57;
    v59 = *(v175 + 8);
    v59(v33, v167);
    v60 = sub_22ED7DF24(v56, v58, v187);

    *(v54 + 14) = v60;
    v61 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v50, v51, v61, "PassiveDataSourceLoad", "Loading %{public}s from %{public}s", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v55, -1, -1);
    v62 = v54;
    v28 = v167;
    MEMORY[0x2318F8320](v62, -1, -1);

    v180 = *(v177 + 8);
    v180(v49, v178);
  }

  else
  {

    v180 = *(v177 + 8);
    v180(v49, v178);
    v59 = *(v29 + 8);
    v59(v33, v28);
  }

  v63 = v181;
  v64 = v172;
  sub_22EE3BC94();
  v65 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v66 = sub_22EE3C0F4();

  v67 = [v65 initWithPath_];

  if (!v67)
  {

    sub_22EDE6634();
    swift_allocError();
    v89 = v184;
    *v90 = v179;
    *(v90 + 8) = v89;
    *(v90 + 16) = 0;
    *(v90 + 24) = 0;
    *(v90 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_22:
    result = (v59)(v64, v28);
    goto LABEL_23;
  }

  v68 = [v67 load];
  v69 = v184;
  if ((v68 & 1) == 0)
  {
    v181 = v67;
    v176 = v59;

    v91 = v173;
    sub_22EE3BE54();
    v92 = sub_22EE3BE74();
    v93 = sub_22EE3C584();

    if (sub_22EE3C5C4())
    {
      v94 = v69;
      v95 = swift_slowAlloc();
      v96 = v28;
      v97 = swift_slowAlloc();
      v187[0] = v97;
      *v95 = 136446210;
      v98 = v91;
      v99 = v179;
      *(v95 + 4) = sub_22ED7DF24(v179, v94, v187);
      v100 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v92, v93, v100, "PassiveDataSourceLoadFailure", "Cannot load %{public}s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v101 = v97;
      v28 = v96;
      MEMORY[0x2318F8320](v101, -1, -1);
      v102 = v95;
      v69 = v94;
      v64 = v172;
      MEMORY[0x2318F8320](v102, -1, -1);

      v180(v98, v178);
    }

    else
    {

      v180(v91, v178);
      v99 = v179;
    }

    v187[0] = 0;
    v187[1] = 0xE000000000000000;
    sub_22EE3C864();

    strcpy(v187, "Cannot load ");
    BYTE5(v187[1]) = 0;
    HIWORD(v187[1]) = -5120;
    MEMORY[0x2318F58F0](v99, v69);

    MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE484F0);
    v103 = sub_22EE3C0F4();

    [v182 warnWithMessage_];
    swift_unknownObjectRelease();

    result = (v176)(v64, v28);
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v63 = 0;
    v108 = 0;
    v109 = 0;
    v110 = v174;
    goto LABEL_19;
  }

  if (![v67 principalClass])
  {

    sub_22EDE6634();
    swift_allocError();
    *v111 = v179;
    *(v111 + 8) = v69;
    *(v111 + 16) = 0;
    *(v111 + 24) = 0;
    *(v111 + 32) = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  v181 = v67;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v186[1] = &unk_2843A8F88;
  if (!swift_dynamicCastTypeToObjCProtocolConditional())
  {

    v187[0] = ObjCClassMetadata;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FC8, &unk_22EE400C0);
    v112 = sub_22EE3C164();
    v114 = v113;
    sub_22EDE6634();
    swift_allocError();
    *v115 = v179;
    *(v115 + 8) = v69;
    *(v115 + 16) = v112;
    *(v115 + 24) = v114;
    *(v115 + 32) = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_22;
  }

  v176 = v59;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = objc_allocWithZone(ObjCClassFromMetadata);

  v173 = [v72 init];

  v73 = [(objc_class *)ObjCClassFromMetadata availableDataCategories:v171];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95118, &unk_22EE40580);
  v75 = sub_22EE3C064();

  v76 = v170;
  sub_22EE3BE54();
  v77 = sub_22EE3BE74();
  v78 = sub_22EE3C584();

  v79 = sub_22EE3C5C4();
  v167 = v28;
  v165 = v74;
  if (v79)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v164 = v78;
    v82 = v76;
    v83 = v81;
    v187[0] = v81;
    *v80 = 136446466;
    *(v80 + 4) = sub_22ED7DF24(v179, v69, v187);
    *(v80 + 12) = 2082;
    v84 = sub_22EE3C074();
    v86 = sub_22ED7DF24(v84, v85, v187);

    *(v80 + 14) = v86;
    v87 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v77, v164, v87, "PassiveDataSourceAvailableDataCategories", "Data source:%{public}s: %{public}s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v83, -1, -1);
    MEMORY[0x2318F8320](v80, -1, -1);

    v88 = v82;
  }

  else
  {

    v88 = v76;
  }

  v180(v88, v178);
  v187[0] = MEMORY[0x277D84F90];
  v117 = v183;
  v118 = *(v183 + 16);
  if (!v118)
  {
LABEL_33:

    v130 = v184;

    v131 = v169;
    sub_22EE3BE54();
    v132 = sub_22EE3BE74();
    v133 = sub_22EE3C584();

    if (sub_22EE3C5C4())
    {
      v134 = v131;
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v186[0] = v136;
      *v135 = 136446210;
      v137 = v130;
      *(v135 + 4) = sub_22ED7DF24(v179, v130, v186);
      v138 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v132, v133, v138, "PassiveDataSourceConfiguration", "Configuring %{public}s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v136);
      MEMORY[0x2318F8320](v136, -1, -1);
      MEMORY[0x2318F8320](v135, -1, -1);

      v139 = v134;
    }

    else
    {
      v137 = v130;

      v139 = v131;
    }

    v180(v139, v178);
    v142 = v167;
    v143 = v172;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    v144 = sub_22EE3C054();
    v145 = sub_22EE3C3C4();

    v186[0] = 0;
    v109 = v171;
    v146 = [v173 configureWithLogger:v182 machine:v171 options:v144 dataCategories:v145 error:v186];

    if (v146)
    {
      v147 = v186[0];

      v105 = v137;

      result = (v176)(v143, v142);
      v107 = v182;
      v108 = v183;
      v110 = v174;
      v104 = v179;
      v106 = v173;
    }

    else
    {
      v148 = v186[0];
      v149 = sub_22EE3BBA4();

      swift_willThrow();
      v150 = v137;

      v151 = v149;
      v152 = v168;
      sub_22EE3BE54();
      v153 = sub_22EE3BE74();
      v154 = sub_22EE3C584();

      if (sub_22EE3C5C4())
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v186[0] = v156;
        *v155 = 136446466;
        v157 = sub_22ED7DF24(v179, v150, v186);

        *(v155 + 4) = v157;
        *(v155 + 12) = 2082;
        v185 = v149;
        v158 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
        v159 = sub_22EE3C164();
        v161 = sub_22ED7DF24(v159, v160, v186);

        *(v155 + 14) = v161;
        v162 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v153, v154, v162, "PassiveDataSourceConfigurationError", "Failed to configure %{public}s: %{public}s", v155, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318F8320](v156, -1, -1);
        MEMORY[0x2318F8320](v155, -1, -1);

        v180(v152, v178);
        (v176)(v172, v167);
      }

      else
      {

        v180(v152, v178);
        (v176)(v143, v142);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v110 = v174;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v63 = 0;
      v108 = 0;
      v109 = 0;
    }

LABEL_19:
    *v110 = v104;
    v110[1] = v105;
    v110[2] = v106;
    v110[3] = v107;
    v110[4] = v63;
    v110[5] = v108;
    v110[6] = v109;
    goto LABEL_23;
  }

  v119 = 0;
  v120 = (v183 + 40);
  while (1)
  {
    if (v119 >= *(v117 + 16))
    {
      __break(1u);
    }

    v122 = *(v120 - 1);
    v121 = *v120;
    v123 = *(v75 + 16);

    if (!v123)
    {
      break;
    }

    v124 = sub_22EDE1B04(v122, v121);
    if ((v125 & 1) == 0)
    {
      break;
    }

    v126 = v124;

    v127 = *(*(v75 + 56) + 8 * v126);
    v128 = swift_unknownObjectRetain_n();
    MEMORY[0x2318F5AA0](v128);
    if (*((v187[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v129 = *((v187[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22EE3C3F4();
    }

    ++v119;
    sub_22EE3C414();
    swift_unknownObjectRelease();
    v120 += 2;
    v117 = v183;
    if (v118 == v119)
    {
      goto LABEL_33;
    }
  }

  sub_22EDE6634();
  swift_allocError();
  v140 = v184;
  *v141 = v179;
  *(v141 + 8) = v140;
  *(v141 + 16) = v122;
  *(v141 + 24) = v121;
  *(v141 + 32) = 5;
  swift_willThrow();

  (v176)(v172, v167);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_23:
  v116 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EDE5B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v36[1] = *MEMORY[0x277D85DE8];
  v28 = sub_22EE3BDA4();
  v4 = *(*(v28 - 8) + 64);
  result = MEMORY[0x28223BE20](v28);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v26 = (v6 + 8);
    v9 = (a3 + 72);
    while (1)
    {
      v10 = *(v9 - 4);
      v11 = *(v9 - 3);
      v31 = v8;
      v32 = v11;
      v13 = *(v9 - 2);
      v12 = *(v9 - 1);
      v14 = *v9;
      v35 = v10;

      swift_unknownObjectRetain();
      v34 = v13;
      swift_unknownObjectRetain();
      v33 = v12;

      v15 = v27;
      sub_22EE3BA64();
      v16 = sub_22EE3BD44();
      v17 = *v26;
      v18 = v28;
      (*v26)(v15, v28);
      sub_22EE3BA44();
      v19 = sub_22EE3BD44();
      v20 = v18;
      v21 = v32;
      v17(v15, v20);
      v36[0] = 0;
      LODWORD(v17) = [v21 collectToFile:v29 startDate:v16 endDate:v19 error:v36];

      v22 = v36[0];
      if (!v17)
      {
        break;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v9 += 7;
      v8 = v31 - 1;
      if (v31 == 1)
      {
        goto LABEL_7;
      }
    }

    v23 = v22;
    sub_22EE3BBA4();

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_7:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EDE5DE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_22EE3BE94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_22EE3BE84();
}

void *sub_22EDE5E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
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
  v15 = os_variant_has_internal_content() & a3;
  v48 = v15;
  result = sub_22EDE6688(v15);
  v50 = result[2];
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
      if (v17 >= result[2])
      {
        __break(1u);
        return result;
      }

      v18 = v58;
      v19 = v55;
      (*(v58 + 16))(v55, result + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17, v6);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95048, &unk_22EE40570);
  swift_storeEnumTagMultiPayload();
}

BOOL sub_22EDE6398(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_22EDE63C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_22EDE63F4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_22EDE64CC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_22EDE6D4C(a1);

  *a2 = v3;
  return result;
}

char *sub_22EDE650C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95148, &qword_22EE40AD8);
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

unint64_t sub_22EDE6634()
{
  result = qword_27DA95050;
  if (!qword_27DA95050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95050);
  }

  return result;
}

void *sub_22EDE6688(uint64_t a1)
{
  v2 = sub_22EE3BCB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = sub_22EDDCDCC(a1);
  if ((a1 & 1) != 0 && getenv("KTRACE_PASSIVE_DATA_SOURCE_PATH"))
  {
    sub_22EE3C214();
    sub_22EE3BBF4();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_22EDE15FC(0, v13[2] + 1, 1, v13);
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_22EDE15FC(v14 > 1, v15 + 1, 1, v13);
    }

    v13[2] = v15 + 1;
    (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v12, v2);
  }

  if (os_variant_has_internal_content())
  {
    v16 = sub_22EE3237C();
    (*(v3 + 16))(v10, v16, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_22EDE15FC(0, v13[2] + 1, 1, v13);
    }

    v18 = v13[2];
    v17 = v13[3];
    if (v18 >= v17 >> 1)
    {
      v13 = sub_22EDE15FC(v17 > 1, v18 + 1, 1, v13);
    }

    v13[2] = v18 + 1;
    (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v10, v2);
  }

  v19 = sub_22EE32528();
  (*(v3 + 16))(v7, v19, v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_22EDE15FC(0, v13[2] + 1, 1, v13);
  }

  v21 = v13[2];
  v20 = v13[3];
  if (v21 >= v20 >> 1)
  {
    v13 = sub_22EDE15FC(v20 > 1, v21 + 1, 1, v13);
  }

  v13[2] = v21 + 1;
  (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v7, v2);
  return v13;
}

unint64_t sub_22EDE69CC()
{
  result = qword_27DA95120;
  if (!qword_27DA95120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95120);
  }

  return result;
}

uint64_t sub_22EDE6A44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDE6A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EDE6AFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22EDE6B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EDE6B94(uint64_t a1, int a2)
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

uint64_t sub_22EDE6BDC(uint64_t result, int a2, int a3)
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

uint64_t sub_22EDE6CA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassiveDataSourceFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22EDE6D4C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t listFiles(in:pathExtension:olderThan:)(uint64_t (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a4;
  v94 = a3;
  v99 = a2;
  v104 = a1;
  v101 = sub_22EE3BB44();
  *&v102 = *(v101 - 8);
  v5 = *(v102 + 64);
  v6 = MEMORY[0x28223BE20](v101);
  v86 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v76 - v13;
  v14 = sub_22EE3BDA4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v79 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v98 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v85 = &v76 - v22;
  v23 = sub_22EE3BCB4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v76 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v77 = &v76 - v29;
  MEMORY[0x28223BE20](v28);
  v108 = &v76 - v30;
  v31 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95158, &unk_22EE40AF0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22EE3FAB0;
  v33 = *MEMORY[0x277CBE838];
  v34 = *MEMORY[0x277CBE8E8];
  *(v32 + 32) = *MEMORY[0x277CBE838];
  *(v32 + 40) = v34;
  v35 = *MEMORY[0x277CBE7C0];
  *(v32 + 48) = *MEMORY[0x277CBE7C0];
  v90 = v33;
  v36 = v34;
  v81 = v35;
  v37 = sub_22EE3C4A4();

  v93 = v37;
  if (!v37)
  {
    return MEMORY[0x277D84F90];
  }

  v88 = (v24 + 56);
  v87 = (v24 + 48);
  v89 = (v24 + 32);
  v104 = (v24 + 8);
  v97 = (v15 + 48);
  v96 = (v15 + 32);
  v100 = (v102 + 8);
  v78 = (v15 + 8);
  v92 = v24;
  v91 = (v24 + 16);
  v95 = MEMORY[0x277D84F90];
  v102 = xmmword_22EE3F500;
  v38 = v86;
  v39 = v85;
  while (1)
  {
    if ([v93 nextObject])
    {
      sub_22EE3C794();
      swift_unknownObjectRelease();
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
    }

    v107[0] = v105;
    v107[1] = v106;
    if (!*(&v106 + 1))
    {
      break;
    }

    v40 = swift_dynamicCast();
    (*v88)(v39, v40 ^ 1u, 1, v23);
    if ((*v87)(v39, 1, v23) == 1)
    {
      goto LABEL_28;
    }

    v41 = *v89;
    (*v89)(v108, v39, v23);
    if (sub_22EE3BBD4() == v99 && v42 == v94)
    {
    }

    else
    {
      v43 = sub_22EE3CBA4();

      if ((v43 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v44 = v83;
    sub_22EDE85A0(v84, v83);
    v45 = *v97;
    if ((*v97)(v44, 1, v14) == 1)
    {
      v57 = v44;
      v38 = v86;
LABEL_20:
      sub_22EDDBA48(v57, &qword_27DA94DD0, &unk_22EE40AE0);
      goto LABEL_21;
    }

    v46 = *v96;
    (*v96)(v98, v44, v14);
    inited = swift_initStackObject();
    *(inited + 16) = v102;
    v48 = v81;
    *(inited + 32) = v81;
    v49 = v48;
    sub_22EDE8438(inited);
    swift_setDeallocating();
    v50 = v82;
    sub_22EDE84F4(inited + 32);
    v51 = v108;
    sub_22EE3BBE4();
    if (v4)
    {

      (*v78)(v98, v14);
      (*v104)(v108, v23);
LABEL_41:

      return v51;
    }

    v52 = v80;
    sub_22EE3BB24();
    (*v100)(v50, v101);
    if (v45(v52, 1, v14) == 1)
    {
      (*v78)(v98, v14);
      v57 = v52;
      v38 = v86;
      v39 = v85;
      goto LABEL_20;
    }

    v53 = v79;
    v46(v79, v52, v14);
    sub_22EDE86E8(&qword_27DA94DD8, MEMORY[0x277CC9578]);
    v54 = v98;
    v55 = sub_22EE3C0C4();
    v56 = *v78;
    (*v78)(v53, v14);
    v56(v54, v14);
    v38 = v86;
    v39 = v85;
    if (v55)
    {
LABEL_21:
      (*v91)(v77, v108, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_22EDE15FC(0, *(v95 + 2) + 1, 1, v95);
      }

      v59 = *(v95 + 2);
      v58 = *(v95 + 3);
      v60 = v92;
      if (v59 >= v58 >> 1)
      {
        v63 = sub_22EDE15FC(v58 > 1, v59 + 1, 1, v95);
        v60 = v92;
        v95 = v63;
      }

      v61 = v60;
      (*(v60 + 8))(v108, v23);
      v62 = v95;
      *(v95 + 2) = v59 + 1;
      v41(&v62[((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v59], v77, v23);
    }

    else
    {
LABEL_3:
      (*v104)(v108, v23);
    }
  }

  sub_22EDDBA48(v107, &qword_27DA95160, &unk_22EE43B50);
  (*v88)(v39, 1, 1, v23);
LABEL_28:
  result = sub_22EDDBA48(v39, &qword_27DA95150, qword_22EE44A90);
  v65 = 0;
  v66 = 0;
  v51 = v95;
  v108 = *(v95 + 2);
  v67 = v76;
  while (1)
  {
    if (v108 == v65)
    {
      goto LABEL_38;
    }

    if (v65 >= *(v51 + 2))
    {
      break;
    }

    (*(v92 + 16))(v67, &v51[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v65], v23);
    v68 = swift_initStackObject();
    *(v68 + 16) = v102;
    v69 = v90;
    *(v68 + 32) = v90;
    v70 = v69;
    sub_22EDE8438(v68);
    swift_setDeallocating();
    sub_22EDE84F4(v68 + 32);
    v51 = v67;
    sub_22EE3BBE4();
    if (v4)
    {
      (*v104)(v67, v23);

      goto LABEL_41;
    }

    ++v65;
    v71 = sub_22EE3BB34();
    v73 = v72;
    (*v100)(v38, v101);
    result = (*v104)(v67, v23);
    if (v73)
    {
      v74 = 0;
    }

    else
    {
      v74 = v71;
    }

    v75 = __OFADD__(v66, v74);
    v66 += v74;
    v51 = v95;
    if (v75)
    {
      __break(1u);
LABEL_38:

      return v51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDE79C8(uint64_t a1)
{
  v2 = sub_22EDE86E8(&qword_27DA95188, type metadata accessor for URLResourceKey);
  v3 = sub_22EDE86E8(&qword_27DA95190, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22EDE7A84(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v8 = sub_22EE3CCC4();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_22EE3C124();
      v15 = v14;
      if (v13 == sub_22EE3C124() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_22EE3CBA4();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_22EDE7EAC(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_22EDE7C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
  result = sub_22EE3C824();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22EE3C124();
      sub_22EE3CC74();
      sub_22EE3C1C4();
      v20 = sub_22EE3CCC4();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22EDE7EAC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22EDE7C30(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22EDE8094();
      goto LABEL_16;
    }

    sub_22EDE81E4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v11 = sub_22EE3CCC4();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for URLResourceKey();
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_22EE3C124();
      v17 = v16;
      if (v15 == sub_22EE3C124() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_22EE3CBA4();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22EE3CBD4();
  __break(1u);
  return result;
}

id sub_22EDE8094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_22EDE81E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95198, &qword_22EE40CB0);
  result = sub_22EE3C824();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22EE3C124();
      sub_22EE3CC74();
      v20 = v18;
      sub_22EE3C1C4();
      v21 = sub_22EE3CCC4();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22EDE8438(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey();
  v4 = v3;
  v5 = sub_22EDE86E8(&qword_27DA95188, type metadata accessor for URLResourceKey);
  result = MEMORY[0x2318F5B30](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_22EDE7A84(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_22EDE84F4(uint64_t a1)
{
  type metadata accessor for URLResourceKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_27DA95168)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA95168);
    }
  }
}

uint64_t sub_22EDE85A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EDE86E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EDE8730()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDE87A4()
{
  v1 = *v0;
  sub_22EE3CC74();
  sub_22EE3CC94();
  return sub_22EE3CCC4();
}

uint64_t sub_22EDE87E8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EDE91BC(*a1);
  *a2 = result;
  return result;
}

BOOL sub_22EDE8864(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_22EDE8894@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_22EDE88C0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t sub_22EDE89A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = sub_22EDE94C8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22EDE89E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  swift_beginAccess();
  v4 = sub_22EE3BF14();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22EDE8AD8(FILE *a1, FILE *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *(v5 + 48);
  v10 = *(v5 + 52);
  v11 = swift_allocObject();
  sub_22EE3BF04();
  if (a5)
  {
    v12 = sub_22EE102E4(a1);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = a1;
    }

    *(v11 + 16) = v13;
    v14 = sub_22EE102E4(a2);
    if (v14)
    {
      a2 = v14;
    }
  }

  else
  {
    *(v11 + 16) = a1;
  }

  *(v11 + 24) = a2;
  sub_22EE3BD94();
  v15 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  *(v11 + OBJC_IVAR____TtC6ktrace8Reporter_initialFormatter) = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v16 setUnitsStyle_];
  [v16 setZeroFormattingBehavior_];
  [v16 setAllowedUnits_];
  *(v11 + OBJC_IVAR____TtC6ktrace8Reporter_updateFormatter) = v16;
  return v11;
}

uint64_t sub_22EDE8C34(uint64_t a1, unint64_t a2)
{
  v5 = sub_22EE3BF14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FF8, &unk_22EE40510);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22EE3F500;
  v11 = sub_22ED81218(a1, a2);
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  swift_beginAccess();
  sub_22ED82560();
  sub_22EE3CC44();
  swift_endAccess();

  (*(*v2 + 176))(v13);

  v14 = sub_22EE3BEF4();
  v15 = sub_22EE3C4B4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22ED7DF24(a1, a2, &v20);
    _os_log_impl(&dword_22ED7A000, v14, v15, "%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2318F8320](v17, -1, -1);
    MEMORY[0x2318F8320](v16, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22EDE8F50()
{
  MEMORY[0x2318F58F0]();
  (*(*v0 + 216))(0x3A676E696E726177, 0xE900000000000020, 1, 0);
}

uint64_t sub_22EDE90C0()
{
  v1 = OBJC_IVAR____TtC6ktrace8Reporter_creationDate;
  v2 = sub_22EE3BDA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC6ktrace8Reporter_logger;
  v4 = sub_22EE3BF14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22EDE91BC(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22EDE91D4()
{
  result = qword_27DA951B0;
  if (!qword_27DA951B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ANSIColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ANSIColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for Reporter()
{
  result = qword_27DA95C50;
  if (!qword_27DA95C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EDE93DC()
{
  result = sub_22EE3BDA4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22EE3BF14();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22EDE94C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_22EDE950C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        sub_22EE3C864();

        v8 = a1;
        v6 = "g-in to unsafe behavior";
        v5 = 0xD000000000000016;
      }

      else
      {
        sub_22EE3C864();

        v8 = a1;
        v6 = ": missing option";
        v5 = 0xD000000000000012;
      }
    }

    else
    {
      sub_22EE3C864();

      v8 = a1;
      v6 = "itional argument";
      v5 = 0xD000000000000015;
    }

    goto LABEL_13;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      return 0xD00000000000002BLL;
    }

    sub_22EE3C864();

    v8 = a1;
    v6 = ": missing argument";
    v5 = 0xD000000000000027;
    goto LABEL_13;
  }

  if (a3 != 3)
  {
    sub_22EE3C864();

    v8 = a1;
    v6 = ": unknown short option";
    v5 = 0xD000000000000020;
LABEL_13:
    v4 = v6 | 0x8000000000000000;
    goto LABEL_14;
  }

  sub_22EE3C864();

  v8 = a1;
  v4 = 0x800000022EE486C0;
  v5 = 0xD000000000000010;
LABEL_14:
  MEMORY[0x2318F58F0](v5, v4);
  return v8;
}

uint64_t sub_22EDE9774(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 128);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDEBFE4(0, v6[2] + 1, 1, v6);
    v6 = result;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    result = sub_22EDEBFE4((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_22EDE984C;
  v10[5] = v5;
  *(v2 + 128) = v6;
  return result;
}

uint64_t sub_22EDE984C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_22EDE98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = *(v10 + 112);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDEBEC8(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_22EDEBEC8((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v18 + 1;
  v19 = v15 + 80 * v18;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a3;
  *(v19 + 72) = a4;
  *(v19 + 80) = a7 & 1;
  *(v19 + 81) = *v24;
  *(v19 + 84) = *&v24[3];
  *(v19 + 88) = a8;
  *(v19 + 96) = a9;
  *(v19 + 104) = a10 & 1;
  *(v10 + 112) = v15;
  return result;
}

uint64_t sub_22EDE9A10(char a1)
{
  v97 = *v1;
  v91 = v97;
  sub_22EDE3770(&v97, &v89);
  MEMORY[0x2318F58F0](32, 0xE100000000000000);
  MEMORY[0x2318F58F0](v1[4], v1[5]);
  v4 = *(&v91 + 1);
  v3 = v91;
  v96 = v91;
  v5 = v1[2];
  v84 = a1;
  if (v5)
  {
    v6 = v1[3];

    v8 = v5(v7);
    *&v91 = 539831584;
    *(&v91 + 1) = 0xE400000000000000;
    MEMORY[0x2318F58F0](v8);

    MEMORY[0x2318F58F0](v91, *(&v91 + 1));
    sub_22ED97EE0(v5);

    v4 = *(&v96 + 1);
    v3 = v96;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22EE3F500;
  *(v9 + 32) = v3;
  *(v9 + 40) = v4;
  v95 = v9;
  v85 = v1;
  v10 = v1[14];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v15 = 80;
    do
    {
      v16 = (v10 + 32 + 80 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v11)
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v91 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        *(v94 + 9) = *(v16 + 57);
        v93 = v19;
        v94[0] = v20;
        v92 = v18;
        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_69;
        }

        if ((v94[0] & 1) == 0)
        {
          break;
        }

        ++v17;
        v16 += 5;
        if (v13 == v11)
        {
          goto LABEL_18;
        }
      }

      sub_22EDEC118(&v91, &v89);
      v86 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22EDEC298(0, v14[2] + 1, 1);
        v14 = v86;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        sub_22EDEC298((v21 > 1), v22 + 1, 1);
        v14 = v86;
      }

      v14[2] = v22 + 1;
      v23 = &v14[10 * v22];
      *(v23 + 2) = v91;
      v24 = v92;
      v25 = v93;
      v26 = v94[0];
      *(v23 + 89) = *(v94 + 9);
      *(v23 + 4) = v25;
      *(v23 + 5) = v26;
      *(v23 + 3) = v24;
    }

    while (v13 != v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v83 = v10;
  v27 = v14[2];
  if (v27)
  {
    v88 = v12;
    sub_22EDD2DD4(0, v27, 0);
    v28 = v14;
    v29 = v27 - 1;
    v30 = v12;
    for (i = 4; ; i += 10)
    {
      v32 = &v28[i];
      v91 = *v32;
      v33 = *(v32 + 1);
      v34 = *(v32 + 2);
      v35 = *(v32 + 3);
      *(v94 + 9) = *(v32 + 57);
      v93 = v34;
      v94[0] = v35;
      v92 = v33;
      v36 = v91;
      sub_22EDEC118(&v91, &v89);
      MEMORY[0x2318F58F0](v36, *(&v36 + 1));
      v89 = 11565;
      v90 = 0xE200000000000000;
      if (*(&v92 + 1))
      {
        MEMORY[0x2318F58F0](v92);
        MEMORY[0x2318F58F0](2957356, 0xE300000000000000);
      }

      v86 = 2112032;
      v87 = 0xE300000000000000;
      MEMORY[0x2318F58F0](v93, *(&v93 + 1));
      MEMORY[0x2318F58F0](2112032, 0xE300000000000000);

      sub_22EDEC2B8(&v91);
      v38 = v89;
      v37 = v90;
      v88 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22EDD2DD4((v39 > 1), v40 + 1, 1);
        v30 = v88;
      }

      *(v30 + 16) = v40 + 1;
      v41 = v30 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      if (!v29)
      {
        break;
      }

      --v29;
      v28 = v14;
    }
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v42 = sub_22EE116DC(v30, 58, 0xE100000000000000);

  v14 = &v95;
  sub_22EDEA2C0(v42);
  if (v84)
  {
    v43 = MEMORY[0x277D84F90];
    if (v11)
    {
      v44 = 0;
      v13 = MEMORY[0x277D84F90];
      v15 = 80;
LABEL_31:
      v45 = (v83 + 32 + 80 * v44);
      v46 = v44;
      while (v46 < v11)
      {
        v91 = *v45;
        v47 = v45[1];
        v48 = v45[2];
        v49 = v45[3];
        *(v94 + 9) = *(v45 + 57);
        v93 = v48;
        v94[0] = v49;
        v92 = v47;
        v44 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_71;
        }

        if (v94[0])
        {
          sub_22EDEC118(&v91, &v89);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v86 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = &v86;
            sub_22EDEC298(0, *(v13 + 16) + 1, 1);
            v13 = v86;
          }

          v52 = *(v13 + 16);
          v51 = *(v13 + 24);
          if (v52 >= v51 >> 1)
          {
            v14 = &v86;
            sub_22EDEC298((v51 > 1), v52 + 1, 1);
            v13 = v86;
          }

          *(v13 + 16) = v52 + 1;
          v53 = (v13 + 80 * v52);
          v53[2] = v91;
          v54 = v92;
          v55 = v93;
          v56 = v94[0];
          *(v53 + 89) = *(v94 + 9);
          v53[4] = v55;
          v53[5] = v56;
          v53[3] = v54;
          if (v44 != v11)
          {
            goto LABEL_31;
          }

          goto LABEL_44;
        }

        ++v46;
        v45 += 5;
        if (v44 == v11)
        {
          goto LABEL_44;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v15 = sub_22EDDA224(0, *(v15 + 16) + 1, 1, v15);
      goto LABEL_64;
    }

    v13 = MEMORY[0x277D84F90];
LABEL_44:
    v57 = *(v13 + 16);
    if (v57)
    {
      v88 = v43;
      sub_22EDD2DD4(0, v57, 0);
      v58 = v57 - 1;
      v59 = v88;
      for (j = 32; ; j += 80)
      {
        v91 = *(v13 + j);
        v61 = *(v13 + j + 16);
        v62 = *(v13 + j + 32);
        v63 = *(v13 + j + 48);
        *(v94 + 9) = *(v13 + j + 57);
        v93 = v62;
        v94[0] = v63;
        v92 = v61;
        v86 = 11565;
        v87 = 0xE200000000000000;
        v64 = v91;
        sub_22EDEC118(&v91, &v89);
        MEMORY[0x2318F58F0](v64, *(&v64 + 1));
        v89 = v86;
        v90 = v87;
        if (*(&v92 + 1))
        {
          v86 = 2957356;
          v87 = 0xE300000000000000;
          MEMORY[0x2318F58F0](v92);
          MEMORY[0x2318F58F0](v86, v87);
        }

        v86 = 2112032;
        v87 = 0xE300000000000000;
        MEMORY[0x2318F58F0](v93, *(&v93 + 1));
        MEMORY[0x2318F58F0](v86, v87);

        sub_22EDEC2B8(&v91);
        v65 = v89;
        v66 = v90;
        v88 = v59;
        v68 = *(v59 + 16);
        v67 = *(v59 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22EDD2DD4((v67 > 1), v68 + 1, 1);
          v59 = v88;
        }

        *(v59 + 16) = v68 + 1;
        v69 = v59 + 16 * v68;
        *(v69 + 32) = v65;
        *(v69 + 40) = v66;
        if (!v58)
        {
          break;
        }

        --v58;
      }
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    *&v91 = 0x202020200ALL;
    *(&v91 + 1) = 0xE500000000000000;
    if (v85[9])
    {
      v70 = v85[8];
      v71 = v85[9];
    }

    else
    {
      v71 = 0xEF3A736E6F697470;
      v70 = 0x6F20656661736E55;
    }

    MEMORY[0x2318F58F0](v70, v71);

    v72 = v91;
    v73 = v95;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_22EDDA224(0, *(v73 + 2) + 1, 1, v73);
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_22EDDA224((v74 > 1), v75 + 1, 1, v73);
    }

    *(v73 + 2) = v75 + 1;
    *&v73[16 * v75 + 32] = v72;
    v95 = v73;
    v76 = sub_22EE116DC(v59, 58, 0xE100000000000000);

    sub_22EDEA2C0(v76);
  }

  v14 = v85[7];
  v15 = v95;
  if (!v14)
  {
    goto LABEL_67;
  }

  v13 = v85[6];
  v77 = v85[7];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_64:
  v79 = *(v15 + 16);
  v78 = *(v15 + 24);
  if (v79 >= v78 >> 1)
  {
    v15 = sub_22EDDA224((v78 > 1), v79 + 1, 1, v15);
  }

  *(v15 + 16) = v79 + 1;
  v80 = v15 + 16 * v79;
  *(v80 + 32) = v13;
  *(v80 + 40) = v14;
  v95 = v15;
LABEL_67:
  *&v91 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EDD3F74();
  v81 = sub_22EE3C0B4();

  return v81;
}

uint64_t sub_22EDEA2C0(uint64_t result)
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

  result = sub_22EDDA224(result, v11, 1, v3);
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

uint64_t sub_22EDEA3B4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v6 + 3) >> 1, v9 < v7))
  {
    v6 = sub_22EDDA224(isUniquelyReferenced_nonNull_native, v7, 1, v6);
    v9 = *(v6 + 3) >> 1;
  }

  v10 = *(v6 + 2);
  v11 = v9 - v10;
  result = sub_22EDEC56C(&v34, &v6[16 * v10 + 32], v9 - v10, a1, a2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (result)
    {
      v14 = *(v6 + 2);
      v15 = __OFADD__(v14, result);
      v16 = v14 + result;
      if (v15)
      {
        __break(1u);
        goto LABEL_25;
      }

      *(v6 + 2) = v16;
    }

    result = v34;
    if (v13 != v11)
    {
LABEL_9:

      *v2 = v6;
      return result;
    }
  }

  v17 = *(result + 16);
  if (v35 == v17)
  {
    goto LABEL_9;
  }

  if (v35 < v17)
  {
    v18 = *(v6 + 2);
    v19 = result + 16 * v35;
    v20 = v35 + 1;
    v22 = *(v19 + 32);
    v21 = *(v19 + 40);
    v33 = result;

    v23 = v33;
    while (1)
    {
LABEL_15:
      v24 = *(v6 + 3);
      v25 = v24 >> 1;
      if ((v24 >> 1) < v18 + 1)
      {
        result = sub_22EDDA224((v24 > 1), v18 + 1, 1, v6);
        v6 = result;
        v23 = v33;
        v25 = *(result + 24) >> 1;
        v26 = v25 - v18;
        if (v25 > v18)
        {
LABEL_17:
          v32 = v25;
          v27 = 0;
          v28 = v23 + 16 * v20;
          v3 = ~v18;
          v29 = &v6[16 * v18];
          while (1)
          {
            v30 = &v29[v27];
            *(v30 + 4) = v22;
            *(v30 + 5) = v21;
            v31 = *(v23 + 16);
            if (v20 == v31)
            {
              break;
            }

            if (v20 >= v31)
            {
              __break(1u);
              goto LABEL_27;
            }

            ++v20;
            v22 = *(v28 + v27 + 32);
            v21 = *(v28 + v27 + 40);

            v27 += 16;
            --v3;
            --v26;
            v23 = v33;
            if (!v26)
            {
              v18 = v32;
              *(v6 + 2) = v32;
              goto LABEL_15;
            }
          }

LABEL_25:
          *(v6 + 2) = -v3;
          goto LABEL_9;
        }
      }

      else
      {
        v26 = v25 - v18;
        if (v25 > v18)
        {
          goto LABEL_17;
        }
      }

      *(v6 + 2) = v18;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22EDEA5A0(void *result)
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

  result = sub_22EDEC150(result, v11, 1, v3);
  v3 = result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
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

unint64_t sub_22EDEA6A8(uint64_t a1)
{
  v3 = v2;
  v4 = MEMORY[0x277D84F90];
  v244 = MEMORY[0x277D84F90];
  v245 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  if (!v5)
  {
    v224 = 0;
    v215 = MEMORY[0x277D84F90];
    v216 = 0;
    v219 = -1;
    v8 = MEMORY[0x277D84F90];
    goto LABEL_140;
  }

  v6 = 0;
  v215 = MEMORY[0x277D84F90];
  v216 = 0;
  v202 = a1 + 32;
  v7 = a1 + 40;
  v204 = *(v1 + 112);
  v223 = v204 + 32;
  v224 = 0;
  v219 = -1;
  v8 = MEMORY[0x277D84F90];
  v213 = *(a1 + 16);
  v205 = a1 + 40;
LABEL_3:
  v9 = v224;
  v225 = v8;
LABEL_4:
  v224 = v9;
LABEL_5:
  v10 = (v7 + 16 * v6);
  v11 = v6;
  while (1)
  {
    if (v11 >= v5)
    {
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:

LABEL_222:
      sub_22EDEC85C();
      sub_22EDEC2B8(&v231);
    }

    v6 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_218;
    }

    v12 = *(v10 - 1);
    v13 = v12 == 11565 && *v10 == 0xE200000000000000;
    if (v13 || (v14 = *(v10 - 1), v229 = *v10, v15 = *v10, (sub_22EE3CBA4() & 1) != 0))
    {

      sub_22EDEA3B4(v145, v11 + 1);
      while (1)
      {
LABEL_140:
        v227 = v4;
        v146 = v3;
        v147 = v8 + 5;
        v3 = -v8[2];
        v4 = -1;
        while (1)
        {
          v68 = v3 + v4;
          if (v3 + v4 == -1)
          {
            break;
          }

          v9 = v8[2];
          if (++v4 >= v9)
          {
            __break(1u);
            goto LABEL_214;
          }

          v148 = *(v147 - 1);
          v149 = *v147;
          swift_beginAccess();
          if (v148 != *aUnsafe || v149 != unk_27DA951E0)
          {
            v147 += 12;
            if ((sub_22EE3CBA4() & 1) == 0)
            {
              continue;
            }
          }

          break;
        }

        v225 = v8;
        v151 = v214[16];
        v152 = *(v151 + 16);
        if (v152)
        {
          v153 = *(v227 + 16);
          v246 = (v227 + 32);

          v154 = 0;
          v155 = (v151 + 40);
          v70 = v146;
          while (1)
          {
            v157 = *(v155 - 1);
            v156 = *v155;
            if (v154 == v153)
            {
              v158 = 0;
              v159 = 0;
              v154 = v153;
            }

            else
            {
              if (v154 >= *(v227 + 16))
              {
                goto LABEL_219;
              }

              v160 = v154;
              v161 = v70;
              v162 = v160 + 1;
              v163 = &v246[16 * v160];
              v158 = *v163;
              v159 = *(v163 + 1);

              v164 = v162;
              v70 = v161;
              v154 = v164;
            }

            *&v231 = v158;
            *(&v231 + 1) = v159;

            v157(&v231);
            if (v70)
            {
              break;
            }

            v155 += 2;
            if (!--v152)
            {
              goto LABEL_158;
            }
          }

          sub_22EDEC720(v224, v216, v219);
        }

        v154 = 0;
        v70 = v146;
LABEL_158:
        v109 = 1886152040;
        v165 = v225[2];
        v166 = v225 + 5;
        v4 = v165 + 1;
        while (--v4)
        {
          if (*(v166 - 1) != 1886152040 || *v166 != 0xE400000000000000)
          {
            v166 += 12;
            result = sub_22EE3CBA4();
            if ((result & 1) == 0)
            {
              continue;
            }
          }

          sub_22EDEC720(v224, v216, v219);

          v168 = v214[12];
          if (v168)
          {
            v169 = v214[13];

            v170 = v68 != -1;
            goto LABEL_167;
          }

          goto LABEL_168;
        }

        v229 = v154;
        v13 = v165 == 1;
        v110 = v214;
        if (v13)
        {
          if (!v225[2])
          {
            __break(1u);
            goto LABEL_230;
          }

          v172 = v225[4];
          v173 = v225[5];
          v4 = aUnsafe;
          swift_beginAccess();
          v174 = v172 == *aUnsafe && v173 == unk_27DA951E0;
          if (v174 || (result = sub_22EE3CBA4(), (result & 1) != 0))
          {
            sub_22EDEC720(v224, v216, v219);

            v168 = v214[12];
            if (v168)
            {
              v175 = v214[13];

              v170 = 1;
LABEL_167:
              v171 = sub_22EDE9A10(v170);
              v168(v171);

              sub_22ED97EE0(v168);
            }

LABEL_168:

            return 0;
          }
        }

        if (v219 != 0xFF)
        {

          swift_bridgeObjectRelease_n();

          sub_22EDEC798();
          swift_allocError();
          *v176 = v224;
          *(v176 + 8) = v216;
          *(v176 + 16) = v219;
          swift_willThrow();
        }

        v246 = *(v215 + 2);
        if (!v246)
        {
          break;
        }

        v177 = 0;
        v8 = v215 + 40;
        while (v177 < *(v215 + 2))
        {
          v73 = *(v8 - 1);
          v178 = *v8;
          v179 = v110[10];
          if (!v179)
          {
LABEL_209:
            v195 = v178;

            swift_bridgeObjectRelease_n();

            sub_22EDEC798();
            swift_allocError();
            *v196 = v73;
            *(v196 + 8) = v195;
            *(v196 + 16) = 0;
            swift_willThrow();
          }

          v180 = v110;
          v4 = v110[11];
          v181 = *v8;

          sub_22ED971B0(v179);
          v179(v73, v181);
          if (v70)
          {

            sub_22ED97EE0(v179);

            swift_bridgeObjectRelease_n();
          }

          ++v177;
          sub_22ED97EE0(v179);

          v8 += 2;
          v110 = v180;
          if (v246 == v177)
          {
            goto LABEL_189;
          }
        }

LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        v200 = v240;
        sub_22EDEC118(&v240, &v231);
        sub_22EDEC720(v224, v216, v219);

        sub_22EDEC2B8(&v240);
        v219 = 2;
        v216 = *(&v200 + 1);
        v224 = v200;
        v3 = v203;
      }

LABEL_189:
      v73 = v225;
      v75 = v225[2];
      if (v68 == -1)
      {
        goto LABEL_196;
      }

      v182 = v75 + 1;
      v183 = 10;
      while (--v182)
      {
        v184 = v225[v183];
        v183 += 12;
        if (v184)
        {
          goto LABEL_196;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_22EDEC798();
      swift_allocError();
      *v197 = 0;
      *(v197 + 8) = 0;
      *(v197 + 16) = 6;
      swift_willThrow();
    }

    v228 = v12;
    if (sub_22EE3C2A4())
    {
      v21 = sub_22EDEBD94(61, 0xE100000000000000, v12, v15);
      v23 = v22;

      v220 = sub_22EDEC670(2uLL, v12, v15);
      v217 = v24;
      v209 = v25;
      v27 = v26;

      v28 = v21;
      if (v23)
      {
        v29 = HIBYTE(v229) & 0xF;
        if ((v229 & 0x2000000000000000) == 0)
        {
          v29 = v12;
        }

        v30 = v29 << 16;
        if ((v229 & 0x1000000000000000) == 0 || (v12 & 0x800000000000000) != 0)
        {
          v28 = v30 | 7;
        }

        else
        {
          v28 = v30 | 0xB;
        }
      }

      v210 = v6;
      v226 = v4;
      v203 = v3;
      if (v28 >> 14 < v220 >> 14)
      {
        goto LABEL_227;
      }

      v206 = v21;
      v208 = v27;
      v31 = sub_22EE3C654();
      v35 = v34;
      v36 = *(v204 + 16);
      if (v36)
      {
        v37 = v33;
        v38 = 0;
        v39 = v32 >> 16;
        v40 = MEMORY[0x277D84F90];
        v246 = (v31 >> 16);
        do
        {
          v4 = v223 + 80 * v38;
          v8 = v38;
          while (1)
          {
            if (v8 >= v36)
            {
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
              goto LABEL_226;
            }

            v231 = *v4;
            v41 = *(v4 + 16);
            v42 = *(v4 + 32);
            v43 = *(v4 + 48);
            *&v234[9] = *(v4 + 57);
            v233 = v42;
            *v234 = v43;
            v232 = v41;
            v38 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_224;
            }

            v44 = (*(&v231 + 1) & 0x2000000000000000) != 0 ? HIBYTE(*(&v231 + 1)) & 0xFLL : v231 & 0xFFFFFFFFFFFFLL;
            if (v231 == __PAIR128__(v35, v37) && !v246 && v44 == v39 || (sub_22EE3CB74() & 1) != 0)
            {
              break;
            }

            v8 = (v8 + 1);
            v4 += 80;
            if (v38 == v36)
            {
              v8 = v225;
              goto LABEL_50;
            }
          }

          sub_22EDEC118(&v231, __dst);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v240 = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22EDEC298(0, *(v40 + 16) + 1, 1);
            v40 = v240;
          }

          v8 = v225;
          v47 = *(v40 + 16);
          v46 = *(v40 + 24);
          v48 = v47 + 1;
          if (v47 >= v46 >> 1)
          {
            sub_22EDEC298((v46 > 1), v47 + 1, 1);
            v48 = v47 + 1;
            v40 = v240;
          }

          *(v40 + 16) = v48;
          v49 = (v40 + 80 * v47);
          v49[2] = v231;
          v50 = v232;
          v51 = v233;
          v52 = *v234;
          *(v49 + 89) = *&v234[9];
          v49[4] = v51;
          v49[5] = v52;
          v49[3] = v50;
        }

        while (v38 != v36);
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

LABEL_50:

      if (!*(v40 + 16))
      {

        v5 = v213;
        v3 = v203;
        v4 = v226;
        v6 = v210;
        if (v214[10])
        {

          v53 = MEMORY[0x2318F5880](v220, v217, v209, v208);
          v55 = v54;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v215 = sub_22EDDA224(0, *(v215 + 2) + 1, 1, v215);
          }

          v57 = *(v215 + 2);
          v56 = *(v215 + 3);
          if (v57 >= v56 >> 1)
          {
            v215 = sub_22EDDA224((v56 > 1), v57 + 1, 1, v215);
          }

          *(v215 + 2) = v57 + 1;
          v58 = &v215[16 * v57];
          *(v58 + 4) = v53;
          *(v58 + 5) = v55;
          v7 = v205;
          if (v210 == v213)
          {
            goto LABEL_140;
          }

          goto LABEL_5;
        }

        sub_22EDEC720(v224, v216, v219);
        v219 = 0;
        v216 = v229;
        goto LABEL_101;
      }

      v4 = v226;
      v6 = v210;
      v5 = v213;
      if (!*(v40 + 16))
      {
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
        return result;
      }

      v98 = *(v40 + 48);
      v99 = *(v40 + 80);
      v233 = *(v40 + 64);
      *v234 = v99;
      *&v234[9] = *(v40 + 89);
      v231 = *(v40 + 32);
      v232 = v98;
      sub_22EDEC118(&v231, __dst);

      sub_22EDEC118(&v231, __dst);
      v64 = sub_22EDEBEC8(0, 1, 1, MEMORY[0x277D84F90]);
      v101 = *(v64 + 2);
      v100 = *(v64 + 3);
      if (v101 >= v100 >> 1)
      {
        v64 = sub_22EDEBEC8((v100 > 1), v101 + 1, 1, v64);
      }

      *(v64 + 2) = v101 + 1;
      v102 = &v64[80 * v101];
      *(v102 + 2) = v231;
      v103 = v232;
      v104 = v233;
      v105 = *v234;
      *(v102 + 89) = *&v234[9];
      *(v102 + 4) = v104;
      *(v102 + 5) = v105;
      *(v102 + 3) = v103;
      if (v23)
      {
        sub_22EDEC2B8(&v231);
        v62 = 0;
        v63 = 0;
        v65 = *(v64 + 2);
        if (v65)
        {
LABEL_117:

          v119 = *(v64 + 2);
          if (v65 > v119)
          {
            goto LABEL_232;
          }

          v222 = v64;
          v120 = &v64[80 * v65];
          v121 = *(v120 - 2);
          v122 = *(v120 - 1);
          v123 = *v120;
          *&v243[9] = *(v120 + 9);
          v124 = *(v120 - 3);
          v242 = v122;
          *v243 = v123;
          v240 = v124;
          v241 = v121;
          if ((v243[24] & 1) != 0 || v63)
          {
            goto LABEL_124;
          }

          if (v6 == v5)
          {
            goto LABEL_228;
          }

          if (v6 >= v5)
          {
            goto LABEL_233;
          }

          if (__OFADD__(v6, 1))
          {
            goto LABEL_234;
          }

          v125 = (v202 + 16 * v6);
          v62 = *v125;
          v63 = v125[1];

          ++v6;
LABEL_124:
          if (v119 == 1)
          {
            sub_22EDEC118(&v240, &v231);

            v126 = MEMORY[0x277D84F90];
          }

          else
          {
            v212 = v6;
            sub_22EDEC118(&v240, &v231);
            v239 = MEMORY[0x277D84F90];

            sub_22EDEC2E8(0, v119 - 1, 0);
            v126 = v239;
            v127 = v119 - 2;
            for (i = 32; ; i += 80)
            {
              v237[0] = *&v222[i];
              v129 = *&v222[i + 16];
              v130 = *&v222[i + 32];
              v131 = *&v222[i + 48];
              *(v238 + 9) = *&v222[i + 57];
              v237[2] = v130;
              v238[0] = v131;
              v237[1] = v129;
              memmove(__dst, &v222[i], 0x49uLL);
              v233 = __dst[2];
              *v234 = __dst[3];
              *&v234[16] = __dst[4];
              v231 = __dst[0];
              v232 = __dst[1];
              sub_22EDEC118(v237, v236);
              v239 = v126;
              v133 = v126[2];
              v132 = v126[3];
              if (v133 >= v132 >> 1)
              {
                sub_22EDEC2E8((v132 > 1), v133 + 1, 1);
                v126 = v239;
              }

              v126[2] = v133 + 1;
              v134 = &v126[12 * v133];
              *(v134 + 2) = v231;
              v135 = v232;
              v136 = v233;
              v137 = *&v234[16];
              *(v134 + 5) = *v234;
              *(v134 + 6) = v137;
              *(v134 + 3) = v135;
              *(v134 + 4) = v136;
              v134[14] = 0;
              v134[15] = 0;
              if (!v127)
              {
                break;
              }

              --v127;
            }

            swift_bridgeObjectRelease_n();
            v6 = v212;
            v5 = v213;
          }

          sub_22EDEA5A0(v126);
          v8 = v244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_22EDEC150(0, v8[2] + 1, 1, v8);
          }

          v139 = v8[2];
          v138 = v8[3];
          if (v139 >= v138 >> 1)
          {
            v8 = sub_22EDEC150((v138 > 1), v139 + 1, 1, v8);
          }

          *&v234[9] = *&v243[9];
          v233 = v242;
          *v234 = *v243;
          v231 = v240;
          v140 = v240;
          v232 = v241;
          v8[2] = v139 + 1;
          v141 = &v8[12 * v139];
          *(v141 + 2) = v140;
          v142 = v232;
          v143 = v233;
          v144 = *&v234[16];
          *(v141 + 5) = *v234;
          *(v141 + 6) = v144;
          *(v141 + 3) = v142;
          *(v141 + 4) = v143;
          v141[14] = v62;
          v141[15] = v63;
          v244 = v8;
          v3 = v203;
          v7 = v205;
          if (v6 == v5)
          {
            goto LABEL_140;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v221 = v64;
        if (v234[24] == 1)
        {
          sub_22EDEC2B8(&v231);
LABEL_98:
          v62 = 0;
          v63 = 0;
        }

        else
        {

          sub_22EDEC74C(v206, v228, v229);
          v107 = v106;

          result = sub_22EE3C614();
          if (v108)
          {
            result = v107;
          }

          if (v107 >> 14 < result >> 14)
          {
            goto LABEL_235;
          }

          v110 = *(&v231 + 1);
          v109 = v231;
          v111 = sub_22EE3C654();
          v113 = v112;
          v115 = v114;
          v117 = v116;

          v62 = MEMORY[0x2318F5880](v111, v113, v115, v117);
          v63 = v118;

          if (!sub_22EE3C1D4())
          {
LABEL_230:

            sub_22EDEC720(v224, v216, v219);

            sub_22EDEC798();
            swift_allocError();
            *v201 = v109;
            *(v201 + 8) = v110;
            *(v201 + 16) = 2;
            swift_willThrow();

            sub_22EDEC2B8(&v231);
          }

          sub_22EDEC2B8(&v231);
          v4 = v226;
          v6 = v210;
          v5 = v213;
        }

        v64 = v221;
        v65 = *(v221 + 2);
        if (v65)
        {
          goto LABEL_117;
        }
      }

LABEL_100:
      sub_22EDEC720(v224, v216, v219);

      v219 = 3;
      v216 = v229;
      v3 = v203;
LABEL_101:
      v7 = v205;
      v9 = v228;
      if (v6 == v5)
      {
LABEL_214:
        v224 = v9;
        goto LABEL_140;
      }

      goto LABEL_4;
    }

    if (sub_22EE3C2A4())
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22EDDA224(0, *(v4 + 16) + 1, 1, v4);
    }

    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    v18 = v229;
    if (v17 >= v16 >> 1)
    {
      v20 = sub_22EDDA224((v16 > 1), v17 + 1, 1, v4);
      v18 = v229;
      v4 = v20;
    }

    *(v4 + 16) = v17 + 1;
    v19 = (v4 + 16 * v17);
    *(v19 + 4) = v12;
    *(v19 + 5) = v18;
    ++v11;
    v10 += 2;
    if (v6 == v5)
    {
      goto LABEL_140;
    }
  }

  v59 = sub_22EDEC670(1uLL, v12, v229);
  v61 = v60;

  v207 = v61 >> 14;
  v203 = v3;
  if (v61 >> 14 == v59 >> 14)
  {

    v62 = 0;
    v63 = 0;
    v64 = MEMORY[0x277D84F90];
    v65 = *(MEMORY[0x277D84F90] + 16);
    if (v65)
    {
      goto LABEL_117;
    }

    goto LABEL_100;
  }

  v221 = MEMORY[0x277D84F90];
  v227 = v4;
  v211 = v6;
  v246 = *(v204 + 16);
LABEL_64:
  v68 = sub_22EE3C634();
  v70 = v69;
  v71 = v246;
  result = sub_22EE3C604();
  v218 = result;
  if (!v71)
  {
    v74 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_62;
    }

    goto LABEL_91;
  }

  v73 = 0;
  v74 = MEMORY[0x277D84F90];
LABEL_66:
  v75 = (v204 + 32);
  v4 = v223 + 80 * v73;
  v76 = v73;
  while (v76 < v71)
  {
    v231 = *v4;
    v77 = *(v4 + 16);
    v78 = *(v4 + 32);
    v79 = *(v4 + 48);
    v75 = &v231;
    *&v234[9] = *(v4 + 57);
    v233 = v78;
    *v234 = v79;
    v232 = v77;
    v73 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      goto LABEL_195;
    }

    if (*(&v232 + 1))
    {
      v80 = v232;
    }

    else
    {
      v80 = 0;
    }

    if (*(&v232 + 1))
    {
      v81 = *(&v232 + 1);
    }

    else
    {
      v81 = 0xE000000000000000;
    }

    if (v80 == v68 && v81 == v70)
    {
      sub_22EDEC118(&v231, __dst);

LABEL_83:
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v240 = v74;
      if ((result & 1) == 0)
      {
        result = sub_22EDEC298(0, *(v74 + 16) + 1, 1);
        v74 = v240;
      }

      v8 = v225;
      v85 = *(v74 + 16);
      v84 = *(v74 + 24);
      if (v85 >= v84 >> 1)
      {
        result = sub_22EDEC298((v84 > 1), v85 + 1, 1);
        v74 = v240;
      }

      *(v74 + 16) = v85 + 1;
      v86 = (v74 + 80 * v85);
      v86[2] = v231;
      v87 = v232;
      v88 = v233;
      v89 = *v234;
      *(v86 + 89) = *&v234[9];
      v86[4] = v88;
      v86[5] = v89;
      v86[3] = v87;
      v71 = v246;
      if (v73 != v246)
      {
        goto LABEL_66;
      }

LABEL_88:
      if (!*(v74 + 16))
      {
LABEL_62:

        sub_22EDEC720(v224, v216, v219);
        v219 = 1;
        v224 = v68;
        v216 = v70;
        v4 = v227;
        v6 = v211;
        v5 = v213;
        v66 = v221;
        v67 = v218;
        goto LABEL_63;
      }

LABEL_91:

      if (!*(v74 + 16))
      {
        goto LABEL_225;
      }

      v90 = *(v74 + 48);
      v91 = *(v74 + 80);
      v233 = *(v74 + 64);
      *v234 = v91;
      *&v234[9] = *(v74 + 89);
      v231 = *(v74 + 32);
      v232 = v90;
      sub_22EDEC118(&v231, __dst);

      v66 = v221;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_22EDEBEC8(0, *(v221 + 2) + 1, 1, v221);
      }

      v4 = v227;
      v6 = v211;
      v5 = v213;
      v67 = v218;
      v93 = *(v66 + 2);
      v92 = *(v66 + 3);
      if (v93 >= v92 >> 1)
      {
        v66 = sub_22EDEBEC8((v92 > 1), v93 + 1, 1, v66);
      }

      *(v66 + 2) = v93 + 1;
      v94 = &v66[80 * v93];
      *(v94 + 2) = v231;
      v95 = v232;
      v96 = v233;
      v97 = *v234;
      *(v94 + 89) = *&v234[9];
      *(v94 + 4) = v96;
      *(v94 + 5) = v97;
      *(v94 + 3) = v95;
LABEL_63:
      v221 = v66;
      if (v207 == v67 >> 14)
      {

        goto LABEL_98;
      }

      goto LABEL_64;
    }

    v83 = sub_22EE3CBA4();
    sub_22EDEC118(&v231, __dst);

    if (v83)
    {
      goto LABEL_83;
    }

    result = sub_22EDEC2B8(&v231);
    ++v76;
    v4 += 80;
    v71 = v246;
    if (v73 == v246)
    {
      v8 = v225;
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  if (v75)
  {
    v185 = 0;
    v246 = v75 - 1;
    v186 = 32;
    while (1)
    {
      v187 = *&v73[v186 + 32];
      v188 = *&v73[v186 + 48];
      v189 = *&v73[v186 + 64];
      v235 = *&v73[v186 + 80];
      *v234 = v188;
      v190 = *&v73[v186 + 16];
      v231 = *&v73[v186];
      v232 = v190;
      *&v234[16] = v189;
      v233 = v187;
      v191 = v235;
      if (v68 == -1 && v234[0])
      {
        v198 = v231;
        sub_22EDEC7EC(&v231, __dst);

        swift_bridgeObjectRelease_n();

        sub_22EDEC798();
        swift_allocError();
        *v199 = v198;
        *(v199 + 16) = 5;
        swift_willThrow();

        sub_22EDEC2B8(&v231);
      }

      v192 = v70;
      v193 = *&v234[8];
      if (v234[24])
      {
        sub_22EDEC7EC(&v231, __dst);
        sub_22EDE976C();

        v193(v194);
        if (v192)
        {
          goto LABEL_220;
        }
      }

      else
      {
        if (!*(&v235 + 1))
        {
          goto LABEL_236;
        }

        sub_22EDEC7EC(&v231, __dst);
        sub_22EDE976C();
        (v193)(v191, *(&v191 + 1));
        if (v192)
        {

          goto LABEL_222;
        }
      }

      sub_22EDEC85C();
      result = sub_22EDEC2B8(&v231);
      if (v246 == v185)
      {
        break;
      }

      ++v185;
      v73 = v225;
      v178 = v225[2];
      v186 += 96;
      v70 = v192;
      if (v185 >= v178)
      {
        __break(1u);
        goto LABEL_209;
      }
    }
  }

  sub_22EDEA3B4(v227, v229);

  return v245;
}

unint64_t sub_22EDEBD94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_22EE3C2F4() != a1 || v9 != a2)
  {
    v10 = sub_22EE3CBA4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_22EE3C1E4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

__n128 sub_22EDEBE9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __n128 a13, uint64_t a14)
{
  result = a13;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  return result;
}

char *sub_22EDEBEC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95200, &qword_22EE412B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEBFE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95208, &qword_22EE412B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95210, &qword_22EE412C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEC150(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F8, &qword_22EE412A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDEC298(char *a1, int64_t a2, char a3)
{
  result = sub_22EDEC308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EDEC2E8(void *a1, int64_t a2, char a3)
{
  result = sub_22EDEC424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDEC308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95200, &qword_22EE412B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDEC424(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F8, &qword_22EE412A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EDEC56C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_14:
    *v7 = a4;
    v7[1] = v5;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9 == a5)
    {
      v5 = *(a4 + 16);
      v8 = v9 - a5;
      goto LABEL_14;
    }

    v10 = a2;
    v16 = v9 - a5;
    v11 = 0;
    v12 = a3 - 1;
    v13 = a5 - v9;
    v14 = (a4 + 16 * a5 + 40);
    while ((v5 & 0x8000000000000000) == 0)
    {
      if ((v5 + v11) >= *(a4 + 16))
      {
        goto LABEL_16;
      }

      v15 = *v14;
      *v10 = *(v14 - 1);
      v10[1] = v15;
      if (v12 == v11)
      {

        v5 += v11 + 1;
        goto LABEL_14;
      }

      ++v11;
      v14 += 2;
      v10 += 2;
      if (!(v13 + v11))
      {
        v5 = v9;
        v8 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDEC670(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_22EE3C1F4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_22EE3C314();
}

uint64_t sub_22EDEC720(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_22EDEC734(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22EDEC734(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_22EDEC74C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22EE3C314();
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDEC798()
{
  result = qword_27DA951E8;
  if (!qword_27DA951E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA951E8);
  }

  return result;
}

uint64_t sub_22EDEC7EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA951F0, qword_22EE40F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22EDEC89C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_22EDEC8E4(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EDEC974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDEC9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22EDECA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_22EDECA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6ktrace12OptionParserV10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_22EDECB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDECB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_22EDECB94(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22EDECBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = (a3 / a5) * 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D83A90];
  *(v9 + 16) = xmmword_22EE3F500;
  v11 = MEMORY[0x277D83B08];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v8;
  result = sub_22EE3C134();
  if ((a3 - 0x200000000000000) >> 58 == 63)
  {
    v13 = result;
    v14 = [objc_opt_self() stringFromByteCount:a3 << 6 countStyle:1];
    v15 = sub_22EE3C124();
    v17 = v16;

    sub_22EE3C864();

    MEMORY[0x2318F58F0](0xD000000000000017, 0x800000022EE487A0);
    MEMORY[0x2318F58F0](a1, a2);
    MEMORY[0x2318F58F0](10272, 0xE200000000000000);
    MEMORY[0x2318F58F0](v15, v17);

    MEMORY[0x2318F58F0](11817, 0xE200000000000000);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22EDECD7C(uint64_t a1)
{
  v3 = v1;
  v4 = HIWORD(*(a1 + 48));
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v24 = v7;
  result = sub_22EDECEF8(v4);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v9;
  if (v7[3] < v13)
  {
    sub_22EDECFB0(v13, isUniquelyReferenced_nonNull_native);
    result = sub_22EDECEF8(v4);
    if ((v2 & 1) == (v14 & 1))
    {
      goto LABEL_6;
    }

    result = sub_22EE3CBE4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  *v3 = v7;
  if (v2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7[(result >> 6) + 8] |= 1 << result;
  *(v7[6] + 2 * result) = v4;
  *(v7[7] + 8 * result) = 1;
  v15 = v7[2];
  v12 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (!v12)
  {
    v7[2] = v16;
    while (1)
    {
LABEL_9:
      v17 = v7[7];
      v18 = *(v17 + 8 * result);
      v12 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v12)
      {
LABEL_13:
        __break(1u);
      }

      else
      {
        *(v17 + 8 * result) = v19;
        v20 = v3[1];
        v21 = __CFADD__(v20, 1);
        v22 = v20 + 1;
        if (!v21)
        {
          v3[1] = v22;
          return result;
        }
      }

      __break(1u);
LABEL_15:
      v23 = result;
      sub_22EDED218();
      result = v23;
      v7 = v24;
      *v3 = v24;
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22EDECEF8(unsigned __int16 a1)
{
  v3 = MEMORY[0x2318F6350](*(v1 + 40), a1, 2);

  return sub_22EDECF40(a1, v3);
}

unint64_t sub_22EDECF40(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22EDECFB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
  result = sub_22EE3C9C4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x2318F6350](*(v8 + 40), v21, 2);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_22EDED218()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
  v2 = *v0;
  v3 = sub_22EE3C9B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_22EDED364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95218, &qword_22EE41338);
    v3 = sub_22EE3C9D4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_22EDECEF8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

uint64_t sub_22EDED464(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_22EDED4AC(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a1;
  return result;
}

uint64_t sub_22EDED4E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22EDED528(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22EDED590(a1, a2, a3);
  return v6;
}

uint64_t sub_22EDED590(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = v3;
  v9 = dispatch_semaphore_create(0);
  *(v5 + 24) = a2;
  *(v5 + 32) = v9;
  *(v5 + 48) = 0;
  *(v5 + 16) = a1;
  type metadata accessor for WakeListener();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = a3;
  *(v5 + 40) = v10;
  v11 = *(a1 + 16);

  v17 = a2;
  v21 = a3;

  if (v11)
  {
    v13 = 0;
    v14 = a1 + 32;
    while (v13 < *(a1 + 16))
    {
      sub_22EDEE72C(v14, v18);
      v15 = v19;
      v16 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v16 + 8))(*(v5 + 24), *(v5 + 32), *(v5 + 40), v15, v16);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_0(v18);
        return v5;
      }

      ++v13;
      result = __swift_destroy_boxed_opaque_existential_0(v18);
      v14 += 40;
      if (v11 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return v5;
  }

  return result;
}

uint64_t sub_22EDED70C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_22EDED75C(NSObject *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a2;
  v17[4] = sub_22EDEEBE0;
  v17[5] = v10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22EDED934;
  v17[3] = &block_descriptor_44;
  v11 = _Block_copy(v17);

  v12 = a2;

  v13 = sub_22EE3C184();
  v14 = notify_register_dispatch((v13 + 32), &out_token, a1, v11);

  _Block_release(v11);
  if (v14)
  {
    type metadata accessor for KTraceRecordError();
    sub_22EDEEC38(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    *v15 = v14;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EDED934(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22EDED9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for NotificationWaiter;
  a3[4] = &off_2843A1820;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_22EDED9C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v28 = a2;
  v32 = a1;
  v6 = sub_22EE3BFF4();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22EE3C014();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22EE3C034();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  sub_22EE3C024();
  sub_22EE3C044();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4 / 1000000000.0;
  v24 = v28;
  *(v23 + 32) = v28;
  aBlock[4] = sub_22EDEEC80;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_50;
  v25 = _Block_copy(aBlock);

  v26 = v24;
  sub_22EE3C004();
  v33 = MEMORY[0x277D84F90];
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  sub_22EE3C7B4();
  MEMORY[0x2318F5BE0](v21, v13, v9, v25);
  _Block_release(v25);
  (*(v31 + 8))(v9, v6);
  (*(v29 + 8))(v13, v30);
  v22(v21, v14);
}

uint64_t sub_22EDEDDA0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v26 = sub_22EE3BFF4();
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22EE3C014();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 16);
  v15 = sub_22EE3BF54();
  signal(v14, v15);
  sub_22EDEECDC();
  v16 = sub_22EE3C524();
  v17 = *(v4 + 24);
  *(v4 + 24) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v4;
  v18[4] = a2;
  aBlock[4] = sub_22ED826E4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_56;
  v19 = _Block_copy(aBlock);

  v20 = a2;
  sub_22EE3C004();
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v24 + 8))(v9, v26);
  (*(v10 + 8))(v13, v25);

  if (*(v4 + 24))
  {
    v22 = *(v4 + 24);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22EE3C554();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22EDEE074()
{
  sub_22EE3BFF4();
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  return sub_22EE3C7B4();
}

uint64_t sub_22EDEE12C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22EDEE188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      a4[3] = &type metadata for TimeWaiter;
      a4[4] = &off_2843A1810;
      *a4 = result;
    }

    else
    {
      a4[3] = &type metadata for NotificationWaiter;
      a4[4] = &off_2843A1820;
      *a4 = result;
      a4[1] = a2;
    }
  }

  else
  {
    v6 = result;
    v7 = type metadata accessor for SignalWaiter();
    result = swift_allocObject();
    *(result + 24) = 0;
    *(result + 16) = v6;
    a4[3] = v7;
    a4[4] = &off_2843A1800;
    *a4 = result;
  }

  return result;
}

uint64_t sub_22EDEE280(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  *(v1 + 28) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_22EDEE318(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a1;
  v6 = sub_22EE3BFF4();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22EE3C014();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_enter(*(v3 + 16));
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a3;
  v14[4] = a2;
  aBlock[4] = sub_22EDEE7F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22ED842DC;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  sub_22EE3C004();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_22EDEEC38(&qword_27DA95228, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95230, qword_22EE41340);
  sub_22EDEE8B8();
  sub_22EE3C7B4();
  sub_22EE3C4D4();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

void sub_22EDEE5E0(unsigned int a1)
{
  (*(*v1 + 104))(a1);
  v2 = v1[2];

  dispatch_group_leave(v2);
}

uint64_t sub_22EDEE644()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22EDEE67C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = dispatch_group_create();
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  return v0;
}

uint64_t sub_22EDEE72C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22EDEE7F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = (*(**(v0 + 16) + 96))();
  if ((result & 0x100000000) == 0)
  {
    if ((result - 4) <= 2)
    {
      (*(*v1 + 120))(qword_22EE41670[(result - 4)], 0, 3);
    }

    return sub_22EE3C5A4();
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22EDEE8B8()
{
  result = qword_27DA95238;
  if (!qword_27DA95238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95230, qword_22EE41340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95238);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6ktrace10WakeReasonO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22EDEE938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDEE980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22EDEE9C4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22EDEEA1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EDEEA64(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for ktrace_end_reason()
{
  if (!qword_27DA952A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DA952A0);
    }
  }
}

uint64_t sub_22EDEEB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22EDEEB94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22EDEEBE0()
{
  v1 = *(v0 + 40);
  (*(**(v0 + 16) + 120))(*(v0 + 24), *(v0 + 32), 1);
  return sub_22EE3C5A4();
}

uint64_t sub_22EDEEC38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EDEEC80()
{
  v1 = *(v0 + 32);
  (*(**(v0 + 16) + 120))(*(v0 + 24), 0, 2);
  return sub_22EE3C5A4();
}

unint64_t sub_22EDEECDC()
{
  result = qword_27DA952B0;
  if (!qword_27DA952B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA952B0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22EDEED9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for RecordingOptions.Options(0);
  v8 = (a1 + v7[32]);
  v80 = v8[1];
  v81 = *v8;
  v82 = *(a1 + v7[16]);
  v9 = *(a1 + v7[24]);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_22EDF3184(*(v9 + 16), 0);
    v83 = sub_22EDF3E34(v89, v11 + 4, v10, v9);

    sub_22ED97F20();
    if (v83 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v89[0] = v11;
  v12 = 0;
  sub_22EDF3118(v89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
  sub_22EDD3F74();
  v13 = sub_22EE3C0B4();
  v76 = v14;
  v77 = v13;

  v15 = *(a1 + v7[25]);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = sub_22EDF3184(v16, 0);
    v18 = sub_22EDF3E34(v89, v17 + 4, v16, v15);
    v12 = v89[3];
    v73 = v18;

    sub_22ED97F20();
    if (v73 != v16)
    {
      __break(1u);
      goto LABEL_29;
    }

    v12 = 0;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v89[0] = v17;
  sub_22EDF3118(v89);
  v19 = sub_22EE3C0B4();
  v72 = v20;
  v74 = v19;

  v89[0] = a2;

  sub_22EDF3118(v89);

  v21 = sub_22EE3C0B4();
  v23 = v22;

  v89[0] = a3;

  sub_22EDF3118(v89);

  v24 = sub_22EE3C0B4();
  v86 = v25;
  v88 = v24;

  v26 = a1 + v7[9];
  v27 = *v26;
  LOBYTE(v89[0]) = *(v26 + 8);
  v28 = a1 + v7[15];
  v29 = 0.0;
  if ((*(v28 + 8) & 1) == 0)
  {
    v29 = *v28 / 1000000.0;
  }

  v95 = *(v28 + 8);
  v30 = *(*(a1 + v7[12]) + 16);
  v31 = *(*(a1 + v7[13]) + 16);
  v32 = v7[11];
  v33 = a1 + v7[10];
  v34 = *v33;
  v94 = *(v33 + 4);
  v35 = *(a1 + v32);
  if ((*(a1 + v32 + 8) & 1) == 0)
  {
    if (!(v35 >> 58))
    {
      v35 <<= 6;
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_17:
  v84 = v23;
  v93 = *(a1 + v32 + 8);
  v36 = a1 + v7[30];
  v37 = 0.0;
  if ((*(v36 + 8) & 1) == 0)
  {
    v37 = *v36 / 1000000000.0;
  }

  v38 = *(a1 + v7[14]);
  v39 = *(a1 + v7[28]);
  v40 = *(a1 + v7[17]);
  v41 = *(a1 + v7[27]);
  v42 = *(a1 + v7[18]);
  v92 = *(v36 + 8);
  v43 = (a1 + v7[19]);
  v44 = *v43;
  v45 = v43[1];
  v46 = (a1 + v7[20]);
  v47 = *v46;
  v12 = v46[1];
  v48 = a1 + v7[21];
  v49 = *(v48 + 8);
  v71 = v34;
  v70 = v35;
  v68 = v39;
  v69 = v42;
  v66 = v41;
  v67 = v40;
  v65 = v38;
  v63 = v44;
  v64 = v27;
  v62 = v47;
  if ((v49 & 1) == 0)
  {
    v53 = *v48;
    if ((v53 & 0x8000000000000000) == 0)
    {
      if (!(v53 >> 54))
      {
        if (!(v53 >> 44))
        {
          v50 = v21;
          v51 = v72;
          v52 = v74;
          v61 = v53 << 20;
          goto LABEL_25;
        }

LABEL_32:
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = v21;
  v51 = v72;
  v52 = v74;
  v61 = 0;
LABEL_25:
  v75 = a4 & 1;
  v54 = v31 != 0;
  v55 = v30 != 0;
  v91 = v49;
  v56 = *(a1 + v7[22]);
  v57 = 63;
  if (!v56)
  {
    v57 = 0;
  }

  v79 = v57;

  result = sub_22EDF3F8C(a1);
  *a5 = v81;
  *(a5 + 8) = v80;
  *(a5 + 16) = v77;
  *(a5 + 24) = v76;
  *(a5 + 32) = v52;
  *(a5 + 40) = v51;
  *(a5 + 48) = v50;
  *(a5 + 56) = v84;
  *(a5 + 64) = v88;
  *(a5 + 72) = v86;
  *(a5 + 80) = v64;
  *(a5 + 88) = v89[0];
  *(a5 + 104) = v95;
  *(a5 + 105) = v82;
  *(a5 + 106) = v55;
  *(a5 + 107) = v65;
  *(a5 + 108) = v71;
  *(a5 + 112) = v94;
  *(a5 + 120) = v70;
  *(a5 + 128) = v93;
  *(a5 + 129) = v54;
  *(a5 + 144) = v92;
  *(a5 + 145) = v68;
  *(a5 + 146) = v75;
  *(a5 + 147) = v67;
  *(a5 + 148) = v66;
  *&v60 = v62;
  *&v59 = v63;
  *(&v59 + 1) = v45;
  *(&v60 + 1) = v12;
  *(a5 + 149) = v69;
  *(a5 + 184) = v61;
  *(a5 + 192) = v91;
  *(a5 + 200) = v79;
  v90 = v56 ^ 1;
  *(a5 + 208) = v56 ^ 1;
  *(a5 + 96) = v29;
  *(a5 + 136) = v37;
  *(a5 + 168) = v60;
  *(a5 + 152) = v59;
  return result;
}

unint64_t sub_22EDEF324(char a1)
{
  result = 0x656D614E6E616C70;
  switch(a1)
  {
    case 1:
      result = 0x6465646461;
      break;
    case 2:
      result = 0x64657474696D6FLL;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x73726579616CLL;
      break;
    case 5:
    case 13:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 16:
      result = 0x73736572706D6F63;
      break;
    case 8:
      result = 0x7453796669746F6ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x65644B6E4F646E65;
      break;
    case 12:
      result = 0x6E45796669746F6ELL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x7355656661736E75;
      break;
    case 18:
    case 22:
      result = 0xD000000000000012;
      break;
    case 19:
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22EDEF594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EDF413C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDEF5D4(uint64_t a1)
{
  v2 = sub_22EDF3FE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDEF610(uint64_t a1)
{
  v2 = sub_22EDF3FE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDEF64C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95380, &qword_22EE416D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF3FE8();
  sub_22EE3CCE4();
  v11 = *v3;
  v12 = v3[1];
  v50 = 0;
  sub_22EE3CB04();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v50 = 1;
    sub_22EE3CA94();
    v15 = v3[4];
    v16 = v3[5];
    v50 = 2;
    sub_22EE3CA94();
    v17 = v3[6];
    v18 = v3[7];
    v50 = 3;
    sub_22EE3CB04();
    v19 = v3[8];
    v20 = v3[9];
    v50 = 4;
    sub_22EE3CB04();
    v21 = v3[10];
    v22 = *(v3 + 88);
    v50 = 5;
    sub_22EE3CAB4();
    v23 = v3[12];
    v24 = *(v3 + 104);
    v50 = 6;
    sub_22EE3CAB4();
    v25 = *(v3 + 105);
    v50 = 7;
    sub_22EE3CB14();
    v26 = *(v3 + 106);
    v50 = 8;
    sub_22EE3CB14();
    v27 = *(v3 + 107);
    v50 = 9;
    sub_22EE3CB14();
    v28 = *(v3 + 27);
    v29 = *(v3 + 112);
    v50 = 10;
    v49[12] = v29;
    sub_22EE3CAE4();
    v30 = v3[15];
    v31 = *(v3 + 128);
    v50 = 11;
    sub_22EE3CAF4();
    v32 = *(v3 + 129);
    v50 = 12;
    sub_22EE3CB14();
    v33 = v3[17];
    v34 = *(v3 + 144);
    v50 = 13;
    sub_22EE3CAB4();
    v35 = *(v3 + 145);
    v50 = 14;
    sub_22EE3CB14();
    v36 = *(v3 + 146);
    v50 = 15;
    sub_22EE3CB14();
    v37 = *(v3 + 147);
    v50 = 16;
    sub_22EE3CB14();
    v38 = *(v3 + 148);
    v50 = 17;
    sub_22EE3CB14();
    v39 = *(v3 + 149);
    v50 = 18;
    sub_22EE3CB14();
    v40 = v3[19];
    v41 = v3[20];
    v50 = 19;
    sub_22EE3CA94();
    v42 = v3[21];
    v43 = v3[22];
    v50 = 20;
    sub_22EE3CA94();
    v44 = v3[23];
    v45 = *(v3 + 192);
    v50 = 21;
    sub_22EE3CAF4();
    v46 = v3[25];
    v47 = *(v3 + 208);
    v50 = 22;
    sub_22EE3CAC4();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_22EDEFB14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  v27 = *(v1 + 224);
  v28 = v3;
  v29 = *(v1 + 256);
  v30 = *(v1 + 272);
  v4 = *(v1 + 176);
  v23 = *(v1 + 160);
  v24 = v4;
  v5 = *(v1 + 208);
  v25 = *(v1 + 192);
  v26 = v5;
  v6 = *(v1 + 112);
  v19 = *(v1 + 96);
  v20 = v6;
  v7 = *(v1 + 144);
  v21 = *(v1 + 128);
  v22 = v7;
  v8 = *(v1 + 80);
  v17 = *(v1 + 64);
  v18 = v8;
  sub_22EDF4064(&v17, &v16);
  v9 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v9;
  *(a1 + 192) = v29;
  *(a1 + 208) = v30;
  v10 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v10;
  v11 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v11;
  v12 = v20;
  *(a1 + 32) = v19;
  *(a1 + 48) = v12;
  v13 = v22;
  *(a1 + 64) = v21;
  *(a1 + 80) = v13;
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *(a1 + 16) = v15;
  return result;
}

uint64_t sub_22EDEFBDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 224);
  v4 = *(v1 + 256);
  v18[11] = *(v1 + 240);
  v18[12] = v4;
  v5 = *(v1 + 160);
  v6 = *(v1 + 192);
  v7 = *(v1 + 208);
  v18[7] = *(v1 + 176);
  v18[8] = v6;
  v19 = *(v1 + 272);
  v18[9] = v7;
  v18[10] = v3;
  v8 = *(v1 + 112);
  v18[2] = *(v1 + 96);
  v18[3] = v8;
  v9 = *(v1 + 144);
  v18[4] = *(v1 + 128);
  v18[5] = v9;
  v18[6] = v5;
  v10 = *(v1 + 80);
  v18[0] = *(v1 + 64);
  v18[1] = v10;
  v11 = *(a1 + 176);
  *(v1 + 224) = *(a1 + 160);
  *(v1 + 240) = v11;
  *(v1 + 256) = *(a1 + 192);
  *(v1 + 272) = *(a1 + 208);
  v12 = *(a1 + 112);
  *(v1 + 160) = *(a1 + 96);
  *(v1 + 176) = v12;
  v13 = *(a1 + 144);
  *(v1 + 192) = *(a1 + 128);
  *(v1 + 208) = v13;
  v14 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v14;
  v15 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v15;
  v16 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v16;
  return sub_22EDF40D4(v18);
}

uint64_t sub_22EDEFD08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x636F725074736F70;
  v5 = 0xEB00000000737365;
  if (a1 != 6)
  {
    v4 = 0x6C61746F74;
    v5 = 0xE500000000000000;
  }

  v6 = 0x6E6964726F636572;
  v7 = 0xE900000000000067;
  if (a1 != 4)
  {
    v6 = 0x6E776F6472616574;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x54676E6974696177;
  v9 = 0xEE0074726174536FLL;
  if (a1 != 2)
  {
    v8 = 0x676E697472617473;
    v9 = 0xE800000000000000;
  }

  v10 = 0x7075746573;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 0x6C616974696E69;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEB00000000737365;
        if (v11 != 0x636F725074736F70)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x6C61746F74)
        {
LABEL_45:
          v14 = sub_22EE3CBA4();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000067;
      if (v11 != 0x6E6964726F636572)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x6E776F6472616574)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEE0074726174536FLL;
      if (v11 != 0x54676E6974696177)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x676E697472617473)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x7075746573)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6C616974696E69)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_22EDEFFB0()
{
  sub_22EE3C1C4();
}

uint64_t sub_22EDF00F4()
{
  sub_22EE3CC74();
  sub_22EE3C1C4();

  return sub_22EE3CCC4();
}

uint64_t sub_22EDF0244@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22EDF48A4();
  *a2 = result;
  return result;
}

void sub_22EDF0274(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C616974696E69;
  v5 = 0xEB00000000737365;
  v6 = 0x636F725074736F70;
  if (v2 != 6)
  {
    v6 = 0x6C61746F74;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 4)
  {
    v8 = 0x6E776F6472616574;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0074726174536FLL;
  v10 = 0x54676E6974696177;
  if (v2 != 2)
  {
    v10 = 0x676E697472617473;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x7075746573;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_22EDF0380()
{
  swift_beginAccess();
  v1 = *(v0 + 280);
}

uint64_t sub_22EDF03B8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 280);
  *(v1 + 280) = a1;
}

uint64_t sub_22EDF0400()
{
  swift_beginAccess();
  v1 = *(v0 + 288);
}

uint64_t sub_22EDF0438(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 288);
  *(v1 + 288) = a1;
}

unint64_t sub_22EDF04D0()
{
  v1 = *v0;
  v2 = 0x756F436B6E756863;
  v3 = 0x657A6953656C6966;
  v4 = 0xD000000000000015;
  if (v1 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22EDF05A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EDF4998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDF05D8(uint64_t a1)
{
  v2 = sub_22EDF48F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF0614(uint64_t a1)
{
  v2 = sub_22EDF48F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF0650(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95390, &qword_22EE416E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF48F0();
  sub_22EE3CCE4();
  v11 = *v3;
  v18[15] = 0;
  sub_22EE3CB54();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  sub_22EE3CB54();
  v13 = v3[2];
  v18[13] = 2;
  sub_22EE3CB54();
  v14 = v3[3];
  v18[12] = 3;
  sub_22EE3CB54();
  v15 = v3[4];
  v18[11] = 4;
  sub_22EE3CB54();
  v17 = v3[5];
  v18[10] = 5;
  sub_22EE3CB54();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_22EDF0850@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_22EDF0878(unsigned __int8 a1, uint64_t a2)
{
  v6 = *(*v2 + 208);
  v7 = *v2 + 208;
  v8 = v6();
  v40 = *(v8 + 16);
  if (!v40)
  {
LABEL_66:
  }

  v39 = v2;
  v38 = a2;
  v9 = 0;
  v10 = 0;
  v11 = 0xEE0074726174536FLL;
  v12 = 0x7075746573;
  v13 = 0xE700000000000000;
  while (1)
  {
    if (v10 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_76;
    }

    v14 = *(v8 + v9 + 32);
    if (v14 > 3)
    {
      if (*(v8 + v9 + 32) > 5u)
      {
        if (v14 == 6)
        {
          v19 = 0x636F725074736F70;
          v7 = 0xEB00000000737365;
        }

        else
        {
          v7 = 0xE500000000000000;
          v19 = 0x6C61746F74;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v19 = 0x6E6964726F636572;
        }

        else
        {
          v19 = 0x6E776F6472616574;
        }

        if (v14 == 4)
        {
          v7 = 0xE900000000000067;
        }

        else
        {
          v7 = 0xE800000000000000;
        }
      }
    }

    else
    {
      if (v14 == 2)
      {
        v15 = 0x54676E6974696177;
      }

      else
      {
        v15 = 0x676E697472617473;
      }

      if (v14 == 2)
      {
        v16 = 0xEE0074726174536FLL;
      }

      else
      {
        v16 = 0xE800000000000000;
      }

      if (*(v8 + v9 + 32))
      {
        v17 = 0x7075746573;
      }

      else
      {
        v17 = 0x6C616974696E69;
      }

      if (*(v8 + v9 + 32))
      {
        v18 = 0xE500000000000000;
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      if (*(v8 + v9 + 32) <= 1u)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (*(v8 + v9 + 32) <= 1u)
      {
        v7 = v18;
      }

      else
      {
        v7 = v16;
      }
    }

    v20 = 0x636F725074736F70;
    if (a1 != 6)
    {
      v20 = 0x6C61746F74;
    }

    v21 = 0xEB00000000737365;
    if (a1 != 6)
    {
      v21 = 0xE500000000000000;
    }

    v22 = 0x6E776F6472616574;
    if (a1 == 4)
    {
      v22 = 0x6E6964726F636572;
    }

    v23 = 0xE900000000000067;
    if (a1 != 4)
    {
      v23 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v20 = v22;
      v21 = v23;
    }

    if (a1 == 2)
    {
      v24 = 0x54676E6974696177;
    }

    else
    {
      v24 = 0x676E697472617473;
    }

    if (a1 == 2)
    {
      v25 = 0xEE0074726174536FLL;
    }

    else
    {
      v25 = 0xE800000000000000;
    }

    if (a1)
    {
      v26 = 0x7075746573;
    }

    else
    {
      v26 = 0x6C616974696E69;
    }

    if (a1)
    {
      v13 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v24 = v26;
      v25 = v13;
    }

    v27 = a1 <= 3u ? v24 : v20;
    v28 = a1 <= 3u ? v25 : v21;
    if (v19 == v27 && v7 == v28)
    {
      break;
    }

    v7 = sub_22EE3CBA4();

    if (v7)
    {
      goto LABEL_70;
    }

    ++v10;
    v9 += 32;
    v13 = 0xE700000000000000;
    if (v40 == v10)
    {
      goto LABEL_66;
    }
  }

LABEL_70:

  v11 = v39;
  v31 = (v6)(v30);
  if (v10 >= *(v31 + 16))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v3 = *(v31 + v9 + 40);
  v4 = *(v31 + v9 + 48);
  v10 = *(v31 + v9 + 56);

  v32 = *(*v39 + 248);
  v9 = v38;

  v11 = v32(v42);
  v7 = v33;
  v12 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v12;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_72;
  }

LABEL_77:
  v12 = sub_22EDF3CD8(0, *(v12 + 16) + 1, 1, v12);
  *v7 = v12;
LABEL_72:
  v36 = *(v12 + 16);
  v35 = *(v12 + 24);
  if (v36 >= v35 >> 1)
  {
    v12 = sub_22EDF3CD8((v35 > 1), v36 + 1, 1, v12);
    *v7 = v12;
  }

  *(v12 + 16) = v36 + 1;
  v37 = v12 + 40 * v36;
  *(v37 + 32) = a1;
  *(v37 + 40) = v3;
  *(v37 + 48) = v4;
  *(v37 + 56) = v10;
  *(v37 + 64) = v9;
  return v11(v42, 0);
}

__n128 sub_22EDF0C9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + 296;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22EDF0CF4(uint64_t a1)
{
  v3 = *a1;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(v1 + 296) = *a1;
  *(v1 + 312) = v6;
  *(v1 + 328) = *(a1 + 32);
  *(v1 + 344) = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95398, &qword_22EE416E8);
  result = swift_allocObject();
  *(result + 16) = xmmword_22EE41690;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if ((*(a1 + 48) & 1) == 0)
  {
    *(result + 48) = *(a1 + 8);
    *(result + 56) = 0x764567756265644BLL;
    *(result + 64) = 0xEB00000000746E65;
    *(result + 72) = v3;
    *(result + 80) = 0x6441736B6E756843;
    *(result + 88) = 0xEB00000000646564;
    *(result + 96) = v5;
    *(result + 104) = 0x6564644165747942;
    *(result + 112) = 0xE900000000000064;
    *(result + 120) = v4;
    v8 = (*v1 + 264);
    v9 = *v8;
    (*v8)(6, result);

    result = swift_allocObject();
    *(result + 16) = xmmword_22EE416A0;
    *(result + 32) = 0x764567756265644BLL;
    *(result + 40) = 0xEF65747942746E65;
    if ((*(v1 + 344) & 1) == 0)
    {
      v10 = *(v1 + 296);
      *(result + 48) = *(v1 + 304);
      *(result + 56) = 0x764567756265644BLL;
      *(result + 64) = 0xEB00000000746E65;
      *(result + 72) = v10;
      v9(4, result);

      result = swift_allocObject();
      *(result + 16) = xmmword_22EE416A0;
      *(result + 32) = 0x764567756265644BLL;
      *(result + 40) = 0xEF65747942746E65;
      if ((*(v1 + 344) & 1) == 0)
      {
        v11 = *(v1 + 296);
        *(result + 48) = *(v1 + 304);
        *(result + 56) = 0x764567756265644BLL;
        *(result + 64) = 0xEB00000000746E65;
        *(result + 72) = v11;
        v9(5, result);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22EDF0F48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22EDF0F9C;
}

uint64_t sub_22EDF0F9C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if (a2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95398, &qword_22EE416E8);
  result = swift_allocObject();
  *(result + 16) = xmmword_22EE41690;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if (*(v5 + 344))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *(v5 + 296);
  v7 = *(v5 + 328);
  v8 = *(v5 + 336);
  *(result + 48) = *(v5 + 304);
  *(result + 56) = 0x764567756265644BLL;
  *(result + 64) = 0xEB00000000746E65;
  *(result + 72) = v6;
  *(result + 80) = 0x6441736B6E756843;
  *(result + 88) = 0xEB00000000646564;
  *(result + 96) = v7;
  *(result + 104) = 0x6564644165747942;
  *(result + 112) = 0xE900000000000064;
  *(result + 120) = v8;
  v9 = *(*v5 + 264);
  v9(6, result);

  result = swift_allocObject();
  *(result + 16) = xmmword_22EE416A0;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if (*(v5 + 344))
  {
    goto LABEL_8;
  }

  v10 = *(*(a1 + 24) + 296);
  *(result + 48) = *(v5 + 304);
  *(result + 56) = 0x764567756265644BLL;
  *(result + 64) = 0xEB00000000746E65;
  *(result + 72) = v10;
  v9(4, result);

  result = swift_allocObject();
  *(result + 16) = xmmword_22EE416A0;
  *(result + 32) = 0x764567756265644BLL;
  *(result + 40) = 0xEF65747942746E65;
  if (*(v5 + 344))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(*(a1 + 24) + 296);
  *(result + 48) = *(v5 + 304);
  *(result + 56) = 0x764567756265644BLL;
  *(result + 64) = 0xEB00000000746E65;
  *(result + 72) = v11;
  v9(5, result);
}

unint64_t sub_22EDF124C()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_22EDF12A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EDF4BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDF12D8(uint64_t a1)
{
  v2 = sub_22EDF4944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF1314(uint64_t a1)
{
  v2 = sub_22EDF4944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF1350(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953A0, &qword_22EE416F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF4944();
  sub_22EE3CCE4();
  v10[15] = 0;
  sub_22EE3CB14();
  if (!v1)
  {
    v10[14] = 1;
    sub_22EE3CB24();
    v10[13] = 2;
    sub_22EE3CB54();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22EDF1510(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  return sub_22EDF1350(a1);
}

uint64_t sub_22EDF1534()
{
  swift_beginAccess();
  result = v0[44];
  v2 = v0[45];
  v3 = v0[46];
  return result;
}

uint64_t sub_22EDF156C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v3[44] = a1;
  v3[45] = a2;
  v3[46] = a3;
  return result;
}

uint64_t sub_22EDF1644(char a1)
{
  result = swift_beginAccess();
  *(v1 + 376) = a1;
  return result;
}

uint64_t sub_22EDF16D4()
{
  v1 = *v0;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v1);
  return sub_22EE3CCC4();
}

uint64_t sub_22EDF171C()
{
  v1 = *v0;
  sub_22EE3CC74();
  MEMORY[0x2318F6370](v1);
  return sub_22EE3CCC4();
}

unint64_t sub_22EDF1760()
{
  v1 = *v0;
  v2 = 0x79426465646E65;
  v3 = 0xD000000000000012;
  if (v1 == 4)
  {
    v3 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000021;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22EDF182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22EDF4CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22EDF1854(uint64_t a1)
{
  v2 = sub_22EDF4F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EDF1890(uint64_t a1)
{
  v2 = sub_22EDF4F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EDF18CC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      *&result = COERCE_DOUBLE(sub_22EDF4ECC(a4));
      if (*(a4 + 24) & 1) != 0 || (*(a4 + 48))
      {
        *&result = 0.0;
        return result;
      }

      v13 = *(a4 + 16);
      v14 = *(a4 + 40);
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (v15)
      {
        *&result = v16 / 1000000000.0 - *&a1;
        return result;
      }

      __break(1u);
    }

    else
    {
      if (!(a1 | a2))
      {
        sub_22EDF4ECC(a4);
        return 4;
      }

      if (a1 ^ 1 | a2)
      {
        sub_22EDF4ECC(a4);
        return 5;
      }

      *&result = COERCE_DOUBLE(sub_22EDF4ECC(a4));
      if (a6)
      {
        return a5;
      }

      v17 = *(a4 + 8);
      v15 = v17 >= a5;
      v18 = v17 - a5;
      if (v15)
      {
        if (!(v18 >> 58))
        {
          return v18 << 6;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (a3)
  {
    sub_22EDF4ECC(a4);
    sub_22ED83014(a1, a2, 1);
    return 2;
  }

  else
  {
    sub_22EDF4ECC(a4);
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_22EDF1A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v15 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953A8, &qword_22EE416F8);
  v16 = *(v8 - 8);
  v9 = *(v16 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EDF4F20();
  sub_22EE3CCE4();
  if (!(a5 >> 6))
  {
    v18 = 1;
    sub_22EE3CAB4();
    if (!v5)
    {
      v17 = 2;
      sub_22EE3CAB4();
      v13 = v16;
      goto LABEL_9;
    }

    return (*(v16 + 8))(v11, v8);
  }

  if (a5 >> 6 != 1)
  {
    v13 = v16;
    goto LABEL_9;
  }

  v20 = 3;
  sub_22EE3CAF4();
  if (v5)
  {
    return (*(v16 + 8))(v11, v8);
  }

  v19 = 4;
  sub_22EE3CAB4();
  v13 = v16;
LABEL_9:
  v21 = 0;
  sub_22EE3CB04();
  (*(v13 + 8))(v11, v8);
}

uint64_t sub_22EDF1E78()
{
  swift_beginAccess();
  result = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  return result;
}

uint64_t sub_22EDF1EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_beginAccess();
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  *(v4 + 400) = a3;
  *(v4 + 408) = a4;
  return result;
}

void *sub_22EDF1F68()
{
  swift_beginAccess();
  v1 = *(v0 + 416);
  v2 = v1;
  return v1;
}

void sub_22EDF1FB0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 416);
  *(v1 + 416) = a1;
}

void *sub_22EDF2048(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA953B8, qword_22EE41700);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - v9;
  (*(*v1 + 184))(&v60, v8);
  v91 = v70;
  v92 = v71;
  v93 = v72;
  v87 = v66;
  v88 = v67;
  v89 = v68;
  v90 = v69;
  v83 = v62;
  v84 = v63;
  v85 = v64;
  v86 = v65;
  v81 = v60;
  v82 = v61;
  v76[10] = v70;
  v76[11] = v71;
  v76[12] = v72;
  v76[6] = v66;
  v76[7] = v67;
  v76[8] = v68;
  v76[9] = v69;
  v76[2] = v62;
  v76[3] = v63;
  v76[4] = v64;
  v76[5] = v65;
  v94 = v73;
  v77 = v73;
  v76[0] = v60;
  v76[1] = v61;
  v11 = sub_22EDF4F74(v76);
  if (v11 != 1)
  {
    sub_22EDEF64C(a1);
    if (v2)
    {
      return sub_22EDF40D4(&v60);
    }

    v11 = sub_22EDF40D4(&v60);
  }

  result = (*(*v1 + 272))(v74, v11);
  if ((v75 & 1) != 0 || (v78 = v74[0], v79 = v74[1], v80 = v74[2], result = sub_22EDF0650(a1), !v2))
  {
    if ((result = (*(*v1 + 344))(result), v15 <= 1u) && (v13 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL || (result = sub_22EDF1A98(a1, result, v13, v14, v15), !v2))
    {
      v16 = (*(*v1 + 296))(result);
      v95 = v10;
      if (v16 == 2 || (result = sub_22EDF1350(a1), !v2))
      {
        v17 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_22EDF4F8C();
        v18 = v95;
        v19 = sub_22EE3CCE4();
        (*(*v1 + 320))(v19);
        v58 = 0xD000000000000010;
        v59 = 0x800000022EE48A60;
        v20 = sub_22EE3CB14();
        if (v2)
        {
          return (*(v6 + 8))(v18, v5);
        }

        v55 = v6;
        v56 = v5;
        result = (*(*v1 + 208))(v20);
        v21 = result;
        v22 = result[2];
        if (v22)
        {
          v23 = 0;
          v24 = result + 7;
          while (v23 < v21[2])
          {
            v25 = *(v24 - 2);
            v26 = *(v24 - 1);
            v27 = *v24;
            ++v23;
            *(v24 - 24);
            *(v24 - 24);
            *(v24 - 24);
            *(v24 - 24);
            sub_22EDF28D4();

            v24 += 4;
            if (v22 == v23)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_55;
        }

LABEL_18:

        result = (*(*v3 + 232))(v28);
        v57 = result;
        if (result[2])
        {
          v29 = result[2];
          v30 = 0;
          v31 = v57 + 8;
          while (v30 < v57[2])
          {
            v32 = *(v31 - 3);
            v33 = *(v31 - 2);
            v34 = *(v31 - 1);
            v35 = *v31;
            ++v30;
            v36 = *(v31 - 32);
            v37 = 0x636F725074736F70;
            if (v36 != 6)
            {
              v37 = 0x6C61746F74;
            }

            v38 = 0xEB00000000737365;
            if (v36 != 6)
            {
              v38 = 0xE500000000000000;
            }

            v39 = 0x6E776F6472616574;
            if (v36 == 4)
            {
              v39 = 0x6E6964726F636572;
            }

            v40 = 0xE900000000000067;
            if (v36 != 4)
            {
              v40 = 0xE800000000000000;
            }

            if (*(v31 - 32) <= 5u)
            {
              v37 = v39;
              v38 = v40;
            }

            v41 = 0x676E697472617473;
            if (v36 == 2)
            {
              v41 = 0x54676E6974696177;
            }

            v42 = 0xEE0074726174536FLL;
            if (v36 != 2)
            {
              v42 = 0xE800000000000000;
            }

            v43 = 0x6C616974696E69;
            if (*(v31 - 32))
            {
              v43 = 0x7075746573;
            }

            v44 = 0xE700000000000000;
            if (*(v31 - 32))
            {
              v44 = 0xE500000000000000;
            }

            if (*(v31 - 32) <= 1u)
            {
              v41 = v43;
              v42 = v44;
            }

            if (*(v31 - 32) <= 3u)
            {
              v45 = v41;
            }

            else
            {
              v45 = v37;
            }

            if (*(v31 - 32) <= 3u)
            {
              v46 = v42;
            }

            else
            {
              v46 = v38;
            }

            v47 = *v31;

            v48 = v45;
            v49 = v95;
            sub_22EDF2B5C(v48, v46, v95, v34, v35);

            v31 += 5;
            if (v29 == v30)
            {
              goto LABEL_50;
            }
          }

LABEL_55:
          __break(1u);
          return result;
        }

        v49 = v95;
LABEL_50:

        v51 = (*(*v3 + 368))(v50);
        if (v51)
        {
          v52 = v51;
          v58 = v51;
          v53 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
          sub_22EE3C164();
          v58 = 0x726F727265;
          v59 = 0xE500000000000000;
          v54 = v56;
          sub_22EE3CB04();

          return (*(v55 + 8))(v49, v54);
        }

        else
        {
          return (*(v55 + 8))(v49, v56);
        }
      }
    }
  }

  return result;
}