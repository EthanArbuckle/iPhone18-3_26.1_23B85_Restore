uint64_t sub_26BFB376C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26BFB673C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26BFB385C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v13 = a3(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v21 = &v26 - v20;
  if (a1 != a2)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *v6;
      v22 = *(*v6 + 16);
      if (v22 > a1)
      {
        v27 = a5;
        v28 = v6;
        v29 = a6;
        v6 = (*(v19 + 80) + 32) & ~*(v19 + 80);
        a6 = *(v19 + 72);
        a1 *= a6;
        sub_26BFB75D8(v7 + v6 + a1, &v26 - v20, a4);
        if (v22 > a2)
        {
          a6 *= a2;
          sub_26BFB75D8(v7 + v6 + a6, v17, a4);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        v7 = v27(v7);
LABEL_6:
        v23 = v29;
        v24 = v7 + v6;
        result = sub_26BFB7570(v17, v7 + v6 + a1, v29);
        v25 = v28;
        *v28 = v7;
        if (*(v7 + 16) <= a2)
        {
          __break(1u);
        }

        else
        {
          result = sub_26BFB7570(v21, v24 + a6, v23);
          *v25 = v7;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26BFB3AD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26BFB2BA0(*a1, a1[1], a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_26BFB3B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF20, &qword_26C022450);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  v13 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFB7640(a1, _s21RCSParticipantKeyRollVMa);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v10 = a2;
    sub_26BFB7508(a1, v10 + *(result + 28), _s21RCSParticipantKeyRollVMa);
    result = sub_26BFB3D94(v10);
    v11 = v13;
LABEL_5:
    *a3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB3C6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(*v1 + 16);
  sub_26BFB7508(a1, &v12 - v8, _s21RCSParticipantKeyRollVMa);
  sub_26BE2E1F0(v9, v7, &qword_28045E6E0, &unk_26C011340);
  sub_26BE56464(v10, v10, v7);
  return sub_26BE2E258(v9, &qword_28045E6E0, &unk_26C011340);
}

uint64_t sub_26BFB3D94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF28, &qword_26C022458);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  sub_26BE33F30(a1, &v26 - v13, &qword_28045FF20, &qword_26C022450);
  v15 = *(v11 + 44);
  *(v14 + v15) = 0;
  v16 = *v14;
  if (!*v14)
  {
    return sub_26BE2E258(v14, &qword_28045FF28, &qword_26C022458);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF20, &qword_26C022450);
  if (v16 >= 1)
  {
    v28 = v15;
    v29 = v1;
    v30 = *(result + 28);
    v31 = v14;
    v18 = *v1;
    v27 = v16;
    while (1)
    {
      v19 = v18[2];
      sub_26BFB75D8(v14 + v30, v9, _s21RCSParticipantKeyRollVMa);
      sub_26BE2E1F0(v9, v7, &qword_28045E6E0, &unk_26C011340);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v19 >= v18[3] >> 1)
      {
        v18 = sub_26BEEBFEC(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v18);
      }

      v21 = *(_s21RCSParticipantKeyRollVMa() - 8);
      v22 = *(v21 + 72);
      v23 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + v22 * v19;
      swift_arrayDestroy();
      v24 = v18[2];
      if (v22 < 0 || v22 >= ((v24 - v19) * v22))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v18[2];
        if (v22 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v22)
        {
          v18[2] = v24 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v18[2];
      }

      sub_26BFB75D8(v7, v23, _s21RCSParticipantKeyRollVMa);
LABEL_6:
      sub_26BE2E258(v7, &qword_28045E6E0, &unk_26C011340);
      sub_26BE2E258(v9, &qword_28045E6E0, &unk_26C011340);
      --v16;
      v14 = v31;
      if (!v16)
      {
        v25 = v28;
        *v29 = v18;
        *(v14 + v25) = v27;
        return sub_26BE2E258(v14, &qword_28045FF28, &qword_26C022458);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB40D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF40, &qword_26C022470);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  sub_26BE33F30(a1, &v26 - v13, &qword_28045FF48, &qword_26C022478);
  v15 = *(v11 + 44);
  *(v14 + v15) = 0;
  v16 = *v14;
  if (!*v14)
  {
    return sub_26BE2E258(v14, &qword_28045FF40, &qword_26C022470);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF48, &qword_26C022478);
  if (v16 >= 1)
  {
    v28 = v15;
    v29 = v1;
    v30 = *(result + 28);
    v31 = v14;
    v18 = *v1;
    v27 = v16;
    while (1)
    {
      v19 = v18[2];
      sub_26BFB75D8(v14 + v30, v9, _s25RelativeDistinguishedNameVMa);
      sub_26BE2E1F0(v9, v7, &qword_28045E6E8, &unk_26C022D90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v19 >= v18[3] >> 1)
      {
        v18 = sub_26BEEBFC4(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v18);
      }

      v21 = *(_s25RelativeDistinguishedNameVMa() - 8);
      v22 = *(v21 + 72);
      v23 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + v22 * v19;
      swift_arrayDestroy();
      v24 = v18[2];
      if (v22 < 0 || v22 >= ((v24 - v19) * v22))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v18[2];
        if (v22 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v22)
        {
          v18[2] = v24 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v18[2];
      }

      sub_26BFB75D8(v7, v23, _s25RelativeDistinguishedNameVMa);
LABEL_6:
      sub_26BE2E258(v7, &qword_28045E6E8, &unk_26C022D90);
      sub_26BE2E258(v9, &qword_28045E6E8, &unk_26C022D90);
      --v16;
      v14 = v31;
      if (!v16)
      {
        v25 = v28;
        *v29 = v18;
        *(v14 + v25) = v27;
        return sub_26BE2E258(v14, &qword_28045FF40, &qword_26C022470);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB4414(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF50, &unk_26C022490);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v26 - v13);
  sub_26BE33F30(a1, &v26 - v13, &qword_28045FF58, &qword_26C024AE0);
  v15 = *(v11 + 44);
  *(v14 + v15) = 0;
  v16 = *v14;
  if (!*v14)
  {
    return sub_26BE2E258(v14, &qword_28045FF50, &unk_26C022490);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF58, &qword_26C024AE0);
  if (v16 >= 1)
  {
    v28 = v15;
    v29 = v1;
    v30 = *(result + 28);
    v31 = v14;
    v18 = *v1;
    v27 = v16;
    while (1)
    {
      v19 = v18[2];
      sub_26BFB75D8(v14 + v30, v9, _s11GeneralNameOMa);
      sub_26BE2E1F0(v9, v7, &qword_28045E6F0, &unk_26C011350);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v19 >= v18[3] >> 1)
      {
        v18 = sub_26BEEC014(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v18);
      }

      v21 = *(_s11GeneralNameOMa(0) - 8);
      v22 = *(v21 + 72);
      v23 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + v22 * v19;
      swift_arrayDestroy();
      v24 = v18[2];
      if (v22 < 0 || v22 >= ((v24 - v19) * v22))
      {
        swift_arrayInitWithTakeFrontToBack();
        ++v18[2];
        if (v22 <= 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (!v22)
        {
          v18[2] = v24 + 1;
          goto LABEL_6;
        }

        swift_arrayInitWithTakeBackToFront();
        ++v18[2];
      }

      sub_26BFB75D8(v7, v23, _s11GeneralNameOMa);
LABEL_6:
      sub_26BE2E258(v7, &qword_28045E6F0, &unk_26C011350);
      sub_26BE2E258(v9, &qword_28045E6F0, &unk_26C011350);
      --v16;
      v14 = v31;
      if (!v16)
      {
        v25 = v28;
        *v29 = v18;
        *(v14 + v25) = v27;
        return sub_26BE2E258(v14, &qword_28045FF50, &unk_26C022490);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFB4754(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E0, &unk_26C011340);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *a2;
  sub_26BFB7508(a1, &v13 - v9, _s21RCSParticipantKeyRollVMa);
  sub_26BE2E1F0(v10, v8, &qword_28045E6E0, &unk_26C011340);
  sub_26BE56464(v11, v11, v8);
  return sub_26BE2E258(v10, &qword_28045E6E0, &unk_26C011340);
}

unint64_t sub_26BFB4914@<X0>(unint64_t result@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(unint64_t, unint64_t)@<X3>, uint64_t a5@<X8>)
{
  v7 = *v5;
  v8 = *(*v5 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = *(a2(0) - 8);
  sub_26BFB75D8(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, a5, a3);

  return a4(v9, v9 + 1);
}

uint64_t sub_26BFB4A54@<X0>(uint64_t a1@<X8>)
{
  v2 = _s21RCSParticipantKeyRollVMa();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFB4AC0(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s21RCSParticipantKeyRollVMa() - 8);
    sub_26BFB75D8(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1, _s21RCSParticipantKeyRollVMa);

    sub_26BE5AE0C(0, 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BFB4B68(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB2DE8(0, result, *(*v1 + 16), *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5AE0C(0, result);
}

unint64_t sub_26BFB4BD0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5AE0C(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

int64_t sub_26BFB4C20(uint64_t a1, uint64_t a2)
{
  result = sub_26BFB70F8(a1, a2, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5AE0C(result, v5);
    }
  }

  return result;
}

void *sub_26BFB4CB4@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_26BFB4CE0(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_26BFB4D14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_26BFB2DE8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void (*sub_26BFB4D64(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(_s21RCSParticipantKeyRollVMa() - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFB75D8(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, _s21RCSParticipantKeyRollVMa);
    return sub_26BFB4E74;
  }

  __break(1u);
  return result;
}

void sub_26BFB4E74(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFB7640(*a1, _s21RCSParticipantKeyRollVMa);

  free(v1);
}

uint64_t *sub_26BFB4EC4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

void sub_26BFB4EF0(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_26BFB4F24@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_26BFB4F50(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_26BFB4F78(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4F94(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4FB0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_26BFB4FCC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_26BFB4FF0(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_26BFB5034()
{
  v1 = sub_26BFB649C(*v0, sub_26BE32630, _s21RCSParticipantKeyRollVMa, sub_26BE3297C);

  return v1;
}

void sub_26BFB50D4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    if (v5 == v4)
    {
      break;
    }

    v6 = *(_s21RCSParticipantKeyRollVMa() - 8);
    v7 = v4 + 1;
    v8 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    sub_26BFB76A0(&qword_28045F0B0, _s21RCSParticipantKeyRollVMa);
    sub_26C00976C();
    v4 = v7;
  }

  while (!v2);
}

uint64_t sub_26BFB51E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s21RCSParticipantKeyRollVMa();
  sub_26BFB76A0(&qword_28045F0A8, _s21RCSParticipantKeyRollVMa);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

unint64_t sub_26BFB5464()
{
  result = qword_28045FE78;
  if (!qword_28045FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE78);
  }

  return result;
}

unint64_t sub_26BFB54BC()
{
  result = qword_28045FE80;
  if (!qword_28045FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE80);
  }

  return result;
}

unint64_t sub_26BFB5558()
{
  result = qword_28045FE98;
  if (!qword_28045FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FE98);
  }

  return result;
}

unint64_t sub_26BFB55EC()
{
  result = qword_28045FEA8;
  if (!qword_28045FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEA8);
  }

  return result;
}

unint64_t sub_26BFB5688()
{
  result = qword_28045FEC0;
  if (!qword_28045FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEC0);
  }

  return result;
}

unint64_t sub_26BFB57A0()
{
  result = qword_28045FEE0;
  if (!qword_28045FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEE0);
  }

  return result;
}

unint64_t sub_26BFB583C()
{
  result = qword_28045FEF0;
  if (!qword_28045FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FEF0);
  }

  return result;
}

uint64_t sub_26BFB58C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E270, &unk_26C00E290);
    sub_26BFB55EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFB5988(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045FEB8, &qword_26C0220B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFB5A00()
{
  result = qword_28045FF08;
  if (!qword_28045FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF08);
  }

  return result;
}

unint64_t sub_26BFB5A58()
{
  result = qword_28045FF10;
  if (!qword_28045FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF10);
  }

  return result;
}

uint64_t sub_26BFB5AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF38, &qword_26C022468);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v27 - v7);
  v9 = _s9AttributeVMa(0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  v22 = (v8 + *(v5 + 56));
  sub_26BE2E1F0(a1, v8, &qword_28045E520, &unk_26C016B80);
  sub_26BE2E1F0(a2, v22, &qword_28045E520, &unk_26C016B80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26BFB7508(v8, v19, _s9AttributeVMa);
      sub_26BFB7508(v22, v16, _s9AttributeVMa);
      if (sub_26C00945C())
      {
        v24 = sub_26BFCCAA8(&v19[*(v28 + 20)], &v16[*(v28 + 20)]);
        sub_26BFB7640(v16, _s9AttributeVMa);
        sub_26BFB7640(v19, _s9AttributeVMa);
        return v24 & 1;
      }

      sub_26BFB7640(v16, _s9AttributeVMa);
      v25 = v19;
      goto LABEL_15;
    }

    v23 = *v22;
LABEL_7:
    sub_26BFB7508(v8, v21, _s9AttributeVMa);
    if (*(v23 + 16) != 1)
    {
      sub_26BFB7640(v21, _s9AttributeVMa);

LABEL_16:
      v24 = 0;
      return v24 & 1;
    }

    sub_26BFB75D8(v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v13, _s9AttributeVMa);

    if (sub_26C00945C())
    {
      v24 = sub_26BFCCAA8(&v21[*(v28 + 20)], &v13[*(v28 + 20)]);
      sub_26BFB7640(v13, _s9AttributeVMa);
      sub_26BFB7640(v21, _s9AttributeVMa);
      return v24 & 1;
    }

    sub_26BFB7640(v13, _s9AttributeVMa);
    v25 = v21;
LABEL_15:
    sub_26BFB7640(v25, _s9AttributeVMa);
    goto LABEL_16;
  }

  v23 = *v8;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v8 = v22;
    goto LABEL_7;
  }

  v24 = sub_26BFB1064(v23, *v22);

  return v24 & 1;
}

uint64_t sub_26BFB5F1C(uint64_t *a1, unint64_t a2, int64_t a3, int64_t a4, int64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t), uint64_t (*a9)(void), uint64_t (*a10)(void))
{
  v34 = a4;
  v17 = a7(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v29 - v20;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v10 = *a1;
  if (*(*a1 + 16) < a3)
  {
    goto LABEL_23;
  }

  v22 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v30 = a1;
    *a1 = v10;
    v24 = v34;
    v25 = v34 == a5;
    v26 = a2 == a3;
    if (a2 == a3 || v34 == a5)
    {
      break;
    }

    v32 = a10;
    v33 = a9;
    v31 = a3 - 1;
    a1 = (a5 - 1);
    v27 = v34;
    while (v27 < a5)
    {
      if (v24 < 0)
      {
        goto LABEL_19;
      }

      if (v27 >= *(a6 + 16))
      {
        goto LABEL_20;
      }

      a3 = a5;
      a5 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      a8 = *(v18 + 72);
      sub_26BFB75D8(a6 + a5 + a8 * v27, v21, v33);
      if (a2 >= *(v10 + 16))
      {
        goto LABEL_21;
      }

      result = sub_26BFB7570(v21, v10 + a5 + a8 * a2, v32);
      if (a2 >= *(v10 + 16))
      {
        goto LABEL_22;
      }

      v25 = a1 == v27;
      v26 = v31 == a2;
      if (v31 != a2)
      {
        ++a2;
        v28 = a1 == v27++;
        a5 = a3;
        v24 = v34;
        if (!v28)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = a8(v10);
    v10 = result;
  }

LABEL_15:
  *v30 = v10;
  if (!v26)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (!v25)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

size_t sub_26BFB61A0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  sub_26BE2E1F0(a1, &v22 - v12, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(*v13 + 16);
  }

  else
  {
    sub_26BE2E258(v13, &qword_28045E520, &unk_26C016B80);
    v14 = 1;
  }

  v15 = sub_26BFD9BBC(0, v14);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = v15;
  v17 = sub_26BE325B8(v15, 0);
  v18 = *(_s9AttributeVMa(0) - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  sub_26BFB75D8(a1, v5, _s25RelativeDistinguishedNameVMa);
  v20 = sub_26BE32B1C(v9, v17 + v19, v16);
  sub_26BE2E258(v9, &qword_28045E530, &unk_26C022480);
  if (v20 != v16)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v17;
}

uint64_t sub_26BFB649C(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, unint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = *(a3(0) - 8);
  v10 = a4(&v12, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v4, a1);

  if (v10 != v4)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v8;
}

void sub_26BFB6580(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_26BFB6640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C0, &qword_26C0224A0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 136);
      if (v4 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_26BFB673C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v33 = a2;
  v32 = a1;
  v4 = _s21RCSParticipantKeyRollVMa();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v6);
  v30 = &v27 - v9;
  v10 = *v2;
  v11 = *(*v2 + 16);
  if (v11)
  {
    v28 = v2;
    v29 = v8;
    v12 = 0;
    v13 = v11;
LABEL_3:
    v14 = v12;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v14 >= v11)
      {
        goto LABEL_23;
      }

      v15 = v30;
      v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v17 = *(v31 + 72);
      v18 = v10;
      sub_26BFB75D8(v10 + v16 + v17 * v14, v30, _s21RCSParticipantKeyRollVMa);
      v19 = v32(v15);
      if (v3)
      {
        sub_26BFB7640(v15, _s21RCSParticipantKeyRollVMa);
        return v14;
      }

      v20 = v19;
      result = sub_26BFB7640(v15, _s21RCSParticipantKeyRollVMa);
      v11 = *(v18 + 16);
      v10 = v18;
      if (v20)
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_24;
      }

      if (++v14 >= v13)
      {
        return v14;
      }
    }

    v21 = v18 + v16 + (v13 - 1) * v17;
    v22 = -v17;
    while (--v13 < v11)
    {
      if (v14 >= v13)
      {
        return v14;
      }

      if (v13 >= *(v10 + 16))
      {
        goto LABEL_26;
      }

      v23 = v10;
      v24 = v29;
      sub_26BFB75D8(v21, v29, _s21RCSParticipantKeyRollVMa);
      v25 = v32(v24);
      result = sub_26BFB7640(v24, _s21RCSParticipantKeyRollVMa);
      v21 += v22;
      v10 = v23;
      if ((v25 & 1) == 0)
      {
        v26 = v28;
        result = sub_26BFB385C(v14, v13, _s21RCSParticipantKeyRollVMa, _s21RCSParticipantKeyRollVMa, sub_26BE58848, _s21RCSParticipantKeyRollVMa);
        v10 = *v26;
        v11 = *(*v26 + 16);
        if (v14 >= v11)
        {
          goto LABEL_27;
        }

        v12 = v14 + 1;
        if ((v14 + 1) >= v13)
        {
          return ++v14;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26BFB6A58(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v33 = a2;
  v32 = a1;
  v4 = _s25RelativeDistinguishedNameVMa();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v6);
  v30 = &v27 - v9;
  v10 = *v2;
  v11 = *(*v2 + 16);
  if (v11)
  {
    v28 = v2;
    v29 = v8;
    v12 = 0;
    v13 = v11;
LABEL_3:
    v14 = v12;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v14 >= v11)
      {
        goto LABEL_23;
      }

      v15 = v30;
      v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v17 = *(v31 + 72);
      v18 = v10;
      sub_26BFB75D8(v10 + v16 + v17 * v14, v30, _s25RelativeDistinguishedNameVMa);
      v19 = v32(v15);
      if (v3)
      {
        sub_26BFB7640(v15, _s25RelativeDistinguishedNameVMa);
        return v14;
      }

      v20 = v19;
      result = sub_26BFB7640(v15, _s25RelativeDistinguishedNameVMa);
      v11 = *(v18 + 16);
      v10 = v18;
      if (v20)
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_24;
      }

      if (++v14 >= v13)
      {
        return v14;
      }
    }

    v21 = v18 + v16 + (v13 - 1) * v17;
    v22 = -v17;
    while (--v13 < v11)
    {
      if (v14 >= v13)
      {
        return v14;
      }

      if (v13 >= *(v10 + 16))
      {
        goto LABEL_26;
      }

      v23 = v10;
      v24 = v29;
      sub_26BFB75D8(v21, v29, _s25RelativeDistinguishedNameVMa);
      v25 = v32(v24);
      result = sub_26BFB7640(v24, _s25RelativeDistinguishedNameVMa);
      v21 += v22;
      v10 = v23;
      if ((v25 & 1) == 0)
      {
        v26 = v28;
        result = sub_26BFB385C(v14, v13, _s25RelativeDistinguishedNameVMa, _s25RelativeDistinguishedNameVMa, sub_26BE58834, _s25RelativeDistinguishedNameVMa);
        v10 = *v26;
        v11 = *(*v26 + 16);
        if (v14 >= v11)
        {
          goto LABEL_27;
        }

        v12 = v14 + 1;
        if ((v14 + 1) >= v13)
        {
          return ++v14;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_26BFB6D74(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v33 = a2;
  v32 = a1;
  v4 = _s11GeneralNameOMa(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  result = MEMORY[0x28223BE20](v6);
  v30 = &v27 - v9;
  v10 = *v2;
  v11 = *(*v2 + 16);
  if (v11)
  {
    v28 = v2;
    v29 = v8;
    v12 = 0;
    v13 = v11;
LABEL_3:
    v14 = v12;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v14 >= v11)
      {
        goto LABEL_23;
      }

      v15 = v30;
      v16 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v17 = *(v31 + 72);
      v18 = v10;
      sub_26BFB75D8(v10 + v16 + v17 * v14, v30, _s11GeneralNameOMa);
      v19 = v32(v15);
      if (v3)
      {
        sub_26BFB7640(v15, _s11GeneralNameOMa);
        return v14;
      }

      v20 = v19;
      result = sub_26BFB7640(v15, _s11GeneralNameOMa);
      v11 = *(v18 + 16);
      v10 = v18;
      if (v20)
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_24;
      }

      if (++v14 >= v13)
      {
        return v14;
      }
    }

    v21 = v18 + v16 + (v13 - 1) * v17;
    v22 = -v17;
    while (--v13 < v11)
    {
      if (v14 >= v13)
      {
        return v14;
      }

      if (v13 >= *(v10 + 16))
      {
        goto LABEL_26;
      }

      v23 = v10;
      v24 = v29;
      sub_26BFB75D8(v21, v29, _s11GeneralNameOMa);
      v25 = v32(v24);
      result = sub_26BFB7640(v24, _s11GeneralNameOMa);
      v21 += v22;
      v10 = v23;
      if ((v25 & 1) == 0)
      {
        v26 = v28;
        result = sub_26BFB385C(v14, v13, _s11GeneralNameOMa, _s11GeneralNameOMa, sub_26BE5885C, _s11GeneralNameOMa);
        v10 = *v26;
        v11 = *(*v26 + 16);
        if (v14 >= v11)
        {
          goto LABEL_27;
        }

        v12 = v14 + 1;
        if ((v14 + 1) >= v13)
        {
          return ++v14;
        }

        goto LABEL_3;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_26BFB70F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v48 = a6;
  v46 = a5;
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v41 = v6;
  v21 = *v6;
  v22 = a2;
  v23 = a2;
  v24 = v49;
  v25 = a4;
  result = sub_26BFB281C(a1, v23, v21, a4);
  if (v24)
  {
    return result;
  }

  v45 = v22;
  v47 = v20;
  v42 = v18;
  v40 = a4;
  v28 = *(v21 + 16);
  if (v27)
  {
    v46 = *(v21 + 16);
    return v28;
  }

  v29 = result;
  v49 = 0;
  if (result >= v28)
  {
LABEL_31:
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v41;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }
  }

  v21 = (v46)(v21);
LABEL_6:
  *v25 = v21;
  v31 = *(v21 + 16);
  v46 = v29;
  v32 = v47;
  v43 = a1;
  v44 = v11;
  v39 = v15;
  while (1)
  {
    if (++v29 == v31)
    {
      *v41 = v21;
      return v46;
    }

    if (v29 >= v31)
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v15 = v21;
    v25 = (v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)));
    v21 = *(v11 + 9);
    v33 = v25 + v21 * v29;
    v34 = v48;
    sub_26BFB75D8(v33, v32, v48);
    v35 = v49;
    v36 = (a1)(v32);
    v49 = v35;
    if (v35)
    {
      break;
    }

    a1 = v36;
    sub_26BFB7640(v32, v34);
    if (a1)
    {
      v21 = v15;
      v31 = *(v15 + 2);
      v32 = v47;
    }

    else
    {
      v11 = v46;
      v32 = v47;
      if (v29 != v46)
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        v37 = *(v15 + 2);
        if (v46 >= v37)
        {
          goto LABEL_28;
        }

        a1 = v25 + v21 * v46;
        v25 = v48;
        sub_26BFB75D8(a1, v42, v48);
        if (v29 >= v37)
        {
          goto LABEL_29;
        }

        v38 = v39;
        sub_26BFB75D8(v33, v39, v25);
        v21 = v40;
        sub_26BFB7570(v38, a1, v40);
        if (v29 >= *(v15 + 2))
        {
          goto LABEL_30;
        }

        sub_26BFB7570(v42, v33, v21);
        v32 = v47;
      }

      v31 = *(v15 + 2);
      if (v11 >= v31)
      {
        goto LABEL_26;
      }

      v21 = v15;
      v46 = v11 + 1;
    }

    a1 = v43;
    v11 = v44;
    if (v29 >= v31)
    {
      goto LABEL_25;
    }
  }

  *v41 = v15;
  return sub_26BFB7640(v32, v34);
}

unint64_t sub_26BFB7498()
{
  result = qword_28045FF18;
  if (!qword_28045FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045FF18);
  }

  return result;
}

uint64_t sub_26BFB7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB7570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB75D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFB7640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFB76A0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 MLS.LeafNodeOptions.init(credential:capabilities:extensions:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a1;
  v6 = *(a2 + 4);
  sub_26BE71980(0, 0x3000000000000000uLL);
  sub_26BE701EC(0);
  result = v9;
  *a4 = v10;
  *(a4 + 16) = v8;
  *(a4 + 32) = v9;
  *(a4 + 48) = v6;
  *(a4 + 56) = a3;
  return result;
}

uint64_t sub_26BFB77AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_26BFB7808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.algorithm.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C00947C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MLS.AlgorithmIdentifier.algorithm.setter(uint64_t a1)
{
  v3 = sub_26C00947C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for MLS.AlgorithmIdentifier()
{
  result = qword_2804601F8;
  if (!qword_2804601F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.parameters.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);

  return sub_26BFB7A64(a1, v3);
}

uint64_t sub_26BFB7A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.AlgorithmIdentifier.init(algorithm:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
  v7 = sub_26C0094DC();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_26C00947C();
  (*(*(v8 - 8) + 32))(a3, a1, v8);

  return sub_26BFB7A64(a2, a3 + v6);
}

uint64_t MLS.AlgorithmIdentifier.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFB7CD0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_26C00950C();
  v47 = *(v1 - 8);
  v48 = v1;
  v2 = *(v47 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = sub_26C00934C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_26C00947C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v25 = v50;
  result = sub_26C0096BC();
  if (!v25)
  {
    v40 = 0;
    v41 = v24;
    v42 = v21;
    v27 = v44;
    v28 = v45;
    v50 = v17;
    sub_26C0093EC();
    v29 = v27;
    v30 = v46;
    sub_26BE2E1F0(v27, v46, &qword_280460210, &qword_26C022788);
    v32 = v47;
    v31 = v48;
    v33 = 1;
    if ((*(v47 + 48))(v30, 1, v48) != 1)
    {
      (*(v32 + 32))(v28, v30, v31);
      (*(v32 + 16))(v43, v28, v31);
      sub_26C00948C();
      (*(v32 + 8))(v28, v31);
      v33 = 0;
    }

    sub_26BE2E258(v29, &qword_280460210, &qword_26C022788);
    v34 = sub_26C0094DC();
    v48 = *(*(v34 - 8) + 56);
    v35 = v50;
    v48(v50, v33, 1, v34);
    v36 = v41;
    v37 = v42;
    v38 = v49;
    (*(v42 + 16))(v49, v41, v20);
    sub_26BE2E1F0(v35, v15, &qword_28045EE48, &unk_26C022430);
    v39 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
    v48(v38 + v39, 1, 1, v34);
    sub_26BFB7A64(v15, v38 + v39);
    sub_26BE2E258(v35, &qword_28045EE48, &unk_26C022430);
    return (*(v37 + 8))(v36, v20);
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.init(berEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00950C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v10[2];
  v19 = a1;
  v14(v13, a1, v9);
  (*(v5 + 16))(v8, a2, v4);
  type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26C0097FC();
  v15 = *(v5 + 8);
  v15(a2, v4);
  v16 = v10[1];
  v16(v19, v9);
  v15(v8, v4);
  return (v16)(v13, v9);
}

uint64_t sub_26BFB83FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26C0094DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v14 = type metadata accessor for MLS.AlgorithmIdentifier();
    sub_26BE2E1F0(a2 + *(v14 + 20), v7, &qword_28045EE48, &unk_26C022430);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_26BE2E258(v7, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26C00976C();
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t MLS.AlgorithmIdentifier.hash(into:)()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BE2E1F0(v0 + *(v10 + 20), v9, &qword_28045EE48, &unk_26C022430);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_26C00B07C();
  sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988]);
  sub_26C00A3CC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t MLS.AlgorithmIdentifier.hashValue.getter()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BE2E1F0(v0 + *(v10 + 20), v9, &qword_28045EE48, &unk_26C022430);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFB8AA8(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFB8BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  sub_26BE2E1F0(v2 + *(a2 + 20), v12, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_26C00B07C();
  sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988]);
  sub_26C00A3CC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26BFB8E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  sub_26BE2E1F0(v2 + *(a2 + 20), v12, &qword_28045EE48, &unk_26C022430);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_26C00B07C();
    sub_26BFBC2DC(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v8, v4);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFB9380()
{
  v0 = sub_26C00952C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, qword_280460008);
  v12 = __swift_project_value_buffer(v11, qword_280460008);
  if (qword_28045E0D0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280479068);
  (*(v7 + 16))(v10, v13, v6);
  sub_26C00951C();
  sub_26C0094BC();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 0, 1, v14);
  v16 = *(v11 + 20);
  v15((v12 + v16), 1, 1, v14);
  (*(v7 + 32))(v12, v10, v6);
  return sub_26BFB7A64(v5, v12 + v16);
}

uint64_t sub_26BFB9828(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_26C00947C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v14, a2);
  v15 = __swift_project_value_buffer(v14, a2);
  a3();
  v16 = sub_26C0094DC();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 1, 1, v16);
  v18 = *(v14 + 20);
  v17((v15 + v18), 1, 1, v16);
  (*(v10 + 32))(v15, v13, v9);
  return sub_26BFB7A64(v8, v15 + v18);
}

uint64_t sub_26BFB9A38(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_26C00952C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22[-v9];
  v11 = sub_26C00947C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v16, a2);
  v17 = __swift_project_value_buffer(v16, a2);
  a3();
  sub_26C00951C();
  sub_26C0094BC();
  v18 = sub_26C0094DC();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 0, 1, v18);
  v20 = *(v16 + 20);
  v19((v17 + v20), 1, 1, v18);
  (*(v12 + 32))(v17, v15, v11);
  return sub_26BFB7A64(v10, v17 + v20);
}

