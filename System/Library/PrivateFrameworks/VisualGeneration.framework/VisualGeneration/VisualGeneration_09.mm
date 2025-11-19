uint64_t sub_19A39C484()
{
  v4 = 0;
  v31 = type metadata accessor for GenerationRecipe(0);
  v32 = v1;
  v5 = *(v1 + *(v31 + 100));
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v8 = (v5 + 88 + 72 * v4);
  while (v6 != v4)
  {
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v3 = sub_19A31CE20(0, *(v3 + 2) + 1, 1, v3);
LABEL_31:
      v24 = *(v3 + 2);
      v23 = *(v3 + 3);
      if (v24 >= v23 >> 1)
      {
        v3 = sub_19A31CE20((v23 > 1), v24 + 1, 1, v3);
      }

      *(v3 + 2) = v24 + 1;
      v25 = &v3[16 * v24];
      *(v25 + 4) = v2;
      *(v25 + 5) = v0;
      goto LABEL_34;
    }

    ++v4;
    v9 = v8 + 9;
    v10 = *v8;
    v8 += 9;
    if (v10)
    {
      v0 = *(v9 - 10);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_19A31CE20(0, *(v7 + 2) + 1, 1, v7);
      }

      v2 = *(v7 + 2);
      v11 = *(v7 + 3);
      v3 = (v2 + 1);
      if (v2 >= v11 >> 1)
      {
        v7 = sub_19A31CE20((v11 > 1), v2 + 1, 1, v7);
      }

      *(v7 + 2) = v3;
      v12 = &v7[16 * v2];
      *(v12 + 4) = v0;
      *(v12 + 5) = v10;
      goto LABEL_2;
    }
  }

  v13 = 0;
  v14 = *(v7 + 2);
  v3 = MEMORY[0x1E69E7CC0];
LABEL_12:
  v15 = &v7[16 * v13 + 40];
  while (v14 != v13)
  {
    if (v13 >= *(v7 + 2))
    {
      goto LABEL_40;
    }

    ++v13;
    v0 = *(v15 - 1);
    v16 = *v15;
    v15 += 16;
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19A322580(0, *(v3 + 2) + 1, 1);
      }

      v2 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v2 >= v18 >> 1)
      {
        sub_19A322580((v18 > 1), v2 + 1, 1);
      }

      *(v3 + 2) = v2 + 1;
      v19 = &v3[16 * v2];
      *(v19 + 4) = v0;
      *(v19 + 5) = v16;
      goto LABEL_12;
    }
  }

  v20 = (v32 + *(v31 + 92));
  v0 = v20[12];
  if (v20[3])
  {
    v21 = v0 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v2 = v20[11];
    v22 = HIBYTE(v0) & 0xF;
    if ((v0 & 0x2000000000000000) == 0)
    {
      v22 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }
  }

LABEL_34:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v26 = sub_19A572BEC();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  return v26;
}

void sub_19A39C784(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationRecipe(0);
  v4 = *(v1 + v3[6]);
  v5 = sub_19A39BD48();
  v6 = *(v4 + 16);
  v7 = xmmword_19A57FCB0;
  v8 = 0uLL;
  if (v6)
  {
    v9 = v5;
    v10 = *(v1 + v3[21] + 24);
    v11 = (v1 + v3[5]);
    v12 = *(v4 + 32);
    v13 = *v11 == 0xD000000000000029 && 0x800000019A596020 == v11[1];
    v14 = v13;
    if (v13 || (sub_19A573F1C() & 1) != 0)
    {
      LOBYTE(v19[0]) = v12;
      v15 = sub_19A4AD7C8(v19, v9 & 1, v10 != 0);
    }

    else
    {
      v15 = 11;
    }

    v6 = *(v4 + 16);
    v7 = xmmword_19A57FCB0;
    v8 = 0uLL;
    if (v6)
    {
      v6 = 0;
      if (v15 != 11)
      {
        v16 = *(v4 + 32);
        if (v16 != 7)
        {
          v17 = v15;
          if (v14 || (sub_19A573F1C() & 1) != 0)
          {
            v18 = v16;
            sub_19A4AD974(&v18, v17, v19);
            v7 = v19[0];
            v8 = v19[1];
            v6 = v20;
          }

          else
          {
            v6 = 0;
            v7 = xmmword_19A57FCB0;
            v8 = 0uLL;
          }
        }
      }
    }
  }

  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v6;
}

