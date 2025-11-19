uint64_t sub_26C12B86C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
    return sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = (a2 + 33);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v6 += 2;
        sub_26C1491CC();
        result = sub_26C1491CC();
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_26C12B8F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26C1491AC();
  sub_26C12B86C(v4, v1, v2);
  return sub_26C14920C();
}

uint64_t sub_26C12B950()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26C1491AC();
  sub_26C12B86C(v4, v1, v2);
  return sub_26C14920C();
}

uint64_t sub_26C12B99C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (v6 & 1) != 0 && v4 == v5;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_26C0BC724(v4, v5);
  }
}

unint64_t sub_26C12B9E4()
{
  result = qword_28047ADE8;
  if (!qword_28047ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADE8);
  }

  return result;
}

uint64_t sub_26C12BA38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = __OFSUB__(v9, v5);
  v11 = v9 - v5;
  if (v10)
  {
    goto LABEL_29;
  }

  result = sub_26C0CE248(0, (v11 / 2) & ~((v11 + (v11 >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
  v13 = a1[1];
  v25 = *a1;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v15 = result;
  v16 = v13 >> 62;
  v17 = BYTE6(v13);
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v25 + 24) < v14)
        {
          break;
        }
      }

      else if (v14 > 0)
      {
        break;
      }

      goto LABEL_20;
    }

    v18 = v17;
    if (v16)
    {
      v18 = v25 >> 32;
    }

    if (v18 < v14)
    {
      break;
    }

LABEL_20:
    v26 = *a1;
    v27 = a1[1];
    if (v14 < v5)
    {
      goto LABEL_28;
    }

    sub_26C0BBAA4(*a1, a1[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    result = sub_26C0BB9B0(v26, v27);
    a1[2] = v14;
    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_26C0CE248((v19 > 1), v20 + 1, 1, v15);
      v15 = result;
    }

    v21 = bswap32(0) >> 16;
    *(v15 + 16) = v20 + 1;
    v22 = v15 + 2 * v20;
    *(v22 + 32) = BYTE1(v21);
    *(v22 + 33) = v21;
    v5 = v14;
    v10 = __OFADD__(v14, 2);
    v14 += 2;
    if (v10)
    {
      goto LABEL_27;
    }
  }

  *a2 = v15;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26C12BC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26C12BCD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C12BD34(uint64_t a1, char a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v27 = a1;
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = &v28;
    v4 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    v6 = *v4;
    v5 = v4[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    result = 1;
  }

  else
  {
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v13 = *(v8 + 24);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v11 = BYTE6(v9);
      v12 = v8 >> 32;
      if (v10)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }
    }

    v27 = 0;
    v14 = MEMORY[0x277D838B0];
    v15 = MEMORY[0x277CC9C18];
    v30 = MEMORY[0x277D838B0];
    v31 = MEMORY[0x277CC9C18];
    v28 = &v27;
    v29 = &v28;
    v16 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
    v18 = *v16;
    v17 = v16[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = a1 + 32;
      do
      {
        v22 = *(v21 + v20++);
        v27 = v22;
        v30 = v14;
        v31 = v15;
        v28 = &v27;
        v29 = &v28;
        v23 = __swift_project_boxed_opaque_existential_1(&v28, v14);
        v25 = *v23;
        v24 = v23[1];
        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v28);
      }

      while (v19 != v20);
      if (v19 > 0xFF)
      {
        __break(1u);
      }
    }

    sub_26C100778(v19, v13);
    result = v19 + 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_26C12BED8(unsigned __int8 *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (v5 != 1)
  {
    if (v5 != 8)
    {
      v12 = v5 | 0x140000;
      *a2 = v12;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      v32 = v12;
      LOBYTE(v33) = 0;
      goto LABEL_10;
    }

    v6 = sub_26C1368E8();
    if ((v6 & 0x100) == 0)
    {
      v3 = v6;
      goto LABEL_11;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v32 = 0uLL;
    LOBYTE(v33) = 2;
LABEL_10:
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    goto LABEL_11;
  }

  v8 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  sub_26C0BBAA4(*v2, v7);
  v10 = sub_26C1368E8();
  if ((v10 & 0x100) != 0 || (sub_26C0DE248(v10, &v32), v11 = *(&v32 + 1), *(&v32 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v8;
    v2[1] = v7;
    v2[2] = v9;
    goto LABEL_8;
  }

  v27 = v9;
  v28 = v2;
  v15 = *(&v32 + 1) >> 62;
  v16 = v32;
  v17 = v33;
  v18 = BYTE14(v32);
  v31 = BYTE14(v32);
  if ((*(&v32 + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v18 = *(v32 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v15)
  {
    v18 = v32 >> 32;
  }

  v30 = v32 >> 32;
  v29 = a2;
  v19 = __OFSUB__(v18, v33);
  v20 = v18 - v33;
  if (v19)
  {
    goto LABEL_47;
  }

  v21 = sub_26C0CE344(0, v20 & ~(v20 >> 63), 0, MEMORY[0x277D84F90]);
  v22 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v3 = v21;
  while (v15 > 1)
  {
    if (v15 == 2)
    {
      if (*(v16 + 24) < v22)
      {
        goto LABEL_37;
      }
    }

    else if (v22 >= 1)
    {
      v26 = 0;
      goto LABEL_41;
    }

LABEL_31:
    *&v32 = v16;
    *(&v32 + 1) = v11;
    if (v22 < v17)
    {
      goto LABEL_46;
    }

    sub_26C0BBAA4(v16, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v32, *(&v32 + 1));
    v25 = *(v3 + 2);
    v24 = *(v3 + 3);
    if (v25 >= v24 >> 1)
    {
      v3 = sub_26C0CE344((v24 > 1), v25 + 1, 1, v3);
    }

    *(v3 + 2) = v25 + 1;
    v3[v25 + 32] = 0;
    v17 = v22;
    v19 = __OFADD__(v22++, 1);
    if (v19)
    {
      goto LABEL_45;
    }
  }

  v23 = v31;
  if (v15)
  {
    v23 = v30;
  }

  if (v23 >= v22)
  {
    goto LABEL_31;
  }

LABEL_37:
  v26 = v31;
  if (v15)
  {
    v26 = v30;
    if (v15 == 2)
    {
      v26 = *(v16 + 24);
    }
  }

LABEL_41:
  if (__OFSUB__(v26, v17))
  {
LABEL_48:
    __break(1u);
  }

  if (v26 == v17)
  {
    sub_26C0BB9B0(v16, v11);
    sub_26C0BB9B0(v8, v7);
  }

  else
  {
    v32 = xmmword_26C149860;
    LOBYTE(v33) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    sub_26C0BB9B0(v16, v11);
    sub_26C0BB9B0(*v28, v28[1]);
    *v28 = v8;
    v28[1] = v7;
    v28[2] = v27;
    v32 = xmmword_26C149860;
    LOBYTE(v33) = 2;
    swift_willThrowTypedImpl();
    *v29 = xmmword_26C149860;
    *(v29 + 16) = 2;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_26C12C294(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    return sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = (a2 + 32);
      do
      {
        v7 = *v6++;
        result = sub_26C1491CC();
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

uint64_t sub_26C12C304(uint64_t a1, char a2)
{
  sub_26C1491AC();
  if (a2)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v4 = *(a1 + 16);
    MEMORY[0x26D69BEF0](v4);
    if (v4)
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        sub_26C1491CC();
        --v4;
      }

      while (v4);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C3BC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26C1491AC();
  if (v2)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C1491CC();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    MEMORY[0x26D69BEF0](*(v1 + 16));
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 32);
      do
      {
        v5 = *v4++;
        sub_26C1491CC();
        --v3;
      }

      while (v3);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C458(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (a1[1])
  {
    return (v6 & 1) != 0 && v4 == v5;
  }

  else if (v6)
  {
    return 0;
  }

  else
  {
    return sub_26C0BE8D0(v4, v5);
  }
}

unint64_t sub_26C12C4A0()
{
  result = qword_28047ADF0;
  if (!qword_28047ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADF0);
  }

  return result;
}

unint64_t sub_26C12C504(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(v3 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v4);
    v7 = v3 >> 32;
    if (v5)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }
  }

  v22 = 0;
  v9 = MEMORY[0x277D838B0];
  v10 = MEMORY[0x277CC9C18];
  v25 = MEMORY[0x277D838B0];
  v26 = MEMORY[0x277CC9C18];
  v23 = &v22;
  v24 = &v23;
  v11 = __swift_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v14 = *(a1 + 16);
  if (!v14)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
  v16 = a1 + 32;
  do
  {
    v22 = bswap32(*(v16 + v15)) >> 16;
    v25 = v9;
    v26 = v10;
    v23 = &v22;
    v24 = &v23;
    v17 = __swift_project_boxed_opaque_existential_1(&v23, v9);
    v19 = *v17;
    v18 = v17[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v23);
    if (v15 == 0x7FFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v15 += 2;
    --v14;
  }

  while (v14);
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (v15 >> 16)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  sub_26C10064C(v15, v8);
  v20 = *MEMORY[0x277D85DE8];
  return v15 + 2;
}

uint64_t sub_26C12C680(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_26C1491DC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C12C6F8()
{
  v1 = *v0;
  result = MEMORY[0x26D69BEF0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_26C1491DC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26C12C74C()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_26C1491DC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

unint64_t sub_26C12C7C8()
{
  result = qword_28047ADF8;
  if (!qword_28047ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047ADF8);
  }

  return result;
}

unint64_t sub_26C12C82C(uint64_t a1, unint64_t a2, char a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = xmmword_26C14A1B0;
  v34 = 0;
  v4 = MEMORY[0x277D838B0];
  if (a3)
  {
    sub_26C0D7104(a1, a2);
    goto LABEL_20;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      if ((*v6 & 0x1000000000000000) != 0)
      {
        v13 = *(v6 - 1);
        v14 = *v6;
        if (sub_26C148F6C() <= 255)
        {
          v9 = sub_26C148F6C();
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
            break;
          }

          goto LABEL_12;
        }
      }

      else if ((v7 & 0x2000000000000000) != 0 || (v8 & 0xFFFFFFFFFF00) == 0)
      {
        if ((v7 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v7) & 0xF;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_12:
          if (v9 > 0xFF)
          {
            __break(1u);
            goto LABEL_30;
          }
        }

        LOBYTE(v28) = v9;
        v31 = v4;
        v32 = MEMORY[0x277CC9C18];
        v29 = &v28;
        v30 = (&v28 + 1);
        v10 = __swift_project_boxed_opaque_existential_1(&v29, v4);
        v11 = *v10;
        v12 = v10[1];

        sub_26C14888C();
        __swift_destroy_boxed_opaque_existential_1(&v29);
        sub_26C0D1D1C(v8, v7);
        if ((v7 & 0x1000000000000000) != 0)
        {
          sub_26C148F6C();
        }
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

LABEL_20:
  v15 = *v3;
  v16 = v3[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v20 = *(v15 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v18 = BYTE6(v16);
    v19 = v15 >> 32;
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }
  }

  v28 = 0;
  v31 = v4;
  v32 = MEMORY[0x277CC9C18];
  v29 = &v28;
  v30 = &v29;
  v21 = __swift_project_boxed_opaque_existential_1(&v29, v4);
  v23 = *v21;
  v22 = v21[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v29);
  sub_26C12D41C(v3, &v33);
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v25 = v24;
  if (v24 >> 16)
  {
    goto LABEL_31;
  }

  sub_26C10064C(v24, v20);
  sub_26C0BB9B0(v33, *(&v33 + 1));
  v26 = *MEMORY[0x277D85DE8];
  return v25 + 2;
}

uint64_t sub_26C12CA78(unsigned __int8 *a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (v5 != 8 && v5 != 1)
  {
    *a2 = v5 | 0x100000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&v60 = v5 | 0x100000;
    *(&v60 + 1) = 0;
    LOBYTE(v61) = 0;
LABEL_10:
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
    goto LABEL_11;
  }

  result = sub_26C0E0978(v2, &v56, &v58);
  if (v3)
  {
    v8 = v57;
    *a2 = v56;
    *(a2 + 16) = v8;
    goto LABEL_11;
  }

  if (*(&v58 + 1) >> 60 == 15)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v60 = 0uLL;
    LOBYTE(v61) = 2;
    goto LABEL_10;
  }

  v50 = a2;
  v10 = v59;
  v60 = v58;
  v61 = v59;
  if (v5 == 1)
  {
    v18 = *(&v58 + 1) >> 62;
    v52 = v58;
    v51 = v58 >> 32;
    v19 = MEMORY[0x277D84F90];
    v54 = BYTE14(v58);
    v55 = *(&v58 + 1) >> 62;
    if ((*(&v58 + 1) >> 62) <= 1)
    {
      goto LABEL_22;
    }

LABEL_19:
    if (v18 == 2)
    {
      v20 = *(v52 + 24);
    }

    else
    {
      v20 = 0;
    }

    while (1)
    {
      v21 = __OFSUB__(v20, v10);
      v22 = v20 - v10;
      if (v21)
      {
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        __break(1u);
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
      }

      if (v22 < 1)
      {
        v15 = v19;
        sub_26C0BB9B0(v60, *(&v60 + 1));
        goto LABEL_84;
      }

      v23 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_86;
      }

      v25 = BYTE14(v60);
      v24 = v60;
      v26 = *(&v60 + 1) >> 62;
      if ((*(&v60 + 1) >> 62) <= 1)
      {
        break;
      }

      if (v26 == 2)
      {
        v27 = *(v60 + 24);
        goto LABEL_33;
      }

      if (v23 >= 1)
      {
        goto LABEL_73;
      }

LABEL_36:
      v58 = v60;
      if (v23 < v10)
      {
        goto LABEL_87;
      }

      *&v56 = v10;
      *(&v56 + 1) = v10 + 1;
      sub_26C0BBAA4(v60, *(&v60 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
      sub_26C0BE710();
      sub_26C0BE764();
      sub_26C14878C();
      sub_26C0BB9B0(v58, *(&v58 + 1));
      v61 = ++v10;
      if (v26 <= 1)
      {
        if (v26)
        {
          v28 = v24 >> 32;
        }

        else
        {
          v28 = v25;
        }

LABEL_43:
        if (v28 < v23)
        {
          goto LABEL_73;
        }

        goto LABEL_46;
      }

      if (v26 == 2)
      {
        v28 = *(v24 + 24);
        goto LABEL_43;
      }

      if (v23 >= 1)
      {
LABEL_73:

        *v50 = xmmword_26C14EC10;
        *(v50 + 16) = 2;
        v58 = xmmword_26C14EC10;
        LOBYTE(v59) = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        v49 = *(&v60 + 1);
        v48 = v60;
        goto LABEL_82;
      }

LABEL_46:
      v29 = sub_26C14889C();
      v30 = v29;
      v32 = v31;
      v61 = v23;
      v33 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v33 != 2)
        {
          goto LABEL_53;
        }

        v29 = *(v29 + 16);
        v34 = *(v30 + 24);
      }

      else
      {
        if (!v33)
        {
          goto LABEL_53;
        }

        v29 = v29;
        v34 = v30 >> 32;
      }

      if (v34 < v29)
      {
        goto LABEL_88;
      }

LABEL_53:
      v35 = sub_26C14889C();
      v37 = v35;
      v38 = v36;
      v39 = v36 >> 62;
      if ((v36 >> 62) > 1)
      {
        if (v39 == 2)
        {
          v53 = v19;
          v40 = *(v35 + 16);
          v41 = *(v35 + 24);
          if (sub_26C1487BC() && __OFSUB__(v40, sub_26C1487EC()))
          {
            goto LABEL_91;
          }

          if (__OFSUB__(v41, v40))
          {
            goto LABEL_90;
          }

          sub_26C1487DC();
          v19 = v53;
        }

        else
        {
          *(&v58 + 6) = 0;
          *&v58 = 0;
        }
      }

      else if (v39)
      {
        if (v35 >> 32 < v35)
        {
          goto LABEL_89;
        }

        if (sub_26C1487BC() && __OFSUB__(v37, sub_26C1487EC()))
        {
          goto LABEL_92;
        }

        sub_26C1487DC();
      }

      else
      {
        *&v58 = v35;
        WORD4(v58) = v36;
        BYTE10(v58) = BYTE2(v36);
        BYTE11(v58) = BYTE3(v36);
        BYTE12(v58) = BYTE4(v36);
        BYTE13(v58) = BYTE5(v36);
      }

      v42 = sub_26C148F3C();
      v44 = v43;
      sub_26C0BB9B0(v30, v32);
      sub_26C0BB9B0(v37, v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_26C0CE13C(0, *(v19 + 2) + 1, 1, v19);
      }

      v46 = *(v19 + 2);
      v45 = *(v19 + 3);
      if (v46 >= v45 >> 1)
      {
        v19 = sub_26C0CE13C((v45 > 1), v46 + 1, 1, v19);
      }

      *(v19 + 2) = v46 + 1;
      v47 = &v19[16 * v46];
      *(v47 + 4) = v42;
      *(v47 + 5) = v44;
      LODWORD(v18) = v55;
      if (v55 > 1)
      {
        goto LABEL_19;
      }

LABEL_22:
      v20 = v54;
      if (v18)
      {
        v20 = v51;
      }
    }

    if (v26)
    {
      v27 = v60 >> 32;
    }

    else
    {
      v27 = BYTE14(v60);
    }

LABEL_33:
    if (v27 < v23)
    {
      goto LABEL_73;
    }

    goto LABEL_36;
  }

  v11 = sub_26C0D7260();
  v13 = *(&v60 + 1);
  v12 = v60;
  if (!v14)
  {
    goto LABEL_81;
  }

  v15 = v11;
  v16 = *(&v60 + 1) >> 62;
  if ((*(&v60 + 1) >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v60 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v60 >> 32;
  }

  else
  {
    v17 = BYTE14(v60);
  }

  if (__OFSUB__(v17, v61))
  {
    goto LABEL_93;
  }

  if (v17 - v61 > 0)
  {

LABEL_81:
    *a2 = xmmword_26C14EC10;
    *(a2 + 16) = 2;
    v58 = xmmword_26C14EC10;
    LOBYTE(v59) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v48 = v12;
    v49 = v13;
LABEL_82:
    result = sub_26C0BB9B0(v48, v49);
    goto LABEL_11;
  }

  sub_26C0BB9B0(v60, *(&v60 + 1));
LABEL_84:
  result = v15;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C12D114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x26D69BEF0](1);

    return sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v6 = *(a2 + 16);
    result = MEMORY[0x26D69BEF0](v6);
    if (v6)
    {
      v7 = (a2 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        sub_26C148F4C();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_26C12D1D4(uint64_t a1, uint64_t a2, char a3)
{
  sub_26C1491AC();
  if (a3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    v5 = *(a1 + 16);
    MEMORY[0x26D69BEF0](v5);
    if (v5)
    {
      v6 = (a1 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        sub_26C148F4C();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12D2B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_26C1491AC();
  if (v3)
  {
    MEMORY[0x26D69BEF0](1);
    sub_26C148F4C();
  }

  else
  {
    MEMORY[0x26D69BEF0](0);
    MEMORY[0x26D69BEF0](*(v1 + 16));
    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = (v1 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;

        sub_26C148F4C();

        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  return sub_26C14920C();
}

uint64_t sub_26C12D36C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_26C0BC79C(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_26C14912C();
  }
}

unint64_t sub_26C12D3C8()
{
  result = qword_28047AE00;
  if (!qword_28047AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE00);
  }

  return result;
}

void sub_26C12D41C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = 0;
      v7 = BYTE6(v2);
      goto LABEL_9;
    }

    v6 = v3;
    v7 = v3 >> 32;
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
LABEL_7:
    sub_26C0BBAA4(*a2, a2[1]);
    goto LABEL_9;
  }

  v7 = 0;
  v6 = 0;
LABEL_9:
  if (v7 < v4 || v7 < v6)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = sub_26C14889C();
  v11 = v10;
  sub_26C1488CC();
  v12 = v11;
  v13 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (!v13)
    {
LABEL_15:
      sub_26C0BB9B0(v9, v11);
      sub_26C0BB9B0(v3, v2);
      return;
    }

LABEL_20:
    sub_26C0BB9B0(v9, v12);
    sub_26C0BB9B0(v3, v2);
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      return;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v15 = *(v9 + 16);
  v14 = *(v9 + 24);
  sub_26C0BB9B0(v9, v12);
  sub_26C0BB9B0(v3, v2);
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_26C12D584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_26C12D5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26C12D660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C12D6B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C12D728(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 4;
    v6 = *v3;
    LOWORD(v10) = *(v3 - 12);
    v11 = *(v3 - 1);
    v12 = v6;
    v7 = sub_26C12EFB4(&v10);
    v3 = v5;
    v8 = __OFADD__(a1, v7);
    a1 += v7;
    if (v8)
    {
      __break(1u);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26C12D7B8(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v30 = *(a1 + 32);
  *v31 = v2;
  *&v31[16] = *(a1 + 64);
  v32 = *(a1 + 80);
  v3 = *(a1 + 16);
  v28 = *a1;
  v29 = v3;
  *(&v21 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v22 = sub_26C0ECE20();
  v4 = sub_26C14897C();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  v5 = *(&v28 + 1);
  v6 = v29;
  if (v4)
  {
    if (v32)
    {
      LOWORD(v20) = v28;
      *(&v20 + 1) = *(&v28 + 1);
      v21 = v29;
      sub_26C0BBAA4(*(&v28 + 1), v29);
      v7 = sub_26C12EFB4(&v20);
      sub_26C0BB9B0(v5, v6);
      result = v7;
    }

    else
    {
      v20 = v28;
      v21 = v29;
      v22 = v30;
      v23 = *v31;
      result = sub_26C12EAE0(&v20);
    }
  }

  else
  {
    v9 = *v31;
    if ((v32 & 1) == 0)
    {
      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v27 = *v31;
      v10 = *v1;
      v11 = v1[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v13 = *(v10 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v12)
      {
        v13 = v10 >> 32;
      }

      else
      {
        v13 = BYTE6(v11);
      }

      v19 = 0;
      *(&v21 + 1) = MEMORY[0x277D838B0];
      *&v22 = MEMORY[0x277CC9C18];
      *&v20 = &v19;
      *(&v20 + 1) = &v20;
      v14 = __swift_project_boxed_opaque_existential_1(&v20, MEMORY[0x277D838B0]);
      v16 = *v14;
      v15 = v14[1];
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v20);
      sub_26C0FF0B0(&v28, &v20);

      v17 = sub_26C131804(0, v9, v1, v26);
      sub_26C1317D4(&v28);

      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v17 >> 16))
      {
        sub_26C10064C(v17, v13);
        result = v17 + 2;
        goto LABEL_17;
      }

      __break(1u);
    }

    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = *v31;
    v24 = *&v31[8];
    v25 = *&v31[24];
    result = sub_26C12F9D0(&v20);
  }

LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C12D9F0()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE08);
  __swift_project_value_buffer(v0, qword_28047AE08);
  return sub_26C148A8C();
}

uint64_t sub_26C12DA74(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = v1[3];
  v9 = v1[4];
  v11 = v1[5];
  v10 = v1[6];
  v12 = sub_26C14889C();
  v14 = v13;
  sub_26C1488BC();
  result = sub_26C0BB9B0(v12, v14);
  v15 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v16 = *(v8 + 24);
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15)
  {
    v16 = v8 >> 32;
  }

  else
  {
    v16 = BYTE6(v9);
  }

  if (v16 < v11)
  {
    goto LABEL_21;
  }

  v17 = sub_26C14889C();
  v19 = v18;
  sub_26C1488BC();
  sub_26C0BB9B0(v17, v19);

  return sub_26C12B45C(a1, v10);
}

uint64_t sub_26C12DBB0()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  v10 = *v0;
  result = sub_26C1491DC();
  v12 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v13 = *(v1 + 24);
    }

    else
    {
      v13 = 0;
    }
  }

  else if (v12)
  {
    v13 = v1 >> 32;
  }

  else
  {
    v13 = BYTE6(v2);
  }

  if (v13 < v4)
  {
    __break(1u);
    goto LABEL_34;
  }

  v14 = sub_26C14889C();
  v16 = v15;
  sub_26C1488BC();
  sub_26C0BB9B0(v14, v16);
  if (v5 >> 60 == 15)
  {
    sub_26C1491CC();
    goto LABEL_20;
  }

  result = sub_26C1491CC();
  v17 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v3 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v3 >> 32;
  }

  else
  {
    v18 = BYTE6(v5);
  }

  if (v18 < v6)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v19 = sub_26C14889C();
  v21 = v20;
  sub_26C1488BC();
  sub_26C0BB9B0(v19, v21);
LABEL_20:
  if (v8 >> 60 == 15)
  {
    return sub_26C1491CC();
  }

  result = sub_26C1491CC();
  v22 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v7 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v7 >> 32;
  }

  else
  {
    v23 = BYTE6(v8);
  }

  if (v23 < v9)
  {
    goto LABEL_35;
  }

  v24 = sub_26C14889C();
  v26 = v25;
  sub_26C1488BC();

  return sub_26C0BB9B0(v24, v26);
}

uint64_t sub_26C12DDD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  if (*(v1 + 80))
  {
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);
    v38 = v11;
    v39 = *(v1 + 56);
    MEMORY[0x26D69BEF0](1);
    result = sub_26C1491DC();
    v13 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v13 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v13)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v6);
    }

    if (v14 >= v5)
    {
      v22 = sub_26C14889C();
      v24 = v23;
      sub_26C1488BC();
      sub_26C0BB9B0(v22, v24);
      if (v8 >> 60 == 15)
      {
        sub_26C1491CC();
        goto LABEL_39;
      }

      result = sub_26C1491CC();
      v25 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v26 = *(v7 + 24);
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v25)
      {
        v26 = v7 >> 32;
      }

      else
      {
        v26 = BYTE6(v8);
      }

      if (v26 >= v9)
      {
        v30 = sub_26C14889C();
        v32 = v31;
        sub_26C1488BC();
        sub_26C0BB9B0(v30, v32);
LABEL_39:
        if (v10 >> 60 == 15)
        {
          return sub_26C1491CC();
        }

        sub_26C1491CC();
        v33 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          result = v38;
          if (v33 == 2)
          {
            v34 = *(v39 + 24);
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          result = v38;
          if (v33)
          {
            v34 = v39 >> 32;
          }

          else
          {
            v34 = BYTE6(v10);
          }
        }

        if (v34 >= result)
        {
          v35 = sub_26C14889C();
          v37 = v36;
          sub_26C1488BC();

          return sub_26C0BB9B0(v35, v37);
        }

LABEL_56:
        __break(1u);
        return result;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  result = MEMORY[0x26D69BEF0](0);
  v15 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v16 = 0;
    if (v15 == 2)
    {
      v16 = *(v3 + 24);
    }
  }

  else if (v15)
  {
    v16 = v3 >> 32;
  }

  else
  {
    v16 = BYTE6(v4);
  }

  if (v16 < v6)
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = sub_26C14889C();
  v19 = v18;
  sub_26C1488BC();
  result = sub_26C0BB9B0(v17, v19);
  v20 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v5 + 24);
    }

    else
    {
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v5 >> 32;
  }

  else
  {
    v21 = BYTE6(v7);
  }

  if (v21 < v8)
  {
    goto LABEL_54;
  }

  v27 = sub_26C14889C();
  v29 = v28;
  sub_26C1488BC();
  sub_26C0BB9B0(v27, v29);

  return sub_26C12B45C(a1, v9);
}