uint64_t sub_26BFB9D10()
{
  v0 = sub_26C00952C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, qword_2804600F8);
  v12 = __swift_project_value_buffer(v11, qword_2804600F8);
  if (qword_28045E0D8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280479080);
  (*(v7 + 16))(v10, v13, v6);
  sub_26C00951C();
  sub_26C0094BC();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 0, 1, v14);
  v16 = *(v11 + 20);
  v15((v12 + v16), 1, 1, v14);
  (*(v7 + 32))(v12, v10, v6);
  return sub_26BFB7A64(v5, v12 + v16);
}

uint64_t sub_26BFBA038()
{
  v0 = sub_26C00952C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, qword_280460128);
  v12 = __swift_project_value_buffer(v11, qword_280460128);
  if (qword_28045E0E0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_280479098);
  (*(v7 + 16))(v10, v13, v6);
  sub_26C00951C();
  sub_26C0094BC();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 0, 1, v14);
  v16 = *(v11 + 20);
  v15((v12 + v16), 1, 1, v14);
  (*(v7 + 32))(v12, v10, v6);
  return sub_26BFB7A64(v5, v12 + v16);
}

uint64_t sub_26BFBA360()
{
  v0 = sub_26C00952C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, qword_280460158);
  v12 = __swift_project_value_buffer(v11, qword_280460158);
  if (qword_28045E0E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2804790B0);
  (*(v7 + 16))(v10, v13, v6);
  sub_26C00951C();
  sub_26C0094BC();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 0, 1, v14);
  v16 = *(v11 + 20);
  v15((v12 + v16), 1, 1, v14);
  (*(v7 + 32))(v12, v10, v6);
  return sub_26BFB7A64(v5, v12 + v16);
}

uint64_t sub_26BFBA664(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_26C00947C();
  v14 = __swift_project_value_buffer(v13, a4);
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  v15 = sub_26C0094DC();
  v16 = *(*(v15 - 8) + 56);
  v16(v10, 1, 1, v15);
  v17 = *(v11 + 20);
  v16((v12 + v17), 1, 1, v15);
  return sub_26BFB7A64(v10, v12 + v17);
}

uint64_t sub_26BFBA80C()
{
  v0 = sub_26C00952C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v11, qword_280460188);
  v12 = __swift_project_value_buffer(v11, qword_280460188);
  if (qword_28045E0F0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2804790C8);
  (*(v7 + 16))(v10, v13, v6);
  sub_26C00951C();
  sub_26C0094BC();
  v14 = sub_26C0094DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v5, 0, 1, v14);
  v16 = *(v11 + 20);
  v15((v12 + v16), 1, 1, v14);
  (*(v7 + 32))(v12, v10, v6);
  return sub_26BFB7A64(v5, v12 + v16);
}