uint64_t sub_19A39C928(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65746E656D677561;
  }

  else
  {
    v3 = 0x6574746972776572;
  }

  if (v2)
  {
    v4 = 0xEF74706D6F72506ELL;
  }

  else
  {
    v4 = 0xEF74706D6F725064;
  }

  if (*a2)
  {
    v5 = 0x65746E656D677561;
  }

  else
  {
    v5 = 0x6574746972776572;
  }

  if (*a2)
  {
    v6 = 0xEF74706D6F725064;
  }

  else
  {
    v6 = 0xEF74706D6F72506ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A39C9E0()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A39CA74()
{
  sub_19A572E4C();
}

uint64_t sub_19A39CAF4()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A39CB84@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

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

void sub_19A39CBE4(uint64_t *a1@<X8>)
{
  v2 = 0x6574746972776572;
  if (*v1)
  {
    v2 = 0x65746E656D677561;
  }

  v3 = 0xEF74706D6F72506ELL;
  if (*v1)
  {
    v3 = 0xEF74706D6F725064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_19A39CC34()
{
  if (*v0)
  {
    return 0x65746E656D677561;
  }

  else
  {
    return 0x6574746972776572;
  }
}

uint64_t sub_19A39CC80@<X0>(char *a1@<X8>)
{
  v2 = sub_19A573C2C();

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

uint64_t sub_19A39CCE4(uint64_t a1)
{
  v2 = sub_19A3A3F94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A39CD20(uint64_t a1)
{
  v2 = sub_19A3A3F94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A39CD5C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A3F94();
  sub_19A5741AC();
  v11 = *v3;
  v12 = *(v3 + 1);
  v10[7] = 0;
  sub_19A3A40A4();
  sub_19A573E7C();
  if (!v2)
  {
    type metadata accessor for ResolvedTextPrompt(0);
    LOBYTE(v11) = 1;
    type metadata accessor for AugmentedPrompt();
    sub_19A3A3310(&qword_1EAF9F758, type metadata accessor for AugmentedPrompt);
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A39CF34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v31);
  v34 = type metadata accessor for AugmentedPrompt();
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0EF8);
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v29 - v5;
  v7 = type metadata accessor for ResolvedTextPrompt(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A3F94();
  v35 = v6;
  v10 = v37;
  sub_19A57417C();
  if (v10)
  {
    v15 = a1;
  }

  else
  {
    v29 = v9;
    v30 = v7;
    v37 = a1;
    v11 = v32;
    v12 = v33;
    LOBYTE(v38) = 1;
    sub_19A3A3310(&qword_1EAF9ED08, type metadata accessor for AugmentedPrompt);
    v13 = v35;
    v14 = v36;
    sub_19A573D4C();
    LOBYTE(v38) = 0;
    if (sub_19A573D8C())
    {
      v41 = 0;
      sub_19A3A4050();
      sub_19A573D4C();
      v17 = v12;
      v18 = v30;
      (*(v11 + 8))(v13, v14);
      v24 = v4;
      v25 = v38;
      v26 = v39;
      v27 = v40;
    }

    else
    {
      sub_19A570A4C();
      sub_19A3A3310(&qword_1ED825330, MEMORY[0x1E6968678]);
      v19 = sub_19A572F7C();
      v25 = sub_19A3871A0(v19, v20);
      v24 = v4;
      v26 = v21;
      v22 = v13;
      v27 = v23;
      (*(v11 + 8))(v22, v14);
      v17 = v12;
      v18 = v30;
    }

    v28 = v29;
    *v29 = v25;
    *(v28 + 8) = v26;
    *(v28 + 16) = v27;
    sub_19A3A3FE8(v24, v28 + *(v18 + 20), type metadata accessor for AugmentedPrompt);
    sub_19A3A3FE8(v28, v17, type metadata accessor for ResolvedTextPrompt);
    v15 = v37;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t sub_19A39D380(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_19A573F1C() & 1) == 0 || (sub_19A4D3D04(v2, v3) & 1) == 0)
  {
    return 0;
  }

  return sub_19A570B0C();
}

uint64_t sub_19A39D424()
{
  result = type metadata accessor for GenerationRecipe(0);
  v2 = *(v0 + *(result + 100));
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = (v2 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    v7 = *v5;
    v8 = *(*v5 + 16);
    v9 = *(v6 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_22;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v6 + 24) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_19A31CF64(result, v11, 1, v6);
      v6 = result;
      if (*(v7 + 16))
      {
LABEL_15:
        if ((*(v6 + 24) >> 1) - *(v6 + 16) < v8)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v6 + 16);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_25;
          }

          *(v6 + 16) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v4;
    v5 += 9;
    if (v3 == v4)
    {
      return v6;
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
  return result;
}

uint64_t sub_19A39D588()
{
  result = sub_19A39D424();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (!v2)
    {
LABEL_17:

      return 0;
    }

    v3 = 0;
    v4 = (result + 72);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *v4;
      if (*v4 != 3)
      {
        v7 = HIBYTE(v6);
        if (HIBYTE(v6) <= 2u)
        {
          if (HIBYTE(v6) && HIBYTE(v6) != 2)
          {

LABEL_19:

            return 1;
          }
        }

        else if (HIBYTE(v6) != 3 && HIBYTE(v6) != 4)
        {
          goto LABEL_5;
        }

        v8 = sub_19A573F1C();

        if (v8)
        {

          goto LABEL_19;
        }

        if (v7 < 2)
        {

          return 1;
        }

        v5 = sub_19A573F1C();

        if (v5)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      ++v3;
      v4 += 24;
      if (v2 == v3)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_19A39D7B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0FB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v15 = *(v3 + 4);
  v18 = *(v3 + 42);
  HIDWORD(v14) = *(v3 + 20);
  v9 = *(v3 + 43);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A5088();
  sub_19A5741AC();
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v19 = 0;
  type metadata accessor for CGRect(0);
  sub_19A3A3310(&qword_1EAF9F048, type metadata accessor for CGRect);
  sub_19A573E7C();
  if (!v2)
  {
    v11 = HIDWORD(v14);
    v12 = v18;
    *&v16 = v15;
    v19 = 1;
    sub_19A571B9C();
    sub_19A3A3310(&qword_1EAFA0FC0, MEMORY[0x1E69E0578]);
    sub_19A573E1C();
    BYTE2(v16) = (v11 | (v12 << 16)) >> 16;
    LOWORD(v16) = v11;
    v19 = 2;
    sub_19A3A50DC();
    sub_19A573E1C();
    LOBYTE(v16) = v9;
    v19 = 3;
    sub_19A3A5130();
    sub_19A573E1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A39DA68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0FA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A5088();
  sub_19A57417C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_19A3A3310(&qword_1EAF9E770, type metadata accessor for CGRect);
    sub_19A573D4C();
    v15 = v18;
    v16 = v17;
    sub_19A571B9C();
    v20 = 1;
    sub_19A3A3310(&qword_1EAFA0FB0, MEMORY[0x1E69E0578]);
    sub_19A573CDC();
    v10 = v17;
    v20 = 2;
    sub_19A3A3C94();
    sub_19A573CDC();
    v19 = BYTE2(v17);
    v11 = v17;
    v20 = 3;
    sub_19A3A3C40();
    sub_19A573CDC();
    (*(v6 + 8))(v8, v5);
    v12 = v17;
    v13 = v11 | (v19 << 16);
    v14 = v15;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 32) = v10;
    *(a2 + 42) = BYTE2(v13);
    *(a2 + 40) = v13;
    *(a2 + 43) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A39DD88()
{
  v1 = 0x7274744165636166;
  if (*v0 != 2)
  {
    v1 = 0x656372756F73;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19A39DE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A3A4488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A39DE3C(uint64_t a1)
{
  v2 = sub_19A3A5088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A39DE78(uint64_t a1)
{
  v2 = sub_19A3A5088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A39DEE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A40F8();
  sub_19A57417C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_19A356A10();
    sub_19A573D4C();
    v9 = v38;
    v29 = v37;
    v30 = a2;
    v10 = v39;
    v45 = v40;
    v31 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F18);
    LOBYTE(v32) = 1;
    sub_19A3A414C();
    sub_19A573D4C();
    v27 = v10;
    v28 = v9;
    v11 = v37;
    LOBYTE(v37) = 2;
    v12 = sub_19A573C8C();
    *(&v26 + 1) = v13;
    *&v26 = v12;
    LOBYTE(v37) = 3;
    v14 = sub_19A573C9C();
    (*(v6 + 8))(v8, v5);
    v15 = v30;
    v16 = v27;
    if (v14 == 2)
    {
      v17 = v29;
      v18 = v28;
      v19 = *(v11 + 16) != 0;
    }

    else
    {
      v19 = v14 & 1;
      v17 = v29;
      v18 = v28;
    }

    v20 = v11;
    LODWORD(v30) = v19;
    *&v32 = v17;
    *(&v32 + 1) = v18;
    LODWORD(v33) = v27;
    v21 = v45;
    v22 = v31;
    *(&v33 + 1) = v45;
    *&v34 = v31;
    v23 = v26;
    *(&v34 + 1) = v20;
    v35 = v26;
    v36 = v19;
    *(v15 + 64) = v19;
    v24 = v35;
    *(v15 + 32) = v34;
    *(v15 + 48) = v24;
    v25 = v33;
    *v15 = v32;
    *(v15 + 16) = v25;
    sub_19A3A4224(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v37 = v17;
    v38 = v18;
    v39 = v16;
    v40 = v21;
    v41 = v22;
    v42 = v20;
    v43 = __PAIR128__(*(&v26 + 1), v23);
    v44 = v30;
    sub_19A3A425C(&v37);
  }
}

uint64_t sub_19A39E2BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F30);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - v4;
  v7 = *v1;
  v6 = v1[1];
  v28 = *(v1 + 4);
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[6];
  v19 = v1[5];
  v20 = v6;
  v17 = v1[7];
  v18 = v10;
  v16[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A40F8();
  v11 = v8;

  sub_19A5741AC();
  v23 = v7;
  v24 = v20;
  v25 = v28;
  v26 = v11;
  v27 = v9;
  v29 = 0;
  sub_19A356A64();
  v12 = v21;
  sub_19A573E7C();
  v13 = v26;

  if (v12)
  {
    return (*(v22 + 8))(v5, v3);
  }

  v15 = v22;
  v23 = v19;
  v29 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F18);
  sub_19A3A428C();
  sub_19A573E7C();
  LOBYTE(v23) = 2;
  sub_19A573DCC();
  LOBYTE(v23) = 3;
  sub_19A573E3C();
  return (*(v15 + 8))(v5, v3);
}

unint64_t sub_19A39E53C()
{
  v1 = 0x7061436567616D69;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001ALL;
  }

  v2 = 0xD000000000000017;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19A39E5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A3A4604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A39E5F4(uint64_t a1)
{
  v2 = sub_19A3A40F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A39E630(uint64_t a1)
{
  v2 = sub_19A3A40F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A39E69C()
{
  v44 = sub_19A570B9C();
  v47 = *(v44 - 8);
  v1 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v31 - v3;
  v41 = sub_19A570A9C();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AugmentedPrompt();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResolvedTextPrompt(0);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  result = type metadata accessor for GenerationRecipe(0);
  v14 = *(v0 + *(result + 76));
  v36 = *(v14 + 16);
  if (v36)
  {
    v15 = 0;
    v32 = (v4 + 8);
    v33 = (v47 + 8);
    v45 = MEMORY[0x1E69E7CC0];
    v34 = v14;
    v16 = v35;
    v17 = v43;
    while (v15 < *(v14 + 16))
    {
      v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v46 = *(v38 + 72);
      v47 = v18;
      sub_19A3A4420(v14 + v18 + v46 * v15, v12, type metadata accessor for ResolvedTextPrompt);
      v19 = v40;
      sub_19A3A4420(&v12[*(v39 + 20)], v40, type metadata accessor for AugmentedPrompt);
      sub_19A570A4C();
      v20 = sub_19A570BEC();
      (*(*(v20 - 8) + 8))(v19, v20);
      sub_19A3A3310(&qword_1ED825328, MEMORY[0x1E6968678]);
      v22 = v41;
      v21 = v42;
      sub_19A5733DC();
      sub_19A57341C();
      sub_19A3A3310(&qword_1ED825308, MEMORY[0x1E69687E8]);
      v23 = v44;
      LOBYTE(v19) = sub_19A572C2C();
      v24 = *v33;
      (*v33)(v17, v23);
      v24(v21, v23);
      (*v32)(v16, v22);
      if (v19)
      {
        result = sub_19A3A3F34(v12, type metadata accessor for ResolvedTextPrompt);
      }

      else
      {
        sub_19A3A3FE8(v12, v37, type metadata accessor for ResolvedTextPrompt);
        v25 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v25;
        v48 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19A322600(0, *(v25 + 16) + 1, 1);
          v27 = v48;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_19A322600(v28 > 1, v29 + 1, 1);
          v27 = v48;
        }

        *(v27 + 16) = v29 + 1;
        v45 = v27;
        result = sub_19A3A3FE8(v37, v27 + v47 + v29 * v46, type metadata accessor for ResolvedTextPrompt);
      }

      ++v15;
      v14 = v34;
      if (v36 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v30 = *(v45 + 16);

    return v30 == 0;
  }

  return result;
}

uint64_t sub_19A39EBEC()
{
  v1 = 0xE000000000000000;
  *v49 = 0;
  *&v49[8] = 0xE000000000000000;
  sub_19A57395C();
  v55 = *v49;
  MEMORY[0x19A900A50](0xD000000000000011, 0x800000019A597DD0);
  v2 = type metadata accessor for GenerationRecipe(0);
  v3 = v0 + v2[7];
  if (*(v3 + 8))
  {
    v4 = 0;
  }

  else
  {
    *v49 = *v3;
    v4 = sub_19A572DAC();
    v1 = v5;
  }

  MEMORY[0x19A900A50](v4, v1);

  MEMORY[0x19A900A50](0x53206567616D490ALL, 0xEF203A73656C7974);
  v6 = sub_19A39F050(*(v0 + v2[6]));
  MEMORY[0x19A900A50](v6);

  MEMORY[0x19A900A50](10, 0xE100000000000000);
  v7 = v0 + v2[13];
  v8 = *(v7 + 2);
  *v49 = *v7;
  v49[2] = v8;
  *&v49[8] = *(v7 + 8);
  v9 = sub_19A357244();
  MEMORY[0x19A900A50](v9);

  MEMORY[0x19A900A50](0x3A74706D6F72500ALL, 0xE900000000000020);
  v10 = sub_19A39F328(*(v0 + v2[19]));
  MEMORY[0x19A900A50](v10);

  MEMORY[0x19A900A50](0xD000000000000019, 0x800000019A597DF0);
  v11 = v0 + v2[21];
  if (*(v11 + 24))
  {
    v12 = *(v11 + 16);
    v13 = *(v0 + v2[21] + 8);
    *v49 = sub_19A573EDC();
    *&v49[8] = v14;
    MEMORY[0x19A900A50](2127904, 0xE300000000000000);
    *&v47[0] = v13;
    v15 = sub_19A573EDC();
    MEMORY[0x19A900A50](v15);

    MEMORY[0x19A900A50](32, 0xE100000000000000);
    v16 = sub_19A474A3C(v12);
    MEMORY[0x19A900A50](v16);

    v18 = *&v49[8];
    v17 = *v49;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  MEMORY[0x19A900A50](v17, v18);

  MEMORY[0x19A900A50](0xD000000000000015, 0x800000019A597E10);
  v19 = sub_19A39B6BC();
  MEMORY[0x19A900A50](v19);

  MEMORY[0x19A900A50](0xD000000000000011, 0x800000019A597E30);
  v20 = v0 + v2[22];
  if (*(v20 + 24))
  {
    v21 = *(v20 + 16);
    v22 = *(v0 + v2[22] + 8);
    *v49 = sub_19A573EDC();
    *&v49[8] = v23;
    MEMORY[0x19A900A50](2127904, 0xE300000000000000);
    *&v47[0] = v22;
    v24 = sub_19A573EDC();
    MEMORY[0x19A900A50](v24);

    MEMORY[0x19A900A50](32, 0xE100000000000000);
    v25 = sub_19A474A3C(v21);
    MEMORY[0x19A900A50](v25);

    v27 = *&v49[8];
    v26 = *v49;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  MEMORY[0x19A900A50](v26, v27);

  MEMORY[0x19A900A50](10, 0xE100000000000000);
  v28 = v0 + v2[23];
  v29 = *(v28 + 24);
  if (v29)
  {
    v30 = *(v28 + 80);
    v31 = *(v28 + 48);
    v52 = *(v28 + 64);
    v53 = v30;
    v32 = *(v28 + 48);
    v50 = *(v28 + 32);
    v51 = v32;
    *v49 = *v28;
    v39 = *v49;
    v33 = *(v28 + 80);
    v44 = v52;
    v45 = v33;
    v34 = *(v28 + 16);
    v54 = *(v28 + 96);
    *&v49[16] = v34;
    *&v49[24] = v29;
    v40 = v34;
    v41 = v29;
    v46 = *(v28 + 96);
    v42 = v50;
    v43 = v31;
    sub_19A3A43B8(&v39, v47);
    v35 = sub_19A3A21BC();
    v37 = v36;
    v47[4] = v52;
    v47[5] = v53;
    v48 = v54;
    v47[0] = *v49;
    v47[1] = *&v49[16];
    v47[2] = v50;
    v47[3] = v51;
    sub_19A3A43F0(v47);
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  MEMORY[0x19A900A50](v35, v37);

  return v55;
}

uint64_t sub_19A39F050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v1, 0);
    v3 = a1 + 32;
    if (qword_1EAF9ECC0 != -1)
    {
      swift_once();
    }

    do
    {
      ++v3;
      v4 = sub_19A570C5C();
      v6 = v5;

      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_19A322580((v7 > 1), v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v10 = sub_19A572BEC();
  v12 = v11;

  MEMORY[0x19A900A50](v10, v12);

  MEMORY[0x19A900A50](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_19A39F328(uint64_t a1)
{
  v20 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v20);
  v19 = type metadata accessor for ResolvedTextPrompt(0);
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v5, 0);
    v6 = v23;
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_19A3A4420(v7, v4, type metadata accessor for ResolvedTextPrompt);
      v21 = 34;
      v22 = 0xE100000000000000;
      sub_19A570A4C();
      sub_19A3A3310(&qword_1ED825330, MEMORY[0x1E6968678]);
      v8 = sub_19A572F7C();
      MEMORY[0x19A900A50](v8);

      MEMORY[0x19A900A50](34, 0xE100000000000000);
      v9 = v21;
      v10 = v22;
      sub_19A3A3F34(v4, type metadata accessor for ResolvedTextPrompt);
      v23 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19A322580((v11 > 1), v12 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v7 += v18;
      --v5;
    }

    while (v5);
  }

  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
  sub_19A331C2C();
  v14 = sub_19A572BEC();
  v16 = v15;

  v21 = 91;
  v22 = 0xE100000000000000;
  MEMORY[0x19A900A50](v14, v16);

  MEMORY[0x19A900A50](93, 0xE100000000000000);

  return v21;
}

unint64_t sub_19A39F624(char a1)
{
  result = 0x6F746172656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0x6F4774706D6F7270;
      break;
    case 3:
    case 12:
    case 17:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x676E697472617473;
      break;
    case 6:
    case 8:
    case 16:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x7274744165636166;
      break;
    case 10:
    case 13:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x655279656C696D73;
      break;
    case 14:
      result = 0x7974536567616D69;
      break;
    case 15:
      result = 0x69746172656E6567;
      break;
    case 18:
      result = 0x656C6163536D636CLL;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x6574636172616863;
      break;
    case 23:
      result = 0xD000000000000015;
      break;
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 27:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19A39F944(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_19A39F624(*a1);
  v5 = v4;
  if (v3 == sub_19A39F624(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();
  }

  return v8 & 1;
}

uint64_t sub_19A39F9CC()
{
  v1 = *v0;
  sub_19A5740BC();
  sub_19A39F624(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A39FA30()
{
  sub_19A39F624(*v0);
  sub_19A572E4C();
}

uint64_t sub_19A39FA84()
{
  v1 = *v0;
  sub_19A5740BC();
  sub_19A39F624(v1);
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A39FAE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A3A4778();
  *a1 = result;
  return result;
}

unint64_t sub_19A39FB14@<X0>(unint64_t *a1@<X8>)
{
  result = sub_19A39F624(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_19A39FB48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A3A4778();
  *a1 = result;
  return result;
}

uint64_t sub_19A39FB7C(uint64_t a1)
{
  v2 = sub_19A3A3268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A39FBB8(uint64_t a1)
{
  v2 = sub_19A3A3268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A39FBF4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0EC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A3268();
  sub_19A5741AC();
  LOBYTE(v80) = *v3;
  LOBYTE(v73) = 0;
  sub_19A3A32BC();
  sub_19A573E7C();
  if (!v2)
  {
    v9 = type metadata accessor for GenerationRecipe(0);
    LOBYTE(v80) = 1;
    _s23GenerationConfigurationVMa();
    sub_19A3A3310(&qword_1EAF9F790, _s23GenerationConfigurationVMa);
    sub_19A573E7C();
    *&v80 = *&v3[*(v9 + 76)];
    LOBYTE(v73) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0ED0);
    sub_19A3A38F8(&qword_1EAF9F100, qword_1EAF9F5E8);
    v65 = v9;
    sub_19A573E7C();
    *&v80 = *&v3[v65[20]];
    LOBYTE(v73) = 3;
    sub_19A573E7C();
    v10 = &v3[v65[21]];
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    *&v80 = *v10;
    *(&v80 + 1) = v11;
    *&v81 = v12;
    *(&v81 + 1) = v13;
    *&v82 = v14;
    LOBYTE(v73) = 4;
    sub_19A331BEC(v80, v11, v12, v13);
    sub_19A356A64();
    sub_19A573E1C();
    sub_19A331C90(v80, *(&v80 + 1), v81, *(&v81 + 1));
    v15 = v65;
    v16 = &v3[v65[22]];
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v87 = *v16;
    v88 = v17;
    v89 = v18;
    v90 = v19;
    v91 = v20;
    v95 = 5;
    sub_19A331BEC(v87, v17, v18, v19);
    sub_19A573E1C();
    sub_19A331C90(v87, v88, v89, v90);
    v21 = &v3[v15[23]];
    v22 = *(v21 + 3);
    v23 = *(v21 + 5);
    v84 = *(v21 + 4);
    v85 = v23;
    v24 = *(v21 + 1);
    v80 = *v21;
    v81 = v24;
    v25 = *(v21 + 3);
    v27 = *v21;
    v26 = *(v21 + 1);
    v82 = *(v21 + 2);
    v83 = v25;
    v28 = *(v21 + 5);
    v77 = v84;
    v78 = v28;
    v73 = v27;
    v74 = v26;
    v86 = *(v21 + 12);
    v79 = *(v21 + 12);
    v75 = v82;
    v76 = v22;
    v94 = 6;
    sub_19A33546C(&v80, v71, &qword_1EAFA0198);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0198);
    sub_19A3A3358();
    sub_19A573E7C();
    v71[4] = v77;
    v71[5] = v78;
    v72 = v79;
    v71[0] = v73;
    v71[1] = v74;
    v71[2] = v75;
    v71[3] = v76;
    sub_19A2F3FA0(v71, &qword_1EAFA0198);
    *&v66 = *&v3[v15[24]];
    v93 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
    sub_19A3A3430(&qword_1EAF9F0E8, &unk_1EAF9F1F0);
    sub_19A573E7C();
    *&v66 = *&v3[v15[6]];
    v93 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0730);
    sub_19A3A34CC();
    sub_19A573E7C();
    LOBYTE(v66) = 15;
    sub_19A573E0C();
    LOBYTE(v66) = 16;
    type metadata accessor for PipelineConfiguration.InputConditioning(0);
    sub_19A3A3310(&qword_1EAF9F8A0, type metadata accessor for PipelineConfiguration.InputConditioning);
    v64 = v3;
    sub_19A573E1C();
    v29 = v64[v65[11] + 4];
    LOBYTE(v66) = 17;
    v93 = v29;
    sub_19A573DFC();
    v30 = v64[v65[12] + 4];
    LOBYTE(v66) = 18;
    v93 = v30;
    sub_19A573DFC();
    *&v66 = *&v64[v65[25]];
    v93 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0ED8);
    sub_19A3A3550();
    sub_19A573E7C();
    v31 = &v64[v65[13]];
    v32 = v31[2];
    v33 = *(v31 + 1);
    v34 = *(v31 + 2);
    LOWORD(v66) = *v31;
    BYTE2(v66) = v32;
    *(&v66 + 1) = v33;
    *&v67 = v34;
    v93 = 21;
    sub_19A3A3628();

    sub_19A573E7C();

    v35 = &v64[v65[26]];
    v36 = *v35;
    v38 = v35[2];
    v37 = v35[3];
    v39 = qword_1ED8248B0;
    v63 = v35[1];

    v60 = v38;

    v59 = v37;

    if (v39 != -1)
    {
      swift_once();
    }

    v61 = unk_1ED82BD20;
    v62 = qword_1ED82BD18;
    if (v36 == qword_1ED82BD08 && v63 == unk_1ED82BD10 || (sub_19A573F1C() & 1) != 0)
    {

      v40 = v62;

      if (sub_19A4D3D04(v60, v40))
      {
        v92 = sub_19A4D3EEC(v59, v61);

        if (v92)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v61 = v59;
      v62 = v60;
    }

LABEL_13:
    v41 = v35[1];
    v43 = v35[2];
    v42 = v35[3];
    *&v66 = *v35;
    *(&v66 + 1) = v41;
    *&v67 = v43;
    *(&v67 + 1) = v42;
    v93 = 8;
    sub_19A3A367C();

    sub_19A573E7C();

LABEL_14:
    LOBYTE(v66) = v64[v65[27]];
    v93 = 10;
    sub_19A3A36D0();
    sub_19A573E7C();
    LOBYTE(v66) = v64[v65[28]];
    v93 = 11;
    sub_19A3A3724();
    sub_19A573E7C();
    LOBYTE(v66) = 12;
    sub_19A573E3C();
    v44 = &v64[v65[30]];
    v45 = *(v44 + 4);
    v46 = *(v44 + 10);
    v47 = v44[44];
    v48 = *(v44 + 1);
    v66 = *v44;
    v67 = v48;
    v68 = v45;
    v70 = v47;
    v69 = v46;
    v93 = 13;
    sub_19A38A6B4();
    sub_19A573E1C();
    v49 = &v64[v65[14]];
    v50 = v49[1];
    v51 = v49[2];
    *&v66 = *v49;
    *(&v66 + 1) = v50;
    *&v67 = v51;
    v93 = 22;
    sub_19A3A3778(v66);
    sub_19A3A37BC();
    sub_19A573E1C();
    sub_19A3A3810(v66);
    v52 = &v64[v65[15]];
    v53 = v52[32];
    v54 = *(v52 + 1);
    v66 = *v52;
    v67 = v54;
    LOBYTE(v68) = v53;
    v93 = 23;
    type metadata accessor for CGRect(0);
    sub_19A3A3310(&qword_1EAF9F048, type metadata accessor for CGRect);
    sub_19A573E1C();
    LOBYTE(v66) = 24;
    sub_19A573E0C();
    v55 = &v64[v65[9]];
    v56 = v55[16];
    v66 = *v55;
    LOBYTE(v67) = v56;
    v93 = 25;
    sub_19A38B128();
    sub_19A573E1C();
    LOBYTE(v66) = v64[v65[10]];
    v93 = 26;
    sub_19A3A3850();
    sub_19A573E1C();
    LOBYTE(v66) = 27;
    sub_19A573DDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_19A3A0904@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = &v131 - v5;
  *&v148 = _s23GenerationConfigurationVMa();
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0EE0);
  v142 = *(v7 - 8);
  v143 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v131 - v8;
  v10 = type metadata accessor for GenerationRecipe(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 32);
  v15 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  v16 = *(*(v15 - 8) + 56);
  v153 = v14;
  v145 = v15;
  v16(&v13[v14], 1, 1);
  v17 = &v13[v10[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v138 = v17;
  v17[16] = 1;
  v139 = v10[10];
  v13[v139] = 3;
  v18 = &v13[v10[13]];
  *v18 = 773;
  v18[2] = 10;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = &v13[v10[14]];
  *v19 = 0;
  v19[1] = 0;
  v149 = v19;
  v150 = v18;
  v19[2] = 0;
  v151 = &v13[v10[18]];
  sub_19A57101C();
  v20 = &v13[v10[21]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v156 = v20;
  v157 = v13;
  v21 = &v13[v10[22]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v155 = v21;
  v22 = &v13[v10[23]];
  *(v22 + 12) = 0;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v154 = v22;
  v141 = v10;
  v23 = &v13[v10[26]];
  if (qword_1ED8248B0 != -1)
  {
    swift_once();
  }

  v24 = unk_1ED82BD10;
  v25 = qword_1ED82BD18;
  v26 = unk_1ED82BD20;
  *v23 = qword_1ED82BD08;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  v152 = v23;
  v27 = a1[3];
  v194 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_19A3A3268();

  sub_19A57417C();
  if (v2)
  {
    *&v148 = v2;
    v28 = v157;
    __swift_destroy_boxed_opaque_existential_0Tm(v194);
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v144 = 0;
    v33 = 1;
LABEL_6:
    sub_19A2F3FA0(&v28[v153], &unk_1EAFA2F50);

    sub_19A3A3810(*v149);
    v34 = sub_19A57102C();
    (*(*(v34 - 8) + 8))(v151, v34);

    sub_19A331C90(*v156, *(v156 + 1), *(v156 + 2), *(v156 + 3));
    sub_19A331C90(*v155, *(v155 + 1), *(v155 + 2), *(v155 + 3));
    v35 = *(v154 + 5);
    v191 = *(v154 + 4);
    v192 = v35;
    v193 = *(v154 + 12);
    v36 = *(v154 + 1);
    v187 = *v154;
    v188 = v36;
    v37 = *(v154 + 3);
    v189 = *(v154 + 2);
    v190 = v37;
    sub_19A2F3FA0(&v187, &qword_1EAFA0198);

    return sub_19A331DC8(0, v144, v33);
  }

  v29 = v9;
  LOBYTE(v184[0]) = 0;
  sub_19A3A38A4();
  v30 = v143;
  sub_19A573D4C();
  v31 = v157;
  *v157 = v187;
  LOBYTE(v187) = 1;
  sub_19A3A3310(&qword_1EAF9ED30, _s23GenerationConfigurationVMa);
  v32 = v147;
  sub_19A573D4C();
  v39 = v141;
  sub_19A3A3FE8(v32, &v31[v141[5]], _s23GenerationConfigurationVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0ED0);
  LOBYTE(v184[0]) = 2;
  sub_19A3A38F8(&qword_1EAF9E8A8, &qword_1EAF9EC80);
  sub_19A573CDC();
  v40 = v187;
  v41 = MEMORY[0x1E69E7CC0];
  if (v187)
  {
    v41 = v187;
  }

  v42 = v39[19];
  v134 = v41;
  *&v31[v42] = v41;
  LOBYTE(v184[0]) = 3;

  sub_19A573CDC();
  v43 = v187;
  if (v187)
  {
    v44 = v187;
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  *&v31[v39[20]] = v44;
  LOBYTE(v184[0]) = 4;
  sub_19A356A10();

  sub_19A573CDC();
  v144 = v43;
  v147 = v40;
  v45 = v189;
  v46 = v156;
  v47 = *v156;
  v48 = *(v156 + 1);
  v49 = *(v156 + 2);
  v50 = *(v156 + 3);
  v148 = v187;
  v137 = v188;
  sub_19A331C90(v47, v48, v49, v50);
  v51 = v137;
  *v46 = v148;
  *(v46 + 1) = v51;
  *(v46 + 4) = v45;
  LOBYTE(v184[0]) = 5;
  sub_19A573CDC();
  v133 = v44;
  v52 = v189;
  v53 = v155;
  v54 = *v155;
  v55 = *(v155 + 1);
  v56 = *(v155 + 2);
  v57 = *(v155 + 3);
  v148 = v187;
  v137 = v188;
  sub_19A331C90(v54, v55, v56, v57);
  v58 = v137;
  *v53 = v148;
  *(v53 + 1) = v58;
  *(v53 + 4) = v52;
  v186 = 6;
  sub_19A3A3994();
  sub_19A573CDC();
  v181 = v191;
  v182 = v192;
  v183 = v193;
  v177 = v187;
  v178 = v188;
  v179 = v189;
  v180 = v190;
  v59 = v154;
  v60 = *(v154 + 1);
  v184[0] = *v154;
  v184[1] = v60;
  v61 = *(v154 + 2);
  v62 = *(v154 + 3);
  v63 = *(v154 + 4);
  v64 = *(v154 + 5);
  v185 = *(v154 + 12);
  v184[4] = v63;
  v184[5] = v64;
  v184[2] = v61;
  v184[3] = v62;
  sub_19A2F3FA0(v184, &qword_1EAFA0198);
  v65 = v182;
  *(v59 + 4) = v181;
  *(v59 + 5) = v65;
  *(v59 + 12) = v183;
  v66 = v178;
  *v59 = v177;
  *(v59 + 1) = v66;
  v67 = v180;
  *(v59 + 2) = v179;
  *(v59 + 3) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0318);
  LOBYTE(v164[0]) = 7;
  sub_19A3A3430(&qword_1EAF9E8A0, &qword_1EAF9E978);
  sub_19A573CDC();
  v68 = v157;
  if (v172)
  {
    v69 = v172;
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  v70 = v141[24];
  v136 = v69;
  *&v157[v70] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0730);
  LOBYTE(v164[0]) = 14;
  sub_19A3A39E8();

  sub_19A573CDC();
  v71 = MEMORY[0x1E69E7CC0];
  if (v172)
  {
    v71 = v172;
  }

  *(v68 + v141[6]) = v71;
  LOBYTE(v172) = 15;

  v72 = v29;
  v73 = sub_19A573CCC();
  v74 = &v157[v141[7]];
  *v74 = v73;
  v74[8] = v75 & 1;
  LOBYTE(v172) = 16;
  sub_19A3A3310(&qword_1EAF9EE58, type metadata accessor for PipelineConfiguration.InputConditioning);
  sub_19A573CDC();
  sub_19A3A3A6C(v146, &v157[v153]);
  LOBYTE(v172) = 17;
  v76 = sub_19A573CBC();
  v77 = &v157[v141[11]];
  *v77 = v76;
  v77[4] = BYTE4(v76) & 1;
  LOBYTE(v172) = 18;
  v78 = sub_19A573CBC();
  v79 = &v157[v141[12]];
  *v79 = v78;
  v79[4] = BYTE4(v78) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0ED8);
  LOBYTE(v164[0]) = 20;
  sub_19A3A3ADC();
  sub_19A573CDC();
  if (v172)
  {
    v82 = v172;
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  v83 = *(v82 + 16);

  *&v137 = v82;

  if (!v83)
  {

    goto LABEL_29;
  }

  v84 = *(v137 + 16);

  if (!v84)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (!*(v137 + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (*(*(v137 + 72) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0EE8);
    LOBYTE(v164[0]) = 9;
    sub_19A3A3BB4();
    sub_19A573CDC();
    if (v172)
    {
      v84 = sub_19A39B314(v172);

      if (*(v84 + 16))
      {
        v85 = *(v84 + 34);
        v86 = *(v84 + 32);

        v68 = v86 | (v85 << 16);
      }

      else
      {

        v68 = 3;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_47:
        if (*(v137 + 16))
        {
          v106 = v137;
          v84 = *(v137 + 72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v106 + 72) = v84;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (*(v84 + 16))
            {
LABEL_50:
              *(v84 + 72) = v68;
              *(v84 + 74) = BYTE2(v68);
              *(v137 + 72) = v84;
              goto LABEL_29;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            v132 = sub_19A31D158(0, 1, 1, v137);
            goto LABEL_36;
          }
        }

        else
        {
          __break(1u);
        }

        v84 = sub_19A32E53C(v84);
        if (*(v84 + 16))
        {
          goto LABEL_50;
        }

        goto LABEL_59;
      }

LABEL_56:
      *&v137 = sub_19A32E550(v137);
      goto LABEL_47;
    }
  }

LABEL_29:
  v68 = v141[25];
  *&v157[v68] = v137;
  v171 = 19;
  sub_19A3A3B60();

  sub_19A573CDC();
  v164[2] = v174;
  v164[3] = v175;
  v165 = v176;
  v164[0] = v172;
  v164[1] = v173;
  v169 = v172;
  v30 = *(&v173 + 1);
  v170 = v173;
  v168 = v176;
  v132 = v137;
  v166 = v174;
  v167 = v175;
  if (!*(&v173 + 1))
  {
    goto LABEL_39;
  }

  if (*(v137 + 16))
  {
    sub_19A2F3FA0(v164, &qword_1EAFA0EF0);
    v132 = v137;
    goto LABEL_39;
  }

  v87 = v137;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v87;
  if ((v88 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  v90 = *(v132 + 2);
  v89 = *(v132 + 3);
  if (v90 >= v89 >> 1)
  {
    v132 = sub_19A31D158((v89 > 1), v90 + 1, 1, v132);
  }

  v91 = v132;
  *(v132 + 2) = v90 + 1;
  v92 = &v91[72 * v90];
  v93 = v170;
  *(v92 + 2) = v169;
  *(v92 + 6) = v93;
  *(v92 + 7) = v30;
  v94 = v166;
  v95 = v167;
  v92[96] = v168;
  *(v92 + 4) = v94;
  *(v92 + 5) = v95;
  *&v157[v68] = v91;
LABEL_39:
  v163 = 21;
  sub_19A3A3CE8();
  sub_19A573CDC();
  *&v148 = 0;
  v96 = v159;
  if (v159 == 1)
  {
    v97 = 0;
    v96 = 0;
    v98 = 5;
    LOBYTE(v99) = 3;
    LOBYTE(v100) = 10;
  }

  else
  {
    v98 = v158;
    v97 = *(&v158 + 1);
    v99 = v158 >> 8;
    v100 = v158 >> 16;
  }

  v101 = v150;

  *v101 = v98;
  v101[1] = v99;
  v101[2] = v100;
  *(v101 + 1) = v97;
  *(v101 + 2) = v96;
  v163 = 8;
  sub_19A3A3D3C();
  v102 = v148;
  sub_19A573CDC();
  if (v102)
  {
    (*(v142 + 8))(v72, v143);

    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v135 = 1;
    v143 = 1;
    *&v137 = v132;
    v80 = v157;
    v81 = v141;
    *&v148 = v102;
    __swift_destroy_boxed_opaque_existential_0Tm(v194);
    v28 = v80;
    sub_19A3A3F34(&v80[v81[5]], _s23GenerationConfigurationVMa);
    v33 = v135;
    if (v143)
    {
    }

    goto LABEL_6;
  }

  v103 = *(&v158 + 1);
  if (*(&v158 + 1))
  {
    *&v148 = v158;
    v104 = *(&v159 + 1);
    v105 = v159;
  }

  else
  {
    v103 = unk_1ED82BD10;
    *&v148 = qword_1ED82BD08;
    v108 = qword_1ED82BD18;
    v109 = unk_1ED82BD20;

    v105 = v108;

    v104 = v109;
  }

  v110 = v152;

  *v110 = v148;
  *(v110 + 1) = v103;
  *(v110 + 2) = v105;
  *(v110 + 3) = v104;
  v163 = 10;
  sub_19A3A3D90();
  sub_19A573CDC();
  v157[v141[27]] = v158 & 1;
  v163 = 11;
  sub_19A3A3DE4();
  sub_19A573CDC();
  v157[v141[28]] = v158 & 1;
  LOBYTE(v158) = 12;
  v157[v141[29]] = sub_19A573C9C() & 1;
  v163 = 13;
  sub_19A3A3E38();
  sub_19A573CDC();
  v111 = &v157[v141[30]];
  v112 = *(&v158 + 1);
  v114 = v159;
  v113 = v160;
  v115 = v162;
  v116 = v161;
  v144 = *(&v158 + 1);
  v145 = v161 | (v162 << 32);
  *v111 = v158;
  *(v111 + 1) = v112;
  v135 = v114;
  *(v111 + 1) = v114;
  v146 = v113;
  v147 = *(&v114 + 1);
  *(v111 + 4) = v113;
  v111[44] = v115;
  *(v111 + 10) = v116;
  v163 = 22;
  sub_19A3A3E8C();
  sub_19A573CDC();
  v148 = v158;
  v117 = v159;
  v118 = v149;
  sub_19A3A3810(*v149);
  *v118 = v148;
  v118[2] = v117;
  type metadata accessor for CGRect(0);
  v163 = 23;
  sub_19A3A3310(&qword_1EAF9E770, type metadata accessor for CGRect);
  sub_19A573CDC();
  v119 = &v157[v141[15]];
  v120 = v160;
  v121 = v159;
  *v119 = v158;
  *(v119 + 1) = v121;
  v119[32] = v120;
  LOBYTE(v158) = 24;
  v122 = sub_19A573CCC();
  v123 = &v157[v141[16]];
  *v123 = v122;
  v123[8] = v124 & 1;
  v163 = 25;
  sub_19A38B8A4();
  sub_19A573CDC();
  v125 = v159;
  v126 = v138;
  *v138 = v158;
  v126[16] = v125;
  v163 = 26;
  sub_19A3A3EE0();
  sub_19A573CDC();
  v157[v139] = v158;
  LOBYTE(v158) = 27;
  v127 = sub_19A573C9C();
  *&v148 = 0;
  LOBYTE(v117) = v127;
  (*(v142 + 8))(v72, v143);

  v128 = v140;
  v129 = v117 & 1;
  v130 = v157;
  v157[v141[17]] = v129;
  sub_19A3A4420(v130, v128, type metadata accessor for GenerationRecipe);
  __swift_destroy_boxed_opaque_existential_0Tm(v194);
  return sub_19A3A3F34(v130, type metadata accessor for GenerationRecipe);
}

uint64_t sub_19A3A21BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  v14 = *(v0 + 80);
  v3 = *(v0 + 96);
  v15 = *(v0 + 88);

  sub_19A57395C();
  MEMORY[0x19A900A50](0xD00000000000001ALL, 0x800000019A597D50);
  v16 = sub_19A573EDC();
  v18 = v4;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v5 = sub_19A573EDC();
  MEMORY[0x19A900A50](v5);

  MEMORY[0x19A900A50](32, 0xE100000000000000);
  v6 = sub_19A474A3C(v1);
  MEMORY[0x19A900A50](v6);

  MEMORY[0x19A900A50](v16, v18);

  MEMORY[0x19A900A50](0xD00000000000001CLL, 0x800000019A597D70);
  v17 = sub_19A573EDC();
  v19 = v7;
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v8 = sub_19A573EDC();
  MEMORY[0x19A900A50](v8);

  MEMORY[0x19A900A50](32, 0xE100000000000000);
  v9 = sub_19A474A3C(v2);
  MEMORY[0x19A900A50](v9);

  MEMORY[0x19A900A50](v17, v19);

  MEMORY[0x19A900A50](0xD000000000000016, 0x800000019A597D90);
  if (v14)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v14)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x19A900A50](v10, v11);

  MEMORY[0x19A900A50](0xD000000000000015, 0x800000019A597DB0);
  if (v3)
  {
    v12 = v15;
  }

  else
  {
    v12 = 0x29656E6F6E28;
  }

  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x19A900A50](v12, v3);

  MEMORY[0x19A900A50](538976288, 0xE400000000000000);
  return 0;
}

uint64_t sub_19A3A2488(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F58);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - v4;
  v7 = *v1;
  v6 = v1[1];
  v36 = *(v1 + 4);
  v9 = v1[3];
  v8 = v1[4];
  v10 = v1[5];
  v24 = v1[6];
  v25 = v10;
  LODWORD(v10) = *(v1 + 14);
  v11 = v1[9];
  v26 = v1[8];
  v27 = v11;
  v28 = v6;
  v22 = *(v1 + 80);
  v23 = v10;
  v12 = v1[11];
  v21[1] = v1[12];
  v21[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A4364();
  v13 = v9;

  sub_19A5741AC();
  v31 = v7;
  v32 = v28;
  v33 = v36;
  v34 = v13;
  v35 = v8;
  v37 = 0;
  sub_19A356A64();
  v14 = v29;
  sub_19A573E7C();
  if (v14)
  {
    v15 = v34;

    return (*(v30 + 8))(v5, v3);
  }

  else
  {
    v17 = v30;
    v18 = v34;

    v31 = v25;
    v32 = v24;
    v33 = v23;
    v34 = v26;
    v35 = v27;
    v37 = 1;
    v19 = v26;

    sub_19A573E7C();
    v20 = v34;

    LOBYTE(v31) = 2;
    sub_19A573E3C();
    LOBYTE(v31) = 3;
    sub_19A573DCC();
    return (*(v17 + 8))(v5, v3);
  }
}

uint64_t sub_19A3A2738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0F48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A3A4364();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v32) = 0;
  sub_19A356A10();
  sub_19A573D4C();
  v29 = v39;
  v28 = v40;
  v9 = v41;
  v30 = v42;
  v31 = v43;
  LOBYTE(v32) = 1;
  sub_19A573D4C();
  v52 = v9;
  v24 = v39;
  v25 = v40;
  v10 = v41;
  v27 = v42;
  v26 = v43;
  LOBYTE(v39) = 2;
  v22 = sub_19A573D0C();
  v23 = v10;
  v53 = 3;
  v11 = sub_19A573C8C();
  v13 = v12;
  LOBYTE(v10) = v22 & 1;
  v14 = v11;
  (*(v6 + 8))(v8, v5);
  *&v32 = v29;
  *(&v32 + 1) = v28;
  LODWORD(v33) = v52;
  v15 = v30;
  *(&v33 + 1) = v30;
  *&v34 = v31;
  *(&v34 + 1) = v24;
  *&v35 = v25;
  DWORD2(v35) = v23;
  v16 = v27;
  v17 = v26;
  *&v36 = v27;
  *(&v36 + 1) = v26;
  LOBYTE(v37) = v10;
  *(&v37 + 1) = v14;
  v38 = v13;
  *(a2 + 96) = v13;
  v18 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v18;
  v19 = v33;
  *a2 = v32;
  *(a2 + 16) = v19;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  sub_19A3A43B8(&v32, &v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v39 = v29;
  v40 = v28;
  v41 = v52;
  v42 = v15;
  v43 = v31;
  v44 = v24;
  v45 = v25;
  v46 = v23;
  v47 = v16;
  v48 = v17;
  v49 = v10;
  v50 = v14;
  v51 = v13;
  return sub_19A3A43F0(&v39);
}

unint64_t sub_19A3A2B78()
{
  v1 = 0x67616D4965736162;
  v2 = 0x6C42646C756F6873;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x614D686374656B73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A3A2C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A3A47CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A3A2C30(uint64_t a1)
{
  v2 = sub_19A3A4364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A3A2C6C(uint64_t a1)
{
  v2 = sub_19A3A4364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A3A2CDC()
{
  v1 = type metadata accessor for GenerationRecipe(0);
  v2 = *(v0 + v1[6]);
  v3 = sub_19A39BD48();
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v0 + v1[21] + 24);
  v6 = (v0 + v1[5]);
  v7 = *(v2 + 32);
  v8 = *v6 == 0xD000000000000029 && 0x800000019A596020 == v6[1];
  if (!v8 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  v11 = v7;
  v9 = sub_19A4AD7C8(&v11, v4 & 1, v5 != 0);
  return AppleDiffusionAdapter.modelCatalogInferenceAssetIdentifier.getter(v9);
}

uint64_t sub_19A3A2DC0()
{
  v1 = type metadata accessor for GenerationRecipe(0);
  v2 = *(v0 + v1[6]);
  v3 = sub_19A39BD48();
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v0 + v1[21] + 24);
  v6 = (v0 + v1[5]);
  v7 = *(v2 + 32);
  v8 = *v6 == 0xD000000000000029 && 0x800000019A596020 == v6[1];
  if (!v8 && (sub_19A573F1C() & 1) == 0)
  {
    return 0;
  }

  v13 = v7;
  v10 = sub_19A4AD7C8(&v13, v4 & 1, v5 != 0);
  v11 = sub_19A573C2C();

  if (v11)
  {
    if (v11 != 1)
    {
      return 0;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  result = sub_19A4AEB44(v12, v10);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19A3A2F20@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for GenerationRecipe(0);
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  v10 = v8[8];
  v11 = type metadata accessor for PipelineConfiguration.InputConditioning(0);
  (*(*(v11 - 8) + 56))(&a4[v10], 1, 1, v11);
  v12 = &a4[v8[9]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  a4[v8[10]] = 3;
  v13 = &a4[v8[11]];
  *v13 = 0;
  v13[4] = 1;
  v14 = &a4[v8[12]];
  *v14 = 0;
  v14[4] = 1;
  v15 = &a4[v8[13]];
  *v15 = 773;
  v15[2] = 10;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  v16 = &a4[v8[14]];
  *v16 = 0;
  v16[1] = 0;
  v16[2] = 0;
  v17 = &a4[v8[15]];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v18 = &a4[v8[16]];
  *v18 = 0;
  v18[8] = 1;
  a4[v8[17]] = 0;
  sub_19A57101C();
  v19 = MEMORY[0x1E69E7CC0];
  *&a4[v8[19]] = MEMORY[0x1E69E7CC0];
  *&a4[v8[20]] = v19;
  v20 = &a4[v8[21]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v21 = &a4[v8[22]];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &a4[v8[23]];
  *(v22 + 12) = 0;
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&a4[v8[24]] = v19;
  *&a4[v8[25]] = v19;
  v23 = v8[26];
  if (qword_1ED8248B0 != -1)
  {
    swift_once();
  }

  v24 = &a4[v23];
  v25 = unk_1ED82BD10;
  v27 = qword_1ED82BD18;
  v26 = unk_1ED82BD20;
  *v24 = qword_1ED82BD08;
  v24[1] = v25;
  v24[2] = v27;
  v24[3] = v26;
  a4[v8[27]] = 0;
  a4[v8[28]] = 0;
  a4[v8[29]] = 0;
  v28 = &a4[v8[30]];
  *v28 = 0;
  v28[1] = 0;
  v28[3] = 0;
  v28[4] = 0;
  v28[2] = 1;
  *(v28 + 37) = 0;
  *a4 = a1;
  v29 = &a4[v8[5]];
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v29[32] = 1;
  *(v29 + 5) = 1;
  *(v29 + 12) = 257;
  *(v29 + 26) = 257;
  v30 = *(_s23GenerationConfigurationVMa() + 52);
  v31 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v31 - 8) + 56))(&v29[v30], 1, 1, v31);
  *v29 = a2;
  *(v29 + 1) = a3;
  *&a4[v8[6]] = v19;
}

uint64_t sub_19A3A322C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

unint64_t sub_19A3A3268()
{
  result = qword_1ED824CB8[0];
  if (!qword_1ED824CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED824CB8);
  }

  return result;
}

unint64_t sub_19A3A32BC()
{
  result = qword_1ED8248F0;
  if (!qword_1ED8248F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248F0);
  }

  return result;
}

uint64_t sub_19A3A3310(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A3A3358()
{
  result = qword_1EAF9F878;
  if (!qword_1EAF9F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0198);
    sub_19A3A33DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F878);
  }

  return result;
}

unint64_t sub_19A3A33DC()
{
  result = qword_1EAF9F880;
  if (!qword_1EAF9F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F880);
  }

  return result;
}

uint64_t sub_19A3A3430(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0318);
    sub_19A3A3310(a2, type metadata accessor for Concept);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A3A34CC()
{
  result = qword_1EAF9F128;
  if (!qword_1EAF9F128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0730);
    sub_19A38B0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F128);
  }

  return result;
}

unint64_t sub_19A3A3550()
{
  result = qword_1EAF9F130;
  if (!qword_1EAF9F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0ED8);
    sub_19A3A35D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F130);
  }

  return result;
}

unint64_t sub_19A3A35D4()
{
  result = qword_1EAF9F870;
  if (!qword_1EAF9F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F870);
  }

  return result;
}

unint64_t sub_19A3A3628()
{
  result = qword_1EAF9F4D8;
  if (!qword_1EAF9F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F4D8);
  }

  return result;
}

unint64_t sub_19A3A367C()
{
  result = qword_1EAF9F670;
  if (!qword_1EAF9F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F670);
  }

  return result;
}

unint64_t sub_19A3A36D0()
{
  result = qword_1EAF9F820;
  if (!qword_1EAF9F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F820);
  }

  return result;
}

unint64_t sub_19A3A3724()
{
  result = qword_1EAF9F770;
  if (!qword_1EAF9F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F770);
  }

  return result;
}

uint64_t sub_19A3A3778(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_19A3A37BC()
{
  result = qword_1EAF9F848;
  if (!qword_1EAF9F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F848);
  }

  return result;
}

uint64_t sub_19A3A3810(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_19A3A3850()
{
  result = qword_1EAF9F470;
  if (!qword_1EAF9F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F470);
  }

  return result;
}

unint64_t sub_19A3A38A4()
{
  result = qword_1ED8248E8;
  if (!qword_1ED8248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8248E8);
  }

  return result;
}

uint64_t sub_19A3A38F8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0ED0);
    sub_19A3A3310(a2, type metadata accessor for ResolvedTextPrompt);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A3A3994()
{
  result = qword_1EAF9ED88;
  if (!qword_1EAF9ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED88);
  }

  return result;
}

unint64_t sub_19A3A39E8()
{
  result = qword_1EAF9E8C8;
  if (!qword_1EAF9E8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0730);
    sub_19A38B850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E8C8);
  }

  return result;
}

uint64_t sub_19A3A3A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A3A3ADC()
{
  result = qword_1EAF9E8D0;
  if (!qword_1EAF9E8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0ED8);
    sub_19A3A3B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E8D0);
  }

  return result;
}

unint64_t sub_19A3A3B60()
{
  result = qword_1EAF9ED80;
  if (!qword_1EAF9ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED80);
  }

  return result;
}

unint64_t sub_19A3A3BB4()
{
  result = qword_1EAF9E920;
  if (!qword_1EAF9E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0EE8);
    sub_19A3A3C40();
    sub_19A3A3C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9E920);
  }

  return result;
}