uint64_t sub_26C12E14C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_26C1491AC();
  sub_26C12DA74(v4);
  return sub_26C14920C();
}

uint64_t sub_26C12E1AC()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_26C1491AC();
  sub_26C12DA74(v4);
  return sub_26C14920C();
}

uint64_t sub_26C12E208()
{
  sub_26C1491AC();
  sub_26C12DBB0();
  return sub_26C14920C();
}

uint64_t sub_26C12E24C()
{
  sub_26C1491AC();
  sub_26C12DBB0();
  return sub_26C14920C();
}

uint64_t sub_26C12E28C()
{
  sub_26C1491AC();
  sub_26C12DDD0(v1);
  return sub_26C14920C();
}

uint64_t sub_26C12E2D0()
{
  sub_26C1491AC();
  sub_26C12DDD0(v1);
  return sub_26C14920C();
}

unint64_t sub_26C12E314()
{
  result = qword_28047AE20;
  if (!qword_28047AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE20);
  }

  return result;
}

unint64_t sub_26C12E36C()
{
  result = qword_28047AE28;
  if (!qword_28047AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE28);
  }

  return result;
}

unint64_t sub_26C12E3C4()
{
  result = qword_28047AE30;
  if (!qword_28047AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE30);
  }

  return result;
}

unint64_t sub_26C12E41C()
{
  result = qword_28047AE38;
  if (!qword_28047AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE38);
  }

  return result;
}

double sub_26C12E470@<D0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if (a2)
  {
    if (qword_28047A778 != -1)
    {
      swift_once();
    }

    v7 = sub_26C148A9C();
    __swift_project_value_buffer(v7, qword_28047AE08);
    v8 = sub_26C148A7C();
    v9 = sub_26C14900C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26C0B5000, v8, v9, "PAKE extension not supported for hello retry requests", v10, 2u);
      MEMORY[0x26D69C3A0](v10, -1, -1);
    }

LABEL_18:
    *a3 = v6 | 0x8A3B0000;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&v30 = v6 | 0x8A3B0000;
    *(&v30 + 1) = 0;
    LOBYTE(v31) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return *&v13;
  }

  if (v6 == 2)
  {
    sub_26C12F8EC(&v34, &v30);
    if (v4)
    {
      v13 = v34;
      v15 = v35;
    }

    else
    {
      v26 = v31;
      if (v31 >> 60 != 15)
      {
        v27 = *(&v31 + 1);
        v28 = *(&v30 + 1);
        *a4 = v30;
        *(a4 + 8) = v28;
        *(a4 + 16) = v26;
        *(a4 + 24) = v27;
        *(a4 + 32) = xmmword_26C14A540;
        *(a4 + 48) = 0;
        *(a4 + 56) = 0;
        *&v13 = 0xF000000000000000;
        *(a4 + 64) = xmmword_26C14C1D0;
        *(a4 + 80) = 1;
        return *&v13;
      }

      v30 = 0u;
      v15 = 2;
      LOBYTE(v31) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      v13 = 0uLL;
    }

    *a3 = v13;
    *(a3 + 16) = v15;
  }

  else
  {
    if (v6 != 1)
    {
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v16 = sub_26C148A9C();
      __swift_project_value_buffer(v16, qword_28047AE08);
      v17 = sub_26C148A7C();
      v18 = sub_26C14900C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v30 = v20;
        *v19 = 136315138;
        LOBYTE(v34) = v6;
        v21 = HandshakeType.description.getter();
        v23 = sub_26C0E5DE8(v21, v22, &v30);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_26C0B5000, v17, v18, "PAKE extension not supported in message type %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x26D69C3A0](v20, -1, -1);
        MEMORY[0x26D69C3A0](v19, -1, -1);
      }

      goto LABEL_18;
    }

    sub_26C12F234(&v34, &v30);
    if (v4)
    {
      v12 = v35;
      *&v13 = v34;
      *a3 = v34;
      *(a3 + 16) = v12;
    }

    else
    {
      v24 = v33;
      v25 = v31;
      *a4 = v30;
      *(a4 + 16) = v25;
      *&v13 = v32;
      *(a4 + 32) = v32;
      *(a4 + 48) = v24;
      *(a4 + 80) = 0;
    }
  }

  return *&v13;
}

__n128 sub_26C12E7B8@<Q0>(unsigned __int8 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (a2)
  {
    if (qword_28047A778 != -1)
    {
      swift_once();
    }

    v8 = sub_26C148A9C();
    __swift_project_value_buffer(v8, qword_28047AE08);
    v9 = sub_26C148A7C();
    v10 = sub_26C14900C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C0B5000, v9, v10, "PAKE extension not supported for hello retry requests", v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }

LABEL_19:
    *a3 = v7 | 0x8A3B0000;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v31.n128_u64[0] = v7 | 0x8A3B0000;
    v31.n128_u64[1] = 0;
    LOBYTE(v32) = 0;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return result;
  }

  if (v7 == 2)
  {
    sub_26C130848(&v31, v35);
    if (v5)
    {
      v16 = v32;
      result.n128_u64[0] = v31.n128_u64[0];
      *a3 = v31;
      *(a3 + 16) = v16;
    }

    else
    {
      v29.n128_u8[0] = 1;
      v28 = v35[3];
      *(a4 + 32) = v35[2];
      *(a4 + 48) = v28;
      *(a4 + 64) = v35[4];
      result = v35[1];
      *a4 = v35[0];
      *(a4 + 16) = result;
      *(a4 + 80) = 1;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v17 = sub_26C148A9C();
      __swift_project_value_buffer(v17, qword_28047AE08);
      v18 = sub_26C148A7C();
      v19 = sub_26C14900C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31.n128_u64[0] = v21;
        *v20 = 136315138;
        v29.n128_u8[0] = v7;
        v22 = HandshakeType.description.getter();
        v24 = sub_26C0E5DE8(v22, v23, &v31);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_26C0B5000, v18, v19, "PAKE extension not supported in message type %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x26D69C3A0](v21, -1, -1);
        MEMORY[0x26D69C3A0](v20, -1, -1);
      }

      goto LABEL_19;
    }

    sub_26C0DE5F4(v4, &v29, &v31);
    if (v5)
    {
      result = v29;
      v14 = v30;
LABEL_11:
      *a3 = result;
      *(a3 + 16) = v14;
      return result;
    }

    v25 = v34;
    if (!v34)
    {
      v31 = 0u;
      v14 = 2;
      LOBYTE(v32) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      result = 0uLL;
      goto LABEL_11;
    }

    result = v31;
    v26 = v32;
    v27 = v33;
    v31.n128_u8[0] = 0;
    *a4 = result;
    *(a4 + 16) = v26;
    *(a4 + 32) = v27;
    *(a4 + 48) = v25;
    *(a4 + 80) = 0;
  }

  return result;
}

uint64_t sub_26C12EAE0(uint64_t *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v9 = 0;
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }
  }

  else
  {
    v7 = BYTE6(v5);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v55 = a1[6];
  v56 = 0;
  v59 = MEMORY[0x277D838B0];
  v60 = MEMORY[0x277CC9C18];
  v57 = &v56;
  v58 = &v57;
  v14 = __swift_project_boxed_opaque_existential_1(&v57, MEMORY[0x277D838B0]);
  v16 = *v14;
  v15 = v14[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v17 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = 0;
      v19 = BYTE6(v2);
      if (BYTE6(v2) < v11)
      {
        goto LABEL_73;
      }

      goto LABEL_17;
    }

    v18 = v3;
    v19 = v3 >> 32;
LABEL_14:
    sub_26C0BBAA4(v3, v2);
    if (v19 < v11)
    {
      goto LABEL_73;
    }

    goto LABEL_17;
  }

  if (v17 == 2)
  {
    v18 = *(v3 + 16);
    v19 = *(v3 + 24);
    goto LABEL_14;
  }

  v19 = 0;
  v18 = 0;
  if (v11 > 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_17:
  if (v19 < v18)
  {
    goto LABEL_73;
  }

  v20 = sub_26C14889C();
  v22 = v21;
  sub_26C1488CC();
  v23 = v22;
  v24 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v24)
    {
      sub_26C0BB9B0(v20, v22);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v22);