uint64_t MLS.AlgorithmIdentifier.description.getter()
{
  v1 = v0;
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for MLS.AlgorithmIdentifier();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v1;
  sub_26BE13564(v1, v20);
  if (qword_28045DFF8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_28045FF60);
  v60 = v20;
  if (sub_26C00945C())
  {
    v56 = v17;
    v57 = v10;
    v22 = *(v17 + 20);
    v23 = *(v13 + 48);
    sub_26BE2E1F0(v21 + v22, v16, &qword_28045EE48, &unk_26C022430);
    sub_26BE2E1F0(&v60[v22], &v16[v23], &qword_28045EE48, &unk_26C022430);
    v24 = *(v3 + 48);
    if (v24(v16, 1, v2) == 1)
    {
      if (v24(&v16[v23], 1, v2) == 1)
      {
        sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
LABEL_23:
        sub_26BFBBEA0(v60);
        v27 = 909455984;
        return v27 | 0x6C62755000000000;
      }

      goto LABEL_9;
    }

    sub_26BE2E1F0(v16, v12, &qword_28045EE48, &unk_26C022430);
    if (v24(&v16[v23], 1, v2) == 1)
    {
      (*(v3 + 8))(v12, v2);
LABEL_9:
      sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
      v17 = v56;
      v10 = v57;
      goto LABEL_10;
    }

    (*(v3 + 32))(v6, &v16[v23], v2);
    sub_26BFBC2DC(&qword_28045F0E0, MEMORY[0x277D6A988]);
    v31 = sub_26C00A43C();
    v32 = *(v3 + 8);
    v32(v6, v2);
    v32(v12, v2);
    sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
    v17 = v56;
    v10 = v57;
    if (v31)
    {
      goto LABEL_23;
    }
  }

LABEL_10:
  if (qword_28045E000 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v17, qword_28045FF78);
  v26 = v60;
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v25, v60))
  {
    sub_26BFBBEA0(v26);
    v27 = 876098416;
    return v27 | 0x6C62755000000000;
  }

  if (qword_28045E008 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v17, qword_28045FF90);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v28, v26))
  {
    sub_26BFBBEA0(v26);
    v27 = 825374064;
    return v27 | 0x6C62755000000000;
  }

  if (qword_28045E018 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v17, qword_28045FFC0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v29, v26))
  {
    goto LABEL_21;
  }

  if (qword_28045E020 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v17, qword_28045FFD8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v33, v26))
  {
    goto LABEL_21;
  }

  if (qword_28045E028 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v17, qword_28045FFF0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v34, v26))
  {
LABEL_21:
    sub_26BFBBEA0(v26);
    return 0x7469576173646365;
  }

  if (qword_28045E040 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v17, qword_280460038);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v35, v26))
  {
    goto LABEL_38;
  }

  if (qword_28045E048 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v17, qword_280460050);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v36, v26))
  {
    goto LABEL_38;
  }

  if (qword_28045E050 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v17, qword_280460068);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v37, v26))
  {
    goto LABEL_38;
  }

  if (qword_28045E058 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v17, qword_280460080);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v38, v26) || _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v28, v26))
  {
    goto LABEL_38;
  }

  if (qword_28045E068 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v17, qword_2804600B0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v39, v26))
  {
LABEL_38:
    sub_26BFBBEA0(v26);
    return 0xD000000000000017;
  }

  if (qword_28045E080 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v17, qword_2804600F8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v40, v26))
  {
    goto LABEL_57;
  }

  if (qword_28045E078 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v17, qword_2804600E0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v41, v26))
  {
LABEL_57:
    sub_26BFBBEA0(v26);
    return 828467315;
  }

  v42 = v17;
  v43 = v10;
  v44 = v58;
  if (qword_28045E090 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v42, qword_280460128);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v45, v26))
  {
    goto LABEL_64;
  }

  if (qword_28045E088 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v42, qword_280460110);
  v26 = v60;
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v46, v60))
  {
LABEL_64:
    sub_26BFBBEA0(v26);
    return 0x363532616873;
  }

  if (qword_28045E0A0 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v42, qword_280460158);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v47, v60))
  {
    goto LABEL_71;
  }

  if (qword_28045E098 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v42, qword_280460140);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v48, v60))
  {
LABEL_71:
    sub_26BFBBEA0(v60);
    return 0x343833616873;
  }

  if (qword_28045E0B0 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v42, qword_280460188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v49, v60))
  {
    sub_26BFBBEA0(v60);
    return 0x323135616873;
  }

  if (qword_28045E0A8 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v42, qword_280460170);
  v51 = v60;
  v52 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v50, v60);
  sub_26BFBBEA0(v51);
  if (v52)
  {
    return 0x323135616873;
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  sub_26C00AC1C();

  v61 = 0xD000000000000014;
  v62 = 0x800000026C02D5A0;
  sub_26C00947C();
  sub_26BFBC2DC(&qword_28045E920, MEMORY[0x277D6A958]);
  v53 = sub_26C00AEFC();
  MEMORY[0x26D699090](v53);

  MEMORY[0x26D699090](2108704, 0xE300000000000000);
  sub_26BE2E1F0(v44 + *(v42 + 20), v43, &qword_28045EE48, &unk_26C022430);
  v54 = sub_26C00A51C();
  MEMORY[0x26D699090](v54);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return v61;
}

uint64_t sub_26BFBB890(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-v7];
  v9 = sub_26C00947C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-v13];
  v15 = type metadata accessor for MLS.AlgorithmIdentifier();
  __swift_allocate_value_buffer(v15, a2);
  v16 = __swift_project_value_buffer(v15, a2);
  v17 = sub_26C00942C();
  a3(v17);
  sub_26C0094BC();
  v18 = sub_26C0094DC();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 0, 1, v18);
  v20 = *(v15 + 20);
  v19((v16 + v20), 1, 1, v18);
  (*(v10 + 32))(v16, v14, v9);
  return sub_26BFB7A64(v8, v16 + v20);
}

uint64_t sub_26BFBBAEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MLS.AlgorithmIdentifier();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_26BE13564(v6, a3);
}

BOOL _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
  v18 = *(v13 + 48);
  sub_26BE2E1F0(a1 + v17, v16, &qword_28045EE48, &unk_26C022430);
  sub_26BE2E1F0(a2 + v17, &v16[v18], &qword_28045EE48, &unk_26C022430);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BE2E1F0(v16, v12, &qword_28045EE48, &unk_26C022430);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_26BFBC2DC(&qword_28045F0E0, MEMORY[0x277D6A988]);
  v22 = sub_26C00A43C();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
  return (v22 & 1) != 0;
}

uint64_t sub_26BFBBEA0(uint64_t a1)
{
  v2 = type metadata accessor for MLS.AlgorithmIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFBBFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFBC0F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26BFBC200()
{
  sub_26C00947C();
  if (v0 <= 0x3F)
  {
    sub_26BFBC284();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFBC284()
{
  if (!qword_280460208)
  {
    sub_26C0094DC();
    v0 = sub_26C00AAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280460208);
    }
  }
}

uint64_t sub_26BFBC2DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFBC33C(uint64_t a1)
{
  v3 = sub_26C0094DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  sub_26BFBD0C0(&qword_28045F0C0, MEMORY[0x277D6A958]);
  v17 = a1;
  sub_26C00A3CC();
  v8 = *(v1 + *(_s14descr287CB9999C9AttributeVMa() + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v7, v14, v3);
      sub_26C00B0DC();
      sub_26C0094AC();
      (*(v11 - 8))(v7, v3);
      v25 = v20;
      v26 = v21;
      v27 = v22;
      v23 = v18;
      v24 = v19;
      v10 ^= sub_26C00B0BC();
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x26D699B20](v10);
}

uint64_t sub_26BFBC518()
{
  sub_26C00B05C();
  sub_26BFBC33C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBC55C()
{
  sub_26C00B05C();
  sub_26BFBC33C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBC59C()
{
  sub_26C00AC1C();

  sub_26C00947C();
  sub_26BFBD0C0(&qword_28045E920, MEMORY[0x277D6A958]);
  v1 = sub_26C00AEFC();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](0x7365756C6176202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + *(_s14descr287CB9999C9AttributeVMa() + 20));
  v3 = sub_26C0094DC();
  v4 = MEMORY[0x26D6991B0](v2, v3);
  MEMORY[0x26D699090](v4);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0x7475626972747441;
}

uint64_t sub_26BFBC6E0@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_26C00934C();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = sub_26C00947C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  result = sub_26C0096BC();
  if (!v1)
  {
    v13 = v18;
    sub_26C0094DC();
    sub_26C0092FC();
    v14 = sub_26C0097CC();
    (*(v13 + 8))(v6, v2);
    v15 = v17;
    (*(v8 + 32))(v17, v11, v7);
    result = _s14descr287CB9999C9AttributeVMa();
    *(v15 + *(result + 20)) = v14;
  }

  return result;
}

uint64_t sub_26BFBC93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v10[1] = *(a2 + *(_s14descr287CB9999C9AttributeVMa() + 20));

    sub_26C0092FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460238, &qword_26C0228B8);
    sub_26BFBD05C();
    sub_26C00970C();
    (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_26BFBCAA8(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t _s14descr287CB9999C9AttributeVMa()
{
  result = qword_280460250;
  if (!qword_280460250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFBCDD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  sub_26BFBD0C0(&qword_280460230, MEMORY[0x277D6A958]);
  if ((sub_26C00A43C() & 1) == 0)
  {
    return 0;
  }

  result = _s14descr287CB9999C9AttributeVMa();
  v10 = *(result + 20);
  v11 = *(a1 + v10);
  v12 = *(v11 + 16);
  v13 = *(a2 + v10);
  if (v12 != *(v13 + 16))
  {
    return 0;
  }

  if (!v12)
  {
    return 1;
  }

  v14 = 0;
  v21 = *(a1 + v10);
  v22 = (v5 + 8);
  v19 = v5 + 16;
  v20 = v12;
  while (2)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v16 = *(v5 + 72);
      (*(v5 + 16))(v8, v11 + v15 + v16 * v14++, v4);
      v17 = v13 + v15;
      v18 = *(v13 + 16) + 1;
      do
      {
        if (!--v18)
        {
          (*v22)(v8, v4);
          return 0;
        }

        sub_26BFBD0C0(&qword_28045F0E0, MEMORY[0x277D6A988]);
        v17 += v16;
      }

      while ((sub_26C00A43C() & 1) == 0);
      (*v22)(v8, v4);
      result = 1;
      v11 = v21;
      if (v14 != v20)
      {
        continue;
      }
    }

    break;
  }

  return result;
}

unint64_t sub_26BFBD05C()
{
  result = qword_280460240;
  if (!qword_280460240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460238, &qword_26C0228B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460240);
  }

  return result;
}

uint64_t sub_26BFBD0C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFBD11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26BFBD1EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26C00947C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26BFBD2A4()
{
  sub_26C00947C();
  if (v0 <= 0x3F)
  {
    sub_26BFBD328();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BFBD328()
{
  if (!qword_280460260)
  {
    sub_26C0094DC();
    v0 = sub_26C00A7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280460260);
    }
  }
}

uint64_t sub_26BFBD380(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = result;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v11 = *(result + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v10 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (v4)
  {
    return result;
  }

  v13 = result;
  result = sub_26BE11228(v8, a2);
  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a4);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v19 = *(a3 + 16);
  v18 = *(a3 + 24);
  v17 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_31:
      __break(1u);
      return result;
    }

    v17 = HIDWORD(a3) - a3;
  }