unint64_t sub_19A3A3C40()
{
  result = qword_1EAF9ED48;
  if (!qword_1EAF9ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED48);
  }

  return result;
}

unint64_t sub_19A3A3C94()
{
  result = qword_1EAF9ED40;
  if (!qword_1EAF9ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED40);
  }

  return result;
}

unint64_t sub_19A3A3CE8()
{
  result = qword_1EAF9EB10;
  if (!qword_1EAF9EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EB10);
  }

  return result;
}

unint64_t sub_19A3A3D3C()
{
  result = qword_1EAF9EC88;
  if (!qword_1EAF9EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EC88);
  }

  return result;
}

unint64_t sub_19A3A3D90()
{
  result = qword_1EAF9ED50;
  if (!qword_1EAF9ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED50);
  }

  return result;
}

unint64_t sub_19A3A3DE4()
{
  result = qword_1EAF9ED10;
  if (!qword_1EAF9ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED10);
  }

  return result;
}

unint64_t sub_19A3A3E38()
{
  result = qword_1EAF9EA28;
  if (!qword_1EAF9EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EA28);
  }

  return result;
}

unint64_t sub_19A3A3E8C()
{
  result = qword_1EAF9ED60;
  if (!qword_1EAF9ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ED60);
  }

  return result;
}

unint64_t sub_19A3A3EE0()
{
  result = qword_1EAF9EB00;
  if (!qword_1EAF9EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EB00);
  }

  return result;
}