LABEL_31:
      v3 = MEMORY[0x277D838B0];
      v20 = MEMORY[0x277CC9C18];
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v24 != 2)
  {
LABEL_30:
    sub_26C0BB9B0(v20, v23);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_31;
  }

  v26 = *(v20 + 16);
  v25 = *(v20 + 24);
  sub_26C0BB9B0(v20, v23);
  sub_26C0BB9B0(v3, v2);
  v2 = v25 - v26;
  if (__OFSUB__(v25, v26))
  {
    __break(1u);
LABEL_25:
    sub_26C0BB9B0(v20, v23);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v20), v20))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v2 = HIDWORD(v20) - v20;
  }

  v3 = MEMORY[0x277D838B0];
  v20 = MEMORY[0x277CC9C18];
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_30;
  }

LABEL_32:
  sub_26C10064C(v2, v9);
  v27 = *v1;
  v28 = v1[1];
  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v30 = *(v27 + 24);
    }

    else
    {
      v30 = 0;
    }
  }

  else if (v29)
  {
    v30 = v27 >> 32;
  }

  else
  {
    v30 = BYTE6(v28);
  }

  v56 = 0;
  v59 = v3;
  v60 = v20;
  v57 = &v56;
  v58 = &v57;
  v31 = __swift_project_boxed_opaque_existential_1(&v57, v3);
  v33 = *v31;
  v32 = v31[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v34 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = 0;
      v36 = BYTE6(v12);
      if (BYTE6(v12) < v13)
      {
        goto LABEL_75;
      }

      goto LABEL_49;
    }

    v35 = v10;
    v36 = v10 >> 32;
LABEL_46:
    sub_26C0BBAA4(v10, v12);
    if (v36 < v13)
    {
      goto LABEL_75;
    }

    goto LABEL_49;
  }

  if (v34 == 2)
  {
    v35 = *(v10 + 16);
    v36 = *(v10 + 24);
    goto LABEL_46;
  }

  v36 = 0;
  v35 = 0;
  if (v13 > 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_49:
  if (v36 < v35)
  {
    goto LABEL_75;
  }

  v37 = sub_26C14889C();
  v39 = v38;
  sub_26C1488CC();
  v40 = v39;
  v41 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v41)
    {
      sub_26C0BB9B0(v37, v39);
      sub_26C0BB9B0(v10, v12);
      v12 = BYTE6(v39);
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (v41 != 2)
  {
LABEL_62:
    sub_26C0BB9B0(v37, v40);
    sub_26C0BB9B0(v10, v12);
    v12 = 0;
    goto LABEL_63;
  }

  v43 = *(v37 + 16);
  v42 = *(v37 + 24);
  sub_26C0BB9B0(v37, v40);
  sub_26C0BB9B0(v10, v12);
  v12 = v42 - v43;
  if (__OFSUB__(v42, v43))
  {
    __break(1u);
LABEL_57:
    sub_26C0BB9B0(v37, v40);
    sub_26C0BB9B0(v10, v12);
    if (__OFSUB__(HIDWORD(v37), v37))
    {
      goto LABEL_80;
    }

    v12 = HIDWORD(v37) - v37;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v12 >> 16)
  {
    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  sub_26C10064C(v12, v30);
  v44 = *v1;
  v45 = v1[1];
  v46 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v46 == 2)
    {
      v47 = *(v44 + 24);
    }

    else
    {
      v47 = 0;
    }
  }

  else if (v46)
  {
    v47 = v44 >> 32;
  }

  else
  {
    v47 = BYTE6(v45);
  }

  v56 = 0;
  v59 = v3;
  v60 = v20;
  v57 = &v56;
  v58 = &v57;
  v48 = __swift_project_boxed_opaque_existential_1(&v57, v3);
  v50 = *v48;
  v49 = v48[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v51 = sub_26C12D728(0, v55);
  if ((v51 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v52 = v51;
  if (v51 >> 16)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_26C10064C(v51, v47);
  v53 = *MEMORY[0x277D85DE8];
  return v2 + v12 + v52 + 6;
}

unint64_t sub_26C12EFB4(void *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v31 = bswap32(*a1) >> 16;
  v5 = MEMORY[0x277D838B0];
  v6 = MEMORY[0x277CC9C18];
  v34 = MEMORY[0x277D838B0];
  v35 = MEMORY[0x277CC9C18];
  v32 = &v31;
  v33 = &v32;
  v7 = __swift_project_boxed_opaque_existential_1(&v32, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v10 = *v1;
  v11 = v1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  v31 = 0;
  v34 = v5;
  v35 = v6;
  v32 = &v31;
  v33 = &v32;
  v16 = __swift_project_boxed_opaque_existential_1(&v32, v5);
  v18 = *v16;
  v17 = v16[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v19 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = 0;
      v21 = BYTE6(v2);
      if (BYTE6(v2) < v4)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v20 = v3;
    v21 = v3 >> 32;
LABEL_15:
    sub_26C0BBAA4(v3, v2);
    if (v21 < v4)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  if (v19 == 2)
  {
    v20 = *(v3 + 16);
    v21 = *(v3 + 24);
    goto LABEL_15;
  }

  v21 = 0;
  v20 = 0;
  if (v4 > 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_18:
  if (v21 < v20)
  {
    goto LABEL_33;
  }

  v22 = sub_26C14889C();
  v24 = v23;
  sub_26C1488CC();
  v25 = v24;
  v26 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v26)
    {
      sub_26C0BB9B0(v22, v24);
      sub_26C0BB9B0(v3, v2);
      v2 = BYTE6(v24);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v26 != 2)
  {
LABEL_31:
    sub_26C0BB9B0(v22, v25);
    sub_26C0BB9B0(v3, v2);
    v2 = 0;
    goto LABEL_32;
  }

  v28 = *(v22 + 16);
  v27 = *(v22 + 24);
  sub_26C0BB9B0(v22, v25);
  sub_26C0BB9B0(v3, v2);
  v2 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v22, v25);
    sub_26C0BB9B0(v3, v2);
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_35;
    }

    v2 = HIDWORD(v22) - v22;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  if (v2 >> 16)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_32:
  sub_26C10064C(v2, v15);
  v29 = *MEMORY[0x277D85DE8];
  return v2 + 4;
}

uint64_t sub_26C12F234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26C0E0978(v2, &v24, &v26);
  if (v3)
  {
    v7 = v25;
    *a1 = v24;
    *(a1 + 16) = v7;
    return result;
  }

  v8 = *(&v26 + 1);
  if (*(&v26 + 1) >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  v9 = v26;
  v10 = v27;
  sub_26C0E0978(v2, &v24, &v26);
  if (*(&v26 + 1) >> 60 == 15)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v11 = v9;
    v12 = v8;
    return sub_26C0BB344(v11, v12);
  }

  v21 = *(&v26 + 1);
  v22 = v27;
  v23 = v26;
  v14 = *v2;
  v13 = v2[1];
  v15 = v2[2];
  sub_26C0BBAA4(*v2, v13);
  v16 = sub_26C1365D4();
  if ((v16 & 0x10000) != 0 || (sub_26C0DE248(v16, &v24), *(&v24 + 1) >> 60 == 15))
  {
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v14;
    v2[1] = v13;
    v2[2] = v15;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v26 = 0uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v9, v8);
    v11 = v23;
    v12 = v21;
    return sub_26C0BB344(v11, v12);
  }

  v26 = v24;
  v27 = v25;
  sub_26C12F594(&v26, &v24, &v28);
  result = v26;
  v17 = *(&v26 + 1) >> 62;
  if ((*(&v26 + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v18 = *(v26 + 24);
    }

    else
    {
      v18 = 0;
    }
  }

  else if (v17)
  {
    v18 = v26 >> 32;
  }

  else
  {
    v18 = BYTE14(v26);
  }

  if (__OFSUB__(v18, v27))
  {
    __break(1u);
  }

  else if (v18 == v27)
  {
    sub_26C0BB9B0(v26, *(&v26 + 1));
    result = sub_26C0BB9B0(v14, v13);
    v19 = v28;
    *a2 = v9;
    a2[1] = v8;
    a2[2] = v10;
    a2[3] = v23;
    a2[4] = v21;
    a2[5] = v22;
    a2[6] = v19;
  }

  else
  {
    v24 = xmmword_26C149860;
    LOBYTE(v25) = 2;
    v20 = v26;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();

    sub_26C0BB9B0(v20, *(&v20 + 1));
    sub_26C0BB9B0(*v2, v2[1]);
    *v2 = v14;
    v2[1] = v13;
    v2[2] = v15;
    v26 = 1uLL;
    LOBYTE(v27) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB344(v9, v8);
    result = sub_26C0BB344(v23, v21);
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
  }

  return result;
}

uint64_t sub_26C12F594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_38;
  }

  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE36C(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v14 = a1[1];
  v37 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  v17 = result;
  v18 = v14 >> 62;
  v38 = BYTE6(v14);
  while (1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (*(v37 + 24) < v16)
        {
          goto LABEL_31;
        }
      }

      else if (v16 > 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = v38;
      if (v18)
      {
        v19 = v37 >> 32;
      }

      if (v19 < v16)
      {
LABEL_31:
        *a3 = v17;
        goto LABEL_35;
      }
    }

    v20 = *a1;
    v21 = a1[1];
    v43 = *a1;
    v44 = v21;
    if (v16 < v15)
    {
      goto LABEL_37;
    }

    v39 = v17;
    v40 = v15;
    v41 = v16;
    sub_26C0BBAA4(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v43, v44);
    a1[2] = v16;
    v23 = *a1;
    v22 = a1[1];
    sub_26C0BBAA4(*a1, v22);
    sub_26C0E09A8(a1, &v40, &v43);
    if (v3)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v31 = v40;
      v32 = v41;
      v33 = v42;
      *a1 = v23;
      a1[1] = v22;
      a1[2] = v16;
      v43 = v31;
      v44 = v32;
      LOBYTE(v45) = v33;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();

      goto LABEL_34;
    }

    v24 = v44;
    if (v44 >> 60 == 15)
    {
      break;
    }

    v25 = v18;
    result = sub_26C0BB9B0(v23, v22);
    v26 = v43;
    v27 = v45;
    v17 = v39;
    v29 = *(v39 + 16);
    v28 = *(v39 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_26C0CE36C((v28 > 1), v29 + 1, 1, v39);
      v17 = result;
    }

    *(v17 + 16) = v29 + 1;
    v30 = v17 + 32 * v29;
    *(v30 + 32) = bswap32(0) >> 16;
    *(v30 + 40) = v26;
    *(v30 + 48) = v24;
    *(v30 + 56) = v27;
    v15 = a1[2];
    v16 = v15 + 2;
    v18 = v25;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_36;
    }
  }

  sub_26C0BB9B0(*a1, a1[1]);
  sub_26C0BB344(v43, v24);
  *a1 = v23;
  a1[1] = v22;
  a1[2] = v16;
  v43 = 0;
  v44 = 0;
  v33 = 2;
  LOBYTE(v45) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();

  v31 = 0;
  v32 = 0;
LABEL_34:
  *a2 = v31;
  *(a2 + 8) = v32;
  *(a2 + 16) = v33;
LABEL_35:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C12F8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26C1365D4();
  if ((result & 0x10000) != 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = xmmword_26C14C1D0;
  }

  else
  {
    v7 = result;
    result = sub_26C0E0978(v2, &v12, &v14);
    if (v3)
    {
      v8 = v13;
      *a1 = v12;
      *(a1 + 16) = v8;
    }

    else
    {
      v9 = v15;
      if (v15 >> 60 == 15)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 2;
        v14 = 0;
        v15 = 0;
        LOBYTE(v16) = 2;
        sub_26C0BBAF8();
        return swift_willThrowTypedImpl();
      }

      else
      {
        v10 = v16;
        v11 = v14;
        *a2 = v7;
        *(a2 + 8) = v11;
        *(a2 + 16) = v9;
        *(a2 + 24) = v10;
      }
    }
  }

  return result;
}

uint64_t sub_26C12F9D0(void *a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2 >> 60 == 15)
  {
    goto LABEL_102;
  }

  v88 = a1[4];
  v3 = a1[8];
  if (v3 >> 60 == 15)
  {
    goto LABEL_107;
  }

  v5 = a1[1];
  v4 = a1[2];
  v85 = a1[3];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[9];
  v89 = __rev16(*a1);
  v92 = MEMORY[0x277D838B0];
  v93 = MEMORY[0x277CC9C18];
  v90 = &v89;
  v91 = &v90;
  v9 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x277D838B0]);
  v10 = *v9;
  v11 = v9[1];
  sub_26C0BB37C(v88, v2);
  v86 = v3;
  sub_26C0BB37C(v7, v3);
  v87 = v5;
  sub_26C0BBAA4(v5, v4);
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v12 = *v1;
  v13 = v1[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v12 + 24);
    }

    else
    {
      v15 = 0;
    }
  }

  else if (v14)
  {
    v15 = v12 >> 32;
  }

  else
  {
    v15 = BYTE6(v13);
  }

  v16 = MEMORY[0x277D838B0];
  v89 = 0;
  v92 = MEMORY[0x277D838B0];
  v93 = MEMORY[0x277CC9C18];
  v90 = &v89;
  v91 = &v90;
  v17 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x277D838B0]);
  v19 = *v17;
  v18 = v17[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v20 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v21 = *(v88 + 16);
      v22 = *(v88 + 24);
    }

    else
    {
      v22 = 0;
      v21 = 0;
    }
  }

  else if (v20)
  {
    v21 = v88;
    v22 = v88 >> 32;
  }

  else
  {
    v21 = 0;
    v22 = BYTE6(v2);
  }

  if (v22 < v6 || v22 < v21)
  {
    __break(1u);
    goto LABEL_91;
  }

  v84 = v2;
  v23 = sub_26C14889C();
  v25 = v24;
  sub_26C1488CC();
  v26 = v25;
  v27 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    if (v27 != 2)
    {
LABEL_30:
      sub_26C0BB9B0(v23, v26);
      v28 = 0;
      goto LABEL_31;
    }

    v29 = v8;
    v30 = v7;
    v32 = *(v23 + 16);
    v31 = *(v23 + 24);
    sub_26C0BB9B0(v23, v26);
    v28 = v31 - v32;
    if (__OFSUB__(v31, v32))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v7 = v30;
    v8 = v29;
    goto LABEL_27;
  }

  if (v27)
  {
    sub_26C0BB9B0(v23, v25);
    if (__OFSUB__(HIDWORD(v23), v23))
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v28 = HIDWORD(v23) - v23;
LABEL_27:
    v33 = v86;
    if ((v28 & 0x8000000000000000) == 0)
    {
      if (!(v28 >> 16))
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_26C0BB9B0(v23, v25);
  v28 = BYTE6(v25);
LABEL_31:
  v33 = v86;
LABEL_32:
  sub_26C10064C(v28, v15);
  v34 = *v1;
  v35 = v1[1];
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v37 = *(v34 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v36)
  {
    v37 = v34 >> 32;
  }

  else
  {
    v37 = BYTE6(v35);
  }

  v89 = 0;
  v92 = v16;
  v93 = MEMORY[0x277CC9C18];
  v90 = &v89;
  v91 = &v90;
  v38 = __swift_project_boxed_opaque_existential_1(&v90, v16);
  v40 = *v38;
  v39 = v38[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v41 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v41 == 2)
    {
      v42 = *(v7 + 16);
      v43 = *(v7 + 24);
    }

    else
    {
      v43 = 0;
      v42 = 0;
    }
  }

  else if (v41)
  {
    v42 = v7;
    v43 = v7 >> 32;
  }

  else
  {
    v42 = 0;
    v43 = BYTE6(v33);
  }

  if (v43 < v8 || v43 < v42)
  {
    goto LABEL_92;
  }

  v83 = v7;
  v44 = sub_26C14889C();
  v46 = v45;
  sub_26C1488CC();
  v47 = v46;
  v48 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v48 != 2)
    {
      goto LABEL_59;
    }

    v49 = v28;
    v51 = *(v44 + 16);
    v50 = *(v44 + 24);
    sub_26C0BB9B0(v44, v47);
    v44 = v50 - v51;
    if (__OFSUB__(v50, v51))
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v28 = v49;
  }

  else
  {
    if (!v48)
    {
      sub_26C0BB9B0(v44, v46);
      v44 = BYTE6(v46);
      goto LABEL_60;
    }

    sub_26C0BB9B0(v44, v46);
    if (__OFSUB__(HIDWORD(v44), v44))
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v76 = sub_26C148A9C();
      __swift_project_value_buffer(v76, qword_28047AE08);
      v2 = sub_26C148A7C();
      v77 = sub_26C14900C();
      if (os_log_type_enabled(v2, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_26C0B5000, v2, v77, "PAKE extension missing client identity", v78, 2u);
        MEMORY[0x26D69C3A0](v78, -1, -1);
      }

      __break(1u);
LABEL_107:
      sub_26C0BBAA4(v88, v2);
      if (qword_28047A778 != -1)
      {
        swift_once();
      }

      v79 = sub_26C148A9C();
      __swift_project_value_buffer(v79, qword_28047AE08);
      v80 = sub_26C148A7C();
      v81 = sub_26C14900C();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_26C0B5000, v80, v81, "PAKE extension missing server identity", v82, 2u);
        MEMORY[0x26D69C3A0](v82, -1, -1);
      }

      __break(1u);
    }

    v44 = HIDWORD(v44) - v44;
  }

  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (!(v44 >> 16))
  {
    goto LABEL_60;
  }

  __break(1u);