LABEL_24:
  v20 = sub_26BF30414(v17);
  result = sub_26BE11228(a3, a4);
  v21 = v20 + v17;
  if (__OFADD__(v20, v17))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = v15 + v21;
  if (__OFADD__(v15, v21))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_26BFBD4E0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_26C00B05C();
  v7 = *(a1 + 16);
  MEMORY[0x26D699B20](v7);
  if (v7)
  {
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_26BFBEE3C(v8, v6);
      sub_26BFDBB64(v12);
      sub_26BFBEEA0(v6);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFBD5F8(uint64_t a1)
{
  v3 = _s25RelativeDistinguishedNameVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  result = MEMORY[0x26D699B20](*(*v1 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26BFBEE3C(v11, v7);
      sub_26BFDBB64(a1);
      result = sub_26BFBEEA0(v7);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_26BFBD6F4()
{
  v1 = _s25RelativeDistinguishedNameVMa();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_26BFBEE3C(v8, v5);
      sub_26BFDBB64(v12);
      sub_26BFBEEA0(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFBD814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804602E8, &qword_26C022DA0);
  return sub_26C00A70C();
}

size_t sub_26BFBD90C(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE58834(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s25RelativeDistinguishedNameVMa() - 8);
    result = sub_26BFBEEFC(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFBD9D8(void *a1, unint64_t *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s25RelativeDistinguishedNameVMa() - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFBEE3C(v14 + v15 * v11, result);
    return sub_26BFBDB30;
  }

  __break(1u);
  return result;
}

void sub_26BFBDB30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    sub_26BFBEE3C(v2[2], v2[1]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26BE58834(v2[4]);
    }

    v6 = v2[3];
    if (v6 < v5[2])
    {
      v8 = v2[1];
      v7 = v2[2];
      v9 = *v2;
      sub_26BFBEEFC(v8, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v6);
      *v9 = v5;
      sub_26BFBEEA0(v7);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = *(*a1 + 32);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[4];
  if ((v11 & 1) == 0)
  {
LABEL_13:
    v5 = sub_26BE58834(v5);
  }

  v12 = v2[3];
  if (v12 >= v5[2])
  {
    __break(1u);
    return;
  }

  v8 = v2[1];
  v7 = v2[2];
  v13 = *v2;
  sub_26BFBEEFC(v7, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v12);
  *v13 = v5;
LABEL_9:
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_26BFBDC60(int64_t *a1, uint64_t a2)
{
  sub_26BFB5EAC(v2, *a2, *(a2 + 8), *a1, a1[1], a1[2]);
}

void (*sub_26BFBDCAC(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_26BFB3484(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

uint64_t sub_26BFBDD24@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26BFB6A58(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26BFBDD5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26BFBD814(*a1, a1[1], a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_26BFBDDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF48, &qword_26C022478);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  v13 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFBEEA0(a1);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v10 = a2;
    sub_26BFBF034(a1, v10 + *(result + 28));
    result = sub_26BFB40D4(v10);
    v11 = v13;
LABEL_5:
    *a3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFBDEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26BFBEF60(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_26BFBDF24(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(*v1 + 16);
  sub_26BFBF034(a1, &v12 - v8);
  sub_26BFBF098(v9, v7);
  sub_26BE56358(v10, v10, v7);
  return sub_26BFBF108(v9);
}

uint64_t sub_26BFBE000(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *a2;
  sub_26BFBF034(a1, &v13 - v9);
  sub_26BFBF098(v10, v8);
  sub_26BE56358(v11, v11, v8);
  return sub_26BFBF108(v10);
}

uint64_t sub_26BFBE0F0@<X0>(uint64_t a1@<X8>)
{
  v2 = _s25RelativeDistinguishedNameVMa();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFBE15C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s25RelativeDistinguishedNameVMa() - 8);
    sub_26BFBEE3C(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1);

    sub_26BE5ADE0(0, 1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26BFBE1F0(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB76E8(0, result, *(*v1 + 16), *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5ADE0(0, result);
}

unint64_t sub_26BFBE258(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5ADE0(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

int64_t sub_26BFBE2A8(uint64_t a1, uint64_t a2)
{
  result = sub_26BFB7090(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5ADE0(result, v5);
    }
  }

  return result;
}

void (*sub_26BFBE2F0(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(_s25RelativeDistinguishedNameVMa() - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFBEE3C(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFBE3EC;
  }

  __break(1u);
  return result;
}

void sub_26BFBE3EC(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFBEEA0(*a1);

  free(v1);
}

uint64_t sub_26BFBE428@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_26BFB76E8(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t sub_26BFBE464()
{
  v1 = sub_26BFB645C(*v0);

  return v1;
}

uint64_t sub_26BFBE4A4@<X0>(uint64_t *a1@<X8>)
{
  _s25RelativeDistinguishedNameVMa();
  sub_26BFBF23C(&qword_280460310);
  result = sub_26C00AEFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BFBE50C()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804602F0, &qword_26C022DA8);
  sub_26BFBF170();
  v1 = sub_26C00A3EC();

  return v1;
}

uint64_t sub_26BFBE5A8()
{
  v2 = *v0;
  sub_26BE85E88();
  sub_26C00AEFC();
  return sub_26C00A51C();
}

void sub_26BFBE600(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    if (v5 == v4)
    {
      break;
    }

    v6 = *(_s25RelativeDistinguishedNameVMa() - 8);
    v7 = v4 + 1;
    v8 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    sub_26BFBF23C(&qword_280460318);
    sub_26C0096FC();
    v4 = v7;
  }

  while (!v2);
}

uint64_t sub_26BFBE6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  _s25RelativeDistinguishedNameVMa();
  sub_26BFBF23C(&qword_280460320);
  v7 = sub_26C0097EC();
  if (v3)
  {
    v8 = sub_26C00934C();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_26C00950C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_26C00934C();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_26C00950C();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

unint64_t sub_26BFBE968()
{
  result = qword_280460268;
  if (!qword_280460268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460268);
  }

  return result;
}

unint64_t sub_26BFBEA08()
{
  result = qword_280460280;
  if (!qword_280460280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460280);
  }

  return result;
}

unint64_t sub_26BFBEAA4()
{
  result = qword_280460298;
  if (!qword_280460298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460298);
  }

  return result;
}

unint64_t sub_26BFBEB40()
{
  result = qword_2804602A8;
  if (!qword_2804602A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602A8);
  }

  return result;
}

uint64_t sub_26BFBEBDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460290, &qword_26C022A68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFBEC54()
{
  result = qword_2804602B8;
  if (!qword_2804602B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602B8);
  }

  return result;
}

unint64_t sub_26BFBECF0()
{
  result = qword_2804602C8;
  if (!qword_2804602C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602C8);
  }

  return result;
}

unint64_t sub_26BFBED90()
{
  result = qword_2804602D8;
  if (!qword_2804602D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602D8);
  }

  return result;
}

unint64_t sub_26BFBEDE8()
{
  result = qword_2804602E0;
  if (!qword_2804602E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602E0);
  }

  return result;
}

uint64_t sub_26BFBEE3C(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBEEA0(uint64_t a1)
{
  v2 = _s25RelativeDistinguishedNameVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFBEEFC(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBEF60(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s25RelativeDistinguishedNameVMa();
  return sub_26C00A7CC();
}

uint64_t sub_26BFBF034(uint64_t a1, uint64_t a2)
{
  v4 = _s25RelativeDistinguishedNameVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBF098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFBF108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6E8, &unk_26C022D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFBF170()
{
  result = qword_2804602F8;
  if (!qword_2804602F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804602F0, &qword_26C022DA8);
    sub_26BE13630(&qword_280460300, &qword_280460308, &unk_26C022DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804602F8);
  }

  return result;
}

uint64_t sub_26BFBF23C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25RelativeDistinguishedNameVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFBF280()
{
  result = qword_280460328;
  if (!qword_280460328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460328);
  }

  return result;
}

uint64_t static DER.Serializer.serialized<A>(element:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26C00978C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00977C();
  sub_26C00976C();
  if (!v3)
  {
    a3 = sub_26C00971C();
  }

  (*(v6 + 8))(v9, v5);
  return a3;
}

uint64_t sub_26BFBF41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.CertificationRequestInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s18SignatureAlgorithmVMa();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26BFBF53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.CertificationRequestInfo();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s18SignatureAlgorithmVMa();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s25CertificateSigningRequestVMa()
{
  result = qword_280460330;
  if (!qword_280460330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BFBF690()
{
  type metadata accessor for MLS.CertificationRequestInfo();
  if (v0 <= 0x3F)
  {
    _s18SignatureAlgorithmVMa();
    if (v1 <= 0x3F)
    {
      sub_26BFBF73C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BFBF73C()
{
  if (!qword_280460340)
  {
    v0 = sub_26C00AB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280460340);
    }
  }
}

uint64_t sub_26BFBF78C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v70 - v10;
  v12 = _s25RelativeDistinguishedNameVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D699B20](*v1);
  v17 = v1[1];
  MEMORY[0x26D699B20](*(v17 + 16));
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20 = *(v13 + 72);
    do
    {
      sub_26BFC16EC(v19, v16, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(a1);
      sub_26BFC1754(v16, _s25RelativeDistinguishedNameVMa);
      v19 += v20;
      --v18;
    }

    while (v18);
  }

  v21 = type metadata accessor for MLS.CertificationRequestInfo();
  v22 = v1 + *(v21 + 24);
  sub_26BFCE15C(a1);
  sub_26BFD1C44(a1, *(v2 + *(v21 + 28)));
  v23 = _s25CertificateSigningRequestVMa();
  v24 = v2 + v23[5];
  sub_26C00947C();
  sub_26BFC17B4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v25 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(&v24[*(v25 + 20)], v11);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v26 = v71;
    (*(v5 + 32))(v71, v11, v4);
    sub_26C00B07C();
    sub_26BFC17B4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v26, v4);
  }

  v27 = v2 + v23[6];
  v28 = *(v27 + 1);
  if (v27[64])
  {
    v29 = *v27;
    MEMORY[0x26D699B20](1);
    sub_26C00911C();
  }

  else
  {
    v30 = *(v27 + 5);
    v31 = *(v27 + 6);
    v32 = *(v27 + 7);
    v34 = *(v27 + 2);
    v33 = *(v27 + 3);
    MEMORY[0x26D699B20](0);
    v35 = v33 >> 1;
    result = v35 - v34;
    if (__OFSUB__(v35, v34))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    result = MEMORY[0x26D699B20](result);
    v37 = __OFSUB__(v35, v34);
    v38 = v35 - v34;
    if (v38)
    {
      if ((v38 < 0) ^ v37 | (v38 == 0))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v39 = (v28 + v34);
      do
      {
        v40 = *v39++;
        sub_26C00B07C();
        --v38;
      }

      while (v38);
    }

    v41 = v32 >> 1;
    result = (v32 >> 1) - v31;
    if (__OFSUB__(v32 >> 1, v31))
    {
      goto LABEL_39;
    }

    result = MEMORY[0x26D699B20](result);
    v42 = __OFSUB__(v41, v31);
    v43 = v41 - v31;
    if (v43)
    {
      if ((v43 < 0) ^ v42 | (v43 == 0))
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v44 = (v30 + v31);
      do
      {
        v45 = *v44++;
        sub_26C00B07C();
        --v43;
      }

      while (v43);
    }
  }

  v46 = (v2 + v23[7]);
  v47 = v46[2];
  v48 = v46[3] >> 1;
  result = v48 - v47;
  if (__OFSUB__(v48, v47))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = v46[1];
  result = MEMORY[0x26D699B20](result);
  v50 = __OFSUB__(v48, v47);
  v51 = v48 - v47;
  if (v51)
  {
    if ((v51 < 0) ^ v50 | (v51 == 0))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v52 = (v49 + v47);
    do
    {
      v53 = *v52++;
      sub_26C00B07C();
      --v51;
    }

    while (v51);
  }

  v54 = (v2 + v23[8]);
  v55 = v54[2];
  v56 = v54[3] >> 1;
  result = v56 - v55;
  if (__OFSUB__(v56, v55))
  {
    goto LABEL_36;
  }

  v57 = v54[1];
  result = MEMORY[0x26D699B20](result);
  v58 = __OFSUB__(v56, v55);
  v59 = v56 - v55;
  if (v59)
  {
    if ((v59 < 0) ^ v58 | (v59 == 0))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v60 = (v57 + v55);
    do
    {
      v61 = *v60++;
      sub_26C00B07C();
      --v59;
    }

    while (v59);
  }

  v62 = (v2 + v23[9]);
  v63 = v62[2];
  v64 = v62[3] >> 1;
  result = v64 - v63;
  if (__OFSUB__(v64, v63))
  {
    goto LABEL_37;
  }

  v65 = v62[1];
  result = MEMORY[0x26D699B20](result);
  v66 = __OFSUB__(v64, v63);
  v67 = v64 - v63;
  if (!v67)
  {
    return result;
  }

  if ((v67 < 0) ^ v66 | (v67 == 0))
  {
    goto LABEL_42;
  }

  v68 = (v65 + v63);
  do
  {
    v69 = *v68++;
    result = sub_26C00B07C();
    --v67;
  }

  while (v67);
  return result;
}

uint64_t sub_26BFBFCC8()
{
  sub_26C00B05C();
  sub_26BFBF78C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBFD0C()
{
  sub_26C00B05C();
  sub_26BFBF78C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFBFD4C()
{
  v1 = v0;
  v2 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9PublicKeyVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_26C00AC1C();
  result = MEMORY[0x26D699090](0xD000000000000023, 0x800000026C02D650);
  v11 = *v0;
  if (*v0)
  {
    v31 = 1985106755;
    v32 = 0xE400000000000000;
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      return result;
    }

    v30[1] = v13;
    v14 = sub_26C00AEFC();
    MEMORY[0x26D699090](v14);

    v15 = v31;
    v16 = v32;
  }

  else
  {
    v16 = 0xE500000000000000;
    v15 = 0x3176525343;
  }

  MEMORY[0x26D699090](v15, v16);

  MEMORY[0x26D699090](0x63656A627573202CLL, 0xEB00000000203A74);
  v31 = v0[1];
  sub_26BE85E88();
  v17 = sub_26C00AEFC();
  MEMORY[0x26D699090](v17);

  MEMORY[0x26D699090](0x63696C627570202CLL, 0xED0000203A79654BLL);
  v18 = type metadata accessor for MLS.CertificationRequestInfo();
  sub_26BFC16EC(v0 + *(v18 + 24), v9, _s9PublicKeyVMa);
  sub_26BFC16EC(v9, v5, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = 0x6275502E36353250;
  v21 = 0x6275502E31323550;
  v22 = 0x800000026C02C3C0;
  if (EnumCaseMultiPayload == 2)
  {
    v22 = 0xEE0079654B63696CLL;
  }

  else
  {
    v21 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload)
  {
    v20 = 0x6275502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v24 = 0xEE0079654B63696CLL;
  }

  else
  {
    v24 = v22;
  }

  sub_26BFC1754(v5, _s9PublicKeyV16BackingPublicKeyOMa);
  MEMORY[0x26D699090](v23, v24);

  sub_26BFC1754(v9, _s9PublicKeyVMa);
  MEMORY[0x26D699090](0x626972747461202CLL, 0xEE00203A73657475);
  v25 = sub_26BFD219C(*(v0 + *(v18 + 28)));
  MEMORY[0x26D699090](v25);

  MEMORY[0x26D699090](0xD000000000000016, 0x800000026C02C380);
  v26 = _s25CertificateSigningRequestVMa();
  v27 = v0 + *(v26 + 20);
  v28 = sub_26BFD12E4();
  MEMORY[0x26D699090](v28);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  if (*(v1 + *(v26 + 24) + 64))
  {
    v29 = 0x4153444445;
  }

  else
  {
    v29 = 0x4153444345;
  }

  MEMORY[0x26D699090](v29, 0xE500000000000000);

  return v33;
}

__n128 sub_26BFC0150@<Q0>(uint64_t a1@<X8>)
{
  v116 = a1;
  v1 = _s18SignatureAlgorithmVMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v111 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C00959C();
  v115 = *(v4 - 8);
  v5 = v115[8];
  v6 = MEMORY[0x28223BE20](v4);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v112 = &v98 - v9;
  MEMORY[0x28223BE20](v8);
  v118 = &v98 - v10;
  v120 = type metadata accessor for MLS.AlgorithmIdentifier();
  v11 = *(*(v120 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v109 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v114 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  v121 = &v98 - v16;
  v123 = type metadata accessor for MLS.CertificationRequestInfo();
  v17 = *(*(v123 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v123);
  v113 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v125 = &v98 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v127 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v98 - v28;
  v30 = sub_26C00950C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v117 = (&v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v119 = (&v98 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v122 = &v98 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v126 = &v98 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v130 = &v98 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v98 - v43;
  sub_26C0093EC();
  v45 = *(v31 + 48);
  if (v45(v29, 1, v30) == 1)
  {
    goto LABEL_2;
  }

  v108 = v4;
  v46 = v29;
  v47 = *(v31 + 32);
  v47(v44, v46, v30);
  sub_26C0093EC();
  if (v45(v27, 1, v30) == 1)
  {
    (*(v31 + 8))(v44, v30);
    goto LABEL_5;
  }

  v107 = v31;
  v49 = v130;
  v50 = v27;
  v51 = v47;
  v47(v130, v50, v30);
  v29 = v127;
  sub_26C0093EC();
  if (v45(v29, 1, v30) == 1)
  {
    v52 = *(v107 + 8);
    v52(v49, v30);
    v52(v44, v30);
LABEL_2:
    v27 = v29;
LABEL_5:
    sub_26BFC1684(v27);
    sub_26C00955C();
    sub_26BFC17B4(&qword_28045ED80, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_26C00953C();
    swift_willThrow();
    return result;
  }

  v53 = v126;
  v51(v126, v29, v30);
  v54 = v107;
  v55 = v30;
  v56 = *(v107 + 16);
  v57 = v44;
  v56(v122, v44, v55);
  sub_26BFC17B4(&qword_280460360, type metadata accessor for MLS.CertificationRequestInfo);
  v58 = v124;
  v59 = v125;
  sub_26C0096EC();
  if (v58)
  {
    v60 = *(v54 + 8);
    v60(v53, v55);
    v60(v130, v55);
    v60(v57, v55);
  }

  else
  {
    v56(v119, v130, v55);
    sub_26BFC17B4(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26C0096EC();
    v56(v117, v126, v55);
    v61 = v118;
    v62 = v108;
    sub_26C0096EC();
    v127 = v55;
    v119 = type metadata accessor for MLS.CertificationRequestInfo;
    v63 = v113;
    sub_26BFC16EC(v59, v113, type metadata accessor for MLS.CertificationRequestInfo);
    v64 = v57;
    v117 = type metadata accessor for MLS.AlgorithmIdentifier;
    v65 = v114;
    sub_26BFC16EC(v121, v114, type metadata accessor for MLS.AlgorithmIdentifier);
    v66 = v115[2];
    v67 = v112;
    v66(v112, v61);
    v124 = v64;
    v120 = sub_26C0094FC();
    v106 = v68;
    v105 = v69;
    v104 = v70;
    v123 = sub_26C0094FC();
    v103 = v71;
    v102 = v72;
    v101 = v73;
    v122 = sub_26C0094FC();
    v100 = v74;
    v99 = v75;
    v98 = v76;
    v77 = v116;
    sub_26BFC16EC(v63, v116, v119);
    v78 = v109;
    sub_26BFC16EC(v65, v109, v117);
    v79 = _s25CertificateSigningRequestVMa();
    v80 = v79[5];
    sub_26BFD001C(v78, v77 + v80);
    v81 = v111;
    sub_26BFC16EC(v77 + v80, v111, _s18SignatureAlgorithmVMa);
    v82 = v110;
    (v66)(v110, v67, v62);
    sub_26BFE6910(v81, v82, v128);
    v83 = v115[1];
    v83(v67, v62);
    sub_26BFC1754(v114, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BFC1754(v113, type metadata accessor for MLS.CertificationRequestInfo);
    v83(v118, v62);
    sub_26BFC1754(v121, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26BFC1754(v125, type metadata accessor for MLS.CertificationRequestInfo);
    v84 = *(v107 + 8);
    v85 = v127;
    v84(v126, v127);
    v84(v130, v85);
    v84(v124, v85);
    v86 = v116;
    v87 = v116 + v79[6];
    v88 = v128[3];
    *(v87 + 32) = v128[2];
    *(v87 + 48) = v88;
    *(v87 + 64) = v129;
    result = v128[1];
    *v87 = v128[0];
    *(v87 + 16) = result;
    v89 = (v86 + v79[7]);
    v90 = v106;
    *v89 = v120;
    v89[1] = v90;
    v91 = v104;
    v89[2] = v105;
    v89[3] = v91;
    v92 = (v86 + v79[8]);
    v93 = v103;
    *v92 = v123;
    v92[1] = v93;
    v94 = v101;
    v92[2] = v102;
    v92[3] = v94;
    v95 = (v86 + v79[9]);
    v96 = v100;
    *v95 = v122;
    v95[1] = v96;
    v97 = v98;
    v95[2] = v99;
    v95[3] = v97;
  }

  return result;
}

uint64_t sub_26BFC0DE0(uint64_t a1, uint64_t a2)
{
  v3 = _s25CertificateSigningRequestVMa();
  v4 = (a2 + v3[7]);
  v8 = *v4;
  v11 = v4[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFC1620();
  sub_26C00972C();
  v5 = (a2 + v3[8]);
  v9 = *v5;
  v12 = v5[1];
  sub_26C00972C();
  v6 = (a2 + v3[9]);
  v10 = *v6;
  v13 = v6[1];
  return sub_26C00972C();
}

uint64_t sub_26BFC0EB0(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFC1194(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_26BFB126C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MLS.CertificationRequestInfo();
  if ((sub_26BFCF4B8(a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_26BFD1C40(*(a1 + *(v4 + 28)), *(a2 + *(v4 + 28))) & 1) == 0)
  {
    return 0;
  }

  v5 = _s25CertificateSigningRequestVMa();
  if (!static MLS.AlgorithmIdentifier.== infix(_:_:)(a1 + v5[5], a2 + v5[5]))
  {
    return 0;
  }

  v6 = a1 + v5[6];
  v7 = *(v6 + 1);
  v8 = *(v6 + 3);
  v76 = *(v6 + 2);
  v77 = v8;
  v78 = v6[64];
  v9 = *(v6 + 1);
  v75[0] = *v6;
  v75[1] = v9;
  v10 = a2 + v5[6];
  v11 = *(v10 + 1);
  v12 = *(v10 + 3);
  v80 = *(v10 + 2);
  v81 = v12;
  v13 = *(v10 + 1);
  v79[0] = *v10;
  v79[1] = v13;
  v14 = *(v6 + 3);
  v72 = v76;
  v73 = v14;
  v70 = v75[0];
  v71 = v7;
  v15 = *(v10 + 3);
  v67 = v80;
  v68 = v15;
  v82 = v10[64];
  v74 = v6[64];
  v69 = v10[64];
  v65 = v79[0];
  v66 = v11;
  sub_26BEC9F28(v75, v64);
  sub_26BEC9F28(v79, v64);
  v16 = sub_26BFE73B0(&v70, &v65);
  v83[2] = v67;
  v83[3] = v68;
  v84 = v69;
  v83[0] = v65;
  v83[1] = v66;
  sub_26BFC15B0(v83);
  v85[2] = v72;
  v85[3] = v73;
  v86 = v74;
  v85[0] = v70;
  v85[1] = v71;
  result = sub_26BFC15B0(v85);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v18 = v5[7];
  v19 = a1 + v18;
  v20 = *(a1 + v18 + 16);
  v21 = *(a1 + v18 + 24) >> 1;
  v22 = v21 - v20;
  if (__OFSUB__(v21, v20))
  {
    __break(1u);
    goto LABEL_71;
  }

  v23 = a2 + v18;
  v24 = *(a2 + v18 + 16);
  v25 = *(a2 + v18 + 24) >> 1;
  v26 = v25 - v24;
  if (__OFSUB__(v25, v24))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v22 != v26)
  {
    return 0;
  }

  if (v22)
  {
    v27 = *(v19 + 1) + v20;
    v28 = *(v23 + 1) + v24;
    if (v27 != v28 && v20 != v21)
    {
      if (v20 >= v21)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v24 != v25)
      {
        v29 = 0;
        if (v24 <= v25)
        {
          v30 = v25;
        }

        else
        {
          v30 = v24;
        }

        v31 = v30 - v24;
        while (v31 != v29)
        {
          if (*(v27 + v29) != *(v28 + v29))
          {
            return 0;
          }

          if (~v20 + v21 == v29)
          {
            goto LABEL_26;
          }

          v32 = v20 + v29 + 1;
          if (v32 < v20 || v32 >= v21)
          {
            goto LABEL_73;
          }

          if (v26 == ++v29)
          {
            return 0;
          }
        }

        goto LABEL_72;
      }

      return 0;
    }
  }

LABEL_26:
  v33 = v5[8];
  v34 = a1 + v33;
  v35 = *(a1 + v33 + 16);
  v36 = *(a1 + v33 + 24) >> 1;
  if (__OFSUB__(v36, v35))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v37 = a2 + v33;
  v38 = *(a2 + v33 + 16);
  v39 = *(a2 + v33 + 24) >> 1;
  v40 = v39 - v38;
  if (__OFSUB__(v39, v38))
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v36 - v35 != v40)
  {
    return 0;
  }

  v41 = *(v34 + 1) + v35;
  v42 = *(v37 + 1) + v38;
  if (v36 == v35 || v41 == v42 || v35 == v36)
  {
LABEL_37:
    v45 = v5[9];
    v46 = a1 + v45;
    v47 = *(a1 + v45 + 16);
    v48 = *(a1 + v45 + 24) >> 1;
    v49 = v48 - v47;
    if (__OFSUB__(v48, v47))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v50 = a2 + v45;
    v51 = *(a2 + v45 + 16);
    v52 = *(a2 + v45 + 24) >> 1;
    v53 = v52 - v51;
    if (__OFSUB__(v52, v51))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v49 == v53)
    {
      if (!v49)
      {
        return 1;
      }

      v54 = *(v46 + 1) + v47;
      v55 = *(v50 + 1) + v51;
      if (v54 == v55 || v47 == v48)
      {
        return 1;
      }

      if (v47 >= v48)
      {
        goto LABEL_84;
      }

      if (v51 != v52)
      {
        v60 = 0;
        if (v51 <= v52)
        {
          v61 = v52;
        }

        else
        {
          v61 = v51;
        }

        v62 = v61 - v51;
        while (v62 != v60)
        {
          if (*(v54 + v60) != *(v55 + v60))
          {
            return 0;
          }

          if (~v47 + v48 == v60)
          {
            return 1;
          }

          v63 = v47 + v60 + 1;
          if (v63 < v47 || v63 >= v48)
          {
            goto LABEL_82;
          }

          if (v53 == ++v60)
          {
            return 0;
          }
        }

        goto LABEL_81;
      }
    }

    return 0;
  }

  if (v35 < v36)
  {
    if (v38 != v39)
    {
      v56 = 0;
      if (v38 <= v39)
      {
        v57 = v39;
      }

      else
      {
        v57 = v38;
      }

      v58 = v57 - v38;
      while (v58 != v56)
      {
        if (*(v41 + v56) != *(v42 + v56))
        {
          return 0;
        }

        if (~v35 + v36 == v56)
        {
          goto LABEL_37;
        }

        v59 = v35 + v56 + 1;
        if (v59 < v35 || v59 >= v36)
        {
          goto LABEL_77;
        }

        if (v40 == ++v56)
        {
          return 0;
        }
      }

      goto LABEL_76;
    }

    return 0;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

unint64_t sub_26BFC1620()
{
  result = qword_280460358;
  if (!qword_280460358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460358);
  }

  return result;
}

uint64_t sub_26BFC1684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460210, &qword_26C022788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFC16EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFC1754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFC17B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MLS.Client.Client.ResyncInput.init(groupInfo:ratchetTree:keyPackage:useReflection:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = a4[1];
  *(a6 + 49) = 0;
  *a6 = *a1;
  result = sub_26BE136AC(0, 0xF000000000000000);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  *(a6 + 48) = a5;
  return result;
}

uint64_t MLS.Client.Client.resync(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_26BFC1898, 0, 0);
}

uint64_t sub_26BFC1898()
{
  v1 = v0[17];

  sub_26BF270AC((v0 + 2), (v0 + 9));
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_26BFC195C;
  v3 = v0[16];
  v4 = v0[17];

  return sub_26BEA202C(v3, v4, v4, (v0 + 2));
}

uint64_t sub_26BFC195C()
{
  v1 = *(*v0 + 144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MLS.Client.Client.ResyncInput.groupInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Client.Client.ResyncInput.groupInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLS.Client.Client.ResyncInput.ratchetTree.getter()
{
  v1 = *(v0 + 16);
  sub_26BE2E408(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.Client.Client.ResyncInput.ratchetTree.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE136AC(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.Client.Client.ResyncInput.keyPackage.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Client.Client.ResyncInput.keyPackage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MLS.Client.Client.ResyncInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD000000000000017, 0x800000026C02D6E0);
  v7 = sub_26BE83594(v1, v2);
  MEMORY[0x26D699090](v7);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0x666E4970756F7247, 0xEA0000000000286FLL);

  MEMORY[0x26D699090](0x656863746172202CLL, 0xEF203A6565725474);
  if (v4 >> 60 == 15)
  {
    v8 = 0xE300000000000000;
    v9 = 7104878;
  }

  else
  {
    v9 = sub_26C00901C();
    v8 = v10;
  }

  MEMORY[0x26D699090](v9, v8);

  MEMORY[0x26D699090](0x63615079656B202CLL, 0xEE00203A6567616BLL);
  v11 = sub_26BE83594(v5, v6);
  MEMORY[0x26D699090](v11);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  MEMORY[0x26D699090](0x616B63615079654BLL, 0xEB00000000286567);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.Client.Client.ResyncOutput.externalCommit.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_26BE00608(v2, v3);
}

uint64_t MLS.Client.Client.ResyncOutput.externalCommit.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_26BE00258(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t MLS.Client.Client.ResyncOutput.group.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BFC1EC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26BFC1F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26BFC1F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BFC1FC4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26BFC2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[248] = a3;
  v3[247] = a2;
  v3[246] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580) - 8) + 64) + 15;
  v3[249] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3[250] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[251] = swift_task_alloc();
  v3[252] = swift_task_alloc();
  v7 = type metadata accessor for MLS.GroupState();
  v3[253] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[254] = swift_task_alloc();
  v3[255] = swift_task_alloc();
  v3[256] = swift_task_alloc();
  v9 = type metadata accessor for MLS.MLSMessage(0);
  v3[257] = v9;
  v10 = *(v9 - 8);
  v3[258] = v10;
  v11 = *(v10 + 64) + 15;
  v3[259] = swift_task_alloc();
  v12 = *(*(type metadata accessor for MLS.GroupInfo() - 8) + 64) + 15;
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v3[262] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BFC21E8, 0, 0);
}

uint64_t sub_26BFC21E8()
{
  v232 = v0;
  v1 = *(v0 + 1976);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 == 2)
  {
    *(v0 + 1592) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 1600) = sub_26BE295D8();
    *(v0 + 1568) = 0;
    v4 = sub_26C00929C();
    __swift_destroy_boxed_opaque_existential_1((v0 + 1568));
    if ((v4 & 1) == 0)
    {
LABEL_3:
      sub_26BE01654();
      swift_allocError();
      *v5 = 0xD000000000000030;
      *(v5 + 8) = 0x800000026C02D700;
      *(v5 + 112) = 2;
      swift_willThrow();
LABEL_12:
      v50 = *(v0 + 2096);
      v51 = *(v0 + 2088);
      v52 = *(v0 + 2080);
      v53 = *(v0 + 2072);
      v54 = *(v0 + 2048);
      v55 = *(v0 + 2040);
      v56 = *(v0 + 2032);
      v57 = *(v0 + 2016);
      v58 = *(v0 + 2008);
      v59 = *(v0 + 1992);

      v60 = *(v0 + 8);

      return v60();
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1984);
  v7 = *(v0 + 1976);
  v8 = sub_26C009A5C();
  __swift_project_value_buffer(v8, qword_280478E70);

  sub_26BF270AC(v6, v0 + 1416);
  v9 = sub_26C009A3C();
  v10 = sub_26C00AA1C();

  sub_26BEAFA4C(v6);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1984);
    v12 = *(v0 + 1976);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v231[0] = v14;
    *v13 = 136315394;
    v15 = sub_26BE16A38();
    v17 = sub_26BE29740(v15, v16, v231);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v219 = *v11;
    v220 = *(v11 + 16);
    v221 = *(v11 + 32);
    LOWORD(v222) = *(v11 + 48);
    sub_26BF270AC(v11, v0 + 1352);
    v18 = MLS.Client.Client.ResyncInput.description.getter();
    v20 = v19;
    v21 = v220;
    *(v0 + 1472) = v219;
    *(v0 + 1488) = v21;
    *(v0 + 1504) = v221;
    *(v0 + 1520) = v222;
    sub_26BEAFA4C(v0 + 1472);
    v22 = sub_26BE29740(v18, v20, v231);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_26BDFE000, v9, v10, "%s: performing resync with input: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v14, -1, -1);
    MEMORY[0x26D69A4E0](v13, -1, -1);
  }

  v23 = *(v0 + 1976);
  sub_26BE16490(&v219);
  v24 = *(v0 + 1984);
  v25 = v219;
  *(v0 + 2104) = v219;
  *(v0 + 1952) = *(v24 + 32);
  *(v0 + 1888) = *(v24 + 32);
  sub_26BFC50FC(v0 + 1952, v0 + 1856);
  MLS.Client.KeyPackage.asKeyPackage()(v0 + 384);
  v214 = (v0 + 1936);
  v26 = *(v0 + 1976);
  sub_26BE00258(*(v0 + 1888), *(v0 + 1896));
  v27 = *(v0 + 528);
  *(v0 + 144) = *(v0 + 512);
  *(v0 + 160) = v27;
  *(v0 + 176) = *(v0 + 544);
  *(v0 + 192) = *(v0 + 560);
  v28 = *(v0 + 464);
  *(v0 + 80) = *(v0 + 448);
  *(v0 + 96) = v28;
  v29 = *(v0 + 496);
  *(v0 + 112) = *(v0 + 480);
  *(v0 + 128) = v29;
  v30 = *(v0 + 400);
  *(v0 + 16) = *(v0 + 384);
  *(v0 + 32) = v30;
  v31 = *(v0 + 432);
  *(v0 + 48) = *(v0 + 416);
  *(v0 + 64) = v31;

  sub_26BE2DFC0(v0 + 16, v0 + 568);
  v32 = sub_26C009A3C();
  v33 = sub_26C00A9FC();

  sub_26BE2E01C(v0 + 16);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 1976);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v231[0] = v36;
    *v35 = 136315394;
    v37 = sub_26BE16A38();
    v39 = sub_26BE29740(v37, v38, v231);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v40 = *(v0 + 160);
    v227 = *(v0 + 144);
    v228 = v40;
    v229 = *(v0 + 176);
    v230 = *(v0 + 192);
    v41 = *(v0 + 96);
    v223 = *(v0 + 80);
    v224 = v41;
    v42 = *(v0 + 128);
    v225 = *(v0 + 112);
    v226 = v42;
    v43 = *(v0 + 32);
    v219 = *(v0 + 16);
    v220 = v43;
    v44 = *(v0 + 64);
    v221 = *(v0 + 48);
    v222 = v44;
    v45 = MLS.KeyPackage.description.getter();
    v47 = sub_26BE29740(v45, v46, v231);

    *(v35 + 14) = v47;
    _os_log_impl(&dword_26BDFE000, v32, v33, "%s: parsed key package: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v36, -1, -1);
    MEMORY[0x26D69A4E0](v35, -1, -1);
  }

  v48 = *(v0 + 2096);
  v49 = *(v0 + 1984);
  *v214 = *v49;
  v219 = *v49;
  sub_26BFC5158(v214, v0 + 1872);
  MLS.Group.GroupInfo.asGroupInfo()(v48);
  v62 = *(v0 + 2096);
  v63 = *(v0 + 2088);
  v64 = *(v0 + 1976);
  sub_26BE00258(v219, *(&v219 + 1));
  v66 = *(v62 + 8);
  v65 = *(v62 + 16);
  sub_26BFC5258(v62, v63, type metadata accessor for MLS.GroupInfo);

  sub_26BE00608(v66, v65);
  v67 = sub_26C009A3C();
  v68 = sub_26C00A9FC();
  v69 = v65;

  sub_26BE00258(v66, v65);
  v70 = os_log_type_enabled(v67, v68);
  v71 = *(v0 + 2088);
  v215 = v66;
  if (v70)
  {
    v211 = v68;
    v72 = *(v0 + 1976);
    v73 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    *&v219 = v207;
    *v73 = 136315650;
    v74 = sub_26BE16A38();
    v76 = sub_26BE29740(v74, v75, &v219);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v77 = MLS.GroupInfo.description.getter();
    v79 = v78;
    sub_26BFC51F8(v71, type metadata accessor for MLS.GroupInfo);
    v80 = sub_26BE29740(v77, v79, &v219);

    *(v73 + 14) = v80;
    *(v73 + 22) = 2080;
    v81 = sub_26C00901C();
    v83 = sub_26BE29740(v81, v82, &v219);

    *(v73 + 24) = v83;
    _os_log_impl(&dword_26BDFE000, v67, v211, "%s: parsed group info: %s, group ID: %s", v73, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v207, -1, -1);
    MEMORY[0x26D69A4E0](v73, -1, -1);
  }

  else
  {

    sub_26BFC51F8(v71, type metadata accessor for MLS.GroupInfo);
  }

  v84 = *(v0 + 2096);
  v85 = *(v0 + 1976);
  swift_beginAccess();
  *(v0 + 2280) = *(v85 + 48);
  v86 = sub_26BE81FE0(*(v84 + 64));
  if ((v86 & 0x100000000) != 0)
  {
    v96 = 0;
    v97 = 0xC000000000000000;
    goto LABEL_23;
  }

  v208 = v69;
  v212 = v86;
  v87 = *(v0 + 1976);

  v88 = sub_26C009A3C();
  v89 = sub_26C00AA1C();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = *(v0 + 1976);
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v219 = v92;
    *v91 = 136315394;
    v93 = sub_26BE16A38();
    v95 = sub_26BE29740(v93, v94, &v219);

    *(v91 + 4) = v95;
    *(v91 + 12) = 1024;
    *(v91 + 14) = v212;
    _os_log_impl(&dword_26BDFE000, v88, v89, "%s: including era %u in external commit", v91, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x26D69A4E0](v92, -1, -1);
    MEMORY[0x26D69A4E0](v91, -1, -1);
  }

  *(v0 + 1640) = 0;
  *(v0 + 1608) = 0u;
  *(v0 + 1624) = 0u;
  *(v0 + 1312) = 0u;
  *(v0 + 1328) = 0u;
  *(v0 + 1344) = 0;
  *(v0 + 1280) = 1;
  *(v0 + 1288) = 0;
  *(v0 + 1296) = 0xC000000000000000;
  *(v0 + 1304) = v212;
  sub_26BE7170C(v0 + 1608, v0 + 1312, &qword_28045E2A8, &qword_26C028DD0);
  v219 = xmmword_26C00BBD0;
  *&v220 = 0;
  sub_26BFF933C((v0 + 1280));
  v69 = v208;
  v102 = v219;
  v103 = *(&v219 + 1) >> 62;
  if ((*(&v219 + 1) >> 62) <= 1)
  {
    if (!v103)
    {
      goto LABEL_41;
    }

    v126 = v219 >> 32;
LABEL_39:
    if (v126 < 0)
    {
      __break(1u);
    }

    goto LABEL_41;
  }

  if (v103 == 2)
  {
    v126 = *(v219 + 24);
    goto LABEL_39;
  }

LABEL_41:
  v96 = sub_26C00909C();
  v97 = v137;
  sub_26BE00258(v102, *(&v102 + 1));
  sub_26BE6FDD8(v0 + 1280);
  sub_26BE00258(0, 0xC000000000000000);
LABEL_23:
  *(v0 + 2128) = v97;
  *(v0 + 2120) = v96;
  v98 = *(v0 + 1984);
  v99 = *(v98 + 24);
  if (v99 >> 60 == 15)
  {
    v100 = 0;
  }

  else
  {
    v101 = *(v98 + 16);
    sub_26BE00608(v101, *(v98 + 24));
    MLS.RatchetTree.init(rawValue:)(v101, v99, &v219);
    v100 = v219;
  }

  v104 = *(v0 + 2096);
  v219 = v25;
  v231[0] = v100;

  static MLS.Identity.findPriorAppearance(groupInfo:credential:ratchetTree:)(v104, &v219, v231, &v217);
  v105 = *(v0 + 1984);

  v213 = v96;
  if ((*(v105 + 49) & 1) == 0 && v218)
  {
    v106 = *(v0 + 2096);
    v107 = *(v0 + 2080);
    v108 = *(v0 + 1976);

    sub_26BFC5258(v106, v107, type metadata accessor for MLS.GroupInfo);

    sub_26BE04890(v25, *(&v25 + 1));
    v109 = sub_26C009A3C();
    v110 = v25;
    v111 = sub_26C00AA0C();

    sub_26BE0489C(v25, *(&v25 + 1));
    v112 = os_log_type_enabled(v109, v111);
    v113 = *(v0 + 2080);
    if (v112)
    {
      v114 = *(v0 + 1976);
      v115 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v231[0] = v216;
      *v115 = 136315650;
      v116 = sub_26BE16A38();
      v118 = sub_26BE29740(v116, v117, v231);

      *(v115 + 4) = v118;
      *(v115 + 12) = 2080;
      v219 = v25;
      v119 = MLS.Identity.Credential.description.getter();
      v121 = sub_26BE29740(v119, v120, v231);

      *(v115 + 14) = v121;
      *(v115 + 22) = 2080;
      v122 = MLS.GroupInfo.description.getter();
      v124 = v123;
      sub_26BFC51F8(v113, type metadata accessor for MLS.GroupInfo);
      v125 = sub_26BE29740(v122, v124, v231);
      v110 = v25;

      *(v115 + 24) = v125;
      _os_log_impl(&dword_26BDFE000, v109, v25, "%s: no prior appearance found for credential %s in group %s", v115, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v216, -1, -1);
      MEMORY[0x26D69A4E0](v115, -1, -1);
    }

    else
    {

      sub_26BFC51F8(v113, type metadata accessor for MLS.GroupInfo);
    }

    v138 = *(v0 + 2096);
    sub_26BE01654();
    swift_allocError();
    *v139 = 37;
    *(v139 + 8) = 0u;
    *(v139 + 24) = 0u;
    *(v139 + 40) = 0u;
    *(v139 + 56) = 0u;
    *(v139 + 72) = 0u;
    *(v139 + 88) = 0u;
    *(v139 + 104) = 0;
    *(v139 + 112) = 23;
    swift_willThrow();
    sub_26BE2E01C(v0 + 16);
    sub_26BE0489C(v110, *(&v25 + 1));
    sub_26BFC51F8(v138, type metadata accessor for MLS.GroupInfo);
    sub_26BE00258(v213, v97);
    goto LABEL_12;
  }

  v204 = v217;
  v205 = v218;
  v127 = *(v0 + 1976);

  v128 = sub_26C009A3C();
  v129 = sub_26C00AA1C();

  if (os_log_type_enabled(v128, v129))
  {
    v209 = v129;
    v130 = *(v0 + 1976);
    v131 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v231[0] = v202;
    *v131 = 136315394;
    v132 = sub_26BE16A38();
    v134 = sub_26BE29740(v132, v133, v231);

    *(v131 + 4) = v134;
    *(v131 + 12) = 2080;
    if (v205)
    {
      v135 = 0xE500000000000000;
      v136 = 0x3E6C696E3CLL;
    }

    else
    {
      *&v219 = 0;
      *(&v219 + 1) = 0xE000000000000000;
      sub_26C00AC1C();

      *&v219 = 0xD000000000000011;
      *(&v219 + 1) = 0x800000026C02B9D0;
      *(v0 + 1412) = v204;
      v140 = sub_26C00AEFC();
      MEMORY[0x26D699090](v140);

      MEMORY[0x26D699090](41, 0xE100000000000000);
      v135 = *(&v219 + 1);
      v136 = v219;
    }

    v141 = sub_26BE29740(v136, v135, v231);

    *(v131 + 14) = v141;
    _os_log_impl(&dword_26BDFE000, v128, v209, "%s: found prior appearance: %s", v131, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v202, -1, -1);
    MEMORY[0x26D69A4E0](v131, -1, -1);
  }

  else
  {
  }

  v206 = v97;
  v210 = v69;
  if (v100)
  {

    v142 = sub_26C009A3C();
    v143 = sub_26C00A9FC();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v231[0] = v145;
      *v144 = 136315138;
      *&v219 = v100;
      v146 = MLS.RatchetTree.description.getter();
      v148 = sub_26BE29740(v146, v147, v231);

      *(v144 + 4) = v148;
      _os_log_impl(&dword_26BDFE000, v142, v143, "parsed ratchet tree: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      MEMORY[0x26D69A4E0](v145, -1, -1);
      MEMORY[0x26D69A4E0](v144, -1, -1);
    }

    LOWORD(v217) = **(v0 + 2096);
    v231[0] = v100;
    MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v217, v231, &v219);
    v199 = *(&v25 + 1);
    v149 = v219;
    v150 = *(&v219 + 1);
    v151 = v220;
    v100 = *(&v220 + 1);
  }

  else
  {
    v199 = *(&v25 + 1);
    v149 = 0;
    v150 = 0;
    v151 = 0;
  }

  v201 = *(v0 + 2072);
  v203 = *(v0 + 2096);
  v200 = *(v0 + 2048);
  v152 = *(v0 + 1976);
  v153 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v152 + v153, v0 + 1528);
  v154 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v154;
  *(v0 + 360) = *(v0 + 176);
  *(v0 + 376) = *(v0 + 192);
  v155 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v155;
  v156 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v156;
  v157 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v157;
  v158 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 248) = v158;
  *(v0 + 1648) = v149;
  *(v0 + 1656) = v150;
  *(v0 + 1664) = v151;
  *(v0 + 1672) = v100;
  *(v0 + 1680) = *(v0 + 2280);
  *(v0 + 1688) = v213;
  *(v0 + 1696) = v206;
  *(v0 + 1704) = 0;
  *(v0 + 1404) = v204;
  *(v0 + 1408) = v205;
  sub_26BE00608(v213, v206);
  v159 = sub_26C001A78(MEMORY[0x277D84F90]);
  static MLS.GroupState.externalJoin(signaturePrivateKey:keyPackage:groupInfo:tree:messageOptions:removePrior:psks:)(v201, v200, (v0 + 1104), v0 + 1528, (v0 + 200), v203, (v0 + 1648), (v0 + 1680), (v0 + 1404), v159);
  v160 = *(v0 + 2072);
  v161 = *(v0 + 2064);

  sub_26BE00258(*(v0 + 1688), *(v0 + 1696));
  v162 = *(v0 + 1664);
  v163 = *(v0 + 1672);
  sub_26BFC51B4(*(v0 + 1648), *(v0 + 1656));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1528));
  v164 = *(v0 + 1248);
  *(v0 + 1056) = *(v0 + 1232);
  *(v0 + 1072) = v164;
  *(v0 + 1088) = *(v0 + 1264);
  v165 = *(v0 + 1184);
  *(v0 + 992) = *(v0 + 1168);
  *(v0 + 1008) = v165;
  v166 = *(v0 + 1216);
  *(v0 + 1024) = *(v0 + 1200);
  *(v0 + 1040) = v166;
  v167 = *(v0 + 1120);
  *(v0 + 928) = *(v0 + 1104);
  *(v0 + 944) = v167;
  v168 = *(v0 + 1152);
  *(v0 + 960) = *(v0 + 1136);
  *(v0 + 976) = v168;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v169 = *(v161 + 72);
  v170 = (*(v161 + 80) + 32) & ~*(v161 + 80);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_26C011280;
  sub_26BFC5258(v160, v171 + v170, type metadata accessor for MLS.MLSMessage);
  v172 = sub_26BEE6FC0(v171);
  *(v0 + 2136) = v172;
  *(v0 + 2144) = v173;
  v174 = v172;
  v175 = v173;
  v176 = *(v0 + 2056);
  swift_setDeallocating();
  v177 = *(v171 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26BE00608(v174, v175);
  v178 = sub_26C009A3C();
  v179 = sub_26C00A9FC();
  v180 = v175;
  v181 = v179;
  v182 = v180;
  sub_26BE00258(v174, v180);
  if (os_log_type_enabled(v178, v181))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v231[0] = v184;
    *v183 = 136315138;
    *&v219 = 0x286567617373654DLL;
    *(&v219 + 1) = 0xE800000000000000;
    v185 = sub_26BE83594(v174, v182);
    MEMORY[0x26D699090](v185);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    v186 = sub_26BE29740(v219, *(&v219 + 1), v231);

    *(v183 + 4) = v186;
    _os_log_impl(&dword_26BDFE000, v178, v181, "generated external commit: %s", v183, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v184);
    MEMORY[0x26D69A4E0](v184, -1, -1);
    MEMORY[0x26D69A4E0](v183, -1, -1);
  }

  if (*(*(v0 + 1984) + 48))
  {
    v187 = *(v0 + 1976);
    *(v0 + 2152) = type metadata accessor for MLS.Group.PureSwiftGroup();

    sub_26BE00608(v215, v210);
    v188 = swift_task_alloc();
    *(v0 + 2160) = v188;
    *v188 = v0;
    v188[1] = sub_26BFC3980;
    v189 = *(v0 + 1976);

    return MLS.Group.PureSwiftGroup.__allocating_init(client:groupID:)(v189, v215, v210);
  }

  else
  {
    v190 = *(v0 + 2048);
    v191 = *(v0 + 2032);
    v192 = *(v0 + 1976);
    *(v0 + 1904) = v25;
    *(v0 + 1912) = v199;
    sub_26BFC5258(v190, v191, type metadata accessor for MLS.GroupState);
    v193 = type metadata accessor for MLS.Group.PureSwiftGroup();
    v194 = *(v193 + 48);
    v195 = *(v193 + 52);
    swift_allocObject();

    sub_26BE04890(v25, v199);
    v196 = swift_task_alloc();
    *(v0 + 2256) = v196;
    *v196 = v0;
    v196[1] = sub_26BFC4938;
    v197 = *(v0 + 2032);
    v198 = *(v0 + 1976);

    return sub_26BF3DD04(v198, (v0 + 1904), v197);
  }
}

uint64_t sub_26BFC3980(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2160);
  v6 = *v2;
  *(*v2 + 2168) = v1;

  if (v1)
  {
    v7 = sub_26BFC4DAC;
  }

  else
  {
    *(v4 + 2176) = a1;
    v7 = sub_26BFC3AA8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BFC3AA8()
{
  v1 = *(v0 + 2176);
  if (v1)
  {
    *(v0 + 2208) = v1;
    v2 = *(v0 + 2048);
    v3 = swift_task_alloc();
    *(v0 + 2216) = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_task_alloc();
    *(v0 + 2224) = v4;
    *v4 = v0;
    v4[1] = sub_26BFC4018;

    return (sub_26BE1A434)();
  }

  else
  {
    v6 = *(v0 + 2152);
    v7 = *(v0 + 2112);
    v8 = *(v0 + 2104);
    v9 = *(v0 + 2048);
    v10 = *(v0 + 2040);
    v11 = *(v0 + 1976);
    *(v0 + 1920) = v8;
    *(v0 + 1928) = v7;
    sub_26BFC5258(v9, v10, type metadata accessor for MLS.GroupState);
    v12 = *(v6 + 48);
    v13 = *(v6 + 52);
    swift_allocObject();

    sub_26BE04890(v8, v7);
    v14 = swift_task_alloc();
    *(v0 + 2184) = v14;
    *v14 = v0;
    v14[1] = sub_26BFC3C6C;
    v15 = *(v0 + 2040);
    v16 = *(v0 + 1976);

    return sub_26BF3DD04(v16, (v0 + 1920), v15);
  }
}

uint64_t sub_26BFC3C6C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2184);
  v6 = *v2;
  *(*v2 + 2192) = v1;

  if (v1)
  {
    v7 = sub_26BFC3E74;
  }

  else
  {
    *(v4 + 2200) = a1;
    v7 = sub_26BFC3D94;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BFC3D94()
{
  v1 = v0[275];
  v0[276] = v1;
  v2 = v0[256];
  v3 = swift_task_alloc();
  v0[277] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[278] = v4;
  *v4 = v0;
  v4[1] = sub_26BFC4018;

  return sub_26BE1A434(sub_26BE1A434, &unk_26C00E218, v3);
}

uint64_t sub_26BFC3E74()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);
  v22 = v0[274];
  v10 = v0[262];
  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[259];
  v14 = v0[256];
  v15 = v0[255];
  v16 = v0[254];
  v17 = v0[252];
  v18 = v0[251];
  v19 = v0[249];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26BFC4018()
{
  v2 = *v1;
  v3 = *(*v1 + 2224);
  v4 = *v1;
  *(*v1 + 2232) = v0;

  v5 = *(v2 + 2216);

  if (v0)
  {
    v6 = sub_26BFC44D0;
  }

  else
  {
    v6 = sub_26BFC414C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BFC414C()
{
  v1 = *(v0 + 2232);
  v2 = sub_26BE81FE0(*(*(v0 + 2048) + *(*(v0 + 2024) + 40)));
  if (v1)
  {
  }

  else
  {
    v3 = v2;
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v3 = sub_26BE4126C();
LABEL_5:
  v4 = *(*(v0 + 2048) + 24);
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 2008);
  v6 = __swift_project_value_buffer(*(v0 + 2000), qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30C8C(v6, v5);
  v7 = sub_26C00921C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(v5, 1, v7);
  v11 = *(v0 + 2008);
  if (v10 == 1)
  {
    v12 = *(v0 + 2016);
    sub_26C00920C();
    if (v9(v11, 1, v7) != 1)
    {
      sub_26BE30E14(*(v0 + 2008));
    }
  }

  else
  {
    (*(v8 + 32))(*(v0 + 2016), *(v0 + 2008), v7);
  }

  v13 = *(v0 + 2208);
  v14 = *(v0 + 2048);
  v15 = *(v0 + 2016);
  v16 = *(v0 + 1992);
  (*(v8 + 56))(v15, 0, 1, v7);
  swift_beginAccess();
  sub_26BE4D1CC(v15, v3, v4);
  swift_endAccess();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v18 = (v16 + *(v17 + 48));
  sub_26BFC5258(v14, v16, type metadata accessor for MLS.GroupState);
  v20 = *(v0 + 944);
  v19 = *(v0 + 960);
  *v18 = *(v0 + 928);
  v18[1] = v20;
  v18[2] = v19;
  v21 = *(v0 + 1024);
  v23 = *(v0 + 976);
  v22 = *(v0 + 992);
  v18[5] = *(v0 + 1008);
  v18[6] = v21;
  v18[3] = v23;
  v18[4] = v22;
  v24 = *(v0 + 1056);
  v25 = *(v0 + 1088);
  v26 = *(v0 + 1040);
  v18[9] = *(v0 + 1072);
  v18[10] = v25;
  v18[7] = v26;
  v18[8] = v24;
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v27 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE6FF30(v0 + 928, v0 + 752);
  sub_26BE7170C(v16, v13 + v27, &qword_28045E8D8, &qword_26C012580);
  swift_endAccess();
  v28 = swift_task_alloc();
  *(v0 + 2240) = v28;
  *v28 = v0;
  v28[1] = sub_26BFC467C;
  v29 = MEMORY[0x277D84F90];

  return sub_26BF394D4(v29);
}

uint64_t sub_26BFC44D0()
{
  v1 = v0[276];
  v2 = v0[268];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[265];
  v6 = v0[264];
  v7 = v0[263];
  v8 = v0[262];
  v9 = v0[259];
  v10 = v0[256];

  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v3, v2);
  sub_26BE0489C(v7, v6);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v9, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v10, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v5, v4);
  v23 = v0[279];
  v11 = v0[262];
  v12 = v0[261];
  v13 = v0[260];
  v14 = v0[259];
  v15 = v0[256];
  v16 = v0[255];
  v17 = v0[254];
  v18 = v0[252];
  v19 = v0[251];
  v20 = v0[249];

  v21 = v0[1];

  return v21();
}

uint64_t sub_26BFC467C()
{
  v2 = *(*v1 + 2240);
  v5 = *v1;
  *(*v1 + 2248) = v0;

  if (v0)
  {
    v3 = sub_26BFC4F50;
  }

  else
  {
    v3 = sub_26BFC4790;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BFC4790()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2048);
  sub_26BE6FF8C(v0 + 928);
  sub_26BE0489C(v2, v1);
  sub_26BE2E01C(v0 + 16);
  sub_26BFC51F8(v3, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v4, type metadata accessor for MLS.GroupState);
  v5 = *(v0 + 2208);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2120);
  v8 = *(v0 + 2096);
  v9 = *(v0 + 2088);
  v10 = *(v0 + 2080);
  v11 = *(v0 + 2072);
  v12 = *(v0 + 2048);
  v13 = *(v0 + 2040);
  v14 = *(v0 + 2032);
  v18 = *(v0 + 2016);
  v19 = *(v0 + 2008);
  v20 = *(v0 + 1992);
  v15 = *(v0 + 1968);
  *v15 = *(v0 + 2136);
  *(v15 + 16) = v5;
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v7, v6);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26BFC4938(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2256);
  v6 = *v2;
  *(*v2 + 2264) = v1;

  if (v1)
  {
    v7 = sub_26BFC4C08;
  }

  else
  {
    *(v4 + 2272) = a1;
    v7 = sub_26BFC4A60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BFC4A60()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2104);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2048);
  sub_26BE6FF8C(v0 + 928);
  sub_26BE0489C(v2, v1);
  sub_26BE2E01C(v0 + 16);
  sub_26BFC51F8(v3, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v4, type metadata accessor for MLS.GroupState);
  v5 = *(v0 + 2272);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2120);
  v8 = *(v0 + 2096);
  v9 = *(v0 + 2088);
  v10 = *(v0 + 2080);
  v11 = *(v0 + 2072);
  v12 = *(v0 + 2048);
  v13 = *(v0 + 2040);
  v14 = *(v0 + 2032);
  v18 = *(v0 + 2016);
  v19 = *(v0 + 2008);
  v20 = *(v0 + 1992);
  v15 = *(v0 + 1968);
  *v15 = *(v0 + 2136);
  *(v15 + 16) = v5;
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v7, v6);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26BFC4C08()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);
  v22 = v0[283];
  v10 = v0[262];
  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[259];
  v14 = v0[256];
  v15 = v0[255];
  v16 = v0[254];
  v17 = v0[252];
  v18 = v0[251];
  v19 = v0[249];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26BFC4DAC()
{
  v1 = v0[268];
  v2 = v0[267];
  v3 = v0[266];
  v4 = v0[265];
  v5 = v0[264];
  v6 = v0[263];
  v7 = v0[262];
  v8 = v0[259];
  v9 = v0[256];
  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v2, v1);
  sub_26BE0489C(v6, v5);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v8, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v9, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v7, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v4, v3);
  v22 = v0[271];
  v10 = v0[262];
  v11 = v0[261];
  v12 = v0[260];
  v13 = v0[259];
  v14 = v0[256];
  v15 = v0[255];
  v16 = v0[254];
  v17 = v0[252];
  v18 = v0[251];
  v19 = v0[249];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26BFC4F50()
{
  v1 = v0[276];
  v2 = v0[268];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[265];
  v6 = v0[264];
  v7 = v0[263];
  v8 = v0[262];
  v9 = v0[259];
  v10 = v0[256];

  sub_26BE6FF8C((v0 + 116));
  sub_26BE00258(v3, v2);
  sub_26BE0489C(v7, v6);
  sub_26BE2E01C((v0 + 2));
  sub_26BFC51F8(v9, type metadata accessor for MLS.MLSMessage);
  sub_26BFC51F8(v10, type metadata accessor for MLS.GroupState);
  sub_26BFC51F8(v8, type metadata accessor for MLS.GroupInfo);
  sub_26BE00258(v5, v4);
  v23 = v0[281];
  v11 = v0[262];
  v12 = v0[261];
  v13 = v0[260];
  v14 = v0[259];
  v15 = v0[256];
  v16 = v0[255];
  v17 = v0[254];
  v18 = v0[252];
  v19 = v0[251];
  v20 = v0[249];

  v21 = v0[1];

  return v21();
}

uint64_t sub_26BFC51B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26BFC51F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFC5258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFC52C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE28F58;

  return sub_26BF71D9C(a1, v5, v4);
}

uint64_t type metadata accessor for MLS.Digest()
{
  result = qword_280460370;
  if (!qword_280460370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFC53B8()
{
  result = sub_26C00A34C();
  if (v1 <= 0x3F)
  {
    result = sub_26C009C0C();
    if (v2 <= 0x3F)
    {
      result = sub_26C009C1C();
      if (v3 <= 0x3F)
      {
        result = sub_26C009C2C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFC5454(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_26C009C2C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009C1C();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009C0C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A34C();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.Digest();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460380, &qword_26C0231B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = sub_26C00A12C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v61 = *(a1 + 64);
  v28 = *(a1 + 48);
  v60[2] = *(a1 + 32);
  v60[3] = v28;
  v29 = *(a1 + 16);
  v60[0] = *a1;
  v60[1] = v29;
  if ((v61 & 1) == 0)
  {
    v42 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *(a1 + 16);
    v55[0] = *a1;
    v55[1] = v31;
    v32 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v32;
    v58[2] = v56;
    v58[3] = v32;
    v59 = *(a1 + 64);
    v58[0] = v55[0];
    v58[1] = v31;
    sub_26BFC5AA4(v60, v54);
    sub_26BFC5B00(v58, v54);
    P256.Signing.ECDSASignature.init(_:)(v55, v23);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_26BFC15B0(v60);
      sub_26BE2E258(v23, &qword_280460380, &qword_26C0231B0);
      v30 = 0;
      return v30 & 1;
    }

    (*(v25 + 32))(v42, v23, v24);
    sub_26BFC5B5C(v53, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v37 = v47;
        v36 = v48;
        v38 = v49;
        (*(v48 + 32))(v47, v19, v49);
        v39 = &unk_280460390;
        v40 = MEMORY[0x277CC52C8];
      }

      else
      {
        v37 = v50;
        v36 = v51;
        v38 = v52;
        (*(v51 + 32))(v50, v19, v52);
        v39 = &unk_280460388;
        v40 = MEMORY[0x277CC52E8];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = v43;
        (*(v43 + 32))(v15, v19, v12);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578]);
        v35 = v42;
        v30 = sub_26C00A14C();
        sub_26BFC15B0(v60);
        (*(v34 + 8))(v15, v12);
LABEL_13:
        (*(v25 + 8))(v35, v24);
        return v30 & 1;
      }

      v37 = v44;
      v36 = v45;
      v38 = v46;
      (*(v45 + 32))(v44, v19, v46);
      v39 = &unk_280460398;
      v40 = MEMORY[0x277CC5290];
    }

    sub_26BFC5BC0(v39, v40);
    v35 = v42;
    v30 = sub_26C00A14C();
    sub_26BFC15B0(v60);
    (*(v36 + 8))(v37, v38);
    goto LABEL_13;
  }

  v30 = 0;
  return v30 & 1;
}

uint64_t sub_26BFC5B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Digest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFC5BC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFC5C08(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_26C009C2C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009C1C();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009C0C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A34C();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.Digest();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804603A8, &qword_26C0231B8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = sub_26C00A20C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v61 = *(a1 + 64);
  v28 = *(a1 + 48);
  v60[2] = *(a1 + 32);
  v60[3] = v28;
  v29 = *(a1 + 16);
  v60[0] = *a1;
  v60[1] = v29;
  if ((v61 & 1) == 0)
  {
    v42 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *(a1 + 16);
    v55[0] = *a1;
    v55[1] = v31;
    v32 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v32;
    v58[2] = v56;
    v58[3] = v32;
    v59 = *(a1 + 64);
    v58[0] = v55[0];
    v58[1] = v31;
    sub_26BFC5AA4(v60, v54);
    sub_26BFC5B00(v58, v54);
    P384.Signing.ECDSASignature.init(_:)(v55, v23);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_26BFC15B0(v60);
      sub_26BE2E258(v23, &qword_2804603A8, &qword_26C0231B8);
      v30 = 0;
      return v30 & 1;
    }

    (*(v25 + 32))(v42, v23, v24);
    sub_26BFC5B5C(v53, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v37 = v47;
        v36 = v48;
        v38 = v49;
        (*(v48 + 32))(v47, v19, v49);
        v39 = &unk_280460390;
        v40 = MEMORY[0x277CC52C8];
      }

      else
      {
        v37 = v50;
        v36 = v51;
        v38 = v52;
        (*(v51 + 32))(v50, v19, v52);
        v39 = &unk_280460388;
        v40 = MEMORY[0x277CC52E8];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = v43;
        (*(v43 + 32))(v15, v19, v12);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578]);
        v35 = v42;
        v30 = sub_26C00A21C();
        sub_26BFC15B0(v60);
        (*(v34 + 8))(v15, v12);
LABEL_13:
        (*(v25 + 8))(v35, v24);
        return v30 & 1;
      }

      v37 = v44;
      v36 = v45;
      v38 = v46;
      (*(v45 + 32))(v44, v19, v46);
      v39 = &unk_280460398;
      v40 = MEMORY[0x277CC5290];
    }

    sub_26BFC5BC0(v39, v40);
    v35 = v42;
    v30 = sub_26C00A21C();
    sub_26BFC15B0(v60);
    (*(v36 + 8))(v37, v38);
    goto LABEL_13;
  }

  v30 = 0;
  return v30 & 1;
}

