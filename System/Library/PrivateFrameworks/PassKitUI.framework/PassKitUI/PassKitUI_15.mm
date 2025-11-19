size_t sub_1BD1D9BE4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CBC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8) - 8);
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

char *sub_1BD1D9E24(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_1BD1D9F10(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAD8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1BD1D9FA0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1BD1DA024(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1BD1DA0A8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_1BD1DA188(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BD1DA284(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1BD1DA334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1BD0E5E8C(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1BD1DA45C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1BD1DA284(v2, 0);
    sub_1BE048C84();
    MEMORY[0x1BFB408E0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void *sub_1BD1DA510(uint64_t a1, uint64_t (*a2)(uint64_t *, void *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_1BE053704();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v5 = sub_1BD1DA284(v4, 0);
    sub_1BE048C84();
    a2 = a2(&v7, v5 + 4, v4, a1);
    sub_1BD0D45FC();
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v5;
}

unint64_t sub_1BD1DA5E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v14, 1, v5, &qword_1EBD3CA68, &unk_1BE0BFCA0, MEMORY[0x1E6967A40]);
    *v3 = v5;
  }

  result = sub_1BD1DA778(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_1BD1DA6D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BE053704();
LABEL_9:
  result = sub_1BE053884();
  *v1 = result;
  return result;
}

unint64_t sub_1BD1DA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1BE049A94();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0);
  }

  if (v18 < 1)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1BD0DE53C(v25, &qword_1EBD3CAB0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BD1DA914(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for UIFlowNode();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1DA97C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_1BE049394();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v42 - v16;
  v18 = *v2;
  v19 = v56;
  result = sub_1BD619C00(a1, a2, *v2);
  if (!v19)
  {
    v52 = v17;
    v56 = 0;
    if (v21)
    {
      return *(v18 + 16);
    }

    v22 = v5;
    v44 = v10;
    v45 = v14;
    v49 = a1;
    v43 = v2;
    v54 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v24 = v18;
      v26 = (v18 + 16);
      v25 = *(v18 + 16);
      v27 = v52;
      if (v23 == v25)
      {
        return v54;
      }

      v28 = v22;
      v51 = v6 + 16;
      v47 = v6;
      v48 = (v6 + 8);
      v42 = (v6 + 40);
      v46 = a2;
      while (v23 < v25)
      {
        v29 = *(v6 + 80);
        v55 = v24;
        v50 = (v29 + 32) & ~v29;
        v30 = v24 + v50;
        v31 = *(v6 + 72);
        v32 = *(v6 + 16);
        v53 = v31 * v23;
        v32(v27, &v30[v31 * v23], v28);
        v33 = v56;
        v34 = v49(v27);
        v56 = v33;
        if (v33)
        {
          return (*v48)(v27, v28);
        }

        v35 = v34;
        result = (*v48)(v27, v28);
        if (v35)
        {
          v6 = v47;
          v27 = v52;
          v24 = v55;
        }

        else
        {
          v36 = v54;
          if (v23 == v54)
          {
            v6 = v47;
            v27 = v52;
            v24 = v55;
          }

          else
          {
            if ((v54 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v37 = *v26;
            if (v54 >= v37)
            {
              goto LABEL_27;
            }

            v38 = v31 * v54;
            result = (v32)(v45, &v30[v38], v28);
            if (v23 >= v37)
            {
              goto LABEL_28;
            }

            v39 = v44;
            v32(v44, &v30[v53], v28);
            v24 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_1BD4FFF2C(v24);
            }

            v40 = v24 + v50;
            v41 = *v42;
            result = (*v42)(v24 + v50 + v38, v39, v28);
            v6 = v47;
            if (v23 >= v24[2])
            {
              goto LABEL_29;
            }

            result = v41(&v40[v53], v45, v28);
            *v43 = v24;
            v36 = v54;
            v27 = v52;
          }

          v54 = v36 + 1;
        }

        ++v23;
        v26 = v24 + 2;
        v25 = v24[2];
        if (v23 == v25)
        {
          return v54;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1BD1DAD20(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BD5060D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BD5000BC(v16, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_1BD1B6140(a1, v22);
  }

  else
  {
    sub_1BD9483BC(v11, a2, a3, a1, v21);

    return sub_1BE048C84();
  }
}

id sub_1BD1DAE70(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BD14BFD0(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_1BD506274();
      v10 = v18;
      goto LABEL_8;
    }

    sub_1BD500374(v15, a4 & 1);
    v10 = sub_1BD14BFD0(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      type metadata accessor for PKAnalyticsKey(0);
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  else
  {
    sub_1BD948428(v10, a3, a1, a2, v20);

    return a3;
  }
}

_OWORD *sub_1BD1DAFB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BD149040(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BD50654C();
      goto LABEL_7;
    }

    sub_1BD50090C(v13, a3 & 1);
    v19 = sub_1BD149040(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1BD149C8C(a2, v21);
      return sub_1BD948470(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_1BD1B6140(a1, v17);
}

uint64_t sub_1BD1DB0FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BE0492B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1BD1492FC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1BD50672C();
      goto LABEL_7;
    }

    sub_1BD50106C(v18, a3 & 1);
    v23 = sub_1BD1492FC(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1BD9484EC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_1BD1DB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BD148F70(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1BD5069C0();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1BD501470(v18, a5 & 1);
    v13 = sub_1BD148F70(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_1BD9485A4(v13, a3, a4, a1, a2, v23);

    return sub_1BE048C84();
  }
}

uint64_t sub_1BD1DB518(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1BD148F70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1BD148F70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    return sub_1BE048C84();
  }
}

uint64_t sub_1BD1DB684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BD506F1C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BD501F34(v16, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1BD9485F4(v11, a2, a3, a1, v21);

    return sub_1BE048C84();
  }
}

void sub_1BD1DB80C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1BD148F70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_1BD148F70(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    sub_1BE048C84();
  }
}

uint64_t sub_1BD1DB974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1BD148F70(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1BD507830();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1BD502D2C(v18, a5 & 1);
    v13 = sub_1BD148F70(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_1BD1245AC(v25, v26);
  }

  else
  {
    sub_1BD9485A4(v13, a3, a4, a1, a2, v23);

    return sub_1BE048C84();
  }
}

uint64_t sub_1BD1DBB18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BD507BC8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BD50333C(v16, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1BD9485F4(v11, a2, a3, a1, v21);

    return sub_1BE048C84();
  }
}

void sub_1BD1DBC60(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BD507D38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BD5035E4(v16, a4 & 1);
    v11 = sub_1BD148F70(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BE053C14();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v24 = *(v22 + 32);
    v23 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 25) = *(a1 + 25);
  }

  else
  {
    sub_1BD948680(v11, a2, a3, a1, v21);

    sub_1BE048C84();
  }
}

uint64_t sub_1BD1DBE14(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_1BD149084(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = sub_1BD149084(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

unint64_t sub_1BD1DBF6C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BD149084(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_1BD508040();
      result = v17;
      goto LABEL_8;
    }

    sub_1BD503B54(v14, a2 & 1);
    result = sub_1BD149084(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_1BD948720(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_1BD1DC080(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1BD148F70(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1BD5081A0();
      goto LABEL_7;
    }

    sub_1BD503DCC(v15, a4 & 1);
    v22 = sub_1BD148F70(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0) - 8) + 72) * v12;

    return sub_1BD1DEBF8(a1, v20);
  }

LABEL_13:
  sub_1BD948764(v12, a2, a3, a1, v18);

  return sub_1BE048C84();
}

uint64_t sub_1BD1DC238(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1BD148F70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_1BD148F70(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BE053C14();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);

  return sub_1BE048C84();
}

uint64_t sub_1BD1DC3F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BD149084(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BD508850();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BD5047A4(v14, a3 & 1);
    v9 = sub_1BD149084(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;

    return sub_1BD1DEB9C(a1, v20);
  }

  else
  {

    return sub_1BD948908(v9, a2, a1, v19);
  }
}

_OWORD *sub_1BD1DC518(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1BD14BFD0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1BD508CF4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1BD504EC4(v13, a3 & 1);
    v8 = sub_1BD14BFD0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_1BE053C14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1BD1B6140(a1, v19);
  }

  else
  {
    sub_1BD948974(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1BD1DC658(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1BD1DC6BC(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void *sub_1BD1DC6BC(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
    sub_1BE048964();
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1BD1DA45C(a1);
      sub_1BE048964();
      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

BOOL _s9PassKitUI30CredentialCenterPathIdentifierV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  v42 = a1;
  if (*a1)
  {
    v16 = 0xD000000000000016;
  }

  else
  {
    v16 = 0xD000000000000012;
  }

  if (*a1)
  {
    v17 = "addCredentialSheet";
  }

  else
  {
    v17 = "erOptions";
  }

  v18 = v17 | 0x8000000000000000;
  if (*a2)
  {
    v19 = 0xD000000000000016;
  }

  else
  {
    v19 = 0xD000000000000012;
  }

  if (*a2)
  {
    v20 = "addCredentialSheet";
  }

  else
  {
    v20 = "erOptions";
  }

  if (v16 == v19 && v18 == (v20 | 0x8000000000000000))
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = type metadata accessor for CredentialCenterPathIdentifier(0);
  v23 = a2;
  v24 = *(v22 + 20);
  v25 = *(v12 + 48);
  sub_1BD0DE19C(&v42[v24], v15, &qword_1EBD39980);
  v26 = &v23[v24];
  v27 = v23;
  sub_1BD0DE19C(v26, &v15[v25], &qword_1EBD39980);
  v28 = *(v5 + 48);
  if (v28(v15, 1, v4) == 1)
  {
    if (v28(&v15[v25], 1, v4) == 1)
    {
      sub_1BD0DE53C(v15, &qword_1EBD39980);
      goto LABEL_25;
    }

LABEL_22:
    sub_1BD0DE53C(v15, &unk_1EBD39AD0);
    return 0;
  }

  sub_1BD0DE19C(v15, v11, &qword_1EBD39980);
  if (v28(&v15[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_22;
  }

  v30 = v41;
  (*(v5 + 32))(v41, &v15[v25], v4);
  sub_1BD1DCD18(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v31 = sub_1BE052334();
  v32 = *(v5 + 8);
  v32(v30, v4);
  v32(v11, v4);
  v27 = v23;
  sub_1BD0DE53C(v15, &qword_1EBD39980);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v33 = *(v22 + 24);
  v34 = v42[v33];
  v35 = v27[v33];
  if (v34 == 2)
  {
    return v35 == 2;
  }

  if (v35 == 2)
  {
    return 0;
  }

  if (v34)
  {
    v36 = 0x64657070617277;
  }

  else
  {
    v36 = 1953722220;
  }

  if (v34)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  if (v35)
  {
    v38 = 0x64657070617277;
  }

  else
  {
    v38 = 1953722220;
  }

  if (v35)
  {
    v39 = 0xE700000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  if (v36 == v38 && v37 == v39)
  {
  }

  else
  {
    v40 = sub_1BE053B84();

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1BD1DCC1C()
{
  result = qword_1EBD3C858;
  if (!qword_1EBD3C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C858);
  }

  return result;
}

unint64_t sub_1BD1DCC70()
{
  result = qword_1EBD3C860;
  if (!qword_1EBD3C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C860);
  }

  return result;
}

unint64_t sub_1BD1DCCC4()
{
  result = qword_1EBD3C868;
  if (!qword_1EBD3C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C868);
  }

  return result;
}

uint64_t sub_1BD1DCD18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD1DCD60()
{
  result = qword_1EBD3C878;
  if (!qword_1EBD3C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C878);
  }

  return result;
}

unint64_t sub_1BD1DCDB4()
{
  result = qword_1EBD3C880;
  if (!qword_1EBD3C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C880);
  }

  return result;
}

uint64_t sub_1BD1DCE08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD1D2F9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD1DCF24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for UIFlowNode();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BE053704();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1BE053704();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = sub_1BE048964();
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1BD1DD044(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BE053704();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1BD1DA6D8(result);

  return sub_1BD1DCF24(v6, v5, 1, v3);
}

char *sub_1BD1DD15C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1BD0E5E8C(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BE053704();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1BE053704();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1BD1DD294(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v4;
    v10 = *v4 >> 62;
    if (!v10)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BE053704();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = (v14 + v13);
  if (!v15)
  {
    sub_1BD1DA6D8(result);
    return sub_1BD1DD15C(v8, v7, 1, v6, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BD1DD3B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1BE053B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEC00000044496C61 || (sub_1BE053B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4264656C616573 && a2 == 0xED00006570795478)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BE053B84();

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

unint64_t sub_1BD1DD4E0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1BD1D7668(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EBD3CBD8, &unk_1BE0BFE20, MEMORY[0x1E6967788]);
    *v2 = v4;
  }

  result = sub_1BD1DDE30(v6, a2, 0, MEMORY[0x1E6967788]);
  *v2 = v4;
  return result;
}

unint64_t sub_1BD1DD658()
{
  result = qword_1EBD3C920;
  if (!qword_1EBD3C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C920);
  }

  return result;
}

unint64_t sub_1BD1DD6B0()
{
  result = qword_1EBD3C928;
  if (!qword_1EBD3C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C928);
  }

  return result;
}

unint64_t sub_1BD1DD708()
{
  result = qword_1EBD3C930;
  if (!qword_1EBD3C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C930);
  }

  return result;
}

unint64_t sub_1BD1DD760()
{
  result = qword_1EBD3C938;
  if (!qword_1EBD3C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C938);
  }

  return result;
}

void sub_1BD1DD7DC()
{
  sub_1BD12513C();
  if (v0 <= 0x3F)
  {
    sub_1BD1DD870();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD1DD870()
{
  if (!qword_1EBD3C950)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3C950);
    }
  }
}

void sub_1BD1DD928()
{
  sub_1BD0E4578(319, &qword_1EBD3C968, &qword_1EBD3C8F0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3C970, &qword_1EBD3C900);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3C978, &qword_1EBD3C908);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3C980, &unk_1EBD4D450);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1BD1DDB14()
{
  result = qword_1EBD3C988;
  if (!qword_1EBD3C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C988);
  }

  return result;
}

unint64_t sub_1BD1DDB6C()
{
  result = qword_1EBD3C990;
  if (!qword_1EBD3C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C990);
  }

  return result;
}

unint64_t sub_1BD1DDBC4()
{
  result = qword_1EBD3C998;
  if (!qword_1EBD3C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C998);
  }

  return result;
}

uint64_t sub_1BD1DDC18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1BD0E5E8C(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BE053704();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DDD34(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BE053704();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_1BE053704();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1BD1DA6D8(result);
    return sub_1BD1DDC18(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1BD1DDE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1BD1DDF7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  if (result != v13 || result >= v13 + 64 * v12)
  {
    result = memmove(result, v13, v12 << 6);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE068(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1BD1DE140(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for UIFlowNode();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v16 = v5[2];
    v17 = v16 - v7;
    if (!__OFSUB__(v16, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return sub_1BD1DC658(v4, sub_1BD1DE3EC);
  }

LABEL_25:
  v20 = sub_1BE053704();
  v17 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v18 = (v6 + 8 * v8);
  v14 = &v9[v7];
  if (v18 != v14 || v18 >= &v14[8 * v17])
  {
    memmove(v18, v14, 8 * v17);
  }

  if (v10)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_28;
  }

  v5[2] = result + v11;
LABEL_17:
  if (v8 < 1)
  {
    return result;
  }

  result = MEMORY[0x1EEE9AC00](result, v14);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    return sub_1BD1DC658(v4, sub_1BD1DE3EC);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    return swift_arrayInitWithCopy();
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD1DE2D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_1BE053704();
  if (result < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_1BE053704();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_1BD1DA6D8(result);

  return sub_1BD1DE140(v6, v5, v11, v3);
}

unint64_t sub_1BD1DE408(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC48);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1BD1DE4FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1DE5FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1DE6BC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1BD1D8E78(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1EBD3CA60);
    *v2 = v4;
  }

  result = sub_1BD1DE5FC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1BD1DE794(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for UIFlowNode();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BE053704();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1BE053704();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD1DE998(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BE053704();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1BD1DA6D8(result);

  return sub_1BD1DE898(v4, v2, 0);
}

uint64_t sub_1BD1DEA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD1DEAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD1DEB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1DEBF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD1DEC5C()
{
  result = qword_1EBD3CB20;
  if (!qword_1EBD3CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CB20);
  }

  return result;
}

unint64_t sub_1BD1DECB0()
{
  result = qword_1EBD3CB28;
  if (!qword_1EBD3CB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CB28);
  }

  return result;
}

void sub_1BD1DEDD4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  sub_1BE04D194();
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1BD026000, v11, v12, "Resuming account updates", v13, 2u);
    MEMORY[0x1BFB45F20](v13, -1, -1);
  }

  v14 = *(v3 + 8);
  v14(v10, v2);
  if (*(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) = 0;
    v15 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount);
    if (v15)
    {
      v16 = v15;
      sub_1BE04D194();
      v17 = sub_1BE04D204();
      v18 = sub_1BE052C54();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1BD026000, v17, v18, "Account update following resumption", v19, 2u);
        MEMORY[0x1BFB45F20](v19, -1, -1);
      }

      v14(v7, v2);
      sub_1BD1DFCC4(v16);
    }
  }
}

uint64_t sub_1BD1DF06C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

char *sub_1BD1DF0D8(void *a1, int a2)
{
  v3 = v2;
  v96 = a2;
  v95 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v93 = *(v4 - 8);
  v94 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v92 = v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD50);
  v99 = *(v7 - 1);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v91 = v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD48);
  v98 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v84 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD40);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD38);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v84 - v22;
  v24 = OBJC_IVAR____TtC9PassKitUI12AccountModel__savingsDetails;
  aBlock[0] = 0;
  v84[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CCF0);
  sub_1BE04D874();
  v86 = v20;
  v25 = *(v20 + 32);
  v85 = v24;
  v87 = v19;
  v25(&v3[v24], v23, v19);
  v26 = OBJC_IVAR____TtC9PassKitUI12AccountModel__savingsSummary;
  aBlock[0] = 0;
  v84[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD00);
  sub_1BE04D874();
  v89 = v15;
  v27 = *(v15 + 32);
  v90 = v14;
  v27(&v3[v26], v18, v14);
  v28 = OBJC_IVAR____TtC9PassKitUI12AccountModel__appleBalanceDetails;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD10);
  sub_1BE04D874();
  v29 = *(v98 + 32);
  v88 = v10;
  v29(&v3[v28], v13, v10);
  v30 = OBJC_IVAR____TtC9PassKitUI12AccountModel__appleBalanceSummary;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CD20);
  v31 = v91;
  sub_1BE04D874();
  (*(v99 + 32))(&v3[v30], v31, v100);
  v32 = OBJC_IVAR____TtC9PassKitUI12AccountModel__expectingAccountUpdate;
  LOBYTE(aBlock[0]) = 0;
  v33 = v92;
  sub_1BE04D874();
  (*(v93 + 32))(&v3[v32], v33, v94);
  v34 = OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService;
  *&v3[v34] = [objc_opt_self() sharedInstance];
  *&v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState] = 2;
  v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount] = 0;
  swift_beginAccess();
  v35 = v95;
  v103 = v95;
  sub_1BD0E5E8C(0, &qword_1EBD3CCE0);
  v36 = v35;
  sub_1BE04D874();
  swift_endAccess();
  v37 = [v36 type];
  v95 = v36;
  if (v37 == 3)
  {
    v44 = [v36 appleBalanceDetails];
    v45 = [v44 accountSummary];
    swift_beginAccess();
    v46 = *(v98 + 8);
    v47 = v44;
    v46(&v3[v28], v88);
    v103 = v44;
    sub_1BE04D874();
    swift_endAccess();
    swift_beginAccess();
    v48 = *(v99 + 8);
    v49 = v45;
    v48(&v3[v30], v100);
    v103 = v45;
    sub_1BE04D874();
    swift_endAccess();
    v50 = [v49 currentBalance];
    if (!v50)
    {
      sub_1BD0E5E8C(0, &qword_1EBD38840);
      v50 = sub_1BE053044();
    }

    v51 = v50;
    sub_1BE0529E4();
    v53 = v52;

    v54 = ObjectType;
    v40 = v96;
    v41 = 4477781;
    v55 = &selRef_setUpNavigationBar;
    v42 = &unk_1EBD3C000;
    if (v47)
    {
      v56 = [v47 currencyCode];
      if (v56)
      {
        v57 = v56;
        v41 = sub_1BE052434();
        v59 = v58;

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v37 != 4)
  {
    v53 = 0;
    v59 = 0xE300000000000000;
    v54 = ObjectType;
    v40 = v96;
    v41 = 4477781;
    v55 = &selRef_setUpNavigationBar;
    v42 = &unk_1EBD3C000;
    goto LABEL_22;
  }

  v38 = [v36 savingsDetails];
  v39 = v38;
  v40 = v96;
  v41 = 4477781;
  v42 = &unk_1EBD3C000;
  if (v38)
  {
    v43 = [v38 accountSummary];
  }

  else
  {
    v43 = 0;
  }

  v60 = v85;
  swift_beginAccess();
  v61 = *(v86 + 8);
  v100 = v39;
  v61(&v3[v60], v87);
  v103 = v39;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v62 = *(v89 + 8);
  v63 = v43;
  v62(&v3[v26], v90);
  v103 = v43;
  sub_1BE04D874();
  swift_endAccess();
  v64 = [v63 currentBalance];
  if (!v64)
  {
    sub_1BD0E5E8C(0, &qword_1EBD38840);
    v64 = sub_1BE053044();
  }

  v65 = v64;
  sub_1BE0529E4();
  v53 = v66;

  v54 = ObjectType;
  v55 = &selRef_setUpNavigationBar;
  if (v39)
  {
    v49 = v100;
    v67 = [v100 currencyCode];
    if (v67)
    {
      v68 = v67;
      v41 = sub_1BE052434();
      v59 = v69;

      goto LABEL_22;
    }

LABEL_19:
    goto LABEL_21;
  }

LABEL_21:
  v59 = 0xE300000000000000;
LABEL_22:
  type metadata accessor for AccountObservableBalance();
  v70 = swift_allocObject();
  swift_beginAccess();
  v103 = v53;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v103 = v41;
  v104 = v59;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  v103 = v70;
  sub_1BE04D874();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v103) = v40 & 1;
  sub_1BE04D874();
  swift_endAccess();
  v102.receiver = v3;
  v102.super_class = v54;
  v71 = objc_msgSendSuper2(&v102, sel_init);
  v72 = v42[404];
  v73 = *&v71[v72];
  if (v73)
  {
    [v73 registerObserver_];
  }

  v74 = [objc_opt_self() v55[211]];
  v75 = v95;
  if (v74)
  {
    v76 = v74;
    v77 = [v74 registerObserver_];

    *&v71[OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState] = v77 & 0x101;
  }

  v78 = *&v71[v72];
  if (v78)
  {
    v79 = v78;
    v80 = [v75 accountIdentifier];
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD1E16C4;
    aBlock[5] = v81;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD14E1D8;
    aBlock[3] = &block_descriptor_64_0;
    v82 = _Block_copy(aBlock);

    [v79 accountWithIdentifier:v80 completion:v82];

    _Block_release(v82);
    v75 = v80;
  }

  return v71;
}