LABEL_59:
  sub_26C0BB9B0(v44, v47);
  v44 = 0;
LABEL_60:
  sub_26C10064C(v44, v37);
  v52 = *v1;
  v53 = v1[1];
  v54 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v54 == 2)
    {
      v55 = *(v52 + 24);
    }

    else
    {
      v55 = 0;
    }
  }

  else if (v54)
  {
    v55 = v52 >> 32;
  }

  else
  {
    v55 = BYTE6(v53);
  }

  v89 = 0;
  v92 = v16;
  v93 = MEMORY[0x277CC9C18];
  v90 = &v89;
  v91 = &v90;
  v56 = __swift_project_boxed_opaque_existential_1(&v90, v16);
  v58 = *v56;
  v57 = v56[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v90);
  v59 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v60 = v85;
    if (v59 == 2)
    {
      v61 = *(v87 + 16);
      v62 = *(v87 + 24);
    }

    else
    {
      v62 = 0;
      v61 = 0;
    }
  }

  else
  {
    v60 = v85;
    if (v59)
    {
      v61 = v87;
      v62 = v87 >> 32;
    }

    else
    {
      v61 = 0;
      v62 = BYTE6(v4);
    }
  }

  if (v62 < v60 || v62 < v61)
  {
    goto LABEL_94;
  }

  v63 = sub_26C14889C();
  v65 = v64;
  sub_26C1488CC();
  v66 = v65;
  v67 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    if (v67 != 2)
    {
LABEL_87:
      sub_26C0BB9B0(v63, v66);
      sub_26C0BB9B0(v87, v4);
      v68 = 0;
      goto LABEL_88;
    }

    v69 = v55;
    v70 = v28;
    v72 = *(v63 + 16);
    v71 = *(v63 + 24);
    sub_26C0BB9B0(v63, v66);
    sub_26C0BB9B0(v87, v4);
    v68 = v71 - v72;
    if (__OFSUB__(v71, v72))
    {
      goto LABEL_100;
    }

    v28 = v70;
    v55 = v69;
  }

  else
  {
    if (!v67)
    {
      sub_26C0BB9B0(v63, v65);
      sub_26C0BB9B0(v87, v4);
      v68 = BYTE6(v65);
LABEL_88:
      v73 = v83;
      goto LABEL_89;
    }

    sub_26C0BB9B0(v63, v65);
    sub_26C0BB9B0(v87, v4);
    if (__OFSUB__(HIDWORD(v63), v63))
    {
      goto LABEL_101;
    }

    v68 = HIDWORD(v63) - v63;
  }

  v73 = v83;
  if ((v68 & 0x8000000000000000) != 0)
  {
    goto LABEL_95;
  }

  if (v68 >> 16)
  {
    __break(1u);
    goto LABEL_87;
  }

LABEL_89:
  sub_26C10064C(v68, v55);
  sub_26C0BB344(v88, v84);
  sub_26C0BB344(v73, v86);
  v74 = *MEMORY[0x277D85DE8];
  return v28 + v44 + v68 + 8;
}

uint64_t sub_26C1301BC(void *a1, void *a2, uint64_t *a3, __int128 *a4)
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  v7 = a2[2];
  v75 = a2[3];
  LOWORD(v83) = bswap32(*a2) >> 16;
  v9 = MEMORY[0x277D838B0];
  v79 = MEMORY[0x277D838B0];
  v80 = MEMORY[0x277CC9C18];
  v77 = &v83;
  v78 = (&v83 + 2);
  v10 = __swift_project_boxed_opaque_existential_1(&v77, MEMORY[0x277D838B0]);
  v12 = *v10;
  v11 = v10[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v72 = a1;
  v13 = *a1 + 2;
  if (__OFADD__(*a1, 2))
  {
    __break(1u);
    goto LABEL_97;
  }

  v14 = *a3;
  v15 = a3[1];
  v16 = v15 >> 62;
  v73 = v8;
  v74 = v7;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v14 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v14 >> 32;
  }

  else
  {
    v17 = BYTE6(v15);
  }

  LOWORD(v83) = 0;
  v79 = v9;
  v80 = MEMORY[0x277CC9C18];
  v77 = &v83;
  v78 = (&v83 + 2);
  v18 = __swift_project_boxed_opaque_existential_1(&v77, v9);
  v20 = *v18;
  v19 = v18[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v83 = *a4;
  v84 = *(a4 + 2);
  v21 = *(&v83 + 1) >> 62;
  if ((*(&v83 + 1) >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_18;
    }

    v23 = *(v83 + 16);
    v22 = *(v83 + 24);
  }

  else
  {
    if (!v21)
    {
      v22 = BYTE14(v83);
      goto LABEL_18;
    }

    v23 = v83;
    v22 = v83 >> 32;
  }

  sub_26C1318B0(&v83, &v77);
  if (v22 < v23)
  {
    goto LABEL_97;
  }

LABEL_18:
  if (v22 < v84)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v24 = sub_26C14889C();
  v26 = v25;
  sub_26C1488CC();
  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      sub_26C0BB9B0(v24, v26);
      sub_26C13190C(&v83);
      v24 = BYTE6(v26);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v28 != 2)
  {
    goto LABEL_31;
  }

  v30 = *(v24 + 16);
  v29 = *(v24 + 24);
  sub_26C0BB9B0(v24, v27);
  sub_26C13190C(&v83);
  v24 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_26:
    sub_26C0BB9B0(v24, v27);
    sub_26C13190C(&v83);
    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v24 = HIDWORD(v24) - v24;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!(v24 >> 16))
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  sub_26C0BB9B0(v24, v27);
  sub_26C13190C(&v83);
  v24 = 0;
LABEL_32:
  sub_26C10064C(v24, v17);
  v31 = __OFADD__(v13, v24 + 2);
  v32 = v13 + v24 + 2;
  if (v31)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v33 = *a3;
  v34 = a3[1];
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 == 2)
    {
      v36 = *(v33 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v35)
  {
    v36 = v33 >> 32;
  }

  else
  {
    v36 = BYTE6(v34);
  }

  LOWORD(v81) = 0;
  v79 = v9;
  v80 = MEMORY[0x277CC9C18];
  v77 = &v81;
  v78 = (&v81 + 2);
  v37 = __swift_project_boxed_opaque_existential_1(&v77, v9);
  v39 = *v37;
  v38 = v37[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v81 = *(a4 + 24);
  v82 = *(a4 + 5);
  v40 = *(&v81 + 1) >> 62;
  if ((*(&v81 + 1) >> 62) > 1)
  {
    if (v40 != 2)
    {
      v41 = 0;
      goto LABEL_49;
    }

    v42 = *(v81 + 16);
    v41 = *(v81 + 24);
  }

  else
  {
    if (!v40)
    {
      v41 = BYTE14(v81);
      goto LABEL_49;
    }

    v42 = v81;
    v41 = v81 >> 32;
  }

  sub_26C1318B0(&v81, &v77);
  if (v41 < v42)
  {
    goto LABEL_100;
  }

LABEL_49:
  if (v41 < v82)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v43 = sub_26C14889C();
  v45 = v44;
  sub_26C1488CC();
  v46 = v45;
  v47 = v45 >> 62;
  if ((v45 >> 62) <= 1)
  {
    if (!v47)
    {
      sub_26C0BB9B0(v43, v45);
      sub_26C13190C(&v81);
      v43 = BYTE6(v45);
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (v47 != 2)
  {
    goto LABEL_62;
  }

  v49 = *(v43 + 16);
  v48 = *(v43 + 24);
  sub_26C0BB9B0(v43, v46);
  sub_26C13190C(&v81);
  v43 = v48 - v49;
  if (__OFSUB__(v48, v49))
  {
    __break(1u);
LABEL_57:
    sub_26C0BB9B0(v43, v46);
    sub_26C13190C(&v81);
    if (__OFSUB__(HIDWORD(v43), v43))
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }

    v43 = HIDWORD(v43) - v43;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (!(v43 >> 16))
  {
    goto LABEL_63;
  }

  __break(1u);
LABEL_62:
  sub_26C0BB9B0(v43, v46);
  sub_26C13190C(&v81);
  v43 = 0;
LABEL_63:
  sub_26C10064C(v43, v36);
  v31 = __OFADD__(v32, v43 + 2);
  v50 = v32 + v43 + 2;
  if (v31)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v51 = *a3;
  v52 = a3[1];
  v53 = v52 >> 62;
  if ((v52 >> 62) > 1)
  {
    v55 = v73;
    v54 = v74;
    if (v53 == 2)
    {
      v56 = *(v51 + 24);
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v55 = v73;
    v54 = v74;
    if (v53)
    {
      v56 = v51 >> 32;
    }

    else
    {
      v56 = BYTE6(v52);
    }
  }

  v76 = 0;
  v79 = v9;
  v80 = MEMORY[0x277CC9C18];
  v77 = &v76;
  v78 = &v77;
  v57 = __swift_project_boxed_opaque_existential_1(&v77, v9);
  v59 = *v57;
  v58 = v57[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v77);
  v60 = v54 >> 62;
  if ((v54 >> 62) > 1)
  {
    if (v60 != 2)
    {
      v62 = 0;
      v61 = 0;
      goto LABEL_79;
    }

    v61 = *(v55 + 16);
    v62 = *(v55 + 24);
    goto LABEL_77;
  }

  if (v60)
  {
    v61 = v55;
    v62 = v55 >> 32;
LABEL_77:
    sub_26C0BBAA4(v55, v54);
    goto LABEL_79;
  }

  v61 = 0;
  v62 = BYTE6(v54);
LABEL_79:
  if (v62 < v75 || v62 < v61)
  {
    goto LABEL_103;
  }

  v63 = sub_26C14889C();
  v65 = v64;
  sub_26C1488CC();
  v66 = v65;
  v67 = v65 >> 62;
  if ((v65 >> 62) <= 1)
  {
    if (!v67)
    {
      sub_26C0BB9B0(v63, v65);
      sub_26C0BB9B0(v55, v54);
      v63 = BYTE6(v65);
      goto LABEL_94;
    }

    goto LABEL_88;
  }

  if (v67 != 2)
  {
    goto LABEL_93;
  }

  v69 = *(v63 + 16);
  v68 = *(v63 + 24);
  sub_26C0BB9B0(v63, v66);
  sub_26C0BB9B0(v55, v54);
  v63 = v68 - v69;
  if (__OFSUB__(v68, v69))
  {
    __break(1u);
LABEL_88:
    sub_26C0BB9B0(v63, v66);
    sub_26C0BB9B0(v55, v54);
    if (__OFSUB__(HIDWORD(v63), v63))
    {
      goto LABEL_108;
    }

    v63 = HIDWORD(v63) - v63;
  }

  if ((v63 & 0x8000000000000000) != 0)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (!(v63 >> 16))
  {
    goto LABEL_94;
  }

  __break(1u);
LABEL_93:
  sub_26C0BB9B0(v63, v66);
  sub_26C0BB9B0(v55, v54);
  v63 = 0;
LABEL_94:
  result = sub_26C10064C(v63, v56);
  if (__OFADD__(v50, v63 + 2))
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  *v72 = v50 + v63 + 2;
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_26C130848@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_26C1365D4();
  if ((v6 & 0x10000) != 0)
  {
    goto LABEL_5;
  }

  v7 = v6;
  sub_26C0E0978(v2, &v13, &v15);
  if (v3)
  {
    v8 = v14;
    result = *&v13;
    *a1 = v13;
    *(a1 + 16) = v8;
    return result;
  }

  if (v16 >> 60 == 15 || (sub_26C0BB344(v15, v16), sub_26C0E0978(v2, &v13, &v15), v16 >> 60 == 15) || (sub_26C0BB344(v15, v16), sub_26C0E0978(v2, &v13, &v15), v10 = v16, v16 >> 60 == 15))
  {
LABEL_5:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
    v15 = 0;
    v16 = 0;
    LOBYTE(v17) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  else
  {
    v11 = v17;
    v12 = v15;
    *a2 = v7;
    *(a2 + 8) = v12;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = xmmword_26C14A540;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    result = -3.10503618e231;
    *(a2 + 64) = xmmword_26C14C1D0;
  }

  return result;
}

uint64_t sub_26C13099C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(v5 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    v10 = v5 >> 32;
    if (!v8)
    {
      v10 = v9;
    }
  }

  v11 = v10 - v7;
  if (__OFSUB__(v10, v7))
  {
    goto LABEL_46;
  }

  v65 = v3;
  if (v11 >= 0)
  {
    v12 = v10 - v7;
  }

  else
  {
    v12 = v11 + 31;
  }

  result = sub_26C0CE36C(0, (v12 >> 5) & ~(v12 >> 63), 0, MEMORY[0x277D84F90]);
  v66 = result;
  v14 = a1[1];
  v54 = *a1;
  v15 = a1[2];
  v16 = v15 + 2;
  if (__OFADD__(v15, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = v14 >> 62;
  v55 = BYTE6(v14);
  v56 = v14 >> 62;
  v22 = 0xF000000000000000;
  v23 = 0xF000000000000000;
  while (v21 > 1)
  {
    if (v21 == 2)
    {
      if (*(v54 + 24) < v16)
      {
        goto LABEL_33;
      }
    }

    else if (v16 > 0)
    {
      goto LABEL_33;
    }

LABEL_23:
    v25 = *a1;
    v26 = a1[1];
    v70 = *a1;
    v71 = v26;
    if (v16 < v15)
    {
      goto LABEL_45;
    }

    v60 = v23;
    v61 = v20;
    v62 = v22;
    v63 = v18;
    v67 = v15;
    v68 = v16;
    sub_26C0BBAA4(v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
    sub_26C0BE710();
    sub_26C0BE764();
    sub_26C14878C();
    sub_26C0BB9B0(v70, v71);
    a1[2] = v16;
    v28 = *a1;
    v27 = a1[1];
    sub_26C0BBAA4(*a1, v27);
    sub_26C0E09A8(a1, &v67, &v70);
    if (v65)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      v46 = v67;
      v47 = v68;
      v48 = v69;
      *a1 = v28;
      a1[1] = v27;
      a1[2] = v16;
      v70 = v46;
      v71 = v47;
      LOBYTE(v72) = v48;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v61, v60);
      sub_26C0BB344(v63, v62);

      *a2 = v46;
      *(a2 + 8) = v47;
      *(a2 + 16) = v48;
      goto LABEL_43;
    }

    v29 = v71;
    if (v71 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v70, v29);

      *a1 = v28;
      a1[1] = v27;
      a1[2] = v16;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v70 = 0;
      v71 = 0;
      LOBYTE(v72) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
LABEL_39:
      sub_26C0BB344(v61, v23);
      v50 = v62;
      v49 = v63;
      goto LABEL_42;
    }

    v59 = v71;
    sub_26C0BB9B0(v28, v27);
    v58 = v70;
    v30 = v72;
    v32 = *a1;
    v31 = a1[1];
    v33 = a1[2];
    sub_26C0BBAA4(*a1, v31);
    sub_26C0E09A8(a1, &v67, &v70);
    v34 = v71;
    if (v71 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v70, v34);

      *a1 = v32;
      a1[1] = v31;
      a1[2] = v33;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v70 = 0;
      v71 = 0;
      LOBYTE(v72) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v58, v59);
      goto LABEL_39;
    }

    v57 = v30;
    sub_26C0BB9B0(v32, v31);
    v35 = v70;
    v36 = v72;
    sub_26C0BB344(v61, v23);
    sub_26C0BB344(v63, v62);
    v38 = *a1;
    v37 = a1[1];
    v39 = a1[2];
    sub_26C0BBAA4(*a1, v37);
    sub_26C0E09A8(a1, &v67, &v70);
    v40 = v71;
    if (v71 >> 60 == 15)
    {
      sub_26C0BB9B0(*a1, a1[1]);
      sub_26C0BB344(v70, v40);

      *a1 = v38;
      a1[1] = v37;
      a1[2] = v39;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      v70 = 0;
      v71 = 0;
      LOBYTE(v72) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB344(v35, v34);
      v49 = v58;
      v50 = v59;
      goto LABEL_42;
    }

    v64 = v35;
    v65 = 0;
    sub_26C0BB9B0(v38, v37);
    v41 = v70;
    v42 = v72;
    sub_26C0BBAA4(v70, v40);
    v44 = *(v66 + 2);
    v43 = *(v66 + 3);
    if (v44 >= v43 >> 1)
    {
      v66 = sub_26C0CE36C((v43 > 1), v44 + 1, 1, v66);
    }

    result = sub_26C0BB344(v41, v40);
    *(v66 + 2) = v44 + 1;
    v45 = &v66[32 * v44];
    *(v45 + 16) = bswap32(0) >> 16;
    *(v45 + 5) = v41;
    *(v45 + 6) = v40;
    *(v45 + 7) = v42;
    v17 = v57;
    v18 = v58;
    v22 = v59;
    v15 = a1[2];
    v19 = v36;
    v23 = v34;
    v20 = v64;
    v16 = v15 + 2;
    LODWORD(v21) = v56;
    if (__OFADD__(v15, 2))
    {
      goto LABEL_44;
    }
  }

  v24 = v55;
  if (v21)
  {
    v24 = v54 >> 32;
  }

  if (v24 >= v16)
  {
    goto LABEL_23;
  }

LABEL_33:
  if (v22 >> 60 != 15 && v23 >> 60 != 15)
  {
    *a3 = v18;
    a3[1] = v22;
    a3[2] = v17;
    a3[3] = v20;
    a3[4] = v23;
    a3[5] = v19;
    a3[6] = v66;
    goto LABEL_43;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  v70 = 0;
  v71 = 0;
  LOBYTE(v72) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
  sub_26C0BB344(v20, v23);
  v49 = v18;
  v50 = v22;
LABEL_42:
  result = sub_26C0BB344(v49, v50);
LABEL_43:
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C131084(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v15 = *a1;
  v16 = *(a1 + 8);
  v13 = v6;
  v14 = *(a2 + 8);
  sub_26C0BBAA4(v15, v16);
  sub_26C0BBAA4(v6, v14);
  LOBYTE(v6) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v15 = v2;
  *&v16 = v3;
  *(&v16 + 1) = v5;
  v13 = v7;
  *&v14 = v8;
  *(&v14 + 1) = v10;
  sub_26C0BBAA4(v2, v3);
  sub_26C0BBAA4(v7, v8);
  v11 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v15, &v13);
  sub_26C0BB9B0(v13, v14);
  sub_26C0BB9B0(v15, v16);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return sub_26C0BE8D4(v4, v9);
}

BOOL sub_26C1311C4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v22 = *(a1 + 7);
  v23 = *(a1 + 4);
  v7 = *(a2 + 5);
  v24 = *(a2 + 4);
  v8 = *(a2 + 6);
  v20 = *(a2 + 7);
  v21 = *(a2 + 4);
  v9 = *(a2 + 1);
  v10 = *(a1 + 1);
  v28 = v10;
  v29 = *(a1 + 1);
  v26 = v9;
  v11 = v29;
  v27 = *(a2 + 1);
  v25 = v27;
  sub_26C0BBAA4(v10, v29);
  sub_26C0BBAA4(v9, v27);
  sub_26C0BBAA4(v10, v29);
  sub_26C0BBAA4(v9, v27);
  v12 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
  sub_26C0BB9B0(v26, v27);
  sub_26C0BB9B0(v28, v29);
  sub_26C0BB9B0(v9, v25);
  sub_26C0BB9B0(v10, v11);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    v28 = v4;
    *&v29 = v5;
    *(&v29 + 1) = v6;
    v13 = v24;
    if (v7 >> 60 != 15)
    {
      v26 = v24;
      *&v27 = v7;
      *(&v27 + 1) = v8;
      sub_26C0BB37C(v4, v5);
      sub_26C0BB37C(v24, v7);
      sub_26C0BB37C(v4, v5);
      v15 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
      sub_26C0BB9B0(v26, v27);
      sub_26C0BB9B0(v28, v29);
      sub_26C0BB344(v4, v5);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    sub_26C0BB37C(v4, v5);
    sub_26C0BB37C(v24, v7);
    sub_26C0BB37C(v4, v5);
    sub_26C0BB9B0(v4, v5);
LABEL_9:
    sub_26C0BB344(v4, v5);
    sub_26C0BB344(v13, v7);
    return 0;
  }

  sub_26C0BB37C(v4, v5);
  v13 = v24;
  sub_26C0BB37C(v24, v7);
  if (v7 >> 60 != 15)
  {
    goto LABEL_9;
  }

  sub_26C0BB344(v4, v5);
LABEL_11:
  if (v23 >> 60 == 15)
  {
    v16 = v22;
    sub_26C0BB37C(v22, v23);
    v18 = v20;
    v17 = v21;
    sub_26C0BB37C(v20, v21);
    if (v21 >> 60 == 15)
    {
      sub_26C0BB344(v22, v23);
      return 1;
    }

    goto LABEL_16;
  }

  v16 = v22;
  v28 = v22;
  v29 = v23;
  v18 = v20;
  v17 = v21;
  if (v21 >> 60 == 15)
  {
    sub_26C0BB37C(v22, v23);
    sub_26C0BB37C(v20, v21);
    sub_26C0BB37C(v22, v23);
    sub_26C0BB9B0(v22, v23);
LABEL_16:
    sub_26C0BB344(v16, v23);
    sub_26C0BB344(v18, v17);
    return 0;
  }

  v26 = v20;
  v27 = v21;
  sub_26C0BB37C(v22, v23);
  sub_26C0BB37C(v20, v21);
  sub_26C0BB37C(v22, v23);
  v19 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v28, &v26);
  sub_26C0BB9B0(v26, v27);
  sub_26C0BB9B0(v28, v29);
  sub_26C0BB344(v22, v23);
  return (v19 & 1) != 0;
}

uint64_t sub_26C131574(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = v2;
  v4 = *(a1 + 48);
  v30 = *(a1 + 64);
  v5 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v5;
  v6 = a2[3];
  v7 = a2[1];
  v34 = a2[2];
  v35 = v6;
  v8 = a2[3];
  v36 = a2[4];
  v9 = a2[1];
  v32 = *a2;
  v33 = v9;
  v38[2] = v28;
  v38[3] = v4;
  v38[4] = *(a1 + 64);
  v38[0] = v27[0];
  v38[1] = v3;
  v44 = a2[4];
  v43 = v8;
  v42 = v34;
  v40 = v32;
  v31 = *(a1 + 80);
  v37 = *(a2 + 80);
  v39 = *(a1 + 80);
  v45 = *(a2 + 80);
  v41 = v7;
  if (v31)
  {
    if (v37)
    {
      v20 = v27[0];
      v21 = v5;
      v22 = v28;
      v23 = v29;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v10 = a2[3];
      v17 = a2[2];
      v18 = v10;
      v19 = a2[4];
      v11 = a2[1];
      v15 = *a2;
      v16 = v11;
      sub_26C0FF0B0(&v32, v26);
      sub_26C0FF0B0(v27, v26);
      sub_26C0FF0B0(v27, v26);
      sub_26C0FF0B0(&v32, v26);
      v12 = sub_26C1311C4(&v20, &v15);
LABEL_7:
      v13 = v12;
      sub_26C13176C(v38);
      sub_26C1317D4(&v32);
      sub_26C1317D4(v27);
      return v13 & 1;
    }
  }

  else if ((v37 & 1) == 0)
  {
    v20 = v27[0];
    v21 = v5;
    v22 = v28;
    v23 = v29;
    v15 = v32;
    v16 = v33;
    v17 = v34;
    *&v18 = v35;
    sub_26C0FF0B0(&v32, v26);
    sub_26C0FF0B0(v27, v26);
    sub_26C0FF0B0(v27, v26);
    sub_26C0FF0B0(&v32, v26);
    v12 = sub_26C131084(&v20, &v15);
    goto LABEL_7;
  }

  sub_26C0FF0B0(v27, v26);
  sub_26C0FF0B0(&v32, v26);
  sub_26C13176C(v38);
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_26C13176C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AE40, &qword_26C14F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C131804(uint64_t result, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  v13 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = (a2 + 48); ; i += 2)
    {
      v9 = *(i - 1);
      LOWORD(v10) = *(i - 8);
      v11 = v9;
      v12 = *i;
      sub_26C0BBAA4(v9, v12);
      sub_26C1301BC(&v13, &v10, a3, a4);
      result = sub_26C0BB9B0(v11, v12);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
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

uint64_t sub_26C13197C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C1319C4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t type metadata accessor for TLSRecordProtector()
{
  result = qword_28047AE60;
  if (!qword_28047AE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C131AA4()
{
  sub_26C0ED1C8();
  if (v0 <= 0x3F)
  {
    sub_26C131B58();
    if (v1 <= 0x3F)
    {
      sub_26C131BBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26C131B58()
{
  if (!qword_28047AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_28047AE70);
    }
  }
}

void sub_26C131BBC()
{
  if (!qword_2815902F8)
  {
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, &qword_2815902F8);
    }
  }
}

uint64_t sub_26C131C0C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE48);
  __swift_project_value_buffer(v0, qword_28047AE48);
  return sub_26C148A8C();
}

double sub_26C131C8C(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v6 = a1 >> 24;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v11 = a2 >> 8;
  v14 = HIBYTE(a2);
  v15 = HIWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
  v12 = swift_allocObject();
  *&result = 12;
  *(v12 + 16) = xmmword_26C14F510;
  *(v12 + 32) = v3;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v2;
  *(v12 + 41) = v11;
  *(v12 + 42) = v15;
  *(v12 + 43) = v14;
  return result;
}

uint64_t sub_26C131D64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 12)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
  }

  else
  {
    v3 = a2;
    if (qword_28047A780 != -1)
    {
      swift_once();
    }

    v5 = sub_26C148A9C();
    __swift_project_value_buffer(v5, qword_28047AE48);

    v6 = sub_26C148A7C();
    v7 = sub_26C14900C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = *(a1 + 16);

      *(v8 + 4) = v9;

      _os_log_impl(&dword_26C0B5000, v6, v7, "tried to initialize a nonce with array length %ld, but expected 12", v8, 0xCu);
      MEMORY[0x26D69C3A0](v8, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *v3 = xmmword_26C14F520;
    *(v3 + 16) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
  }

  return v3;
}

