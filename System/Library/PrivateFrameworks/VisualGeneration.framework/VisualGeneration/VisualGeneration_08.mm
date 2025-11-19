uint64_t sub_19A385900()
{
  v0 = sub_19A572EAC();
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  sub_19A572EAC();
  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_19A3859C0(char *a1, unint64_t a2, void *a3)
{
  v9 = *(v4 + 16);
  sub_19A386F84(v9, v83);
  if (v84)
  {
    v80 = a1;
    v81 = a2;
    v10 = 1;
LABEL_12:
    v82 = v10;
    sub_19A387988();
    swift_willThrowTypedImpl();
    return a1;
  }

  if (v83[0] != v83[2])
  {
LABEL_11:
    v80 = a1;
    v81 = a2;
    v10 = 2;
    goto LABEL_12;
  }

  if ((v83[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v83[0] >= *(v9 + 16))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    a1 = sub_19A31DC7C(0, *(a1 + 2) + 1, 1, a1);
    goto LABEL_28;
  }

  v73 = v83[3];
  v74 = v83[1];
  v71 = v83[0];
  v11 = (v9 + 48 * v83[0]);
  v12 = v11[4];
  v13 = v11[5];
  v15 = v11[6];
  v14 = v11[7];
  v16 = v11[8];
  v9 = v11[9];

  v75 = v12;
  v76 = v13;
  v17 = sub_19A572E7C();
  v72 = v14;
  if (v9)
  {
    v18 = v15;
    v19 = v16;
    if (v17 != sub_19A5737BC())
    {

LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
    v18 = v15;
    v19 = v16;
    if (v17)
    {
      goto LABEL_10;
    }
  }

  v69 = v19;
  v70 = sub_19A572E7C();
  v21 = v74;
  if (v74)
  {
    sub_19A385900();
    if (v22)
    {

      sub_19A57395C();

      v80 = 0xD000000000000024;
      v81 = 0x800000019A597750;
      v85 = 0;
      v79 = v74;
LABEL_34:
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_19A573ACC();
      MEMORY[0x19A900A50](3943982, 0xE300000000000000);
      sub_19A573ACC();
      MEMORY[0x19A900A50](v77, v78);

      a1 = v80;
      v10 = 3;
      goto LABEL_12;
    }

    v29 = v19;
    v30 = sub_19A572F9C();
    a1 = MEMORY[0x19A900970](v30);
    v68 = v31;

    if (v9)
    {

      v32 = v18;
      v33 = v72;
      v34 = sub_19A5737AC();
      v35 = sub_19A5737AC() >> 14;
      if (v35 < v34 >> 14)
      {
        __break(1u);
        goto LABEL_48;
      }

      v21 = a1;
      v67 = sub_19A572F9C();
      v66 = v36;
      v65 = v37;
      v64 = v38;
    }

    else
    {
      v21 = a1;
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v64 = 0;
    }

    a1 = sub_19A31DC7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v24 = *(a1 + 2);
    v25 = *(a1 + 3);
    v23 = v24 + 1;
    if (v24 >= v25 >> 1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      *(a1 + 2) = v23;
      v39 = &a1[48 * v24];
      v40 = v68;
      v23 = v69;
      *(v39 + 4) = v21;
      *(v39 + 5) = v40;
      v41 = v66;
      *(v39 + 6) = v67;
      *(v39 + 7) = v41;
      v42 = v64;
      *(v39 + 8) = v65;
      *(v39 + 9) = v42;
      v21 = v74;
      if (!v9)
      {
        break;
      }

LABEL_18:

      v24 = sub_19A5737AC();
      v25 = sub_19A5737AC() >> 14;
      if (v25 >= v24 >> 14)
      {
        v74 = sub_19A572F9C();
        v68 = v26;
        v67 = v27;
        v66 = v28;

        goto LABEL_27;
      }

      __break(1u);
LABEL_46:
      a1 = sub_19A31DC7C((v25 > 1), v23, 1, a1);
    }
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
    v23 = v19;
    if (v9)
    {
      goto LABEL_18;
    }
  }

  v74 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
LABEL_27:
  v43 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  MEMORY[0x1EEE9AC00](v43);
  (*(v45 + 16))(&v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_19A572F8C();
  v3 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_28:
  v47 = v70;
  v49 = *(a1 + 2);
  v48 = *(a1 + 3);
  if (v49 >= v48 >> 1)
  {
    a1 = sub_19A31DC7C((v48 > 1), v49 + 1, 1, a1);
  }

  *(a1 + 2) = v49 + 1;
  v50 = &a1[48 * v49];
  *(v50 + 4) = v5;
  *(v50 + 5) = v3;
  v51 = v73;
  v52 = v68;
  *(v50 + 6) = v74;
  *(v50 + 7) = v52;
  v53 = v66;
  *(v50 + 8) = v67;
  *(v50 + 9) = v53;
  if (v51 == v47)
  {

LABEL_41:
    sub_19A46AF3C(v71, v71 + 1, a1);

    return a1;
  }

  sub_19A385900();
  if (v54)
  {

    v80 = 0;
    v81 = 0xE000000000000000;
    sub_19A57395C();

    v80 = 0xD000000000000025;
    v81 = 0x800000019A597780;
    v85 = v51;
    v79 = v47;
    goto LABEL_34;
  }

  v55 = sub_19A572F9C();
  v56 = MEMORY[0x19A900970](v55);
  v74 = v57;
  v75 = v56;

  if (!v9)
  {
    v32 = 0;
    v21 = 0;
    a3 = 0;
    v34 = 0;
LABEL_39:
    v33 = v75;
    v29 = *(a1 + 2);
    v35 = *(a1 + 3);
    v9 = v29 + 1;
    if (v29 < v35 >> 1)
    {
LABEL_40:
      *(a1 + 2) = v9;
      v62 = &a1[48 * v29];
      v63 = v74;
      *(v62 + 4) = v33;
      *(v62 + 5) = v63;
      *(v62 + 6) = v32;
      *(v62 + 7) = v21;
      *(v62 + 8) = a3;
      *(v62 + 9) = v34;
      goto LABEL_41;
    }

LABEL_48:
    a1 = sub_19A31DC7C((v35 > 1), v9, 1, a1);
    goto LABEL_40;
  }

  v58 = sub_19A5737AC();
  result = sub_19A5737AC();
  if (result >> 14 >= v58 >> 14)
  {
    v32 = sub_19A572F9C();
    v21 = v59;
    a3 = v60;
    v34 = v61;

    goto LABEL_39;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A3861A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C616E696769726FLL;
  v4 = 0xEE00676E69727453;
  v5 = 0x800000019A595630;
  if (v2 != 1)
  {
    v3 = 0xD000000000000016;
    v4 = 0x800000019A595630;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x53746E6572727563;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED0000676E697274;
  }

  v8 = 0x6C616E696769726FLL;
  if (*a2 == 1)
  {
    v5 = 0xEE00676E69727453;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x53746E6572727563;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED0000676E697274;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19A573F1C();
  }

  return v11 & 1;
}

uint64_t sub_19A3862BC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A38637C()
{
  sub_19A572E4C();
}

uint64_t sub_19A386428()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A3864E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A387370();
  *a1 = result;
  return result;
}

void sub_19A386514(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000676E697274;
  v4 = 0xEE00676E69727453;
  v5 = 0x6C616E696769726FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x800000019A595630;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53746E6572727563;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_19A386590()
{
  v1 = 0x6C616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53746E6572727563;
  }
}

uint64_t sub_19A386608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A387370();
  *a1 = result;
  return result;
}

uint64_t sub_19A386630(uint64_t a1)
{
  v2 = sub_19A387C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A38666C(uint64_t a1)
{
  v2 = sub_19A387C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3866A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A387C60();
  sub_19A5741AC();
  LOBYTE(v13) = 0;
  sub_19A573E2C();
  if (v2 || !v3[5])
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v3[2];
  v11 = v3[3];
  LOBYTE(v13) = 1;
  result = sub_19A573E2C();
  if (v11 >> 14 >= v10 >> 14)
  {
    v13 = v10;
    v14 = v11;
    v12[15] = 2;
    sub_19A387CB4();
    sub_19A573E7C();
    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_19A386868(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_19A386E00(v7, v8) & 1;
}

double sub_19A3868B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_19A3873BC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_19A386930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AD0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A386D58();
  sub_19A5741AC();
  v13 = 0;
  sub_19A573E2C();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AD8);
    sub_19A3878BC(&qword_1EAF9F110, sub_19A386DAC);
    sub_19A573E7C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_19A386B04()
{
  if (*v0)
  {
    return 0x736563696C735FLL;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_19A386B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736563696C735FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19A386C1C(uint64_t a1)
{
  v2 = sub_19A386D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A386C58(uint64_t a1)
{
  v2 = sub_19A386D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A386C94(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  return sub_19A4D3D04(v2, v3);
}

uint64_t sub_19A386D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_19A387688(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_19A386D58()
{
  result = qword_1ED8248E0;
  if (!qword_1ED8248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248E0);
  }

  return result;
}

unint64_t sub_19A386DAC()
{
  result = qword_1EAF9F6D8;
  if (!qword_1EAF9F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6D8);
  }

  return result;
}

uint64_t sub_19A386E00(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_19A573F1C(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[5];
    v8 = a2[5];
    if (v7)
    {
      if (v8 && (a1[4] == a2[4] && v7 == v8 && a1[2] >> 16 == a2[2] >> 16 && a1[3] >> 16 == a2[3] >> 16 || (sub_19A573ECC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_19A386EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  do
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = result;

    MEMORY[0x19A900A50](v6, v5);

    result = v7;
    v4 += 6;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_19A386F84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_19A386EC4(a1);
  v4 = sub_19A572F2C();
  if (v4 < 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v5 = v4;
  v6 = sub_19A572F2C();

  v21 = v6;
  if (v6 < 0)
  {
LABEL_11:
    v9 = 0;
    v5 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = a1 + 40;
  while (1)
  {
    if (v10 == v9)
    {
      goto LABEL_11;
    }

    v12 = sub_19A572E7C();

    if (v5 < v12)
    {
      break;
    }

    v13 = __OFADD__(v8, v12);
    v8 += v12;
    if (v13)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v11 += 48;
    ++v9;
    v13 = __OFSUB__(v5, v12);
    v5 -= v12;
    if (v13)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  if (__OFSUB__(v6, v8))
  {
    goto LABEL_26;
  }

  if (v6 - v8 < 1)
  {
    v16 = 0;
    v14 = v9;
    v15 = v5;
  }

  else
  {
    v20 = a2;
    v17 = 1 - v9;
    do
    {
      if (v10 + v17 == 1)
      {
        v9 = 0;
        v5 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 1;
        goto LABEL_23;
      }

      v18 = v8;

      v19 = sub_19A572E7C();

      v13 = __OFADD__(v8, v19);
      v8 += v19;
      if (v13)
      {
        goto LABEL_25;
      }

      --v17;
      v11 += 48;
    }

    while (v8 < v21);
    v15 = v21 - v18;
    if (__OFSUB__(v21, v18))
    {
      goto LABEL_27;
    }

    v16 = 0;
    v14 = -v17;
LABEL_23:
    a2 = v20;
  }

LABEL_12:
  *a2 = v9;
  *(a2 + 8) = v5;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_19A3871A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A572F9C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FFA8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19A576E10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v6;
  *(v11 + 64) = v8;
  *(v11 + 72) = v10;

  return a1;
}

uint64_t sub_19A387278(uint64_t a1, uint64_t a2)
{
  sub_19A386EC4(a2);
  v3 = sub_19A572F2C();

  v4 = 0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(a2 + 16);
    v6 = a2 + 40;
    while (v5 != v4)
    {

      v7 = sub_19A572E7C();

      v8 = __OFSUB__(v3, v7);
      if (v3 < v7)
      {
        return v4;
      }

      ++v4;
      v6 += 48;
      v3 -= v7;
      if (v8)
      {
        __break(1u);
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_19A387370()
{
  v0 = sub_19A573C2C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A3873BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A387C60();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v31) = 0;
  v9 = sub_19A573CFC();
  v12 = v11;
  v30 = v9;
  LOBYTE(v31) = 1;
  v13 = sub_19A573D8C();
  if (v13)
  {
    LOBYTE(v31) = 1;
    v14 = sub_19A573CFC();
    v16 = v15;
    v29 = v14;
    v32 = 2;
    sub_19A387D08();
    sub_19A573D4C();
    v27 = v16;
    v17 = sub_19A572F9C();
    v28 = v18;
    v29 = v17;
    v20 = v19;
    v22 = v21;

    v23 = v8;
    v24 = v5;
    v26 = v28;
    v25 = v29;
    (*(v6 + 8))(v23, v24);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v25 = 0;
    v26 = 0;
    v20 = 0;
    v22 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  *a2 = v30;
  a2[1] = v12;
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v20;
  a2[5] = v22;
  return result;
}

uint64_t sub_19A387688(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A386D58();
  sub_19A57417C();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_19A573CFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0AD8);
    v9[15] = 1;
    sub_19A3878BC(&qword_1EAF9E8B8, sub_19A387934);
    sub_19A573D4C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_19A3878BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0AD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A387934()
{
  result = qword_1EAF9ECD0;
  if (!qword_1EAF9ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECD0);
  }

  return result;
}

unint64_t sub_19A387988()
{
  result = qword_1EAFA0AE8;
  if (!qword_1EAFA0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0AE8);
  }

  return result;
}

uint64_t sub_19A3879E8(uint64_t a1, unsigned int a2)
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

uint64_t sub_19A387A30(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_19A387AB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_19A387AF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A387B58()
{
  result = qword_1EAFA0AF0;
  if (!qword_1EAFA0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0AF0);
  }

  return result;
}

unint64_t sub_19A387BB4()
{
  result = qword_1ED8248D0;
  if (!qword_1ED8248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248D0);
  }

  return result;
}

unint64_t sub_19A387C0C()
{
  result = qword_1ED8248D8;
  if (!qword_1ED8248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248D8);
  }

  return result;
}

unint64_t sub_19A387C60()
{
  result = qword_1ED8248C8;
  if (!qword_1ED8248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248C8);
  }

  return result;
}

unint64_t sub_19A387CB4()
{
  result = qword_1EAF9F378;
  if (!qword_1EAF9F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F378);
  }

  return result;
}

unint64_t sub_19A387D08()
{
  result = qword_1EAF9EA30;
  if (!qword_1EAF9EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EA30);
  }

  return result;
}

unint64_t sub_19A387D70()
{
  result = qword_1EAFA0B08;
  if (!qword_1EAFA0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B08);
  }

  return result;
}

unint64_t sub_19A387DC8()
{
  result = qword_1ED8248B8;
  if (!qword_1ED8248B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248B8);
  }

  return result;
}

unint64_t sub_19A387E20()
{
  result = qword_1ED8248C0;
  if (!qword_1ED8248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248C0);
  }

  return result;
}

void sub_19A387E74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 != 2)
  {
    v10 = *v0;
    v11 = v2;
    if (v2)
    {
      [v1 extent];
      sub_19A39AAB4(v9, v4, v5);
      Width = v9[0];
      Height = v9[1];
    }

    else
    {
      Width = CGImageGetWidth(v1);
      Height = CGImageGetHeight(v1);
    }

    goto LABEL_9;
  }

  v3 = v1;
  if (!CVPixelBufferGetIOSurface(v3) || CVPixelBufferGetPixelFormatType(v3) != 1111970369)
  {

    v10 = v1;
    v11 = 2;
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
LABEL_9:
    v8[0] = Width;
    v8[1] = Height;
    sub_19A41ED10(0x42475241, v8, 0);
  }
}

void sub_19A387F80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 == 2)
  {
    v3 = v1;
  }

  else
  {
    v10[2] = *v0;
    v11 = v2;
    if (v2)
    {
      [v1 extent];
      sub_19A39AAB4(v10, v4, v5);
      Width = v10[0];
      Height = v10[1];
    }

    else
    {
      v8 = v1;
      Width = CGImageGetWidth(v1);
      Height = CGImageGetHeight(v8);
    }

    v9[0] = Width;
    v9[1] = Height;
    sub_19A41ED10(0x42475241, v9, 0);
  }
}

uint64_t sub_19A388030(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B68);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B70);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B78);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A389300();
  sub_19A5741AC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_19A389354();
    sub_19A573DAC();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_19A3893A8();
    sub_19A573DAC();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_19A3882EC()
{
  if (*v0)
  {
    return 0x67616D4965636166;
  }

  else
  {
    return 0x55556E6F73726570;
  }
}

uint64_t sub_19A388330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x55556E6F73726570 && a2 == 0xEA00000000004449;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x67616D4965636166 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19A38841C(uint64_t a1)
{
  v2 = sub_19A389300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A388458(uint64_t a1)
{
  v2 = sub_19A389300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A388494(uint64_t a1)
{
  v2 = sub_19A389354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3884D0(uint64_t a1)
{
  v2 = sub_19A389354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A38850C(uint64_t a1)
{
  v2 = sub_19A3893A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A388548(uint64_t a1)
{
  v2 = sub_19A3893A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A388584@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19A388E44(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_19A3885D0()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  if (v2 == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
    if (v3 != 5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0xE300000000000000;
    v7 = 7104878;
    if (v4 != 10)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = 0xE300000000000000;
    goto LABEL_8;
  }

  v6 = sub_19A572DAC();
  v5 = v12;
  if (v3 == 5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = sub_19A572DAC();
  v9 = v8;
  if (v4 == 10)
  {
    goto LABEL_7;
  }

LABEL_4:
  v1 = sub_19A572DAC();
  v11 = v10;
LABEL_8:
  sub_19A57395C();

  MEMORY[0x19A900A50](v6, v5);

  MEMORY[0x19A900A50](0x203A656761202CLL, 0xE700000000000000);
  MEMORY[0x19A900A50](v7, v9);

  MEMORY[0x19A900A50](0x6F546E696B73202CLL, 0xEC000000203A656ELL);
  MEMORY[0x19A900A50](v1, v11);

  MEMORY[0x19A900A50](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_19A388794(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3893FC();
  sub_19A5741AC();
  v20 = v8;
  v19 = 0;
  sub_19A3894A4();
  sub_19A573E1C();
  if (!v2)
  {
    v10 = v13;
    v18 = v14;
    v17 = 1;
    sub_19A37AE54();
    sub_19A573E1C();
    v16 = v10;
    v15 = 2;
    sub_19A37AEFC();
    sub_19A573E1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_19A388974@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3893FC();
  sub_19A57417C();
  if (!v2)
  {
    v18 = 0;
    sub_19A389450();
    sub_19A573CDC();
    v9 = v19;
    v16 = 1;
    sub_19A37AD58();
    sub_19A573CDC();
    v11 = v17;
    v14 = 2;
    sub_19A37AE00();
    sub_19A573CDC();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A388B8C()
{
  v1 = 6645601;
  if (*v0 != 1)
  {
    v1 = 0x656E6F546E696B73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7890291;
  }
}

uint64_t sub_19A388BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A3898A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A388C00(uint64_t a1)
{
  v2 = sub_19A3893FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A388C3C(uint64_t a1)
{
  v2 = sub_19A3893FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceAttributes(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 - 3;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for FaceAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
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
      *result = a2 + 2;
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

unint64_t sub_19A388DF0()
{
  result = qword_1ED825B18;
  if (!qword_1ED825B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825B18);
  }

  return result;
}

uint64_t sub_19A388E44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B10);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B18);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0B20);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A389300();
  v11 = v26;
  sub_19A57417C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_19A573D7C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_19A344188();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_19A5739FC();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
    *v19 = &type metadata for FaceAttributes.Source;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_19A389354();
    sub_19A573C5C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_19A3893A8();
    sub_19A573C5C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v31 & 1;
}

unint64_t sub_19A389300()
{
  result = qword_1EAFA0B28;
  if (!qword_1EAFA0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B28);
  }

  return result;
}

unint64_t sub_19A389354()
{
  result = qword_1EAFA0B30;
  if (!qword_1EAFA0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B30);
  }

  return result;
}

unint64_t sub_19A3893A8()
{
  result = qword_1EAFA0B38;
  if (!qword_1EAFA0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B38);
  }

  return result;
}

unint64_t sub_19A3893FC()
{
  result = qword_1EAFA0B48;
  if (!qword_1EAFA0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B48);
  }

  return result;
}

unint64_t sub_19A389450()
{
  result = qword_1EAFA0B50;
  if (!qword_1EAFA0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B50);
  }

  return result;
}

unint64_t sub_19A3894A4()
{
  result = qword_1EAFA0B60;
  if (!qword_1EAFA0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B60);
  }

  return result;
}

unint64_t sub_19A38953C()
{
  result = qword_1EAFA0B80;
  if (!qword_1EAFA0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B80);
  }

  return result;
}

unint64_t sub_19A389594()
{
  result = qword_1EAFA0B88;
  if (!qword_1EAFA0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B88);
  }

  return result;
}

unint64_t sub_19A3895EC()
{
  result = qword_1EAFA0B90;
  if (!qword_1EAFA0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B90);
  }

  return result;
}

unint64_t sub_19A389644()
{
  result = qword_1EAFA0B98;
  if (!qword_1EAFA0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0B98);
  }

  return result;
}

unint64_t sub_19A38969C()
{
  result = qword_1EAFA0BA0;
  if (!qword_1EAFA0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BA0);
  }

  return result;
}

unint64_t sub_19A3896F4()
{
  result = qword_1EAFA0BA8;
  if (!qword_1EAFA0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BA8);
  }

  return result;
}

unint64_t sub_19A38974C()
{
  result = qword_1EAFA0BB0;
  if (!qword_1EAFA0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BB0);
  }

  return result;
}

unint64_t sub_19A3897A4()
{
  result = qword_1EAFA0BB8;
  if (!qword_1EAFA0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BB8);
  }

  return result;
}