void sub_1BD1DFC58(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      sub_1BD1DFCC4(v4);
    }
  }
}

id sub_1BD1DFCC4(void *a1)
{
  v2 = sub_1BE051F54();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v10 = aBlock[0];
  v11 = [aBlock[0] accountIdentifier];

  if (v11)
  {
    v12 = sub_1BE052434();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = [a1 accountIdentifier];
  if (!v15)
  {
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v16 = v15;
  v17 = sub_1BE052434();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_15;
    }
  }

  if (!v19)
  {
  }

  if (v12 == v17 && v14 == v19)
  {
  }

  else
  {
    v21 = sub_1BE053B84();

    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

LABEL_15:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v22 = aBlock[0];
  v23 = [aBlock[0] type];

  result = [a1 type];
  if (v23 == result)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v24 = sub_1BE052D54();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a1;
    aBlock[4] = sub_1BD1E1530;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_20;
    v27 = _Block_copy(aBlock);
    v28 = a1;

    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v9, v5, v27);
    _Block_release(v27);

    (*(v32 + 8))(v5, v2);
    return (*(v30 + 8))(v9, v31);
  }

  return result;
}

id sub_1BD1E0128()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService];
  if (v2)
  {
    [v2 unregisterObserver_];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for AccountModel()
{
  result = qword_1EBD3CCC8;
  if (!qword_1EBD3CCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD1E04EC(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v43 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates))
  {
    sub_1BE04D194();
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C54();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BD026000, v14, v15, "Received account while updates are suspended", v16, 2u);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    v17 = *&v13[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount];
    *&v13[OBJC_IVAR____TtC9PassKitUI12AccountModel_pendingAccount] = a2;

    v18 = a2;
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v43) = 0;
  v19 = v13;
  sub_1BE04D8C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v20 = v43;
  v21 = PKEqualObjects();

  if ((v21 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = a2;
    v25 = v19;
    v26 = a2;
    sub_1BE04D8C4();
    v27 = [v26 type];
    if (v27 == 3)
    {
      v32 = [v26 appleBalanceDetails];
      v33 = [v32 accountSummary];
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = v32;
      v34 = v25;
      v35 = v32;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = v33;
      v36 = v34;
      v37 = v33;
      sub_1BE04D8C4();
      v38 = [v37 currentBalance];
      if (!v38)
      {
LABEL_19:
        sub_1BD0E5E8C(0, &qword_1EBD38840);
        v38 = sub_1BE053044();
      }
    }

    else
    {
      v28 = 0;
      if (v27 != 4)
      {
LABEL_21:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        swift_getKeyPath();
        swift_getKeyPath();
        v43 = v28;
        sub_1BE04D8C4();

        return;
      }

      v29 = [v26 savingsDetails];
      v30 = v29;
      if (v29)
      {
        v31 = [v29 accountSummary];
      }

      else
      {
        v31 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v43 = v30;
      v39 = v25;
      v35 = v30;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v43 = v31;
      v37 = v31;
      v40 = v39;
      sub_1BE04D8C4();
      v38 = [v37 currentBalance];
      if (!v38)
      {
        goto LABEL_19;
      }
    }

    v41 = v38;
    sub_1BE0529E4();
    v28 = v42;

    goto LABEL_21;
  }

  sub_1BE04D194();
  v22 = sub_1BE04D204();
  v23 = sub_1BE052C54();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1BD026000, v22, v23, "Received account update but account has not changed", v24, 2u);
    MEMORY[0x1BFB45F20](v24, -1, -1);
  }

  else
  {
  }

  (*(v4 + 8))(v11, v3);
}