uint64_t sub_26C131EF8(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = sub_26C131C8C(a2, a3);
  v5 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x26D69BEF0](v6, v3);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      sub_26C1491CC();
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_26C131F68(unint64_t a1, unsigned int a2)
{
  sub_26C1491AC();
  v4 = sub_26C131C8C(a1, a2);
  v6 = v5;
  v7 = *(v5 + 16);
  MEMORY[0x26D69BEF0](v7, v4);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      sub_26C1491CC();
      --v7;
    }

    while (v7);
  }

  return sub_26C14920C();
}

uint64_t sub_26C13200C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26C1491AC();
  v3 = sub_26C131C8C(v1, v2);
  v5 = v4;
  v6 = *(v4 + 16);
  MEMORY[0x26D69BEF0](v6, v3);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      sub_26C1491CC();
      --v6;
    }

    while (v6);
  }

  return sub_26C14920C();
}

uint64_t sub_26C132094(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  sub_26C131C8C(*a1, *(a1 + 8));
  v5 = v4;
  sub_26C131C8C(v2, v3);
  LOBYTE(v3) = sub_26C0BC82C(v5, v6);

  return v3 & 1;
}

unint64_t sub_26C132110()
{
  result = qword_28047AE78;
  if (!qword_28047AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE78);
  }

  return result;
}

uint64_t sub_26C132164(unint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = xmmword_26C14A1B0;
  v33 = 0;
  LOBYTE(v27) = 23;
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  v28 = &v27;
  v29 = (&v27 + 1);
  v4 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
  v6 = *v4;
  v5 = v4[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v27 = 771;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v7 = __swift_project_boxed_opaque_existential_1(&v28, v2);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(a1 >> 16))
  {
    v27 = bswap32(a1) >> 16;
    v30 = v2;
    v31 = v3;
    v28 = &v27;
    v29 = &v28;
    v10 = __swift_project_boxed_opaque_existential_1(&v28, v2);
    v12 = *v10;
    v11 = v10[1];
    sub_26C14888C();
    __swift_destroy_boxed_opaque_existential_1(&v28);
    if (qword_28047A780 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  swift_once();
LABEL_4:
  v13 = sub_26C148A9C();
  __swift_project_value_buffer(v13, qword_28047AE48);
  v14 = sub_26C148A7C();
  v15 = sub_26C148FFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_26C0E5DE8(0xD000000000000010, 0x800000026C15AA60, &v28);
    *(v16 + 12) = 2080;
    v18 = sub_26C0D52F0(771);
    v20 = sub_26C0E5DE8(v18, v19, &v28);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2048;
    *(v16 + 24) = a1;
    _os_log_impl(&dword_26C0B5000, v14, v15, "additional data: content type = %s, protocol version = %s, length = %ld", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v17, -1, -1);
    MEMORY[0x26D69C3A0](v16, -1, -1);
  }

  v21 = v32;
  v22 = *(&v32 + 1) >> 62;
  if ((*(&v32 + 1) >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_14;
    }

    v23 = *(v32 + 24);
  }

  else
  {
    if (!v22)
    {
      goto LABEL_14;
    }

    v23 = v32 >> 32;
  }

  if (v23 < 0)
  {
    __break(1u);
  }

LABEL_14:
  v24 = sub_26C14889C();
  sub_26C0BB9B0(v21, *(&v21 + 1));
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_26C132474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_26C148FCC();
  *(result + 16) = 12;
  *(result + 32) = 0;
  v8 = (result + 32);
  *(result + 36) = HIBYTE(a2);
  *(result + 37) = BYTE6(a2);
  *(result + 38) = BYTE5(a2);
  *(result + 39) = BYTE4(a2);
  *(result + 40) = BYTE3(a2);
  *(result + 41) = BYTE2(a2);
  *(result + 42) = BYTE1(a2);
  *(result + 43) = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (v9 > 0xC)
    {
      __break(1u);
      return result;
    }

    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      *v8++ ^= v11;
      --v9;
    }

    while (v9);
  }

  result = sub_26C131D64(result, &v13);
  if (v3)
  {
    v12 = v14;
    *a3 = v13;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t sub_26C132568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(type metadata accessor for TLSRecordProtector() + 40));
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    result = sub_26C148BCC();
    if (v7 == 4866)
    {
      if (result != 256)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        sub_26C14908C();
        MEMORY[0x26D69BC90](0xD00000000000003FLL, 0x800000026C15B050);
        sub_26C148BCC();
        v9 = sub_26C14911C();
        MEMORY[0x26D69BC90](v9);

        v10 = "LS_AES_256_GCM_SHA384: key has ";
        v11 = 0xD000000000000011;
LABEL_11:
        v14 = v10 | 0x8000000000000000;
LABEL_12:
        MEMORY[0x26D69BC90](v11, v14);
        *a3 = v16;
        *(a3 + 8) = v17;
        *(a3 + 16) = 1;
        goto LABEL_13;
      }
    }

    else if (result != 128)
    {
      result = sub_26C148BCC();
      if (result != 256)
      {
        v16 = 0;
        v17 = 0xE000000000000000;
        sub_26C14908C();
        MEMORY[0x26D69BC90](0xD00000000000002CLL, 0x800000026C15AFE0);
        sub_26C148BCC();
        v15 = sub_26C14911C();
        MEMORY[0x26D69BC90](v15);

        v10 = "c key size for AES. key has ";
        v11 = 0xD000000000000018;
        goto LABEL_11;
      }
    }

    if (*(a2 + 16) == 12)
    {
      return result;
    }

    sub_26C14908C();

    v16 = 0xD00000000000001DLL;
    v17 = 0x800000026C15B030;
    v12 = sub_26C14911C();
    MEMORY[0x26D69BC90](v12);

    MEMORY[0x26D69BC90](0x202C736574796220, 0xEE0020736465656ELL);
    v13 = sub_26C14911C();
    MEMORY[0x26D69BC90](v13);

    v11 = 46;
    v14 = 0xE100000000000000;
    goto LABEL_12;
  }

  *a3 = 0xD00000000000002ELL;
  *(a3 + 8) = 0x800000026C15AFB0;
  *(a3 + 16) = 1;
LABEL_13:
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