unint64_t sub_19A3897FC()
{
  result = qword_1EAFA0BC0;
  if (!qword_1EAFA0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BC0);
  }

  return result;
}

unint64_t sub_19A389854()
{
  result = qword_1EAFA0BC8;
  if (!qword_1EAFA0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BC8);
  }

  return result;
}

uint64_t sub_19A3898A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7890291 && a2 == 0xE300000000000000;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F546E696B73 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_19A389A84(uint64_t a1)
{
  v2 = sub_19A38A58C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A389AC0(uint64_t a1)
{
  v2 = sub_19A38A58C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WebUIConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0BD0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  v47 = *v1;
  v7 = *(v1 + 3);
  v53 = *(v1 + 4);
  v54 = v7;
  v52 = *(v1 + 5);
  LODWORD(v51) = v1[48];
  v50 = *(v1 + 7);
  v49 = v1[64];
  v8 = *(v1 + 9);
  v44 = *(v1 + 10);
  v9 = *(v1 + 12);
  v45 = *(v1 + 11);
  v46 = v8;
  v42 = v9;
  v10 = *(v1 + 14);
  v43 = *(v1 + 13);
  v40 = v10;
  v11 = *(v1 + 16);
  v41 = *(v1 + 15);
  v48 = v11;
  v39 = *(v1 + 17);
  v12 = *(v1 + 9);
  v37 = *(v1 + 10);
  v38 = v12;
  v36 = v1[176];
  v34 = *(v1 + 200);
  v35 = *(v1 + 184);
  v33 = *(v1 + 27);
  v32 = v1[228];
  v31 = *(v1 + 56);
  v23 = *(v1 + 29);
  v30 = *(v1 + 60);
  v29 = v1[244];
  v13 = *(v1 + 32);
  v27 = *(v1 + 31);
  v28 = v13;
  v25 = *(v1 + 33);
  v26 = v1[272];
  v24 = v1[273];
  v22[1] = v1[274];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A38A58C();
  sub_19A5741AC();
  strcpy(&v55, "prompt_style");
  BYTE13(v55) = 0;
  HIWORD(v55) = -5120;
  *&v56 = 0;
  BYTE8(v56) = 1;
  v14 = v64;
  sub_19A573DCC();
  if (v14)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v64 = v4;
  *&v55 = 0x74706D6F7270;
  *(&v55 + 1) = 0xE600000000000000;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  *&v55 = 0x67616D695F6D756ELL;
  *(&v55 + 1) = 0xEA00000000007365;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573E0C();
  *&v55 = 1684366707;
  *(&v55 + 1) = 0xE400000000000000;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573E0C();
  v16 = *(v46 + 16);
  if (v47)
  {
    if (v16)
    {
    }

    strcpy(&v55, "identity_image");
    HIBYTE(v55) = -18;
    *&v56 = 0;
    BYTE8(v56) = 1;
    sub_19A573DCC();
  }

  else if (v16)
  {
    v60 = v46;
    *&v55 = 0xD000000000000010;
    *(&v55 + 1) = 0x800000019A597870;
    *&v56 = 0;
    BYTE8(v56) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A38A5E0();
    sub_19A573E7C();
  }

  *&v55 = 0x656C626269726373;
  *(&v55 + 1) = 0xE800000000000000;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  strcpy(&v55, "doi_base_image");
  HIBYTE(v55) = -18;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  *&v55 = 0x74656B735F696F64;
  *(&v55 + 1) = 0xEF6B73616D5F6863;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  *&v55 = 0xD00000000000001CLL;
  *(&v55 + 1) = 0x800000019A597890;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  v56 = v37;
  v55 = v38;
  LOBYTE(v57) = v36;
  v60 = 0xD000000000000016;
  v61 = 0x800000019A5978B0;
  v62 = 0;
  v63 = 1;
  type metadata accessor for CGRect(0);
  sub_19A38A65C();
  sub_19A573E1C();
  v56 = v34;
  v55 = v35;
  v57 = v33;
  v59 = (v31 | (v32 << 32)) >> 32;
  v58 = v31;
  v60 = 0xD000000000000014;
  v61 = 0x800000019A5978D0;
  v62 = 0;
  v63 = 1;
  sub_19A38A6B4();
  sub_19A573E1C();
  *&v55 = 6776419;
  *(&v55 + 1) = 0xE300000000000000;
  *&v56 = 0;
  BYTE8(v56) = 1;
  LOBYTE(v60) = v29;
  sub_19A573DFC();
  *&v55 = 0x656C756465686373;
  *(&v55 + 1) = 0xEA00000000007372;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DCC();
  *&v55 = 0x7370657473;
  *(&v55 + 1) = 0xE500000000000000;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573E0C();
  *&v55 = 0xD00000000000001ALL;
  *(&v55 + 1) = 0x800000019A5978F0;
  *&v56 = 0;
  BYTE8(v56) = 1;
  sub_19A573DDC();
  *&v55 = 0xD000000000000023;
  *(&v55 + 1) = 0x800000019A597910;
  *&v56 = 0;
  BYTE8(v56) = 1;
  result = sub_19A573DDC();
  if (!v23)
  {
    return (*(v64 + 8))(v6, v3);
  }

  v51 = *(v23 + 16);
  if (!v51)
  {
    return (*(v64 + 8))(v6, v3);
  }

  v17 = 0;
  v18 = (v23 + 52);
  while (v17 < *(v23 + 16))
  {
    v19 = *(v18 - 12);
    v53 = *(v18 - 1);
    LODWORD(v52) = *v18;
    v54 = *(v18 - 20);
    *&v55 = 0x776F725F61726F6CLL;
    *(&v55 + 1) = 0xE90000000000005FLL;
    v60 = v17;

    v20 = sub_19A573EDC();
    MEMORY[0x19A900A50](v20);

    MEMORY[0x19A900A50](12383, 0xE200000000000000);
    *&v56 = 0;
    BYTE8(v56) = 1;
    v54 = v19;
    sub_19A573E2C();

    *&v55 = 0x776F725F61726F6CLL;
    *(&v55 + 1) = 0xE90000000000005FLL;
    v60 = v17;
    v21 = sub_19A573EDC();
    MEMORY[0x19A900A50](v21);

    MEMORY[0x19A900A50](12639, 0xE200000000000000);
    *&v56 = 0;
    BYTE8(v56) = 1;
    LOBYTE(v60) = v52;
    sub_19A573DFC();

    ++v17;
    v18 += 24;
    if (v51 == v17)
    {
      return (*(v64 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_19A38A58C()
{
  result = qword_1EAFA0BD8;
  if (!qword_1EAFA0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BD8);
  }

  return result;
}

unint64_t sub_19A38A5E0()
{
  result = qword_1EAFA0BE0;
  if (!qword_1EAFA0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BE0);
  }

  return result;
}

unint64_t sub_19A38A65C()
{
  result = qword_1EAF9F048;
  if (!qword_1EAF9F048)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F048);
  }

  return result;
}

unint64_t sub_19A38A6B4()
{
  result = qword_1EAF9F310;
  if (!qword_1EAF9F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F310);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16VisualGeneration27ResolvedLayoutConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A38A74C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 275))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A38A794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 274) = 0;
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 275) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 275) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A38A830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_19A38A878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19A38A8D0()
{
  result = qword_1EAFA0BE8;
  if (!qword_1EAFA0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BE8);
  }

  return result;
}

unint64_t sub_19A38A928()
{
  result = qword_1EAFA0BF0;
  if (!qword_1EAFA0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0BF0);
  }

  return result;
}

id GeneratedImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t GeneratedImage.generationID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GeneratedImage() + 20);
  v4 = *(type metadata accessor for ImageProvenance() + 20);
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for GeneratedImage()
{
  result = qword_1ED825CE0;
  if (!qword_1ED825CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeneratedImage.diffusionModelSpecification.getter()
{
  type metadata accessor for GeneratedImage();
  type metadata accessor for ImageProvenance();
}

__n128 GeneratedImage.promptEncodingStatistics.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GeneratedImage() + 28));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

unint64_t sub_19A38ABA0()
{
  v1 = *v0;
  v2 = 0x6567616D695FLL;
  v3 = 0x656C626D65737361;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v4 = 0x74706D6F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F72506567616D69;
  if (v1 != 1)
  {
    v5 = 0x656C797473;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_19A38AC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A38BC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A38ACC0(uint64_t a1)
{
  v2 = sub_19A38B080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A38ACFC(uint64_t a1)
{
  v2 = sub_19A38B080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratedImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0BF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A38B080();
  sub_19A5741AC();
  v9 = *(v3 + 8);
  *&v15 = *v3;
  BYTE8(v15) = v9;
  v17 = 0;
  v10 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C00);
  sub_19A38B758(&qword_1EAF9E9E8);
  sub_19A573E7C();
  if (v2)
  {
  }

  else
  {

    v11 = type metadata accessor for GeneratedImage();
    LOBYTE(v15) = 1;
    type metadata accessor for ImageProvenance();
    sub_19A38B7A8(&qword_1EAF9ECE8);
    sub_19A573E7C();
    LOBYTE(v15) = *(v3 + v11[6]);
    v17 = 2;
    sub_19A38B0D4();
    sub_19A573E7C();
    v12 = (v3 + v11[7]);
    v13 = *(v12 + 16);
    v15 = *v12;
    v16 = v13;
    v17 = 3;
    sub_19A38B128();
    sub_19A573E1C();
    LOBYTE(v15) = 4;
    sub_19A573E2C();
    LOBYTE(v15) = 5;
    sub_19A573E2C();
    LOBYTE(v15) = *(v3 + v11[10]);
    v17 = 6;
    sub_19A38B17C();
    sub_19A573E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_19A38B080()
{
  result = qword_1ED824B98;
  if (!qword_1ED824B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B98);
  }

  return result;
}

unint64_t sub_19A38B0D4()
{
  result = qword_1ED824BE0;
  if (!qword_1ED824BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BE0);
  }

  return result;
}

unint64_t sub_19A38B128()
{
  result = qword_1ED824578;
  if (!qword_1ED824578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824578);
  }

  return result;
}

unint64_t sub_19A38B17C()
{
  result = qword_1EAF9EC60;
  if (!qword_1EAF9EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC60);
  }

  return result;
}

void GeneratedImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ImageProvenance();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C08);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v28 - v6;
  v8 = type metadata accessor for GeneratedImage();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 40);
  v11[v12] = 3;
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_19A38B080();
  v30 = v7;
  v14 = v32;
  sub_19A57417C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  else
  {
    v32 = v12;
    v15 = v29;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C00);
    v36 = 0;
    sub_19A38B758(&qword_1EAF9F308);
    v17 = v31;
    v18 = v30;
    sub_19A573D4C();
    v19 = BYTE8(v34);
    *v16 = v34;
    *(v16 + 8) = v19;
    LOBYTE(v34) = 1;
    sub_19A38B7A8(&qword_1EAF9F700);
    sub_19A573D4C();
    sub_19A38B7EC(v5, v16 + v8[5]);
    v36 = 2;
    sub_19A38B850();
    sub_19A573D4C();
    *(v16 + v8[6]) = v34;
    v36 = 3;
    sub_19A38B8A4();
    sub_19A573CDC();
    v20 = v35;
    v21 = v16 + v8[7];
    *v21 = v34;
    *(v21 + 16) = v20;
    LOBYTE(v34) = 4;
    v22 = sub_19A573CFC();
    v23 = (v16 + v8[8]);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v34) = 5;
    v25 = sub_19A573CFC();
    v26 = (v16 + v8[9]);
    *v26 = v25;
    v26[1] = v27;
    v36 = 6;
    sub_19A38B8F8();
    sub_19A573CDC();
    (*(v15 + 8))(v18, v17);
    *(v16 + v32) = v34;
    sub_19A35A7FC(v16, v28);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    sub_19A38B94C(v16, type metadata accessor for GeneratedImage);
  }
}

uint64_t sub_19A38B758(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0C00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A38B7A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImageProvenance();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A38B7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageProvenance();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A38B850()
{
  result = qword_1ED824BD0;
  if (!qword_1ED824BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BD0);
  }

  return result;
}

unint64_t sub_19A38B8A4()
{
  result = qword_1ED824570;
  if (!qword_1ED824570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824570);
  }

  return result;
}

unint64_t sub_19A38B8F8()
{
  result = qword_1EAF9F598;
  if (!qword_1EAF9F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F598);
  }

  return result;
}

uint64_t sub_19A38B94C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_19A38BA04()
{
  sub_19A38BAF0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageProvenance();
    if (v1 <= 0x3F)
    {
      sub_19A3330B0(319, &qword_1ED825358);
      if (v2 <= 0x3F)
      {
        sub_19A3330B0(319, &qword_1ED825368);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19A38BAF0()
{
  if (!qword_1ED825698[0])
  {
    sub_19A3369AC();
    v0 = type metadata accessor for XPCReferenceShareableWrapper();
    if (!v1)
    {
      atomic_store(v0, qword_1ED825698);
    }
  }
}

unint64_t sub_19A38BB60()
{
  result = qword_1EAFA0C10;
  if (!qword_1EAFA0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0C10);
  }

  return result;
}

unint64_t sub_19A38BBB8()
{
  result = qword_1ED824B88;
  if (!qword_1ED824B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B88);
  }

  return result;
}

unint64_t sub_19A38BC10()
{
  result = qword_1ED824B90;
  if (!qword_1ED824B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824B90);
  }

  return result;
}