uint64_t sub_26BFC6258(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_26C009C2C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C009C1C();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C009C0C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A34C();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.Digest();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804603B0, &unk_26C0231C0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42 - v22;
  v24 = sub_26C00A29C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v61 = *(a1 + 64);
  v28 = *(a1 + 48);
  v60[2] = *(a1 + 32);
  v60[3] = v28;
  v29 = *(a1 + 16);
  v60[0] = *a1;
  v60[1] = v29;
  if ((v61 & 1) == 0)
  {
    v42 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *(a1 + 16);
    v55[0] = *a1;
    v55[1] = v31;
    v32 = *(a1 + 48);
    v56 = *(a1 + 32);
    v57 = v32;
    v58[2] = v56;
    v58[3] = v32;
    v59 = *(a1 + 64);
    v58[0] = v55[0];
    v58[1] = v31;
    sub_26BFC5AA4(v60, v54);
    sub_26BFC5B00(v58, v54);
    P521.Signing.ECDSASignature.init(_:)(v55, v23);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_26BFC15B0(v60);
      sub_26BE2E258(v23, qword_2804603B0, &unk_26C0231C0);
      v30 = 0;
      return v30 & 1;
    }

    (*(v25 + 32))(v42, v23, v24);
    sub_26BFC5B5C(v53, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v37 = v47;
        v36 = v48;
        v38 = v49;
        (*(v48 + 32))(v47, v19, v49);
        v39 = &unk_280460390;
        v40 = MEMORY[0x277CC52C8];
      }

      else
      {
        v37 = v50;
        v36 = v51;
        v38 = v52;
        (*(v51 + 32))(v50, v19, v52);
        v39 = &unk_280460388;
        v40 = MEMORY[0x277CC52E8];
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v34 = v43;
        (*(v43 + 32))(v15, v19, v12);
        sub_26BFC5BC0(&qword_2804603A0, MEMORY[0x277CC5578]);
        v35 = v42;
        v30 = sub_26C00A2AC();
        sub_26BFC15B0(v60);
        (*(v34 + 8))(v15, v12);
LABEL_13:
        (*(v25 + 8))(v35, v24);
        return v30 & 1;
      }

      v37 = v44;
      v36 = v45;
      v38 = v46;
      (*(v45 + 32))(v44, v19, v46);
      v39 = &unk_280460398;
      v40 = MEMORY[0x277CC5290];
    }

    sub_26BFC5BC0(v39, v40);
    v35 = v42;
    v30 = sub_26C00A2AC();
    sub_26BFC15B0(v60);
    (*(v36 + 8))(v37, v38);
    goto LABEL_13;
  }

  v30 = 0;
  return v30 & 1;
}