unint64_t sub_26C132868(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a1;
  v52 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - v9;
  v11 = sub_26C148BDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v43 - v17;
  v18 = type metadata accessor for TLSRecordProtector();
  v19 = *(v4 + *(v18 + 20));
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v18;
  sub_26C133364(v4, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26C1333D4(v10);
LABEL_4:
    *a4 = 0xD00000000000002CLL;
    *(a4 + 8) = 0x800000026C15AF00;
    *(a4 + 16) = 1;
    *&v55 = 0xD00000000000002CLL;
    *(&v55 + 1) = 0x800000026C15AF00;
    v56 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v19;
  }

  v51 = v16;
  v22 = v57;
  (*(v12 + 32))(v57, v10, v11);
  v23 = *(v54 + 16);
  if (v23 > 0x4000)
  {
    *a4 = 0xD000000000000030;
    *(a4 + 8) = 0x800000026C15AF70;
    *(a4 + 16) = 1;
    *&v55 = 0xD000000000000030;
    *(&v55 + 1) = 0x800000026C15AF70;
    v56 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v12 + 8))(v22, v11);
    return v19;
  }

  v24 = *(v20 + 32);
  v25 = *(v4 + v24);
  v26 = sub_26C132474(v19, v25, &v55);
  if (v5)
  {
    (*(v12 + 8))(v57, v11);
    v28 = v56;
    *a4 = v55;
    *(a4 + 16) = v28;
    return v19;
  }

  v29 = v23 + 1 + v53;
  v19 = v57;
  if (__OFADD__(v23 + 1, v53))
  {
    __break(1u);
  }

  else if (!__OFADD__(v29, 16))
  {
    if (v29 + 16 > 16640)
    {
      *a4 = 0xD000000000000036;
      *(a4 + 8) = 0x800000026C15AEC0;
      *(a4 + 16) = 1;
      *&v55 = 0xD000000000000036;
      *(&v55 + 1) = 0x800000026C15AEC0;
      v56 = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      (*(v12 + 8))(v19, v11);
      return v19;
    }

    v47 = v29 + 16;
    v48 = v27;
    v49 = v26;
    v50 = v12;
    v44 = v4;
    v45 = v25;
    if (qword_28047A780 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_15:
  v30 = sub_26C148A9C();
  __swift_project_value_buffer(v30, qword_28047AE48);

  v31 = sub_26C148A7C();
  v46 = sub_26C148FFC();
  v32 = os_log_type_enabled(v31, v46);
  v43 = v24;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *v33 = 134218496;
    *(v33 + 4) = v53;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v23;

    *(v33 + 22) = 2048;
    v34 = v47;
    *(v33 + 24) = v47;
    _os_log_impl(&dword_26C0B5000, v31, v46, "creating ciphertext record: paddingLength: %ld, pt len: %ld, ct len: %ld", v33, 0x20u);
    v35 = v33;
    v19 = v57;
    MEMORY[0x26D69C3A0](v35, -1, -1);
  }

  else
  {

    v34 = v47;
  }

  v36 = sub_26C132164(v34);
  v38 = v37;
  v39 = v51;
  (*(v50 + 16))(v51, v19, v11);
  v19 = sub_26C1349FC(v39, v49, v48, v36, v38, v54, v52, v53, &v55);
  v54 = v38;
  if (v19)
  {
    v53 = 0;
    v40 = *(v12 + 8);
    v40(v51, v11);
    v41 = v45;
    if (v45 == -1)
    {

      *a4 = 0xD00000000000001ELL;
      *(a4 + 8) = 0x800000026C15AF50;
      *(a4 + 16) = 1;
      *&v55 = 0xD00000000000001ELL;
      *(&v55 + 1) = 0x800000026C15AF50;
      v56 = 1;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      sub_26C0BB9B0(v36, v54);
      v40(v57, v11);
    }

    else
    {
      v40(v57, v11);
      sub_26C0BB9B0(v36, v54);
      *(v44 + v43) = v41 + 1;
    }
  }

  else
  {
    v19 = 0x800000026C15AF30;
    *&v55 = 0xD000000000000018;
    *(&v55 + 1) = 0x800000026C15AF30;
    v56 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v36, v54);
    v42 = *(v12 + 8);
    v42(v51, v11);
    v42(v57, v11);
    *a4 = 0xD000000000000018;
    *(a4 + 8) = 0x800000026C15AF30;
    *(a4 + 16) = 1;
  }

  return v19;
}

NSObject *sub_26C132EFC(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_26C148BDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TLSRecordProtector();
  v15 = *(&v2->isa + *(v14 + 28));
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v14;
  sub_26C133364(v2 + *(v14 + 24), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C1333D4(v9);
LABEL_4:
    *a2 = 0xD00000000000002DLL;
    *(a2 + 8) = 0x800000026C15AE70;
    *(a2 + 16) = 1;
    *&v41 = 0xD00000000000002DLL;
    *(&v41 + 1) = 0x800000026C15AE70;
    v42 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return v2;
  }

  v40 = a1;
  v17 = v43;
  (*(v11 + 32))(v43, v9, v10);
  v18 = *(v16 + 36);
  v19 = *(&v2->isa + v18);
  v20 = sub_26C132474(v15, v19, &v41);
  if (v3)
  {
    (*(v11 + 8))(v17, v10);
LABEL_7:
    v22 = v42;
    *a2 = v41;
    *(a2 + 16) = v22;
    return v2;
  }

  v23 = v40;
  v24 = *(v40 + 16);
  if (v24 > 0x4100)
  {
    *a2 = 0xD000000000000036;
    *(a2 + 8) = 0x800000026C15AEC0;
    *(a2 + 16) = 1;
    *&v41 = 0xD000000000000036;
    *(&v41 + 1) = 0x800000026C15AEC0;
    v42 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v43, v10);
    return v2;
  }

  v38 = v21;
  v36 = v2;
  v37 = v20;
  v39 = 0;
  v26 = v43;
  if (qword_28047A780 != -1)
  {
    swift_once();
  }

  v27 = sub_26C148A9C();
  __swift_project_value_buffer(v27, qword_28047AE48);
  v2 = sub_26C148A7C();
  v35 = sub_26C148FFC();
  if (os_log_type_enabled(v2, v35))
  {
    v34 = v24 - 17;
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v34;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v24;
    _os_log_impl(&dword_26C0B5000, v2, v35, "deprotecting ciphertext record: pt len: %ld, ct len: %ld", v28, 0x16u);
    v29 = v28;
    v26 = v43;
    MEMORY[0x26D69C3A0](v29, -1, -1);
  }

  v30 = v39;
  v31 = sub_26C133E1C(v26, v37, v38, 16, v23, &v41);
  v32 = v36;
  if (v30)
  {
    (*(v11 + 8))(v26, v10);
    goto LABEL_7;
  }

  v2 = v31;
  if (v19 == -1)
  {

    *a2 = 0xD00000000000001DLL;
    *(a2 + 8) = 0x800000026C15AEA0;
    *(a2 + 16) = 1;
    *&v41 = 0xD00000000000001DLL;
    *(&v41 + 1) = 0x800000026C15AEA0;
    v42 = 1;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v26, v10);
  }

  else
  {
    (*(v11 + 8))(v26, v10);
    *(&v32->isa + v18) = (v19 + 1);
  }

  return v2;
}

uint64_t sub_26C133364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C1333D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Nonce(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Nonce(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_26C1334BC(uint64_t a1, uint64_t a2)
{
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  v3 = *(a2 + 16);
  MEMORY[0x26D69BEF0](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return sub_26C14920C();
}

uint64_t sub_26C133590()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  result = MEMORY[0x26D69BEF0](*(v1 + 16));
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = (v1 + 32);
    do
    {
      v8 = *v7++;
      result = sub_26C1491CC();
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_26C133604()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  sub_26C1491CC();
  MEMORY[0x26D69BEF0](*(v1 + 16));
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = (v1 + 32);
    do
    {
      v7 = *v6++;
      sub_26C1491CC();
      --v5;
    }

    while (v5);
  }

  return sub_26C14920C();
}

uint64_t sub_26C1336A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_26C0BC82C(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26C1336E8()
{
  result = qword_28047AE80;
  if (!qword_28047AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AE80);
  }

  return result;
}

uint64_t sub_26C133778()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AE88);
  __swift_project_value_buffer(v0, qword_28047AE88);
  return sub_26C148A8C();
}

uint64_t (*sub_26C1337F8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  v79 = *MEMORY[0x277D85DE8];
  v71 = *(a2 - 8);
  v6 = *(v71 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v72 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v60[-v10];
  MEMORY[0x28223BE20](v9);
  v70 = &v60[-v11];
  v68 = *(v12 + 8);
  v69 = v12 + 8;
  LOBYTE(v74) = v68(v13, v12);
  v14 = &v74;
  v15 = MEMORY[0x277D838B0];
  v16 = MEMORY[0x277CC9C18];
  v77 = MEMORY[0x277D838B0];
  v78 = MEMORY[0x277CC9C18];
  v75 = &v74;
  v76 = (&v74 + 1);
  v17 = __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277D838B0]);
  v19 = *v17;
  v18 = v17[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v66 = *(a3 + 16);
  v67 = a3 + 16;
  v74 = v66(a2, a3);
  v77 = v15;
  v78 = v16;
  v75 = &v74;
  v76 = &v75;
  v20 = __swift_project_boxed_opaque_existential_1(&v75, v15);
  v22 = *v20;
  v21 = v20[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v23 = *(a3 + 24);
  v24 = *(v23(a2, a3) + 16);

  if (v24 >> 16)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  v74 = bswap32(v24) >> 16;
  v77 = v15;
  v78 = MEMORY[0x277CC9C18];
  v75 = &v74;
  v76 = &v75;
  v25 = __swift_project_boxed_opaque_existential_1(&v75, v15);
  v27 = *v25;
  v26 = v25[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v28 = v23(a2, a3);
  v29 = v23;
  if (*(v28 + 16))
  {
    v30 = v28;
    sub_26C14888C();
    v14 = *(v30 + 16);
  }

  else
  {
    v14 = 0;
  }

  v23 = v73;
  v63 = v29;
  v64 = a3;
  v65 = a3 + 24;

  if (qword_28047A788 != -1)
  {
    goto LABEL_14;
  }

LABEL_6:
  v31 = sub_26C148A9C();
  __swift_project_value_buffer(v31, qword_28047AE88);
  v32 = sub_26C148A7C();
  v33 = sub_26C148FFC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v14;
    _os_log_impl(&dword_26C0B5000, v32, v33, "wrote contentlength: %ld", v34, 0xCu);
    v35 = v34;
    v23 = v73;
    MEMORY[0x26D69C3A0](v35, -1, -1);
  }

  if (__OFADD__(v14, 5))
  {
    __break(1u);
  }

  v73 = (v14 + 5);
  v36 = v70;
  v37 = v71;
  v38 = *(v71 + 16);
  v38(v70, a1, a2);
  v38(v23, a1, a2);
  v39 = v72;
  v38(v72, a1, a2);
  v40 = sub_26C148A7C();
  v41 = sub_26C148FFC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75 = v62;
    *v42 = 136315906;
    v61 = v41;
    v43 = v64;
    v44 = v68(a2, v64);
    v45 = *(v37 + 8);
    v45(v36, a2);
    v46 = sub_26C0DA72C(v44);
    v48 = sub_26C0E5DE8(v46, v47, &v75);

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    v49 = v66(a2, v43);
    v45(v23, a2);
    v50 = sub_26C0D52F0(v49);
    v52 = sub_26C0E5DE8(v50, v51, &v75);

    *(v42 + 14) = v52;
    *(v42 + 22) = 2048;
    v53 = v72;
    v54 = *(v63(a2, v43) + 16);

    v45(v53, a2);
    *(v42 + 24) = v54;
    *(v42 + 32) = 2048;
    v55 = v73;
    *(v42 + 34) = v73;
    _os_log_impl(&dword_26C0B5000, v40, v61, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v42, 0x2Au);
    v56 = v62;
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v56, -1, -1);
    MEMORY[0x26D69C3A0](v42, -1, -1);
  }

  else
  {
    v57 = *(v37 + 8);
    v57(v39, a2);
    v57(v23, a2);
    v57(v36, a2);

    v55 = v73;
  }

  v58 = *MEMORY[0x277D85DE8];
  return v55;
}

unint64_t sub_26C133E1C(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, char *a5, __int128 *a6)
{
  v87 = a6;
  v85 = a5;
  *&v84 = a4;
  v82 = a1;
  v95 = *MEMORY[0x277D85DE8];
  v9 = sub_26C148C9C();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C148C5C();
  *&v86 = *(v13 - 8);
  v14 = *(v86 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v65 - v18;
  sub_26C131C8C(a2, a3);
  *&v92 = v20;
  v21 = &unk_26C14A530;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148C4C();
  if (v6)
  {

    v86 = xmmword_26C14A900;
    v92 = xmmword_26C14A900;
    LOBYTE(v93) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v22 = v87;
    *v87 = v86;
    *(v22 + 16) = 2;
    goto LABEL_9;
  }

  v80 = v12;
  v78 = v9;
  v81 = v19;
  v19 = v85;
  v23 = *(v85 + 2);
  v24 = v23 - v84;
  if (v23 <= v84)
  {
    v27 = v87;
    *v87 = xmmword_26C14F6F0;
    *(v27 + 16) = 2;
    v92 = xmmword_26C14F6F0;
    LOBYTE(v93) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    (*(v86 + 8))(v81, v13);
    goto LABEL_9;
  }

  v25 = v17;
  v26 = v81;
  if (__OFSUB__(v23, v84))
  {
    __break(1u);
    goto LABEL_90;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
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
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v79 = v13;
  if (v23 < v24)
  {
    goto LABEL_91;
  }

  (*(v86 + 16))(v25, v81, v79);
  *&v92 = v19;
  *(&v92 + 1) = v19 + 32;
  v93 = 0;
  v94 = (2 * v24) | 1;
  v88 = v19;
  v89 = v19 + 32;
  v90 = v24;
  v91 = (2 * v23) | 1;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEB8, &qword_26C14F710);
  sub_26C0FF1C4(&qword_28047AEC0, &qword_28047AEB8, &qword_26C14F710);
  sub_26C148C8C();
  v28 = sub_26C132164(v23);
  v30 = v29;
  *&v92 = v28;
  *(&v92 + 1) = v29;
  sub_26C0BE710();
  result = sub_26C148C2C();
  v26 = result;
  v9 = v32;
  v24 = v32 >> 62;
  v34 = v79;
  v21 = v78;
  v35 = v83;
  if ((v32 >> 62) <= 1)
  {
    if (!v24)
    {
      v66 = v28;
      v67 = v30;
      v36 = BYTE6(v32);
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v24 != 2)
  {
    v66 = v28;
    v67 = v30;
    v36 = 0;
    goto LABEL_25;
  }

  v38 = *(result + 16);
  v37 = *(result + 24);
  v39 = __OFSUB__(v37, v38);
  v40 = v37 - v38;
  if (v39)
  {
    __break(1u);
LABEL_17:
    LODWORD(v40) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
    }

    v40 = v40;
  }

  if (v40 > 16385)
  {
    v41 = v87;
    *v87 = xmmword_26C14F700;
    *(v41 + 16) = 2;
    v92 = xmmword_26C14F700;
    LOBYTE(v93) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    swift_bridgeObjectRelease_n();
    sub_26C0BB9B0(v28, v30);
    sub_26C0BB9B0(v26, v9);
    v42 = *(v35 + 8);
    v19 = (v35 + 8);
    v42(v80, v21);
    (*(v86 + 8))(v81, v34);
    goto LABEL_9;
  }

  v67 = v30;
  v66 = v28;
  if (v24 == 2)
  {
    v36 = *(result + 24);
  }

  else
  {
    v36 = result >> 32;
  }

LABEL_25:
  v12 = v36 - 1;
  if (__OFSUB__(v36, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v65[1] = 0;
  if (v12 < 1)
  {
    goto LABEL_50;
  }

  if (v24 == 3)
  {
    goto LABEL_107;
  }

  v87 = result;
  v82 = result >> 32;
  *&v84 = BYTE6(v32);
  v77 = result >> 8;
  v76 = result >> 16;
  v75 = result >> 24;
  v74 = HIDWORD(result);
  v73 = result >> 40;
  v72 = HIWORD(result);
  v71 = HIBYTE(result);
  v70 = v32 >> 8;
  v69 = v32 >> 16;
  v68 = v32 >> 24;
  v21 = HIDWORD(v32);
  v43 = v32 >> 40;
  while (1)
  {
    if (v24 == 1)
    {
      if (v12 < v87 || v12 >= v82)
      {
        goto LABEL_94;
      }

      result = sub_26C1487BC();
      if (result)
      {
        v45 = result;
        v46 = sub_26C1487EC();
        v47 = v12 - v46;
        if (__OFSUB__(v12, v46))
        {
          goto LABEL_96;
        }

LABEL_29:
        if (*(v45 + v47))
        {
          goto LABEL_49;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      return result;
    }

    if (v24)
    {
      break;
    }

    if (v12 >= v84)
    {
      goto LABEL_93;
    }

    LOBYTE(v92) = v26;
    BYTE1(v92) = v77;
    BYTE2(v92) = v76;
    BYTE3(v92) = v75;
    BYTE4(v92) = v74;
    BYTE5(v92) = v73;
    BYTE6(v92) = v72;
    BYTE7(v92) = v71;
    BYTE8(v92) = v9;
    BYTE9(v92) = v70;
    BYTE10(v92) = v69;
    BYTE11(v92) = v68;
    BYTE12(v92) = v21;
    BYTE13(v92) = v43;
    if (*(&v92 + v12))
    {
      goto LABEL_49;
    }

LABEL_30:
    if (v12-- <= 1)
    {
      goto LABEL_48;
    }
  }

  if (v12 < *(v26 + 16))
  {
    goto LABEL_92;
  }

  if (v12 >= *(v26 + 24))
  {
    goto LABEL_95;
  }

  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_106;
  }

  v45 = result;
  v48 = sub_26C1487EC();
  v47 = v12 - v48;
  if (!__OFSUB__(v12, v48))
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_48:
  v12 = 0;
LABEL_49:
  v21 = v78;
LABEL_50:
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v49 = *(v26 + 24);
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = BYTE6(v9);
    if (v24)
    {
      v49 = v26 >> 32;
    }
  }

  v39 = __OFSUB__(v49, 1);
  v50 = v49 - 1;
  if (v39)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v12 == v50)
  {
    goto LABEL_81;
  }

  if (qword_28047A790 != -1)
  {
    goto LABEL_100;
  }

  while (2)
  {
    v51 = sub_26C148A9C();
    __swift_project_value_buffer(v51, qword_28047AEA0);
    sub_26C0BBAA4(v26, v9);
    v52 = sub_26C148A7C();
    v53 = sub_26C148FFC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = v54;
      *v54 = 134218496;
      *(v54 + 4) = v12;
      *(v54 + 12) = 2048;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v56 = *(v26 + 24);
        }

        else
        {
          v56 = 0;
        }
      }

      else if (v24)
      {
        v56 = v26 >> 32;
      }

      else
      {
        v56 = BYTE6(v9);
      }

      v39 = __OFSUB__(v56, 1);
      v57 = v56 - 1;
      if (v39)
      {
        goto LABEL_102;
      }

      *(v54 + 14) = v57;
      *(v54 + 22) = 2048;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v58 = *(v26 + 24);
        }

        else
        {
          v58 = 0;
        }
      }

      else if (v24)
      {
        v58 = v26 >> 32;
      }

      else
      {
        v58 = BYTE6(v9);
      }

      v39 = __OFSUB__(v58, 1);
      v59 = v58 - 1;
      if (v39)
      {
        goto LABEL_103;
      }

      v39 = __OFSUB__(v59, v12);
      v60 = v59 - v12;
      if (v39)
      {
        goto LABEL_104;
      }

      *(v54 + 24) = v60;
      sub_26C0BB9B0(v26, v9);
      _os_log_impl(&dword_26C0B5000, v52, v53, "contentTypeIndex is: %ld. Last index is: %ld. Padding length = %ld", v55, 0x20u);
      MEMORY[0x26D69C3A0](v55, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v26, v9);
    }