uint64_t sub_19A38BC64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D695FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72506567616D69 && a2 == 0xEF65636E616E6576 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A5979E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C626D65737361 && a2 == 0xEF74706D6F725064 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A597A00 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void __swiftcall ImageVariations.next()(VisualGeneration::ImageVariation *__return_ptr retstr)
{
  os_unfair_lock_lock((v1 + 16));
  sub_19A38BF98((v1 + 24), v1, retstr);

  os_unfair_lock_unlock((v1 + 16));
}

uint64_t ImageVariations.__allocating_init(repeatedGenerationSeed:generationSeeds:scribbleStrengths:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = a2 & 1;
  *(result + 48) = a3;
  *(result + 56) = a4;
  return result;
}

uint64_t ImageVariations.init(repeatedGenerationSeed:generationSeeds:scribbleStrengths:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2 & 1;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  return v4;
}

unint64_t sub_19A38BF98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_19A489348(0x8000000000000000);
  v7 = *(a2 + 48);
  if (v7 && (v8 = *(v7 + 16)) != 0)
  {
    v9 = *a1;
    if (*a1 < v8)
    {
      if (v9 < 0)
      {
        goto LABEL_20;
      }

      result = *(v7 + 8 * v9 + 32);
    }

    v10 = *(a2 + 56);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!*(a2 + 40))
    {
      result = *(a2 + 32);
    }

    v9 = *a1;
    v10 = *(a2 + 56);
    if (!v10)
    {
LABEL_17:
      while (1)
      {
        v11 = 1;
        v12 = __OFADD__(v9++, 1);
        if (!v12)
        {
          break;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        LODWORD(v10) = 0;
      }

      goto LABEL_18;
    }
  }

  if (v9 >= *(v10 + 16))
  {
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    LODWORD(v10) = *(v10 + 4 * v9 + 32);
    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_18:
    *a1 = v9;
    *a3 = result;
    *(a3 + 8) = v10;
    *(a3 + 12) = v11;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t ImageVariations.deinit()
{

  return v0;
}

uint64_t ImageVariations.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageVariation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageVariation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
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

  *(result + 13) = v3;
  return result;
}

uint64_t sub_19A38C1A8(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A38C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_19A38C4B4, 0, 0);
}