uint64_t sub_19A3A3F34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A3A3F94()
{
  result = qword_1ED8247F0;
  if (!qword_1ED8247F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8247F0);
  }

  return result;
}

uint64_t sub_19A3A3FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A3A4050()
{
  result = qword_1EAF9ECC8;
  if (!qword_1EAF9ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECC8);
  }

  return result;
}

unint64_t sub_19A3A40A4()
{
  result = qword_1EAF9F6D0;
  if (!qword_1EAF9F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6D0);
  }

  return result;
}

unint64_t sub_19A3A40F8()
{
  result = qword_1EAFA0F10;
  if (!qword_1EAFA0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F10);
  }

  return result;
}

unint64_t sub_19A3A414C()
{
  result = qword_1EAFA0F20;
  if (!qword_1EAFA0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0F18);
    sub_19A3A41D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F20);
  }

  return result;
}

unint64_t sub_19A3A41D0()
{
  result = qword_1EAFA0F28;
  if (!qword_1EAFA0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F28);
  }

  return result;
}

unint64_t sub_19A3A428C()
{
  result = qword_1EAFA0F38;
  if (!qword_1EAFA0F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA0F18);
    sub_19A3A4310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F38);
  }

  return result;
}

unint64_t sub_19A3A4310()
{
  result = qword_1EAFA0F40;
  if (!qword_1EAFA0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F40);
  }

  return result;
}

unint64_t sub_19A3A4364()
{
  result = qword_1EAFA0F50;
  if (!qword_1EAFA0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F50);
  }

  return result;
}

uint64_t sub_19A3A4420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3A4488(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000019A597ED0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A597EF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274744165636166 && a2 == 0xEE00736574756269 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A3A4604(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000019A597E50 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A597E70 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7061436567616D69 && a2 == 0xEC0000006E6F6974 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000019A597E90 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_19A573F1C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A3A4778()
{
  v0 = sub_19A57400C();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_19A3A47CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x67616D4965736162 && a2 == 0xE900000000000065;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D686374656B73 && a2 == 0xEA00000000006B73 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C42646C756F6873 && a2 == 0xEB00000000646E65 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A597EB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A3A494C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_19A3A49A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationRecipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerationRecipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19A3A4B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 44))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_19A3A4BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_19A3A4C6C()
{
  result = qword_1EAFA0F60;
  if (!qword_1EAFA0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F60);
  }

  return result;
}

unint64_t sub_19A3A4CC4()
{
  result = qword_1EAFA0F68;
  if (!qword_1EAFA0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F68);
  }

  return result;
}

unint64_t sub_19A3A4D1C()
{
  result = qword_1EAFA0F70;
  if (!qword_1EAFA0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F70);
  }

  return result;
}

unint64_t sub_19A3A4D74()
{
  result = qword_1EAFA0F78;
  if (!qword_1EAFA0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F78);
  }

  return result;
}

unint64_t sub_19A3A4DCC()
{
  result = qword_1EAFA0F80;
  if (!qword_1EAFA0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F80);
  }

  return result;
}

unint64_t sub_19A3A4E24()
{
  result = qword_1EAFA0F88;
  if (!qword_1EAFA0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F88);
  }

  return result;
}

unint64_t sub_19A3A4E7C()
{
  result = qword_1EAFA0F90;
  if (!qword_1EAFA0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F90);
  }

  return result;
}

unint64_t sub_19A3A4ED4()
{
  result = qword_1EAFA0F98;
  if (!qword_1EAFA0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0F98);
  }

  return result;
}

unint64_t sub_19A3A4F2C()
{
  result = qword_1ED8247E0;
  if (!qword_1ED8247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8247E0);
  }

  return result;
}

unint64_t sub_19A3A4F84()
{
  result = qword_1ED8247E8;
  if (!qword_1ED8247E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8247E8);
  }

  return result;
}

unint64_t sub_19A3A4FDC()
{
  result = qword_1ED824CA8;
  if (!qword_1ED824CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824CA8);
  }

  return result;
}

unint64_t sub_19A3A5034()
{
  result = qword_1ED824CB0;
  if (!qword_1ED824CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824CB0);
  }

  return result;
}

unint64_t sub_19A3A5088()
{
  result = qword_1EAFA0FA8;
  if (!qword_1EAFA0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FA8);
  }

  return result;
}

unint64_t sub_19A3A50DC()
{
  result = qword_1EAFA0FC8;
  if (!qword_1EAFA0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FC8);
  }

  return result;
}

unint64_t sub_19A3A5130()
{
  result = qword_1EAFA0FD0;
  if (!qword_1EAFA0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FD0);
  }

  return result;
}

unint64_t sub_19A3A5198()
{
  result = qword_1EAFA0FD8;
  if (!qword_1EAFA0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FD8);
  }

  return result;
}

unint64_t sub_19A3A51F0()
{
  result = qword_1EAFA0FE0;
  if (!qword_1EAFA0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FE0);
  }

  return result;
}

unint64_t sub_19A3A5248()
{
  result = qword_1EAFA0FE8;
  if (!qword_1EAFA0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0FE8);
  }

  return result;
}

void *sub_19A3A52A8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_19A573B5C();

    if (v4)
    {
      sub_19A2F1600(0, &qword_1EAF9F088);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_19A31FF68(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_19A3A536C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = sub_19A3A52A8(a2, *a1);
  if (v7)
  {
    *a3 = v7;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E69CA770]);
    v18[0] = 0;
    v9 = a2;
    v10 = [v8 initWithConfiguration:v9 error:v18];
    if (v10)
    {
      v11 = v10;
      v12 = v18[0];

      if ((v6 & 0xC000000000000001) != 0)
      {
        if (v6 >= 0)
        {
          v6 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v13 = v11;
        v14 = sub_19A573B4C();
        if (__OFADD__(v14, 1))
        {
          __break(1u);
        }

        *a1 = sub_19A3A5710(v6, v14 + 1);
      }

      else
      {
        v16 = v11;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18[0] = *a1;
      sub_19A33D934(v11, v9, isUniquelyReferenced_nonNull_native);
      *a1 = v18[0];
      *a3 = v11;
    }

    else
    {
      v15 = v18[0];
      sub_19A570D1C();

      swift_willThrow();
    }
  }
}

uint64_t sub_19A3A54E4()
{
  type metadata accessor for DependencyResourceFactory.WeakContainer();
  v0 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0FF8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1EAF9F5C0 = result;
  return result;
}

uint64_t sub_19A3A5554(uint64_t a1)
{
  v3 = v1;
  type metadata accessor for SCMLResourceFactory.SCMLSession();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0FF0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC8];
  *(v5 + 16) = v6;
  *(v3 + 16) = v5;
  v7 = sub_19A3A5A9C(a1);
  v8 = *(*(v3 + 16) + 16);

  os_unfair_lock_lock((v8 + 24));
  sub_19A3A5D5C((v8 + 16), &v11);
  os_unfair_lock_unlock((v8 + 24));

  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v11;
  }

  return v3;
}

uint64_t sub_19A3A5710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF80);
    v2 = sub_19A573BDC();
    v19 = v2;
    sub_19A573B3C();
    v3 = sub_19A573B6C();
    if (v3)
    {
      v4 = v3;
      sub_19A2F1600(0, &qword_1EAF9FF88);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_19A2F1600(0, &qword_1EAF9F088);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_19A32AE14(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_19A57373C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_19A573B6C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_19A3A595C()
{
  v0 = 0xD000000000000025;
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_19A572CFC();
  v5 = v4;

  v6 = v3 == 0xD000000000000010 && 0x800000019A597FB0 == v5;
  if (v6 || (sub_19A573F1C() & 1) != 0 || (v3 == 0x6F4E656C69626F4DLL ? (v7 = v5 == 0xEB00000000736574) : (v7 = 0), v7))
  {
  }

  else
  {
    v8 = sub_19A573F1C();

    if ((v8 & 1) == 0)
    {
      return 0xD000000000000027;
    }
  }

  return v0;
}

id sub_19A3A5A9C(uint64_t a1)
{
  v2 = sub_19A57112C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A3A595C();
  v7 = sub_19A4455C4(v6);
  v8 = objc_allocWithZone(MEMORY[0x1E69CA778]);
  v9 = sub_19A572CCC();

  v10 = [v8 initWithModelManagerServicesUseCaseID_];

  [v10 setOnBehalfOfProcessID_];
  [v10 setGranularity_];
  [v10 setRegion_];
  sub_19A474D68(v5);
  v11 = sub_19A57109C();
  (*(v3 + 8))(v5, v2);
  [v10 setLocale_];

  return v10;
}

uint64_t sub_19A3A5C28(uint64_t a1)
{
  if (qword_1EAF9F5B8 != -1)
  {
    swift_once();
  }

  v3 = off_1EAF9F5C0;
  os_unfair_lock_lock(off_1EAF9F5C0 + 6);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for DependencyResourceFactory();
    type metadata accessor for SCMLResourceFactory();
  }

  else
  {
    type metadata accessor for SCMLResourceFactory();
    v5 = swift_allocObject();
    v6 = a1;
    v4 = v5;
    sub_19A3A5554(v6);
    if (v1)
    {
      os_unfair_lock_unlock(v3 + 6);
      return v4;
    }

    swift_weakAssign();
    type metadata accessor for DependencyResourceFactory();
  }

  swift_dynamicCast();
  v4 = v8;
  os_unfair_lock_unlock(v3 + 6);
  return v4;
}

uint64_t GeneratedImage.description.getter()
{
  sub_19A57395C();

  type metadata accessor for GeneratedImage();
  type metadata accessor for ImageProvenance();
  sub_19A57102C();
  sub_19A2F4644();
  v0 = sub_19A573EDC();
  MEMORY[0x19A900A50](v0);

  MEMORY[0x19A900A50](23328, 0xE200000000000000);
  v1 = sub_19A573EDC();
  MEMORY[0x19A900A50](v1);

  MEMORY[0x19A900A50](93, 0xE100000000000000);
  return 0x65746172656E6547;
}

uint64_t GeneratedImage.promptAfterRewrites.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedImage() + 32));

  return v1;
}

uint64_t GeneratedImage.promptAfterAssembly.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratedImage() + 36));

  return v1;
}

uint64_t GeneratedImage.PNGRepresentationData.getter()
{
  v1 = sub_19A571EDC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v6 = objc_allocWithZone(MEMORY[0x1E695F620]);
      v7 = v5;
      v8 = [v6 init];
      [v7 extent];
      v9 = [v8 createCGImage:v7 fromRect:?];
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      v8 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v10 extent];
      v9 = [v8 createCGImage:v10 fromRect:?];
    }

    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    v9 = v5;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_12;
  }

  v12 = Mutable;
  sub_19A571ECC();
  sub_19A571EBC();
  (*(v2 + 8))(v4, v1);
  v13 = sub_19A572CCC();

  v14 = CGImageDestinationCreateWithData(v12, v13, 1uLL, 0);

  if (!v14)
  {

LABEL_12:
    return 0;
  }

  CGImageDestinationAddImage(v14, v9, 0);
  if (CGImageDestinationFinalize(v14))
  {
    v15 = v12;
    v16 = sub_19A570F2C();

    return v16;
  }

  return 0;
}

uint64_t sub_19A3A61B4()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_19A572C4C();
  sub_19A5710EC();
  return sub_19A572D7C();
}

double GenerativePlayground.AssignmentConfiguration_V2.init()@<D0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v3 = v2[6];
  v4 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[7]];
  *v5 = 1;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v6 = &a1[v2[8]];
  *v6 = 0;
  v6[8] = -1;
  v7 = &a1[v2[9]];
  *(v7 + 2) = 256;
  *v7 = 0;
  v8 = &a1[v2[10]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[11]];
  *v9 = 0;
  v9[8] = -1;
  v10 = &a1[v2[12]];
  *v10 = 0;
  v10[8] = -1;
  v11 = &a1[v2[13]];
  *v11 = 2;
  *(v11 + 4) = 0;
  v12 = &a1[v2[14]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a1[v2[15]];
  *v13 = 0;
  v13[8] = -1;
  *&a1[v2[16]] = 2;
  v14 = &a1[v2[17]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a1[v2[18]] = MEMORY[0x1E69E7CC0];
  a1[v2[19]] = 3;
  a1[v2[20]] = 10;
  v15 = &a1[v2[21]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a1[v2[22]];
  result = 0.0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v18 = &a1[v2[23]];
  *v18 = 0;
  v18[8] = 1;
  *&a1[v2[24]] = 0;
  a1[v2[25]] = 0;
  a1[v2[26]] = 1;
  a1[v2[27]] = 1;
  v19 = &a1[v2[28]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a1[v2[29]];
  *v20 = 0;
  *(v20 + 1) = 0;
  return result;
}

uint64_t sub_19A3A648C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v5 = v4[6];
  v6 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = &a2[v4[7]];
  *v7 = 1;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0;
  v58 = &a2[v4[8]];
  *v58 = 0;
  v58[8] = -1;
  v59 = &a2[v4[9]];
  *(v59 + 2) = 256;
  *v59 = 0;
  v60 = &a2[v4[10]];
  v61 = &a2[v4[11]];
  *v61 = 0;
  v61[8] = -1;
  v62 = &a2[v4[12]];
  *v62 = 0;
  v62[8] = -1;
  v63 = &a2[v4[13]];
  *v63 = 2;
  *(v63 + 4) = 0;
  v64 = &a2[v4[14]];
  v8 = &a2[v4[15]];
  *v8 = 0;
  v8[8] = -1;
  v65 = v8;
  v66 = v4[16];
  *&a2[v66] = 2;
  v67 = &a2[v4[17]];
  v68 = v4[18];
  v69 = v4[20];
  v70 = v4[19];
  a2[v69] = 10;
  v71 = &a2[v4[21]];
  v72 = &a2[v4[22]];
  v74 = v4[24];
  v73 = &a2[v4[23]];
  v75 = v4[25];
  v76 = v4[26];
  v77 = v4[27];
  v78 = &a2[v4[28]];
  v9 = &a2[v4[29]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v10;
  v11 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v12 = v11[5];

  sub_19A3B1804(a1 + v12, &a2[v5]);
  v13 = (a1 + v11[6]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = v13[3];
  v18 = v7[1];
  v19 = v7[2];
  v57 = *v7;
  sub_19A3A6BDC(*v13, v15, v16);
  sub_19A3A6C6C(v57, v18, v19);
  *v7 = v14;
  v7[1] = v15;
  v7[2] = v16;
  v7[3] = v17;
  v20 = a1 + v11[7];
  v21 = *v20;
  v22 = *v58;
  LOBYTE(v16) = v20[8];
  LOBYTE(v17) = v58[8];
  sub_19A3319D0(*v20, v16);
  sub_19A335458(v22, v17);
  *v58 = v21;
  v58[8] = v16;
  v23 = a1 + v11[8];
  v24 = *v23;
  v25 = v23[4];
  LOBYTE(v23) = v23[5];
  v59[4] = v25;
  *v59 = v24;
  v59[5] = v23;
  v26 = (a1 + v11[9]);
  v27 = *v26;
  v28 = v26[1];
  *v60 = *v26;
  v60[1] = v28;
  v29 = a1 + v11[10];
  v30 = *v29;
  v31 = *v61;
  LOBYTE(v16) = v29[8];
  LOBYTE(v17) = v61[8];
  sub_19A2E0A50(v27);
  sub_19A3319D0(v30, v16);
  sub_19A335458(v31, v17);
  *v61 = v30;
  v61[8] = v16;
  v32 = a1 + v11[11];
  v33 = *v32;
  v34 = *v62;
  LOBYTE(v16) = v32[8];
  LOBYTE(v17) = v62[8];
  sub_19A3319D0(*v32, v16);
  sub_19A335458(v34, v17);
  *v62 = v33;
  v62[8] = v16;
  v35 = a1 + v11[12];
  v36 = *v35;
  LOWORD(v35) = *(v35 + 4);
  *v63 = v36;
  *(v63 + 4) = v35;
  v37 = (a1 + v11[13]);
  v38 = *v37;
  v39 = v37[1];
  *v64 = *v37;
  v64[1] = v39;
  v40 = a1 + v11[14];
  v41 = *v40;
  v42 = *v65;
  LOBYTE(v16) = v40[8];
  LOBYTE(v17) = v65[8];
  sub_19A2E0A50(v38);
  sub_19A3319D0(v41, v16);
  sub_19A335458(v42, v17);
  *v65 = v41;
  v65[8] = v16;
  *&a2[v66] = *(a1 + v11[15]);
  v43 = (a1 + v11[16]);
  v44 = *v43;
  v45 = v43[1];
  *v67 = *v43;
  v67[1] = v45;
  *&a2[v68] = *(a1 + v11[17]);
  a2[v70] = *(a1 + v11[18]);
  a2[v69] = *(a1 + v11[19]);
  v46 = (a1 + v11[20]);
  v47 = v46[1];
  *v71 = *v46;
  *(v71 + 1) = v47;
  v48 = a1 + v11[21];
  v49 = v48[32];
  v50 = *(v48 + 1);
  *v72 = *v48;
  *(v72 + 1) = v50;
  v72[32] = v49;
  v51 = a1 + v11[22];
  v52 = *v51;
  LOBYTE(v51) = v51[8];
  *v73 = v52;
  v73[8] = v51;
  *&a2[v74] = 0;
  a2[v75] = *(a1 + v11[23]);
  a2[v76] = *(a1 + v11[24]);
  a2[v77] = *(a1 + v11[25]);
  v53 = (a1 + v11[26]);
  v54 = *v53;
  v55 = v53[1];
  sub_19A2E0A50(v44);

  sub_19A2E0A50(v54);
  result = sub_19A3B0D64(a1, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);
  *v78 = v54;
  v78[1] = v55;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.clientProvidedPrompt.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.clientProvidedPrompt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 24);

  return sub_19A3A6A20(v3, a1);
}

uint64_t sub_19A3A6A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptAssignmentOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 24);

  return sub_19A3A6AD4(a1, v3);
}

uint64_t sub_19A3A6AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptAssignmentInteractable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_19A3A6BDC(v4, v5, v6);
}