LABEL_81:
    v61 = 0;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v61 = *(v26 + 16);
LABEL_86:
        sub_26C0BBAA4(v26, v9);
      }
    }

    else if (v24)
    {
      v61 = v26;
      goto LABEL_86;
    }

    if (v12 < v61)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      swift_once();
      continue;
    }

    break;
  }

  v62 = sub_26C14889C();
  v64 = v63;
  sub_26C0BB9B0(v26, v9);
  sub_26C0BBAA4(v62, v64);
  v19 = sub_26C148778(v62, v64);
  sub_26C1488AC();
  swift_bridgeObjectRelease_n();
  sub_26C0BB9B0(v66, v67);
  sub_26C0BB9B0(v26, v9);
  sub_26C0BB9B0(v62, v64);
  (*(v83 + 8))(v80, v21);
  (*(v86 + 8))(v81, v79);
LABEL_9:
  v33 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_26C13497C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AEA0);
  __swift_project_value_buffer(v0, qword_28047AEA0);
  return sub_26C148A8C();
}

uint64_t sub_26C1349FC(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, __int128 *a9)
{
  *&v57 = a8;
  v52 = a7;
  v53 = a6;
  *&v54 = a4;
  *(&v54 + 1) = a5;
  v55 = a1;
  v58 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEC8, &qword_26C14F718);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_26C148C9C();
  v51 = *(v16 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_26C148C5C();
  v56 = *(v20 - 8);
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C131C8C(a2, a3);
  *&v59 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  result = sub_26C148C4C();
  if (v9)
  {

    v57 = xmmword_26C14A900;
    v59 = xmmword_26C14A900;
    v26 = 2;
    v60 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v27 = v58;
    *v58 = v57;
    *(v27 + 16) = 2;
    return v26;
  }

  v49 = v19;
  v50 = v20;
  v28 = v57;
  if ((v57 & 0x8000000000000000) == 0)
  {
    v48 = v16;
    if (v57)
    {
      v29 = sub_26C148FCC();
      *(v29 + 16) = v28;
      bzero((v29 + 32), v28);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v30 = v53;
    v31 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C14A550;
    *(inited + 32) = v31;
    v65 = v30;

    sub_26C0C6548(inited);
    sub_26C0C6548(v29);
    v63 = v65;
    v33 = v56;
    v34 = v23;
    v35 = v15;
    v36 = v50;
    (*(v56 + 16))(v15, v34, v50);
    (*(v33 + 56))(v15, 0, 1, v36);
    v59 = v54;
    sub_26C0BE710();
    v37 = MEMORY[0x277CC9318];
    v38 = v49;
    sub_26C148C3C();
    v58 = 0;
    sub_26C1350AC(v35);

    v39 = sub_26C148C6C();
    v41 = v40;
    v42 = sub_26C148C7C();
    v44 = v43;
    v63 = v39;
    v64 = v41;
    v61 = v37;
    v62 = MEMORY[0x277CC9300];
    *&v59 = v42;
    *(&v59 + 1) = v43;
    v45 = __swift_project_boxed_opaque_existential_1(&v59, v37);
    v46 = *v45;
    v47 = v45[1];
    sub_26C0BBAA4(v39, v41);
    sub_26C0BBAA4(v42, v44);
    sub_26C135114(v46, v47);
    sub_26C0BB9B0(v42, v44);
    sub_26C0BB9B0(v39, v41);
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v26 = sub_26C148778(v63, v64);
    (*(v51 + 8))(v38, v48);
    (*(v33 + 8))(v34, v50);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C134F50(uint64_t a1)
{
  sub_26C1491AC();
  v2 = *(a1 + 16);
  MEMORY[0x26D69BEF0](v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_26C1491CC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C134FE0()
{
  v1 = *v0;
  result = MEMORY[0x26D69BEF0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = sub_26C1491CC();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26C135034()
{
  v1 = *v0;
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      sub_26C1491CC();
      --v2;
    }

    while (v2);
  }

  return sub_26C14920C();
}

uint64_t sub_26C1350AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AEC8, &qword_26C14F718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C135114(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_26C14888C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26C13524C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C13524C(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      return sub_26C14888C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26C1352F4()
{
  result = qword_28047AED0;
  if (!qword_28047AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AED0);
  }

  return result;
}

uint64_t sub_26C135348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 32))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26C1353A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_26C135404(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_26C1488AC();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_26C13548C()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AED8);
  __swift_project_value_buffer(v0, qword_28047AED8);
  return sub_26C148A8C();
}

uint64_t sub_26C13550C(uint64_t a1)
{
  result = sub_26C135678(0, &v14);
  if (v1)
  {
    v6 = v15;
    *a1 = v14;
    *(a1 + 16) = v6;
  }

  else if (v5 == -1)
  {
    return 0;
  }

  else if (v5)
  {
    v7 = result;
    v8 = v5;
    v9 = v4;
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047AED8);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "unexpectedly parsed ciphertext when expecting plaintext", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    sub_26C135AA8(v7, v9, v8);
    return 0;
  }

  else
  {
    return result & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_26C135678(char a1, uint64_t a2)
{
  v4 = v3;
  v33 = 0;
  v5 = v2[1];
  if (v5 >> 60 == 15)
  {
LABEL_2:
    if (qword_28047A798 != -1)
    {
LABEL_36:
      swift_once();
    }

    v6 = sub_26C148A9C();
    __swift_project_value_buffer(v6, qword_28047AED8);
    v7 = sub_26C148A7C();
    v8 = sub_26C148FFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_26C0B5000, v7, v8, "less than 5 bytes to parse, need at least 5 for any valid record, waiting for more data", v9, 2u);
      MEMORY[0x26D69C3A0](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    while (1)
    {
      v13 = *v2;
      v14 = v5 >> 62;
      if ((v5 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v15 = *(v13 + 24);
        }

        else
        {
          v15 = 0;
        }
      }

      else if (v14)
      {
        v15 = v13 >> 32;
      }

      else
      {
        v15 = BYTE6(v5);
      }

      v16 = v2[2];
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 < 5)
      {
        goto LABEL_2;
      }

      sub_26C0BBAA4(*v2, v5);
      sub_26C135ACC(v2, a1 & 1, v2, &v33, v28, &v30);
      if (v4)
      {
        sub_26C0BB9B0(*v2, v2[1]);
        v21 = v28[0];
        v10 = v28[1];
        v22 = v29;
        *v2 = v13;
        v2[1] = v5;
        v2[2] = v16;
        v30 = v21;
        v31 = v10;
        v32 = v22;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        *a2 = v21;
        *(a2 + 8) = v10;
        *(a2 + 16) = v22;
        return v10;
      }

      v4 = 0;
      v10 = v30;
      v19 = v31;
      v20 = v32;
      if (v32 == 255)
      {
        sub_26C0BB9B0(*v2, v2[1]);
        *v2 = v13;
        v2[1] = v5;
        v2[2] = v16;
      }

      else
      {
        sub_26C0BB9B0(v13, v5);
      }

      if (v33 != 1)
      {
        break;
      }

      sub_26C135AA8(v10, v19, v20);
      v5 = v2[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_2;
      }
    }

    result = *v2;
    v23 = v2[1];
    v24 = v2[2];
    if (v23 >> 60 == 15)
    {
LABEL_34:
      sub_26C0BB344(result, v23);
      *v2 = xmmword_26C14A1B0;
      v2[2] = 0;
      return v10;
    }

    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
      }
    }

    else if (v25)
    {
      v26 = result >> 32;
    }

    else
    {
      v26 = BYTE6(v23);
    }

    if (!__OFSUB__(v26, v24))
    {
      if (v26 != v24)
      {
        return v10;
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C13594C(uint64_t a1)
{
  result = sub_26C135678(1, &v14);
  if (v1)
  {
    v6 = v15;
    *a1 = v14;
    *(a1 + 16) = v6;
  }

  else if (v5 == -1)
  {
    return 0;
  }

  else if ((v5 & 1) == 0)
  {
    v7 = v4;
    v8 = v5;
    v9 = result;
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v10 = sub_26C148A9C();
    __swift_project_value_buffer(v10, qword_28047AED8);
    v11 = sub_26C148A7C();
    v12 = sub_26C14900C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C0B5000, v11, v12, "unexpectedly parsed plaintext when expecting ciphertext", v13, 2u);
      MEMORY[0x26D69C3A0](v13, -1, -1);
    }

    sub_26C135AA8(v9, v7, v8);
    return 0;
  }

  return result;
}

uint64_t sub_26C135AA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_26C135AC0();
  }

  return result;
}

void sub_26C135ACC(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a2;
  v11 = sub_26C1368E8();
  if ((v11 & 0x100) != 0 || (v12 = v11, v13 = sub_26C1365D4(), (v13 & 0x10000) != 0))
  {
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v20 = sub_26C148A9C();
    __swift_project_value_buffer(v20, qword_28047AED8);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "failed to parse contentType and protocolVersion";
    goto LABEL_13;
  }

  v14 = v13;
  if (v12 == 23 && (v99 & 1) == 0)
  {
    if (qword_28047A798 != -1)
    {
      swift_once();
    }

    v15 = sub_26C148A9C();
    __swift_project_value_buffer(v15, qword_28047AED8);
    v16 = sub_26C148A7C();
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "record protection not enabled and received record with content type application data";
    goto LABEL_13;
  }

  if (qword_28047A798 != -1)
  {
    swift_once();
  }

  v22 = sub_26C148A9C();
  __swift_project_value_buffer(v22, qword_28047AED8);
  v23 = sub_26C148A7C();
  v24 = sub_26C148FEC();
  v95 = a3;
  v96 = a6;
  v94 = a4;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v97 = v26;
    *v25 = 136315138;
    v27 = sub_26C0D52F0(bswap32(v14) >> 16);
    v29 = sub_26C0E5DE8(v27, v28, &v97);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_26C0B5000, v23, v24, "protocolVersion is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D69C3A0](v26, -1, -1);
    MEMORY[0x26D69C3A0](v25, -1, -1);
  }

  v30 = sub_26C148A7C();
  v31 = sub_26C148FEC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v97 = v33;
    *v32 = 136315138;
    v34 = sub_26C0DA72C(v12);
    v36 = sub_26C0E5DE8(v34, v35, &v97);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_26C0B5000, v30, v31, "content type is %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x26D69C3A0](v33, -1, -1);
    MEMORY[0x26D69C3A0](v32, -1, -1);
  }

  LODWORD(v37) = sub_26C1365D4();
  v16 = sub_26C148A7C();
  if ((v37 & 0x10000) != 0)
  {
    v17 = sub_26C14900C();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_14;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "unable to read content length";
LABEL_13:
    _os_log_impl(&dword_26C0B5000, v16, v17, v19, v18, 2u);
    MEMORY[0x26D69C3A0](v18, -1, -1);
LABEL_14:

    v21 = xmmword_26C14F7D0;
LABEL_15:
    *a5 = v21;
    *(a5 + 16) = 2;
    v97 = v21;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return;
  }

  v38 = v37;
  v39 = sub_26C148FEC();
  if (os_log_type_enabled(v16, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 33554688;
    *(v40 + 4) = v37;
    _os_log_impl(&dword_26C0B5000, v16, v39, "content length is: %hu", v40, 6u);
    MEMORY[0x26D69C3A0](v40, -1, -1);
  }

  if ((v99 & 1) == 0)
  {
    if (v37 <= 0x4000u)
    {
      goto LABEL_41;
    }

    v41 = 0x4000;
LABEL_32:
    v42 = sub_26C148A7C();
    v43 = sub_26C14900C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v97 = v45;
      *v44 = 33555202;
      *(v44 + 4) = v38;
      *(v44 + 6) = 512;
      *(v44 + 8) = v41;
      *(v44 + 10) = 2080;
      if (v99)
      {
        v46 = 0x6574726568706963;
      }

      else
      {
        v46 = 0x7865746E69616C70;
      }

      if (v99)
      {
        v47 = 0xEA00000000007478;
      }

      else
      {
        v47 = 0xE900000000000074;
      }

      v48 = sub_26C0E5DE8(v46, v47, &v97);

      *(v44 + 12) = v48;
      _os_log_impl(&dword_26C0B5000, v42, v43, "contentLength (%hu bytes) exceeds maximum length of %hu bytes for %s messages", v44, 0x14u);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x26D69C3A0](v45, -1, -1);
      MEMORY[0x26D69C3A0](v44, -1, -1);
    }

    v21 = xmmword_26C14F700;
    goto LABEL_15;
  }

  v41 = 16640;
  if (v37 > 0x4100u)
  {
    goto LABEL_32;
  }

LABEL_41:
  v37 = v37;
  sub_26C0DE248(v37, &v97);
  v49 = *(&v97 + 1);
  if (*(&v97 + 1) >> 60 == 15)
  {
    v50 = sub_26C148A7C();
    v51 = sub_26C148FEC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v37;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26C0B5000, v50, v51, "unable to read full content, waiting for more data", v53, 2u);
      v54 = v53;
      v37 = v52;
      MEMORY[0x26D69C3A0](v54, -1, -1);
    }

    v55 = *a1;
    v56 = a1[1];
    v57 = a1[2];
    v58 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v58 == 2)
      {
        v59 = *(v55 + 24);
      }

      else
      {
        v59 = 0;
      }
    }

    else if (v58)
    {
      v59 = v55 >> 32;
    }

    else
    {
      v59 = BYTE6(v56);
    }

    v67 = __OFSUB__(v59, v57);
    v68 = v59 - v57;
    if (v67)
    {
      __break(1u);
    }

    else
    {
      v67 = __OFSUB__(v37, v68);
      v69 = v37 - v68;
      if (!v67)
      {
        *(v95 + 24) = v69;
        *v96 = 0;
        *(v96 + 8) = 0;
        *(v96 + 16) = -1;
        return;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v60 = v97;
  v61 = v98;
  *(v95 + 24) = 5;
  if (v12 == 20)
  {
    v62 = v60;
    if (v38 == 1)
    {
      v63 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v64 = *(v60 + 24);
        }

        else
        {
          v64 = 0;
        }
      }

      else if (v63)
      {
        v64 = v60 >> 32;
      }

      else
      {
        v64 = BYTE6(v49);
      }

      if (v64 < v61)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v71 = sub_26C14889C();
      v73 = v72;
      v74 = sub_26C135404(v71, v72);
      sub_26C0BB9B0(v71, v73);
      if ((v74 & 0x1FF) == 1)
      {
        v75 = sub_26C148A7C();
        v76 = sub_26C148FEC();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_26C0B5000, v75, v76, "got a change cipher spec message with value 0x01, ignoring", v77, 2u);
          MEMORY[0x26D69C3A0](v77, -1, -1);
        }

        *v94 = 1;
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            v78 = *(v62 + 24);
          }

          else
          {
            v78 = 0;
          }
        }

        else if (v63)
        {
          v78 = v62 >> 32;
        }

        else
        {
          v78 = BYTE6(v49);
        }

        if (v78 >= v61)
        {
          v88 = sub_26C14889C();
          v90 = sub_26C148778(v88, v89);
          sub_26C0BB344(v62, v49);
          *v96 = 197396;
          *(v96 + 8) = v90;
          *(v96 + 16) = 0;
          return;
        }

        goto LABEL_114;
      }
    }

    v79 = sub_26C148A7C();
    v80 = sub_26C148FFC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_26C0B5000, v79, v80, "received unexpected change cipher spec message", v81, 2u);
      MEMORY[0x26D69C3A0](v81, -1, -1);
    }

    *a5 = xmmword_26C14A560;
    *(a5 + 16) = 2;
    v97 = xmmword_26C14A560;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v82 = v62;
LABEL_90:
    sub_26C0BB344(v82, v49);
    return;
  }

  *v94 = 0;
  v65 = v49 >> 62;
  if ((v99 & 1) == 0)
  {
    if (v65 > 1)
    {
      if (v65 == 2)
      {
        v70 = *(v60 + 24);
      }

      else
      {
        v70 = 0;
      }
    }

    else if (v65)
    {
      v70 = v60 >> 32;
    }

    else
    {
      v70 = BYTE6(v49);
    }

    if (v70 >= v61)
    {
      v85 = sub_26C14889C();
      v87 = sub_26C148778(v85, v86);
      sub_26C0BB344(v60, v49);
      *v96 = v12 | 0x30300;
      *(v96 + 8) = v87;
      *(v96 + 16) = 0;
      return;
    }

    goto LABEL_113;
  }

  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v66 = *(v60 + 24);
    }

    else
    {
      v66 = 0;
    }
  }

  else if (v65)
  {
    v66 = v60 >> 32;
  }

  else
  {
    v66 = BYTE6(v49);
  }

  v67 = __OFSUB__(v66, v61);
  v83 = v66 - v61;
  if (v67)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v83 < 16)
  {
    *a5 = xmmword_26C14F6F0;
    *(a5 + 16) = 2;
    v97 = xmmword_26C14F6F0;
    LOBYTE(v98) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    v82 = v60;
    goto LABEL_90;
  }

  if (v65 > 1)
  {
    if (v65 == 2)
    {
      v84 = *(v60 + 24);
    }

    else
    {
      v84 = 0;
    }
  }

  else if (v65)
  {
    v84 = v60 >> 32;
  }

  else
  {
    v84 = BYTE6(v49);
  }

  if (v84 >= v61)
  {
    v91 = sub_26C14889C();
    v93 = sub_26C148778(v91, v92);
    sub_26C0BB344(v60, v49);
    *v96 = v93;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
    return;
  }