uint64_t sub_19A38C4B4()
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A57236C();
  __swift_project_value_buffer(v1, qword_1ED82BD30);
  v2 = sub_19A57231C();
  v3 = *(v2 - 8);
  v4 = swift_task_alloc();
  sub_19A57234C();
  sub_19A5722EC();
  v5 = sub_19A57234C();
  v6 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v5, v6, v8, "AFM+ people detection", "", v7, 2u);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  swift_task_alloc();
  (*(v3 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[11] = sub_19A5723AC();
  (*(v3 + 8))(v4, v2);

  if ((sub_19A39C344() - 1) > 1u)
  {
    v14 = sub_19A2F1648;
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v10 = sub_19A38C9B4;
  }

  else
  {
    v14 = sub_19A2F1EA0;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = sub_19A38C790;
  }

  v9[1] = v10;
  v11 = v0[10];
  v12 = v0[8];

  return v14(v12, v11);
}

uint64_t sub_19A38C790(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[13] = v1;

  if (v1)
  {
    v4 = sub_19A38C934;
  }

  else
  {
    v4 = sub_19A38C8AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A38C8AC()
{
  v1 = *(v0 + 24);
  sub_19A38C1A8("AFM+ people detection", 21, 2);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A38C934()
{
  sub_19A38C1A8("AFM+ people detection", 21, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A38C9B4(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[15] = v1;

  if (v1)
  {
    v4 = sub_19A38CB58;
  }

  else
  {
    v4 = sub_19A38CAD0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A38CAD0()
{
  v1 = *(v0 + 48);
  sub_19A38C1A8("AFM+ people detection", 21, 2);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19A38CB58()
{
  sub_19A38C1A8("AFM+ people detection", 21, 2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A38CBE8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_19A57389C();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_19A322580((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_19A2F1470(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_19A2F1470(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A38CEF8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  if (qword_1ED824B80 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1ED82BD28;
  v6 = *(qword_1ED82BD28 + 16);
  v7 = qword_1ED82BD28 + 32;
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v8 = *(v7 + 8 * v4);
    if ((*(v8 + 88))() == v2 && v9 == v3)
    {

LABEL_12:
      if (swift_conformsToProtocol2())
      {
        return (*(v8 + 104))() & 1;
      }

      return 0;
    }

    ++v4;
    v11 = sub_19A573F1C();

    if (v11)
    {
      goto LABEL_12;
    }
  }

  return 0;
}

uint64_t sub_19A38D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A38D06C, 0, 0);
}

uint64_t sub_19A38D06C()
{
  (*(*(*(*(*(v0 + 128) + 8) + 8) + 24) + 16))(*(v0 + 120));
  sub_19A33546C(*(v0 + 112), v0 + 56, &qword_1EAF9FDE0);
  if (*(v0 + 80))
  {
    sub_19A2EA460((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v10 = (*(v3 + 8) + **(v3 + 8));
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_19A38D27C;
    v5 = *(v0 + 96);
    v6 = *(v0 + 104);

    return v10(v5, v6, v2, v3);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    sub_19A2F3FA0(v0 + 56, &qword_1EAF9FDE0);
    sub_19A393D64(v8, v7, type metadata accessor for GenerationRecipe);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_19A38D27C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_19A38D3F4;
  }

  else
  {
    v2 = sub_19A38D390;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A38D390()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A38D3F4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A38D458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[12] = a1;
  v4[15] = type metadata accessor for ImageGenerator.Result(0);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A38D4F0, 0, 0);
}

uint64_t sub_19A38D4F0()
{
  sub_19A4323D8();
  v3 = v0[12];
  v4 = (v3 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = qword_1ED824B80;

  if (v7 != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = 0;
  v9 = qword_1ED82BD28;
  v10 = *(qword_1ED82BD28 + 16);
  v11 = qword_1ED82BD28 + 32;
  while (v10 != v8)
  {
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v12 = *(v11 + 8 * v8);
    if ((*(v12 + 88))() == v6 && v13 == v5)
    {

LABEL_17:
      v18 = v0[13];
      v19 = (*(v12 + 80))(v16);
      v0[17] = v19;
      v20 = *(v18 + 8);
      if (v20)
      {
        v21 = *(v0[13] + 16);

        v22 = &off_1F0DAE380;
        v23 = &type metadata for ImageGeneratorDelegateOperationProgressHandler;
      }

      else
      {

        v21 = 0;
        v23 = 0;
        v22 = 0;
        v0[4] = 0;
      }

      v24 = v0[14];
      v25 = v0[12];
      v0[2] = v20;
      v0[3] = v21;
      v0[5] = v23;
      v0[6] = v22;
      v26 = v24 + OBJC_IVAR____TtC16VisualGeneration27InProcessDiffusionOperation_id;
      v0[10] = type metadata accessor for InProcessDiffusionOperation(0);
      v0[11] = &off_1F0DAD0A8;
      v0[7] = v24;

      v27 = swift_task_alloc();
      v0[18] = v27;
      v27[2] = v26;
      v27[3] = v26;
      v27[4] = v0 + 7;
      v27[5] = v0 + 2;
      v27[6] = v19;
      v27[7] = v25;
      v28 = swift_task_alloc();
      v0[19] = v28;
      *v28 = v0;
      v28[1] = sub_19A38D814;
      v30 = v0[15];
      v29 = v0[16];

      return MEMORY[0x1EEE6DD58](v29, v30, v30, 0, 0, &unk_19A57EAF0, v27, v30);
    }

    ++v8;
    v15 = sub_19A573F1C();

    if (v15)
    {
      goto LABEL_17;
    }
  }

  sub_19A2F1130();
  swift_allocError();
  *v17 = v6;
  *(v17 + 8) = v5;
  *(v17 + 16) = 0;
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A38D814()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_19A38DA80;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 56);
    v3 = sub_19A38D938;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A38D938()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = *v2;

  sub_19A393DCC(v2, type metadata accessor for ImageGenerator.Result);
  sub_19A4323D8();
  if (v1)
  {

    sub_19A2F3FA0((v0 + 2), &qword_1EAFA0440);

    v4 = v0[1];

    return v4();
  }

  else
  {

    sub_19A2F3FA0((v0 + 2), &qword_1EAFA0440);

    v6 = v0[1];

    return v6(v3);
  }
}

uint64_t sub_19A38DA80()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  sub_19A2F3FA0(v0 + 16, &qword_1EAFA0440);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A38DB14()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration27InProcessDiffusionOperation_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19A38DBD8()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A38DC68(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for GenerationRecipe(0) + 20) + 50) == 1)
  {
    v2 = sub_19A38CEF8(a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_19A38DCB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InProcessDiffusionOperation(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16VisualGeneration27InProcessDiffusionOperation_id;
  v6 = sub_19A57102C();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_19A38DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_19A2F759C;

  return sub_19A38D044(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_19A38DE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19A34B5BC;

  return sub_19A38D458(a1, v7, a3);
}

uint64_t sub_19A38DECC()
{
  swift_getWitnessTable();

  return sub_19A2F4500();
}

uint64_t sub_19A38DF20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16VisualGeneration27InProcessDiffusionOperation_id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A38DF9C(uint64_t a1)
{
  sub_19A57395C();

  v3 = sub_19A57102C();
  sub_19A393954(&qword_1ED8252D8, MEMORY[0x1E69695A8]);
  v4 = sub_19A573EDC();
  MEMORY[0x19A900A50](v4);

  v5 = (v1 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix);
  *v5 = 0xD00000000000001FLL;
  v5[1] = 0x800000019A597B70;
  (*(*(v3 - 8) + 32))(v1 + OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_id, a1, v3);
  v6 = (v1 + OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_loggingIdentifier);
  *v6 = 0xD00000000000001ALL;
  v6[1] = 0x800000019A596E30;
  return v1;
}

uint64_t sub_19A38E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  *(v4 + 128) = a1;
  type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters();
  *(v4 + 152) = swift_task_alloc();
  type metadata accessor for GenerationRecipe(0);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = *a2;
  *(v4 + 208) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_19A38E1CC, 0, 0);
}

uint64_t sub_19A38E1CC()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[26];
  sub_19A393D64(v0[16], v0[20], type metadata accessor for GenerationRecipe);
  sub_19A393D64(v4, v3, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  v0[12] = v2;
  v0[13] = v1;
  v0[14] = v5;
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_19A38E2D0;
  v7 = v0[19];
  v8 = v0[20];

  return sub_19A38E614(v8, (v0 + 12), v7);
}

uint64_t sub_19A38E2D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_19A38E4A4;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_19A38E3F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_19A38E3F8()
{
  v1 = v0[20];
  sub_19A393DCC(v0[19], type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  sub_19A393DCC(v1, type metadata accessor for GenerationRecipe);

  v2 = v0[1];
  v3 = v0[25];

  return v2(v3);
}

uint64_t sub_19A38E4A4()
{
  v1 = *(v0 + 192);
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C50);
  if (swift_dynamicCast())
  {

    sub_19A2EA460((v0 + 16), v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    (*(v4 + 8))(v3, v4);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  }

  v6 = *(v0 + 152);
  v5 = *(v0 + 160);

  sub_19A393DCC(v6, type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters);
  sub_19A393DCC(v5, type metadata accessor for GenerationRecipe);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19A38E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C30);
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for InferenceDiagnosticsAccessor();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  v8 = sub_19A57102C();
  *(v4 + 176) = v8;
  *(v4 + 184) = *(v8 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = type metadata accessor for ImageGenerator.Result(0);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v9 = sub_19A571C6C();
  *(v4 + 232) = v9;
  *(v4 + 240) = *(v9 - 8);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = type metadata accessor for ModelManagerInferenceProvider.Input(0);
  *(v4 + 280) = swift_task_alloc();
  v10 = sub_19A57172C();
  *(v4 + 288) = v10;
  *(v4 + 296) = *(v10 - 8);
  *(v4 + 304) = swift_task_alloc();
  v11 = sub_19A57170C();
  *(v4 + 312) = v11;
  *(v4 + 320) = *(v11 - 8);
  *(v4 + 328) = swift_task_alloc();
  v12 = sub_19A57174C();
  *(v4 + 336) = v12;
  *(v4 + 344) = *(v12 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  v13 = sub_19A57177C();
  *(v4 + 376) = v13;
  *(v4 + 384) = *(v13 - 8);
  *(v4 + 392) = swift_task_alloc();
  v14 = sub_19A57192C();
  *(v4 + 400) = v14;
  *(v4 + 408) = *(v14 - 8);
  *(v4 + 416) = swift_task_alloc();
  v15 = sub_19A57110C();
  *(v4 + 424) = v15;
  *(v4 + 432) = *(v15 - 8);
  *(v4 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  *(v4 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38);
  *(v4 + 456) = swift_task_alloc();
  v16 = sub_19A57188C();
  *(v4 + 464) = v16;
  *(v4 + 472) = *(v16 - 8);
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = type metadata accessor for GenerationRecipe(0);
  *(v4 + 512) = swift_task_alloc();
  *(v4 + 520) = *a2;
  *(v4 + 664) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_19A38EC58, 0, 0);
}

uint64_t sub_19A38EC58()
{
  v197 = v0;
  v1 = v0;
  sub_19A4331E4();
  v2 = *(v0 + 96);
  if (*v2)
  {
    v3 = *v2;
  }

  else
  {
    v17 = *(v0 + 512);
    sub_19A393D64(*(v1 + 88), *(v1 + 512), type metadata accessor for GenerationRecipe);

    sub_19A40FB04(v17, &v194);
    v18 = v194;
    v20 = v195;
    v19 = v196;
    v21 = AppleDiffusionAdapter.modelCatalogResourceBundleIdentifier.getter(v194);
    v116 = *(v1 + 528);
    v117 = *(v1 + 520);
    v118 = *(v1 + 512);
    v119 = *(v1 + 664);
    v120 = v21;
    LOBYTE(v21) = v18;
    v122 = v121;
    v123 = AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v21);
    v194 = v117;
    v195 = v116;
    v196 = v119;
    v3 = sub_19A40FD54(v120, v122, v20, v19, v123, v124, &v194);
    sub_19A393DCC(v118, type metadata accessor for GenerationRecipe);
  }

  *(v1 + 536) = v3;
  v4 = *(v1 + 88);
  v5 = *(*(v1 + 504) + 20);
  *(v1 + 672) = v5;
  v6 = *(v4 + v5 + 49);

  if (v6 != 1)
  {
    goto LABEL_23;
  }

  if (!geteuid())
  {
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v22 = sub_19A5723FC();
    __swift_project_value_buffer(v22, qword_1ED82BCF0);

    v23 = sub_19A5723DC();
    v24 = sub_19A57355C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v1 + 104);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v194 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_19A31F114(*(v25 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v25 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), &v194);
      _os_log_impl(&dword_19A2DE000, v23, v24, "%{public}s GenerativeModelsAvailibilityCheck requested but detected process running as root. Skipping.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x19A902C50](v27, -1, -1);
      MEMORY[0x19A902C50](v26, -1, -1);
    }

LABEL_23:
    type metadata accessor for AppleDiffusionResourceFactory(0);
    v67 = static AppleDiffusionResourceFactory.shared(reset:)(0);
    *(v1 + 544) = v67;
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    v70 = v3[6];
    *(inited + 32) = v3[5];
    *(inited + 40) = v70;
    v71 = *(v68 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs + 8);
    *(inited + 48) = *(v68 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs);
    *(inited + 56) = v71;

    v72 = sub_19A330B1C(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA0C48);
    *(v1 + 80) = v72;
    v73 = v3[4];
    if (!v73)
    {
      goto LABEL_43;
    }

    v74 = v3[3];
    swift_bridgeObjectRetain_n();
    v75._countAndFlagsBits = v74;
    v75._object = v73;
    LOBYTE(v76) = AppleDiffusionAdapter.init(modelCatalogInferenceAssetIdentifier:)(v75);
    if (v76 == 11)
    {

      goto LABEL_43;
    }

    v90 = *(v68 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterVersions);
    if (*(v90 + 16))
    {
      v91 = sub_19A31FBD4(v76);
      if (v92)
      {
        v93 = *(*(v90 + 56) + 8 * v91);
        if (*(v93 + 16))
        {

          v94 = sub_19A31FDEC(0);
          if (v95)
          {
            v96 = (*(v93 + 56) + 16 * v94);
            v97 = *v96;
            v98 = v96[1];

            v99 = v98;
            v100 = v97;
LABEL_42:
            sub_19A49FAA4(v100, v99, v74, v73);
LABEL_43:
            v125 = *(v1 + 272);
            v126 = *(v1 + 280);
            v127 = *(v1 + 256);
            v128 = *(v1 + 88);
            (*(*(v1 + 184) + 16))(v126, *(v1 + 104) + OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_id, *(v1 + 176));
            sub_19A393D64(v128, &v126[*(v125 + 20)], type metadata accessor for GenerationRecipe);
            *&v126[*(v125 + 24)] = *(v1 + 80);
            sub_19A45AFB4(v126, v127);
            sub_19A357484();
            v131 = *(v1 + 256);
            v132 = *(v1 + 232);
            v133 = *(v1 + 240);
            v134 = *(v1 + 96);
            v135 = *(v133 + 8);
            *(v1 + 552) = v135;
            *(v1 + 560) = (v133 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v135(v131, v132);
            v136 = *(v134 + 8);
            *(v1 + 568) = v136;
            v137 = *(v134 + 16);
            *(v1 + 576) = v137;
            v138 = *(v1 + 264);
            v139 = *(v1 + 248);
            v140 = *(v1 + 232);
            v141 = (*(v1 + 240) + 16);
            v192 = v136;
            if (v136)
            {
              sub_19A571D6C();
              (*v141)(v139, v138, v140);

              sub_19A2E0A50(v192);

              v142 = sub_19A571D5C();
              *(v1 + 584) = v142;
              if (qword_1ED824050 != -1)
              {
                swift_once();
              }

              v143 = sub_19A5723FC();
              __swift_project_value_buffer(v143, qword_1ED82BCF0);

              v144 = sub_19A5723DC();
              v145 = sub_19A57356C();

              if (os_log_type_enabled(v144, v145))
              {
                v147 = *(v1 + 184);
                v146 = *(v1 + 192);
                v186 = *(v1 + 176);
                v148 = *(v1 + 104);
                v149 = swift_slowAlloc();
                v189 = swift_slowAlloc();
                v194 = v189;
                *v149 = 136446466;
                *(v149 + 4) = sub_19A31F114(*(v148 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v148 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), &v194);
                *(v149 + 12) = 2082;
                sub_19A571D3C();
                v150 = sub_19A570FDC();
                v151 = v1;
                v153 = v152;
                (*(v147 + 8))(v146, v186);
                v154 = sub_19A31F114(v150, v153, &v194);
                v1 = v151;

                *(v149 + 14) = v154;
                _os_log_impl(&dword_19A2DE000, v144, v145, "%{public}s Created streaming request %{public}s", v149, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x19A902C50](v189, -1, -1);
                MEMORY[0x19A902C50](v149, -1, -1);
              }

              v155 = *(v1 + 104);
              v156 = swift_task_alloc();
              *(v1 + 592) = v156;
              v156[2] = v155;
              v156[3] = v142;
              v156[4] = v192;
              v156[5] = v137;
              v157 = swift_task_alloc();
              *(v1 + 600) = v157;
              *(v157 + 16) = v155;
              *(v157 + 24) = v142;
              v158 = swift_task_alloc();
              *(v1 + 608) = v158;
              *v158 = v1;
              v158[1] = sub_19A3901C4;
              v159 = *(v1 + 216);
              v160 = *(v1 + 200);
              v161 = &unk_19A57EAE8;
              v162 = sub_19A393D34;
            }

            else
            {
              sub_19A571CEC();
              (*v141)(v139, v138, v140);

              v163 = sub_19A571CDC();
              *(v1 + 624) = v163;
              if (qword_1ED824050 != -1)
              {
                swift_once();
              }

              v164 = sub_19A5723FC();
              __swift_project_value_buffer(v164, qword_1ED82BCF0);

              v165 = sub_19A5723DC();
              v166 = sub_19A57356C();

              if (os_log_type_enabled(v165, v166))
              {
                v168 = *(v1 + 184);
                v167 = *(v1 + 192);
                v193 = *(v1 + 176);
                v169 = *(v1 + 104);
                v170 = swift_slowAlloc();
                v171 = swift_slowAlloc();
                v194 = v171;
                *v170 = 136446466;
                *(v170 + 4) = sub_19A31F114(*(v169 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v169 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), &v194);
                *(v170 + 12) = 2082;
                sub_19A571CCC();
                v172 = sub_19A570FDC();
                v174 = v173;
                (*(v168 + 8))(v167, v193);
                v175 = sub_19A31F114(v172, v174, &v194);

                *(v170 + 14) = v175;
                _os_log_impl(&dword_19A2DE000, v165, v166, "%{public}s Created one shot request %{public}s", v170, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x19A902C50](v171, -1, -1);
                MEMORY[0x19A902C50](v170, -1, -1);
              }

              v176 = *(v1 + 104);
              v156 = swift_task_alloc();
              *(v1 + 632) = v156;
              v156[2] = v176;
              v156[3] = v163;
              v157 = swift_task_alloc();
              *(v1 + 640) = v157;
              *(v157 + 16) = v176;
              *(v157 + 24) = v163;
              v177 = swift_task_alloc();
              *(v1 + 648) = v177;
              *v177 = v1;
              v177[1] = sub_19A3909F4;
              v160 = *(v1 + 200);
              v159 = *(v1 + 208);
              v161 = &unk_19A57EAD8;
              v162 = sub_19A393BDC;
            }

            return MEMORY[0x1EEE6DE18](v159, v161, v156, v162, v157, 0, 0, v160);
          }
        }

        v100 = 0;
        v99 = 0;
        goto LABEL_42;
      }
    }

    v100 = 0;
    v99 = 1;
    goto LABEL_42;
  }

  v7 = *(v1 + 448);
  v8 = *(v1 + 96);

  v187 = sub_19A571E6C();
  v190 = v9;

  ImagesSequesteredLocalParameters = type metadata accessor for ImageGeneratingOperationGenerateImagesSequesteredLocalParameters();
  sub_19A33546C(v8 + *(ImagesSequesteredLocalParameters + 24), v7, &qword_1EAF9FDC8);
  v11 = sub_19A57112C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  v14 = *(v1 + 448);
  v15 = *(v1 + 456);
  if (v13 == 1)
  {
    sub_19A2F3FA0(v14, &qword_1EAF9FDC8);
    v16 = sub_19A57106C();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
LABEL_14:
    sub_19A2F3FA0(*(v1 + 456), &qword_1EAFA0C38);
    v33 = MEMORY[0x1E69A12B8];
    goto LABEL_16;
  }

  v28 = *(v1 + 432);
  v29 = *(v1 + 440);
  v30 = *(v1 + 424);
  sub_19A57111C();
  (*(v12 + 8))(v14, v11);
  sub_19A5710FC();
  (*(v28 + 8))(v29, v30);
  v31 = sub_19A57106C();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    goto LABEL_14;
  }

  (*(v32 + 32))(*(v1 + 496), *(v1 + 456), v31);
  v33 = MEMORY[0x1E69A12B0];
LABEL_16:
  v182 = v3;
  (*(*(v1 + 472) + 104))(*(v1 + 496), *v33, *(v1 + 464));
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v35 = *(v1 + 488);
  v34 = *(v1 + 496);
  v37 = *(v1 + 464);
  v36 = *(v1 + 472);
  v38 = sub_19A5723FC();
  __swift_project_value_buffer(v38, qword_1ED82BCF0);
  v183 = *(v36 + 16);
  v183(v35, v34, v37);

  v39 = sub_19A5723DC();
  v40 = sub_19A57356C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v1 + 488);
  if (v41)
  {
    v43 = *(v1 + 472);
    v44 = *(v1 + 480);
    v45 = *(v1 + 464);
    v46 = *(v1 + 104);
    v47 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v194 = v179;
    *v47 = 136446466;
    *(v47 + 4) = sub_19A31F114(*(v46 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v46 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), &v194);
    *(v47 + 12) = 2082;
    v183(v44, v42, v45);
    v48 = sub_19A572DAC();
    v50 = v49;
    v181 = *(v43 + 8);
    v181(v42, v45);
    v51 = sub_19A31F114(v48, v50, &v194);

    *(v47 + 14) = v51;
    _os_log_impl(&dword_19A2DE000, v39, v40, "%{public}s GenerativeModelsAvailibilityCheck using availabilityLanguage: %{public}s.", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v179, -1, -1);
    MEMORY[0x19A902C50](v47, -1, -1);
  }

  else
  {
    v53 = *(v1 + 464);
    v52 = *(v1 + 472);

    v181 = *(v52 + 8);
    v181(v42, v53);
  }

  v55 = *(v1 + 384);
  v54 = *(v1 + 392);
  v180 = *(v1 + 376);
  v56 = *(v1 + 360);
  v58 = *(v1 + 336);
  v57 = *(v1 + 344);
  v183(*(v1 + 480), *(v1 + 496), *(v1 + 464));

  sub_19A57175C();
  sub_19A57190C();
  (*(v55 + 8))(v54, v180);
  sub_19A57187C();
  v59 = *MEMORY[0x1E69A11A0];
  (*(v57 + 104))(v56, *MEMORY[0x1E69A11A0], v58);
  v60 = sub_19A57173C();
  v61 = *(v57 + 8);
  v61(v56, v58);
  if (v60)
  {
    v184 = *(v1 + 464);
    v188 = *(v1 + 496);
    v63 = *(v1 + 408);
    v62 = *(v1 + 416);
    v64 = *(v1 + 400);
    v65 = *(v1 + 368);
    v66 = *(v1 + 336);

    v61(v65, v66);
    (*(v63 + 8))(v62, v64);
    v181(v188, v184);
    v3 = v182;
    goto LABEL_23;
  }

  v185 = v61;
  v77 = *(v1 + 344);
  v78 = *(v1 + 352);
  v79 = *(v1 + 336);
  (*(v77 + 16))(v78, *(v1 + 368), v79);
  v80 = (*(v77 + 88))(v78, v79);
  if (v80 == *MEMORY[0x1E69A0EF8])
  {
    v81 = *(v1 + 352);
    v82 = (v1 + 328);
    v83 = *(v1 + 328);
    v84 = (v1 + 320);
    v85 = (v1 + 312);
    v86 = *(v1 + 312);
    v87 = *(v1 + 320);
    (*(*(v1 + 344) + 96))(v81, *(v1 + 336));
    (*(v87 + 32))(v83, v81, v86);
    v88 = sub_19A5716FC();
    v178 = sub_19A38CBE8(v88, MEMORY[0x1E69A0F90], MEMORY[0x1E69A0F10]);
    v89 = v190;
  }

  else
  {
    v89 = v190;
    if (v80 != *MEMORY[0x1E69A0F00])
    {
      v178 = MEMORY[0x1E69E7CC0];
      if (v80 != v59)
      {
        v185(*(v1 + 352), *(v1 + 336));
      }

      goto LABEL_36;
    }

    v101 = *(v1 + 352);
    v82 = (v1 + 304);
    v103 = *(v1 + 296);
    v102 = *(v1 + 304);
    v84 = (v1 + 296);
    v85 = (v1 + 288);
    v104 = *(v1 + 288);
    (*(*(v1 + 344) + 96))(v101, *(v1 + 336));
    (*(v103 + 32))(v102, v101, v104);
    v105 = sub_19A57171C();
    v178 = sub_19A38CBE8(v105, MEMORY[0x1E69A1168], MEMORY[0x1E69A1020]);
  }

  v106 = *v82;
  v107 = *v85;
  v108 = *v84;

  (*(v108 + 8))(v106, v107);
LABEL_36:
  v191 = *(v1 + 496);
  v109 = *(v1 + 464);
  v110 = *(v1 + 408);
  v111 = *(v1 + 416);
  v112 = *(v1 + 400);
  v113 = *(v1 + 368);
  v114 = *(v1 + 336);
  type metadata accessor for GeneratorError(0);
  sub_19A393954(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  swift_allocError();
  *v115 = v187;
  v115[1] = v89;
  v115[2] = v178;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v185(v113, v114);
  (*(v110 + 8))(v111, v112);
  v181(v191, v109);

  v129 = *(v1 + 8);

  return v129();
}

uint64_t sub_19A3901C4()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_19A391214;
  }

  else
  {
    v2 = sub_19A390314;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A390314()
{
  v1 = *(v0 + 568);

  sub_19A3558FC(v1);
  v2 = *(v0 + 616);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 88) + *(v0 + 672);
  sub_19A393C0C(*(v0 + 216), *(v0 + 224), type metadata accessor for ImageGenerator.Result);
  v7 = _s23GenerationConfigurationVMa();
  sub_19A33546C(v6 + *(v7 + 52), v5, &qword_1EAFA3300);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v8 = *(v0 + 552);
    v9 = *(v0 + 280);
    v10 = *(v0 + 264);
    v11 = *(v0 + 232);
    v12 = *(v0 + 144);

    v8(v10, v11);
    sub_19A393DCC(v9, type metadata accessor for ModelManagerInferenceProvider.Input);
    sub_19A2F3FA0(v12, &qword_1EAFA3300);
LABEL_10:
    v37 = *(v0 + 224);
    v39 = *v37;

    sub_19A393DCC(v37, type metadata accessor for ImageGenerator.Result);

    v38 = *(v0 + 8);

    return v38(v39);
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);
  sub_19A393C0C(*(v0 + 144), *(v0 + 168), type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  sub_19A33546C(v13 + *(v14 + 20), v17, &qword_1EAFA0C30);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    v18 = *(v0 + 552);
    v19 = *(v0 + 280);
    v20 = *(v0 + 264);
    v21 = *(v0 + 232);
    v22 = *(v0 + 168);
    v23 = *(v0 + 112);

    sub_19A393DCC(v22, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v18(v20, v21);
    sub_19A393DCC(v19, type metadata accessor for ModelManagerInferenceProvider.Input);
    sub_19A2F3FA0(v23, &qword_1EAFA0C30);
    goto LABEL_10;
  }

  v24 = *(v0 + 168);
  sub_19A393C0C(*(v0 + 112), *(v0 + 136), type metadata accessor for InferenceDiagnosticsAccessor);
  InferenceDiagnosticsAccessor.moveInferenceFrameData(using:)(v24);
  v25 = *(v0 + 552);
  v26 = *(v0 + 280);
  v27 = *(v0 + 264);
  v28 = *(v0 + 232);
  if (!v2)
  {
    v35 = *(v0 + 168);
    v36 = *(v0 + 136);

    sub_19A393DCC(v36, type metadata accessor for InferenceDiagnosticsAccessor);
    sub_19A393DCC(v35, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v25(v27, v28);
    sub_19A393DCC(v26, type metadata accessor for ModelManagerInferenceProvider.Input);
    goto LABEL_10;
  }

  v29 = *(v0 + 224);
  v30 = *(v0 + 280);
  v31 = *(v0 + 168);
  v32 = *(v0 + 136);

  sub_19A393DCC(v32, type metadata accessor for InferenceDiagnosticsAccessor);
  sub_19A393DCC(v31, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  sub_19A393DCC(v29, type metadata accessor for ImageGenerator.Result);
  v25(v27, v28);
  sub_19A393DCC(v30, type metadata accessor for ModelManagerInferenceProvider.Input);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_19A3909F4()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_19A391440;
  }

  else
  {
    v2 = sub_19A390B44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A390B44()
{

  v1 = *(v0 + 656);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 88) + *(v0 + 672);
  sub_19A393C0C(*(v0 + 208), *(v0 + 224), type metadata accessor for ImageGenerator.Result);
  v6 = _s23GenerationConfigurationVMa();
  sub_19A33546C(v5 + *(v6 + 52), v4, &qword_1EAFA3300);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 552);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    v10 = *(v0 + 232);
    v11 = *(v0 + 144);

    v7(v9, v10);
    sub_19A393DCC(v8, type metadata accessor for ModelManagerInferenceProvider.Input);
    sub_19A2F3FA0(v11, &qword_1EAFA3300);
LABEL_10:
    v36 = *(v0 + 224);
    v38 = *v36;

    sub_19A393DCC(v36, type metadata accessor for ImageGenerator.Result);

    v37 = *(v0 + 8);

    return v37(v38);
  }

  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  sub_19A393C0C(*(v0 + 144), *(v0 + 168), type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  sub_19A33546C(v12 + *(v13 + 20), v16, &qword_1EAFA0C30);
  if ((*(v15 + 48))(v16, 1, v14) == 1)
  {
    v17 = *(v0 + 552);
    v18 = *(v0 + 280);
    v19 = *(v0 + 264);
    v20 = *(v0 + 232);
    v21 = *(v0 + 168);
    v22 = *(v0 + 112);

    sub_19A393DCC(v21, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v17(v19, v20);
    sub_19A393DCC(v18, type metadata accessor for ModelManagerInferenceProvider.Input);
    sub_19A2F3FA0(v22, &qword_1EAFA0C30);
    goto LABEL_10;
  }

  v23 = *(v0 + 168);
  sub_19A393C0C(*(v0 + 112), *(v0 + 136), type metadata accessor for InferenceDiagnosticsAccessor);
  InferenceDiagnosticsAccessor.moveInferenceFrameData(using:)(v23);
  v24 = *(v0 + 552);
  v25 = *(v0 + 280);
  v26 = *(v0 + 264);
  v27 = *(v0 + 232);
  if (!v1)
  {
    v34 = *(v0 + 168);
    v35 = *(v0 + 136);

    sub_19A393DCC(v35, type metadata accessor for InferenceDiagnosticsAccessor);
    sub_19A393DCC(v34, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
    v24(v26, v27);
    sub_19A393DCC(v25, type metadata accessor for ModelManagerInferenceProvider.Input);
    goto LABEL_10;
  }

  v28 = *(v0 + 224);
  v29 = *(v0 + 280);
  v30 = *(v0 + 168);
  v31 = *(v0 + 136);

  sub_19A393DCC(v31, type metadata accessor for InferenceDiagnosticsAccessor);
  sub_19A393DCC(v30, type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration);
  sub_19A393DCC(v28, type metadata accessor for ImageGenerator.Result);
  v24(v26, v27);
  sub_19A393DCC(v29, type metadata accessor for ModelManagerInferenceProvider.Input);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_19A391214()
{
  v1 = v0[69];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[29];
  sub_19A3558FC(v0[71]);

  v1(v3, v4);
  sub_19A393DCC(v2, type metadata accessor for ModelManagerInferenceProvider.Input);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A391440()
{
  v1 = v0[69];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[29];

  v1(v3, v4);
  sub_19A393DCC(v2, type metadata accessor for ModelManagerInferenceProvider.Input);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A39165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_19A33558C;

  return sub_19A39244C(a1, a3, a4, a5);
}

uint64_t sub_19A391724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19A33558C;

  return sub_19A391A68(a1, a3);
}

void sub_19A3917D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_19A57102C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v9 = sub_19A5723FC();
  __swift_project_value_buffer(v9, qword_1ED82BCF0);

  v18 = sub_19A5723DC();
  v10 = sub_19A57356C();

  if (os_log_type_enabled(v18, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_19A31F114(*(a1 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(a1 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), &v19);
    *(v11 + 12) = 2082;
    a3();
    v13 = sub_19A570FDC();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = sub_19A31F114(v13, v15, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_19A2DE000, v18, v10, "%{public}s Cancelling request %{public}s via Swift.Task", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v12, -1, -1);
    MEMORY[0x19A902C50](v11, -1, -1);
  }

  else
  {
    v17 = v18;
  }
}

uint64_t sub_19A391A68(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for ModelManagerInferenceProvider.Output(0);
  v3[7] = swift_task_alloc();
  v4 = sub_19A571C6C();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_19A57102C();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A391BF0, 0, 0);
}

uint64_t sub_19A391BF0()
{
  v19 = v0;
  sub_19A4331E4();
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = sub_19A5723FC();
  v0[14] = __swift_project_value_buffer(v1, qword_1ED82BCF0);

  v2 = sub_19A5723DC();
  v3 = sub_19A57356C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_19A31F114(*(v7 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v7 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), v18);
    *(v8 + 12) = 2082;
    sub_19A571CCC();
    v10 = sub_19A570FDC();
    v12 = v11;
    (*(v5 + 8))(v4, v6);
    v13 = sub_19A31F114(v10, v12, v18);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_19A2DE000, v2, v3, "%{public}s Executing one shot request %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  v17 = (*MEMORY[0x1E69B2650] + MEMORY[0x1E69B2650]);
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_19A391EDC;
  v15 = v0[10];

  return v17(v15);
}

uint64_t sub_19A391EDC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_19A3923BC;
  }

  else
  {
    v2 = sub_19A391FF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A391FF0()
{
  v29 = v0;

  v1 = sub_19A5723DC();
  v2 = sub_19A57356C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_19A31F114(*(v6 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v6 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), v28);
    *(v7 + 12) = 2082;
    sub_19A571CCC();
    v9 = sub_19A570FDC();
    v11 = v10;
    (*(v4 + 8))(v3, v5);
    v12 = sub_19A31F114(v9, v11, v28);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_19A2DE000, v1, v2, "%{public}s Completed one shot request %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v8, -1, -1);
    MEMORY[0x19A902C50](v7, -1, -1);
  }

  v13 = v0[16];
  sub_19A45B8D4(v0[7]);
  v14 = v13;
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14)
  {
    (*(v16 + 8))(v0[10], v0[8]);

    v18 = v0[1];
  }

  else
  {
    v19 = v0[7];
    v20 = v0[5];
    sub_19A33546C(v19 + *(v0[6] + 28), v20, &qword_1EAFA0C28);
    v21 = type metadata accessor for ImageGenerator.Result(0);
    v22 = *(*(v21 - 8) + 48);
    LODWORD(v20) = v22(v20, 1, v21);
    sub_19A393DCC(v19, type metadata accessor for ModelManagerInferenceProvider.Output);
    (*(v16 + 8))(v15, v17);
    v23 = v0[5];
    v24 = v0[2];
    if (v20 == 1)
    {
      *v24 = MEMORY[0x1E69E7CC0];
      v25 = *(v21 + 20);
      v26 = type metadata accessor for InferenceDiagnosticsAccessor();
      (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
      if (v22(v23, 1, v21) != 1)
      {
        sub_19A2F3FA0(v0[5], &qword_1EAFA0C28);
      }
    }

    else
    {
      sub_19A393C0C(v0[5], v0[2], type metadata accessor for ImageGenerator.Result);
    }

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_19A3923BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A39244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = type metadata accessor for ModelManagerInferenceProvider.Output(0);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C20);
  v5[12] = swift_task_alloc();
  v6 = sub_19A571C6C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_19A571D0C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_19A571D2C();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v9 = sub_19A57102C();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3926D4, 0, 0);
}

uint64_t sub_19A3926D4()
{
  v23 = v0;
  sub_19A4331E4();
  v1 = v0[26];
  v2 = type metadata accessor for ImageGenerator.Result(0);
  v0[27] = v2;
  v3 = *(v2 - 8);
  v0[28] = v3;
  (*(v3 + 56))(v1, 1, 1, v2);
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v4 = sub_19A5723FC();
  v0[29] = __swift_project_value_buffer(v4, qword_1ED82BCF0);

  v5 = sub_19A5723DC();
  v6 = sub_19A57356C();

  v7 = &qword_1EAF9F000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_19A31F114(*(v11 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix), *(v11 + OBJC_IVAR____TtC16VisualGeneration30ModelManagerDiffusionOperation__loggingPrefix + 8), v22);
    *(v12 + 12) = 2082;
    sub_19A571D3C();
    v14 = sub_19A570FDC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_19A31F114(v14, v16, v22);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_19A2DE000, v5, v6, "%{public}s Executing streaming request %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v13, -1, -1);
    v18 = v12;
    v7 = &qword_1EAF9F000;
    MEMORY[0x19A902C50](v18, -1, -1);
  }

  sub_19A571D4C();
  sub_19A571D1C();
  v0[30] = v7[93];
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_19A392A84;
  v20 = v0[12];

  return MEMORY[0x1EEE1F350](v20);
}

uint64_t sub_19A392A84()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_19A393414;
  }

  else
  {
    v2 = sub_19A392B98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A392B98()
{
  v75 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_19A2F3FA0(v3, &qword_1EAFA0C20);

    v4 = sub_19A5723DC();
    v5 = sub_19A57356C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 184);
      v6 = *(v0 + 192);
      v8 = *(v0 + 176);
      v9 = *(v0 + 72) + *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v74[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_19A31F114(*v9, *(v9 + 8), v74);
      *(v10 + 12) = 2082;
      sub_19A571D3C();
      v12 = sub_19A570FDC();
      v14 = v13;
      (*(v7 + 8))(v6, v8);
      v15 = sub_19A31F114(v12, v14, v74);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_19A2DE000, v4, v5, "%{public}s Completed streaming request %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v11, -1, -1);
      MEMORY[0x19A902C50](v10, -1, -1);
    }

    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = *(v0 + 160);
    v73 = *(v0 + 168);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    sub_19A33546C(v18, v19, &qword_1EAFA0C28);
    v72 = *(v17 + 48);
    LODWORD(v16) = v72(v19, 1, v16);
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v73, v21);
    sub_19A2F3FA0(v18, &qword_1EAFA0C28);
    if (v16 == 1)
    {
      v25 = *(v0 + 216);
      v26 = *(v0 + 200);
      v27 = *(v0 + 40);
      *v27 = MEMORY[0x1E69E7CC0];
      v28 = *(v25 + 20);
      v29 = type metadata accessor for InferenceDiagnosticsAccessor();
      (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
      if (v72(v26, 1, v25) != 1)
      {
        sub_19A2F3FA0(*(v0 + 200), &qword_1EAFA0C28);
      }
    }

    else
    {
      sub_19A393C0C(*(v0 + 200), *(v0 + 40), type metadata accessor for ImageGenerator.Result);
    }

    v50 = *(v0 + 8);
    goto LABEL_14;
  }

  (*(v2 + 32))(*(v0 + 120), v3, v1);

  v30 = sub_19A5723DC();
  v31 = sub_19A57354C();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = *(v0 + 184);
    v32 = *(v0 + 192);
    v34 = *(v0 + 176);
    v35 = *(v0 + 72) + *(v0 + 240);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v74[0] = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_19A31F114(*v35, *(v35 + 8), v74);
    *(v36 + 12) = 2082;
    sub_19A571D3C();
    v38 = sub_19A570FDC();
    v40 = v39;
    (*(v33 + 8))(v32, v34);
    v41 = sub_19A31F114(v38, v40, v74);

    *(v36 + 14) = v41;
    _os_log_impl(&dword_19A2DE000, v30, v31, "%{public}s request %{public}s read next output data", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v37, -1, -1);
    MEMORY[0x19A902C50](v36, -1, -1);
  }

  v42 = *(v0 + 256);
  sub_19A4331E4();
  if (v42)
  {
    v43 = *(v0 + 208);
    v45 = *(v0 + 160);
    v44 = *(v0 + 168);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v48 = *(v0 + 128);
    v49 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v49 + 8))(v47, v48);
    (*(v45 + 8))(v44, v46);
    sub_19A2F3FA0(v43, &qword_1EAFA0C28);

    v50 = *(v0 + 8);
LABEL_14:

    return v50();
  }

  sub_19A45B8D4(*(v0 + 88));
  v52 = *(v0 + 88);
  v53 = *v52;
  v54 = v52[1];
  v55 = *(v52 + 16);
  v56 = sub_19A5723DC();
  v57 = sub_19A57356C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v74[0] = v59;
    *v58 = 136446467;
    *(v58 + 4) = sub_19A31F114(0xD00000000000001BLL, 0x800000019A597B90, v74);
    *(v58 + 12) = 2081;
    *(v0 + 16) = v53;
    *(v0 + 24) = v54;
    *(v0 + 32) = v55;
    v60 = sub_19A572DAC();
    v62 = sub_19A31F114(v60, v61, v74);

    *(v58 + 14) = v62;
    _os_log_impl(&dword_19A2DE000, v56, v57, "%{public}s: %{private}s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v59, -1, -1);
    MEMORY[0x19A902C50](v58, -1, -1);
  }

  v64 = *(v0 + 112);
  v63 = *(v0 + 120);
  v65 = *(v0 + 104);
  v66 = *(v0 + 88);
  (*(v0 + 56))(v53, v54, v55);
  (*(v64 + 8))(v63, v65);
  if (*(v66 + 17) == 1)
  {
    v67 = *(v0 + 208);
    v69 = *(v0 + 80);
    v68 = *(v0 + 88);
    sub_19A2F3FA0(v67, &qword_1EAFA0C28);
    sub_19A393AC0(v68 + *(v69 + 28), v67);
  }

  else
  {
    sub_19A393DCC(*(v0 + 88), type metadata accessor for ModelManagerInferenceProvider.Output);
  }

  v70 = swift_task_alloc();
  *(v0 + 248) = v70;
  *v70 = v0;
  v70[1] = sub_19A392A84;
  v71 = *(v0 + 96);

  return MEMORY[0x1EEE1F350](v71);
}

uint64_t sub_19A393414()
{
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v3 + 8))(v2, v4);
  sub_19A2F3FA0(v1, &qword_1EAFA0C28);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A393540()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration21ModelManagerOperation_id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_19A393678(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for GenerationRecipe(0) + 20) + 50))
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_19A38CEF8(a1);
  }

  return v2 & 1;
}

uint64_t sub_19A3936C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ModelManagerDiffusionOperation(0);
  v4 = swift_allocObject();
  result = sub_19A38DF9C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_19A393714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v4;
  v9[1] = sub_19A33558C;

  return sub_19A38D044(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_19A3937F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A34F28C;

  return sub_19A38E0F8(a1, a2, a3);
}

uint64_t sub_19A3938A4(uint64_t a1)
{
  result = sub_19A393954(&qword_1EAF9F2E0, type metadata accessor for ModelManagerDiffusionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A3938FC(uint64_t a1)
{
  result = sub_19A393954(&qword_1EAF9F2D8, type metadata accessor for ModelManagerDiffusionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A393954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A3939E4(uint64_t a1)
{
  *(a1 + 8) = sub_19A393954(&qword_1EAF9F350, type metadata accessor for InProcessDiffusionOperation);
  result = sub_19A393954(&qword_1EAF9F358, type metadata accessor for InProcessDiffusionOperation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A393A68(uint64_t a1)
{
  result = sub_19A393954(&qword_1EAF9F348, type metadata accessor for InProcessDiffusionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A393AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A393B30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A33558C;

  return sub_19A391724(a1, v5, v4);
}

uint64_t sub_19A393C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A393C74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A33558C;

  return sub_19A39165C(a1, v4, v5, v7, v6);
}

uint64_t sub_19A393D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A393DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A393E2C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_19A2F759C;

  return sub_19A4CD30C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_19A393F1C(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v4 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v3 + 48) = *(a2 + 8);
  *(v3 + 32) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_19A393F50, 0, 0);
}

uint64_t sub_19A393F50()
{
  v25 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      [*(v0 + 24) extent];
      sub_19A39AAB4(&v23, v2, v3);
      Width = v23;
      Height = v24;
    }

    else
    {
      Width = CVPixelBufferGetWidth(*(v0 + 24));
      Height = CVPixelBufferGetHeight(v1);
    }
  }

  else
  {
    Width = CGImageGetWidth(*(v0 + 24));
    Height = CGImageGetHeight(v1);
  }

  if (Width != *(v0 + 32) || Height != *(v0 + 40))
  {
    v7 = *(v0 + 24);
    if (*(v0 + 48))
    {
      if (*(v0 + 48) == 1)
      {
        [*(v0 + 24) extent];
        sub_19A39AAB4(&v23, v8, v9);
        v11 = v23;
        v10 = v24;
LABEL_19:
        v19 = *(v0 + 32);
        v18 = *(v0 + 40);
        sub_19A394160();
        swift_allocError();
        *v20 = v11;
        *(v20 + 8) = v10;
        *(v20 + 16) = v19;
        *(v20 + 24) = v18;
        *(v20 + 32) = 1;
        swift_willThrow();
        v21 = *(v0 + 8);

        return v21();
      }

      v11 = CVPixelBufferGetWidth(*(v0 + 24));
      v17 = CVPixelBufferGetHeight(v7);
    }

    else
    {
      v11 = CGImageGetWidth(*(v0 + 24));
      v17 = CGImageGetHeight(v7);
    }

    v10 = v17;
    goto LABEL_19;
  }

  v12 = *(v0 + 48);
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  *v14 = v13;
  *(v14 + 8) = v12;
  v22 = *(v0 + 8);
  v15 = v13;

  return v22();
}

unint64_t sub_19A394160()
{
  result = qword_1EAFA0C58;
  if (!qword_1EAFA0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0C58);
  }

  return result;
}

CVPixelBufferRef sub_19A3941B4(size_t *a1, OSType a2)
{
  pixelBufferOut[15] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  v6 = *MEMORY[0x1E69660E8];
  *(inited + 32) = *MEMORY[0x1E69660E8];
  v7 = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  v8 = *MEMORY[0x1E69660D8];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = v6;
  v10 = v8;
  v11 = sub_19A32F574(MEMORY[0x1E69E7CC0]);
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C68);
  *(inited + 80) = v11;
  sub_19A32F6B0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E80);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_19A39690C(&qword_1ED823F10, type metadata accessor for CFString);
  v12 = sub_19A572ADC();

  pixelBufferOut[0] = 0;
  v13 = CVPixelBufferCreate(0, v4, v3, a2, v12, pixelBufferOut);
  v14 = pixelBufferOut[0];
  if (v13)
  {
    v15 = v13;
    sub_19A3968B8();
    swift_allocError();
    v17 = 0;
  }

  else
  {
    if (pixelBufferOut[0])
    {
      v18 = pixelBufferOut[0];
      goto LABEL_6;
    }

    sub_19A57395C();

    v23 = sub_19A573EDC();
    v24 = v20;
    MEMORY[0x19A900A50](2127904, 0xE300000000000000);
    v21 = sub_19A573EDC();
    MEMORY[0x19A900A50](v21);

    MEMORY[0x19A900A50](v23, v24);

    MEMORY[0x19A900A50](32, 0xE100000000000000);
    v22 = sub_19A474A3C(a2);
    MEMORY[0x19A900A50](v22);

    MEMORY[0x19A900A50](0xD000000000000022, 0x800000019A597BB0);
    v15 = 8257;
    v17 = 0xE200000000000000;
    sub_19A2F1130();
    swift_allocError();
  }

  *v16 = v15;
  *(v16 + 8) = v17;
  *(v16 + 16) = 1;
  swift_willThrow();
LABEL_6:

  return v14;
}

__CVBuffer *sub_19A3944F8(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 4);
  __src = *a3;
  v7 = sub_19A3941B4(&__src, v6);
  v8 = v7;
  if (v3)
  {
    return v8;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(v7);
  Height = CVPixelBufferGetHeight(v8);
  v11 = Height * BytesPerRow;
  if ((Height * BytesPerRow) >> 64 != (Height * BytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_42;
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_16:
      sub_19A3968B8();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 0;
      v19 = 7;
      goto LABEL_17;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 == v11)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 != v11)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (BYTE6(a2) != v11)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (CVPixelBufferLockBaseAddress(v8, 0))
  {
    *&__src = 0;
    *(&__src + 1) = 0xE000000000000000;
    sub_19A57395C();
    MEMORY[0x19A900A50](0xD00000000000002ELL, 0x800000019A597BE0);
    type metadata accessor for CVPixelBufferLockFlags(0);
    sub_19A573ACC();
    v17 = __src;
    sub_19A2F1130();
    swift_allocError();
    *v18 = v17;
    v19 = 1;
LABEL_17:
    *(v18 + 16) = v19;
    swift_willThrow();
LABEL_18:

    return v8;
  }

  result = CVPixelBufferGetBaseAddress(v8);
  if (!result)
  {
    sub_19A3968B8();
    swift_allocError();
    *v21 = xmmword_19A57B400;
    *(v21 + 16) = 7;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(v8, 0);
    goto LABEL_18;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_40;
    }

    v22 = result;
    v23 = *(a1 + 16);
    v24 = *(a1 + 24);
    v25 = sub_19A57096C();
    if (v25)
    {
      v26 = sub_19A57099C();
      if (__OFSUB__(v23, v26))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v25 += v23 - v26;
    }

    v15 = __OFSUB__(v24, v23);
    v27 = v24 - v23;
    if (v15)
    {
      goto LABEL_45;
    }

    a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    result = sub_19A57098C();
    if (v25)
    {
LABEL_36:
      if (result >= v27)
      {
        v31 = v27;
      }

      else
      {
        v31 = result;
      }

      memmove(v22, v25, v31);
      goto LABEL_40;
    }

    __break(1u);
  }

  else if (!v12)
  {
    *&__src = a1;
    WORD4(__src) = a2;
    BYTE10(__src) = BYTE2(a2);
    BYTE11(__src) = BYTE3(a2);
    BYTE12(__src) = BYTE4(a2);
    BYTE13(__src) = BYTE5(a2);
    memcpy(result, &__src, BYTE6(a2));
LABEL_40:
    CVPixelBufferUnlockBaseAddress(v8, 0);
    return v8;
  }

  v27 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = result;
  v28 = sub_19A57096C();
  if (!v28)
  {
LABEL_48:
    result = sub_19A57098C();
    goto LABEL_49;
  }

  v29 = v28;
  v30 = sub_19A57099C();
  if (__OFSUB__(a1, v30))
  {
    goto LABEL_46;
  }

  v25 = (a1 - v30 + v29);
  result = sub_19A57098C();
  if (v25)
  {
    goto LABEL_36;
  }

LABEL_49:
  __break(1u);
  return result;
}

CVPixelBufferRef sub_19A394880(void *a1, CVPixelBufferRef a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  v12 = *(a3 + 24);
  a = *a4;
  b = *(a4 + 8);
  v16 = *(a4 + 16);
  [a1 extent];
  if (*(a3 + 32))
  {
    [a1 extent];
    v10 = v21;
    v11 = v22;
    v13 = v23;
    v12 = v24;
  }

  else
  {
    v33 = v20;
    v34 = v19;
    v35 = v18;
    v36 = v17;
    v56.origin.x = v10;
    v56.origin.y = v11;
    v56.size.width = v13;
    v56.size.height = v12;
    if (CGRectIsEmpty(v56) || (v57.origin.x = v10, v57.origin.y = v11, v57.size.width = v13, v57.size.height = v12, CGRectIsInfinite(v57)) || (v58.origin.x = v36, v58.origin.y = v35, v58.size.width = v34, v58.size.height = v33, v61.origin.x = v10, v61.origin.y = v11, v61.size.width = v13, v61.size.height = v12, !CGRectContainsRect(v58, v61)))
    {
      sub_19A3968B8();
      swift_allocError();
      *v37 = xmmword_19A57B410;
      *(v37 + 16) = 7;
      swift_willThrow();
      return a2;
    }
  }

  if (v16)
  {
    sub_19A39AAB4(&t1, v13, v12);
    a = t1.a;
    b = t1.b;
  }

  v25 = -v10;
  v26 = -v11;
  if (!a5)
  {
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    CGAffineTransformTranslate(&t2, &t1, v25, v26);
    t1 = t2;
    CGAffineTransformScale(&t2, &t1, *&a / v13, *&b / v12);
    v38 = *&t2.a;
    v39 = *&t2.c;
    v40 = *&t2.tx;
    goto LABEL_17;
  }

  if (a5 != 1)
  {
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    CGAffineTransformTranslate(&t2, &t1, v25, v26);
    v49 = *&t2.a;
    v50 = *&t2.c;
    tx = t2.tx;
    ty = t2.ty;
    v59.origin.x = v10;
    v59.origin.y = v11;
    v59.size.width = v13;
    v59.size.height = v12;
    Width = CGRectGetWidth(v59);
    v60.origin.x = v10;
    v60.origin.y = v11;
    v60.size.width = v13;
    v60.size.height = v12;
    if (CGRectGetHeight(v60) <= Width)
    {
      goto LABEL_8;
    }

LABEL_15:
    v30 = *&a / v13;
    v32 = (*&b - v12 * v30) * 0.5;
    v31 = 0.0;
    goto LABEL_16;
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  CGAffineTransformTranslate(&t2, &t1, v25, v26);
  v49 = *&t2.a;
  v50 = *&t2.c;
  tx = t2.tx;
  ty = t2.ty;
  v54.origin.x = v10;
  v54.origin.y = v11;
  v54.size.width = v13;
  v54.size.height = v12;
  v29 = CGRectGetWidth(v54);
  v55.origin.x = v10;
  v55.origin.y = v11;
  v55.size.width = v13;
  v55.size.height = v12;
  if (CGRectGetHeight(v55) <= v29)
  {
    goto LABEL_15;
  }

LABEL_8:
  v30 = *&b / v12;
  v31 = (*&a - v13 * v30) * 0.5;
  v32 = 0.0;
LABEL_16:
  CGAffineTransformMakeTranslation(&t1, v31, v32);
  v47 = *&t1.c;
  v48 = *&t1.a;
  v46 = *&t1.tx;
  *&t1.a = v49;
  *&t1.c = v50;
  t1.tx = tx;
  t1.ty = ty;
  CGAffineTransformScale(&t2, &t1, v30, v30);
  t1 = t2;
  *&t2.a = v48;
  *&t2.c = v47;
  *&t2.tx = v46;
  CGAffineTransformConcat(&v51, &t1, &t2);
  v38 = *&v51.a;
  v39 = *&v51.c;
  v40 = *&v51.tx;
LABEL_17:
  *&t1.a = v38;
  *&t1.c = v39;
  *&t1.tx = v40;
  v42 = [a1 imageByApplyingTransform_];
  t1.a = a;
  t1.b = b;
  v43 = sub_19A3941B4(&t1, a2);
  if (v5)
  {
  }

  else
  {
    a2 = v43;
    v44 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [v44 render:v42 toCVPixelBuffer:a2];
  }

  return a2;
}

unint64_t sub_19A394C60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000018;
    v5 = 0x6564695665726F63;
    if (a1 == 8)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    if (a1 == 5)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x7865746E6F436F6ELL;
    v2 = 0xD000000000000016;
    if (a1 != 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19A394DC4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v67 = a4;
  v65 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D48);
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D50);
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D58);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v39 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D60);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v39 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D68);
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D70);
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D78);
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D80);
  v51 = *(v16 - 8);
  v52 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D88);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D90);
  v48 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0D98);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v25 = &v39 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A397DB4();
  sub_19A5741AC();
  if (v67 <= 3u)
  {
    if (v67 <= 1u)
    {
      if (v67)
      {
        v71 = 1;
        sub_19A3980A8();
        v34 = v68;
        sub_19A573DAC();
        v35 = v50;
        sub_19A573E8C();
        (*(v49 + 8))(v20, v35);
        return (*(v66 + 8))(v25, v34);
      }

      else
      {
        v70 = 0;
        sub_19A3980FC();
        v26 = v68;
        sub_19A573DAC();
        sub_19A573E9C();
        (*(v48 + 8))(v23, v21);
        return (*(v66 + 8))(v25, v26);
      }
    }

    v29 = v25;
    if (v67 == 2)
    {
      v72 = 2;
      sub_19A398054();
      v28 = v68;
      sub_19A573DAC();
      v33 = v52;
      sub_19A573E8C();
      (*(v51 + 8))(v18, v33);
      return (*(v66 + 8))(v29, v28);
    }

    v73 = 3;
    sub_19A398000();
    v30 = v53;
    v28 = v68;
    sub_19A573DAC();
    v31 = v55;
    sub_19A573E8C();
    v32 = v54;
LABEL_15:
    (*(v32 + 8))(v30, v31);
    return (*(v66 + 8))(v29, v28);
  }

  if (v67 <= 5u)
  {
    v28 = v68;
    v29 = v25;
    if (v67 == 4)
    {
      v77 = 7;
      sub_19A397EB0();
      v30 = v56;
      sub_19A573DAC();
      v31 = v58;
      sub_19A573E2C();
      v32 = v57;
    }

    else
    {
      v78 = 8;
      sub_19A397E5C();
      v30 = v59;
      sub_19A573DAC();
      v31 = v61;
      sub_19A573E6C();
      v32 = v60;
    }

    goto LABEL_15;
  }

  v28 = v68;
  v29 = v25;
  if (v67 == 6)
  {
    v79 = 9;
    sub_19A397E08();
    v30 = v62;
    sub_19A573DAC();
    v31 = v64;
    sub_19A573E8C();
    v32 = v63;
    goto LABEL_15;
  }

  if (v69 | v65)
  {
    if (v69 ^ 1 | v65)
    {
      v76 = 6;
      sub_19A397F04();
      v38 = v45;
      sub_19A573DAC();
      (*(v46 + 8))(v38, v47);
    }

    else
    {
      v75 = 5;
      sub_19A397F58();
      v36 = v42;
      sub_19A573DAC();
      (*(v43 + 8))(v36, v44);
    }
  }

  else
  {
    v74 = 4;
    sub_19A397FAC();
    v37 = v39;
    sub_19A573DAC();
    (*(v40 + 8))(v37, v41);
  }

  return (*(v66 + 8))(v25, v28);
}