uint64_t sub_26BFC68AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for _TinyArray.Storage();

  return sub_26BFC8444(a1, v6, a3);
}

uint64_t sub_26BFC6900(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _TinyArray.Storage();
  sub_26BFC8444(v7, v5, a2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC6998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = sub_26C00AC6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = sub_26C00A76C();
  if (v10 == 1)
  {
    sub_26C00A7DC();

    sub_26C00AC7C();
    WitnessTable = swift_getWitnessTable();
    v13 = a3;
    v14 = v9;
    v15 = v6;
    return sub_26BFC6B5C(v14, v15, WitnessTable, v13);
  }

  if (v10)
  {
    v18 = a1;
    v16 = sub_26C00A7AC();
    WitnessTable = swift_getWitnessTable();
    v14 = &v18;
    v13 = a3;
    v15 = v16;
    return sub_26BFC6B5C(v14, v15, WitnessTable, v13);
  }

  return sub_26BFC7660(a3);
}

uint64_t sub_26BFC6B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1);
  sub_26BFC75A0(v11, a2, a3, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t sub_26BFC6C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for _TinyArray.Storage();

  return sub_26BFC6CBC(a1, v6, a3);
}

uint64_t sub_26BFC6CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v17, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v15;
    sub_26C00A7DC();
  }

  else
  {
    v20 = *(v7 + 32);
    v20(v11, v15, v6);
    if (a1)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_26C00AC1C();

      v23 = 0x207865646E69;
      v24 = 0xE600000000000000;
      v22[1] = a1;
      v21 = sub_26C00AEFC();
      MEMORY[0x26D699090](v21);

      MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
      result = sub_26C00AD6C();
      __break(1u);
    }

    else
    {
      return (v20)(a3, v11, v6);
    }
  }

  return result;
}