void sub_1BD1E0AEC(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = a1;
    v4 = a3;
    sub_1BD1DFCC4(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD1E0B4C(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = a1;
    v4 = v3;
    if (Strong)
    {
      sub_1BD1DFCC4(v3);
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_1BD1DEDD4();
    }
  }
}

uint64_t sub_1BD1E0C6C()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D194();
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C54();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1BD026000, v7, v8, "Suspending account updates", v9, 2u);
    MEMORY[0x1BFB45F20](v9, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_suspendingUpdates) = 1;
  return result;
}

void sub_1BD1E0DEC()
{
  sub_1BD1E1060();
  if (v0 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD3CCE8, &qword_1EBD3CCF0);
    if (v1 <= 0x3F)
    {
      sub_1BD0E4578(319, &qword_1EBD3CCF8, &qword_1EBD3CD00);
      if (v2 <= 0x3F)
      {
        sub_1BD0E4578(319, &qword_1EBD3CD08, &qword_1EBD3CD10);
        if (v3 <= 0x3F)
        {
          sub_1BD0E4578(319, &qword_1EBD3CD18, &qword_1EBD3CD20);
          if (v4 <= 0x3F)
          {
            sub_1BD1E10C8();
            if (v5 <= 0x3F)
            {
              sub_1BD1E1120();
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD1E1060()
{
  if (!qword_1EBD3CCD8)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3CCD8);
    }
  }
}

void sub_1BD1E10C8()
{
  if (!qword_1EBD3CD28)
  {
    type metadata accessor for AccountObservableBalance();
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD3CD28);
    }
  }
}

void sub_1BD1E1120()
{
  if (!qword_1EBD368F0)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD368F0);
    }
  }
}

uint64_t sub_1BD1E1170@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD1E11D8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1E1248@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD1E12C8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD1E1344@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD1E13C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BE04D8C4();
}

double sub_1BD1E1434@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BD1E14B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD1E1538(__int16 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState);
  if (v2 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_activeState) = a1 & 0x101;
    if ((a1 & 1) != 0 && (v2 & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI12AccountModel_accountService);
      if (v3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BE04D8B4();

        v4 = [v7[0] accountIdentifier];

        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7[4] = sub_1BD1E16BC;
        v7[5] = v5;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 1107296256;
        v7[2] = sub_1BD14E1D8;
        v7[3] = &block_descriptor_60;
        v6 = _Block_copy(v7);

        [v3 accountWithIdentifier:v4 completion:v6];
        _Block_release(v6);
      }
    }
  }
}

uint64_t sub_1BD1E1798()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v7 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - v9;
  v11 = [*&v1[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] appClipLaunchURL];
  sub_1BE04A9F4();

  v12 = objc_allocWithZone(MEMORY[0x1E6994678]);
  v13 = sub_1BE04A9C4();
  v14 = [v12 initWithURL_];

  (*(v3 + 16))(v7, v10, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  (*(v3 + 32))(v16 + v15, v7, v2);
  aBlock[4] = sub_1BD1E2280;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD14E1D8;
  aBlock[3] = &block_descriptor_21;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 requestMetadataWithCompletion_];
  _Block_release(v17);

  (*(v3 + 8))(v10, v2);
  return 1;
}

uint64_t sub_1BD1E19EC(void *a1, void *a2, void *a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v34 = sub_1BE051F54();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FA4();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AA64();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v33 = sub_1BE052D54();
  (*(v14 + 16))(v17, a4, v13);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  v20 = a1;
  v22 = v31;
  v21 = v32;
  *(v19 + 3) = v31;
  *(v19 + 4) = v21;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_1BD1E2304;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v22;
  v26 = v21;

  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  v27 = v34;
  sub_1BE053664();
  v28 = v33;
  MEMORY[0x1BFB3FDF0](0, v12, v8, v23);
  _Block_release(v23);

  (*(v37 + 8))(v8, v27);
  return (*(v35 + 8))(v12, v36);
}

void sub_1BD1E1D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && !a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E6994680]);
    v5 = sub_1BE04A9C4();
    v6 = [v4 initWithURL_];

    v20 = sub_1BD1E1F80;
    v21 = 0;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1BD3CC8C0;
    v19 = &block_descriptor_15_0;
    v7 = _Block_copy(&v16);
    [v6 requestClipWithCompletion_];
    _Block_release(v7);
LABEL_11:

    return;
  }

  v8 = PKDisplayableErrorForCommonType();
  v6 = v8;
  if (v8)
  {
    v9 = v8;
    v10 = sub_1BE04A844();
  }

  else
  {
    v10 = 0;
  }

  v20 = PKEdgeInsetsMake;
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1BD126964;
  v19 = &block_descriptor_12;
  v11 = _Block_copy(&v16);
  v12 = PKAlertForDisplayableErrorWithCancelHandler(v10, 0, v11);
  _Block_release(v11);

  if (v12)
  {
    PKApplyDefaultIconToAlertController(v12);
    v13 = a3 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(v12, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1BD1E1F80(uint64_t a1, void *a2)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v24 - v10;
  if (a2)
  {
    v12 = a2;
    sub_1BE04D0E4();
    v13 = a2;
    v14 = sub_1BE04D204();
    v15 = sub_1BE052C34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1BD026000, v14, v15, "Error: Cannot launch App Clip URL %@", v16, 0xCu);
      sub_1BD1E236C(v17);
      MEMORY[0x1BFB45F20](v17, -1, -1);
      MEMORY[0x1BFB45F20](v16, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1BE04D0E4();
    v20 = sub_1BE04D204();
    v21 = sub_1BE052C54();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BD026000, v20, v21, "Launch App Clip URL", v22, 2u);
      MEMORY[0x1BFB45F20](v22, -1, -1);
    }

    v8 = v11;
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1BD1E21DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1E2218(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD1E2280(void *a1, void *a2)
{
  v5 = *(sub_1BE04AA64() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD1E19EC(a1, a2, v6, v7);
}

void sub_1BD1E2304()
{
  sub_1BE04AA64();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  sub_1BD1E1D58(v1, v2, v3);
}

uint64_t sub_1BD1E236C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD1E23EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  KeyPath = swift_getKeyPath();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE50);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE58) + 36));
  *v12 = KeyPath;
  v12[1] = a2;
  sub_1BE048964();
  sub_1BE050384();
  v13 = sub_1BE050354();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = sub_1BE0503B4();
  sub_1BD0DE53C(v9, &qword_1EBD49130);
  v15 = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE60) + 36));
  *v16 = v15;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE68);
  v19 = a3 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = 1;
  *(v19 + 16) = 0;
  return result;
}