uint64_t sub_19A3958B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A396B04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A3958E4(uint64_t a1)
{
  v2 = sub_19A397DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395920(uint64_t a1)
{
  v2 = sub_19A397DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395970(uint64_t a1)
{
  v2 = sub_19A398000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3959AC(uint64_t a1)
{
  v2 = sub_19A398000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3959F8(uint64_t a1)
{
  v2 = sub_19A397E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395A34(uint64_t a1)
{
  v2 = sub_19A397E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395A70(uint64_t a1)
{
  v2 = sub_19A397F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395AAC(uint64_t a1)
{
  v2 = sub_19A397F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395AE8(uint64_t a1)
{
  v2 = sub_19A397FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395B24(uint64_t a1)
{
  v2 = sub_19A397FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A395C00(uint64_t a1)
{
  v2 = sub_19A397EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395C3C(uint64_t a1)
{
  v2 = sub_19A397EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395C78(uint64_t a1)
{
  v2 = sub_19A397F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395CB4(uint64_t a1)
{
  v2 = sub_19A397F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F436E7275746572 && a2 == 0xEA00000000006564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A395D9C(uint64_t a1)
{
  v2 = sub_19A3980A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395DD8(uint64_t a1)
{
  v2 = sub_19A3980A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A395EC8(uint64_t a1)
{
  v2 = sub_19A3980FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A395F04(uint64_t a1)
{
  v2 = sub_19A3980FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A395F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A395FC4(uint64_t a1)
{
  v2 = sub_19A398054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A396000(uint64_t a1)
{
  v2 = sub_19A398054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A39603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A3960C4(uint64_t a1)
{
  v2 = sub_19A397E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A396100(uint64_t a1)
{
  v2 = sub_19A397E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A39613C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19A396E44(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

__CVBuffer *sub_19A39618C()
{
  v2 = v1;
  v3 = v0;
  v59 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_19A57076C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  if (CVPixelBufferGetPixelFormatType(v0) != 1111970369)
  {
    sub_19A3968B8();
    swift_allocError();
    *v16 = 0xD000000000000035;
    *(v16 + 8) = 0x800000019A597C10;
    v17 = 4;
    goto LABEL_5;
  }

  v14 = CVPixelBufferLockBaseAddress(v0, 1uLL);
  if (v14)
  {
    v15 = v14;
    sub_19A3968B8();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    v17 = 6;
LABEL_5:
    *(v16 + 16) = v17;
    swift_willThrow();
    return v2;
  }

  v55 = v8;
  Width = CVPixelBufferGetWidth(v0);
  Height = CVPixelBufferGetHeight(v0);
  result = CVPixelBufferGetBaseAddress(v0);
  if (result)
  {
    if (((Height | Width) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v21 = result;
    BytesPerRow = CVPixelBufferGetBytesPerRow(v3);
    rgbaSrc.data = v21;
    rgbaSrc.height = Height;
    rgbaSrc.width = Width;
    rgbaSrc.rowBytes = BytesPerRow;
    rgbaDst.data = Width;
    rgbaDst.height = Height;
    v23 = sub_19A3941B4(&rgbaDst, 0x42475241u);
    if (v1)
    {
LABEL_28:
      CVPixelBufferUnlockBaseAddress(v3, 1uLL);
      return v2;
    }

    v2 = v23;
    v24 = CVPixelBufferLockBaseAddress(v23, 0);
    if (v24)
    {
      v25 = v24;
      sub_19A3968B8();
      swift_allocError();
      *v26 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 6;
      swift_willThrow();
LABEL_27:

      goto LABEL_28;
    }

    result = CVPixelBufferGetBaseAddress(v2);
    v54 = result;
    if (result)
    {
      v27 = CVPixelBufferGetBytesPerRow(v2);
      rgbaDst.data = v54;
      rgbaDst.height = Height;
      rgbaDst.width = Width;
      rgbaDst.rowBytes = v27;
      *rgbaBackgroundColorPtr = -1;
      v28 = vImageFlatten_RGBA8888(&rgbaSrc, &rgbaDst, rgbaBackgroundColorPtr, 1, 0);
      if (!v28)
      {
        CVPixelBufferUnlockBaseAddress(v2, 0);
        CVPixelBufferUnlockBaseAddress(v3, 1uLL);
        return v2;
      }

      Width = v28;
      sub_19A57075C();
      v29 = v55;
      if ((*(v55 + 48))(v6, 1, v7) != 1)
      {
        (*(v29 + 32))(v13, v6, v7);
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v35 = sub_19A5723FC();
        __swift_project_value_buffer(v35, qword_1ED82BCF0);
        v36 = *(v29 + 16);
        (v36)(v11, v13, v7);
        v37 = sub_19A5723DC();
        v53 = sub_19A57355C();
        v38 = os_log_type_enabled(v37, v53);
        v54 = v36;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v52 = v39;
          v51 = swift_slowAlloc();
          *v39 = 138412290;
          sub_19A39690C(&qword_1EAFA0C80, MEMORY[0x1E69E5B48]);
          swift_allocError();
          v50 = v37;
          v40 = v29;
          (v54)(v41, v11, v7);
          v42 = _swift_stdlib_bridgeErrorToNSError();
          v43 = v11;
          v44 = *(v40 + 8);
          v44(v43, v7);
          v46 = v51;
          v45 = v52;
          *(v52 + 1) = v42;
          *v46 = v42;
          v47 = v50;
          _os_log_impl(&dword_19A2DE000, v50, v53, "vImageFlatten_RGBA8888 returned error %@", v45, 0xCu);
          sub_19A2F3FA0(v46, &qword_1EAF9FD28);
          MEMORY[0x19A902C50](v46, -1, -1);
          MEMORY[0x19A902C50](v52, -1, -1);
        }

        else
        {

          v48 = v11;
          v44 = *(v29 + 8);
          v44(v48, v7);
        }

        sub_19A39690C(&qword_1EAFA0C80, MEMORY[0x1E69E5B48]);
        swift_allocError();
        (v54)(v49, v13, v7);
        swift_willThrow();
        v44(v13, v7);
        goto LABEL_26;
      }

      sub_19A2F3FA0(v6, &qword_1EAFA0C78);
      if (qword_1ED824050 == -1)
      {
LABEL_16:
        v30 = sub_19A5723FC();
        __swift_project_value_buffer(v30, qword_1ED82BCF0);
        v31 = sub_19A5723DC();
        v32 = sub_19A57355C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134217984;
          *(v33 + 4) = Width;
          _os_log_impl(&dword_19A2DE000, v31, v32, "vImageFlatten_RGBA8888 returned unusual error code %ld", v33, 0xCu);
          MEMORY[0x19A902C50](v33, -1, -1);
        }

        sub_19A3968B8();
        swift_allocError();
        *v34 = Width;
        *(v34 + 8) = 0;
        *(v34 + 16) = 5;
        swift_willThrow();
LABEL_26:
        CVPixelBufferUnlockBaseAddress(v2, 0);
        goto LABEL_27;
      }

LABEL_30:
      swift_once();
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_19A3968B8()
{
  result = qword_1EAFA0C70;
  if (!qword_1EAFA0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0C70);
  }

  return result;
}

uint64_t sub_19A39690C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_16VisualGeneration16PixelBufferErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_19A396970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A3969B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_19A3969FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

ValueMetadata *type metadata accessor for PixelBufferError()
{
  return &type metadata for PixelBufferError;
}

{
  return &type metadata for PixelBufferError;
}

unint64_t sub_19A396A24(void *a1)
{
  a1[1] = sub_19A396A5C();
  a1[2] = sub_19A396AB0();
  result = sub_19A3968B8();
  a1[3] = result;
  return result;
}

unint64_t sub_19A396A5C()
{
  result = qword_1EAFA0C88;
  if (!qword_1EAFA0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0C88);
  }

  return result;
}

unint64_t sub_19A396AB0()
{
  result = qword_1EAFA0C90;
  if (!qword_1EAFA0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0C90);
  }

  return result;
}

uint64_t sub_19A396B04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865746E6F436F6ELL && a2 == 0xE900000000000074;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A597C50 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000019A597C70 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A597C90 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A597CB0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A597CD0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000019A597CF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000019A597D10 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A597D30 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6564695665726F63 && a2 == 0xEE00726F7272456FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_19A396E44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C98);
  v3 = *(v2 - 8);
  v88 = v2;
  v89 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CA0);
  v86 = *(v5 - 8);
  v87 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CA8);
  v84 = *(v7 - 8);
  v85 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v67 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CB0);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v96 = &v67 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CB8);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v95 = &v67 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CC0);
  v79 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v90 = &v67 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CC8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v91 = &v67 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CD0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v94 = &v67 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CD8);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CE0);
  v71 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0CE8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - v21;
  v23 = a1[3];
  v98 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_19A397DB4();
  v24 = v99;
  sub_19A57417C();
  v99 = v24;
  if (!v24)
  {
    v25 = v18;
    v68 = v16;
    v69 = v15;
    v18 = v94;
    v26 = v95;
    v28 = v96;
    v27 = v97;
    v70 = v20;
    v29 = sub_19A573D7C();
    v30 = (2 * *(v29 + 16)) | 1;
    v100 = v29;
    v101 = v29 + 32;
    v102 = 0;
    v103 = v30;
    v31 = sub_19A344194();
    if (v31 == 10 || v102 != v103 >> 1)
    {
      v18 = sub_19A5739FC();
      v37 = swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
      *v39 = &type metadata for PixelBufferError;
      sub_19A573C7C();
      sub_19A5739DC();
      (*(*(v18 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v18);
      v99 = v37;
      swift_willThrow();
    }

    else
    {
      if (v31 > 4u)
      {
        v41 = v70;
        if (v31 <= 6u)
        {
          if (v31 == 5)
          {
            v104 = 5;
            sub_19A397F58();
            v49 = v99;
            sub_19A573C5C();
            v99 = v49;
            if (!v49)
            {
              (*(v80 + 8))(v26, v81);
              (*(v41 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v18 = 1;
              goto LABEL_13;
            }
          }

          else
          {
            v104 = 6;
            sub_19A397F04();
            v18 = v28;
            v66 = v99;
            sub_19A573C5C();
            v99 = v66;
            if (!v66)
            {
              (*(v82 + 8))(v28, v83);
              (*(v41 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v18 = 2;
              goto LABEL_13;
            }
          }
        }

        else if (v31 == 7)
        {
          v104 = 7;
          sub_19A397EB0();
          v54 = v99;
          sub_19A573C5C();
          v99 = v54;
          if (!v54)
          {
            v55 = v85;
            v56 = sub_19A573CFC();
            v99 = 0;
            v18 = v56;
            (*(v84 + 8))(v27, v55);
            (*(v41 + 8))(v22, v19);
            swift_unknownObjectRelease();
            goto LABEL_13;
          }
        }

        else if (v31 == 8)
        {
          v104 = 8;
          sub_19A397E5C();
          v42 = v92;
          v43 = v99;
          sub_19A573C5C();
          v99 = v43;
          if (!v43)
          {
            v44 = v87;
            v45 = sub_19A573D3C();
            v99 = 0;
            v18 = v45;
            (*(v86 + 8))(v42, v44);
            (*(v41 + 8))(v22, v19);
            swift_unknownObjectRelease();
            goto LABEL_13;
          }
        }

        else
        {
          v104 = 9;
          sub_19A397E08();
          v58 = v93;
          v59 = v99;
          sub_19A573C5C();
          v99 = v59;
          if (!v59)
          {
            v60 = v88;
            v61 = sub_19A573D5C();
            v99 = 0;
            LODWORD(v18) = v61;
            (*(v89 + 8))(v58, v60);
            (*(v41 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v18 = v18;
            goto LABEL_13;
          }
        }

        (*(v41 + 8))(v22, v19);
        goto LABEL_12;
      }

      if (v31 > 1u)
      {
        if (v31 == 2)
        {
          v104 = 2;
          sub_19A398054();
          v50 = v18;
          v51 = v99;
          sub_19A573C5C();
          v32 = v70;
          v99 = v51;
          if (!v51)
          {
            v52 = v75;
            v53 = sub_19A573D5C();
            v99 = 0;
            LODWORD(v18) = v53;
            (*(v74 + 8))(v50, v52);
            (*(v32 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v18 = v18;
            goto LABEL_13;
          }
        }

        else
        {
          v32 = v70;
          if (v31 == 3)
          {
            v104 = 3;
            sub_19A398000();
            v33 = v91;
            v34 = v99;
            sub_19A573C5C();
            v99 = v34;
            if (!v34)
            {
              v35 = v78;
              v36 = sub_19A573D5C();
              v99 = 0;
              LODWORD(v18) = v36;
              (*(v77 + 8))(v33, v35);
              (*(v32 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v18 = v18;
              goto LABEL_13;
            }
          }

          else
          {
            v104 = 4;
            sub_19A397FAC();
            v18 = v90;
            v57 = v99;
            sub_19A573C5C();
            v99 = v57;
            if (!v57)
            {
              (*(v79 + 8))(v18, v76);
              (*(v32 + 8))(v22, v19);
              swift_unknownObjectRelease();
              v18 = 0;
              goto LABEL_13;
            }
          }
        }

        (*(v32 + 8))(v22, v19);
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      if (v31)
      {
        v104 = 1;
        sub_19A3980A8();
        v62 = v69;
        v63 = v99;
        sub_19A573C5C();
        v99 = v63;
        if (!v63)
        {
          v64 = v73;
          v65 = sub_19A573D5C();
          v99 = 0;
          LODWORD(v18) = v65;
          (*(v72 + 8))(v62, v64);
          (*(v70 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v18 = v18;
          goto LABEL_13;
        }
      }

      else
      {
        v104 = 0;
        sub_19A3980FC();
        v46 = v99;
        sub_19A573C5C();
        v99 = v46;
        if (!v46)
        {
          v47 = v68;
          v48 = sub_19A573D6C();
          (*(v71 + 8))(v25, v47);
          (*(v70 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v99 = 0;
          v18 = v48;
          goto LABEL_13;
        }
      }
    }

    (*(v70 + 8))(v22, v19);
    goto LABEL_12;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0Tm(v98);
  return v18;
}

unint64_t sub_19A397DB4()
{
  result = qword_1EAFA0CF0;
  if (!qword_1EAFA0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0CF0);
  }

  return result;
}

unint64_t sub_19A397E08()
{
  result = qword_1EAFA0CF8;
  if (!qword_1EAFA0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0CF8);
  }

  return result;
}

unint64_t sub_19A397E5C()
{
  result = qword_1EAFA0D00;
  if (!qword_1EAFA0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D00);
  }

  return result;
}

unint64_t sub_19A397EB0()
{
  result = qword_1EAFA0D08;
  if (!qword_1EAFA0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D08);
  }

  return result;
}

unint64_t sub_19A397F04()
{
  result = qword_1EAFA0D10;
  if (!qword_1EAFA0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D10);
  }

  return result;
}

unint64_t sub_19A397F58()
{
  result = qword_1EAFA0D18;
  if (!qword_1EAFA0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D18);
  }

  return result;
}

unint64_t sub_19A397FAC()
{
  result = qword_1EAFA0D20;
  if (!qword_1EAFA0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D20);
  }

  return result;
}

unint64_t sub_19A398000()
{
  result = qword_1EAFA0D28;
  if (!qword_1EAFA0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D28);
  }

  return result;
}

unint64_t sub_19A398054()
{
  result = qword_1EAFA0D30;
  if (!qword_1EAFA0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D30);
  }

  return result;
}

unint64_t sub_19A3980A8()
{
  result = qword_1EAFA0D38;
  if (!qword_1EAFA0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D38);
  }

  return result;
}

unint64_t sub_19A3980FC()
{
  result = qword_1EAFA0D40;
  if (!qword_1EAFA0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0D40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDiffusionModelMetadata.LoraInfo.LoraType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDiffusionModelMetadata.LoraInfo.LoraType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A398344()
{
  result = qword_1EAFA0DA0;
  if (!qword_1EAFA0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DA0);
  }

  return result;
}

unint64_t sub_19A39839C()
{
  result = qword_1EAFA0DA8;
  if (!qword_1EAFA0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DA8);
  }

  return result;
}

unint64_t sub_19A3983F4()
{
  result = qword_1EAFA0DB0;
  if (!qword_1EAFA0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DB0);
  }

  return result;
}

unint64_t sub_19A39844C()
{
  result = qword_1EAFA0DB8;
  if (!qword_1EAFA0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DB8);
  }

  return result;
}

unint64_t sub_19A3984A4()
{
  result = qword_1EAFA0DC0;
  if (!qword_1EAFA0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DC0);
  }

  return result;
}

unint64_t sub_19A3984FC()
{
  result = qword_1EAFA0DC8;
  if (!qword_1EAFA0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DC8);
  }

  return result;
}

unint64_t sub_19A398554()
{
  result = qword_1EAFA0DD0;
  if (!qword_1EAFA0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DD0);
  }

  return result;
}

unint64_t sub_19A3985AC()
{
  result = qword_1EAFA0DD8;
  if (!qword_1EAFA0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DD8);
  }

  return result;
}

unint64_t sub_19A398604()
{
  result = qword_1EAFA0DE0;
  if (!qword_1EAFA0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DE0);
  }

  return result;
}

unint64_t sub_19A39865C()
{
  result = qword_1EAFA0DE8;
  if (!qword_1EAFA0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DE8);
  }

  return result;
}

unint64_t sub_19A3986B4()
{
  result = qword_1EAFA0DF0;
  if (!qword_1EAFA0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DF0);
  }

  return result;
}

unint64_t sub_19A39870C()
{
  result = qword_1EAFA0DF8;
  if (!qword_1EAFA0DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0DF8);
  }

  return result;
}

unint64_t sub_19A398764()
{
  result = qword_1EAFA0E00;
  if (!qword_1EAFA0E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E00);
  }

  return result;
}

unint64_t sub_19A3987BC()
{
  result = qword_1EAFA0E08;
  if (!qword_1EAFA0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E08);
  }

  return result;
}

unint64_t sub_19A398814()
{
  result = qword_1EAFA0E10;
  if (!qword_1EAFA0E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E10);
  }

  return result;
}

unint64_t sub_19A39886C()
{
  result = qword_1EAFA0E18;
  if (!qword_1EAFA0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E18);
  }

  return result;
}

unint64_t sub_19A3988C4()
{
  result = qword_1EAFA0E20;
  if (!qword_1EAFA0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E20);
  }

  return result;
}

unint64_t sub_19A39891C()
{
  result = qword_1EAFA0E28;
  if (!qword_1EAFA0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E28);
  }

  return result;
}

unint64_t sub_19A398974()
{
  result = qword_1EAFA0E30;
  if (!qword_1EAFA0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E30);
  }

  return result;
}

unint64_t sub_19A3989CC()
{
  result = qword_1EAFA0E38;
  if (!qword_1EAFA0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E38);
  }

  return result;
}

unint64_t sub_19A398A24()
{
  result = qword_1EAFA0E40;
  if (!qword_1EAFA0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E40);
  }

  return result;
}

unint64_t sub_19A398A7C()
{
  result = qword_1EAFA0E48;
  if (!qword_1EAFA0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E48);
  }

  return result;
}

unint64_t sub_19A398AD4()
{
  result = qword_1EAFA0E50;
  if (!qword_1EAFA0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E50);
  }

  return result;
}

unint64_t sub_19A398B2C()
{
  result = qword_1EAFA0E58;
  if (!qword_1EAFA0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E58);
  }

  return result;
}