uint64_t sub_19A3A6BDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    sub_19A2E0A50(result);

    return sub_19A2E0A50(a3);
  }

  return result;
}

__n128 GenerativePlayground.AssignmentConfiguration_V2.promptAssignmentInteractable.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 28));
  sub_19A3A6C6C(*v3, v3[1], v3[2]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t sub_19A3A6C6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    sub_19A2E0A60(result);

    return sub_19A2E0A60(a3);
  }

  return result;
}

id GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketch.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketch.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 32);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketchAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 5);
  *(a1 + 4) = v6;
  *a1 = v5;
  *(a1 + 5) = v4;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketchAssignmentOptions.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v6 = v1 + *(result + 36);
  *(v6 + 4) = v3;
  *v6 = v2;
  *(v6 + 5) = v4;
  return result;
}

uint64_t sub_19A3A6EC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3B1BB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A6F58(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BBC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 40));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketchAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 40));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptGuidanceSketchAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 40));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id GenerativePlayground.AssignmentConfiguration_V2.sketchMask.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 48);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V2.sketchMask.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 48);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.drawOnImageAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  LOWORD(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.drawOnImageAssignmentOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v5 = v1 + *(result + 52);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_19A3A7304@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3B1BB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A7398(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BBC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 56));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.drawOnImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 56));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.drawOnImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 56));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 60);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 60);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImageAssignmentOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImageAssignmentOptions.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 64)) = v2;
  return result;
}

uint64_t sub_19A3A76AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3B1BB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A7740(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BBC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 68));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 68));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.promptConditioningImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 68));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.imageStyles.getter()
{
  type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.imageStyles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.genderDirective.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.skinToneDirective.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.skinToneDirective.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 80)) = v2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.personDescriptionDirective.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 84));

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.personDescriptionDirective.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 GenerativePlayground.AssignmentConfiguration_V2.personalizationBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 88);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 GenerativePlayground.AssignmentConfiguration_V2.personalizationBounds.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 88);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.generationSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v6 = v2 + *(result + 92);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.imageVariations.getter()
{
  type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.imageVariations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 96);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.forceInProcessGeneration.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.allowImageRejection.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.enableGenerativeModelsAvailabilityCheck.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 108)) = a1;
  return result;
}

uint64_t sub_19A3A7FA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 112));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3558EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A803C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BC0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 112));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.forensicsReporter.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 112));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.forensicsReporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 112));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.genericCharacterFilename.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 116));

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V2.genericCharacterFilename.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0) + 116));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

double GenerativePlayground.AssignmentConfiguration_V1.init()@<D0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v3 = v2[5];
  v4 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  *v5 = 1;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  v6 = &a1[v2[7]];
  *v6 = 0;
  v6[8] = -1;
  v7 = &a1[v2[8]];
  *(v7 + 2) = 256;
  *v7 = 0;
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[10]];
  *v9 = 0;
  v9[8] = -1;
  v10 = &a1[v2[11]];
  *v10 = 0;
  v10[8] = -1;
  v11 = &a1[v2[12]];
  *v11 = 2;
  *(v11 + 4) = 0;
  v12 = &a1[v2[13]];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a1[v2[14]];
  *v13 = 0;
  v13[8] = -1;
  *&a1[v2[15]] = 2;
  v14 = &a1[v2[16]];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&a1[v2[17]] = MEMORY[0x1E69E7CC0];
  a1[v2[18]] = 3;
  a1[v2[19]] = 10;
  v15 = &a1[v2[20]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &a1[v2[21]];
  result = 0.0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v18 = &a1[v2[22]];
  *v18 = 0;
  v18[8] = 1;
  a1[v2[23]] = 0;
  a1[v2[24]] = 1;
  a1[v2[25]] = 1;
  v19 = &a1[v2[26]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &a1[v2[27]];
  *v20 = 0;
  *(v20 + 1) = 0;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.prompt.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 20);

  return sub_19A3A6A20(v3, a1);
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptAssignmentOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 20);

  return sub_19A3A6AD4(a1, v3);
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptAssignmentInteractable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_19A3A6BDC(v4, v5, v6);
}

__n128 GenerativePlayground.AssignmentConfiguration_V1.promptAssignmentInteractable.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 24));
  sub_19A3A6C6C(*v3, v3[1], v3[2]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

id GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketch.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 28);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketch.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 28);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketchAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = *(v4 + 4);
  LOBYTE(v4) = *(v4 + 5);
  *(a1 + 4) = v6;
  *a1 = v5;
  *(a1 + 5) = v4;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketchAssignmentOptions.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v6 = v1 + *(result + 32);
  *(v6 + 4) = v3;
  *v6 = v2;
  *(v6 + 5) = v4;
  return result;
}

uint64_t sub_19A3A8858@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A33478C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A88EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A334754;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 36));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketchAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 36));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptGuidanceSketchAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 36));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id GenerativePlayground.AssignmentConfiguration_V1.baseImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 40);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V1.baseImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 40);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

id sub_19A3A8B6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 44);
  v5 = *v4;
  *a2 = *v4;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;

  return sub_19A3319D0(v5, v6);
}

void sub_19A3A8BDC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v2 + *(a2(0) + 44);
  sub_19A335458(*v5, *(v5 + 8));
  *v5 = v3;
  *(v5 + 8) = v4;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.drawOnImageAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOWORD(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.drawOnImageAssignmentOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v5 = v1 + *(result + 48);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_19A3A8D44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A33478C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A8DD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A334754;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 52));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.drawOnImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 52));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.drawOnImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 52));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 56);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 56);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImageAssignmentOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImageAssignmentOptions.setter(int *a1)
{
  v2 = *a1;
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t sub_19A3A90EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3B1BB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A9180(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BBC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 64));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 64));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.promptConditioningImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 64));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.imageStyles.getter()
{
  type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.imageStyles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.genderDirective.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.skinToneDirective.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.skinToneDirective.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.personDescriptionDirective.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 80));

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.personDescriptionDirective.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 80));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 GenerativePlayground.AssignmentConfiguration_V1.personalizationBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 84);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 GenerativePlayground.AssignmentConfiguration_V1.personalizationBounds.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 84);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.generationSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v6 = v2 + *(result + 88);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.forceInProcessGeneration.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.allowImageRejection.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 96)) = a1;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.enableGenerativeModelsAvailabilityCheck.setter(char a1)
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t sub_19A3A992C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 104));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3555A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A3A99C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B17FC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 104));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.forensicsReporter.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 104));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.forensicsReporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 104));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.genericCharacterFilename.getter()
{
  v1 = *(v0 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 108));

  return v1;
}

uint64_t GenerativePlayground.AssignmentConfiguration_V1.genericCharacterFilename.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0) + 108));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenerativePlayground.assign(versionedConfiguration:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for DefinitionSession();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for GenerationRecipe(0);
  v2[10] = swift_task_alloc();
  type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for GenerativePlayground.AssignmentConfiguration(0);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3A9D74, 0, 0);
}

uint64_t sub_19A3A9D74()
{
  sub_19A3B0CFC(v0[5], v0[16], type metadata accessor for GenerativePlayground.AssignmentConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_19A3B0E18(v2, v0[11], type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_19A3AA1B8;
    v4 = v0[11];
  }

  else
  {
    v5 = v0[13];
    v6 = v0[14];
    v7 = v0[12];
    sub_19A3B0E18(v2, v6, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);
    sub_19A3B0CFC(v6, v5, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);
    sub_19A3A648C(v5, v7);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_19A3A9F08;
    v4 = v0[12];
  }

  return sub_19A3AA6D0(v4);
}

uint64_t sub_19A3A9F08()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_19A3AA0C0;
  }

  else
  {
    v2 = sub_19A3AA01C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AA01C()
{
  v1 = v0[14];
  sub_19A3B0D64(v0[12], type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);
  sub_19A3B0D64(v1, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);
  v2 = *(v0[6] + 168);
  v0[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_19A3AA350, v2, 0);
}

uint64_t sub_19A3AA0C0()
{
  v1 = v0[14];
  sub_19A3B0D64(v0[12], type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);
  sub_19A3B0D64(v1, type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A3AA1B8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_19A3AA5D8;
  }

  else
  {
    v2 = sub_19A3AA2CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AA2CC()
{
  sub_19A3B0D64(v0[11], type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);
  v1 = *(v0[6] + 168);
  v0[21] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3AA350, v1, 0);
}

uint64_t sub_19A3AA350()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A3B0CFC(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AA3FC, 0, 0);
}

uint64_t sub_19A3AA3FC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_19A3B0CFC(v3 + *(v0[7] + 88), v1, type metadata accessor for GenerationRecipe);
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);
  v4 = sub_19A39BD48();
  if (*(v1 + *(v2 + 84) + 24) && (v4 & 1) != 0)
  {
    v5 = v0[10];
    sub_19A3B0DC4();
    swift_allocError();
    swift_willThrow();
    sub_19A3B0D64(v5, type metadata accessor for GenerationRecipe);

    v6 = v0[1];
  }

  else
  {
    sub_19A3B0D64(v0[10], type metadata accessor for GenerationRecipe);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_19A3AA5D8()
{
  sub_19A3B0D64(*(v0 + 88), type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A3AA6D0(uint64_t a1)
{
  v2[57] = a1;
  v2[58] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
  v2[59] = swift_task_alloc();
  v3 = type metadata accessor for GenerativePlayground.PromptAssignmentOptions(0);
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDB0);
  v2[63] = swift_task_alloc();
  v4 = sub_19A57102C();
  v2[64] = v4;
  v2[65] = *(v4 - 8);
  v2[66] = swift_task_alloc();
  v5 = type metadata accessor for DefinitionSession();
  v2[67] = v5;
  v2[68] = *(v5 - 8);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3AA8E8, 0, 0);
}

uint64_t sub_19A3AA8E8()
{
  v1 = sub_19A57231C();
  v0[74] = v1;
  v2 = *(v1 - 8);
  v0[75] = v2;
  v0[76] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v3 = sub_19A57236C();
  __swift_project_value_buffer(v3, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v4 = sub_19A57234C();
  v5 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v4, v5, v7, "assignConfiguration", "GenerativePlayground.AssignmentConfiguration", v6, 2u);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  swift_task_alloc();
  (*(v2 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[77] = sub_19A5723AC();

  v8 = swift_task_alloc();
  v0[78] = v8;
  *v8 = v0;
  v8[1] = sub_19A3AAB20;

  return sub_19A2F771C();
}

uint64_t sub_19A3AAB20()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3AAC1C, 0, 0);
}

uint64_t sub_19A3AAC1C()
{
  v1 = *(*(v0 + 464) + 168);
  *(v0 + 632) = v1;
  return MEMORY[0x1EEE6DFA0](sub_19A3AAC40, v1, 0);
}

uint64_t sub_19A3AAC40()
{
  v1 = v0[79];
  v2 = v0[73];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[80] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A3B0CFC(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AACF0, 0, 0);
}

uint64_t sub_19A3AACF0()
{
  v1 = v0[79];
  v2 = v0[73];
  v3 = *(v0[67] + 88);
  v4 = type metadata accessor for GenerationRecipe(0);
  v0[81] = v4;
  v5 = v2 + *(v4 + 52) + v3;

  *(v5 + 8) = 0;
  *(v5 + 16) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A3AAD8C, v1, 0);
}

uint64_t sub_19A3AAD8C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AAE44, v2, 0);
}

uint64_t sub_19A3AAE44()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[73];
  v4 = v0[67];
  sub_19A3B0CFC(v2 + v0[80], v3, type metadata accessor for DefinitionSession);
  *(v3 + *(v4 + 88) + *(v1 + 52) + 2) = 10;

  return MEMORY[0x1EEE6DFA0](sub_19A3AAEF8, v2, 0);
}

uint64_t sub_19A3AAEF8()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AAFB0, v2, 0);
}

uint64_t sub_19A3AAFB0()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[73];
  v4 = v0[67];
  sub_19A3B0CFC(v2 + v0[80], v3, type metadata accessor for DefinitionSession);
  *(v3 + *(v4 + 88) + *(v1 + 52) + 1) = 3;

  return MEMORY[0x1EEE6DFA0](sub_19A3AB064, v2, 0);
}

uint64_t sub_19A3AB064()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[82] = v4;
  *v4 = v0;
  v4[1] = sub_19A3AB14C;

  return sub_19A2FA74C();
}

uint64_t sub_19A3AB14C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 664) = v3;
  *v3 = v2;
  v3[1] = sub_19A3AB28C;

  return sub_19A2F9554();
}

uint64_t sub_19A3AB28C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 672) = v3;
  *v3 = v2;
  v3[1] = sub_19A3AB3CC;

  return sub_19A2FC084();
}

uint64_t sub_19A3AB3CC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 680) = v3;
  *v3 = v2;
  v3[1] = sub_19A3AB50C;

  return sub_19A2FE890();
}

uint64_t sub_19A3AB50C()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3AB608, 0, 0);
}

uint64_t sub_19A3AB608()
{
  v1 = *(v0 + 632);
  sub_19A57101C();

  return MEMORY[0x1EEE6DFA0](sub_19A3AB674, v1, 0);
}

uint64_t sub_19A3AB674()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[73];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];
  sub_19A3B0CFC(v2 + v0[80], v3, type metadata accessor for DefinitionSession);
  (*(v6 + 24))(v3 + *(v4 + 88) + *(v1 + 72), v5, v7);

  return MEMORY[0x1EEE6DFA0](sub_19A3AB754, v2, 0);
}

uint64_t sub_19A3AB754()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  (*(v0[65] + 8))(v0[66], v0[64]);
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AB828, 0, 0);
}

uint64_t sub_19A3AB828()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 456);
  v3 = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(0);
  *(v0 + 688) = v3;
  v4 = v2 + *(v3 + 92);
  *(v0 + 696) = *v4;
  *(v0 + 442) = *(v4 + 8);

  return MEMORY[0x1EEE6DFA0](sub_19A3AB8B4, v1, 0);
}

uint64_t sub_19A3AB8B4()
{
  v1 = *(v0 + 442);
  v2 = *(v0 + 696);
  v3 = *(v0 + 648);
  v4 = *(v0 + 632);
  v5 = *(v0 + 584);
  v6 = *(v0 + 536);
  sub_19A3B0CFC(v4 + *(v0 + 640), v5, type metadata accessor for DefinitionSession);
  v7 = v5 + *(v6 + 88) + *(v3 + 28);
  *v7 = v2;
  *(v7 + 8) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3AB978, v4, 0);
}

uint64_t sub_19A3AB978()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ABA30, 0, 0);
}

uint64_t sub_19A3ABA30()
{
  v1 = v0[79];
  v0[88] = *(v0[57] + *(v0[86] + 96));
  return MEMORY[0x1EEE6DFA0](sub_19A3ABA60, v1, 0);
}

uint64_t sub_19A3ABA60()
{
  sub_19A3B0CFC(v0[79] + v0[80], v0[73], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ABAE8, 0, 0);
}

uint64_t sub_19A3ABAE8()
{
  v1 = v0[79];
  *(v0[73] + *(v0[67] + 24)) = v0[88];

  return MEMORY[0x1EEE6DFA0](sub_19A3ABB70, v1, 0);
}

uint64_t sub_19A3ABB70()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ABC28, 0, 0);
}

uint64_t sub_19A3ABC28()
{
  v1 = *(v0 + 632);
  *(v0 + 443) = *(*(v0 + 456) + *(*(v0 + 688) + 100));
  return MEMORY[0x1EEE6DFA0](sub_19A3ABC58, v1, 0);
}

uint64_t sub_19A3ABC58()
{
  v1 = *(v0 + 443);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 536);
  sub_19A3B0CFC(v3 + *(v0 + 640), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 50) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3ABD14, v3, 0);
}

uint64_t sub_19A3ABD14()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ABDCC, 0, 0);
}

uint64_t sub_19A3ABDCC()
{
  v1 = *(v0 + 632);
  *(v0 + 450) = *(*(v0 + 456) + *(*(v0 + 688) + 104));
  return MEMORY[0x1EEE6DFA0](sub_19A3ABDFC, v1, 0);
}

uint64_t sub_19A3ABDFC()
{
  v1 = *(v0 + 450);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 536);
  sub_19A3B0CFC(v3 + *(v0 + 640), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3ABEB8, v3, 0);
}

uint64_t sub_19A3ABEB8()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ABF70, 0, 0);
}

uint64_t sub_19A3ABF70()
{
  v1 = *(v0 + 632);
  *(v0 + 451) = *(*(v0 + 456) + *(*(v0 + 688) + 108));
  return MEMORY[0x1EEE6DFA0](sub_19A3ABFA0, v1, 0);
}

uint64_t sub_19A3ABFA0()
{
  v1 = *(v0 + 451);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 536);
  sub_19A3B0CFC(v3 + *(v0 + 640), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 49) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3AC05C, v3, 0);
}

uint64_t sub_19A3AC05C()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AC114, 0, 0);
}

uint64_t sub_19A3AC114()
{
  v1 = v0[79];
  v2 = (v0[57] + *(v0[86] + 112));
  v0[89] = *v2;
  v0[90] = v2[1];
  return MEMORY[0x1EEE6DFA0](sub_19A3AC150, v1, 0);
}