uint64_t sub_1BD1E25F4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051384();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051584();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[10];
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v79 = v128;
  v80 = v126;
  v77 = v131;
  v78 = v130;
  v178 = 1;
  v177 = v127;
  v176 = v129;
  v11 = *(a1 + 8);
  v76 = v10 * 0.15;
  if (v11 && (a1[11] & 1) != 0)
  {
    *v125 = a1[7];
    *(&v125[0] + 1) = v11;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v72 = sub_1BE0506C4();
    v68 = v12;
    v14 = v13;
    v16 = v15;
    if (*(a1 + 12) == 2)
    {
      v17 = sub_1BE051424();
    }

    else
    {
      v17 = sub_1BE0513F4();
    }

    v19 = v17;
    v20 = *(a1 + 4);
    v18 = v10 * 0.42;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v21 = v14 & 1;
    LOBYTE(v99) = v14 & 1;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v22 = v133;
    v66 = v134;
    v67 = v132;
    v23 = v135;
    v64 = v137;
    v65 = v136;
    LOBYTE(v81[0]) = 1;
    LOBYTE(v121[0]) = v133;
    LOBYTE(v159) = v135;
    *&v93[0] = v72;
    *(&v93[0] + 1) = v68;
    LOBYTE(v93[1]) = v21;
    *(&v93[1] + 1) = v16;
    *&v93[2] = v19;
    *(&v93[2] + 1) = v20;
    v93[3] = v110;
    v93[4] = v111;
    v123[1] = v93[1];
    v123[0] = v93[0];
    v123[2] = v93[2];
    v123[3] = v110;
    v93[5] = v112;
    LOWORD(v94) = 1;
    v123[4] = v111;
    v123[5] = v112;
    LOWORD(v123[6]) = 1;
    *&v122[0] = v72;
    *(&v122[0] + 1) = v68;
    LOBYTE(v122[1]) = v21;
    *(&v122[1] + 1) = v16;
    *&v122[2] = v19;
    *(&v122[2] + 1) = v20;
    v122[5] = v112;
    v122[4] = v111;
    v122[3] = v110;
    LOWORD(v122[6]) = 1;
    sub_1BD0DE19C(v93, v125, &qword_1EBD3CDD8);
    sub_1BD0DE53C(v122, &qword_1EBD3CDD8);
    v125[4] = v123[4];
    v125[5] = v123[5];
    v125[0] = v123[0];
    v125[1] = v123[1];
    v125[3] = v123[3];
    v125[2] = v123[2];
    v125[6] = *&v123[6];
    LOBYTE(v125[7]) = 1;
    *(&v125[7] + 1) = v67;
    LOBYTE(v125[8]) = v22;
    *(&v125[8] + 1) = v66;
    LOBYTE(v125[9]) = v23;
    *(&v125[9] + 1) = v65;
    *&v125[10] = v64;
    PKEdgeInsetsMake(v125, v24);
    v173 = v125[8];
    v174 = v125[9];
    v175 = *&v125[10];
    v169 = v125[4];
    v170 = v125[5];
    v172 = v125[7];
    v171 = v125[6];
    v165 = v125[0];
    v166 = v125[1];
    v168 = v125[3];
    v167 = v125[2];
  }

  else
  {
    sub_1BD1E49FC(&v165);
    v18 = v10 * 0.42;
  }

  v25 = *a1;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v124[6] = v138;
  *&v124[22] = v139;
  *&v124[38] = v140;
  v26 = *(a1 + 9);
  v164 = v26;
  if (v26)
  {
    v72 = *&v18;
    v68 = v25;
    if (v11)
    {
      sub_1BD1E4A4C(v125);
      sub_1BE048964();
      sub_1BD0DE19C(&v164, v123, &qword_1EBD3CDB8);
    }

    else
    {
      sub_1BE048964();
      sub_1BD0DE19C(&v164, v125, &qword_1EBD3CDB8);
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v66 = v143;
      v67 = v141;
      v64 = v146;
      v65 = v145;
      LOBYTE(v110) = 1;
      LOBYTE(v99) = v142;
      LOBYTE(v81[0]) = v144;
      v28 = [objc_opt_self() systemGray2Color];
      v29 = sub_1BE0511C4();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      *&v84[6] = v147;
      *&v84[22] = v148;
      *&v84[38] = v149;
      v30 = v110;
      v31 = v99;
      LODWORD(v63) = LOBYTE(v81[0]);
      *&v93[0] = v29;
      WORD4(v93[0]) = 256;
      *(v93 + 10) = *v84;
      *(&v93[1] + 10) = *&v84[16];
      *(&v93[2] + 10) = *&v84[32];
      *(&v93[3] + 1) = *(&v149 + 1);
      v122[3] = v93[3];
      v122[2] = v93[2];
      v122[1] = v93[1];
      v122[0] = v93[0];
      *&v123[0] = v29;
      WORD4(v123[0]) = 256;
      *(&v123[3] + 1) = *(&v149 + 1);
      *(&v123[2] + 10) = *&v84[32];
      *(&v123[1] + 10) = *&v84[16];
      *(v123 + 10) = *v84;
      sub_1BD0DE19C(v93, v125, &qword_1EBD3CDC0);
      sub_1BD0DE53C(v123, &qword_1EBD3CDC0);
      *&v125[0] = 0;
      BYTE8(v125[0]) = v30;
      *&v125[1] = v67;
      BYTE8(v125[1]) = v31;
      *&v125[2] = v66;
      BYTE8(v125[2]) = v63;
      *&v125[3] = v65;
      *(&v125[3] + 1) = v64;
      v125[4] = v122[0];
      v125[5] = v122[1];
      v125[6] = v122[2];
      v125[7] = v122[3];
      PKEdgeInsetsMake(v125, v32);
    }

    v89 = v125[4];
    v90 = v125[5];
    v91 = v125[6];
    v92 = v125[7];
    v85 = v125[0];
    v86 = v125[1];
    v87 = v125[2];
    v88 = v125[3];
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v66 = v152;
    v67 = v150;
    v64 = v155;
    v65 = v154;
    LOBYTE(v121[0]) = 1;
    LOBYTE(v159) = v151;
    v109 = v153;
    v33 = sub_1BE051CD4();
    v62 = v34;
    v63 = v33;
    v35 = v26;
    sub_1BE051564();
    v37 = v73;
    v36 = v74;
    v38 = v75;
    (*(v74 + 104))(v73, *MEMORY[0x1E6981630], v75);
    v61 = sub_1BE0515E4();

    (*(v36 + 8))(v37, v38);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v125[0]) = 1;
    *&v82[6] = v156;
    *&v82[22] = v157;
    *&v82[38] = v158;
    if (*(a1 + 12) == 2)
    {
      (*(v70 + 104))(v69, *MEMORY[0x1E69814D8], v71);
      sub_1BE0514A4();
      v39 = sub_1BE051454();
      v40 = 20.0;
    }

    else
    {
      sub_1BE0513F4();
      v39 = sub_1BE051454();
      v40 = 5.0;
    }

    v81[4] = v89;
    v81[5] = v90;
    v81[6] = v91;
    v81[7] = v92;
    v81[0] = v85;
    v81[1] = v86;
    v81[2] = v87;
    v81[3] = v88;
    *(v101 + 2) = *v82;
    LODWORD(v73) = LOBYTE(v121[0]);
    LODWORD(v74) = LOBYTE(v159);
    LODWORD(v75) = v109;
    v41 = v62;
    v42 = v63;
    *&v99 = v63;
    *(&v99 + 1) = v62;
    v43 = v61;
    v100 = v61;
    LOWORD(v101[0]) = 1;
    *(&v101[1] + 2) = *&v82[16];
    *(&v101[2] + 2) = *&v82[32];
    *&v101[3] = *&v82[46];
    BYTE8(v101[3]) = 1;
    HIDWORD(v101[3]) = *&v83[3];
    *(&v101[3] + 9) = *v83;
    *&v102 = v39;
    *(&v102 + 1) = v40;
    v103 = 0uLL;
    sub_1BD0DE19C(v81, v125, &qword_1EBD3CDC8);
    sub_1BD0DE19C(&v99, v125, &qword_1EBD3CDD0);
    sub_1BD0DE53C(&v164, &qword_1EBD3CDB8);
    v114 = v101[2];
    v115 = v101[3];
    v116 = v102;
    v117 = v103;
    v110 = v99;
    v111 = v100;
    v112 = v101[0];
    v113 = v101[1];
    *(&v93[2] + 2) = *v82;
    *&v93[0] = v42;
    *(&v93[0] + 1) = v41;
    v93[1] = v43;
    LOWORD(v93[2]) = 1;
    *(&v93[3] + 2) = *&v82[16];
    *(&v93[4] + 2) = *&v82[32];
    *&v93[5] = *&v82[46];
    BYTE8(v93[5]) = 1;
    *(&v93[5] + 9) = *v83;
    HIDWORD(v93[5]) = *&v83[3];
    *&v94 = v39;
    *(&v94 + 1) = v40;
    v95 = 0uLL;
    sub_1BD0DE53C(v93, &qword_1EBD3CDD0);
    v122[4] = v89;
    v122[5] = v90;
    v122[6] = v91;
    v122[7] = v92;
    v122[0] = v85;
    v122[1] = v86;
    v122[2] = v87;
    v122[3] = v88;
    sub_1BD0DE53C(v122, &qword_1EBD3CDC8);
    v123[4] = v89;
    v123[5] = v90;
    v123[6] = v91;
    v123[7] = v92;
    v123[0] = v85;
    v123[1] = v86;
    v123[2] = v87;
    v123[3] = v88;
    *&v123[8] = 0;
    BYTE8(v123[8]) = v73;
    *&v123[9] = v67;
    BYTE8(v123[9]) = v74;
    *&v123[10] = v66;
    BYTE8(v123[10]) = v75;
    *&v123[11] = v65;
    *(&v123[11] + 1) = v64;
    v123[16] = v114;
    v123[17] = v115;
    v123[18] = v116;
    v123[19] = v117;
    v123[12] = v110;
    v123[13] = v111;
    v123[14] = v112;
    v123[15] = v113;
    PKEdgeInsetsMake(v123, v44);
    memcpy(v125, v123, sizeof(v125));
    v27 = v68;
  }

  else
  {
    sub_1BD1E4A1C(v125);
    sub_1BE048964();
    v27 = v25;
  }

  sub_1BE051CD4();
  sub_1BE04E5E4();
  v75 = v161;
  v76 = v159;
  v109 = 1;
  v108 = v160;
  v107 = v162;
  v45 = v178;
  v46 = v177;
  v47 = v176;
  v104 = v173;
  v105 = v174;
  v106 = v175;
  v101[2] = v169;
  v101[3] = v170;
  v102 = v171;
  v103 = v172;
  v99 = v165;
  v100 = v166;
  v101[0] = v167;
  v101[1] = v168;
  memcpy(v123, v125, sizeof(v123));
  v118 = v173;
  v119 = v174;
  v114 = v169;
  v115 = v170;
  v117 = v172;
  v116 = v171;
  v110 = v165;
  v111 = v166;
  v113 = v168;
  v112 = v167;
  *(v121 + 10) = *v124;
  v48 = v160;
  v49 = v162;
  v120 = v175;
  *&v121[0] = v27;
  WORD4(v121[0]) = 1;
  *(&v121[1] + 10) = *&v124[16];
  *(&v121[2] + 10) = *&v124[32];
  *(&v121[3] + 1) = *&v124[46];
  memcpy(v122, v125, sizeof(v122));
  *a2 = 0;
  *(a2 + 8) = v45;
  v50 = v79;
  *(a2 + 16) = v80;
  *(a2 + 24) = v46;
  *(a2 + 32) = v50;
  *(a2 + 40) = v47;
  v51 = v77;
  *(a2 + 48) = v78;
  *(a2 + 56) = v51;
  v52 = v174;
  *(a2 + 192) = v173;
  *(a2 + 208) = v52;
  *(a2 + 224) = v175;
  v53 = v170;
  *(a2 + 128) = v169;
  *(a2 + 144) = v53;
  v54 = v172;
  *(a2 + 160) = v171;
  *(a2 + 176) = v54;
  v55 = v166;
  *(a2 + 64) = v165;
  *(a2 + 80) = v55;
  v56 = v168;
  *(a2 + 96) = v167;
  *(a2 + 112) = v56;
  v57 = v121[1];
  *(a2 + 232) = v121[0];
  *(a2 + 248) = v57;
  v58 = v121[3];
  *(a2 + 264) = v121[2];
  *(a2 + 280) = v58;
  memcpy((a2 + 296), v125, 0x140uLL);
  *(a2 + 616) = 0;
  *(a2 + 624) = 1;
  v59 = v75;
  *(a2 + 632) = v76;
  *(a2 + 640) = v48;
  *(a2 + 648) = v59;
  *(a2 + 656) = v49;
  *(a2 + 664) = v163;
  sub_1BD0DE19C(&v110, v93, &qword_1EBD3CDA0);
  sub_1BD0DE19C(v121, v93, &qword_1EBD3CDA8);
  sub_1BD0DE19C(v122, v93, &qword_1EBD3CDB0);
  sub_1BD0DE53C(v123, &qword_1EBD3CDB0);
  *&v81[0] = v27;
  WORD4(v81[0]) = 1;
  *(v81 + 10) = *v124;
  *(&v81[1] + 10) = *&v124[16];
  *(&v81[2] + 10) = *&v124[32];
  *(&v81[3] + 1) = *&v124[46];
  sub_1BD0DE53C(v81, &qword_1EBD3CDA8);
  v96 = v104;
  v97 = v105;
  v98 = v106;
  v93[4] = v101[2];
  v93[5] = v101[3];
  v94 = v102;
  v95 = v103;
  v93[0] = v99;
  v93[1] = v100;
  v93[2] = v101[0];
  v93[3] = v101[1];
  return sub_1BD0DE53C(v93, &qword_1EBD3CDA0);
}

void *sub_1BD1E34E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13[4] = *(v1 + 64);
  v13[5] = v3;
  v14 = *(v1 + 96);
  v4 = *(v1 + 16);
  v13[0] = *v1;
  v13[1] = v4;
  v5 = *(v1 + 48);
  v13[2] = *(v1 + 32);
  v13[3] = v5;
  v6 = sub_1BE04F504();
  v12 = 0;
  sub_1BD1E25F4(v13, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_1BD0DE19C(__dst, v9, &qword_1EBD3CD98);
  sub_1BD0DE53C(v16, &qword_1EBD3CD98);
  memcpy(&v11[7], __dst, 0x2A8uLL);
  v7 = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  return memcpy((a1 + 17), v11, 0x2AFuLL);
}

uint64_t DynamicPaymentButtonView.init(type:style:paymentRequest:scale:cardArtImage:interfaceStyle:localizedButtonLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 48) = a7;
  *(a8 + 56) = a3;
  *(a8 + 40) = a6;
  return result;
}

uint64_t DynamicPaymentButtonView.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1BD1E391C;
  a1[1] = v5;
  return sub_1BD1E3924(v10, &v9);
}

double sub_1BD1E369C@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v4 = 140.0;
  }

  else
  {
    v4 = 100.0;
  }

  sub_1BE04E684();
  if (v5 > v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE04E684();
  if (v6 < 40.0)
  {
    v8 = 0.129032258;
LABEL_11:
    v9 = v6 * v8;
    goto LABEL_13;
  }

  if (v6 > 160.0)
  {
    v8 = 0.0371495327;
    goto LABEL_11;
  }

  v9 = (v6 + -40.0) / 120.0 * 0.782634911 + 5.16129032;
LABEL_13:
  if (v7 > 30.0)
  {
    v10 = v7;
  }

  else
  {
    v10 = 30.0;
  }

  v11 = sub_1BE04F7B4();
  v28 = 1;
  v12 = sub_1BE050194();
  sub_1BD1E3F04(a1, __src, v10);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v30, __src, sizeof(v30));
  sub_1BD0DE19C(__dst, v25, &qword_1EBD3CDE0);
  sub_1BD0DE53C(v30, &qword_1EBD3CDE0);
  memcpy(&v27[7], __dst, 0x138uLL);
  v13 = v28;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v14 = sub_1BE051CD4();
  v16 = v15;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDE8) + 36));
  *v17 = v14;
  v17[1] = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDF0);
  sub_1BD1E3978(a1, v17 + *(v18 + 44), v9);
  v19 = sub_1BE051CD4();
  v21 = v20;
  v22 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CDF8) + 36));
  *v22 = v19;
  v22[1] = v21;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = v13;
  *(a2 + 24) = v12;
  memcpy((a2 + 25), v27, 0x13FuLL);
  v23 = *&__src[16];
  *(a2 + 344) = *__src;
  *(a2 + 360) = v23;
  result = *&__src[32];
  *(a2 + 376) = *&__src[32];
  return result;
}

uint64_t sub_1BD1E3978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v70 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE00);
  v66 = *(v68 - 8);
  v6 = MEMORY[0x1EEE9AC00](v68, v5);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v63 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE08);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v69 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v67 = &v60 - v15;
  v16 = sub_1BE04EDE4();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v62 = (&v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = (&v60 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE10);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v65 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v60 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v60 - v32;
  v61 = v16;
  v34 = *(v16 + 20);
  v35 = *MEMORY[0x1E697F468];
  v36 = sub_1BE04F684();
  v37 = *(*(v36 - 8) + 104);
  v37(v22 + v34, v35, v36);
  *v22 = a3;
  v22[1] = a3;
  if (*(a1 + 8) == 3)
  {
    v38 = 2 * (*(a1 + 32) == 1);
  }

  else
  {
    v38 = *(a1 + 8);
  }

  if (v38 == 2)
  {
    v39 = sub_1BE0513F4();
  }

  else
  {
    v39 = sub_1BE051424();
  }

  v40 = v39;
  sub_1BD1E4AAC(v22, v30);
  *&v30[*(v23 + 52)] = v40;
  *&v30[*(v23 + 56)] = 256;
  v41 = v33;
  sub_1BD0DE204(v30, v33, &qword_1EBD3CE10);
  if (v38 == 1)
  {
    v42 = v62;
    v37(v62 + *(v61 + 20), v35, v36);
    *v42 = a3;
    v42[1] = a3;
    v43 = sub_1BE0513F4();
    sub_1BE04E3F4();
    v44 = v64;
    sub_1BD1E4B10(v42, v64);
    v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE20) + 36);
    v46 = v72;
    *v45 = v71;
    *(v45 + 16) = v46;
    *(v45 + 32) = v73;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE28);
    *(v44 + *(v47 + 52)) = v43;
    *(v44 + *(v47 + 56)) = 256;
    v48 = sub_1BE051CD4();
    v50 = v49;
    sub_1BD1E4B74(v42);
    v51 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE30) + 36));
    *v51 = v48;
    v51[1] = v50;
    v52 = v63;
    sub_1BD0DE204(v44, v63, &qword_1EBD3CE00);
    v53 = v67;
    sub_1BD0DE204(v52, v67, &qword_1EBD3CE00);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v67;
  }

  (*(v66 + 56))(v53, v54, 1, v68);
  v55 = v65;
  sub_1BD0DE19C(v41, v65, &qword_1EBD3CE10);
  v56 = v69;
  sub_1BD0DE19C(v53, v69, &qword_1EBD3CE08);
  v57 = v70;
  sub_1BD0DE19C(v55, v70, &qword_1EBD3CE10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CE18);
  sub_1BD0DE19C(v56, v57 + *(v58 + 48), &qword_1EBD3CE08);
  sub_1BD0DE53C(v53, &qword_1EBD3CE08);
  sub_1BD0DE53C(v41, &qword_1EBD3CE10);
  sub_1BD0DE53C(v56, &qword_1EBD3CE08);
  return sub_1BD0DE53C(v55, &qword_1EBD3CE10);
}