unint64_t sub_19A398B84()
{
  result = qword_1EAFA0E60;
  if (!qword_1EAFA0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E60);
  }

  return result;
}

unint64_t sub_19A398BDC()
{
  result = qword_1EAFA0E68;
  if (!qword_1EAFA0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E68);
  }

  return result;
}

unint64_t sub_19A398C34()
{
  result = qword_1EAFA0E70;
  if (!qword_1EAFA0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E70);
  }

  return result;
}

unint64_t sub_19A398C8C()
{
  result = qword_1EAFA0E78;
  if (!qword_1EAFA0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E78);
  }

  return result;
}

unint64_t sub_19A398CE4()
{
  result = qword_1EAFA0E80;
  if (!qword_1EAFA0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E80);
  }

  return result;
}

unint64_t sub_19A398D3C()
{
  result = qword_1EAFA0E88;
  if (!qword_1EAFA0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0E88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SmileySpotter.SpotResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_19A398E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x757365526C6F6F62 && a2 == 0xEA0000000000746CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A398EF4(uint64_t a1)
{
  v2 = sub_19A399208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A398F30(uint64_t a1)
{
  v2 = sub_19A399208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A398F6C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0E90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A399208();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = sub_19A573D0C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_19A3990D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0E98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A399208();
  sub_19A5741AC();
  sub_19A573E3C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19A399208()
{
  result = qword_1ED824BC0;
  if (!qword_1ED824BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BC0);
  }

  return result;
}

unint64_t sub_19A399280()
{
  result = qword_1EAFA0EA0;
  if (!qword_1EAFA0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0EA0);
  }

  return result;
}

unint64_t sub_19A3992D8()
{
  result = qword_1ED824BB0;
  if (!qword_1ED824BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BB0);
  }

  return result;
}

unint64_t sub_19A399330()
{
  result = qword_1ED824BB8;
  if (!qword_1ED824BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824BB8);
  }

  return result;
}