uint64_t sub_19A3AC150()
{
  sub_19A3B0CFC(v0[79] + v0[80], v0[72], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AC1D8, 0, 0);
}

uint64_t sub_19A3AC1D8()
{
  v1 = v0[89];
  v2 = v0[72];
  v3 = v0[67];
  v4 = (v2 + *(v3 + 40));
  v5 = *v4;
  if ((v1 == 0) != (*v4 == 0))
  {
    v6 = *(v3 + 68);
    sub_19A2F3FA0(v2 + v6, &qword_1EAFA1020);
    v7 = type metadata accessor for TextSanitizer();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    v1 = v0[89];
  }

  v8 = v0[90];
  v9 = v0[79];
  sub_19A2E0A50(v1);
  sub_19A2E0A60(v5);
  *v4 = v1;
  v4[1] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A3AC2FC, v9, 0);
}

uint64_t sub_19A3AC2FC()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[72];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AC3B4, 0, 0);
}

uint64_t sub_19A3AC3B4()
{
  v1 = *(v0[57] + *(v0[86] + 72));
  v2 = swift_task_alloc();
  v0[91] = v2;
  *v2 = v0;
  v2[1] = sub_19A3AC458;

  return sub_19A2FDB38(v1);
}

uint64_t sub_19A3AC458()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_19A3B07B8;
  }

  else
  {
    v2 = sub_19A3AC56C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AC56C()
{
  v1 = (v0 + 425);
  v2 = *(v0 + 688);
  v3 = *(v0 + 456);
  v4 = v3 + v2[15];
  v5 = *v4;
  *(v0 + 744) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 1052) = v6;
  if (v6 != 255)
  {
    *(v0 + 416) = v5;
    *(v0 + 424) = v6;
    *v1 = *(v3 + v2[16]);
    v7 = (v3 + v2[17]);
    v8 = *v7;
    v9 = v7[1];
    v10 = v5;
    v11 = swift_task_alloc();
    *(v0 + 752) = v11;
    *v11 = v0;
    v11[1] = sub_19A3ACC94;

    return sub_19A2FB3EC((v0 + 416), v1, v8, v9);
  }

  v13 = *(v0 + 736);
  *(v0 + 768) = v13;
  v14 = v3 + v2[8];
  v15 = *v14;
  *(v0 + 776) = *v14;
  v16 = *(v14 + 8);
  *(v0 + 1053) = v16;
  v17 = v3 + v2[11];
  if (v16 == 255)
  {
    if (*(v17 + 8) != 255 || *(v3 + v2[12] + 8) != 255)
    {
      goto LABEL_16;
    }

    *(v0 + 864) = v13;
    v29 = *(v0 + 480);
    v30 = *(v0 + 488);
    v31 = *(v0 + 472);
    sub_19A3A6A20(v3 + v2[6], v31);
    v32 = *(v30 + 48);
    if (v32(v31, 1, v29) == 1)
    {
      v33 = *(v0 + 520);
      v34 = *(v0 + 512);
      v35 = *(v0 + 496);
      v36 = *(v0 + 472);
      v37 = *(v0 + 480);
      *v35 = 257;
      (*(v33 + 56))(&v35[v37[6]], 1, 1, v34);
      v35[v37[7]] = 1;
      v35[v37[9]] = 0;
      v35[v37[10]] = 0;
      *&v35[v37[11]] = 1;
      *&v35[v37[12]] = 1;
      *&v35[v37[13]] = 4;
      *&v35[v37[14]] = 4;
      v35[v37[15]] = 3;
      v38 = &v35[v37[16]];
      *v38 = 0;
      v38[8] = 1;
      v39 = &v35[v37[17]];
      *v39 = 0;
      v39[8] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
      v40 = *(sub_19A57112C() - 8);
      v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_19A576E10;
      sub_19A474D68(v42 + v41);
      v43 = &v35[v37[8]];
      *v43 = v42;
      *(v43 + 1) = 5;
      *(v43 + 4) = 1064514355;
      if (v32(v36, 1, v37) != 1)
      {
        sub_19A2F3FA0(*(v0 + 472), &qword_1EAF9FD90);
      }
    }

    else
    {
      sub_19A3B0E18(*(v0 + 472), *(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    }

    v57 = *(v0 + 456);
    v58 = *v57;
    *(v0 + 872) = *v57;
    v59 = v57[1];
    *(v0 + 880) = v59;
    v60 = v57[2];
    *(v0 + 888) = v60;
    v61 = v57[3];
    *(v0 + 896) = v61;
    v62 = swift_task_alloc();
    *(v0 + 904) = v62;
    *v62 = v0;
    v62[1] = sub_19A3AE338;
    v63 = *(v0 + 496);

    return sub_19A2F7C14(v58, v59, v60, v61, v63);
  }

  else
  {
    v18 = *v17;
    *(v0 + 784) = *v17;
    v19 = *(v17 + 8);
    *(v0 + 1054) = v19;
    v20 = v3 + v2[12];
    if (v19 != 255)
    {
      v21 = *v20;
      *(v0 + 792) = *v20;
      v22 = *(v20 + 8);
      *(v0 + 1055) = v22;
      if (v22 != 255)
      {
        v23 = (v3 + v2[13]);
        v24 = *v23;
        v25 = *(v23 + 4);
        v26 = (v3 + v2[14]);
        *(v0 + 800) = *v26;
        *(v0 + 808) = v26[1];
        sub_19A3319D0(v15, v16);
        sub_19A3319D0(v18, v19);
        sub_19A3319D0(v21, v22);
        if (v24 == 2)
        {
          LOBYTE(v24) = 0;
          LODWORD(v27) = 0;
          LOBYTE(v25) = 1;
          LOBYTE(v28) = 1;
        }

        else
        {
          v27 = HIDWORD(v24);
          v28 = (v25 >> 8) & 1;
        }

        *(v0 + 1058) = v28;
        *(v0 + 1057) = v25 & 1;
        *(v0 + 452) = v27;
        *(v0 + 1056) = v24 & 1;
        v49 = *(v0 + 632);

        return MEMORY[0x1EEE6DFA0](sub_19A3AD408, v49, 0);
      }

      goto LABEL_16;
    }

    if (*(v20 + 8) != 255)
    {
LABEL_16:
      sub_19A3B1B5C();
      swift_allocError();
      *v44 = 0xD00000000000004FLL;
      *(v44 + 8) = 0x800000019A598030;
      *(v44 + 16) = 1;
      swift_willThrow();
      v45 = *(v0 + 608);
      v46 = *(v0 + 600);
      v47 = *(v0 + 592);
      sub_19A3B1874("assignConfiguration", 19, 2);

      (*(v46 + 8))(v45, v47);

      v48 = *(v0 + 8);

      return v48();
    }

    *(v0 + 432) = v15;
    *(v0 + 440) = v16;
    v50 = (v3 + v2[9]);
    v51 = *(v50 + 4);
    v52 = *v50;
    LOBYTE(v50) = *(v50 + 5);
    *(v0 + 444) = v52;
    *(v0 + 448) = v51;
    *(v0 + 449) = v50;
    v53 = (v3 + v2[10]);
    v55 = *v53;
    v54 = v53[1];
    sub_19A3319D0(v15, v16);
    v56 = swift_task_alloc();
    *(v0 + 848) = v56;
    *v56 = v0;
    v56[1] = sub_19A3ADF3C;

    return sub_19A2F88FC((v0 + 432), v0 + 444, v55, v54);
  }
}

uint64_t sub_19A3ACC94()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_19A3B08FC;
  }

  else
  {
    v2 = sub_19A3ACDA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3ACDA8()
{
  sub_19A335458(*(v0 + 744), *(v0 + 1052));
  v1 = *(v0 + 760);
  *(v0 + 768) = v1;
  v2 = *(v0 + 688);
  v3 = *(v0 + 456);
  v4 = v3 + v2[8];
  v5 = *v4;
  *(v0 + 776) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 1053) = v6;
  v7 = v3 + v2[11];
  if (v6 == 255)
  {
    if (*(v7 + 8) != 255 || *(v3 + v2[12] + 8) != 255)
    {
      goto LABEL_12;
    }

    *(v0 + 864) = v1;
    v20 = *(v0 + 480);
    v21 = *(v0 + 488);
    v22 = *(v0 + 472);
    sub_19A3A6A20(v3 + v2[6], v22);
    v23 = *(v21 + 48);
    if (v23(v22, 1, v20) == 1)
    {
      v24 = *(v0 + 520);
      v25 = *(v0 + 512);
      v26 = *(v0 + 496);
      v27 = *(v0 + 472);
      v28 = *(v0 + 480);
      *v26 = 257;
      (*(v24 + 56))(&v26[v28[6]], 1, 1, v25);
      v26[v28[7]] = 1;
      v26[v28[9]] = 0;
      v26[v28[10]] = 0;
      *&v26[v28[11]] = 1;
      *&v26[v28[12]] = 1;
      *&v26[v28[13]] = 4;
      *&v26[v28[14]] = 4;
      v26[v28[15]] = 3;
      v29 = &v26[v28[16]];
      *v29 = 0;
      v29[8] = 1;
      v30 = &v26[v28[17]];
      *v30 = 0;
      v30[8] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
      v31 = *(sub_19A57112C() - 8);
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_19A576E10;
      sub_19A474D68(v33 + v32);
      v34 = &v26[v28[8]];
      *v34 = v33;
      *(v34 + 1) = 5;
      *(v34 + 4) = 1064514355;
      if (v23(v27, 1, v28) != 1)
      {
        sub_19A2F3FA0(*(v0 + 472), &qword_1EAF9FD90);
      }
    }

    else
    {
      sub_19A3B0E18(*(v0 + 472), *(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    }

    v49 = *(v0 + 456);
    v50 = *v49;
    *(v0 + 872) = *v49;
    v51 = v49[1];
    *(v0 + 880) = v51;
    v52 = v49[2];
    *(v0 + 888) = v52;
    v53 = v49[3];
    *(v0 + 896) = v53;
    v54 = swift_task_alloc();
    *(v0 + 904) = v54;
    *v54 = v0;
    v54[1] = sub_19A3AE338;
    v55 = *(v0 + 496);

    return sub_19A2F7C14(v50, v51, v52, v53, v55);
  }

  else
  {
    v8 = (v0 + 444);
    v9 = *v7;
    *(v0 + 784) = *v7;
    v10 = *(v7 + 8);
    *(v0 + 1054) = v10;
    v11 = v3 + v2[12];
    if (v10 != 255)
    {
      v12 = *v11;
      *(v0 + 792) = *v11;
      v13 = *(v11 + 8);
      *(v0 + 1055) = v13;
      if (v13 != 255)
      {
        v14 = (v3 + v2[13]);
        v15 = *v14;
        v16 = *(v14 + 4);
        v17 = (v3 + v2[14]);
        *(v0 + 800) = *v17;
        *(v0 + 808) = v17[1];
        sub_19A3319D0(v5, v6);
        sub_19A3319D0(v9, v10);
        sub_19A3319D0(v12, v13);
        if (v15 == 2)
        {
          LOBYTE(v15) = 0;
          LODWORD(v18) = 0;
          LOBYTE(v16) = 1;
          LOBYTE(v19) = 1;
        }

        else
        {
          v18 = HIDWORD(v15);
          v19 = (v16 >> 8) & 1;
        }

        *(v0 + 1058) = v19;
        *(v0 + 1057) = v16 & 1;
        *(v0 + 452) = v18;
        *(v0 + 1056) = v15 & 1;
        v41 = *(v0 + 632);

        return MEMORY[0x1EEE6DFA0](sub_19A3AD408, v41, 0);
      }

      goto LABEL_12;
    }

    if (*(v11 + 8) != 255)
    {
LABEL_12:
      sub_19A3B1B5C();
      swift_allocError();
      *v35 = 0xD00000000000004FLL;
      *(v35 + 8) = 0x800000019A598030;
      *(v35 + 16) = 1;
      swift_willThrow();
      v36 = *(v0 + 608);
      v37 = *(v0 + 600);
      v38 = *(v0 + 592);
      sub_19A3B1874("assignConfiguration", 19, 2);

      (*(v37 + 8))(v36, v38);

      v39 = *(v0 + 8);

      return v39();
    }

    *(v0 + 432) = v5;
    *(v0 + 440) = v6;
    v42 = (v3 + v2[9]);
    v43 = *(v42 + 4);
    v44 = *v42;
    LOBYTE(v42) = *(v42 + 5);
    *v8 = v44;
    *(v0 + 448) = v43;
    *(v0 + 449) = v42;
    v45 = (v3 + v2[10]);
    v46 = *v45;
    v47 = v45[1];
    sub_19A3319D0(v5, v6);
    v48 = swift_task_alloc();
    *(v0 + 848) = v48;
    *v48 = v0;
    v48[1] = sub_19A3ADF3C;

    return sub_19A2F88FC((v0 + 432), v8, v46, v47);
  }
}

uint64_t sub_19A3AD408()
{
  sub_19A3B0CFC(v0[79] + v0[80], v0[70], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AD490, 0, 0);
}

uint64_t sub_19A3AD490()
{
  v1 = *(v0 + 768);
  v2 = (*(v0 + 560) + *(*(v0 + 536) + 88) + *(*(v0 + 648) + 20));
  sub_19A34F6F4(*v2, v2[1]);
  if (v1)
  {
    *(v0 + 840) = v1;
    v3 = *(v0 + 632);
    sub_19A3B0D64(*(v0 + 560), type metadata accessor for DefinitionSession);

    return MEMORY[0x1EEE6DFA0](sub_19A3ADDA8, v3, 0);
  }

  else
  {
    v19 = *(v0 + 1057);
    v20 = *(v0 + 1058);
    v17 = *(v0 + 1056);
    v18 = *(v0 + 452);
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    v6 = *(v0 + 776);
    v7 = *(v0 + 584);
    v8 = *(v0 + 1053);
    v9 = *(v0 + 1054);
    v10 = *(v0 + 1055);
    sub_19A3B0CFC(*(v0 + 560), v7, type metadata accessor for DefinitionSession);
    type metadata accessor for GenerativePlayground.DrawOnImageAssignmentTask();
    v11 = swift_allocObject();
    *(v0 + 816) = v11;
    *(v0 + 40) = &type metadata for CurrentTaskCanceller;
    *(v0 + 48) = &off_1F0DAF620;
    sub_19A3319D0(v6, v8);
    sub_19A3319D0(v5, v9);
    sub_19A3319D0(v4, v10);
    sub_19A57101C();
    sub_19A3B0E18(v7, v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__definitionSession, type metadata accessor for DefinitionSession);
    *(v11 + 16) = v5;
    *(v11 + 24) = v9;
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    *(v11 + 48) = v4;
    *(v11 + 56) = v10;
    sub_19A3355E8((v0 + 16), v11 + OBJC_IVAR____TtCC16VisualGeneration20GenerativePlayground25DrawOnImageAssignmentTask__sendableCanceller);
    *(v11 + 65) = v17;
    *(v11 + 60) = v18;
    *(v11 + 64) = v19;
    *(v11 + 66) = v20;
    v12 = swift_task_alloc();
    *(v0 + 824) = v12;
    *v12 = v0;
    v12[1] = sub_19A3AD70C;
    v13 = *(v0 + 808);
    v14 = *(v0 + 800);
    v15 = *(v0 + 504);

    return sub_19A43DED8(v15, v14, v13);
  }
}

uint64_t sub_19A3AD70C()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_19A3ADA08;
  }

  else
  {
    v2 = sub_19A3AD820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AD820()
{
  v1 = v0[79];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[63];

  sub_19A3B0D64(v2, type metadata accessor for DefinitionSession);
  (*(v3 + 56))(v5, 0, 1, v4);

  return MEMORY[0x1EEE6DFA0](sub_19A3AD8E8, v1, 0);
}

uint64_t sub_19A3AD8E8()
{
  v1 = v0[63];
  if ((*(v0[68] + 48))(v1, 1, v0[67]) == 1)
  {
    sub_19A2F3FA0(v1, &qword_1EAF9FDB0);
  }

  else
  {
    v2 = v0[80];
    v3 = v0[79];
    v4 = v0[71];
    sub_19A3B0E18(v1, v4, type metadata accessor for DefinitionSession);
    swift_beginAccess();
    sub_19A37A5FC(v4, v3 + v2);
    swift_endAccess();
    sub_19A3B0D64(v4, type metadata accessor for DefinitionSession);
  }

  return MEMORY[0x1EEE6DFA0](sub_19A3ADA98, 0, 0);
}

uint64_t sub_19A3ADA08()
{

  v0[105] = v0[104];
  v1 = v0[79];
  sub_19A3B0D64(v0[70], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3ADDA8, v1, 0);
}

uint64_t sub_19A3ADA98()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 1055);
  v4 = *(v0 + 1054);
  sub_19A335458(*(v0 + 776), *(v0 + 1053));
  sub_19A335458(v1, v3);
  sub_19A335458(v2, v4);
  *(v0 + 864) = *(v0 + 832);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v7 = *(v0 + 472);
  sub_19A3A6A20(*(v0 + 456) + *(*(v0 + 688) + 24), v7);
  v8 = *(v6 + 48);
  if (v8(v7, 1, v5) == 1)
  {
    v9 = *(v0 + 520);
    v10 = *(v0 + 512);
    v11 = *(v0 + 496);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    *v11 = 257;
    (*(v9 + 56))(&v11[v13[6]], 1, 1, v10);
    v11[v13[7]] = 1;
    v11[v13[9]] = 0;
    v11[v13[10]] = 0;
    *&v11[v13[11]] = 1;
    *&v11[v13[12]] = 1;
    *&v11[v13[13]] = 4;
    *&v11[v13[14]] = 4;
    v11[v13[15]] = 3;
    v14 = &v11[v13[16]];
    *v14 = 0;
    v14[8] = 1;
    v15 = &v11[v13[17]];
    *v15 = 0;
    v15[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
    v16 = *(sub_19A57112C() - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_19A576E10;
    sub_19A474D68(v18 + v17);
    v19 = &v11[v13[8]];
    *v19 = v18;
    *(v19 + 1) = 5;
    *(v19 + 4) = 1064514355;
    if (v8(v12, 1, v13) != 1)
    {
      sub_19A2F3FA0(*(v0 + 472), &qword_1EAF9FD90);
    }
  }

  else
  {
    sub_19A3B0E18(*(v0 + 472), *(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  }

  v20 = *(v0 + 456);
  v21 = *v20;
  *(v0 + 872) = *v20;
  v22 = v20[1];
  *(v0 + 880) = v22;
  v23 = v20[2];
  *(v0 + 888) = v23;
  v24 = v20[3];
  *(v0 + 896) = v24;
  v25 = swift_task_alloc();
  *(v0 + 904) = v25;
  *v25 = v0;
  v25[1] = sub_19A3AE338;
  v26 = *(v0 + 496);

  return sub_19A2F7C14(v21, v22, v23, v24, v26);
}

uint64_t sub_19A3ADDC4()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 1053);
  v4 = *(v0 + 1054);
  sub_19A335458(*(v0 + 792), *(v0 + 1055));
  sub_19A335458(v2, v3);
  sub_19A335458(v1, v4);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19A3ADF3C()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_19A3B0A4C;
  }

  else
  {
    v2 = sub_19A3AE050;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AE050()
{
  sub_19A335458(*(v0 + 776), *(v0 + 1053));
  *(v0 + 864) = *(v0 + 856);
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  sub_19A3A6A20(*(v0 + 456) + *(*(v0 + 688) + 24), v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 520);
    v6 = *(v0 + 512);
    v7 = *(v0 + 496);
    v8 = *(v0 + 472);
    v9 = *(v0 + 480);
    *v7 = 257;
    (*(v5 + 56))(&v7[v9[6]], 1, 1, v6);
    v7[v9[7]] = 1;
    v7[v9[9]] = 0;
    v7[v9[10]] = 0;
    *&v7[v9[11]] = 1;
    *&v7[v9[12]] = 1;
    *&v7[v9[13]] = 4;
    *&v7[v9[14]] = 4;
    v7[v9[15]] = 3;
    v10 = &v7[v9[16]];
    *v10 = 0;
    v10[8] = 1;
    v11 = &v7[v9[17]];
    *v11 = 0;
    v11[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
    v12 = *(sub_19A57112C() - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_19A576E10;
    sub_19A474D68(v14 + v13);
    v15 = &v7[v9[8]];
    *v15 = v14;
    *(v15 + 1) = 5;
    *(v15 + 4) = 1064514355;
    if (v4(v8, 1, v9) != 1)
    {
      sub_19A2F3FA0(*(v0 + 472), &qword_1EAF9FD90);
    }
  }

  else
  {
    sub_19A3B0E18(*(v0 + 472), *(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  }

  v16 = *(v0 + 456);
  v17 = *v16;
  *(v0 + 872) = *v16;
  v18 = v16[1];
  *(v0 + 880) = v18;
  v19 = v16[2];
  *(v0 + 888) = v19;
  v20 = v16[3];
  *(v0 + 896) = v20;
  v21 = swift_task_alloc();
  *(v0 + 904) = v21;
  *v21 = v0;
  v21[1] = sub_19A3AE338;
  v22 = *(v0 + 496);

  return sub_19A2F7C14(v17, v18, v19, v20, v22);
}

uint64_t sub_19A3AE338()
{

  return MEMORY[0x1EEE6DFA0](sub_19A3AE434, 0, 0);
}

uint64_t sub_19A3AE434()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 456);
  v3 = *(v2 + v1[19]);
  *(v0 + 1059) = v3;
  if (v3 != 3)
  {
    v11 = swift_task_alloc();
    *(v0 + 912) = v11;
    *v11 = v0;
    v11[1] = sub_19A3AE7D0;

    return sub_19A2FF818(v3);
  }

  v4 = *(v0 + 864);
  v5 = v1[20];
  *(v0 + 1048) = v5;
  v6 = *(v2 + v5);
  *(v0 + 1060) = v6;
  if (v6 != 10)
  {
    sub_19A2FEF38(2);
    *(v0 + 928) = v4;
    if (v4)
    {
      goto LABEL_10;
    }

    v17 = *(v0 + 632);
    v19 = sub_19A3AEBF0;
    goto LABEL_15;
  }

  v7 = (v2 + v1[21]);
  v8 = v7[1];
  if (!v8)
  {
    v17 = *(v0 + 632);
    v18 = v2 + v1[22];
    *(v0 + 992) = *v18;
    *(v0 + 1000) = *(v18 + 8);
    *(v0 + 1008) = *(v18 + 16);
    *(v0 + 1016) = *(v18 + 24);
    *(v0 + 1061) = *(v18 + 32);
    v19 = sub_19A3B012C;
LABEL_15:

    return MEMORY[0x1EEE6DFA0](v19, v17, 0);
  }

  v9 = *v7;
  v10 = *(*(v0 + 496) + *(*(v0 + 480) + 32));
  *(v0 + 936) = v10;

  sub_19A2FF254(4, v9, v8);
  if (v4)
  {

LABEL_10:
    sub_19A3B0D64(*(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    sub_19A3B1874("assignConfiguration", 19, 2);

    (*(v14 + 8))(v13, v15);

    v16 = *(v0 + 8);

    return v16();
  }

  v20 = swift_task_alloc();
  *(v0 + 944) = v20;
  *v20 = v0;
  v20[1] = sub_19A3AF524;
  v21 = *(v0 + 632);

  return sub_19A3006C4(v9, v8, v10, v21);
}

uint64_t sub_19A3AE7D0()
{
  *(*v1 + 920) = v0;

  if (v0)
  {
    v2 = sub_19A3B0B9C;
  }

  else
  {
    v2 = sub_19A3AE8E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AE8E4()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 688);
  v3 = *(v0 + 456);
  v4 = v2[20];
  *(v0 + 1048) = v4;
  v5 = *(v3 + v4);
  *(v0 + 1060) = v5;
  if (v5 != 10)
  {
    sub_19A2FEF38(2);
    *(v0 + 928) = v1;
    if (v1)
    {
      goto LABEL_6;
    }

    v15 = *(v0 + 632);
    v17 = sub_19A3AEBF0;
    goto LABEL_11;
  }

  v6 = (v3 + v2[21]);
  v7 = v6[1];
  if (!v7)
  {
    v15 = *(v0 + 632);
    v16 = v3 + v2[22];
    *(v0 + 992) = *v16;
    *(v0 + 1000) = *(v16 + 8);
    *(v0 + 1008) = *(v16 + 16);
    *(v0 + 1016) = *(v16 + 24);
    *(v0 + 1061) = *(v16 + 32);
    v17 = sub_19A3B012C;
LABEL_11:

    return MEMORY[0x1EEE6DFA0](v17, v15, 0);
  }

  v8 = *v6;
  v9 = *(*(v0 + 496) + *(*(v0 + 480) + 32));
  *(v0 + 936) = v9;

  sub_19A2FF254(4, v8, v7);
  if (v1)
  {

LABEL_6:
    sub_19A3B0D64(*(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    v10 = *(v0 + 608);
    v11 = *(v0 + 600);
    v12 = *(v0 + 592);
    sub_19A3B1874("assignConfiguration", 19, 2);

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }

  v18 = swift_task_alloc();
  *(v0 + 944) = v18;
  *v18 = v0;
  v18[1] = sub_19A3AF524;
  v19 = *(v0 + 632);

  return sub_19A3006C4(v8, v7, v9, v19);
}

uint64_t sub_19A3AEBF0()
{
  v1 = *(v0 + 1060);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 536);
  sub_19A3B0CFC(v3 + *(v0 + 640), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 52) + 2) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3AECAC, v3, 0);
}

uint64_t sub_19A3AECAC()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AED64, 0, 0);
}

uint64_t sub_19A3AED64()
{
  v64 = v0;
  v1 = *(v0 + 928);
  v2 = *(v0 + 688);
  v3 = *(v0 + 456);
  v4 = (v3 + *(v2 + 84));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = *(*(v0 + 496) + *(*(v0 + 480) + 32));
    *(v0 + 936) = v7;

    sub_19A2FF254(4, v6, v5);
    if (!v1)
    {
      v22 = swift_task_alloc();
      *(v0 + 944) = v22;
      *v22 = v0;
      v22[1] = sub_19A3AF524;
      v23 = *(v0 + 632);

      return sub_19A3006C4(v6, v5, v7, v23);
    }

LABEL_4:
    sub_19A3B0D64(*(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
    v8 = *(v0 + 608);
    v9 = *(v0 + 600);
    v10 = *(v0 + 592);
    sub_19A3B1874("assignConfiguration", 19, 2);

    (*(v9 + 8))(v8, v10);

    v11 = *(v0 + 8);

    return v11();
  }

  if (*(v0 + 1059) == 3 || (v13 = *(v3 + *(v0 + 1048)), v13 == 10) || (v14 = (v3 + *(v2 + 116)), (v15 = v14[1]) == 0))
  {
LABEL_36:
    v43 = *(v0 + 632);
    v44 = *(v0 + 456) + *(*(v0 + 688) + 88);
    *(v0 + 992) = *v44;
    *(v0 + 1000) = *(v44 + 8);
    *(v0 + 1008) = *(v44 + 16);
    *(v0 + 1016) = *(v44 + 24);
    *(v0 + 1061) = *(v44 + 32);
    v45 = sub_19A3B012C;
    goto LABEL_37;
  }

  v61 = *v14;
  v16 = off_1EAFA1EE0;
  if (!off_1EAFA1EE0)
  {
    type metadata accessor for CharacterSelection();
    swift_allocObject();
    v29 = sub_19A470C14();
    if (v1)
    {
      goto LABEL_4;
    }

    off_1EAFA1EE0 = v29;

    v16 = off_1EAFA1EE0;
    if (!off_1EAFA1EE0)
    {
      __break(1u);
      goto LABEL_29;
    }
  }

  if (!v16[2])
  {
LABEL_31:
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v30 = sub_19A5723FC();
    __swift_project_value_buffer(v30, qword_1ED82BCF0);

    v31 = sub_19A5723DC();
    v32 = sub_19A57355C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 1059);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v63[0] = v35;
      *v34 = 136446722;
      *(v0 + 441) = v33;
      v36 = sub_19A572DAC();
      v38 = sub_19A31F114(v36, v37, v63);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 431) = v13;
      v39 = sub_19A572DAC();
      v41 = sub_19A31F114(v39, v40, v63);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2082;
      v42 = sub_19A31F114(v61, v15, v63);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_19A2DE000, v31, v32, "Specific CharacterFace not found for: %{public}s %{public}s %{public}s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v35, -1, -1);
      MEMORY[0x19A902C50](v34, -1, -1);
    }

    else
    {
    }

    goto LABEL_36;
  }

  v17 = *(v0 + 1059);
  v63[0] = v16[2];
  v62 = v13;

  v18 = CharacterFaces.characterFaces(for:skinTone:)(v17, &v62);
  if (!v18)
  {
LABEL_30:

    goto LABEL_31;
  }

  v19 = *(v18 + 16);
  v20 = v61;
  if (!v19)
  {
LABEL_29:

    goto LABEL_30;
  }

  v21 = (v18 + 48);
  while (1)
  {
    *(v0 + 960) = *(v21 - 2);
    v25 = *(v21 - 1);
    v24 = *v21;
    *(v0 + 968) = *v21;
    if (!v24)
    {
      goto LABEL_18;
    }

    if (v25 == v20 && v24 == v15)
    {
      break;
    }

    v27 = sub_19A573F1C();
    v20 = v61;
    if (v27)
    {
      v28 = v24;
      goto LABEL_41;
    }

LABEL_18:
    v21 += 3;
    if (!--v19)
    {
      goto LABEL_29;
    }
  }

  v25 = v20;
  v28 = v15;
LABEL_41:
  *(v0 + 984) = v28;
  *(v0 + 976) = v25;

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v46 = sub_19A5723FC();
  __swift_project_value_buffer(v46, qword_1ED82BCF0);

  v47 = sub_19A5723DC();
  v48 = sub_19A57353C();
  if (os_log_type_enabled(v47, v48))
  {
    v60 = v48;
    v49 = *(v0 + 1059);
    v50 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63[0] = v59;
    *v50 = 136446722;
    *(v0 + 430) = v49;
    v51 = sub_19A572DAC();
    v53 = sub_19A31F114(v51, v52, v63);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2082;
    *(v0 + 429) = v13;
    v54 = sub_19A572DAC();
    v56 = sub_19A31F114(v54, v55, v63);

    *(v50 + 14) = v56;
    *(v50 + 22) = 2082;
    v57 = sub_19A31F114(v61, v15, v63);

    *(v50 + 24) = v57;
    _os_log_impl(&dword_19A2DE000, v47, v60, "Assigning specific CharacterFace for: %{public}s %{public}s %{public}s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v59, -1, -1);
    MEMORY[0x19A902C50](v50, -1, -1);
  }

  else
  {
  }

  v58 = *(v0 + 632);

  v45 = sub_19A3AFE90;
  v43 = v58;
LABEL_37:

  return MEMORY[0x1EEE6DFA0](v45, v43, 0);
}

uint64_t sub_19A3AF524()
{
  *(*v1 + 952) = v0;

  if (v0)
  {
    v2 = sub_19A3AFD30;
  }

  else
  {
    v2 = sub_19A3AF658;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3AF658()
{
  v57 = v0;
  if (*(v0 + 1059) == 3)
  {
    goto LABEL_28;
  }

  v1 = *(v0 + 456);
  v2 = *(v1 + *(v0 + 1048));
  if (v2 == 10)
  {
    goto LABEL_28;
  }

  v3 = (v1 + *(*(v0 + 688) + 116));
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_28;
  }

  v54 = *v3;
  v5 = off_1EAFA1EE0;
  if (off_1EAFA1EE0)
  {
LABEL_5:
    if (v5[2])
    {
      v6 = *(v0 + 1059);
      v56[0] = v5[2];
      v55 = v2;

      v7 = CharacterFaces.characterFaces(for:skinTone:)(v6, &v55);
      if (v7)
      {
        v8 = *(v7 + 16);
        v9 = v54;
        if (v8)
        {
          v10 = (v7 + 48);
          while (1)
          {
            *(v0 + 960) = *(v10 - 2);
            v12 = *(v10 - 1);
            v11 = *v10;
            *(v0 + 968) = *v10;
            if (v11)
            {
              if (v12 == v9 && v11 == v4)
              {
                goto LABEL_34;
              }

              v14 = sub_19A573F1C();
              v9 = v54;
              if (v14)
              {
                break;
              }
            }

            v10 += 3;
            if (!--v8)
            {
              goto LABEL_21;
            }
          }

          v15 = v11;
          goto LABEL_35;
        }

LABEL_21:
      }
    }

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v23 = sub_19A5723FC();
    __swift_project_value_buffer(v23, qword_1ED82BCF0);

    v24 = sub_19A5723DC();
    v25 = sub_19A57355C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 1059);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56[0] = v28;
      *v27 = 136446722;
      *(v0 + 441) = v26;
      v29 = sub_19A572DAC();
      v31 = sub_19A31F114(v29, v30, v56);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v0 + 431) = v2;
      v32 = sub_19A572DAC();
      v34 = sub_19A31F114(v32, v33, v56);

      *(v27 + 14) = v34;
      *(v27 + 22) = 2082;
      v35 = sub_19A31F114(v54, v4, v56);

      *(v27 + 24) = v35;
      _os_log_impl(&dword_19A2DE000, v24, v25, "Specific CharacterFace not found for: %{public}s %{public}s %{public}s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x19A902C50](v28, -1, -1);
      MEMORY[0x19A902C50](v27, -1, -1);
    }

    else
    {
    }

LABEL_28:
    v36 = *(v0 + 632);
    v37 = *(v0 + 456) + *(*(v0 + 688) + 88);
    *(v0 + 992) = *v37;
    *(v0 + 1000) = *(v37 + 8);
    *(v0 + 1008) = *(v37 + 16);
    *(v0 + 1016) = *(v37 + 24);
    *(v0 + 1061) = *(v37 + 32);
    v38 = sub_19A3B012C;
LABEL_29:

    return MEMORY[0x1EEE6DFA0](v38, v36, 0);
  }

  v16 = *(v0 + 952);
  type metadata accessor for CharacterSelection();
  swift_allocObject();
  v17 = sub_19A470C14();
  if (!v16)
  {
    off_1EAFA1EE0 = v17;

    v5 = off_1EAFA1EE0;
    if (!off_1EAFA1EE0)
    {
      __break(1u);
LABEL_34:
      v12 = v9;
      v15 = v4;
LABEL_35:
      *(v0 + 984) = v15;
      *(v0 + 976) = v12;

      if (qword_1ED824050 != -1)
      {
        swift_once();
      }

      v39 = sub_19A5723FC();
      __swift_project_value_buffer(v39, qword_1ED82BCF0);

      v40 = sub_19A5723DC();
      v41 = sub_19A57353C();
      if (os_log_type_enabled(v40, v41))
      {
        v53 = v41;
        v42 = *(v0 + 1059);
        v43 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56[0] = v52;
        *v43 = 136446722;
        *(v0 + 430) = v42;
        v44 = sub_19A572DAC();
        v46 = sub_19A31F114(v44, v45, v56);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2082;
        *(v0 + 429) = v2;
        v47 = sub_19A572DAC();
        v49 = sub_19A31F114(v47, v48, v56);

        *(v43 + 14) = v49;
        *(v43 + 22) = 2082;
        v50 = sub_19A31F114(v54, v4, v56);

        *(v43 + 24) = v50;
        _os_log_impl(&dword_19A2DE000, v40, v53, "Assigning specific CharacterFace for: %{public}s %{public}s %{public}s", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x19A902C50](v52, -1, -1);
        MEMORY[0x19A902C50](v43, -1, -1);
      }

      else
      {
      }

      v51 = *(v0 + 632);

      v38 = sub_19A3AFE90;
      v36 = v51;
      goto LABEL_29;
    }

    goto LABEL_5;
  }

  sub_19A3B0D64(*(v0 + 496), type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v19 + 8))(v18, v20);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_19A3AFD30()
{
  sub_19A3B0D64(v0[62], type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3AFE90()
{
  sub_19A3B0CFC(v0[79] + v0[80], v0[73], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3AFF18, 0, 0);
}

uint64_t sub_19A3AFF18()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[120];
  v4 = v0[79];
  v5 = (v0[73] + *(v0[67] + 88) + *(v0[81] + 56));
  sub_19A3A3810(*v5);
  *v5 = v3;
  v5[1] = v2;
  v5[2] = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3AFFC8, v4, 0);
}

uint64_t sub_19A3AFFC8()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3B0080, 0, 0);
}