uint64_t sub_1BD1E3F04@<X0>(__int128 *a1@<X0>, void *a2@<X8>, double a3@<D1>)
{
  v5 = *(a1 + 3);
  if (v5)
  {
    v6 = a1[1];
    v71 = *a1;
    v72 = v6;
    v7 = a1[3];
    v73 = a1[2];
    v74 = v7;
    v8 = v5;
    sub_1BD1E42CC(v8, &v80, a3);

    v10 = *(&v80 + 1);
    v9 = v80;
    v12 = *(&v81 + 1);
    v11 = v81;
    v29 = v83;
    v30 = v82;
    v28 = *(&v83 + 1);
    v26 = *(&v84 + 1);
    v27 = v84;
    v25 = v85;
    v23 = *(&v82 + 1);
    v24 = *(&v85 + 1);
    v22 = v86;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v29 = 0;
    v30 = 0;
    v23 = 0;
    v24 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    v22 = 0;
  }

  v13 = a1[1];
  v71 = *a1;
  v72 = v13;
  v14 = a1[3];
  v73 = a1[2];
  v74 = v14;
  sub_1BD1E4468(&v80, a3);
  v15 = a1[1];
  v71 = *a1;
  v72 = v15;
  v16 = a1[3];
  v73 = a1[2];
  v74 = v16;
  sub_1BD1E45E0(a3 * 0.42 * 2.43333333, a3 * 0.42);
  v18 = v17;
  v19 = *(a1 + 1);
  if (v19 == 3)
  {
    v19 = 2 * (*(a1 + 4) == 1);
  }

  v36 = v84;
  v37 = v85;
  v32 = v80;
  v33 = v81;
  v34 = v82;
  v35 = v83;
  *&v41 = v9;
  *(&v41 + 1) = v10;
  *&v42 = v11;
  *(&v42 + 1) = v12;
  *&v43 = v30;
  *(&v43 + 1) = v23;
  *&v44 = v29;
  *(&v44 + 1) = v28;
  *&v45 = v27;
  *(&v45 + 1) = v26;
  *&v46 = v25;
  *(&v46 + 1) = v24;
  __src[0] = v41;
  __src[1] = v42;
  __src[4] = v45;
  __src[5] = v46;
  __src[2] = v43;
  __src[3] = v44;
  v48[0] = v80;
  v48[1] = v81;
  v48[4] = v84;
  v48[5] = v85;
  v48[2] = v82;
  v48[3] = v83;
  *(&__src[8] + 8) = v82;
  v38 = v86;
  v40 = 1;
  v39 = 1;
  v47 = v22;
  *&__src[6] = v22;
  v49 = v86;
  *(&__src[7] + 8) = v81;
  *(&__src[6] + 8) = v80;
  *(&__src[12] + 1) = v86;
  *(&__src[11] + 8) = v85;
  *(&__src[10] + 8) = v84;
  *(&__src[9] + 8) = v83;
  *&v51 = 0;
  v50 = v17;
  BYTE8(v51) = 1;
  v52 = 0x4024000000000000uLL;
  LOBYTE(v53) = 1;
  v55 = 0uLL;
  v54 = 0;
  *&v56 = a3;
  BYTE8(v56) = 0;
  v57 = v19;
  __src[13] = v17;
  __src[14] = v51;
  *&__src[19] = v19;
  __src[17] = 0uLL;
  __src[18] = v56;
  __src[15] = 0x4024000000000000uLL;
  __src[16] = v53;
  memcpy(a2, __src, 0x138uLL);
  v58[2] = 0;
  v58[0] = v18;
  v58[1] = 0;
  v59 = 1;
  v60 = 0x4024000000000000;
  v61 = 0;
  v62 = 1;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v66 = a3;
  v67 = 0;
  v68 = v19;
  sub_1BD0DE19C(&v41, &v71, &qword_1EBD3CE38);
  sub_1BD1E4BD0(v48, &v71);
  sub_1BD1E4BD0(&v50, &v71);
  sub_1BD1E4C08(v58);
  v69[4] = v36;
  v69[5] = v37;
  v70 = v38;
  v69[0] = v32;
  v69[1] = v33;
  v69[2] = v34;
  v69[3] = v35;
  sub_1BD1E4C08(v69);
  *&v71 = v9;
  *(&v71 + 1) = v10;
  *&v72 = v11;
  *(&v72 + 1) = v12;
  *&v73 = v30;
  *(&v73 + 1) = v23;
  *&v74 = v29;
  *(&v74 + 1) = v28;
  v75 = v27;
  v76 = v26;
  v77 = v25;
  v78 = v24;
  v79 = v22;
  return sub_1BD0DE53C(&v71, &qword_1EBD3CE38);
}

id sub_1BD1E42CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[4];
  v10 = v3[5];
  v9 = v3[6];
  if (a3 >= 44.0)
  {
    v12 = a3 * 0.43;
    v13 = 20.0;
  }

  else
  {
    v11 = 14.0;
    if (a3 < 30.0)
    {
      goto LABEL_8;
    }

    v12 = a3 * 0.46;
    v13 = 17.0;
  }

  if (v12 <= v13)
  {
    v11 = v12;
  }

  else
  {
    v11 = v13;
  }

LABEL_8:
  PKSizeRoundToPixelWithScale();
  sub_1BD1E45E0(v14, v15);
  v17 = v16;
  PKPassFrontFaceContentSize();
  PKSizeAspectFit();
  if (v9)
  {
    v20 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v20 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v20 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = 2 * (v8 == 1);
  if (v6 != 3)
  {
    v22 = v6;
  }

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  *(a2 + 56) = v10;
  *(a2 + 64) = v9;
  *(a2 + 72) = a1;
  *(a2 + 80) = a3;
  *(a2 + 88) = v21;
  *(a2 + 96) = v22;
  sub_1BE048C84();

  return a1;
}

uint64_t sub_1BD1E4468@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v5 = v2[1];
  v6 = v2[4];
  v8 = v2[5];
  v7 = v2[6];
  if (a2 >= 44.0)
  {
    v10 = a2 * 0.43;
    v11 = 20.0;
  }

  else
  {
    v9 = 14.0;
    if (a2 < 30.0)
    {
      goto LABEL_8;
    }

    v10 = a2 * 0.46;
    v11 = 17.0;
  }

  if (v10 <= v11)
  {
    v9 = v10;
  }

  else
  {
    v9 = v11;
  }

LABEL_8:
  PKSizeRoundToPixelWithScale();
  sub_1BD1E45E0(v12, v13);
  if (v7)
  {
    v15 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v15 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v16 = v15 != 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = 2 * (v6 == 1);
  if (v5 != 3)
  {
    v17 = v5;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v14;
  *(a1 + 24) = 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = v8;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;

  return sub_1BE048C84();
}

void sub_1BD1E45E0(CGFloat a1, CGFloat a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = PKPassKitUIBundle();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE052404();
    v14 = sub_1BE052404();
    v15 = [v12 URLForResource:v13 withExtension:v14];

    if (v15)
    {
      sub_1BE04A9F4();

      v16 = sub_1BE04A9C4();
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v16 = 0;
    }

    v17 = PKUIImageFromPDF(v16, a1, a2, v10);

    if (v17)
    {

      sub_1BE051544();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD1E47D4@<X0>(double (**a1)@<D0>(uint64_t@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1BD1E4F3C;
  a1[1] = v5;
  return sub_1BD1E3924(v10, &v9);
}

uint64_t sub_1BD1E4860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BD1E48BC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1BD1E4930(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1BD1E4978(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_1BD1E49FC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1BD1E4A1C(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1BD1E4A4C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t objectdestroyTm_10()
{

  return swift_deallocObject();
}

uint64_t sub_1BD1E4AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04EDE4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E4B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04EDE4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E4B74(uint64_t a1)
{
  v2 = sub_1BE04EDE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD1E4C38(uint64_t *a1, int a2)
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

uint64_t sub_1BD1E4C80(uint64_t result, int a2, int a3)
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

unint64_t sub_1BD1E4CE8()
{
  result = qword_1EBD3CE70;
  if (!qword_1EBD3CE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE68);
    sub_1BD1E4DA0();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE70);
  }

  return result;
}

unint64_t sub_1BD1E4DA0()
{
  result = qword_1EBD3CE78;
  if (!qword_1EBD3CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE60);
    sub_1BD1E4E58();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE78);
  }

  return result;
}

unint64_t sub_1BD1E4E58()
{
  result = qword_1EBD3CE80;
  if (!qword_1EBD3CE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CE58);
    sub_1BD0DE4F4(&qword_1EBD3CE88, &qword_1EBD3CE50);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE80);
  }

  return result;
}

id BankConnectAccountCredentialsViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAccountCredentialsViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectAccountCredentialsViewControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAccountCredentialsViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AccountPaymentInformation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE049D04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s9PassKitUI51BankConnectAccountCredentialsViewControllerProviderC04makehI007accountG00lG5TitleSo06UIViewI0CSaySo27FKAccountPaymentInformationCG_SStFZ_0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v54 - v10;
  v12 = sub_1BE049D04();
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v71 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v16 = 0;
    v69 = a1 & 0xFFFFFFFFFFFFFF8;
    v70 = a1 & 0xC000000000000001;
    v60 = *MEMORY[0x1E6967BD0];
    v63 = (v59 + 104);
    v66 = (v59 + 48);
    v67 = (v59 + 56);
    v58 = *MEMORY[0x1E6967BE0];
    v65 = (v59 + 32);
    v72 = MEMORY[0x1E69E7CC0];
    v57 = *MEMORY[0x1E6967BD8];
    v62 = a1;
    v61 = v11;
    v64 = v12;
    v68 = i;
    while (v70)
    {
      v17 = MEMORY[0x1BFB40900](v16, a1);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

LABEL_9:
      v19 = v17;
      v20 = [v19 ach];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 accountNumber];
        v23 = sub_1BE052434();
        v25 = v24;

        v26 = [v21 routingNumber];
        v27 = sub_1BE052434();
        v29 = v28;

        *v8 = v23;
        v8[1] = v25;
        v11 = v61;
        a1 = v62;
        v8[2] = v27;
        v8[3] = v29;
        v12 = v64;
        (*v63)(v8, v60, v64);
      }

      else
      {
        v30 = [v19 scan];
        if (!v30)
        {
          v45 = [v19 iban];
          if (v45)
          {
            v46 = v45;
            v47 = sub_1BE052434();
            v49 = v48;

            *v8 = v47;
            v8[1] = v49;
            v12 = v64;
            (*v63)(v8, v57, v64);
            v50 = 0;
          }

          else
          {
            v50 = 1;
          }

          (*v67)(v8, v50, 1, v12);
          goto LABEL_14;
        }

        v31 = v30;
        v32 = [v30 accountNumber];
        v33 = sub_1BE052434();
        v35 = v34;

        v36 = [v31 sortCode];
        v37 = sub_1BE052434();
        v39 = v38;

        *v8 = v33;
        v8[1] = v35;
        v12 = v64;
        a1 = v62;
        v8[2] = v37;
        v8[3] = v39;
        v11 = v61;
        (*v63)(v8, v58, v12);
      }

      (*v67)(v8, 0, 1, v12);
LABEL_14:
      sub_1BD1E5814(v8, v11);

      if ((*v66)(v11, 1, v12) == 1)
      {
        sub_1BD1E5884(v11);
      }

      else
      {
        v40 = *v65;
        (*v65)(v71, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1BD1D7C9C(0, *(v72 + 2) + 1, 1, v72);
        }

        v42 = *(v72 + 2);
        v41 = *(v72 + 3);
        if (v42 >= v41 >> 1)
        {
          v72 = sub_1BD1D7C9C(v41 > 1, v42 + 1, 1, v72);
        }

        v43 = v71;
        v44 = v72;
        *(v72 + 2) = v42 + 1;
        v40(&v44[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v42], v43, v12);
      }

      ++v16;
      if (v18 == v68)
      {
        goto LABEL_30;
      }
    }

    if (v16 >= *(v69 + 16))
    {
      goto LABEL_27;
    }

    v17 = *(a1 + 8 * v16 + 32);
    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v51 = v56;
  sub_1BE048C84();
  sub_1BD20585C(v72, v55, v51, &v75);

  v73 = v75;
  v74[0] = v76[0];
  *(v74 + 9) = *(v76 + 9);
  v52 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA8));
  return sub_1BE04F894();
}

unint64_t sub_1BD1E5770()
{
  result = qword_1EBD3CE90;
  if (!qword_1EBD3CE90)
  {
    sub_1BE049D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CE90);
  }

  return result;
}

unint64_t sub_1BD1E57C8()
{
  result = qword_1EBD3CE98;
  if (!qword_1EBD3CE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3CE98);
  }

  return result;
}

uint64_t sub_1BD1E5814(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD1E5884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD1E59C4(void (*a1)(unint64_t, unint64_t, void, uint64_t))
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_manager) viewControllerForStep_];
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController);
    *(v1 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController) = v3;
    v5 = v3;

    a1(0xD000000000000024, 0x80000001BE11D3F0, 0, 0);
  }

  else
  {
    a1(0xD000000000000021, 0x80000001BE11D3C0, 0, 1);
  }
}