uint64_t sub_19A399384()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A399458()
{
  sub_19A572E4C();
}

uint64_t sub_19A399518()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A3995E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A399898();
  *a1 = result;
  return result;
}

void sub_19A399618(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036490594;
  v5 = 0xEA0000000000746CLL;
  v6 = 0x756441676E756F79;
  v7 = 0xE500000000000000;
  v8 = 0x746C756461;
  if (v2 != 3)
  {
    v8 = 0x726F696E6573;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646C696863;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_19A3996D8()
{
  result = qword_1EAFA0EA8;
  if (!qword_1EAFA0EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0EA8);
  }

  return result;
}

unint64_t sub_19A399740()
{
  result = qword_1EAFA0EB8;
  if (!qword_1EAFA0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0EB8);
  }

  return result;
}

unint64_t sub_19A399844()
{
  result = qword_1EAFA0EC0;
  if (!qword_1EAFA0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0EC0);
  }

  return result;
}

uint64_t sub_19A399898()
{
  v0 = sub_19A573C2C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for MessagesBackgroundEstimator()
{
  result = qword_1EAF9F320;
  if (!qword_1EAF9F320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A399958()
{
  result = sub_19A5720DC();
  if (v1 <= 0x3F)
  {
    result = sub_19A57112C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A3999DC@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X8>)
{
  v67 = a2;
  v73 = a3;
  v5 = sub_19A570BEC();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v55 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = v54 - v8;
  v64 = sub_19A570C7C();
  v68 = *(v64 - 8);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v62 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v54 - v11;
  v12 = sub_19A570B9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v54 - v17;
  v19 = sub_19A570A9C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AugmentedPrompt();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v57 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v56 = v54 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v76 = v54 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v77 = v54 - v30;
  v60 = *v3;
  v58 = v3[1];
  v31 = *(v3 + 2);
  v54[1] = *(v3 + 1);
  v61 = v31;
  v59 = a1;
  sub_19A570A4C();
  sub_19A39A928(&qword_1ED825328, MEMORY[0x1E6968678]);
  sub_19A5733DC();
  sub_19A57341C();
  v69 = sub_19A39A928(&qword_1ED825308, MEMORY[0x1E69687E8]);
  v32 = sub_19A572C2C();
  v33 = *(v13 + 8);
  v33(v16, v12);
  v71 = v13 + 8;
  v33(v18, v12);
  v34 = *(v20 + 8);
  v74 = v22;
  v75 = v19;
  v70 = v20 + 8;
  v34(v22, v19);
  if ((v32 & 1) != 0 && v67 - 1 <= 1)
  {
    v35 = v77;
    sub_19A570ACC();
    v78 = 1;
    v79 = 0;
    sub_19A378428();
    sub_19A570C1C();
  }

  else
  {
    v35 = v77;
    sub_19A39A7B0(v59, v77);
  }

  v36 = v74;
  sub_19A570A4C();
  v37 = v75;
  sub_19A5733DC();
  sub_19A57341C();
  v38 = sub_19A572C2C();
  v33(v16, v12);
  v33(v18, v12);
  v34(v36, v37);
  if ((v38 & 1) == 0)
  {
    sub_19A570C6C();
    v35 = v76;
    sub_19A570BFC();
    if (v58 > 1)
    {
      v40 = v65;
      v39 = v66;
      v42 = v63;
      v41 = v64;
      v43 = v68;
      v44 = v62;
      if (v58 != 2)
      {
        v46 = 0;
LABEL_11:
        if (v60 > 2)
        {
          if (v60 == 3)
          {
            v47 = v41;
          }

          else
          {
            if (v60 != 4)
            {
              v48 = v72;
              goto LABEL_18;
            }

            v47 = v41;
          }
        }

        else
        {
          v47 = v41;
        }

        v48 = v72;
        sub_19A570C6C();
        v49 = v57;
        sub_19A570BFC();
        v35 = v76;
        sub_19A39A330(v49, 32, 0xE100000000000000);
        (*(v40 + 8))(v49, v39);
        v46 |= 8u;
        v41 = v47;
        v43 = v68;
LABEL_18:
        sub_19A570C6C();
        v80 = v46;
        v81 = 0;
        sub_19A39A814();
        sub_19A570C8C();
        sub_19A570A4C();
        (*(v43 + 16))(v48, v44, v41);
        sub_19A39A928(&qword_1ED825330, MEMORY[0x1E6968678]);
        sub_19A570C0C();
        sub_19A39A868(v35);
        (*(v40 + 16))(v35, v42, v39);
        sub_19A39A330(v77, 32, 0xE100000000000000);
        if (v61)
        {

          sub_19A570C6C();
          v50 = v55;
          sub_19A570BFC();
          sub_19A39A330(v50, 32, 0xE100000000000000);
          v51 = *(v40 + 8);
          v52 = v50;
          v35 = v76;
          v51(v52, v39);
          v51(v42, v39);
        }

        else
        {
          (*(v40 + 8))(v42, v39);
        }

        (*(v43 + 8))(v44, v41);
        sub_19A39A868(v77);
        return sub_19A39A8C4(v35, v73);
      }
    }

    else
    {
      v40 = v65;
      v39 = v66;
      v42 = v63;
      v41 = v64;
      v43 = v68;
      v44 = v62;
    }

    sub_19A570C6C();
    v45 = v56;
    sub_19A570BFC();
    v35 = v76;
    sub_19A39A330(v45, 32, 0xE100000000000000);
    (*(v40 + 8))(v45, v39);
    v46 = 1;
    goto LABEL_11;
  }

  return sub_19A39A8C4(v35, v73);
}

uint64_t sub_19A39A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v4 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26[1] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A570BEC();
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26[0] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A570B9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v26 - v13;
  v15 = sub_19A570A9C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_19A39A928(&qword_1ED825300, MEMORY[0x1E6968848]);
  v34 = v6;
  v35 = a1;
  v33 = v19;
  sub_19A570D5C();
  sub_19A39A928(&qword_1ED825328, MEMORY[0x1E6968678]);
  sub_19A5733DC();
  sub_19A57341C();
  v30 = sub_19A39A928(&qword_1ED825308, MEMORY[0x1E69687E8]);
  LOBYTE(a1) = sub_19A572C2C();
  v20 = *(v9 + 8);
  v20(v12, v8);
  v31 = v9 + 8;
  v20(v14, v8);
  v21 = *(v16 + 8);
  v32 = v16 + 8;
  result = v21(v18, v15);
  if ((a1 & 1) == 0)
  {
    sub_19A570A4C();
    sub_19A5733DC();
    sub_19A57341C();
    v23 = sub_19A572C2C();
    v20(v12, v8);
    v20(v14, v8);
    v21(v18, v15);
    v24 = v34;
    if ((v23 & 1) == 0)
    {

      sub_19A570C6C();
      v25 = v26[0];
      sub_19A570BFC();
      sub_19A570BBC();
      (*(v27 + 8))(v25, v24);
    }

    return sub_19A570BBC();
  }

  return result;
}

uint64_t sub_19A39A7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AugmentedPrompt();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A39A814()
{
  result = qword_1EAF9F760;
  if (!qword_1EAF9F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F760);
  }

  return result;
}

uint64_t sub_19A39A868(uint64_t a1)
{
  v2 = type metadata accessor for AugmentedPrompt();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A39A8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AugmentedPrompt();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A39A928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A39A980(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A39A9A0, 0, 0);
}

uint64_t sub_19A39A9A0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for GenerationRecipe(0);
  v4 = *(v1 + *(v3 + 28) + 8);
  sub_19A39AA50(v1, v2);
  if (v4 == 1)
  {
    v5 = v0[2];
    v6 = sub_19A489348(0x8000000000000000);
    v7 = v5 + *(v3 + 28);
    *v7 = v6;
    *(v7 + 8) = 0;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_19A39AA50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19A39AAB4(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 < 9.22337204e18)
  {
    *a1 = a2;
    a1[1] = a3;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_19A39AB90()
{
  result = type metadata accessor for AugmentedPrompt();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_19A39AC54()
{
  _s23GenerationConfigurationVMa();
  if (v0 <= 0x3F)
  {
    sub_19A39B118(319, &qword_1ED8255B8, &type metadata for ImageStyle, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_19A39B118(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A39B0B4(319, qword_1ED825C80, type metadata accessor for PipelineConfiguration.InputConditioning, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_19A39B118(319, &qword_1ED825358, &type metadata for PromptEncodingStatistics, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_19A39B118(319, &qword_1ED825360, &type metadata for PromptRewriteStrategy, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_19A39B118(319, &qword_1ED8255A0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_19A39B118(319, qword_1ED825B28, &type metadata for CharacterFace, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_19A39B0B4(319, &qword_1ED825588, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_19A57102C();
                    if (v9 <= 0x3F)
                    {
                      sub_19A39B0B4(319, &qword_1ED8255B0, type metadata accessor for ResolvedTextPrompt, MEMORY[0x1E69E62F8]);
                      if (v10 <= 0x3F)
                      {
                        sub_19A39B118(319, &qword_1ED825B20, &type metadata for ResolvedImage, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_19A39B118(319, qword_1ED824BE8, &type metadata for GenerationRecipe.DrawOnImageInputs, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_19A39B0B4(319, &qword_1ED8255A8, type metadata accessor for Concept, MEMORY[0x1E69E62F8]);
                            if (v13 <= 0x3F)
                            {
                              sub_19A39B118(319, &qword_1ED825338, &type metadata for GenerationRecipe.ConditioningImageInfo, MEMORY[0x1E69E62F8]);
                              if (v14 <= 0x3F)
                              {
                                sub_19A39B118(319, &qword_1ED825350, &type metadata for ResolvedLayoutConfiguration, MEMORY[0x1E69E6720]);
                                if (v15 <= 0x3F)
                                {
                                  swift_cvw_initStructMetadataWithLayoutString();
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

void sub_19A39B0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_19A39B118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A39B18C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_19A39B1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_19A39B264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_19A39B2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19A39B314(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_19A322800(0, v1, 0);
  v2 = v30;
  v3 = a1 + 64;
  result = sub_19A57389C();
  v6 = v27;
  v5 = a1;
  v7 = 0;
  v8 = *(a1 + 36);
  v29 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_23;
    }

    v12 = (*(v5 + 56) + 3 * result);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v17 = *(v30 + 16);
    v16 = *(v30 + 24);
    if (v17 >= v16 >> 1)
    {
      v26 = result;
      sub_19A322800((v16 > 1), v17 + 1, 1);
      v5 = a1;
      v8 = v29;
      v6 = v27;
      result = v26;
    }

    *(v30 + 16) = v17 + 1;
    v18 = (v30 + 3 * v17);
    v18[32] = v13;
    v18[33] = v14;
    v18[34] = v15;
    v9 = 1 << *(v5 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v3 = a1 + 64;
    v19 = *(a1 + 64 + 8 * v10);
    if ((v19 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (result & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v10 << 6;
      v22 = v10 + 1;
      v23 = (a1 + 72 + 8 * v10);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          sub_19A2F1470(result, v29, 0);
          v5 = a1;
          v8 = v29;
          v6 = v27;
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      sub_19A2F1470(result, v29, 0);
      v5 = a1;
      v8 = v29;
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_19A39B584()
{
  result = type metadata accessor for GenerationRecipe(0);
  v2 = *(v0 + *(result + 100));
  v15 = *(v2 + 16);
  if (v15)
  {
    v3 = 0;
    v4 = (v2 + 64);
    v5 = MEMORY[0x1E69E7CC0];
    v14 = *(v0 + *(result + 100));
    while (v3 < *(v2 + 16))
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 4);
      v9 = *v4;
      v10 = *(v4 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19A31D370(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_19A31D370((v11 > 1), v12 + 1, 1, v5);
        v5 = result;
      }

      ++v3;
      *(v5 + 16) = v12 + 1;
      v13 = v5 + 40 * v12;
      *(v13 + 32) = v7;
      *(v13 + 40) = v6;
      *(v13 + 48) = v8;
      *(v13 + 56) = v10;
      *(v13 + 64) = v9;
      v4 += 9;
      v2 = v14;
      if (v15 == v3)
      {
        return v5;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_19A39B6BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A33546C(v1, v4, &unk_1EAFA2F50);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A2F3FA0(v4, &unk_1EAFA2F50);
    return 0;
  }

  else
  {
    sub_19A3A3FE8(v4, v8, type metadata accessor for PipelineConfiguration.InputConditioning);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_19A57395C();

    v13 = 0xD00000000000001FLL;
    v14 = 0x800000019A596A20;
    if (v8[*(v5 + 28)])
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v8[*(v5 + 28)])
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x19A900A50](v10, v11);

    v9 = v13;
    sub_19A3A3F34(v8, type metadata accessor for PipelineConfiguration.InputConditioning);
  }

  return v9;
}

uint64_t sub_19A39B8E4()
{
  if (*v0 <= 1u)
  {
    if (!*v0)
    {
      v1 = ".PhotosGenerativeEdit";
      v2 = 0xD000000000000027;
      goto LABEL_9;
    }

    v3 = "VisualGeneration.GenerativePlayground";
    goto LABEL_7;
  }

  if (*v0 == 2)
  {
    v3 = "VisualGeneration.PhotosGenerativeEdit";
LABEL_7:
    v1 = v3 - 32;
    v2 = 0xD000000000000025;
    goto LABEL_9;
  }

  v1 = &xmmword_19A57FCB0;
  v2 = 0xD000000000000010;
LABEL_9:
  v4 = type metadata accessor for GenerationRecipe(0);
  v5 = *&v0[v4[6]];
  v6 = sub_19A39BD48();
  v7 = v6;
  v8 = *&v0[v4[21] + 24];
  v9 = &v0[v4[5]];
  v10 = *v9;
  v43 = v8;
  v44 = v9[1];
  v11 = *(v5 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v40 = *v9;
    v41 = v6;
    v42 = v2;
    v45[0] = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v11, 0);
    v13 = (v5 + 32);
    v12 = v45[0];
    v14 = 0x6F6974616D696E61;
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = v16 == 5;
      if (v16 == 5)
      {
        v18 = 0xD000000000000013;
      }

      else
      {
        v18 = 0x6C616E7265747865;
      }

      if (v17)
      {
        v19 = 0x800000019A595400;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v15 == 3)
      {
        v20 = 0x686374656B73;
      }

      else
      {
        v20 = 0x747241656E696CLL;
      }

      if (v15 == 3)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      if (v15 <= 4)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v15 == 1)
      {
        v22 = 0x696A6F6D65;
      }

      else
      {
        v22 = 0x61727473756C6C69;
      }

      if (v15 == 1)
      {
        v23 = 0xE500000000000000;
      }

      else
      {
        v23 = 0xEC0000006E6F6974;
      }

      if (!v15)
      {
        v22 = v14;
        v23 = 0xE90000000000006ELL;
      }

      if (v15 <= 2)
      {
        v24 = v22;
      }

      else
      {
        v24 = v18;
      }

      if (v15 <= 2)
      {
        v25 = v23;
      }

      else
      {
        v25 = v19;
      }

      v45[0] = v12;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = v14;
        sub_19A322580((v26 > 1), v27 + 1, 1);
        v14 = v29;
        v12 = v45[0];
      }

      *(v12 + 16) = v27 + 1;
      v28 = v12 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      --v11;
    }

    while (v11);
    v2 = v42;
    v7 = v41;
    v10 = v40;
  }

  v45[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v30 = sub_19A572BEC();
  v32 = v31;

  if (*(v5 + 16) && ((v33 = *(v5 + 32), v10 == 0xD000000000000029) ? (v34 = 0x800000019A596020 == v44) : (v34 = 0), v34 || (sub_19A573F1C() & 1) != 0))
  {
    LOBYTE(v45[0]) = v33;
    v35 = sub_19A4AD7C8(v45, v7 & 1, v43 != 0);
    v37 = AppleDiffusionAdapter.rawValue.getter(v35);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v45[0] = v2;
  v45[1] = v1 | 0x8000000000000000;

  MEMORY[0x19A900A50](58, 0xE100000000000000);

  MEMORY[0x19A900A50](v30, v32);

  MEMORY[0x19A900A50](58, 0xE100000000000000);

  if (!v39)
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  MEMORY[0x19A900A50](v37, v39);

  return v45[0];
}

uint64_t sub_19A39BD48()
{
  v31 = type metadata accessor for ResolvedTextPrompt(0);
  v1 = *(v31 - 8);
  v2 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerationRecipe(0);
  sub_19A33546C(v0 + v13[8], v8, &unk_1EAFA2F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_19A2F3FA0(v8, &unk_1EAFA2F50);
  }

  else
  {
    sub_19A3A3FE8(v8, v12, type metadata accessor for PipelineConfiguration.InputConditioning);
    v15 = v12[*(v9 + 28)];
    result = sub_19A3A3F34(v12, type metadata accessor for PipelineConfiguration.InputConditioning);
    if (v15)
    {
      return 1;
    }
  }

  v16 = *(v0 + v13[25]);
  if (*(v16 + 16) && *(v0 + v13[5] + 52) == 1 && (*(v16 + 96) & 1) != 0)
  {
    return 1;
  }

  v27 = v13;
  v28 = v0;
  v17 = *(v0 + v13[19]);
  v18 = *(v17 + 16);
  if (!v18)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v26 = *(v20 + 16);

    if (!v26)
    {
      return *(v28 + v27[14]) != 0;
    }

    return 1;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v29 = *(v17 + 16);
  while (v19 < *(v17 + 16))
  {
    v21 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v22 = *(v1 + 72);
    sub_19A3A4420(v17 + v21 + v22 * v19, v5, type metadata accessor for ResolvedTextPrompt);
    if (sub_19A4479B4())
    {
      sub_19A3A3FE8(v5, v30, type metadata accessor for ResolvedTextPrompt);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A322600(0, *(v20 + 16) + 1, 1);
        v20 = v32;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_19A322600(v24 > 1, v25 + 1, 1);
        v20 = v32;
      }

      *(v20 + 16) = v25 + 1;
      result = sub_19A3A3FE8(v30, v20 + v21 + v25 * v22, type metadata accessor for ResolvedTextPrompt);
      v18 = v29;
    }

    else
    {
      result = sub_19A3A3F34(v5, type metadata accessor for ResolvedTextPrompt);
    }

    if (v18 == ++v19)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A39C154@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GenerationRecipe(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v8 = *(v3 + 1);
  v7 = *(v3 + 2);

  result = sub_19A39D424();
  if (result)
  {
    if (*(result + 16))
    {
      v10 = *(result + 72) | (*(result + 74) << 16);

      v11 = BYTE1(v10);
      v12 = HIWORD(v10);
      v13 = v10 & 1;
      if (v10 == 2)
      {
        v13 = 3;
      }

      if (v5 != 3)
      {
        v13 = v5;
      }

      if (v4 != 5)
      {
        v11 = v4;
      }

      if (v6 != 10)
      {
        LOBYTE(v12) = v6;
      }

      if (v10 != 3)
      {
        LOBYTE(v6) = v12;
        LOBYTE(v5) = v13;
        LOBYTE(v4) = v11;
      }
    }

    else
    {
    }
  }

  *a1 = v4;
  *(a1 + 1) = v5;
  *(a1 + 2) = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_19A39C230()
{
  v1 = (v0 + *(type metadata accessor for GenerationRecipe(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  if (qword_1ED824B80 != -1)
  {
LABEL_15:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1ED82BD28;
  v6 = *(qword_1ED82BD28 + 16);
  v7 = qword_1ED82BD28 + 32;
  while (1)
  {
    if (v6 == v4)
    {
      return 0;
    }

    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v8 = *(v7 + 8 * v4);
    if ((*(v8 + 88))() == v2 && v9 == v3)
    {
      break;
    }

    ++v4;
    v11 = sub_19A573F1C();

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_19A39C344()
{
  if (sub_19A39BD48())
  {
    return 1;
  }

  v2 = *(v0 + *(type metadata accessor for GenerationRecipe(0) + 24));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    if (v3 != 7 && (sub_19A337A30(v3, 1u) & 1) != 0)
    {
      sub_19A39C154(&v6);
      if (v6 == 5 && v7 == 3 && v8 != 10)
      {
        if (!v9)
        {
          goto LABEL_21;
        }

        v4 = sub_19A572E7C();

        if (v4 < 1)
        {
          return 0;
        }
      }

      else
      {
      }
    }
  }

  sub_19A39C154(&v6);
  if (v6 != 5 || v7 != 3 || v8 != 10)
  {

    return 2;
  }

  if (v9)
  {
    v5 = sub_19A572E7C();

    if (v5 <= 0)
    {
      return 0;
    }

    return 2;
  }

LABEL_21:

  return 0;
}