uint64_t sub_19A3B0080()
{

  v1 = *(v0 + 632);
  v2 = *(v0 + 456) + *(*(v0 + 688) + 88);
  *(v0 + 992) = *v2;
  *(v0 + 1000) = *(v2 + 8);
  *(v0 + 1008) = *(v2 + 16);
  *(v0 + 1016) = *(v2 + 24);
  *(v0 + 1061) = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_19A3B012C, v1, 0);
}

uint64_t sub_19A3B012C()
{
  v1 = *(v0 + 1061);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 536);
  v8 = *(v0 + 1008);
  v9 = *(v0 + 992);
  sub_19A3B0CFC(v3 + *(v0 + 640), v4, type metadata accessor for DefinitionSession);
  v6 = v4 + *(v5 + 88) + *(v2 + 60);
  *v6 = v9;
  *(v6 + 16) = v8;
  *(v6 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A3B01F8, v3, 0);
}

uint64_t sub_19A3B01F8()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A3B0D64(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A3B02B0, 0, 0);
}

uint64_t sub_19A3B02B0()
{
  v9 = *(v0 + 872);
  v10 = *(v0 + 888);
  v1 = *(v0 + 496);
  v2 = (*(v0 + 456) + *(*(v0 + 688) + 28));
  v3 = swift_task_alloc();
  v4 = *v2;
  v5 = v2[1];
  *(v0 + 1024) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
  *(v3 + 48) = v1;
  *(v3 + 72) = v5;
  *(v3 + 56) = v4;
  v6 = swift_task_alloc();
  *(v0 + 1032) = v6;
  *v6 = v0;
  v6[1] = sub_19A3B03B8;
  v7 = *(v0 + 552);

  return sub_19A379EE8(v7, &unk_19A5770F0, v3);
}