uint64_t sub_1BD1E5AD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD1E5B10(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD1E5BAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD1E5C80(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_manager] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_step] = a2;
  v12 = 0;
  v13 = 0xE000000000000000;
  v7 = a1;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000025, 0x80000001BE11D390);
  v11 = a2;
  type metadata accessor for FKBankConnectAuthorizationStepType(0);
  sub_1BE053974();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI36BankConnectAuthorizationStepFlowItem_identifier];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD1E5D94()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_loadView);
  v1 = [v0 explanationView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v0 setShowDoneButton_];
  [v0 setShowCancelButton_];
  v3 = [objc_opt_self() sharedInstance];
  v4 = *&v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential];
  v5 = [v4 configuration];
  if (!v5)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 provisioningTemplateIdentifier];

  if (v7)
  {
    v8 = sub_1BE052434();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_1BD1E60E8(0xD000000000000017, 0x80000001BE11D520, v3, v8, v10);
  v11 = sub_1BE052404();

  [v2 setTitleText_];

  sub_1BD1E60E8(0xD000000000000016, 0x80000001BE11D540, v3, v8, v10);
  v12 = sub_1BE052404();

  [v2 setBodyText_];

  v13 = [v2 dockView];
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 primaryButton];

  if (!v15)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_1BD1E60E8(0x45554E49544E4F43, 0xE800000000000000, v3, v8, v10);

  v16 = sub_1BE052404();

  [v15 setTitle:v16 forStates:0];

  if (v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_allowPartnerAppFlow] == 1)
  {
    sub_1BD1E62A8();
  }

  v17 = [v4 configuration];
  v18 = [objc_allocWithZone(PKCredentialPairingExplanationHeaderView) initWithConfiguration_];

  [v2 setHeroView_];
  v19 = [objc_opt_self() pk:8 privacyLinkForContext:?];
  [v0 setPrivacyLinkController_];
}

id sub_1BD1E60E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v13 = [a3 provisioningString:v12 templateIdentifier:a5];

  if (v13)
  {
    v14 = sub_1BE052434();

    return v14;
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();

      (*(v8 + 8))(v11, v7);
      return v17;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BD1E62A8()
{
  v1 = [v0 explanationView];
  if (!v1)
  {
    return;
  }

  v16 = v1;
  v2 = [v1 dockView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 footerView];

  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = [v4 skipCardButton];

  if (v5)
  {
    v6 = sub_1BE052404();
    [v5 setTitle:v6 forState:0];

    [v5 pkui:1 updateConfigurationShowingActivityIndicator:?];
    [v5 addTarget:v0 action:sel_skipCardButtonPressed forControlEvents:0x2000];
    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      v9 = [*&v0[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_credential] configuration];
      if (v9)
      {
        v10 = v9;
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = v16;
        v12[4] = v5;
        aBlock[4] = sub_1BD1E83E0;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD1E74A8;
        aBlock[3] = &block_descriptor_22;
        v13 = _Block_copy(aBlock);
        v14 = v16;
        v15 = v5;

        [v8 canAddCarKeyPassWithConfiguration:v10 completion:v13];
        _Block_release(v13);

        return;
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1BD1E6600(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE051FA4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v81 = &v77 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = MEMORY[0x1E69E7CC0];
  if (!Strong)
  {
    goto LABEL_86;
  }

  v23 = Strong;
  if (!a2)
  {

LABEL_86:
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v73 = sub_1BE052D54();
    v74 = swift_allocObject();
    *(v74 + 16) = a5;
    v90 = sub_1BD1E83EC;
    v91 = v74;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1BD126964;
    v89 = &block_descriptor_10_0;
    v75 = _Block_copy(&aBlock);
    v76 = a5;

    sub_1BE051F74();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v18, v13, v75);
    _Block_release(v75);

    (*(v10 + 8))(v13, v9);
    (*(v15 + 8))(v18, v14);
    return;
  }

  v24 = a2;
  v25 = [v24 associatedApplicationIdentifiers];
  if (!v25)
  {

    goto LABEL_86;
  }

  v79 = v23;
  v80 = v24;
  v78 = a5;
  v26 = v25;
  v27 = sub_1BE052744();

  v28 = *(v27 + 16);
  if (!v28)
  {

    a5 = v78;
    goto LABEL_86;
  }

  v29 = 0;
  v85 = MEMORY[0x1E69E7CC0];
  v83 = &aBlock + 1;
  while (v29 != v28)
  {
    if (v29 >= *(v27 + 16))
    {
      __break(1u);
LABEL_89:
      sub_1BE048C84();
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
      return;
    }

    v30 = (v27 + 32 + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = HIBYTE(v31) & 0xF;
    v34 = v32 & 0xFFFFFFFFFFFFLL;
    if ((v31 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v31) & 0xF;
    }

    else
    {
      v35 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      goto LABEL_89;
    }

    if ((v31 & 0x1000000000000000) == 0)
    {
      if ((v31 & 0x2000000000000000) != 0)
      {
        aBlock = v32;
        v87 = v31 & 0xFFFFFFFFFFFFFFLL;
        if (v32 == 43)
        {
          if (!v33)
          {
            goto LABEL_91;
          }

          if (--v33)
          {
            v38 = 0;
            v46 = v83;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              if (!is_mul_ok(v38, 0xAuLL))
              {
                break;
              }

              v41 = __CFADD__(10 * v38, v47);
              v38 = 10 * v38 + v47;
              if (v41)
              {
                break;
              }

              ++v46;
              if (!--v33)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v32 == 45)
        {
          if (!v33)
          {
            goto LABEL_93;
          }

          if (--v33)
          {
            v38 = 0;
            v42 = v83;
            while (1)
            {
              v43 = *v42 - 48;
              if (v43 > 9)
              {
                break;
              }

              if (!is_mul_ok(v38, 0xAuLL))
              {
                break;
              }

              v41 = 10 * v38 >= v43;
              v38 = 10 * v38 - v43;
              if (!v41)
              {
                break;
              }

              ++v42;
              if (!--v33)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v33)
        {
          v38 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v50 = *p_aBlock - 48;
            if (v50 > 9)
            {
              break;
            }

            if (!is_mul_ok(v38, 0xAuLL))
            {
              break;
            }

            v41 = __CFADD__(10 * v38, v50);
            v38 = 10 * v38 + v50;
            if (v41)
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v33)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        if ((v32 & 0x1000000000000000) != 0)
        {
          v36 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v36 = sub_1BE0538B4();
        }

        v37 = *v36;
        if (v37 == 43)
        {
          if (v34 < 1)
          {
            goto LABEL_92;
          }

          v33 = v34 - 1;
          if (v34 != 1)
          {
            v38 = 0;
            if (!v36)
            {
              goto LABEL_62;
            }

            v44 = v36 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              if (!is_mul_ok(v38, 0xAuLL))
              {
                break;
              }

              v41 = __CFADD__(10 * v38, v45);
              v38 = 10 * v38 + v45;
              if (v41)
              {
                break;
              }

              ++v44;
              if (!--v33)
              {
                goto LABEL_71;
              }
            }
          }
        }

        else if (v37 == 45)
        {
          if (v34 < 1)
          {
            goto LABEL_94;
          }

          v33 = v34 - 1;
          if (v34 != 1)
          {
            v38 = 0;
            if (v36)
            {
              v39 = v36 + 1;
              while (1)
              {
                v40 = *v39 - 48;
                if (v40 > 9)
                {
                  goto LABEL_70;
                }

                if (!is_mul_ok(v38, 0xAuLL))
                {
                  goto LABEL_70;
                }

                v41 = 10 * v38 >= v40;
                v38 = 10 * v38 - v40;
                if (!v41)
                {
                  goto LABEL_70;
                }

                ++v39;
                if (!--v33)
                {
                  goto LABEL_71;
                }
              }
            }

LABEL_62:
            LOBYTE(v33) = 0;
LABEL_71:
            v84 = v33;
            v51 = v33;
            sub_1BE048C84();
            if (v51)
            {
              goto LABEL_90;
            }

            goto LABEL_72;
          }
        }

        else
        {
          if (!v34)
          {
            goto LABEL_70;
          }

          v38 = 0;
          if (!v36)
          {
            goto LABEL_62;
          }

          while (1)
          {
            v48 = *v36 - 48;
            if (v48 > 9)
            {
              break;
            }

            if (!is_mul_ok(v38, 0xAuLL))
            {
              break;
            }

            v41 = __CFADD__(10 * v38, v48);
            v38 = 10 * v38 + v48;
            if (v41)
            {
              break;
            }

            ++v36;
            if (!--v34)
            {
              goto LABEL_62;
            }
          }
        }
      }

LABEL_70:
      v38 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_71;
    }

    swift_bridgeObjectRetain_n();
    v38 = sub_1BD1E78BC(v32, v31, 10);
    v55 = v54;

    if (v55)
    {
      goto LABEL_90;
    }

LABEL_72:
    ++v29;
    v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];

    if (v52)
    {
      MEMORY[0x1BFB3F7A0](v53);
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      v82 = v85;
    }
  }

  v56 = sub_1BE04AA64();
  v57 = *(v56 - 8);
  v58 = v81;
  (*(v57 + 56))(v81, 1, 1, v56);
  sub_1BD0E5E8C(0, &qword_1EBD3D270);
  v59 = sub_1BE052724();

  v60 = 0;
  if ((*(v57 + 48))(v58, 1, v56) != 1)
  {
    v60 = sub_1BE04A9C4();
    (*(v57 + 8))(v58, v56);
  }

  v61 = [objc_allocWithZone(PKLinkedApplication) initWithStoreIDs:v59 defaultLaunchURL:v60];

  v62 = OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication;
  v63 = v79;
  v64 = *&v79[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication];
  *&v79[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication] = v61;

  v65 = *&v63[v62];
  if (v65)
  {
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = swift_allocObject();
    v68 = v78;
    v67[2] = v66;
    v67[3] = v68;
    v67[4] = a6;
    v90 = sub_1BD1E843C;
    v91 = v67;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1BD126964;
    v89 = &block_descriptor_19_0;
    v69 = _Block_copy(&aBlock);
    v70 = v65;
    v71 = v68;
    v72 = a6;

    [v70 reloadApplicationStateIfNecessaryWithCompletion_];

    _Block_release(v69);
  }

  else
  {
  }
}

void sub_1BD1E6F84(void *a1)
{
  v1 = [a1 dockView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 footerView];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v3 setSkipCardButton_];
}

void sub_1BD1E7018(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v38 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v15 = Strong;
  if ([Strong state] != 1)
  {

LABEL_9:
    v29 = [a2 dockView];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 footerView];

      if (v31)
      {
        [v31 setSkipCardButton_];
LABEL_20:

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = [a2 dockView];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  v18 = [v16 primaryButton];

  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = a3;
  v44 = a2;
  v19 = *(v6 + 104);
  v42 = *MEMORY[0x1E69B8038];
  v41 = v19;
  v19(v13);
  v20 = PKPassKitBundle();
  if (!v20)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v20;
  sub_1BE04B6F4();

  v39 = *(v6 + 8);
  v40 = v6 + 8;
  v39(v13, v5);
  v22 = sub_1BE052404();

  [v18 setTitle:v22 forStates:0];

  [v15 isInstalled];
  v41(v10, v42, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BE0B69E0;
  v24 = [v15 displayName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1BE052434();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(v23 + 56) = MEMORY[0x1E69E6158];
  *(v23 + 64) = sub_1BD110550();
  v32 = 0x72656E74726150;
  if (v28)
  {
    v32 = v26;
  }

  v33 = 0xE700000000000000;
  if (v28)
  {
    v33 = v28;
  }

  *(v23 + 32) = v32;
  *(v23 + 40) = v33;
  sub_1BE04B714();

  v39(v10, v5);
  v34 = v43;
  [v43 pkui:0 updateConfigurationShowingActivityIndicator:?];
  v35 = sub_1BE052404();
  [v34 setTitle:v35 forState:0];

  v36 = [v44 dockView];
  if (!v36)
  {
    goto LABEL_26;
  }

  v37 = v36;
  v31 = [v36 footerView];

  if (v31)
  {

    [v31 setNeedsLayout];

    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
}

void sub_1BD1E74A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_1BE048964();
  v9 = a3;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1BD1E753C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_linkedApplication);
  if (v2)
  {
    v3 = v2;
    if ([v3 state] == 1)
    {
      [v3 openApplication:0 withLaunchOptions:1];
    }
  }
}

void *sub_1BD1E7848(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1BD1E78BC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;
  sub_1BE048C84();
  result = sub_1BE052644();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BD1E7E40();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BE0538B4();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1BD1E7E40()
{
  v0 = sub_1BE052654();
  v4 = sub_1BD1E7EC0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BD1E7EC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1BE0534D4();
    if (!v9 || (v10 = v9, v11 = sub_1BD1E7848(v9, 0), v12 = sub_1BD1E8018(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1BE048C84(), , v12 == v10))
    {
      v13 = sub_1BE052514();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BE052514();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1BE0538B4();
LABEL_4:

  return sub_1BE052514();
}

unint64_t sub_1BD1E8018(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1BD65DD34(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BE0525E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BE0538B4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1BD65DD34(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1BE0525B4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1BD1E8238()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(Strong, &off_1F3B9BBC8, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD1E82EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarHeroViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = Strong + OBJC_IVAR____TtC9PassKitUI27ProvisioningCarHeroFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    memset(v7, 0, sizeof(v7));
    v8 = 2;
    sub_1BD865A00(Strong, &off_1F3B9BBC8, v7, ObjectType, v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1BD12FF7C(v7);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t AccountAutomaticPayments.Step.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

unint64_t sub_1BD1E850C()
{
  result = qword_1EBD3CFA0;
  if (!qword_1EBD3CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CFA0);
  }

  return result;
}

unint64_t sub_1BD1E8594()
{
  result = qword_1EBD3CFA8;
  if (!qword_1EBD3CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3CFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3CFA8);
  }

  return result;
}

unint64_t sub_1BD1E860C()
{
  result = qword_1EBD3CFB8[0];
  if (!qword_1EBD3CFB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBD3CFB8);
  }

  return result;
}

void sub_1BD1E867C()
{
  sub_1BD127BD0(319, &qword_1EBD3D040, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1BD127BD0(319, &unk_1EBD59650, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD1E8784(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 48) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1BD1E88FC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((((((((((v18 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 48) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

double sub_1BD1E8B54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516A4();
  return v1;
}

double sub_1BD1E8BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516C4();
  return v1;
}

double sub_1BD1E8C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516A4();
  return v1;
}

double sub_1BD1E8C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516C4();
  return v1;
}

uint64_t sub_1BD1E8CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050);
  v3 = *(a1 + 16);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051874();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051874();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - v6;
  v8 = sub_1BE04EBD4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v25 - v15;
  sub_1BE051CE4();
  v17 = *(a1 + 24);
  v29 = v3;
  v30 = v17;
  v31 = v27;
  sub_1BE051864();
  v18 = sub_1BD1E8BB4();
  v34[0] = v19;
  v34[1] = v20;
  *&v34[2] = v18;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB3E0D0](v34, v4, &type metadata for WidthGetter, WitnessTable);

  (*(v26 + 8))(v7, v4);
  v22 = sub_1BD1E9CCC();
  v32 = WitnessTable;
  v33 = v22;
  swift_getWitnessTable();
  sub_1BD147308(v13);
  v23 = *(v9 + 8);
  v23(v13, v8);
  sub_1BD147308(v16);
  return (v23)(v16, v8);
}

uint64_t sub_1BD1E9060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050);
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  v50 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1BE051874();
  v51 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v48 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D048);
  v47 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v45 - v20;
  v22 = *(a1 + 40);
  v23 = *(sub_1BE04EDE4() + 20);
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1BE04F684();
  (*(*(v25 - 8) + 104))(&v21[v23], v24, v25);
  *v21 = v22;
  *(v21 + 1) = v22;
  LOBYTE(v24) = sub_1BE0501C4();
  type metadata accessor for AccountPromotionProgressView();
  sub_1BD1E8C18();
  sub_1BE04E1F4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D060) + 36)];
  *v34 = v24;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  v37 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D068) + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v38 = &v21[*(v14 + 36)];
  v39 = v61;
  *v38 = v60;
  *(v38 + 1) = v39;
  *(v38 + 2) = v62;
  sub_1BE051CF4();
  v53 = a2;
  v54 = a3;
  v55 = a1;
  sub_1BE051864();
  v40 = swift_getWitnessTable();
  v41 = v48;
  sub_1BD147308(v11);
  v42 = v51;
  v43 = *(v51 + 8);
  v43(v11, v7);
  v46 = v18;
  sub_1BD0DE19C(v21, v18, &qword_1EBD3D048);
  v59[0] = v18;
  (*(v42 + 16))(v11, v41, v7);
  v59[1] = v11;
  v58[0] = v47;
  v58[1] = v7;
  v56 = sub_1BD1EA010();
  v57 = v40;
  sub_1BD13A4C4(v59, 2uLL, v58);
  v43(v41, v7);
  sub_1BD0DE53C(v21, &qword_1EBD3D048);
  v43(v11, v7);
  return sub_1BD0DE53C(v46, &qword_1EBD3D048);
}

uint64_t sub_1BD1E9528@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a3;
  v83 = a4;
  v78 = a2;
  v5 = sub_1BE04EBD4();
  v80 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v81 = &v73 - v10;
  v11 = sub_1BE04EDE4();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D090);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v73 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D098);
  MEMORY[0x1EEE9AC00](v73, v20);
  v22 = &v73 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0A0);
  MEMORY[0x1EEE9AC00](v74, v23);
  v25 = &v73 - v24;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D050);
  v27 = MEMORY[0x1EEE9AC00](v75, v26);
  v77 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v73 - v31;
  MEMORY[0x1EEE9AC00](v30, v33);
  v76 = &v73 - v34;
  v35 = a1[5];
  v36 = *(v12 + 28);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1BE04F684();
  (*(*(v38 - 8) + 104))(&v15[v36], v37, v38);
  *v15 = v35;
  *(v15 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0A8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BE0B6CA0;
  v40 = a1[2];
  *(v39 + 32) = a1[1];
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = sub_1BE048964();
  }

  *(v39 + 40) = v41;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051EB4();
  sub_1BE051EC4();
  MEMORY[0x1BFB3EBB0](v39);
  sub_1BE04E874();
  sub_1BD1E4AAC(v15, v19);
  v42 = &v19[*(v16 + 52)];
  v43 = v91;
  *v42 = v90;
  *(v42 + 1) = v43;
  *(v42 + 4) = v92;
  *&v19[*(v16 + 56)] = 256;
  v44 = v78;
  v45 = v79;
  type metadata accessor for AccountPromotionProgressView();
  sub_1BD1E8B54();
  sub_1BD1E8C18();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v19, v22, &qword_1EBD3D090);
  v46 = &v22[*(v73 + 36)];
  v47 = v94;
  *v46 = v93;
  *(v46 + 1) = v47;
  *(v46 + 2) = v95;
  v48 = sub_1BE0501C4();
  sub_1BD1E8C18();
  sub_1BE04E1F4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_1BD0DE204(v22, v25, &qword_1EBD3D098);
  v57 = &v25[*(v74 + 36)];
  *v57 = v48;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v25, v32, &qword_1EBD3D0A0);
  v58 = v75;
  v59 = &v32[*(v75 + 36)];
  v60 = v97;
  *v59 = v96;
  *(v59 + 1) = v60;
  *(v59 + 2) = v98;
  v61 = v76;
  sub_1BD0DE204(v32, v76, &qword_1EBD3D050);
  v62 = sub_1BD1E8C78();
  v87 = v63;
  v88 = v64;
  v89 = v62;
  v65 = v82;
  MEMORY[0x1BFB3E0D0](&v87, v44, &type metadata for WidthGetter, v45);

  v66 = sub_1BD1E9CCC();
  v86[2] = v45;
  v86[3] = v66;
  WitnessTable = swift_getWitnessTable();
  v68 = v81;
  sub_1BD147308(v65);
  v69 = v80;
  v70 = *(v80 + 8);
  v70(v65, v5);
  v71 = v77;
  sub_1BD0DE19C(v61, v77, &qword_1EBD3D050);
  v87 = v71;
  (*(v69 + 16))(v65, v68, v5);
  v88 = v65;
  v86[0] = v58;
  v86[1] = v5;
  v84 = sub_1BD1EA238();
  v85 = WitnessTable;
  sub_1BD13A4C4(&v87, 2uLL, v86);
  v70(v68, v5);
  sub_1BD0DE53C(v61, &qword_1EBD3D050);
  v70(v65, v5);
  return sub_1BD0DE53C(v71, &qword_1EBD3D050);
}

unint64_t sub_1BD1E9CCC()
{
  result = qword_1EBD3D058;
  if (!qword_1EBD3D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D058);
  }

  return result;
}

uint64_t sub_1BD1E9D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = sub_1BE04E6A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v14 = sub_1BE051404();
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a5;
  (*(v11 + 32))(v16 + v15, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *a4 = v14;
  a4[1] = sub_1BD1EA440;
  a4[2] = v16;
  a4[3] = 0;
  a4[4] = 0;
  sub_1BE048964();
  return sub_1BE048964();
}

uint64_t sub_1BD1E9E90()
{
  sub_1BE04E684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3C8);
  return sub_1BE0518F4();
}