LABEL_115:
  __break(1u);
}

uint64_t sub_26C1365D4()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40);
  sub_26C14878C();
  sub_26C0BB9B0(v11, v12);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v8 | (v7 << 16);
}

unint64_t sub_26C13675C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40);
  sub_26C14878C();
  sub_26C0BB9B0(v11, v12);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v8 | (v7 << 32);
}

uint64_t sub_26C1368E8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40);
  sub_26C14878C();
  sub_26C0BB9B0(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return (v7 << 8);
}

unint64_t sub_26C136A68()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26C0BBAA4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A7C8, &qword_26C149F40);
  sub_26C0BE710();
  sub_26C0FF1C4(&qword_28047A7D8, &qword_28047A7C8, &qword_26C149F40);
  sub_26C14878C();
  sub_26C0BB9B0(v9, v10);
  result = bswap64(0);
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C136BE8@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
{
  v11 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a3 >> 16;
    if (!(a3 >> 16))
    {
      v4 = v11;
      v5 = *(v11 + 2);
      v12 = *(v11 + 3);
      v13 = v12 >> 1;
      v6 = v5 + 1;
      if (v12 >> 1 > v5)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v4 = sub_26C0CDAAC((v12 > 1), v6, 1, v4);
  v12 = *(v4 + 3);
  v13 = v12 >> 1;
LABEL_4:
  *(v4 + 2) = v6;
  v4[v5 + 32] = BYTE1(a3);
  v14 = v5 + 2;
  if (v13 < (v5 + 2))
  {
    v4 = sub_26C0CDAAC((v12 > 1), v5 + 2, 1, v4);
  }

  *(v4 + 2) = v14;
  v4[v6 + 32] = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = sub_26C148F6C();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v15 = HIBYTE(a2) & 0xF;
LABEL_12:
  LODWORD(v5) = v15 + 6;
  if ((v5 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a4 = *(v4 + 2);
  v14 = *(v4 + 3);
  v6 = a4 + 1;

  if (a4 >= v14 >> 1)
  {
LABEL_21:
    v4 = sub_26C0CDAAC((v14 > 1), v6, 1, v4);
  }

  *(v4 + 2) = v6;
  v4[a4 + 32] = v5;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v16 = sub_26C0C6040(a1, a2);
  MEMORY[0x28223BE20](v16);
  sub_26C148B5C();
  sub_26C13F1B8(&qword_28047AF28, MEMORY[0x277CC5290]);
  sub_26C14880C();
  sub_26C148E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A838, &qword_26C14A528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_28047A848, MEMORY[0x277CC5540]);
  sub_26C0FF1C4(&qword_28047AF30, &qword_28047A838, &qword_26C14A528);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CDC();
}

uint64_t sub_26C136F6C@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X8>)
{
  v13 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = a4 >> 16;
    if (!(a4 >> 16))
    {
      v5 = v13;
      v6 = *(v13 + 2);
      v14 = *(v13 + 3);
      v15 = v14 >> 1;
      v7 = v6 + 1;
      if (v14 >> 1 > v6)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  v5 = sub_26C0CDAAC((v14 > 1), v7, 1, v5);
  v14 = *(v5 + 3);
  v15 = v14 >> 1;
LABEL_4:
  *(v5 + 2) = v7;
  v5[v6 + 32] = BYTE1(a4);
  v16 = v6 + 2;
  if (v15 < (v6 + 2))
  {
    v5 = sub_26C0CDAAC((v14 > 1), v6 + 2, 1, v5);
  }

  *(v5 + 2) = v16;
  v5[v7 + 32] = a4;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v17 = sub_26C148F6C();
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v17 = HIBYTE(a2) & 0xF;
LABEL_12:
  LOBYTE(v6) = v17 + 6;
  if (((v17 + 6) & 0x100) == 0)
  {
    v16 = *(v5 + 2);
    a5 = *(v5 + 3);
    v7 = v16 + 1;

    if (v16 < a5 >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v5 = sub_26C0CDAAC((a5 > 1), v7, 1, v5);
LABEL_14:
  *(v5 + 2) = v7;
  v5[v16 + 32] = v6;
  v23 = v5;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v18 = &v23;
  sub_26C0C6040(a1, a2);
  v19 = *(a3 + 16);
  if (v19 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v18 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_16;
    }
  }

  v18 = sub_26C0CDAAC(0, *(v18 + 2) + 1, 1, v18);
LABEL_16:
  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_26C0CDAAC((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v18[v21 + 32] = v19;
  v23 = v18;
  sub_26C0C62A0(a3 + 32, (a3 + 32 + v19));
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CDC();
}

uint64_t sub_26C1372CC@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
{
  v11 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a3 >> 16;
    if (!(a3 >> 16))
    {
      v4 = v11;
      v5 = *(v11 + 2);
      v12 = *(v11 + 3);
      v13 = v12 >> 1;
      v6 = v5 + 1;
      if (v12 >> 1 > v5)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v4 = sub_26C0CDAAC((v12 > 1), v6, 1, v4);
  v12 = *(v4 + 3);
  v13 = v12 >> 1;
LABEL_4:
  *(v4 + 2) = v6;
  v4[v5 + 32] = BYTE1(a3);
  v14 = v5 + 2;
  if (v13 < (v5 + 2))
  {
    v4 = sub_26C0CDAAC((v12 > 1), v5 + 2, 1, v4);
  }

  *(v4 + 2) = v14;
  v4[v6 + 32] = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = sub_26C148F6C();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v15 = HIBYTE(a2) & 0xF;
LABEL_12:
  LODWORD(v5) = v15 + 6;
  if ((v5 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a4 = *(v4 + 2);
  v14 = *(v4 + 3);
  v6 = a4 + 1;

  if (a4 >= v14 >> 1)
  {
LABEL_21:
    v4 = sub_26C0CDAAC((v14 > 1), v6, 1, v4);
  }

  *(v4 + 2) = v6;
  v4[a4 + 32] = v5;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v16 = sub_26C0C6040(a1, a2);
  MEMORY[0x28223BE20](v16);
  sub_26C148B6C();
  sub_26C13F1B8(&qword_28047A9D0, MEMORY[0x277CC52C8]);
  sub_26C14880C();
  sub_26C148E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AB18, &unk_26C14C110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C0FF1C4(&qword_28047AB40, &qword_28047AB18, &unk_26C14C110);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CDC();
}

uint64_t sub_26C137650@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X4>, unint64_t a4@<X8>)
{
  v11 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a3 >> 16;
    if (!(a3 >> 16))
    {
      v4 = v11;
      v5 = *(v11 + 2);
      v12 = *(v11 + 3);
      v13 = v12 >> 1;
      v6 = v5 + 1;
      if (v12 >> 1 > v5)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v4 = sub_26C0CDAAC((v12 > 1), v6, 1, v4);
  v12 = *(v4 + 3);
  v13 = v12 >> 1;
LABEL_4:
  *(v4 + 2) = v6;
  v4[v5 + 32] = BYTE1(a3);
  v14 = v5 + 2;
  if (v13 < (v5 + 2))
  {
    v4 = sub_26C0CDAAC((v12 > 1), v5 + 2, 1, v4);
  }

  *(v4 + 2) = v14;
  v4[v6 + 32] = a3;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = sub_26C148F6C();
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v15 = HIBYTE(a2) & 0xF;
LABEL_12:
  LODWORD(v5) = v15 + 6;
  if ((v5 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = *(v4 + 2);
  a4 = *(v4 + 3);
  v6 = v14 + 1;

  if (v14 >= a4 >> 1)
  {
LABEL_21:
    v4 = sub_26C0CDAAC((a4 > 1), v6, 1, v4);
  }

  *(v4 + 2) = v6;
  v4[v14 + 32] = v5;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  v16 = sub_26C0C6040(a1, a2);
  MEMORY[0x28223BE20](v16);
  sub_26C148B6C();
  sub_26C13F1B8(&qword_28047A9D0, MEMORY[0x277CC52C8]);
  sub_26C14880C();
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CDC();
}

uint64_t sub_26C1379CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v16 = sub_26C0CDAAC(0, 514, 0, MEMORY[0x277D84F90]);
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = a6 >> 16;
    if (!(a6 >> 16))
    {
      v7 = v16;
      a7 = *(v16 + 2);
      v17 = *(v16 + 3);
      v18 = v17 >> 1;
      v8 = a7 + 1;
      if (v17 >> 1 > a7)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v7 = sub_26C0CDAAC((v17 > 1), v8, 1, v7);
  v17 = *(v7 + 3);
  v18 = v17 >> 1;
LABEL_4:
  *(v7 + 2) = v8;
  v7[a7 + 32] = BYTE1(a6);
  v19 = a7 + 2;
  if (v18 < (a7 + 2))
  {
    v7 = sub_26C0CDAAC((v17 > 1), a7 + 2, 1, v7);
  }

  *(v7 + 2) = v19;
  v7[v8 + 32] = a6;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v20 = sub_26C148F6C();
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      goto LABEL_11;
    }

    v20 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v20 = HIBYTE(a3) & 0xF;
LABEL_12:
  LODWORD(a7) = v20 + 6;
  if ((a7 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + 2);
  a1 = *(v7 + 3);
  v8 = v19 + 1;

  if (v19 >= a1 >> 1)
  {
LABEL_21:
    v7 = sub_26C0CDAAC((a1 > 1), v8, 1, v7);
  }

  *(v7 + 2) = v8;
  v7[v19 + 32] = a7;
  v22 = v7;
  sub_26C0C6040(0x203331736C74, 0xE600000000000000);
  sub_26C0C6040(a2, a3);
  sub_26C13EAE4(a4, a5, &v22);
  sub_26C148E9C();
  sub_26C148BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
  sub_26C13F1B8(&qword_281590328, MEMORY[0x277CC5550]);
  sub_26C13F1B8(&qword_28047AC00, MEMORY[0x277CC5330]);
  sub_26C0FF1C4(&qword_28047A850, &qword_28047A840, &unk_26C14A530);
  sub_26C148CDC();
}

unint64_t sub_26C137CB8(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  LOBYTE(v27) = 23;
  v2 = MEMORY[0x277D838B0];
  v3 = MEMORY[0x277CC9C18];
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  v28 = &v27;
  v29 = (&v27 + 1);
  v4 = __swift_project_boxed_opaque_existential_1(&v28, MEMORY[0x277D838B0]);
  v6 = *v4;
  v5 = v4[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v27 = 771;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v7 = __swift_project_boxed_opaque_existential_1(&v28, v2);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  v10 = *(a1 + 16);
  if (v10 >> 16)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v27 = bswap32(v10) >> 16;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v11 = __swift_project_boxed_opaque_existential_1(&v28, v2);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(&v28);
  if (v10)
  {
    sub_26C14888C();
  }

  if (qword_28047A788 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v14 = sub_26C148A9C();
  __swift_project_value_buffer(v14, qword_28047AE88);
  v15 = sub_26C148A7C();
  v16 = sub_26C148FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v10;
    _os_log_impl(&dword_26C0B5000, v15, v16, "wrote contentlength: %ld", v17, 0xCu);
    MEMORY[0x26D69C3A0](v17, -1, -1);
  }

  swift_bridgeObjectRetain_n();
  v18 = sub_26C148A7C();
  v19 = sub_26C148FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315906;
    *(v20 + 4) = sub_26C0E5DE8(0xD000000000000010, 0x800000026C15AA60, &v28);
    *(v20 + 12) = 2080;
    v22 = sub_26C0D52F0(771);
    v24 = sub_26C0E5DE8(v22, v23, &v28);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;

    *(v20 + 24) = v10;

    *(v20 + 32) = 2048;
    *(v20 + 34) = v10 + 5;
    _os_log_impl(&dword_26C0B5000, v18, v19, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v21, -1, -1);
    MEMORY[0x26D69C3A0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v25 = *MEMORY[0x277D85DE8];
  return v10 + 5;
}

uint64_t sub_26C138004()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AEF0);
  __swift_project_value_buffer(v0, qword_28047AEF0);
  return sub_26C148A8C();
}

uint64_t TLSRecordHandler.pendingApplicationDataBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TLSRecordHandler()
{
  result = qword_28047AF08;
  if (!qword_28047AF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TLSRecordHandler.receivedApplicationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TLSRecordHandler() + 44);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_26C0BBAA4(v4, v5);
}

__n128 TLSRecordHandler.receivedApplicationData.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler() + 44));
  sub_26C0BB9B0(*v3, v3[1]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t TLSRecordHandler.outgoingBytesCount.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

unint64_t TLSRecordHandler.bytesToReadCount.getter()
{
  result = *(v0 + *(type metadata accessor for TLSRecordHandler() + 20) + 24);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TLSRecordHandler.getNegotiatedCiphersuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v15 = type metadata accessor for ServerHandshakeStateMachine;
    v16 = v5;
  }

  else
  {
    sub_26C13F0CC(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v15 = type metadata accessor for HandshakeStateMachine;
    v16 = v9;
  }

  sub_26C13F06C(v16, v15);
  if ((v14 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t TLSRecordHandler.getNegotiatedPAKE.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26C13F134(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
    v15 = type metadata accessor for ServerHandshakeStateMachine;
    v16 = v5;
  }

  else
  {
    sub_26C13F0CC(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedPAKE.getter();
    v15 = type metadata accessor for HandshakeStateMachine;
    v16 = v9;
  }

  sub_26C13F06C(v16, v15);
  return v14 & 0x1FFFF;
}

uint64_t TLSRecordHandler.getNegotiatedEPSK.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v6 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v8 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeStateMachine(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TLSHandshakeStateMachine(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v25, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v25, v5, type metadata accessor for ServerHandshakeStateMachine);
    v26 = ServerHandshakeStateMachine.negotiatedEPSK.getter();
    v27 = type metadata accessor for ServerHandshakeStateMachine;
    v28 = v5;
LABEL_13:
    sub_26C13F06C(v28, v27);
    return v26 & 1;
  }

  sub_26C13F0CC(v25, v21, type metadata accessor for HandshakeStateMachine);
  sub_26C13F134(&v21[*(v18 + 24)], v17, type metadata accessor for HandshakeState);
  sub_26C13F06C(v21, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_26C13F0CC(v17, v13, type metadata accessor for HandshakeState.ServerHelloState);
      v26 = v13[*(v10 + 36)];
      v27 = type metadata accessor for HandshakeState.ServerHelloState;
      v28 = v13;
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v30 = v35;
      sub_26C13F0CC(v17, v35, type metadata accessor for HandshakeState.ReadyState);
      v26 = *(v30 + *(ready + 52));
      v31 = type metadata accessor for HandshakeState.ReadyState;
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v30 = v33;
    sub_26C13F0CC(v17, v33, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v26 = *(v30 + *(v34 + 40));
    v31 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_12:
    v27 = v31;
    v28 = v30;
    goto LABEL_13;
  }

  sub_26C13F06C(v17, type metadata accessor for HandshakeState);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_26C138B38(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TLSHandshakeStateMachine(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v5, v17, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26C13F0CC(v17, v9, type metadata accessor for ServerHandshakeStateMachine);
    v19 = a2(v18);
    v20 = type metadata accessor for ServerHandshakeStateMachine;
    v21 = v9;
  }

  else
  {
    v22 = sub_26C13F0CC(v17, v13, type metadata accessor for HandshakeStateMachine);
    v19 = a1(v22);
    v20 = type metadata accessor for HandshakeStateMachine;
    v21 = v13;
  }

  sub_26C13F06C(v21, v20);
  return v19 & 1;
}

uint64_t TLSRecordHandler.getNegotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C13F134(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C13F0CC(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v16 = v15;
    v17 = type metadata accessor for ServerHandshakeStateMachine;
    v18 = v5;
  }

  else
  {
    sub_26C13F0CC(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedGroup.getter();
    v16 = v19;
    v17 = type metadata accessor for HandshakeStateMachine;
    v18 = v9;
  }

  sub_26C13F06C(v18, v17);
  if (v16)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t TLSRecordHandler.writeOutput()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 48));
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    if (v6 == result)
    {
      return 0;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v5)
    {
      v7 = v2 >> 32;
    }

    else
    {
      v7 = BYTE6(v3);
    }

    if (v7 >= result)
    {
      v8 = sub_26C14889C();
      sub_26C0BB9B0(*v1, v1[1]);
      result = v8;
      *v1 = xmmword_26C14A1B0;
      v1[2] = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TLSRecordHandler.getOutputData(_:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler() + 48));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = sub_26C14889C();
      sub_26C0BB9B0(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_26C14A1B0;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = sub_26C0DEDBC(a1);
  if (result)
  {
    v13 = sub_26C11EF18(result);

    return v13;
  }

  return result;
}

uint64_t TLSRecordHandler.getApplicationData(_:)(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler() + 44));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = sub_26C14889C();
      sub_26C0BB9B0(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_26C14A1B0;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = sub_26C0DEDBC(a1);
  if (result)
  {
    v13 = sub_26C11EF18(result);

    return v13;
  }

  return result;
}

Swift::Int __swiftcall TLSRecordHandler.getApplicationDataLength()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 44));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}