uint64_t sub_19A3B03B8()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v3 = sub_19A3B064C;
  }

  else
  {
    sub_19A3B0D64(*(v2 + 552), type metadata accessor for DefinitionSession);

    v3 = sub_19A3B04F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A3B04F4()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  sub_19A3B0D64(v0[62], type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3B064C()
{
  v1 = v0[62];

  sub_19A3B0D64(v1, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A3B07B8()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3B08FC()
{
  sub_19A335458(*(v0 + 744), *(v0 + 1052));
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A3B0A4C()
{
  sub_19A335458(*(v0 + 776), *(v0 + 1053));
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19A3B0B9C()
{
  sub_19A3B0D64(v0[62], type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  sub_19A3B1874("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A3B0CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3B0D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19A3B0DC4()
{
  result = qword_1EAFA1000;
  if (!qword_1EAFA1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1000);
  }

  return result;
}

uint64_t sub_19A3B0E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3B0E80()
{
  result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V1(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GenerativePlayground.AssignmentConfiguration_V2(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_19A3B0F1C()
{
  sub_19A3B1394(319, &qword_1EAF9F538, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  if (v0 <= 0x3F)
  {
    sub_19A3B1344(319, &qword_1EAF9F508, &type metadata for GenerativePlayground.PromptAssignmentInteractable, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_19A3B1344(319, &qword_1EAF9F230, &type metadata for Image, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A3B1344(319, &qword_1EAF9F500, &type metadata for GenerativePlayground.PromptGuidanceSketchAssignmentOptions, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_19A3B12E0();
          if (v4 <= 0x3F)
          {
            sub_19A3B1344(319, &qword_1EAF9F510, &type metadata for GenerativePlayground.DrawOnImageAssignmentOptions, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_19A3B1344(319, &qword_1EAF9F4F8, &type metadata for GenerativePlayground.PromptConditioningImageAssignmentOptions, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_19A3B1344(319, &qword_1ED8255B8, &type metadata for ImageStyle, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_19A3B1344(319, &qword_1EAF9F210, &type metadata for Gender, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_19A3B1344(319, &qword_1EAF9F1D8, &type metadata for SkinTone, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_19A3B1344(319, &qword_1ED8255C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_19A3B1394(319, &qword_1ED825588, type metadata accessor for CGRect);
                        if (v11 <= 0x3F)
                        {
                          sub_19A3B1344(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_19A3B1394(319, &qword_1EAF9F6F8, type metadata accessor for ImageVariations);
                            if (v13 <= 0x3F)
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

void sub_19A3B12E0()
{
  if (!qword_1EAF9F018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA1008);
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F018);
    }
  }
}

void sub_19A3B1344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19A3B1394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19A3B1410()
{
  sub_19A3B1394(319, &qword_1EAF9F538, type metadata accessor for GenerativePlayground.PromptAssignmentOptions);
  if (v0 <= 0x3F)
  {
    sub_19A3B1344(319, &qword_1EAF9F508, &type metadata for GenerativePlayground.PromptAssignmentInteractable, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_19A3B1344(319, &qword_1EAF9F230, &type metadata for Image, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A3B1344(319, &qword_1EAF9F500, &type metadata for GenerativePlayground.PromptGuidanceSketchAssignmentOptions, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_19A3B12E0();
          if (v4 <= 0x3F)
          {
            sub_19A3B1344(319, &qword_1EAF9F510, &type metadata for GenerativePlayground.DrawOnImageAssignmentOptions, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_19A3B1344(319, &qword_1EAF9F4F8, &type metadata for GenerativePlayground.PromptConditioningImageAssignmentOptions, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_19A3B1344(319, &qword_1ED8255B8, &type metadata for ImageStyle, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_19A3B1344(319, &qword_1EAF9F210, &type metadata for Gender, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_19A3B1344(319, &qword_1EAF9F1D8, &type metadata for SkinTone, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_19A3B1344(319, &qword_1ED8255C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_19A3B1394(319, &qword_1ED825588, type metadata accessor for CGRect);
                        if (v11 <= 0x3F)
                        {
                          sub_19A3B1344(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
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

unint64_t sub_19A3B17A8()
{
  result = qword_1EAFA1010;
  if (!qword_1EAFA1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1010);
  }

  return result;
}

uint64_t sub_19A3B1804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B1874(const char *a1, uint64_t a2, char a3)
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

unint64_t sub_19A3B1B5C()
{
  result = qword_1EAFA1018;
  if (!qword_1EAFA1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1018);
  }

  return result;
}

uint64_t sub_19A3B1BC4()
{
  v0 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v0);
  sub_19A570A4C();
  sub_19A3B1C94();
  v1 = sub_19A572F7C();
  MEMORY[0x19A900A50](v1);

  MEMORY[0x19A900A50](34, 0xE100000000000000);
  return 34;
}

unint64_t sub_19A3B1C94()
{
  result = qword_1ED825330;
  if (!qword_1ED825330)
  {
    sub_19A570A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED825330);
  }

  return result;
}

uint64_t sub_19A3B1CEC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DF70(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for _NSRange(0);
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19A3B401C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A3B1E34()
{
  v4 = sub_19A5741FC();
  MEMORY[0x19A900A50](2236474, 0xE300000000000000);
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  MEMORY[0x19A900A50](v2, v1);

  MEMORY[0x19A900A50](34, 0xE100000000000000);
  return v4;
}

uint64_t sub_19A3B1EE4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A3B1F60()
{
  v5 = sub_19A5741FC();
  MEMORY[0x19A900A50](2236474, 0xE300000000000000);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x19A900A50](v1, v2);

  MEMORY[0x19A900A50](34, 0xE100000000000000);
  v3 = sub_19A573EDC();
  MEMORY[0x19A900A50](v3);

  MEMORY[0x19A900A50](41, 0xE100000000000000);

  MEMORY[0x19A900A50](40, 0xE100000000000000);

  return v5;
}

uint64_t sub_19A3B20A8()
{

  return swift_deallocClassInstance();
}

void sub_19A3B20E8()
{
  v0 = [objc_opt_self() kQPQueryParserOptionLocaleKey];
  v1 = sub_19A572CFC();
  v3 = v2;

  qword_1EAFCA230 = v1;
  *algn_1EAFCA238 = v3;
}

uint64_t sub_19A3B214C()
{
  result = sub_19A572CCC();
  qword_1EAFCA290 = result;
  return result;
}

uint64_t sub_19A3B2184()
{
  result = sub_19A572CCC();
  qword_1EAFCA148 = result;
  return result;
}

uint64_t sub_19A3B21C4()
{
  result = sub_19A572CCC();
  qword_1EAFCA298 = result;
  return result;
}

uint64_t sub_19A3B21FC()
{
  result = sub_19A3B221C();
  qword_1EAFCA240 = result;
  return result;
}

uint64_t sub_19A3B221C()
{
  v0 = objc_opt_self();
  v1 = sub_19A572CCC();
  v2 = [v0 copyDefaultOptionsForContext_];

  v3 = sub_19A572AFC();
  *(&v7 + 1) = 0x800000019A598280;
  sub_19A5738EC();
  v8 = MEMORY[0x1E69E6530];
  *&v7 = 5000;
  sub_19A3355EC(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19A33CF60(v6, v9, isUniquelyReferenced_nonNull_native);
  sub_19A3345C4(v9);
  return v3;
}

uint64_t sub_19A3B2348(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v4 = OBJC_IVAR____TtC16VisualGeneration15EntityExtractor_locale;
  v5 = sub_19A57112C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 56))(v1 + v4, 1, 1, v5);
  if (MEMORY[0x1E69C6A58])
  {
    if (qword_1EAF9F740 != -1)
    {
      v7 = swift_once();
    }

    v8 = qword_1EAFCA240;
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
    MEMORY[0x1EEE9AC00](v11 - 8);
    v13 = &v30 - v12;
    sub_19A3B3F3C(a1, &v30 - v12);
    if ((*(v6 + 48))(v13, 1, v5) == 1)
    {

      sub_19A2F3FA0(v13, &qword_1EAF9FDC8);
    }

    else
    {
      (*(v6 + 32))(v10, v13, v5);
      v14 = qword_1EAF9F730;

      if (v14 != -1)
      {
        swift_once();
      }

      v32 = xmmword_1EAFCA230;

      sub_19A5738EC();
      v33 = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
      (*(v6 + 16))(boxed_opaque_existential_1, v10, v5);
      sub_19A3355EC(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      sub_19A33CF60(v31, v34, isUniquelyReferenced_nonNull_native);
      sub_19A3345C4(v34);
      (*(v6 + 8))(v10, v5);
    }

    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v17 = sub_19A5723FC();
    __swift_project_value_buffer(v17, qword_1ED82BCF0);

    v18 = sub_19A5723DC();
    v19 = sub_19A57356C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315138;
      v22 = sub_19A572B0C();
      v24 = sub_19A31F114(v22, v23, v34);

      *(v20 + 4) = v24;

      _os_log_impl(&dword_19A2DE000, v18, v19, "Initializing entity extractor with options: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x19A902C50](v21, -1, -1);
      MEMORY[0x19A902C50](v20, -1, -1);
    }

    else
    {
    }

    v25 = objc_allocWithZone(MEMORY[0x1E69C6A58]);
    v26 = sub_19A572ADC();

    v27 = [v25 initWithOptions_];

    v28 = *(v2 + 112);
    *(v2 + 112) = v27;
  }

  swift_beginAccess();
  sub_19A3B4CC8(a1, v2 + v4);
  swift_endAccess();
  return v2;
}

void sub_19A3B2800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26[0] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - v10;
  v12 = sub_19A57112C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A3B3694(a3);
  if (qword_1EAF9F740 != -1)
  {
    swift_once();
  }

  v16 = qword_1EAFCA240;
  sub_19A3B3F3C(a3, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_19A2F3FA0(v11, &qword_1EAF9FDC8);
    v17 = *(v6 + 112);
    if (v17)
    {
LABEL_5:
      v18 = v17;
      v19 = sub_19A572CCC();
      v20 = sub_19A572ADC();

      v21 = swift_allocObject();
      *(v21 + 16) = v26[0];
      *(v21 + 24) = a5;
      aBlock[4] = sub_19A3B4798;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19A3B3290;
      aBlock[3] = &block_descriptor_1;
      v22 = _Block_copy(aBlock);

      [v18 enumerateParseResultsForString:v19 options:v20 withBlock:v22];
      _Block_release(v22);

      return;
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = qword_1EAF9F730;

    if (v23 != -1)
    {
      swift_once();
    }

    v28 = xmmword_1EAFCA230;

    sub_19A5738EC();
    v29 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(v13 + 16))(boxed_opaque_existential_1, v15, v12);
    sub_19A3355EC(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[1] = v16;
    sub_19A33CF60(v27, aBlock, isUniquelyReferenced_nonNull_native);
    sub_19A3345C4(aBlock);
    (*(v13 + 8))(v15, v12);
    v17 = *(v6 + 112);
    if (v17)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_19A3B2BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 length];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a4;
  v9[4] = a5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_19A3B47B8;
  *(v10 + 24) = v9;
  v14[4] = sub_19A3B47C4;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19A3B31C0;
  v14[3] = &block_descriptor_47;
  v11 = _Block_copy(v14);
  v12 = a1;

  [v12 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A3B2D6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  if (*(result + 16))
  {
    v9 = result;
    if (qword_1EAF9F930 == -1 || (result = swift_once(), *(v9 + 16)))
    {
      result = sub_19A31FD58(qword_1EAFCA148);
      if (v10)
      {
        sub_19A334618(*(v9 + 56) + 32 * result, v42);
        result = swift_dynamicCast();
        if (result)
        {
          if (qword_1EAF9F938 != -1)
          {
            swift_once();
          }

          if (*(v9 + 16) && (v11 = sub_19A31FD58(qword_1EAFCA298), (v12 & 1) != 0) && (sub_19A334618(*(v9 + 56) + 32 * v11, v42), (swift_dynamicCast() & 1) != 0))
          {
            sub_19A443360(v40, v41, v42);
            v13 = v42[0];
          }

          else
          {
            v13 = 3;
          }

          v38 = v13;
          v14 = [a5 string];
          sub_19A572CFC();
          v15 = [a5 string];
          sub_19A572CFC();

          sub_19A57348C();
          v17 = v16;

          if (v17)
          {
            __break(1u);
            return result;
          }

          v18 = sub_19A572F9C();
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v37 = MEMORY[0x19A900970](v18, v20, v22, v24);
          v26 = v25;

          v27 = sub_19A572CCC();
          v28 = sub_19A572CCC();
          LODWORD(v24) = [v27 isEqual_];

          if (!v24)
          {
            v34 = sub_19A572CCC();

            v35 = sub_19A572CCC();
            v36 = [v34 isEqual_];

            if (!v36)
            {
            }

            type metadata accessor for EntityExtractor.GenericEntity();
            v32 = swift_allocObject();
            v33 = v32;
            goto LABEL_27;
          }

          if (qword_1EAF9F928 == -1)
          {
            if (!*(v9 + 16))
            {
              goto LABEL_26;
            }
          }

          else
          {
            swift_once();
            if (!*(v9 + 16))
            {
              goto LABEL_26;
            }
          }

          v29 = sub_19A31FD58(qword_1EAFCA290);
          if (v30)
          {
            sub_19A334618(*(v9 + 56) + 32 * v29, v42);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1030);
            if (swift_dynamicCast())
            {
              v31 = sub_19A3B4834(v40);

              if (v31)
              {
                type metadata accessor for EntityExtractor.NamedEntity();
                v32 = swift_allocObject();
                v33 = v32;
                *(v32 + 40) = v31;
LABEL_27:
                *(v32 + 16) = v37;
                *(v32 + 24) = v26;
                *(v32 + 32) = v38;
                a6(a2, a3, v33);
              }
            }
          }

LABEL_26:
          type metadata accessor for EntityExtractor.NamedEntity();
          v32 = swift_allocObject();
          v33 = v32;
          *(v32 + 40) = MEMORY[0x1E69E7CC0];
          goto LABEL_27;
        }
      }
    }
  }

  return result;
}

uint64_t sub_19A3B31C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_19A3B47EC(&qword_1EAF9F078, type metadata accessor for Key);
  v9 = sub_19A572AFC();
  v8(v9, a3, a4, a5);
}

void sub_19A3B3290(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_19A572AFC();

  v4 = a2;
  v3();
}

void *sub_19A3B3344(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for EntityExtractor.NamedEntity();
  result = swift_dynamicCastClass();
  if (result && *(result[5] + 16))
  {
    v6 = result[2];
    v7 = result[3];
    if (a4)
    {
      v6 = sub_19A572DCC();
      v7 = v8;
    }

    else
    {
    }

    swift_beginAccess();

    sub_19A322A18(&v9, v6, v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_19A3B3414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];

  sub_19A3B2800(a1, a2, a3, sub_19A3B4D38, v6);

  v12 = a1;
  v13 = a2;
  swift_beginAccess();
  v11 = *(v6 + 16);
  swift_bridgeObjectRetain_n();

  sub_19A3B1CEC(&v11);

  v7 = *(v11 + 2);
  if (v7)
  {
    v8 = v11 + 40;
    do
    {
      sub_19A57348C();
      if ((v9 & 1) == 0)
      {
        sub_19A572E0C();
      }

      v8 += 16;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_19A3B358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EntityExtractor.NamedEntity();
  result = swift_dynamicCastClass();
  if (result && *(*(result + 40) + 16))
  {
    swift_beginAccess();
    v8 = *(a4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_19A31E05C(0, *(v8 + 2) + 1, 1, v8);
      *(a4 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_19A31E05C((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = a1;
    *(v12 + 5) = a2;
    *(a4 + 16) = v8;
  }

  return result;
}

void sub_19A3B3694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A57112C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v8 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1028);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC16VisualGeneration15EntityExtractor_locale;
  swift_beginAccess();
  v19 = *(v15 + 56);
  sub_19A3B3F3C(v2 + v18, v17);
  v49 = a1;
  sub_19A3B3F3C(a1, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_19A2F3FA0(v17, &qword_1EAF9FDC8);
      return;
    }
  }

  else
  {
    sub_19A3B3F3C(v17, v13);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v17[v19], v4);
      sub_19A3B47EC(&qword_1EAF9F8D0, MEMORY[0x1E6969770]);
      v43 = sub_19A572C2C();
      v44 = *(v5 + 8);
      v44(v7, v4);
      v44(v13, v4);
      sub_19A2F3FA0(v17, &qword_1EAF9FDC8);
      if (v43)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v13, v4);
  }

  sub_19A2F3FA0(v17, &qword_1EAFA1028);
LABEL_7:
  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v21 = sub_19A5723FC();
  __swift_project_value_buffer(v21, qword_1ED82BCF0);
  v22 = v47;
  sub_19A3B3F3C(v49, v47);

  v23 = sub_19A5723DC();
  v24 = sub_19A57356C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50[0] = v45;
    *v25 = 136315394;
    v26 = v46;
    sub_19A3B3F3C(v2 + v18, v46);
    v27 = sub_19A572DAC();
    v29 = sub_19A31F114(v27, v28, v50);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    sub_19A3B3F3C(v22, v26);
    v30 = sub_19A572DAC();
    v31 = v22;
    v33 = v32;
    sub_19A2F3FA0(v31, &qword_1EAF9FDC8);
    v34 = sub_19A31F114(v30, v33, v50);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_19A2DE000, v23, v24, "Updating EntityExtractor locale. old: %s; new: %s", v25, 0x16u);
    v35 = v45;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v35, -1, -1);
    MEMORY[0x19A902C50](v25, -1, -1);
  }

  else
  {

    sub_19A2F3FA0(v22, &qword_1EAF9FDC8);
  }

  swift_beginAccess();
  sub_19A3B3FAC(v49, v2 + v18);
  swift_endAccess();
  v36 = *(v2 + 112);
  if (v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    v38 = qword_1EAF9F730;
    v39 = v36;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = *(&xmmword_1EAFCA230 + 1);
    *(inited + 32) = xmmword_1EAFCA230;
    *(inited + 40) = v40;
    *(inited + 72) = v48;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    sub_19A3B3F3C(v2 + v18, boxed_opaque_existential_1);

    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
    v42 = sub_19A572ADC();

    [v39 setOptions_];
  }
}

uint64_t sub_19A3B3D14()
{
  sub_19A2F3FA0(v0 + OBJC_IVAR____TtC16VisualGeneration15EntityExtractor_locale, &qword_1EAF9FDC8);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_19A3B3D94()
{
  sub_19A366D8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19A3B3EC8()
{
  result = sub_19A57102C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A3B3F3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B3FAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A3B401C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19A34DDAC(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_19A3B4594((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_19A31CF2C((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
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
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_19A3B4594((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (*v30 >= v28)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}