uint64_t sub_26BFC6F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for _TinyArray.Storage();

  return sub_26BFC6F64(v2);
}

uint64_t sub_26BFC6F64(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v7 = *(a1 + 16);
    v8 = sub_26C00A76C();

    return v8;
  }

  else
  {
    (*(v2 + 8))(v5, a1);
    return 1;
  }
}

uint64_t sub_26BFC7070(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_26BFC710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC7190()
{
  swift_getWitnessTable();

  return sub_26C00A89C();
}

uint64_t sub_26BFC7214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC7288@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BFC6F34(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_26BFC72B0(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26BFC7338(v6, *a2, a3);
  return sub_26BFC9AF4;
}

uint64_t (*sub_26BFC7338(void *a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = v7;
  a1[2] = v7;
  v9 = type metadata accessor for _TinyArray.Storage();
  sub_26BFC6CBC(a2, v9, v8);
  return sub_26BFC9AF8;
}

uint64_t sub_26BFC7414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_26BFC7480()
{
  swift_getWitnessTable();

  return sub_26C00A8AC();
}

uint64_t sub_26BFC7534(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_26BFC75A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  *a4 = sub_26C00A73C();
  v7 = type metadata accessor for _TinyArray.Storage();
  swift_storeEnumTagMultiPayload();
  sub_26BFC76BC(a1, v7, a2, a3);
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

uint64_t sub_26BFC7660@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26C00A73C();
  type metadata accessor for _TinyArray.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFC76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v9 = *(a2 + 16);
  v10 = sub_26C00AAAC();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 8);
  v12 = MEMORY[0x28223BE20](v10);
  v93 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = (&v92 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v92 - v17;
  v105 = *(a3 - 8);
  v18 = *(v105 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v22 = *(v103 + 64);
  v23 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v98 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v92 - v26;
  v108 = v9;
  v28 = *(v9 - 8);
  v29 = *(v28 + 8);
  v30 = MEMORY[0x28223BE20](v25);
  v92 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v94 = &v92 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v97 = &v92 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v95 = &v92 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v92 - v39;
  v41 = *(a2 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  v44 = (&v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v41 + 16);
  v104 = v5;
  v45(v44, v5, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v98 = v41;
    v101 = a2;
    v55 = v108;
    v96 = *(v28 + 4);
    (v96)(v40, v44, v108);
    (*(v105 + 16))(v20, v106, a3);
    sub_26C00A67C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v57 = v102;
    v105 = AssociatedConformanceWitness;
    sub_26C00AADC();
    if ((*(v28 + 6))(v57, 1, v55) == 1)
    {
      (*(v103 + 8))(v27, AssociatedTypeWitness);
      (*(v28 + 1))(v40, v108);
      return (*(v99 + 1))(v57, v100);
    }

    v94 = v40;
    v99 = v27;
    v100 = AssociatedTypeWitness;
    v59 = v28;
    v60 = v104;
    (*(v98 + 8))(v104, v101);
    v61 = v95;
    (v96)(v95, v57, v108);
    v110 = sub_26C00A73C();
    result = sub_26C00A68C();
    if (!__OFADD__(result, 1))
    {
      v62 = v108;
      v63 = sub_26C00A7AC();
      sub_26C00A71C();
      v64 = v60;
      v65 = v59;
      v66 = v61;
      v67 = *(v59 + 2);
      v68 = v97;
      v69 = v94;
      v67(v97, v94, v62);
      sub_26C00A78C();
      v67(v68, v66, v62);
      sub_26C00A78C();
      v71 = v99;
      v70 = v100;
      Array.appendRemainingElements<A>(from:)(v99, v63, v100, v105);
      v72 = *(v65 + 1);
      v72(v66, v62);
      (*(v103 + 8))(v71, v70);
      v72(v69, v62);
      *v64 = v110;
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
    goto LABEL_19;
  }

  v46 = v105;
  v102 = v28;
  v109 = *v44;
  v110 = v109;
  v47 = sub_26C00A7AC();
  swift_getWitnessTable();
  if (sub_26C00A96C())
  {
    v95 = v47;
    v101 = a2;
    (*(v46 + 16))(v20, v106, a3);
    v48 = v98;
    sub_26C00A67C();
    v49 = swift_getAssociatedConformanceWitness();
    v50 = v96;
    sub_26C00AADC();
    v51 = v50;
    v52 = v102;
    v53 = *(v102 + 6);
    if (v53(v51, 1, v108) == 1)
    {
      (*(v103 + 8))(v48, AssociatedTypeWitness);

      return (*(v99 + 1))(v51, v100);
    }

    v105 = a3;
    (*(v41 + 8))(v104, v101);
    v73 = *(v52 + 4);
    v74 = v51;
    v75 = v48;
    v76 = AssociatedTypeWitness;
    v77 = v108;
    v73(v94, v74, v108);
    v78 = v93;
    v96 = v49;
    sub_26C00AADC();
    if (v53(v78, 1, v77) == 1)
    {
      (*(v103 + 8))(v75, v76);

      (*(v99 + 1))(v78, v100);
      v73(v104, v94, v108);
      return swift_storeEnumTagMultiPayload();
    }

    v100 = v76;
    v79 = v92;
    v73(v92, v78, v108);
    v80 = sub_26C00A76C();
    v81 = sub_26C00A68C();
    v82 = __OFADD__(v80, v81);
    result = v80 + v81;
    if (!v82)
    {
      v83 = v95;
      sub_26C00A71C();
      v84 = v102;
      v85 = *(v102 + 2);
      v86 = v97;
      v87 = v94;
      v88 = v108;
      v85(v97, v94, v108);
      sub_26C00A78C();
      v85(v86, v79, v88);
      sub_26C00A78C();
      v89 = v98;
      v90 = v100;
      Array.appendRemainingElements<A>(from:)(v98, v83, v100, v96);
      v91 = *(v84 + 1);
      v91(v79, v88);
      v91(v87, v88);
      (*(v103 + 8))(v89, v90);
      v58 = v104;
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v58 = v104;
  (*(v41 + 8))(v104, a2);
  (*(v46 + 16))(v20, v106, a3);
  sub_26C00A77C();
LABEL_9:
  *v58 = v110;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFC80CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = a4;
  v33 = a1;
  v34 = a2;
  v5 = type metadata accessor for _TinyArray.Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v10 = (v32 - v9);
  v11 = *(a3 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v8);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v32 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v32 - v20;
  v22 = (v10 + *(v19 + 56));
  v23 = *(*(v5 - 8) + 16);
  v23(v10, v33, v5);
  v23(v22, v34, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = *v22;
      v26 = sub_26C00A7BC();

      return v26 & 1;
    }

    v10 = v22;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v11[4];
      v29(v18, v10, a3);
      v29(v15, v22, a3);
      v26 = sub_26C00A43C();
      v30 = v11[1];
      v30(v15, a3);
      v30(v18, a3);
      return v26 & 1;
    }

    v27 = *v22;
  }

  (v11[4])(v21, v10, a3);
  if (sub_26C00A76C() == 1)
  {
    sub_26C00A7DC();

    v26 = sub_26C00A43C();
    v28 = v11[1];
    v28(v18, a3);
    v28(v21, a3);
  }

  else
  {
    (v11[1])(v21, a3);

    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_26BFC8444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_26C00AD5C();
  v19 = *(v10 - 8);
  v11 = *(v19 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  v14 = sub_26C00A95C();
  MEMORY[0x26D699B20](v14);
  (*(*(a2 - 8) + 16))(v13, v3, a2);
  v20 = v10;
  v15 = *(v10 + 36);
  *&v13[v15] = 0;
  if (sub_26BFC6F64(a2))
  {
    v16 = 0;
    do
    {
      sub_26BFC6CBC(v16, a2, v9);
      v22 = v16;
      swift_getWitnessTable();
      sub_26C00A8AC();
      sub_26C00A3CC();
      (*(v6 + 8))(v9, v5);
      v17 = sub_26BFC6F64(a2);
      v16 = *&v13[v15];
    }

    while (v16 != v17);
  }

  return (*(v19 + 8))(v13, v20);
}

uint64_t sub_26BFC86C0(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26BFC8444(v5, a1, a2);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC8740(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_26C00B05C();
  a4(v8, a2, v6);
  return sub_26C00B0CC();
}

uint64_t sub_26BFC87B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_26BFC8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC88D8()
{
  swift_getWitnessTable();

  return sub_26C00A89C();
}

uint64_t sub_26BFC895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_26BFC89D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BFC6F64(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_26BFC89F8(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26BFC8ACC(v6, *a2, a3);
  return sub_26BFC8A80;
}

void sub_26BFC8A84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_26BFC8ACC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_26BFC6CBC(a2, a3, v9);
  return sub_26BFC8B9C;
}

void sub_26BFC8BA0(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_26BFC8BF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_26BFC8CE8()
{
  swift_getWitnessTable();

  return sub_26C00A8AC();
}

uint64_t sub_26BFC8D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t, void))
{
  v9 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a5(&v9, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_26BFC8E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_26C00AD5C();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26BFC8E8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_26BFC8EF8(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_26BFC99AC();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t Array.appendRemainingElements<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v7 = *(a2 + 16);
  v8 = sub_26C00AAAC();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  v25 = a1;
  v27 = a3;
  v28 = a4;
  sub_26C00AADC();
  v24 = *(v13 + 48);
  if (v24(v12, 1, v7) != 1)
  {
    v20 = *(v13 + 32);
    do
    {
      v20(v19, v12, v7);
      (*(v13 + 16))(v17, v19, v7);
      sub_26C00A78C();
      (*(v13 + 8))(v19, v7);
      sub_26C00AADC();
    }

    while (v24(v12, 1, v7) != 1);
  }

  return (*(v22 + 8))(v12, v23);
}

uint64_t sub_26BFC91D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for _TinyArray.Storage();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFC9244(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_26BFC935C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_26BFC954C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_26C00A7AC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFC98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFC99B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_26C00A9EC() + 36);
  result = sub_26C00A40C();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_26BFC9B28()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9AttributeV5ValueV7StorageOMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFCCF20(v0, v9, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = *v9;
    v15 = v9[1];
    v13 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = v9[1];
    v13 = 1;
LABEL_5:
    MEMORY[0x26D699B20](v13);
    sub_26C00A58C();
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x26D699B20](2);
  sub_26BFCC858(&qword_28045F0C8, MEMORY[0x277D6A988]);
  sub_26C00A3CC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_26BFC9D30()
{
  sub_26C00B05C();
  sub_26BFC9B28();
  return sub_26C00B0CC();
}

uint64_t sub_26BFC9D70()
{
  sub_26C00B05C();
  sub_26BFC9B28();
  return sub_26C00B0CC();
}

uint64_t sub_26BFC9DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v53 = sub_26C00940C();
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00950C();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v48 - v10;
  MEMORY[0x28223BE20](v9);
  v55 = &v48 - v11;
  v12 = sub_26C00936C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = _s9AttributeV5ValueV7StorageOMa(0);
  v15 = *(*(v56 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v56);
  v48 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v49 = (&v48 - v18);
  v19 = sub_26C00934C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v48 - v25;
  v27 = a1;
  sub_26C0094EC();
  sub_26C00935C();
  sub_26BFCC858(&qword_28045ED78, MEMORY[0x277D6A8A8]);
  LOBYTE(a1) = sub_26C00A43C();
  v28 = *(v20 + 8);
  v28(v24, v19);
  if ((a1 & 1) == 0)
  {
    sub_26C0093FC();
    v38 = sub_26C00A43C();
    v28(v24, v19);
    v28(v26, v19);
    v30 = v58;
    v39 = *(v58 + 16);
    if ((v38 & 1) == 0)
    {
      v43 = v59;
      v39(v51, v27, v59);
      sub_26C00948C();
      (*(v30 + 8))(v27, v43);
      return swift_storeEnumTagMultiPayload();
    }

    v29 = v59;
    v39(v50, v27, v59);
    v40 = v52;
    v41 = v60;
    sub_26C0096EC();
    if (!v41)
    {
      v44 = MEMORY[0x26D699000](v40);
      v46 = v45;
      (*(v30 + 8))(v27, v29);
      v47 = v48;
      *v48 = v44;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
      v37 = v47;
      return sub_26BFCCF88(v37, v57, _s9AttributeV5ValueV7StorageOMa);
    }

    return (*(v30 + 8))(v27, v29);
  }

  v28(v26, v19);
  v30 = v58;
  v29 = v59;
  (*(v58 + 16))(v55, v27, v59);
  v31 = v54;
  v32 = v60;
  sub_26C0096EC();
  if (v32)
  {
    return (*(v30 + 8))(v27, v29);
  }

  v33 = MEMORY[0x26D698FF0](v31);
  v35 = v34;
  (*(v30 + 8))(v27, v29);
  v36 = v49;
  *v49 = v33;
  v36[1] = v35;
  swift_storeEnumTagMultiPayload();
  v37 = v36;
  return sub_26BFCCF88(v37, v57, _s9AttributeV5ValueV7StorageOMa);
}

uint64_t sub_26BFCA334(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_26C0094DC();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00936C();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00940C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s9AttributeV5ValueV7StorageOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFCCF20(v2, v19, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x26D697E30](*v19, v19[1]);
      sub_26C0096FC();
      return (*(v27 + 8))(v10, v7);
    }

    else
    {
      v26 = v28;
      v25 = v29;
      (*(v28 + 32))(v6, v19, v29);
      sub_26C0094CC();
      return (*(v26 + 8))(v6, v25);
    }
  }

  else
  {
    v22 = *v19;
    v23 = v19[1];
    v24 = v30;
    sub_26C00941C();
    if (v24)
    {
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_26C0096FC();
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_26BFCA698()
{
  *&v82 = 0;
  *&v81 = sub_26C00936C();
  v1 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v80 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C00940C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C0094DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = _s9AttributeV5ValueV7StorageOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFCCF20(v0, v21, _s9AttributeV5ValueV7StorageOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v70 = v8;
    (*(v8 + 32))(v17, v21, v7);
    v71 = *(v8 + 16);
    v71(v15, v17, v7);
    v72 = v82;
    sub_26C0095FC();
    *&v82 = v72;
    if (v72)
    {
      v73 = v82;
      v71(v12, v17, v7);
      v74 = v80;
      sub_26C0095FC();
      v77 = MEMORY[0x26D698FF0](v74);
      v23 = v78;

      (*(v70 + 8))(v17, v7);
      v22 = v77;
      *&v82 = 0;
    }

    else
    {
      v75 = MEMORY[0x26D699000](v6);
      v23 = v76;
      (*(v70 + 8))(v17, v7);
      v22 = v75;
    }
  }

  else
  {
    v22 = *v21;
    v23 = v21[1];
  }

  v24 = sub_26BFCC978(v22, v23);

  v26 = *(v24 + 16);
  if (v26)
  {
    v27 = 0;
    while (1)
    {
      v28 = *(v24 + 32 + v27);
      if (v28 != 32 && v28 != 35)
      {
        break;
      }

      if (v26 == ++v27)
      {
        goto LABEL_10;
      }
    }

    if (v26 >= v27)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

LABEL_12:
  if (v26 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v26;
  }

  if (v27)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v26 != v30)
  {
    v31 = v26;
    while (v31 > v30)
    {
      if (*(v24 + 31 + v31) != 32)
      {
        goto LABEL_25;
      }

      if (v29 == --v31)
      {
        v31 = v29;
LABEL_25:
        if (v26 < v31)
        {
          goto LABEL_76;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_74;
  }

  v31 = v26;
LABEL_26:
  if (v31 < v27)
  {
    goto LABEL_75;
  }

  v79 = v26;
  swift_retain_n();
  v32 = MEMORY[0x277D84F90];
  v80 = v24;
  if (v27)
  {
    v33 = (v24 + 32);
    v82 = xmmword_26C0125B0;
    v34 = v27;
    while (1)
    {
      v35 = *v33++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      result = swift_initStackObject();
      *(result + 16) = v82;
      *(result + 32) = 92;
      *(result + 33) = v35;
      v36 = *(v32 + 16);
      v37 = v36 + 2;
      if (__OFADD__(v36, 2))
      {
        break;
      }

      v38 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v39 = *(v32 + 24) >> 1, v39 < v37))
      {
        if (v36 <= v37)
        {
          v40 = v36 + 2;
        }

        else
        {
          v40 = v36;
        }

        result = sub_26BE29A50(result, v40, 1, v32);
        v32 = result;
        v39 = *(result + 24) >> 1;
      }

      v41 = *(v32 + 16);
      if (v39 - v41 < 2)
      {
        goto LABEL_69;
      }

      *(v32 + v41 + 32) = *(v38 + 32);

      v42 = *(v32 + 16);
      v43 = __OFADD__(v42, 2);
      v44 = v42 + 2;
      if (v43)
      {
        goto LABEL_70;
      }

      *(v32 + 16) = v44;
      if (!--v34)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_39:
  v84 = v32;
  result = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  v45 = v31 - v27;
  if (v31 != v27)
  {
    if (v31 <= v27)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v46 = &v80[v27 + 32];
    v82 = xmmword_26C0125B0;
    v47.i32[1] = 0;
    v81 = xmmword_26C011280;
    do
    {
      v50 = *v46++;
      v51 = v50;
      v47.i32[0] = *asc_287CBA160;
      v52 = v50 == asc_287CBA160[4];
      v53 = v50 == asc_287CBA160[5];
      v54 = asc_287CBA160[6];
      v55 = vmaxv_u16(vceq_s16((vmovl_u8(v47).u64[0] & 0xFF00FF00FF00FFLL), (*&vdup_n_s16(v50) & 0xFF00FF00FF00FFLL)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      if ((v55 & 1) != 0 || v52 || v53 || v54 == v51)
      {
        v48 = swift_allocObject();
        *(v48 + 16) = v82;
        *(v48 + 32) = 92;
        v49 = (v48 + 33);
      }

      else
      {
        v48 = swift_allocObject();
        *(v48 + 16) = v81;
        v49 = (v48 + 32);
      }

      *v49 = v51;
      sub_26BE29964(v48);
      --v45;
    }

    while (v45);
    result = v83;
  }

  result = sub_26BE29964(result);
  v56 = v79 - v31;
  if (v79 != v31)
  {
    if (v79 <= v31)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    v58 = &v80[v31 + 32];
    v57 = MEMORY[0x277D84F90];
    v82 = xmmword_26C0125B0;
    while (1)
    {
      v59 = *v58++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
      result = swift_initStackObject();
      *(result + 16) = v82;
      *(result + 32) = 92;
      *(result + 33) = v59;
      v60 = *(v57 + 16);
      v61 = v60 + 2;
      if (__OFADD__(v60, 2))
      {
        goto LABEL_71;
      }

      v62 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v63 = *(v57 + 24) >> 1, v63 < v61))
      {
        if (v60 <= v61)
        {
          v64 = v60 + 2;
        }

        else
        {
          v64 = v60;
        }

        result = sub_26BE29A50(result, v64, 1, v57);
        v57 = result;
        v63 = *(result + 24) >> 1;
      }

      v65 = *(v57 + 16);
      if (v63 - v65 < 2)
      {
        goto LABEL_72;
      }

      *(v57 + v65 + 32) = *(v62 + 32);

      v66 = *(v57 + 16);
      v43 = __OFADD__(v66, 2);
      v67 = v66 + 2;
      if (v43)
      {
        goto LABEL_73;
      }

      *(v57 + 16) = v67;
      if (!--v56)
      {
        goto LABEL_64;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_64:
  swift_unknownObjectRelease();
  sub_26BE29964(v57);
  v68 = *(v84 + 16);
  v69 = sub_26C00A56C();

  return v69;
}

unint64_t sub_26BFCAE8C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v2 = *(a2 + 16);
    }

    return a2;
  }

  return result;
}

uint64_t RandomAccessCollection.suffix(while:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v75 = a1;
  v76 = a2;
  v69 = a5;
  v74 = *(a4 + 8);
  v8 = *(v74 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_26C00A9EC();
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15);
  v61 = &v58 - v17;
  v18 = *(v8 + 8);
  v73 = swift_getAssociatedTypeWitness();
  v19 = *(v73 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v73);
  v72 = &v58 - v22;
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  sub_26C00A91C();
  sub_26C00A8FC();
  v68 = AssociatedConformanceWitness;
  v71 = *(AssociatedConformanceWitness + 8);
  v30 = sub_26C00A43C();
  v60 = v23;
  v33 = *(v23 + 8);
  v32 = v23 + 8;
  v31 = v33;
  v33(v27, AssociatedTypeWitness);
  if (v30)
  {
    sub_26C00A97C();
    return v31(v29, AssociatedTypeWitness);
  }

  else
  {
    v77 = v31;
    v78 = v8;
    v70 = v32;
    v35 = (v19 + 16);
    v36 = (v19 + 8);
    v37 = v29;
    while (1)
    {
      v38 = v27;
      v39 = AssociatedTypeWitness;
      sub_26C00A3DC();
      v40 = sub_26C00A9AC();
      v42 = v72;
      v41 = v73;
      (*v35)(v72);
      (v40)(v79, 0);
      LOBYTE(v40) = v75(v42);
      (*v36)(v42, v41);
      if ((v40 & 1) == 0)
      {
        break;
      }

      v27 = v38;
      sub_26C00A8FC();
      AssociatedTypeWitness = v39;
      v43 = sub_26C00A43C();
      v77(v38, v39);
      if (v43)
      {
        goto LABEL_8;
      }
    }

    sub_26C00A92C();
    AssociatedTypeWitness = v39;
    v27 = v38;
LABEL_8:
    sub_26C00A91C();
    result = sub_26C00A40C();
    if (result)
    {
      v44 = v6;
      v45 = v37;
      v46 = v60;
      v47 = *(v60 + 16);
      v48 = v62;
      v59 = v45;
      v47(v62, v45, AssociatedTypeWitness);
      v49 = TupleTypeMetadata2;
      v50 = *(TupleTypeMetadata2 + 48);
      v76 = v44;
      v51 = *(v46 + 32);
      v51(&v48[v50], v27, AssociatedTypeWitness);
      v53 = v65;
      v52 = v66;
      (*(v65 + 16))(v66, v48, v49);
      v75 = a3;
      v54 = *(v49 + 48);
      v55 = v61;
      v51(v61, v52, AssociatedTypeWitness);
      v77(&v52[v54], AssociatedTypeWitness);
      (*(v53 + 32))(v52, v48, v49);
      v56 = v64;
      v51(&v55[*(v64 + 36)], &v52[*(v49 + 48)], AssociatedTypeWitness);
      v57 = v77;
      v77(v52, AssociatedTypeWitness);
      sub_26C00A99C();
      (*(v63 + 8))(v55, v56);
      return v57(v59, AssociatedTypeWitness);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26BFCB560(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v3 = v1 + *(a1 + 20);
  sub_26BFC9B28();
  return sub_26C00B0CC();
}

uint64_t sub_26BFCB604(uint64_t a1, uint64_t a2)
{
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v4 = v2 + *(a2 + 20);
  return sub_26BFC9B28();
}

uint64_t sub_26BFCB690(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFCC858(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v4 = v2 + *(a2 + 20);
  sub_26BFC9B28();
  return sub_26C00B0CC();
}

uint64_t sub_26BFCB730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_26BFCCAA8(a1 + v6, a2 + v6);
}

uint64_t sub_26BFCB798()
{
  v1 = v0;
  v2 = sub_26C00947C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  (*(v3 + 16))(v16 - v8, v0, v2);
  if (qword_28045E118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2804790F8);
  sub_26BFCC858(&qword_280460230, MEMORY[0x277D6A958]);
  if (sub_26C00A43C())
  {
    v10 = 0xE200000000000000;
    v11 = 20035;
  }

  else
  {
    if (qword_28045E110 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2804790E0);
    if (sub_26C00A43C())
    {
      v10 = 0xE100000000000000;
      v11 = 67;
    }

    else
    {
      if (qword_28045E120 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_280479110);
      if (sub_26C00A43C())
      {
        v10 = 0xE100000000000000;
        v11 = 76;
      }

      else
      {
        if (qword_28045E128 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_280479128);
        if (sub_26C00A43C())
        {
          v10 = 0xE200000000000000;
          v11 = 21587;
        }

        else
        {
          if (qword_28045E130 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v2, qword_280479140);
          if (sub_26C00A43C())
          {
            v10 = 0xE100000000000000;
            v11 = 79;
          }

          else
          {
            if (qword_28045E138 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v2, qword_280479158);
            if (sub_26C00A43C())
            {
              v10 = 0xE200000000000000;
              v11 = 21839;
            }

            else
            {
              if (qword_28045E140 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v2, qword_280479170);
              if (sub_26C00A43C())
              {
                v10 = 0xE600000000000000;
                v11 = 0x544545525453;
              }

              else
              {
                (*(v3 + 32))(v7, v9, v2);
                sub_26BFCC858(&qword_28045E920, MEMORY[0x277D6A958]);
                v11 = sub_26C00AEFC();
                v10 = v12;
                v9 = v7;
              }
            }
          }
        }
      }
    }
  }

  (*(v3 + 8))(v9, v2);
  v16[0] = v11;
  v16[1] = v10;
  MEMORY[0x26D699090](61, 0xE100000000000000);
  v13 = v1 + *(_s9AttributeVMa(0) + 20);
  v14 = sub_26BFCA698();
  MEMORY[0x26D699090](v14);

  return v16[0];
}

uint64_t sub_26BFCBC60@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = _s9AttributeV5ValueV7StorageOMa(0);
  v1 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v22 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s9AttributeV5ValueVMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26C00947C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0096AC();
  v14 = v23;
  result = sub_26C0096BC();
  if (!v14)
  {
    sub_26BFCC858(&qword_280460528, _s9AttributeV5ValueV7StorageOMa);
    v16 = v22;
    sub_26C0095EC();
    sub_26BFCCF88(v16, v6, _s9AttributeV5ValueV7StorageOMa);
    v17 = v20;
    (*(v10 + 32))(v20, v13, v9);
    v18 = _s9AttributeVMa(0);
    return sub_26BFCCF88(v6, v17 + *(v18 + 20), _s9AttributeV5ValueVMa);
  }

  return result;
}

uint64_t sub_26BFCBF28(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00947C();
  result = sub_26C00976C();
  if (!v2)
  {
    v9 = _s9AttributeVMa(0);
    sub_26BFCCF20(a2 + *(v9 + 20), v7, _s9AttributeV5ValueVMa);
    _s9AttributeV5ValueV7StorageOMa(0);
    sub_26BFCC858(&qword_280460520, _s9AttributeV5ValueV7StorageOMa);
    sub_26C00976C();
    return sub_26BFCCEA8(v7);
  }

  return result;
}

uint64_t sub_26BFCC058(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFCC308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C00947C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s9AttributeV5ValueVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFCC42C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C00947C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s9AttributeV5ValueVMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFCC548()
{
  result = sub_26C00947C();
  if (v1 <= 0x3F)
  {
    result = _s9AttributeV5ValueVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFCC5E0(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueV7StorageOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCC680(uint64_t a1, uint64_t a2)
{
  v4 = _s9AttributeV5ValueV7StorageOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFCC6F0()
{
  result = _s9AttributeV5ValueV7StorageOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCC75C()
{
  result = sub_26C0094DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCC858(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFCC978(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_26BF2E840(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26C00AC5C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26C00A5EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26BF2E840(v10, 0);
        result = sub_26C00AC0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26BFCCAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s9AttributeV5ValueV7StorageOMa(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v37 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = (&v37 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460510, &qword_26C0239D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v37 - v21;
  v23 = (&v37 + *(v20 + 56) - v21);
  sub_26BFCCF20(a1, &v37 - v21, _s9AttributeV5ValueV7StorageOMa);
  sub_26BFCCF20(a2, v23, _s9AttributeV5ValueV7StorageOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26BFCCF20(v22, v17, _s9AttributeV5ValueV7StorageOMa);
    v26 = *v17;
    v25 = v17[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_4:
      if (v26 == *v23 && v25 == v23[1])
      {
        v35 = v23[1];
      }

      else
      {
        v28 = v23[1];
        v29 = sub_26C00AF2C();

        if ((v29 & 1) == 0)
        {
          sub_26BFCCEA8(v22);
LABEL_16:
          v33 = 0;
          return v33 & 1;
        }
      }

      sub_26BFCCEA8(v22);
      v33 = 1;
      return v33 & 1;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_26BFCCF20(v22, v15, _s9AttributeV5ValueV7StorageOMa);
    v26 = *v15;
    v25 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_15:
    sub_26BFCCE40(v22);
    goto LABEL_16;
  }

  sub_26BFCCF20(v22, v12, _s9AttributeV5ValueV7StorageOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v37 + 8))(v12, v38);
    goto LABEL_15;
  }

  v30 = v37;
  v31 = v23;
  v32 = v38;
  (*(v37 + 32))(v7, v31, v38);
  v33 = sub_26C00949C();
  v34 = *(v30 + 8);
  v34(v7, v32);
  v34(v12, v32);
  sub_26BFCCEA8(v22);
  return v33 & 1;
}

uint64_t sub_26BFCCE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460510, &qword_26C0239D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCCEA8(uint64_t a1)
{
  v2 = _s9AttributeV5ValueV7StorageOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCCF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFCCF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BFCD000(uint64_t a1)
{
  sub_26C00AC1C();

  v5 = *(a1 + 16);
  sub_26BFCD3DC();
  v2 = sub_26C00AEFC();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](8250, 0xE200000000000000);
  MEMORY[0x26D699090](*(a1 + 24), *(a1 + 32));
  MEMORY[0x26D699090](32, 0xE100000000000000);
  MEMORY[0x26D699090](*(a1 + 40), *(a1 + 48));
  MEMORY[0x26D699090](58, 0xE100000000000000);
  v6 = *(a1 + 56);
  v3 = sub_26C00AEFC();
  MEMORY[0x26D699090](v3);

  return 0xD000000000000011;
}

uint64_t sub_26BFCD160()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_26BFCD1E8()
{
  result = qword_280460538;
  if (!qword_280460538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460538);
  }

  return result;
}