uint64_t sub_1BD1E9F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  *(v8 + 2) = v5;
  *(v8 + 3) = v6;
  *(v8 + 4) = v7;
  sub_1BE048964();
  sub_1BE048964();
  v9 = sub_1BE051CD4();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0D0);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D0D8);
  v14 = (a2 + *(result + 36));
  *v14 = sub_1BD1EA434;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v11;
  return result;
}

unint64_t sub_1BD1EA010()
{
  result = qword_1EBD3D070;
  if (!qword_1EBD3D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D048);
    sub_1BD1EA09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D070);
  }

  return result;
}

unint64_t sub_1BD1EA09C()
{
  result = qword_1EBD3D078;
  if (!qword_1EBD3D078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D068);
    sub_1BD1EA154();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D078);
  }

  return result;
}

unint64_t sub_1BD1EA154()
{
  result = qword_1EBD3D080;
  if (!qword_1EBD3D080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D060);
    sub_1BD1EA1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D080);
  }

  return result;
}

unint64_t sub_1BD1EA1E0()
{
  result = qword_1EBD3D088;
  if (!qword_1EBD3D088)
  {
    sub_1BE04EDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D088);
  }

  return result;
}

unint64_t sub_1BD1EA238()
{
  result = qword_1EBD3D0B0;
  if (!qword_1EBD3D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D050);
    sub_1BD1EA2C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0B0);
  }

  return result;
}

unint64_t sub_1BD1EA2C4()
{
  result = qword_1EBD3D0B8;
  if (!qword_1EBD3D0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D0A0);
    sub_1BD1EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0B8);
  }

  return result;
}

unint64_t sub_1BD1EA350()
{
  result = qword_1EBD3D0C0;
  if (!qword_1EBD3D0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D098);
    sub_1BD0DE4F4(&qword_1EBD3D0C8, &qword_1EBD3D090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0C0);
  }

  return result;
}

uint64_t sub_1BD1EA440()
{
  sub_1BE04E6A4();

  return sub_1BD1E9E90();
}

unint64_t sub_1BD1EA4A8()
{
  result = qword_1EBD3D0E0;
  if (!qword_1EBD3D0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3D0D8);
    sub_1BD0DE4F4(&qword_1EBD3D0E8, &qword_1EBD3D0D0);
    sub_1BD0DE4F4(&qword_1EBD3D0F0, &qword_1EBD3D0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3D0E0);
  }

  return result;
}

id FlightShareMessageBubbleView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *FlightShareMessageBubbleView.init()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v102 = &v95 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v101 = &v95 - v6;
  v7 = sub_1BE053204();
  v99 = *(v7 - 8);
  v100 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE053104();
  v95 = *(v10 - 8);
  v96 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE053274();
  v107 = *(v14 - 8);
  v108 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1BE04A604();
  v105 = *(v18 - 8);
  v106 = v18;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v104 = &v95 - v23;
  v24 = sub_1BE04BD74();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_properties] = 0;
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_model] = 0;
  *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView] = 0;
  v29 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
  *&v0[v29] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v30 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
  *&v0[v30] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v31 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripe;
  *&v0[v31] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v32 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
  *&v0[v32] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v33 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
  *&v0[v33] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v34 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
  *&v0[v34] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v35 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
  *&v0[v35] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v36 = OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo;
  *&v0[v36] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v37 = OBJC_IVAR___PKFlightShareMessageBubbleView_flightStatus;
  *&v0[v37] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v38 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
  *&v0[v38] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v39 = &v0[OBJC_IVAR___PKFlightShareMessageBubbleView_contentInsets];
  v40 = *(MEMORY[0x1E69DDCE0] + 16);
  *v39 = *MEMORY[0x1E69DDCE0];
  *(v39 + 1) = v40;
  v110.receiver = v0;
  v110.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v110, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 blackColor];
  [v43 setBackgroundColor_];

  [v43 addSubview_];
  [v43 addSubview_];
  (*(v25 + 104))(v28, *MEMORY[0x1E69B80C0], v24);
  result = PKPassKitBundle();
  if (result)
  {
    v46 = result;
    sub_1BE04B6F4();

    (*(v25 + 8))(v28, v24);
    v47 = v104;
    sub_1BE04A5F4();
    v48 = *MEMORY[0x1E69DDC90];
    v109 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB980]);
    sub_1BD1EB2D0();
    sub_1BE04A614();
    v109 = sub_1BE051424();
    sub_1BD1C80F8();
    sub_1BE04A614();
    sub_1BE0531B4();
    (*(v95 + 104))(v13, *MEMORY[0x1E69DC508], v96);
    sub_1BE053124();
    (*(v99 + 104))(v98, *MEMORY[0x1E69DC568], v100);
    sub_1BE0530F4();
    v49 = [v42 blackColor];
    sub_1BE0531D4();
    v50 = [v42 whiteColor];
    sub_1BE0531E4();
    (*(v105 + 16))(v97, v47, v106);
    v51 = v101;
    sub_1BE04A5C4();
    v52 = sub_1BE04A5B4();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_1BE0531A4();
    sub_1BE053154();
    sub_1BE053154();
    sub_1BE053164();
    v53 = OBJC_IVAR___PKFlightShareMessageBubbleView_followButton;
    v54 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_followButton];
    v56 = v107;
    v55 = v108;
    v57 = v102;
    (*(v107 + 16))(v102, v17, v108);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = v54;
    sub_1BE0532A4();

    [*&v43[v53] addTarget:v43 action:sel_followTapped forControlEvents:64];
    [v43 addSubview_];
    [v43 addSubview_];
    v59 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle;
    v60 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
    v61 = [v42 whiteColor];
    [v60 setTextColor_];

    v62 = *MEMORY[0x1E69DDD08];
    v63 = *&v43[v59];
    v64 = PKFontForDefaultDesign(v62, v48, 32770, 0);
    [v63 setFont_];

    v65 = *&v43[v59];
    ObjectType = v17;
    [v65 setLineBreakMode_];
    [v43 addSubview_];
    v66 = OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle;
    v67 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
    v68 = [v42 whiteColor];
    [v67 setTextColor_];

    v69 = *&v43[v66];
    v70 = PKFontForDefaultDesign(v62, v48, 0x8000, 0);
    [v69 setFont_];

    [*&v43[v66] setLineBreakMode_];
    [v43 addSubview_];
    v71 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle;
    v72 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
    v73 = [v42 whiteColor];
    [v72 setTextColor_];

    v74 = *&v43[v71];
    v102 = *MEMORY[0x1E69DDD10];
    v75 = v102;
    v76 = v74;
    v77 = PKFontForDefaultDesign(v75, v48, 32770, 0);
    [v76 setFont_];

    [*&v43[v71] setLineBreakMode_];
    [v43 addSubview_];
    v78 = OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle;
    v79 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
    v80 = [v42 whiteColor];
    [v79 setTextColor_];

    v81 = *MEMORY[0x1E69DDDC0];
    v82 = *MEMORY[0x1E69DB960];
    v83 = *&v43[v78];
    v84 = PKFontForDefaultDesign(v81, v48, v82);
    [v83 setFont_];

    [v43 &selRef:*&v43[v78] analyticsEventReportWithPreSelect:?];
    v85 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle;
    v86 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
    v87 = [v42 whiteColor];
    [v86 setTextColor_];

    v88 = *&v43[v85];
    v89 = PKFontForDefaultDesign(v81, v48, v82);
    [v88 setFont_];

    [v43 &selRef:*&v43[v85] analyticsEventReportWithPreSelect:?];
    v90 = OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle;
    v91 = *&v43[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
    v92 = [v42 whiteColor];
    [v91 setTextColor_];

    v93 = *&v43[v90];
    v94 = PKFontForDefaultDesign(v102, v48, 32770, 0);
    [v93 setFont_];

    [*&v43[v90] setLineBreakMode_];
    [v43 &selRef:*&v43[v90] analyticsEventReportWithPreSelect:?];

    (*(v107 + 8))(ObjectType, v108);
    (*(v105 + 8))(v104, v106);
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD1EB2D0()
{
  result = qword_1EBD4AA00;
  if (!qword_1EBD4AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4AA00);
  }

  return result;
}

CGSize __swiftcall FlightShareMessageBubbleView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = [objc_opt_self() defaultMetrics];
  [v2 scaledValueForValue_];
  v4 = v3;

  v5 = width;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

Swift::Void __swiftcall FlightShareMessageBubbleView.updateView(properties:)(PKFlightSharingMessageExtensionViewProperties *properties)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v128 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlightWidgetProgressView();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v118 - v13;
  v15 = sub_1BE04C004();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v118 - v21;
  v23 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_properties];
  *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_properties] = properties;

  v24 = properties;
  v25 = [(PKFlightSharingMessageExtensionViewProperties *)v24 flight];
  *&v135 = 0;
  v26 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v127 = v25;
  sub_1BE04BF74();
  type metadata accessor for FlightWidgetViewModel(0);
  swift_allocObject();
  v27 = FlightWidgetViewModel.init(perspective:boardingPassAttributes:contentState:)(&v135, v22, v18);
  v28 = OBJC_IVAR___PKFlightShareMessageBubbleView_model;
  *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_model] = v27;

  sub_1BD1EC018();
  v29 = OBJC_IVAR___PKFlightShareMessageBubbleView_progressView;
  v30 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_progressView];
  if (v30)
  {
    v31 = [v30 view];
    if (!v31)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v32 = v31;
    [v31 removeFromSuperview];
  }

  v129 = v28;
  if (!*&v2[v28])
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v135) = 4;
  v33 = sub_1BE048964();
  static FlightWidgetProgressContent.createContent(viewModel:context:)(v33, &v135, v133);

  v147 = v133[12];
  v148 = v133[13];
  v149 = v133[14];
  v150 = v134;
  v143 = v133[8];
  v144 = v133[9];
  v145 = v133[10];
  v146 = v133[11];
  v139 = v133[4];
  v140 = v133[5];
  v141 = v133[6];
  v142 = v133[7];
  v135 = v133[0];
  v136 = v133[1];
  v137 = v133[2];
  v138 = v133[3];
  if (get_enum_tag_for_layout_string_13PaymentUIBase16ClientViewSource_pSg_0(&v135) != 1)
  {
    v132 = 0x403A000000000000;
    sub_1BD0DBFDC();
    sub_1BE04E524();
    *&v14[v7[6]] = 0x4044000000000000;
    v132 = 0x402A000000000000;
    sub_1BE04E524();
    *&v14[v7[8]] = 0x403E000000000000;
    v132 = 0x4044000000000000;
    sub_1BE04E524();
    v132 = 0x4046800000000000;
    sub_1BE04E524();
    *&v14[v7[11]] = 0x4059000000000000;
    v34 = v148;
    *(v14 + 12) = v147;
    *(v14 + 13) = v34;
    *(v14 + 14) = v149;
    *(v14 + 30) = v150;
    v35 = v144;
    *(v14 + 8) = v143;
    *(v14 + 9) = v35;
    v36 = v146;
    *(v14 + 10) = v145;
    *(v14 + 11) = v36;
    v37 = v140;
    *(v14 + 4) = v139;
    *(v14 + 5) = v37;
    v38 = v142;
    *(v14 + 6) = v141;
    *(v14 + 7) = v38;
    v39 = v136;
    *v14 = v135;
    *(v14 + 1) = v39;
    v40 = v138;
    *(v14 + 2) = v137;
    *(v14 + 3) = v40;
    sub_1BD1EE0A8(v14, v11);
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D180));
    v42 = sub_1BE04F894();
    v43 = *&v2[v29];
    *&v2[v29] = v42;
    v44 = v42;

    v45 = [v44 view];
    if (!v45)
    {
LABEL_35:
      __break(1u);
      return;
    }

    [v2 addSubview_];

    sub_1BD1EE10C(v14);
  }

  v46 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_airlineLogo];
  v47 = [(PKFlightSharingMessageExtensionViewProperties *)v24 logoImage];
  [v46 setImage_];

  v48 = *&v2[v29];
  if (!v48)
  {
    goto LABEL_30;
  }

  v49 = [v48 view];
  if (!v49)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v50 = v49;
  v51 = objc_opt_self();
  v52 = [v51 clearColor];
  [v50 setBackgroundColor_];

  v53 = [(PKFlightSharingMessageExtensionViewProperties *)v24 backgroundColor];
  if (v53 && (v54 = v53, v55 = [(PKColor *)v53 CGColor], v54, v55))
  {
    v56 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe];
    v57 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    [v56 setBackgroundColor_];
  }

  else
  {
    v58 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripe];
    v57 = [v51 systemBlueColor];
    [v58 setBackgroundColor_];
  }

  v59 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeTitle];
  v60 = v2;
  v61 = v127;
  v62 = [(PKFlight *)v127 airlineName];
  if (!v62)
  {
    sub_1BE052434();
    v62 = sub_1BE052404();
  }

  [v59 setText_];

  v63 = *&v2[OBJC_IVAR___PKFlightShareMessageBubbleView_stripeSubtitle];
  v125 = "BLE_FOLLOW_BUTTON";
  v126 = v63;
  v64 = v130;
  v65 = *(v130 + 104);
  v66 = v128;
  v123 = *MEMORY[0x1E69B80C0];
  v124 = v130 + 104;
  v122 = v65;
  v65(v128);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
  v67 = swift_allocObject();
  v120 = xmmword_1BE0B6CA0;
  *(v67 + 16) = xmmword_1BE0B6CA0;
  v68 = [(PKFlight *)v61 airlineCode];
  v69 = sub_1BE052434();
  v71 = v70;

  v72 = v61;
  v73 = MEMORY[0x1E69E6158];
  *(v67 + 56) = MEMORY[0x1E69E6158];
  v74 = sub_1BD110550();
  *(v67 + 64) = v74;
  *(v67 + 32) = v69;
  *(v67 + 40) = v71;
  v75 = v72;
  v132 = [(PKFlight *)v72 flightNumber];
  v76 = sub_1BE053B24();
  *(v67 + 96) = v73;
  *(v67 + 104) = v74;
  v119 = v74;
  v77 = v60;
  *(v67 + 72) = v76;
  *(v67 + 80) = v78;
  sub_1BE04B714();

  v79 = *(v64 + 8);
  v80 = &selRef_setRowModel_;
  v130 = v64 + 8;
  v125 = v79;
  (v79)(v66, v131);
  v81 = sub_1BE052404();

  [v126 setText_];

  v82 = *&v77[OBJC_IVAR___PKFlightShareMessageBubbleView_leftTitle];
  v83 = [(PKFlight *)v75 departure];
  v84 = [v83 airport];

  v85 = [v84 code];
  v86 = v75;
  if (!v85)
  {
    sub_1BE052434();
    v85 = sub_1BE052404();
  }

  [v82 setText_];

  v87 = *&v77[v129];
  if (!v87)
  {
    goto LABEL_32;
  }

  v88 = *&v77[OBJC_IVAR___PKFlightShareMessageBubbleView_leftSubtitle];
  v89 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
  v90 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
  sub_1BE048964();
  sub_1BD3A9168(v87 + v89, v87 + v90);

  v91 = sub_1BE052404();

  [v88 setText_];

  v92 = *&v77[OBJC_IVAR___PKFlightShareMessageBubbleView_rightTitle];
  v93 = [(PKFlight *)v86 arrival];
  v94 = [v93 airport];

  v95 = [v94 code];
  if (!v95)
  {
    sub_1BE052434();
    v95 = sub_1BE052404();
  }

  [v92 setText_];

  v96 = *&v77[v129];
  if (!v96)
  {
    goto LABEL_33;
  }

  v97 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalDate;
  v98 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivalTimeZone;
  sub_1BE048964();
  sub_1BD3A9168(v96 + v97, v96 + v98);
  v100 = v99;
  v102 = v101;

  v103 = [(PKFlight *)v86 arrival];
  v104 = [v103 terminal];

  if (v104)
  {
    v105 = sub_1BE052434();
    v107 = v106;

    v108 = HIBYTE(v107) & 0xF;
    if ((v107 & 0x2000000000000000) == 0)
    {
      v108 = v105 & 0xFFFFFFFFFFFFLL;
    }

    if (v108)
    {
      v109 = v128;
      v110 = v131;
      v122(v128, v123, v131);
      v111 = swift_allocObject();
      *(v111 + 16) = v120;
      v112 = MEMORY[0x1E69E6158];
      v113 = v119;
      *(v111 + 56) = MEMORY[0x1E69E6158];
      *(v111 + 64) = v113;
      *(v111 + 32) = v100;
      *(v111 + 40) = v102;
      *(v111 + 96) = v112;
      *(v111 + 104) = v113;
      *(v111 + 72) = v105;
      *(v111 + 80) = v107;
      sub_1BE04B714();

      v114 = v109;
      v86 = v127;
      v115 = v110;
      v80 = &selRef_setRowModel_;
      (v125)(v114, v115);
    }

    else
    {
    }
  }

  v116 = *&v77[OBJC_IVAR___PKFlightShareMessageBubbleView_rightSubtitle];
  v117 = sub_1BE052404();

  [v116 v80[372]];

  [v77 setNeedsLayout];
}

id sub_1BD1EC018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v46 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACF0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v39 - v6;
  v8 = sub_1BE053204();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BE053104();
  v12 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1BE053274();
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE04A604();
  v43 = *(v20 - 8);
  v44 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v39 - v26;
  v47 = v0;
  result = *&v0[OBJC_IVAR___PKFlightShareMessageBubbleView_properties];
  if (result)
  {
    v29 = [result flight];
    v30 = [v29 departure];

    v31 = [v30 status];
    result = sub_1BD1EE44C(v31);
    if (v32)
    {
      v39 = result;
      sub_1BE04A5F4();
      v48 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC90], *MEMORY[0x1E69DB958]);
      sub_1BD1EB2D0();
      sub_1BE04A614();
      v48 = sub_1BE051424();
      sub_1BD1C80F8();
      sub_1BE04A614();
      sub_1BE0531B4();
      (*(v12 + 104))(v15, *MEMORY[0x1E69DC508], v40);
      sub_1BE053124();
      (*(v41 + 104))(v11, *MEMORY[0x1E69DC568], v42);
      sub_1BE0530F4();
      v34 = v43;
      v33 = v44;
      (*(v43 + 16))(v24, v27, v44);
      sub_1BE04A5C4();
      v35 = sub_1BE04A5B4();
      (*(*(v35 - 8) + 56))(v7, 0, 1, v35);
      sub_1BE0531A4();
      sub_1BE053154();
      sub_1BE053154();
      sub_1BE053164();
      v37 = v46;
      v36 = v47;
      v38 = v45;
      (*(v16 + 16))(v46, v19, v45);
      (*(v16 + 56))(v37, 0, 1, v38);
      sub_1BE0532A4();
      [v36 setNeedsLayout];
      (*(v16 + 8))(v19, v38);
      return (*(v34 + 8))(v27, v33);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}