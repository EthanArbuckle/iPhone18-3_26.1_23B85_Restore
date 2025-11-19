uint64_t sub_1D8E3448C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 240;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 240;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[30 * v9] <= a4)
    {
      memmove(a4, __dst, 240 * v9);
    }

    v12 = &v4[30 * v9];
    if (v8 < 240)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[5] < v4[5])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 30;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 30;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 30;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0xF0uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[30 * v11] <= a4)
  {
    memmove(a4, __src, 240 * v11);
  }

  v12 = &v4[30 * v11];
  if (v10 >= 240 && v6 > v7)
  {
LABEL_20:
    v5 -= 30;
    do
    {
      v15 = v5 + 30;
      if (*(v12 - 25) < *(v6 - 25))
      {
        v17 = v6 - 30;
        if (v15 != v6)
        {
          memmove(v5, v6 - 30, 0xF0uLL);
        }

        if (v12 <= v4 || (v6 -= 30, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 30);
      if (v15 != v12)
      {
        memmove(v5, v12 - 30, 0xF0uLL);
      }

      v5 -= 30;
      v12 -= 30;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 240;
  if (v6 != v4 || v6 >= &v4[30 * v18])
  {
    memmove(v6, v4, 240 * v18);
  }

  return 1;
}

uint64_t sub_1D8E346D0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1D917935C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1D91794DC();
  *v1 = result;
  return result;
}

uint64_t sub_1D8E34770(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB4528, &qword_1ECAB4520, &qword_1D9189FC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4520, &qword_1D9189FC0);
            v9 = sub_1D8FBFDEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E34910(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB46D8, &qword_1ECAB46D0, &qword_1D918A100);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46D0, &qword_1D918A100);
            v9 = sub_1D8FBFDEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E34AB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB4688, &qword_1ECAB4680, &qword_1D918A0B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4680, &qword_1D918A0B8);
            v9 = sub_1D8FBFDEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E34C50(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB4648, &qword_1ECAB4640, &qword_1D918A080);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4640, &qword_1D918A080);
            v9 = sub_1D8FBFE6C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ContentKeyResponse(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E34DE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB4628, &unk_1ECAB9700, &qword_1D91AC300);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9700, &qword_1D91AC300);
            v9 = sub_1D8FBFEF4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4620, &qword_1D918A070);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E34F7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAB4618, &qword_1ECAB4610, &qword_1D91A9A90);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4610, &qword_1D91A9A90);
            v9 = sub_1D8FBFF7C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SubscriptionOffer();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E3510C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D917935C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D917935C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D8E352AC(&qword_1ECAAFEC8, &qword_1ECAB44D0, &qword_1D91B62F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44D0, &qword_1D91B62F0);
            v9 = sub_1D8FBFDEC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E352AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8E35300(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v35 = result + 32;
  do
  {
    v5 = (v3 + 240 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v7 = v5[13];
      v65 = v5[12];
      v66 = v7;
      v67 = v5[14];
      v8 = v5[9];
      v61 = v5[8];
      v62 = v8;
      v9 = v5[11];
      v63 = v5[10];
      v64 = v9;
      v10 = v5[5];
      v57 = v5[4];
      v58 = v10;
      v11 = v5[7];
      v59 = v5[6];
      v60 = v11;
      v12 = v5[1];
      v53 = *v5;
      v54 = v12;
      v13 = v5[3];
      v55 = v5[2];
      v56 = v13;
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v14 = v5[13];
      v50 = v5[12];
      v51 = v14;
      v52 = v5[14];
      v15 = v5[9];
      v46 = v5[8];
      v47 = v15;
      v16 = v5[11];
      v48 = v5[10];
      v49 = v16;
      v17 = v5[5];
      v42 = v5[4];
      v43 = v17;
      v18 = v5[7];
      v44 = v5[6];
      v45 = v18;
      v19 = v5[1];
      v38 = *v5;
      v39 = v19;
      v20 = v5[3];
      v40 = v5[2];
      v41 = v20;
      sub_1D8E2D01C(&v53, v37);
      swift_getAtKeyPath();
      if (sub_1D8EFAA74(&v36, v37[0]))
      {
        break;
      }

      result = sub_1D8E2D078(&v53);
      v5 += 15;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v68 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1D8E31360(0, *(v4 + 16) + 1, 1);
      v4 = v68;
    }

    v22 = *(v4 + 16);
    v21 = *(v4 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_1D8E31360((v21 > 1), v22 + 1, 1);
      v4 = v68;
    }

    *(v4 + 16) = v22 + 1;
    v23 = (v4 + 240 * v22);
    v24 = v53;
    v25 = v55;
    v23[3] = v54;
    v23[4] = v25;
    v23[2] = v24;
    v26 = v56;
    v27 = v57;
    v28 = v59;
    v23[7] = v58;
    v23[8] = v28;
    v23[5] = v26;
    v23[6] = v27;
    v29 = v60;
    v30 = v61;
    v31 = v63;
    v23[11] = v62;
    v23[12] = v31;
    v23[9] = v29;
    v23[10] = v30;
    v32 = v64;
    v33 = v65;
    v34 = v67;
    v23[15] = v66;
    v23[16] = v34;
    v23[13] = v32;
    v23[14] = v33;
    v3 = v35;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1D8E35530(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *__return_ptr, _BYTE *, _BYTE *))
{
  v6 = *(a1 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  sub_1D8E31360(0, 0, 0);
  v7 = v81;
  v8 = a3 - 1;
  if (a3 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a2 + 16);
    if (v8 >= v9)
    {
      v8 = *(a2 + 16);
    }

    if (v8 >= 2)
    {
      v10 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v11 = v10;
      do
      {
        v11 -= 2;
      }

      while (v11);
    }

    else
    {
      v10 = 0;
    }

    while (v9 != v10)
    {
      if (a3 == ++v10)
      {
        v9 = a3;
        break;
      }
    }
  }

  if (v6)
  {
    v59 = a2 + 240 * v9;
    v13 = 32;
    do
    {
      v14 = (a1 + v13);
      v15 = *(a1 + v13 + 208);
      v79[12] = *(a1 + v13 + 192);
      v79[13] = v15;
      v79[14] = *(a1 + v13 + 224);
      v16 = *(a1 + v13 + 144);
      v79[8] = *(a1 + v13 + 128);
      v79[9] = v16;
      v17 = *(a1 + v13 + 160);
      v79[11] = *(a1 + v13 + 176);
      v79[10] = v17;
      v18 = *(a1 + v13 + 80);
      v79[4] = *(a1 + v13 + 64);
      v79[5] = v18;
      v19 = *(a1 + v13 + 96);
      v79[7] = *(a1 + v13 + 112);
      v79[6] = v19;
      v20 = *(a1 + v13 + 16);
      v79[0] = *(a1 + v13);
      v79[1] = v20;
      v21 = *(a1 + v13 + 32);
      v79[3] = *(a1 + v13 + 48);
      v79[2] = v21;
      v22 = *(a2 + 16);
      if (v9 == v22)
      {
        break;
      }

      if (v9 >= v22)
      {
        __break(1u);
        return result;
      }

      v23 = *(v59 + v13 + 176);
      v24 = *(v59 + v13 + 208);
      v73 = *(v59 + v13 + 192);
      v74 = v24;
      v25 = *(v59 + v13 + 208);
      v75 = *(v59 + v13 + 224);
      v26 = *(v59 + v13 + 112);
      v27 = *(v59 + v13 + 144);
      v69 = *(v59 + v13 + 128);
      v70 = v27;
      v28 = *(v59 + v13 + 144);
      v29 = *(v59 + v13 + 176);
      v71 = *(v59 + v13 + 160);
      v72 = v29;
      v30 = *(v59 + v13 + 48);
      v31 = *(v59 + v13 + 80);
      v65 = *(v59 + v13 + 64);
      v66 = v31;
      v32 = *(v59 + v13 + 80);
      v33 = *(v59 + v13 + 112);
      v67 = *(v59 + v13 + 96);
      v68 = v33;
      v34 = *(v59 + v13 + 16);
      v62[0] = *(v59 + v13);
      v62[1] = v34;
      v35 = *(v59 + v13 + 48);
      v37 = *(v59 + v13);
      v36 = *(v59 + v13 + 16);
      v63 = *(v59 + v13 + 32);
      v64 = v35;
      v38 = v14[13];
      __src[12] = v14[12];
      __src[13] = v38;
      __src[14] = v14[14];
      v39 = v14[9];
      __src[8] = v14[8];
      __src[9] = v39;
      v40 = v14[11];
      __src[10] = v14[10];
      __src[11] = v40;
      v41 = v14[5];
      __src[4] = v14[4];
      __src[5] = v41;
      v42 = v14[7];
      __src[6] = v14[6];
      __src[7] = v42;
      v43 = v14[1];
      __src[0] = *v14;
      __src[1] = v43;
      v44 = v14[3];
      __src[2] = v14[2];
      __src[3] = v44;
      __src[27] = v73;
      __src[28] = v25;
      __src[29] = *(v59 + v13 + 224);
      __src[23] = v69;
      __src[24] = v28;
      __src[25] = v71;
      __src[26] = v23;
      __src[19] = v65;
      __src[20] = v32;
      __src[21] = v67;
      __src[22] = v26;
      __src[15] = v37;
      __src[16] = v36;
      __src[17] = v63;
      __src[18] = v30;
      memcpy(__dst, __src, 0x1E0uLL);
      sub_1D8E2D01C(v79, v77);
      sub_1D8E2D01C(v62, v77);
      a4(v78, __dst, &__dst[240]);
      memcpy(v77, __dst, sizeof(v77));
      result = sub_1D8E35890(v77);
      v81 = v7;
      v46 = *(v7 + 16);
      v45 = *(v7 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_1D8E31360((v45 > 1), v46 + 1, 1);
        v7 = v81;
      }

      *(v7 + 16) = v46 + 1;
      v47 = (v7 + 240 * v46);
      v48 = v78[0];
      v49 = v78[2];
      v47[3] = v78[1];
      v47[4] = v49;
      v47[2] = v48;
      v50 = v78[3];
      v51 = v78[4];
      v52 = v78[6];
      v47[7] = v78[5];
      v47[8] = v52;
      v47[5] = v50;
      v47[6] = v51;
      v53 = v78[7];
      v54 = v78[8];
      v55 = v78[10];
      v47[11] = v78[9];
      v47[12] = v55;
      v47[9] = v53;
      v47[10] = v54;
      v56 = v78[11];
      v57 = v78[12];
      v58 = v78[14];
      v47[15] = v78[13];
      v47[16] = v58;
      v47[13] = v56;
      v47[14] = v57;
      v13 += 240;
      ++v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D8E35890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4790, &qword_1D918A180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 ChapterProvider.Request.init(asset:identifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t ChapterProvider.Request.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v8 = *(v1 + 8);
  v5 = *(v1 + 40);
  if (*v1)
  {
    sub_1D9179DDC();
    v6 = v3;
    sub_1D917915C();
  }

  else
  {
    sub_1D9179DDC();
  }

  return MediaIdentifier.hash(into:)(a1);
}

uint64_t ChapterProvider.Request.hashValue.getter()
{
  v1 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (v1)
  {
    v3 = v1;
    sub_1D917915C();
  }

  MediaIdentifier.hash(into:)(v7);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E35A50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v8 = *(v1 + 8);
  v5 = *(v1 + 40);
  if (*v1)
  {
    sub_1D9179DDC();
    v6 = v3;
    sub_1D917915C();
  }

  else
  {
    sub_1D9179DDC();
  }

  return MediaIdentifier.hash(into:)(a1);
}

uint64_t sub_1D8E35AE0()
{
  v1 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (v1)
  {
    v3 = v1;
    sub_1D917915C();
  }

  MediaIdentifier.hash(into:)(v7);
  return sub_1D9179E1C();
}

uint64_t ChapterProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1D8E26BB4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4798, &qword_1D918A1A0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ChapterProvider.init()()
{
  v1 = sub_1D8E26BB4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4798, &qword_1D918A1A0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ChapterProvider.fetch(request:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  v4 = *(a2 + 16);
  *(v3 + 256) = *a2;
  *(v3 + 272) = v4;
  *(v3 + 288) = *(a2 + 32);
  *(v3 + 57) = *(a2 + 40);
  return MEMORY[0x1EEE6DFA0](sub_1D8E35C80, 0, 0);
}

uint64_t sub_1D8E35C80()
{
  v35 = v0;
  *(v0 + 184) = &type metadata for Podcasts;
  v1 = sub_1D8CF0F2C();
  *(v0 + 160) = 40;
  *(v0 + 192) = v1;
  v2 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  if (v2)
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = *(v0 + 57);
    v9 = sub_1D917744C();
    *(v0 + 296) = __swift_project_value_buffer(v9, qword_1ECAB0C60);
    v10 = v7;
    sub_1D8D092C0(v6, v5, v4, v3, v8);
    v11 = sub_1D917741C();
    v12 = sub_1D9178D1C();

    sub_1D8CFEACC(v6, v5, v4, v3, v8);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = *(v0 + 280);
      v13 = *(v0 + 288);
      v15 = *(v0 + 264);
      v16 = *(v0 + 272);
      v32 = *(v0 + 256);
      v33 = v12;
      v17 = *(v0 + 57);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      *(v0 + 112) = v32;
      *(v0 + 120) = v15;
      *(v0 + 128) = v16;
      *(v0 + 136) = v14;
      *(v0 + 144) = v13;
      *(v0 + 152) = v17;
      v20 = v10;
      sub_1D8D092C0(v15, v16, v14, v13, v17);
      v21 = sub_1D917826C();
      v23 = sub_1D8CFA924(v21, v22, &v34);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1D8CEC000, v11, v33, "Fetching chapters for request %{private,mask.hash}s.", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v24 = *(v0 + 57);
    v25 = *(v0 + 272);
    *(v0 + 16) = *(v0 + 256);
    v26 = *(v0 + 288);
    *(v0 + 32) = v25;
    *(v0 + 48) = v26;
    *(v0 + 56) = v24;
    v27 = swift_task_alloc();
    *(v0 + 304) = v27;
    *v27 = v0;
    v27[1] = sub_1D8E35FB0;
    v28 = *(v0 + 248);

    return sub_1D8E36334(v0 + 200, (v0 + 16));
  }

  else
  {
    v30 = *(v0 + 240);
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D8E35FB0()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1D8E3631C;
  }

  else
  {
    v3 = sub_1D8E360C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E360C4()
{
  v35 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 224);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    v6 = *(v0 + 232) & 1;
    v7 = *(v0 + 208);

    v8 = Array<A>.normalized(episodeDuration:)(v3, v6, v1);
    swift_bridgeObjectRelease_n();
    *v2 = v5 & 1;
    *(v2 + 8) = v8;
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v6;
  }

  else
  {
    v10 = *(v0 + 288);
    v9 = *(v0 + 296);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    v14 = *(v0 + 57);
    v15 = *(v0 + 256);
    sub_1D8D092C0(v13, v12, v11, v10, v14);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();

    sub_1D8CFEACC(v13, v12, v11, v10, v14);
    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      v21 = *(v0 + 264);
      v20 = *(v0 + 272);
      v33 = v17;
      v22 = *(v0 + 256);
      v23 = *(v0 + 57);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      *(v0 + 64) = v22;
      *(v0 + 72) = v21;
      *(v0 + 80) = v20;
      *(v0 + 88) = v19;
      *(v0 + 96) = v18;
      *(v0 + 104) = v23;
      v26 = v22;
      sub_1D8D092C0(v21, v20, v19, v18, v23);
      v27 = sub_1D917826C();
      v29 = sub_1D8CFA924(v27, v28, &v34);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1D8CEC000, v16, v33, "Unable to fetch chapters for request %{private,mask.hash}s.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    v30 = *(v0 + 240);
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D8E36334(uint64_t a1, _OWORD *a2)
{
  *(v3 + 256) = a1;
  *(v3 + 264) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v6 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 41) = *(a2 + 25);

  return MEMORY[0x1EEE6DFA0](sub_1D8E363E4, 0, 0);
}

uint64_t sub_1D8E363E4()
{
  v35 = v0;
  v1 = (v0 + 16);
  v2 = *(*(v0 + 264) + 16);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  if (*(v3 + 16) && (v4 = sub_1D8F0671C(v0 + 16), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    *(v0 + 280) = v6;

    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0C60);
    sub_1D8E3AA94(v0 + 16, v0 + 112);
    v8 = sub_1D917741C();
    v9 = sub_1D9178CEC();
    sub_1D8E3AAE8(v0 + 16);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34 = v11;
      *v10 = 141558275;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2081;
      v12 = *(v0 + 32);
      *(v0 + 160) = *v1;
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_1D8E3AA94(v0 + 16, v0 + 208);
      v13 = sub_1D917826C();
      v15 = sub_1D8CFA924(v13, v14, &v34);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Returning in-flight task for request %{private,mask.hash}s.", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v16 = *(MEMORY[0x1E69E86A8] + 4);
    v17 = swift_task_alloc();
    *(v0 + 288) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    *v17 = v0;
    v17[1] = sub_1D8E36850;
    v20 = *(v0 + 256);
    v21 = MEMORY[0x1E69E7288];
    v22 = v6;
  }

  else
  {
    v24 = *(v0 + 264);
    v23 = *(v0 + 272);

    v25 = sub_1D917886C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v26;
    v28 = *(v0 + 32);
    *(v27 + 40) = *v1;
    *(v27 + 56) = v28;
    *(v27 + 65) = *(v0 + 41);
    sub_1D8E3AA94(v0 + 16, v0 + 64);
    v29 = sub_1D8E565A4(0, 0, v23, &unk_1D918A3A8, v27);
    *(v0 + 304) = v29;
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = v1;
    os_unfair_lock_lock((v2 + 24));
    sub_1D8E3AACC((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));

    v31 = *(MEMORY[0x1E69E86A8] + 4);
    v32 = swift_task_alloc();
    *(v0 + 312) = v32;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    *v32 = v0;
    v32[1] = sub_1D8E369D0;
    v20 = *(v0 + 256);
    v21 = MEMORY[0x1E69E7288];
    v22 = v29;
  }

  return MEMORY[0x1EEE6DA10](v20, v22, v18, v19, v21);
}

uint64_t sub_1D8E36850()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1D8E36B54;
  }

  else
  {
    v3 = sub_1D8E36964;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E36964()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8E369D0()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1D8E36BC0;
  }

  else
  {
    v3 = sub_1D8E36AE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E36AE4()
{
  v1 = v0[38];
  v2 = v0[34];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8E36B54()
{
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8E36BC0()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];

  v4 = v0[1];

  return v4();
}

uint64_t ChapterProvider.fetch(identifier:asset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *(v4 + 88) = *a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 104) = v5;
  *(v4 + 57) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D8E36C68, 0, 0);
}

uint64_t sub_1D8E36C68()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  *(v0 + 16) = v5;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v6 = *(v0 + 57);
  *(v0 + 56) = v6;
  sub_1D8D092C0(v3, v4, v1, v2, v6);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1D8E36D3C;
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  return ChapterProvider.fetch(request:)(v10, v0 + 16);
}

uint64_t sub_1D8E36D3C()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);

  sub_1D8CFEACC(v4, v5, v6, v7, v8);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8E36EB4, 0, 0);
  }

  else
  {
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_1D8E36ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[194] = a5;
  v5[193] = a4;
  v5[192] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D8E36EF4, 0, 0);
}

uint64_t sub_1D8E36EF4()
{
  v1 = v0[193];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[195] = Strong;
  if (Strong)
  {
    v3 = Strong;
    sub_1D917895C();
    v0[196] = 0;
    v4 = v0[194];
    v5 = swift_allocObject();
    v0[197] = v5;
    *(v5 + 16) = v3;
    v7 = *v4;
    v6 = v4[1];
    *(v5 + 49) = *(v4 + 25);
    *(v5 + 24) = v7;
    *(v5 + 40) = v6;

    sub_1D8E3AA94(v4, (v0 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
    swift_asyncLet_begin();
    v8 = swift_allocObject();
    v0[198] = v8;
    *(v8 + 16) = v3;
    v10 = *v4;
    v9 = v4[1];
    *(v8 + 49) = *(v4 + 25);
    *(v8 + 24) = v10;
    *(v8 + 40) = v9;

    sub_1D8E3AA94(v4, (v0 + 82));
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 178, sub_1D8E37174, v0 + 162);
  }

  else
  {
    sub_1D8E3AB18();
    swift_allocError();
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D8E37190()
{
  v28 = v0;
  v1 = *(v0 + 1432);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 1448);
    v3 = *(v0 + 1456);
    v4 = *(v0 + 1440);
    v5 = *(v0 + 1424);
    v6 = qword_1ECAB0C58;
    v7 = *(v0 + 1432);

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1552);
    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB0C60);
    sub_1D8E3AA94(v8, v0 + 1336);

    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    sub_1D8E3AAE8(v8);
    if (os_log_type_enabled(v10, v11))
    {
      v25 = v4;
      v12 = *(v0 + 1552);
      v13 = swift_slowAlloc();
      v26 = v2;
      v27 = swift_slowAlloc();
      v14 = v27;
      *v13 = 134218499;
      *(v13 + 4) = *(v1 + 16);

      *(v13 + 12) = 2160;
      *(v13 + 14) = 1752392040;
      *(v13 + 22) = 2081;
      v15 = *v12;
      *(v0 + 1528) = *v12;
      *(v0 + 1336) = v15;
      sub_1D8E3AD3C(v0 + 1528, v0 + 1296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47B8, &qword_1D918A3E0);
      v16 = sub_1D917826C();
      v18 = v3;
      v19 = sub_1D8CFA924(v16, v17, &v27);
      v4 = v25;

      *(v13 + 24) = v19;
      v3 = v18;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Fetched %ld chapters for asset %{private,mask.hash}s.", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v20 = v14;
      v2 = v26;
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 1536);
    *v23 = v5 & 1;
    *(v23 + 8) = v1;
    *(v23 + 16) = v4;
    *(v23 + 24) = v2;
    *(v23 + 32) = v3 & 1;
    v22 = sub_1D8E3746C;
    goto LABEL_14;
  }

  v21 = *(v0 + 1568);
  sub_1D917895C();
  *(v0 + 1592) = v21;
  if (v21)
  {
    v22 = sub_1D8E379B8;
LABEL_14:

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1464, v22, v0 + 1296);
  }

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1464, sub_1D8E375B0, v0 + 1296);
}

void sub_1D8E374C4()
{
  v1 = v0[196];
  v2 = v0[194];
  v3 = *(v0[195] + 16);
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 6);
  sub_1D8E3B0C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  if (!v1)
  {
    v4 = v0[198];
    v5 = v0[197];
    v6 = v0[195];

    v7 = v0[1];

    v7();
  }
}

uint64_t sub_1D8E375CC()
{
  v32 = v0;
  v1 = *(v0 + 1472);
  if (v1 && *(v1 + 16))
  {
    v2 = *(v0 + 1488);
    v3 = *(v0 + 1496);
    v4 = *(v0 + 1480);
    v5 = *(v0 + 1464);
    v6 = qword_1ECAB0C58;
    v7 = *(v0 + 1472);

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 1552);
    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB0C60);
    sub_1D8E3AA94(v8, v0 + 1336);

    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    sub_1D8E3AAE8(v8);
    if (os_log_type_enabled(v10, v11))
    {
      v28 = v5;
      v29 = v4;
      v12 = v3;
      v13 = *(v0 + 1552);
      v14 = swift_slowAlloc();
      v30 = v2;
      v31 = swift_slowAlloc();
      v15 = v31;
      *v14 = 134218499;
      *(v14 + 4) = *(v1 + 16);

      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v16 = *(v13 + 8);
      v17 = *(v13 + 24);
      *(v0 + 1416) = *(v13 + 40);
      *(v0 + 1384) = v16;
      *(v0 + 1400) = v17;
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      v20 = *(v13 + 40);
      v3 = v12;
      LOBYTE(v5) = v28;
      *(v0 + 1368) = v20;
      *(v0 + 1336) = v18;
      *(v0 + 1352) = v19;
      sub_1D8E3ACE0(v0 + 1384, v0 + 1296);
      v21 = sub_1D917826C();
      v23 = sub_1D8CFA924(v21, v22, &v31);

      *(v14 + 24) = v23;
      v4 = v29;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Fetched %ld chapters for identifier %{private,mask.hash}s.", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v24 = v15;
      v2 = v30;
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    else
    {
    }

    v26 = *(v0 + 1536);
    *v26 = v5 & 1;
    *(v26 + 8) = v1;
    *(v26 + 16) = v4;
    *(v26 + 24) = v2;
    *(v26 + 32) = v3 & 1;
  }

  else
  {
    v25 = *(v0 + 1536);
    *(v25 + 32) = 0;
    *v25 = 0u;
    *(v25 + 16) = 0u;
  }

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1464, sub_1D8E37874, v0 + 1296);
}

void sub_1D8E378CC()
{
  v1 = v0[199];
  v2 = v0[194];
  v3 = *(v0[195] + 16);
  *(swift_task_alloc() + 16) = v2;
  os_unfair_lock_lock(v3 + 6);
  sub_1D8E3B0C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  if (!v1)
  {
    v4 = v0[198];
    v5 = v0[197];
    v6 = v0[195];

    v7 = v0[1];

    v7();
  }
}

uint64_t sub_1D8E37A10()
{
  v1 = v0[194];
  v2 = *(v0[195] + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock(v2 + 6);
  sub_1D8E3B0C0(&v2[4]);
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[195];
  os_unfair_lock_unlock(v2 + 6);

  v6 = v0[199];
  v7 = v0[1];

  return v7();
}

uint64_t sub_1D8E37B10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D8D9C520;

  return sub_1D8E37BBC(a1, v5);
}

uint64_t sub_1D8E37BBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8E37BDC, 0, 0);
}

uint64_t sub_1D8E37BDC()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D8E37CC8;
    v4 = v0[6];

    return sub_1D8E3BBA8(v4, v2);
  }

  else
  {
    v6 = v0[6];
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D8E37CC8()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1D8E37E3C;
  }

  else
  {
    v3 = sub_1D8E37DDC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8E37DDC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E37E3C()
{
  v21 = v0;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0C60);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[7];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_1D9179D2C();
    v16 = sub_1D8CFA924(v14, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable to fetch chapters with error: %s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[6];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = v0[1];

  return v18();
}

uint64_t sub_1D8E38020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 24);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  v7 = *(a3 + 40);
  *(v3 + 48) = v7;
  *(v3 + 56) = v5;
  *(v3 + 72) = v6;
  *(v3 + 88) = v7;
  sub_1D8E3ACE0(v3 + 16, v3 + 96);
  v8 = swift_task_alloc();
  *(v3 + 136) = v8;
  *v8 = v3;
  v8[1] = sub_1D8E380EC;

  return sub_1D8E38244(a1, v3 + 56);
}

uint64_t sub_1D8E380EC()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;

  sub_1D8CFEACC(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_1D8E38244(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = *(a2 + 16);
  *(v3 + 112) = *a2;
  *(v3 + 128) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D8E38274, 0, 0);
}

uint64_t sub_1D8E38274()
{
  v30 = v0;
  v1 = *(v0 + 49);
  if (v1 == 1)
  {
    v6 = *(v0 + 112);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1D8E387A4;
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);

    return sub_1D8E39C08(v8, v6);
  }

  else if (v1 == 2)
  {
    v2 = *(v0 + 112);
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1D8E385B0;
    v4 = *(v0 + 104);

    return sub_1D8E38C08(v0 + 56, v2);
  }

  else
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
      LOBYTE(v1) = *(v0 + 49);
    }

    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0C60);
    sub_1D8D092C0(v13, v12, v11, v10, v1);
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    sub_1D8CFEACC(v13, v12, v11, v10, v1);
    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 128);
      v17 = *(v0 + 136);
      v20 = *(v0 + 112);
      v19 = *(v0 + 120);
      v21 = *(v0 + 49);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      *(v0 + 16) = v20;
      *(v0 + 24) = v19;
      *(v0 + 32) = v18;
      *(v0 + 40) = v17;
      *(v0 + 48) = v21;
      sub_1D8D092C0(v20, v19, v18, v17, v21);
      v24 = sub_1D917826C();
      v26 = sub_1D8CFA924(v24, v25, &v29);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Attempting to fetch chapters for an unsupported identifier %{private,mask.hash}s.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    v27 = *(v0 + 96);
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1D8E385B0()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8E386AC, 0, 0);
}

uint64_t sub_1D8E386AC()
{
  v1 = *(v0 + 64);
  if (*(v0 + 64))
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    *v4 = *(v0 + 56);
    *(v4 + 8) = v1;
    *(v4 + 24) = v2;
    *(v4 + 32) = v3;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 112);
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1D8E38898;
    v9 = *(v0 + 96);
    v10 = *(v0 + 104);

    return sub_1D8E39184(v9, v7);
  }
}

uint64_t sub_1D8E387A4()
{
  v1 = *(*v0 + 152);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D8E38898()
{
  v1 = *(*v0 + 160);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D8E3898C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1ECAB0C60);

  sub_1D8E3AA94(a3, &v19);
  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();
  sub_1D8E3AAE8(a3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 141558787;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2049;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    *(v9 + 14) = sub_1D917892C();

    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2081;
    v11 = a3[1];
    v19 = *a3;
    v20[0] = v11;
    *(v20 + 9) = *(a3 + 25);
    sub_1D8E3AA94(a3, v18);
    v12 = sub_1D917826C();
    v14 = sub_1D8CFA924(v12, v13, &v21);

    *(v9 + 34) = v14;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "Adding in-flight task %{private,mask.hash}ld for request %{private,mask.hash}s.", v9, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
  }

  sub_1D8E3AA94(a3, &v19);
  v15 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v19 = *a1;
  sub_1D8F4EF7C(a2, a3, isUniquelyReferenced_nonNull_native);
  result = sub_1D8E3AAE8(a3);
  *a1 = v19;
  return result;
}

uint64_t sub_1D8E38C08(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8E38C28, 0, 0);
}

uint64_t sub_1D8E38C28()
{
  v1 = v0[7];
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
    v0[8] = v2;
    v4 = objc_opt_self();

    v5 = [v4 sharedInstance];
    v6 = [v5 playbackContext];
    v0[9] = v6;

    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_1D8E38E30;
    v8 = v0[6];

    return sub_1D8E3B0E8(v8, v3, v2, v6);
  }

  else
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v10 = sub_1D917744C();
    __swift_project_value_buffer(v10, qword_1ECAB0C60);
    v11 = sub_1D917741C();
    v12 = sub_1D9178CFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "Attempting to fetch chapters for an empty array of UUIDs.", v13, 2u);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    v14 = v0[6];

    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D8E38E30()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8E38FB4, 0, 0);
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1D8E38FB4()
{
  v20 = v0;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0C60);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1D9179D2C();
    v15 = sub_1D8CFA924(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable to fetch chapters from core data with error: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[6];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = v0[1];

  return v17();
}

uint64_t sub_1D8E39184(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D917906C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E39248, 0, 0);
}

uint64_t sub_1D8E39248()
{
  v1 = sub_1D8D2A5E8();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = sub_1D8E3ADE4(sub_1D8E3ADAC, v2);
  v0[13] = v4;
  v5 = v4;
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  v9 = v0[8];

  v10 = swift_allocObject();
  v0[14] = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v9;
  (*(v7 + 104))(v6, *MEMORY[0x1E695D2B8], v8);
  v11 = *(MEMORY[0x1E695D2C0] + 4);
  v5;

  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  *v12 = v0;
  v12[1] = sub_1D8E39614;
  v14 = v0[12];

  return MEMORY[0x1EEDB6538](v0 + 6, v14, sub_1D8E3AFE0, v10, v13);
}

uint64_t sub_1D8E39614()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];
  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v6 = sub_1D8E399BC;
  }

  else
  {
    v6 = sub_1D8E39798;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D8E39798()
{
  v1 = v0[6];
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1D8E3983C;
  v3 = v0[9];
  v4 = v0[7];

  return sub_1D8E39C08(v4, v1);
}

uint64_t sub_1D8E3983C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8E39954, 0, 0);
}

uint64_t sub_1D8E39954()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8E399BC()
{
  v24 = v0;

  v1 = *(v0 + 128);
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1ECAB0C60);

  v4 = v1;
  v5 = sub_1D917741C();
  v6 = sub_1D9178CFC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 64);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = MEMORY[0x1DA729BD0](v7, MEMORY[0x1E69E6158]);
    v12 = sub_1D8CFA924(v10, v11, &v23);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2082;
    swift_getErrorValue();
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = sub_1D9179D2C();
    v18 = sub_1D8CFA924(v16, v17, &v23);

    *(v8 + 24) = v18;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Unable to local chapters for uuids %{private,mask.hash}s with error %{public}s.", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 56);
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = *(v0 + 96);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D8E39C08(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8E39C28, 0, 0);
}

uint64_t sub_1D8E39C28()
{
  v1 = v0[7];
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1D8E39DD0;
    v4 = v0[6];

    return sub_1D8E3EAC4(v4, v2);
  }

  else
  {
    if (qword_1ECAB0C58 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0C60);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "Attempting to fetch chapters for an empty array of AdamIDs.", v9, 2u);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    v10 = v0[6];
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D8E39DD0()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8E39F04, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1D8E39F04()
{
  v20 = v0;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0C60);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1D9179D2C();
    v15 = sub_1D8CFA924(v13, v14, &v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable to fetch chapters from server with error: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[6];
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  v17 = v0[1];

  return v17();
}

void sub_1D8E3A0D4(uint64_t a1@<X1>, char **a2@<X8>)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);

  v7 = [v6 initWithEntityName_];
  if (*(a1 + 16))
  {
    v8 = objc_opt_self();

    sub_1D8FC0F28(v9);

    v10 = sub_1D9178A8C();

    v11 = [v8 predicateForEpisodeUuids_];

    [v7 setPredicate_];
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    v12 = sub_1D917908C();

    if (v3)
    {
      return;
    }
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v12 >> 62)
  {
LABEL_24:
    v13 = sub_1D917935C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1DA72AA90](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v18 = [v15 storeTrackId];
    v19 = [objc_opt_self() isEmpty_];

    ++v14;
    if ((v19 & 1) == 0)
    {
      v20 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D8ECC958(0, *(v23 + 2) + 1, 1, v23);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1D8ECC958((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = v20;
      *&v20[8 * v22 + 32] = v18 & ~(v18 >> 63);
      v14 = v17;
    }
  }

  *a2 = v23;
}

uint64_t ChapterProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ChapterProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E3A404()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E3A448()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8E3A488(unint64_t result, __int128 *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    result = sub_1D8F0671C(a2);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * result);
      v6 = qword_1ECAB0C58;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = sub_1D917744C();
      __swift_project_value_buffer(v7, qword_1ECAB0C60);

      sub_1D8E3AA94(a2, &v17);
      v8 = sub_1D917741C();
      v9 = sub_1D9178CEC();
      sub_1D8E3AAE8(a2);
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v10 = 141558787;
        *(v10 + 4) = 1752392040;
        *(v10 + 12) = 2049;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47A8, &unk_1D918A3B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        *(v10 + 14) = sub_1D917892C();

        *(v10 + 22) = 2160;
        *(v10 + 24) = 1752392040;
        *(v10 + 32) = 2081;
        v11 = a2[1];
        v17 = *a2;
        v18[0] = v11;
        *(v18 + 9) = *(a2 + 25);
        sub_1D8E3AA94(a2, v16);
        v12 = sub_1D917826C();
        v14 = sub_1D8CFA924(v12, v13, &v19);

        *(v10 + 34) = v14;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Removing in-flight task %{private,mask.hash}ld for request %{private,mask.hash}s.", v10, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1DA72CB90](v15, -1, -1);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      else
      {
      }

      sub_1D8F7E888(a2);
    }
  }

  return result;
}

BOOL _s18PodcastsFoundation15ChapterProviderC7RequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (*a1)
  {
    if (v9)
    {
      v19 = *(a2 + 24);
      v20 = *(a2 + 16);
      v21 = *(a2 + 8);
      sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
      v14 = v9;
      v15 = v2;
      v16 = sub_1D917914C();

      if (v16)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  v19 = *(a2 + 24);
  v20 = *(a2 + 16);
  v21 = *(a2 + 8);
  if (v9)
  {
    return 0;
  }

LABEL_4:
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v7;
  v22 = v21;
  v23 = v20;
  v24 = v19;
  v25 = v12;
  v26 = v13;
  sub_1D8D092C0(v3, v4, v5, v6, v7);
  sub_1D8D092C0(v21, v20, v19, v12, v13);
  v17 = static MediaIdentifier.== infix(_:_:)(&v27, &v22);
  sub_1D8CFEACC(v22, v23, v24, v25, v26);
  sub_1D8CFEACC(v27, v28, v29, v30, v31);
  return v17;
}

unint64_t sub_1D8E3A850()
{
  result = qword_1ECAB47A0;
  if (!qword_1ECAB47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB47A0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8E3A908(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D8E3A964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D8E3A9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D5FF18;

  return sub_1D8E36ECC(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_1D8E3AB18()
{
  result = qword_1ECAB47B0;
  if (!qword_1ECAB47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB47B0);
  }

  return result;
}

uint64_t sub_1D8E3AB88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8E37B10(a1, v4, (v1 + 24));
}

uint64_t sub_1D8E3AC34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return sub_1D8E38020(a1, v4, v1 + 24);
}

uint64_t sub_1D8E3AD3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47B8, &qword_1D918A3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D8E3ADAC()
{
  v1 = [*(v0 + 16) privateQueueContext];

  return v1;
}

uint64_t sub_1D8E3ADE4(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;
  aBlock[4] = sub_1D8D2AB48;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_1;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 perform:v8 error:aBlock];
  _Block_release(v8);
  v9 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v9;
LABEL_3:

    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  swift_beginAccess();
  if (!*v5)
  {
    sub_1D8E3AFFC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    goto LABEL_3;
  }

  v12 = *v5;

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t sub_1D8E3AFFC()
{
  result = qword_1ECAB47C8;
  if (!qword_1ECAB47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB47C8);
  }

  return result;
}

unint64_t sub_1D8E3B06C()
{
  result = qword_1ECAB47D8;
  if (!qword_1ECAB47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB47D8);
  }

  return result;
}

uint64_t sub_1D8E3B0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_1D917906C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E3B1AC, 0, 0);
}

uint64_t sub_1D8E3B1AC()
{
  v24 = v0;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1D917744C();
  v0[15] = __swift_project_value_buffer(v2, qword_1ECAB0C60);

  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1D8CFA924(v6, v5, &v23);
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Fetching chapters from core data for %{private,mask.hash}s.", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v14 = v0[9];
  v13 = v0[10];
  v15 = swift_allocObject();
  v0[16] = v15;
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v13;
  (*(v10 + 104))(v9, *MEMORY[0x1E695D2B8], v11);
  v16 = *(MEMORY[0x1E695D2C0] + 4);

  v17 = v12;
  v18 = swift_task_alloc();
  v0[17] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47E0, &qword_1D918A510);
  *v18 = v0;
  v18[1] = sub_1D8E3B424;
  v20 = v0[14];
  v21 = v0[11];

  return MEMORY[0x1EEDB6538](v0 + 2, v20, sub_1D8E3BB78, v15, v19);
}

void sub_1D8E3B424()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[16];
    (*(v2[13] + 8))(v2[14], v2[12]);

    MEMORY[0x1EEE6DFA0](sub_1D8E3B57C, 0, 0);
  }
}

uint64_t sub_1D8E3B57C()
{
  v44 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v5 = v2 == 2 || v1 == 0 || v3 == 4;
  if (v5 || !*(v1 + 16))
  {
    v17 = *(v0 + 120);
    v18 = *(v0 + 80);

    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 72);
      v21 = *(v0 + 80);
      v23 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v23 = 141559811;
      *(v23 + 4) = 1752392040;
      *(v23 + 12) = 2081;
      *(v23 + 14) = sub_1D8CFA924(v22, v21, &v43);
      *(v23 + 22) = 2160;
      *(v23 + 24) = 1752392040;
      *(v23 + 32) = 2081;
      *(v0 + 41) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47E8, &qword_1D918A518);
      v24 = sub_1D917826C();
      v26 = sub_1D8CFA924(v24, v25, &v43);

      *(v23 + 34) = v26;
      *(v23 + 42) = 2160;
      *(v23 + 44) = 1752392040;
      *(v23 + 52) = 2081;
      *(v0 + 42) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F0, &qword_1D918A520);
      v27 = sub_1D917826C();
      v29 = sub_1D8CFA924(v27, v28, &v43);

      *(v23 + 54) = v29;
      *(v23 + 62) = 2160;
      *(v23 + 64) = 1752392040;
      *(v23 + 72) = 2081;
      if (v1)
      {
        v30 = *(v1 + 16);
      }

      else
      {
        v30 = 0;
      }

      *(v0 + 48) = v30;
      *(v0 + 56) = v1 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F8, &qword_1D918A528);
      v32 = sub_1D917826C();
      v34 = v33;

      v35 = sub_1D8CFA924(v32, v34, &v43);

      *(v23 + 74) = v35;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Unable to fetch chapters from core data for %{private,mask.hash}s without required data - %{private,mask.hash}s, %{private,mask.hash}s, count %{private,mask.hash}s.", v23, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v42, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 64);
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 120);
    v9 = *(v0 + 80);

    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();

    if (os_log_type_enabled(v10, v11))
    {
      v40 = *(v0 + 80);
      v41 = v6;
      v12 = v7;
      v13 = *(v0 + 72);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v43 = v15;
      *v14 = 134218499;
      *(v14 + 4) = *(v1 + 16);

      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      v16 = v13;
      v7 = v12;
      v6 = v41;
      *(v14 + 24) = sub_1D8CFA924(v16, v40, &v43);
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Fetched %ld chapters from core data for %{private,mask.hash}s.", v14, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1DA72CB90](v15, -1, -1);
      MEMORY[0x1DA72CB90](v14, -1, -1);
    }

    else
    {
    }

    v31 = *(v0 + 64);
    *v31 = v2 & 1;
    *(v31 + 8) = v1;
    *(v31 + 16) = v3;
    *(v31 + 24) = v6;
    *(v31 + 32) = v7;
  }

  v37 = *(v0 + 112);

  v38 = *(v0 + 8);

  return v38();
}

void sub_1D8E3B9CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a1 episodeForUuid_];

  if (v5)
  {
    v6 = v5;
    v7 = sub_1D8E29CA4();

    *a2 = v7;
    v8 = v6;
    v9 = [v8 chapterSource];
    if (v9)
    {
      v10 = v9;
      sub_1D917820C();

      v11 = sub_1D917980C();

      if (v11 == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (!v11)
      {
        v12 = 0;
      }
    }

    else
    {

      v12 = 2;
    }

    *(a2 + 8) = v12;
    v14 = v8;
    v15 = [v14 priceType];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D917820C();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      PriceType.init(rawValue:)(v20);
    }

    else
    {

      *(a2 + 9) = 4;
    }

    [v14 duration];
    v13 = v21;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1026;
    v13 = 0;
  }

  *(a2 + 16) = v13;
  *(a2 + 24) = v5 == 0;
}

void sub_1D8E3BB78(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1D8E3B9CC(*(v1 + 16), a1);
}

uint64_t sub_1D8E3BBA8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_1D9176EAC();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = sub_1D9176F0C();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_1D9176C2C();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E3BD20, 0, 0);
}

uint64_t sub_1D8E3BD20()
{
  v53 = v0;
  v1 = v0 + 48;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_1D917744C();
  *(v0 + 160) = __swift_project_value_buffer(v3, qword_1ECAB0C60);
  v4 = v2;
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();

  v7 = &selRef_setParent_;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v52[0] = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = [v11 URL];
    sub_1D9176B9C();

    sub_1D8E3E9A0();
    v15 = sub_1D9179A4C();
    v17 = v16;
    v18 = v10;
    v1 = v0 + 48;
    (*(v8 + 8))(v9, v18);
    v19 = v15;
    v7 = &selRef_setParent_;
    v20 = sub_1D8CFA924(v19, v17, v52);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Fetching ID3 chapters from %{private,mask.hash}s.", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  v23 = *(v0 + 136);
  v24 = [*(v0 + 80) v7[301]];
  sub_1D9176B9C();

  sub_1D9176ABC();
  v25 = *(v22 + 8);
  v25(v21, v23);
  v26 = sub_1D917827C();
  v28 = v27;

  *(v0 + 48) = v26;
  *(v0 + 56) = v28;
  v29 = swift_task_alloc();
  *(v29 + 16) = v1;
  LOBYTE(v23) = sub_1D8D9DF90(sub_1D8D9E200, v29, &unk_1F545D3E0);

  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4808, &qword_1D918A590);
    v30 = sub_1D91770CC();
    *(v0 + 168) = v30;
    v31 = *(MEMORY[0x1E69E5A20] + 4);
    v32 = swift_task_alloc();
    *(v0 + 176) = v32;
    *v32 = v0;
    v32[1] = sub_1D8E3C240;
    v33 = *(v0 + 80);

    return MEMORY[0x1EEE68140](v0 + 64, v30, 0, 0);
  }

  else
  {
    v34 = *(v0 + 80);
    v35 = sub_1D917741C();
    v36 = sub_1D9178D1C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 152);
      v51 = *(v0 + 136);
      v38 = *(v0 + 80);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52[0] = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v41 = [v38 v7[301]];
      sub_1D9176B9C();

      v42 = sub_1D9176ACC();
      v44 = v43;
      v25(v37, v51);
      v45 = sub_1D8CFA924(v42, v44, v52);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Unable to fetch ID3 chapter for file %{private,mask.hash}s.", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1DA72CB90](v40, -1, -1);
      MEMORY[0x1DA72CB90](v39, -1, -1);
    }

    sub_1D8E3E078();
    swift_allocError();
    swift_willThrow();
    v46 = *(v0 + 152);
    v47 = *(v0 + 128);
    v48 = *(v0 + 104);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_1D8E3C240()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_1D8E3D824;
  }

  else
  {
    v6 = sub_1D8E3C374;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D8E3C374()
{
  v1 = v0[23];
  v2 = v0[8];
  sub_1D917895C();
  if (v1)
  {

    v3 = v0[19];
    v4 = v0[16];
    v5 = v0[13];

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_1D8E3DC60(v2, v0[16]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4810, &qword_1D918A598);
    v8 = swift_allocObject();
    v0[24] = v8;
    *(v8 + 16) = xmmword_1D918A530;
    v9 = *MEMORY[0x1E69876B8];
    v10 = *MEMORY[0x1E6987680];
    *(v8 + 32) = *MEMORY[0x1E69876B8];
    *(v8 + 40) = v10;
    v11 = *(MEMORY[0x1E69E5A30] + 4);
    v12 = v9;
    v13 = v10;
    v14 = swift_task_alloc();
    v0[25] = v14;
    *v14 = v0;
    v14[1] = sub_1D8E3C4FC;
    v15 = v0[16];
    v16 = v0[10];

    return MEMORY[0x1EEE68150](v15, v8);
  }
}

uint64_t sub_1D8E3C4FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v7 = *(v3 + 192);

  if (v1)
  {
    v8 = sub_1D8E3D8A8;
  }

  else
  {
    v8 = sub_1D8E3C638;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D8E3C638()
{
  v1 = v0[27];
  sub_1D917895C();
  v5 = v0[26];
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v6 = v0[19];
    v7 = v0[16];
    v8 = v0[13];

    v9 = v0[1];

    return v9();
  }

  v11 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v20 = v0[26];
    }

    v12 = sub_1D917935C();
    v5 = v0[26];
  }

  else
  {
    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[28] = v11;
  v0[29] = v12;
  v0[30] = MEMORY[0x1E69E7CC0];
  if (!v12)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4818, &unk_1D918A5B0);
    v16 = sub_1D91770DC();
    v0[42] = v16;
    v17 = *(MEMORY[0x1E69E5A20] + 4);
    v18 = swift_task_alloc();
    v0[43] = v18;
    *v18 = v0;
    v18[1] = sub_1D8E3D334;
    v19 = v0[10];
    v12 = (v0 + 63);
    v2 = v16;
    v3 = 0;
    v4 = 0;

    return MEMORY[0x1EEE68140](v12, v2, v3, v4);
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1DA72AA90](0, v5);
    goto LABEL_11;
  }

  if (!*(v11 + 16))
  {
    __break(1u);
    return MEMORY[0x1EEE68140](v12, v2, v3, v4);
  }

  v13 = *(v5 + 32);
LABEL_11:
  v14 = v13;
  v0[31] = v13;
  v0[32] = 1;
  v15 = swift_task_alloc();
  v0[33] = v15;
  *v15 = v0;
  v15[1] = sub_1D8E3C87C;

  return sub_1D8E3E0CC(v14);
}

uint64_t sub_1D8E3C87C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[33];
  v11 = *v3;
  v5[34] = a2;
  v5[35] = v2;

  if (v2)
  {
    v7 = v5[30];
    v8 = v5[26];

    v9 = sub_1D8E3CCE4;
  }

  else
  {
    v9 = sub_1D8E3C9AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D8E3C9AC()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 280);
    sub_1D917895C();
    v2 = *(v0 + 248);
    if (v1)
    {
      v3 = *(v0 + 240);
      v4 = *(v0 + 208);
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

      v5 = *(v0 + 152);
      v6 = *(v0 + 128);
      v7 = *(v0 + 104);

      v8 = *(v0 + 8);

      return v8();
    }

    [*(v0 + 248) timeRange];
    v11 = *(v0 + 400);
    v12 = *(v0 + 392);
    *(v0 + 456) = *(v0 + 384);
    *(v0 + 464) = v12;
    *(v0 + 472) = v11;
    Seconds = CMTimeGetSeconds((v0 + 456));
    *(v0 + 288) = Seconds;
    if (Seconds > 2.0)
    {
      *(v0 + 296) = *(v0 + 24);
      v14 = swift_task_alloc();
      *(v0 + 304) = v14;
      *v14 = v0;
      v14[1] = sub_1D8E3CD90;
      v15 = *(v0 + 248);

      return sub_1D8E3E5A0(v15);
    }

    v10 = *(v0 + 248);
  }

  else
  {
    v10 = *(v0 + 248);
  }

  v19 = *(v0 + 256);
  if (v19 == *(v0 + 232))
  {
    v20 = *(v0 + 208);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4818, &unk_1D918A5B0);
    v21 = sub_1D91770DC();
    *(v0 + 336) = v21;
    v22 = *(MEMORY[0x1E69E5A20] + 4);
    v23 = swift_task_alloc();
    *(v0 + 344) = v23;
    *v23 = v0;
    v23[1] = sub_1D8E3D334;
    v24 = *(v0 + 80);
    v16 = (v0 + 504);
    v25 = v21;
    v17 = 0;
    v18 = 0;

    return MEMORY[0x1EEE68140](v16, v25, v17, v18);
  }

  v25 = *(v0 + 208);
  if ((v25 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1DA72AA90](*(v0 + 256));
  }

  else
  {
    if (v19 >= *(*(v0 + 224) + 16))
    {
LABEL_25:
      __break(1u);
      return MEMORY[0x1EEE68140](v16, v25, v17, v18);
    }

    v16 = *(v25 + 8 * v19 + 32);
  }

  v26 = v16;
  *(v0 + 248) = v16;
  *(v0 + 256) = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = swift_task_alloc();
  *(v0 + 264) = v27;
  *v27 = v0;
  v27[1] = sub_1D8E3C87C;

  return sub_1D8E3E0CC(v26);
}

uint64_t sub_1D8E3CCE4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D8E3CD90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 304);
  v11 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {
    v6 = v4[34];
    v7 = v4[30];
    v8 = v4[26];

    v9 = sub_1D8E3D288;
  }

  else
  {
    v9 = sub_1D8E3CED0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D8E3CED0()
{
  v1 = *(v0 + 328);
  sub_1D917895C();
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  if (v1)
  {
    v5 = *(v0 + 312);
    v4 = *(v0 + 320);
    v6 = *(v0 + 272);
    v7 = *(v0 + 208);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_1D8D75668(v5, v4);

    v8 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  v14 = *(v0 + 312);
  v13 = *(v0 + 320);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  [*(v0 + 248) timeRange];
  v18 = *(v0 + 424);
  v19 = *(v0 + 416);
  *(v0 + 480) = *(v0 + 408);
  *(v0 + 488) = v19;
  *(v0 + 496) = v18;
  Seconds = CMTimeGetSeconds((v0 + 480));
  sub_1D9176E9C();
  v21 = sub_1D9176E5C();
  v23 = v22;
  (*(v16 + 8))(v15, v17);
  sub_1D8DA04B0(v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v0 + 240);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1D8ECC838(0, *(v25 + 2) + 1, 1, *(v0 + 240));
  }

  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1D8ECC838((v26 > 1), v27 + 1, 1, v25);
  }

  v29 = *(v0 + 312);
  v28 = *(v0 + 320);
  v30 = *(v0 + 296);
  v31 = *(v0 + 288);
  v32 = *(v0 + 272);

  v33 = sub_1D8D75668(v29, v28);
  *(v25 + 2) = v27 + 1;
  v36 = &v25[64 * v27];
  *(v36 + 4) = v21;
  *(v36 + 5) = v23;
  *(v36 + 6) = v30;
  *(v36 + 7) = v32;
  *(v36 + 8) = v29;
  *(v36 + 9) = v28;
  v36[10] = Seconds;
  *(v36 + 11) = v31;
  v37 = *(v0 + 256);
  *(v0 + 240) = v25;
  if (v37 == *(v0 + 232))
  {
    v38 = *(v0 + 208);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4818, &unk_1D918A5B0);
    v39 = sub_1D91770DC();
    *(v0 + 336) = v39;
    v40 = *(MEMORY[0x1E69E5A20] + 4);
    v41 = swift_task_alloc();
    *(v0 + 344) = v41;
    *v41 = v0;
    v41[1] = sub_1D8E3D334;
    v42 = *(v0 + 80);
    v33 = (v0 + 504);
    v43 = v39;
    v34 = 0;
    v35 = 0;

    return MEMORY[0x1EEE68140](v33, v43, v34, v35);
  }

  v43 = *(v0 + 208);
  if ((v43 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1DA72AA90](v37);
  }

  else
  {
    if (v37 >= *(*(v0 + 224) + 16))
    {
LABEL_22:
      __break(1u);
      return MEMORY[0x1EEE68140](v33, v43, v34, v35);
    }

    v33 = *(v43 + 8 * v37 + 32);
  }

  v44 = v33;
  *(v0 + 248) = v33;
  *(v0 + 256) = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  *v45 = v0;
  v45[1] = sub_1D8E3C87C;

  return sub_1D8E3E0CC(v44);
}

uint64_t sub_1D8E3D288()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 328);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D8E3D334()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 336);
  if (v0)
  {

    v6 = sub_1D8E3D944;
  }

  else
  {

    v6 = sub_1D8E3D47C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1D8E3D47C()
{
  v50 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 520);
  sub_1D917895C();
  if (v1)
  {
    v5 = *(v0 + 240);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v6 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);

    v9 = *(v0 + 8);
LABEL_17:

    v9();
    return;
  }

  *(v0 + 528) = v2;
  *(v0 + 536) = v3;
  *(v0 + 544) = v4;
  Seconds = CMTimeGetSeconds((v0 + 528));
  v11 = *(v0 + 240);
  v12 = *(v0 + 160);
  v13 = *(v0 + 80);

  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 240);
  if (v16)
  {
    v18 = *(v0 + 80);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 141558787;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2049;
    *(v19 + 14) = *(v17 + 16);

    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2113;
    *(v19 + 34) = v18;
    *v20 = v18;
    v21 = v18;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Fetched %{private,mask.hash}ld chapters for %{private,mask.hash}@.", v19, 0x2Au);
    sub_1D8D08A50(v20, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  else
  {
    v22 = *(v0 + 240);
  }

  v23 = *(v0 + 240);
  v24 = *(v23 + 16);
  if (!v24)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v45 = *(v0 + 152);
    v46 = *(v0 + 104);
    v47 = *(v0 + 72);
    v48 = *(v0 + 352) != 0;
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    *v47 = 1;
    *(v47 + 8) = v27;
    *(v47 + 16) = 4;
    *(v47 + 24) = Seconds;
    *(v47 + 32) = v48;

    v9 = *(v0 + 8);
    goto LABEL_17;
  }

  v25 = 0;
  v26 = (v23 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  while (v25 < *(v23 + 16))
  {
    v28 = v26[1];
    v49[15] = *v26;
    v49[16] = v28;
    v29 = v26[3];
    v49[17] = v26[2];
    v49[18] = v29;
    sub_1D8E2D7A0(v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1D8ECC5F4(0, *(v27 + 2) + 1, 1, v27);
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1D8ECC5F4((v30 > 1), v31 + 1, 1, v27);
    }

    ++v25;
    *(v27 + 2) = v31 + 1;
    v32 = &v27[240 * v31];
    v33 = v49[0];
    v34 = v49[2];
    *(v32 + 3) = v49[1];
    *(v32 + 4) = v34;
    *(v32 + 2) = v33;
    v35 = v49[3];
    v36 = v49[4];
    v37 = v49[6];
    *(v32 + 7) = v49[5];
    *(v32 + 8) = v37;
    *(v32 + 5) = v35;
    *(v32 + 6) = v36;
    v38 = v49[7];
    v39 = v49[8];
    v40 = v49[10];
    *(v32 + 11) = v49[9];
    *(v32 + 12) = v40;
    *(v32 + 9) = v38;
    *(v32 + 10) = v39;
    v41 = v49[11];
    v42 = v49[12];
    v43 = v49[14];
    *(v32 + 15) = v49[13];
    *(v32 + 16) = v43;
    *(v32 + 13) = v41;
    *(v32 + 14) = v42;
    v26 += 4;
    if (v24 == v25)
    {
      v44 = *(v0 + 240);
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1D8E3D824()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8E3D8A8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

void sub_1D8E3D944()
{
  v41 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 160);
  v3 = *(v0 + 80);

  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 240);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 141558787;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2049;
    *(v9 + 14) = *(v7 + 16);

    *(v9 + 22) = 2160;
    *(v9 + 24) = 1752392040;
    *(v9 + 32) = 2113;
    *(v9 + 34) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Fetched %{private,mask.hash}ld chapters for %{private,mask.hash}@.", v9, 0x2Au);
    sub_1D8D08A50(v10, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
    v12 = *(v0 + 240);
  }

  v13 = *(v0 + 240);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v13 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    while (v15 < *(v13 + 16))
    {
      v18 = v16[1];
      v40[15] = *v16;
      v40[16] = v18;
      v19 = v16[3];
      v40[17] = v16[2];
      v40[18] = v19;
      sub_1D8E2D7A0(v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D8ECC5F4(0, *(v17 + 2) + 1, 1, v17);
      }

      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      if (v21 >= v20 >> 1)
      {
        v17 = sub_1D8ECC5F4((v20 > 1), v21 + 1, 1, v17);
      }

      ++v15;
      *(v17 + 2) = v21 + 1;
      v22 = &v17[240 * v21];
      v23 = v40[0];
      v24 = v40[2];
      *(v22 + 3) = v40[1];
      *(v22 + 4) = v24;
      *(v22 + 2) = v23;
      v25 = v40[3];
      v26 = v40[4];
      v27 = v40[6];
      *(v22 + 7) = v40[5];
      *(v22 + 8) = v27;
      *(v22 + 5) = v25;
      *(v22 + 6) = v26;
      v28 = v40[7];
      v29 = v40[8];
      v30 = v40[10];
      *(v22 + 11) = v40[9];
      *(v22 + 12) = v30;
      *(v22 + 9) = v28;
      *(v22 + 10) = v29;
      v31 = v40[11];
      v32 = v40[12];
      v33 = v40[14];
      *(v22 + 15) = v40[13];
      *(v22 + 16) = v33;
      *(v22 + 13) = v31;
      *(v22 + 14) = v32;
      v16 += 4;
      if (v14 == v15)
      {
        v34 = *(v0 + 240);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v35 = *(v0 + 152);
    v36 = *(v0 + 104);
    v37 = *(v0 + 72);
    v38 = *(v0 + 352) != 0;
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    *v37 = 1;
    *(v37 + 8) = v17;
    *(v37 + 16) = xmmword_1D918A540;
    *(v37 + 32) = v38;

    v39 = *(v0 + 8);

    v39();
  }
}

uint64_t sub_1D8E3DC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4838, &qword_1D918A5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v32 - v6;
  v7 = sub_1D9176F0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1D9176EFC();
  v17 = sub_1D8F95DB0(v16, a1);
  v42 = v8;
  v18 = *(v8 + 8);
  v18(v16, v7);
  if (v17)
  {
    return sub_1D9176EFC();
  }

  result = sub_1D9176ECC();
  v33 = *(result + 16);
  if (v33)
  {
    v20 = 0;
    v41 = *(a1 + 16);
    v35 = result + 32;
    v36 = result;
    v44 = v42 + 16;
    v37 = a2;
    v39 = a1;
    while (1)
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v40 = v20;
      v21 = (v35 + 16 * v20);
      v22 = v21[1];
      v45 = *v21;

      if (v41)
      {
        break;
      }

LABEL_5:
      v20 = v40 + 1;

      result = v36;
      a2 = v37;
      a1 = v39;
      if (v20 == v33)
      {
        goto LABEL_13;
      }
    }

    v23 = v41;
    v24 = v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v43 = *(v42 + 72);
    v25 = *(v42 + 16);
    while (1)
    {
      v25(v11, v24, v7);

      sub_1D9176EBC();
      v26 = MEMORY[0x1DA7284B0](v11, v16);
      v18(v16, v7);
      if (v26)
      {
        break;
      }

      v18(v11, v7);
      v24 += v43;
      if (!--v23)
      {
        goto LABEL_5;
      }
    }

    v27 = *(v42 + 32);
    v28 = v38;
    v27(v38, v11, v7);
    return (v27)(v37, v28, v7);
  }

  else
  {
LABEL_13:

    v29 = v34;
    if (*(a1 + 16))
    {
      v30 = v42;
      (*(v42 + 16))(v34, a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v7);
      (*(v30 + 56))(v29, 0, 1, v7);
      return (*(v30 + 32))(a2, v29, v7);
    }

    else
    {
      v31 = v42;
      (*(v42 + 56))(v34, 1, 1, v7);
      sub_1D9176EFC();
      result = (*(v31 + 48))(v29, 1, v7);
      if (result != 1)
      {
        return sub_1D8D08A50(v29, &qword_1ECAB4838, &qword_1D918A5D0);
      }
    }
  }

  return result;
}

unint64_t sub_1D8E3E078()
{
  result = qword_1ECAB4800;
  if (!qword_1ECAB4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4800);
  }

  return result;
}

uint64_t sub_1D8E3E0EC()
{
  v1 = [*(v0 + 32) items];
  sub_1D8E3E9F8();
  v2 = sub_1D91785FC();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1D917935C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    v19 = v22[1];

    return v19(0, 0);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v21 = *MEMORY[0x1E69876B8];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA72AA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v22[5] = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 commonKey];
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v8;
    v10 = sub_1D917820C();
    v12 = v11;
    if (v10 == sub_1D917820C() && v12 == v13)
    {
      break;
    }

    v15 = sub_1D9179ACC();

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_24;
    }
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4830, &unk_1D918F850);
  v16 = sub_1D91770AC();
  v22[6] = v16;
  v17 = *(MEMORY[0x1E69E5A20] + 4);
  v18 = swift_task_alloc();
  v22[7] = v18;
  *v18 = v22;
  v18[1] = sub_1D8E3E3B0;

  return MEMORY[0x1EEE68140](v22 + 2, v16, 0, 0);
}

uint64_t sub_1D8E3E3B0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D8E3E534;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D8E3E4CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E3E4CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1D8E3E534()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1D8E3E5C0()
{
  v1 = [*(v0 + 32) items];
  sub_1D8E3E9F8();
  v2 = sub_1D91785FC();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1D917935C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    v19 = v22[1];

    return v19(0, 0xF000000000000000);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v21 = *MEMORY[0x1E6987680];
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA72AA90](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v22[5] = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 commonKey];
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v8;
    v10 = sub_1D917820C();
    v12 = v11;
    if (v10 == sub_1D917820C() && v12 == v13)
    {
      break;
    }

    v15 = sub_1D9179ACC();

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_24;
    }
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4828, &unk_1D918A5C0);
  v16 = sub_1D91770BC();
  v22[6] = v16;
  v17 = *(MEMORY[0x1E69E5A20] + 4);
  v18 = swift_task_alloc();
  v22[7] = v18;
  *v18 = v22;
  v18[1] = sub_1D8E3E884;

  return MEMORY[0x1EEE68140](v22 + 2, v16, 0, 0);
}

uint64_t sub_1D8E3E884()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1D8E3EAAC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1D8E3EAB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1D8E3E9A0()
{
  result = qword_1ECAB2C88;
  if (!qword_1ECAB2C88)
  {
    sub_1D9176C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C88);
  }

  return result;
}

unint64_t sub_1D8E3E9F8()
{
  result = qword_1ECAB4820;
  if (!qword_1ECAB4820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB4820);
  }

  return result;
}

unint64_t sub_1D8E3EA58()
{
  result = qword_1ECAB4840;
  if (!qword_1ECAB4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4840);
  }

  return result;
}

uint64_t sub_1D8E3EAC4(uint64_t a1, uint64_t a2)
{
  v2[82] = a2;
  v2[81] = a1;
  v3 = *(*(type metadata accessor for MediaRequest.Params() - 8) + 64) + 15;
  v2[83] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4848, &unk_1D918A6D0);
  v2[84] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[85] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E3EB94, 0, 0);
}

uint64_t sub_1D8E3EB94()
{
  v21 = v0;
  if (qword_1ECAB0C58 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  v0[86] = __swift_project_value_buffer(v1, qword_1ECAB0C60);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[82];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 141558275;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2081;
    v0[80] = v4;
    sub_1D8E40A10();
    v7 = sub_1D9179A4C();
    v9 = sub_1D8CFA924(v7, v8, &v20);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Fetching chapters for episode %{private,mask.hash}s.", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA72CB90](v6, -1, -1);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v10 = v0[83];
  v11 = v0[82];
  v12 = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v0[87] = v12;
  v13 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  *&v12[v13] = 1;
  sub_1D8E3FF28(v11, v10);
  v0[74] = v12;
  v14 = swift_task_alloc();
  v0[88] = v14;
  v14[2] = v0 + 74;
  v14[3] = v10;
  v14[4] = 0;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  v0[89] = v16;
  *v16 = v0;
  v16[1] = sub_1D8E3EE38;
  v17 = v0[85];
  v18 = v0[84];

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000039, 0x80000001D91C99C0, sub_1D8E40A00, v14, v18);
}

uint64_t sub_1D8E3EE38()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v8 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v4 = sub_1D8E3FE9C;
  }

  else
  {
    v5 = *(v2 + 704);
    v6 = *(v2 + 664);

    sub_1D8D90BEC(v6);
    v4 = sub_1D8E3EF60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E3EF60()
{
  v178 = v1;
  v5 = **(v1 + 85);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:
    v14 = *(v1 + 86);
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v1 + 82);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v163 = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      *(v1 + 79) = v17;
      sub_1D8E40A10();
      v20 = sub_1D9179A4C();
      v22 = sub_1D8CFA924(v20, v21, &v163);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "No episode returned in response for %{private,mask.hash}s.", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v23 = *(v1 + 87);
    v24 = *(v1 + 85);
    sub_1D8E40A64();
    swift_allocError();
    swift_willThrow();

    sub_1D8D08A50(v24, &qword_1ECAB4848, &unk_1D918A6D0);
    v25 = *(v1 + 85);
    v26 = *(v1 + 83);

    v27 = *(v1 + 1);
    goto LABEL_136;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    v13 = **(v1 + 85);
  }

  if (!sub_1D917935C())
  {
    goto LABEL_25;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA72AA90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v6 = *(v5 + 32);
  }

  v3 = v6;
  v0 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
  swift_beginAccess();
  v7 = *&v3[v0];
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_podcast;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = OBJC_IVAR____TtC18PodcastsFoundation28PodcastRelationshipContainer_data;
  swift_beginAccess();
  v5 = *(v9 + v10);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_31:
    object = 0;
    v146 = 0;
    v4 = 0;
    goto LABEL_32;
  }

LABEL_30:
  if (!sub_1D917935C())
  {
    goto LABEL_31;
  }

LABEL_10:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v4 = MEMORY[0x1DA72AA90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_141;
    }

    v4 = *(v5 + 32);
  }

  object = *&v4[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_relationships];
  if (!object || (object = object->assetUrl.value._object) == 0)
  {
    v146 = 0;
    goto LABEL_32;
  }

  v5 = object->assetUrl.value._object;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_17:
      if ((v5 & 0xC000000000000001) != 0)
      {

        v128 = MEMORY[0x1DA72AA90](0, v5);

        v12 = v128;
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_146;
        }

        v12 = *(v5 + 32);
      }

      v146 = v12;
      object = *(*&v12[OBJC_IVAR____TtC18PodcastsFoundation13ServerChannel_attributes] + 74);
      goto LABEL_32;
    }

    goto LABEL_142;
  }

LABEL_141:
  if (sub_1D917935C())
  {
    goto LABEL_17;
  }

LABEL_142:
  object = 0;
  v146 = 0;
LABEL_32:
  ServerPodcastEpisode.determineBestChannelMetaData(isSubscriptionActive:)(object, &v163);
  v29 = v28;
  v31 = v30;

  v143 = v31;
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v29 / 1000.0;
  }

  v33 = *&v3[v0];
  if (!v33)
  {
    goto LABEL_131;
  }

  v34 = *(v33 + OBJC_IVAR____TtC18PodcastsFoundation27PodcastEpisodeRelationships_chapters);
  if (!v34)
  {
    goto LABEL_131;
  }

  v35 = v163;
  v36 = *(v34 + 16);
  if (v36 >> 62)
  {
    goto LABEL_130;
  }

  if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_131:
    v113 = *(v1 + 86);
    v114 = sub_1D917741C();
    v115 = sub_1D9178D1C();
    v116 = os_log_type_enabled(v114, v115);
    v117 = *(v1 + 87);
    if (v116)
    {
      v118 = *(v1 + 82);
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v163 = v120;
      *v119 = 141558275;
      *(v119 + 4) = 1752392040;
      *(v119 + 12) = 2081;
      *(v1 + 75) = v118;
      sub_1D8E40A10();
      v121 = sub_1D9179A4C();
      v123 = sub_1D8CFA924(v121, v122, &v163);

      *(v119 + 14) = v123;
      _os_log_impl(&dword_1D8CEC000, v114, v115, "No chapters found for %{private,mask.hash}s.", v119, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v120);
      MEMORY[0x1DA72CB90](v120, -1, -1);
      MEMORY[0x1DA72CB90](v119, -1, -1);
    }

LABEL_134:
    v124 = *(v1 + 81);
    sub_1D8D08A50(*(v1 + 85), &qword_1ECAB4848, &unk_1D918A6D0);
    *v124 = 0u;
    *(v124 + 16) = 0u;
    *(v124 + 32) = 0;
    goto LABEL_135;
  }

LABEL_39:
  v37 = *(v34 + 24);
  if (!v37 || (v38 = *(v37 + 16), v38 == 2))
  {
    v39 = *(v1 + 86);
    swift_retain_n();
    v40 = sub_1D917741C();
    v41 = sub_1D9178CFC();

    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v1 + 87);
    if (v42)
    {
      v147 = *(v1 + 87);
      v44 = *(v1 + 82);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v163 = v46;
      *v45 = 141558787;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      *(v1 + 76) = v44;
      sub_1D8E40A10();
      v47 = sub_1D9179A4C();
      v49 = sub_1D8CFA924(v47, v48, &v163);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2160;
      *(v45 + 24) = 1752392040;
      *(v45 + 32) = 2081;
      *(v1 + 77) = v34;
      type metadata accessor for ChapterRelationshipContainer();

      v50 = sub_1D917826C();
      v52 = sub_1D8CFA924(v50, v51, &v163);

      *(v45 + 34) = v52;
      _os_log_impl(&dword_1D8CEC000, v40, v41, "Unable to load chapters for %{private,mask.hash}s, missing data in %{private,mask.hash}s.", v45, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v46, -1, -1);
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }

    else
    {
    }

    goto LABEL_134;
  }

  v53 = *(v34 + 16);
  *&v163 = MEMORY[0x1E69E7CC0];
  v133 = v38;
  v134 = v32;
  if (v53 >> 62)
  {
    v54 = sub_1D917935C();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v1;
  v135 = v4;
  v136 = v3;
  v142 = v35;
  if (v54)
  {
    v34 = 0;
    v140 = v53 & 0xFFFFFFFFFFFFFF8;
    v141 = v53 & 0xC000000000000001;
    v138 = v53;
    v139 = v53 + 32;
    v137 = v54;
    while (1)
    {
      if (v141)
      {
        v1 = MEMORY[0x1DA72AA90](v34, v53);
        v55 = __OFADD__(v34++, 1);
        if (v55)
        {
          goto LABEL_128;
        }
      }

      else
      {
        if (v34 >= *(v140 + 16))
        {
          goto LABEL_129;
        }

        v1 = *(v139 + 8 * v34);

        v55 = __OFADD__(v34++, 1);
        if (v55)
        {
          goto LABEL_128;
        }
      }

      v56 = *(*(*(v1 + 7) + 16) + 16);
      if (v56 >> 62)
      {
        if (v56 < 0)
        {
          v69 = *(*(*(v1 + 7) + 16) + 16);
        }

        v3 = sub_1D917935C();
      }

      else
      {
        v3 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v144 = v34;

      if (v3)
      {
        break;
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_79:

      v67 = *(v58 + 2);
      v68 = v58 + 32;
      v1 = v145;
      while (1)
      {
        if (!v67)
        {

          v53 = v138;
          goto LABEL_49;
        }

        if (*&aStdq_3[8 * *v68] == *&aStdq_3[8 * v142])
        {
          break;
        }

        v35 = sub_1D9179ACC();
        swift_bridgeObjectRelease_n();
        ++v68;
        --v67;
        if (v35)
        {
          goto LABEL_85;
        }
      }

LABEL_85:
      v53 = v138;

      sub_1D917959C();
      v35 = *(v163 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
LABEL_49:
      v34 = v144;
      if (v144 == v137)
      {
        v2 = v163;
        goto LABEL_94;
      }
    }

    v57 = 0;
    v4 = (v56 & 0xFFFFFFFFFFFFFF8);
    v58 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x1DA72AA90](v57, v56);
        v34 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_121;
        }

        v59 = *(v56 + 8 * v57 + 32);

        v34 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
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
          v111 = v32;
          v112 = sub_1D917935C();
          v32 = v111;
          if (!v112)
          {
            goto LABEL_131;
          }

          goto LABEL_39;
        }
      }

      v60 = *(*(v59 + 48) + 48);

      v61 = *(v60 + 16);
      v35 = *(v58 + 2);
      v1 = (v35 + v61);
      if (__OFADD__(v35, v61))
      {
        goto LABEL_122;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v1 <= *(v58 + 3) >> 1)
      {
        if (*(v60 + 16))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v35 <= v1)
        {
          v63 = v35 + v61;
        }

        else
        {
          v63 = v35;
        }

        v58 = sub_1D8ECC944(isUniquelyReferenced_nonNull_native, v63, 1, v58);
        if (*(v60 + 16))
        {
LABEL_71:
          v64 = *(v58 + 2);
          if ((*(v58 + 3) >> 1) - v64 < v61)
          {
            goto LABEL_124;
          }

          memcpy(&v58[v64 + 32], (v60 + 32), v61);

          if (v61)
          {
            v65 = *(v58 + 2);
            v55 = __OFADD__(v65, v61);
            v66 = v65 + v61;
            if (v55)
            {
              goto LABEL_125;
            }

            *(v58 + 2) = v66;
          }

          goto LABEL_58;
        }
      }

      if (v61)
      {
        goto LABEL_123;
      }

LABEL_58:
      ++v57;
      if (v34 == v3)
      {
        goto LABEL_79;
      }
    }
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_94:
  v70 = *(v1 + 86);

  v71 = sub_1D917741C();
  v72 = sub_1D9178D1C();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v163 = v74;
    *v73 = 134218499;
    v75 = v2 & 0x4000000000000000;
    if (v2 < 0 || v75)
    {
      v76 = sub_1D917935C();
    }

    else
    {
      v76 = *(v2 + 16);
    }

    v77 = *(v145 + 82);
    *(v73 + 4) = v76;

    *(v73 + 12) = 2160;
    *(v73 + 14) = 1752392040;
    *(v73 + 22) = 2081;
    *(v145 + 78) = v77;
    sub_1D8E40A10();
    v78 = sub_1D9179A4C();
    v80 = sub_1D8CFA924(v78, v79, &v163);

    *(v73 + 24) = v80;
    _os_log_impl(&dword_1D8CEC000, v71, v72, "Fetched %ld chapters for %{private,mask.hash}s.", v73, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x1DA72CB90](v74, -1, -1);
    MEMORY[0x1DA72CB90](v73, -1, -1);
  }

  else
  {

    v75 = v2 & 0x4000000000000000;
  }

  if ((v2 & 0x8000000000000000) == 0 && !v75)
  {
    v4 = *(v2 + 16);
    if (!v4)
    {
      goto LABEL_147;
    }

LABEL_103:
    v81 = 0;
    v34 = v142;
    v1 = MEMORY[0x1E69E7CC0];
    v3 = &qword_1D91891B8;
    do
    {
      v35 = v81;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v35, v2);
          v81 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            goto LABEL_126;
          }
        }

        else
        {
          if (v35 >= *(v2 + 16))
          {
            goto LABEL_127;
          }

          v82 = *(v2 + 8 * v35 + 32);

          v81 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            goto LABEL_126;
          }
        }

        LOBYTE(v163) = v142;
        sub_1D8E2DFE4(&v163, &v148);

        v83 = v161;
        *(v145 + 13) = v160;
        *(v145 + 14) = v83;
        *(v145 + 15) = v162;
        v84 = v157;
        *(v145 + 9) = v156;
        *(v145 + 10) = v84;
        v85 = v159;
        *(v145 + 11) = v158;
        *(v145 + 12) = v85;
        v86 = v153;
        *(v145 + 5) = v152;
        *(v145 + 6) = v86;
        v87 = v155;
        *(v145 + 7) = v154;
        *(v145 + 8) = v87;
        v88 = v149;
        *(v145 + 1) = v148;
        *(v145 + 2) = v88;
        v89 = v151;
        *(v145 + 3) = v150;
        *(v145 + 4) = v89;
        if (sub_1D8D2E02C((v145 + 16)) != 1)
        {
          break;
        }

        v90 = v161;
        *(v145 + 28) = v160;
        *(v145 + 29) = v90;
        *(v145 + 30) = v162;
        v91 = v157;
        *(v145 + 24) = v156;
        *(v145 + 25) = v91;
        v92 = v159;
        *(v145 + 26) = v158;
        *(v145 + 27) = v92;
        v93 = v153;
        *(v145 + 20) = v152;
        *(v145 + 21) = v93;
        v94 = v155;
        *(v145 + 22) = v154;
        *(v145 + 23) = v94;
        v95 = v149;
        *(v145 + 16) = v148;
        *(v145 + 17) = v95;
        v96 = v151;
        *(v145 + 18) = v150;
        *(v145 + 19) = v96;
        sub_1D8D08A50((v145 + 256), &qword_1ECAB4448, &qword_1D91891B8);
        ++v35;
        if (v81 == v4)
        {
          goto LABEL_148;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D8ECC5F4(0, *(v1 + 2) + 1, 1, v1);
      }

      v98 = *(v1 + 2);
      v97 = *(v1 + 3);
      if (v98 >= v97 >> 1)
      {
        v1 = sub_1D8ECC5F4((v97 > 1), v98 + 1, 1, v1);
      }

      v167 = v152;
      v168 = v153;
      v165 = v150;
      v166 = v151;
      v171 = v156;
      v172 = v157;
      v169 = v154;
      v170 = v155;
      v176 = v161;
      v177 = v162;
      v174 = v159;
      v175 = v160;
      v173 = v158;
      v163 = v148;
      v164 = v149;
      *(v1 + 2) = v98 + 1;
      v99 = &v1[240 * v98];
      v100 = v163;
      v101 = v165;
      *(v99 + 3) = v164;
      *(v99 + 4) = v101;
      *(v99 + 2) = v100;
      v102 = v166;
      v103 = v167;
      v104 = v169;
      *(v99 + 7) = v168;
      *(v99 + 8) = v104;
      *(v99 + 5) = v102;
      *(v99 + 6) = v103;
      v105 = v170;
      v106 = v171;
      v107 = v173;
      *(v99 + 11) = v172;
      *(v99 + 12) = v107;
      *(v99 + 9) = v105;
      *(v99 + 10) = v106;
      v108 = v174;
      v109 = v175;
      v110 = v177;
      *(v99 + 15) = v176;
      *(v99 + 16) = v110;
      *(v99 + 13) = v108;
      *(v99 + 14) = v109;
    }

    while (v81 != v4);
    goto LABEL_148;
  }

LABEL_146:
  v4 = sub_1D917935C();
  if (v4)
  {
    goto LABEL_103;
  }

LABEL_147:
  v1 = MEMORY[0x1E69E7CC0];
LABEL_148:
  v129 = v1;
  v1 = v145;
  v130 = *(v145 + 87);
  v131 = *(v145 + 85);
  v132 = *(v145 + 81);

  sub_1D8D08A50(v131, &qword_1ECAB4848, &unk_1D918A6D0);
  *v132 = v133 & 1;
  *(v132 + 8) = v129;
  *(v132 + 16) = v142;
  *(v132 + 24) = v134;
  *(v132 + 32) = v143 & 1;
LABEL_135:
  v125 = *(v1 + 85);
  v126 = *(v1 + 83);

  v27 = *(v1 + 1);
LABEL_136:

  return v27();
}

uint64_t sub_1D8E3FE9C()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[83];

  sub_1D8D90BEC(v3);

  v4 = v0[90];
  v5 = v0[85];
  v6 = v0[83];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D8E3FF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v38 = &v29 - v6;
  v40 = sub_1D8D946F4(&unk_1F545D470);
  sub_1D8D08A50(&unk_1F545D490, &unk_1ECAB9A50, &unk_1D9197130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4860, &qword_1D918A6F0);
  inited = swift_initStackObject();
  v37 = xmmword_1D9189080;
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 6144;
  v9 = inited + 32;
  *(inited + 40) = &unk_1F545D448;
  v39 = sub_1D8E26D04(inited);
  swift_setDeallocating();
  sub_1D8D08A50(v9, &qword_1ECAB4868, &qword_1D918A6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v10 = swift_allocObject();
  *(v10 + 16) = v37;
  v41 = a1;
  sub_1D8E40D20();
  *(v10 + 32) = sub_1D917927C();
  *(v10 + 40) = v11;
  v12 = sub_1D9176C2C();
  v13 = *(*(v12 - 8) + 56);
  v13(v7, 1, 1, v12);
  v14 = MEMORY[0x1E69E7CC0];
  *&v37 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v36 = sub_1D8D94DF8(v14);
  v35 = sub_1D8D951E0(v14);
  v34 = sub_1D8D9503C(v14);
  v33 = sub_1D8D9536C(v14);
  v31 = sub_1D8D952D8(v14);
  v32 = sub_1D8D95394(v14);
  v30 = sub_1D8D957C4(v14);
  *(a2 + 41) = 263;
  *(a2 + 43) = 5;
  *(a2 + 152) = 1;
  *(a2 + 201) = 1;
  v15 = type metadata accessor for MediaRequest.Params();
  v16 = v15[28];
  v13((a2 + v16), 1, 1, v12);
  v17 = (a2 + v15[29]);
  v18 = (a2 + v15[31]);
  v19 = v15[34];
  v20 = (a2 + v15[33]);
  v21 = (a2 + v15[35]);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 40) = 83951620;
  v22 = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v22;
  v23 = v34;
  *(a2 + 64) = v35;
  *(a2 + 72) = v14;
  v24 = v40;
  *(a2 + 80) = v23;
  *(a2 + 88) = v24;
  v25 = v39;
  *(a2 + 96) = v33;
  *(a2 + 104) = v25;
  v26 = v31;
  *(a2 + 112) = v14;
  *(a2 + 120) = v26;
  *(a2 + 128) = v14;
  *(a2 + 136) = v14;
  *(a2 + 144) = v10;
  *(a2 + 152) = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v27 = v30;
  *(a2 + 176) = v32;
  *(a2 + 184) = v27;
  *(a2 + 192) = 0;
  *(a2 + 200) = 257;
  *(a2 + 202) = 0;
  result = sub_1D8E26828(v38, a2 + v16);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + v15[30]) = 0;
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v15[32]) = v14;
  *v20 = 0;
  v20[1] = 0;
  *(a2 + v19) = 2;
  *v21 = 0;
  v21[1] = 0;
  return result;
}

void sub_1D8E4026C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v58 = a4;
  v59 = a3;
  v63 = a2;
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - v18;
  (*(v15 + 16))(&v54 - v18, a1, v14, v17);
  sub_1D8D85B08(a3, v13);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = *(v7 + 80);
  v22 = (v16 + v21 + v20) & ~v21;
  v60 = v21 | 7;
  v23 = swift_allocObject();
  (*(v15 + 32))(v23 + v20, v19, v14);
  sub_1D8D85D0C(v13, v23 + v22);
  v24 = swift_allocObject();
  v62 = v24;
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v61 = v25;
  *(v25 + 2) = v24;
  *(v25 + 3) = sub_1D8E40AB8;
  *(v25 + 4) = v23;
  v56 = v23;
  sub_1D9179E2C();
  v26 = v54;
  sub_1D8D85B08(v59, v54);
  v27 = (v21 + 16) & ~v21;
  v55 = v8 + 7;
  v28 = (v8 + 7 + v27) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 79) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  sub_1D8D85D0C(v26, v31 + v27);
  *(v31 + v28) = MEMORY[0x1E69E7CC0];
  v32 = v31 + v29;
  *(v32 + 64) = v74;
  v33 = v73;
  *(v32 + 32) = v72;
  *(v32 + 48) = v33;
  v34 = v71;
  *v32 = v70;
  *(v32 + 16) = v34;
  v35 = v63;
  *(v31 + v30) = v63;
  v36 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v37 = v61;
  *v36 = sub_1D8E40BC8;
  v36[1] = v37;
  v38 = type metadata accessor for MediaRequestBuilder();

  v63 = v35;

  v39 = v59;
  sub_1D8D96644(v59);
  v40 = sub_1D8D963C0(v39);
  v41 = v57;
  sub_1D8D85B08(v39, v57);
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  sub_1D8D85D0C(v41, v42 + ((v21 + 24) & ~v21));
  v68 = sub_1D8D85180;
  v69 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1D8D85118;
  v67 = &block_descriptor_2;
  v43 = _Block_copy(&aBlock);

  v44 = [v40 thenWithBlock_];
  _Block_release(v43);

  sub_1D8D85B08(v39, v41);
  v45 = (v21 + 40) & ~v21;
  v46 = (v55 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = sub_1D8E40BD4;
  v48[4] = v31;
  sub_1D8D85D0C(v41, v48 + v45);
  v49 = v63;
  *(v48 + v46) = v63;
  v50 = v58;
  *(v48 + v47) = v58;
  v68 = sub_1D8D90CE8;
  v69 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1D8D5960C;
  v67 = &block_descriptor_20;
  v51 = _Block_copy(&aBlock);
  v52 = v50;
  v53 = v49;

  [v44 addFinishBlock_];
  _Block_release(v51);
}

void sub_1D8E40830(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4848, &unk_1D918A6D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v27 - v15);
  if (a1 && a2)
  {
    v17 = a2;
    v18 = sub_1D8FBECF4(a1);
    if (v18)
    {
      v19 = v18;
      sub_1D8D85B08(a7, v16 + *(v13 + 36));
      *v16 = v19;
      v16[1] = v17;
      v16[2] = a3;
      v16[3] = a4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
      sub_1D917876C();
    }

    else
    {
      v23 = type metadata accessor for ServerPodcastEpisode();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9700, &qword_1D91AC300) | 0x8000000000000000;
      sub_1D8E40CCC();
      v25 = swift_allocError();
      *v26 = v23;
      v26[1] = v24;
      v28 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
      sub_1D917875C();
    }
  }

  else
  {
    sub_1D8E40CCC();
    v20 = swift_allocError();
    *v21 = a5;
    v21[1] = 0;
    v28 = v20;
    v22 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0);
    sub_1D917875C();
  }
}

unint64_t sub_1D8E40A10()
{
  result = qword_1ECAB1138;
  if (!qword_1ECAB1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1138);
  }

  return result;
}

unint64_t sub_1D8E40A64()
{
  result = qword_1ECAB4850;
  if (!qword_1ECAB4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4850);
  }

  return result;
}

void sub_1D8E40AB8(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4858, &unk_1D918A6E0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for MediaRequest.Params() - 8);
  v15 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  sub_1D8E40830(a1, a2, a3, a4, a5, v5 + v12, v15);
}

void sub_1D8E40BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v11 = *(type metadata accessor for MediaRequest.Params() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D904C368(a1, a2, a3, a4, a5, v5 + v12, *(v5 + v13), (v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1D8E40CCC()
{
  result = qword_1ECAB96F0;
  if (!qword_1ECAB96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB96F0);
  }

  return result;
}

unint64_t sub_1D8E40D20()
{
  result = qword_1EDCD5AA0;
  if (!qword_1EDCD5AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5AA0);
  }

  return result;
}

unint64_t sub_1D8E40D88()
{
  result = qword_1ECAB4870;
  if (!qword_1ECAB4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4870);
  }

  return result;
}

PodcastsFoundation::PodcastsSettingsDeepLinkURLs_optional __swiftcall PodcastsSettingsDeepLinkURLs.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PodcastsSettingsDeepLinkURLs.rawValue.getter()
{
  v1 = 0xD000000000000040;
  v2 = *v0;
  v3 = 0xD000000000000048;
  v4 = 0xD000000000000049;
  if (v2 != 3)
  {
    v4 = 0xD000000000000055;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000053;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_1D8E40ED8()
{
  result = qword_1ECAB4878;
  if (!qword_1ECAB4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4878);
  }

  return result;
}

uint64_t sub_1D8E40F2C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E41000()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E410C0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8E4119C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000040;
  v3 = *v1;
  v4 = "e";
  v5 = "/CELLULAR_DOWNLOADS";
  v6 = 0xD000000000000048;
  v7 = "m.apple.podcasts/FORWARD";
  v8 = 0xD000000000000049;
  if (v3 != 3)
  {
    v8 = 0xD000000000000055;
    v7 = "m.apple.podcasts/BACKWARD";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD000000000000053;
    v4 = "m.apple.podcasts";
  }

  if (*v1 > 1u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for PodcastsSettingsDeepLinkURLs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsSettingsDeepLinkURLs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Podcasts.feature.getter()
{
  v3 = *v0;
  Podcasts.rawValue.getter(&v2);
  return v2;
}

id static Podcasts.isSpeakEasyEnabled.getter()
{
  v2[3] = &type metadata for Podcasts;
  v2[4] = sub_1D8CF0F2C();
  LOBYTE(v2[0]) = 31;
  v0 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  if (v0)
  {
    return [objc_opt_self() supportsEnhanceDialogue];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E4146C(char a1)
{
  v4[3] = &type metadata for Podcasts;
  v4[4] = sub_1D8CF0F2C();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

uint64_t static Podcasts.isPandoLinksDebugEnabled.getter()
{
  v5 = &type metadata for Podcasts;
  v0 = sub_1D8CF0F2C();
  v6 = v0;
  LOBYTE(v4[0]) = 41;
  v1 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  if (v1)
  {
    v5 = &type metadata for Podcasts;
    v6 = v0;
    LOBYTE(v4[0]) = 42;
    v2 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t Podcasts.init(rawValue:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_1D917949C();
  v8 = v7;
  if (v6 == sub_1D917949C() && v8 == v9)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v11 = sub_1D9179ACC();

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    v14 = sub_1D917949C();
    v16 = v15;
    if (v14 == sub_1D917949C() && v16 == v17)
    {
      v13 = 1;
LABEL_10:

      goto LABEL_11;
    }

    v18 = sub_1D9179ACC();

    if (v18)
    {
      v13 = 1;
      goto LABEL_11;
    }

    v13 = 2;
    v19 = sub_1D917949C();
    v21 = v20;
    if (v19 == sub_1D917949C() && v21 == v22)
    {
      goto LABEL_10;
    }

    v23 = sub_1D9179ACC();

    if (v23)
    {
      v13 = 2;
      goto LABEL_11;
    }

    v24 = sub_1D917949C();
    v26 = v25;
    if (v24 == sub_1D917949C() && v26 == v27)
    {
      v13 = 3;
      goto LABEL_10;
    }

    v28 = sub_1D9179ACC();

    if (v28)
    {
      v13 = 3;
      goto LABEL_11;
    }

    v29 = sub_1D917949C();
    v31 = v30;
    if (v29 == sub_1D917949C() && v31 == v32)
    {
      v13 = 4;
      goto LABEL_10;
    }

    v33 = sub_1D9179ACC();

    if (v33)
    {
      v13 = 4;
      goto LABEL_11;
    }

    v34 = sub_1D917949C();
    v36 = v35;
    if (v34 == sub_1D917949C() && v36 == v37)
    {
      v13 = 5;
      goto LABEL_10;
    }

    v38 = sub_1D9179ACC();

    if (v38)
    {
      v13 = 5;
      goto LABEL_11;
    }

    v39 = sub_1D917949C();
    v41 = v40;
    if (v39 == sub_1D917949C() && v41 == v42)
    {
      v13 = 6;
      goto LABEL_10;
    }

    v43 = sub_1D9179ACC();

    if (v43)
    {
      v13 = 6;
      goto LABEL_11;
    }

    v44 = sub_1D917949C();
    v46 = v45;
    if (v44 == sub_1D917949C() && v46 == v47)
    {
      v13 = 7;
      goto LABEL_10;
    }

    v48 = sub_1D9179ACC();

    if (v48)
    {
      v13 = 7;
      goto LABEL_11;
    }

    v49 = sub_1D917949C();
    v51 = v50;
    if (v49 == sub_1D917949C() && v51 == v52)
    {
      v13 = 8;
      goto LABEL_10;
    }

    v53 = sub_1D9179ACC();

    if (v53)
    {
      v13 = 8;
      goto LABEL_11;
    }

    v54 = sub_1D917949C();
    v56 = v55;
    if (v54 == sub_1D917949C() && v56 == v57)
    {
      v13 = 9;
      goto LABEL_10;
    }

    v58 = sub_1D9179ACC();

    if (v58)
    {
      v13 = 9;
      goto LABEL_11;
    }

    v59 = sub_1D917949C();
    v61 = v60;
    if (v59 == sub_1D917949C() && v61 == v62)
    {
      v13 = 10;
      goto LABEL_10;
    }

    v63 = sub_1D9179ACC();

    if (v63)
    {
      v13 = 10;
      goto LABEL_11;
    }

    v64 = sub_1D917949C();
    v66 = v65;
    if (v64 == sub_1D917949C() && v66 == v67)
    {
      v13 = 11;
      goto LABEL_10;
    }

    v68 = sub_1D9179ACC();

    if (v68)
    {
      v13 = 11;
      goto LABEL_11;
    }

    v69 = sub_1D917949C();
    v71 = v70;
    if (v69 == sub_1D917949C() && v71 == v72)
    {
      v13 = 12;
      goto LABEL_10;
    }

    v73 = sub_1D9179ACC();

    if (v73)
    {
      v13 = 12;
      goto LABEL_11;
    }

    v74 = sub_1D917949C();
    v76 = v75;
    if (v74 == sub_1D917949C() && v76 == v77)
    {
      v13 = 13;
      goto LABEL_10;
    }

    v78 = sub_1D9179ACC();

    if (v78)
    {
      v13 = 13;
      goto LABEL_11;
    }

    v79 = sub_1D917949C();
    v81 = v80;
    if (v79 == sub_1D917949C() && v81 == v82)
    {
      v13 = 14;
      goto LABEL_10;
    }

    v83 = sub_1D9179ACC();

    if (v83)
    {
      v13 = 14;
      goto LABEL_11;
    }

    v84 = sub_1D917949C();
    v86 = v85;
    if (v84 == sub_1D917949C() && v86 == v87)
    {
      v13 = 15;
      goto LABEL_10;
    }

    v88 = sub_1D9179ACC();

    if (v88)
    {
      v13 = 15;
      goto LABEL_11;
    }

    v89 = sub_1D917949C();
    v91 = v90;
    if (v89 == sub_1D917949C() && v91 == v92)
    {
      v13 = 16;
      goto LABEL_10;
    }

    v93 = sub_1D9179ACC();

    if (v93)
    {
      v13 = 16;
      goto LABEL_11;
    }

    v94 = sub_1D917949C();
    v96 = v95;
    if (v94 == sub_1D917949C() && v96 == v97)
    {
      v13 = 17;
      goto LABEL_10;
    }

    v98 = sub_1D9179ACC();

    if (v98)
    {
      v13 = 17;
      goto LABEL_11;
    }

    v99 = sub_1D917949C();
    v101 = v100;
    if (v99 == sub_1D917949C() && v101 == v102)
    {
      v13 = 18;
      goto LABEL_10;
    }

    v103 = sub_1D9179ACC();

    if (v103)
    {
      v13 = 18;
      goto LABEL_11;
    }

    v13 = 19;
    v104 = sub_1D917949C();
    v106 = v105;
    if (v104 == sub_1D917949C() && v106 == v107)
    {
      goto LABEL_10;
    }

    v108 = sub_1D9179ACC();

    if (v108)
    {
      v13 = 19;
      goto LABEL_11;
    }

    v109 = sub_1D917949C();
    v111 = v110;
    if (v109 == sub_1D917949C() && v111 == v112)
    {
      v13 = 20;
      goto LABEL_10;
    }

    v113 = sub_1D9179ACC();

    if (v113)
    {
      v13 = 20;
      goto LABEL_11;
    }

    v114 = sub_1D917949C();
    v116 = v115;
    if (v114 == sub_1D917949C() && v116 == v117)
    {
      v13 = 21;
      goto LABEL_10;
    }

    v118 = sub_1D9179ACC();

    if (v118)
    {
      v13 = 21;
      goto LABEL_11;
    }

    v119 = sub_1D917949C();
    v121 = v120;
    if (v119 == sub_1D917949C() && v121 == v122)
    {
      v13 = 22;
      goto LABEL_10;
    }

    v123 = sub_1D9179ACC();

    if (v123)
    {
      v13 = 22;
      goto LABEL_11;
    }

    v124 = sub_1D917949C();
    v126 = v125;
    if (v124 == sub_1D917949C() && v126 == v127)
    {
      v13 = 23;
      goto LABEL_10;
    }

    v128 = sub_1D9179ACC();

    if (v128)
    {
      v13 = 23;
      goto LABEL_11;
    }

    v129 = sub_1D917949C();
    v131 = v130;
    if (v129 == sub_1D917949C() && v131 == v132)
    {
      v13 = 24;
      goto LABEL_10;
    }

    v133 = sub_1D9179ACC();

    if (v133)
    {
      v13 = 24;
      goto LABEL_11;
    }

    v134 = sub_1D917949C();
    v136 = v135;
    if (v134 == sub_1D917949C() && v136 == v137)
    {
      v13 = 25;
      goto LABEL_10;
    }

    v138 = sub_1D9179ACC();

    if (v138)
    {
      v13 = 25;
      goto LABEL_11;
    }

    v139 = sub_1D917949C();
    v141 = v140;
    if (v139 == sub_1D917949C() && v141 == v142)
    {
      v13 = 26;
      goto LABEL_10;
    }

    v143 = sub_1D9179ACC();

    if (v143)
    {
      v13 = 26;
      goto LABEL_11;
    }

    v144 = sub_1D917949C();
    v146 = v145;
    if (v144 == sub_1D917949C() && v146 == v147)
    {
      v13 = 27;
      goto LABEL_10;
    }

    v148 = sub_1D9179ACC();

    if (v148)
    {
      v13 = 27;
      goto LABEL_11;
    }

    v149 = sub_1D917949C();
    v151 = v150;
    if (v149 == sub_1D917949C() && v151 == v152)
    {
      v13 = 28;
      goto LABEL_10;
    }

    v153 = sub_1D9179ACC();

    if (v153)
    {
      v13 = 28;
      goto LABEL_11;
    }

    v154 = sub_1D917949C();
    v156 = v155;
    if (v154 == sub_1D917949C() && v156 == v157)
    {
      v13 = 29;
      goto LABEL_10;
    }

    v158 = sub_1D9179ACC();

    if (v158)
    {
      v13 = 29;
      goto LABEL_11;
    }

    v159 = sub_1D917949C();
    v161 = v160;
    if (v159 == sub_1D917949C() && v161 == v162)
    {
      v13 = 30;
      goto LABEL_10;
    }

    v163 = sub_1D9179ACC();

    if (v163)
    {
      v13 = 30;
      goto LABEL_11;
    }

    v164 = sub_1D917949C();
    v166 = v165;
    if (v164 == sub_1D917949C() && v166 == v167)
    {
      v13 = 31;
      goto LABEL_10;
    }

    v168 = sub_1D9179ACC();

    if (v168)
    {
      v13 = 31;
      goto LABEL_11;
    }

    v169 = sub_1D917949C();
    v171 = v170;
    if (v169 == sub_1D917949C() && v171 == v172)
    {
      v13 = 32;
      goto LABEL_10;
    }

    v173 = sub_1D9179ACC();

    if (v173)
    {
      v13 = 32;
      goto LABEL_11;
    }

    v174 = sub_1D917949C();
    v176 = v175;
    if (v174 == sub_1D917949C() && v176 == v177)
    {
      v13 = 33;
      goto LABEL_10;
    }

    v178 = sub_1D9179ACC();

    if (v178)
    {
      v13 = 33;
      goto LABEL_11;
    }

    v179 = sub_1D917949C();
    v181 = v180;
    if (v179 == sub_1D917949C() && v181 == v182)
    {
      v13 = 34;
      goto LABEL_10;
    }

    v183 = sub_1D9179ACC();

    if (v183)
    {
      v13 = 34;
      goto LABEL_11;
    }

    v184 = sub_1D917949C();
    v186 = v185;
    if (v184 == sub_1D917949C() && v186 == v187)
    {
      v13 = 35;
      goto LABEL_10;
    }

    v188 = sub_1D9179ACC();

    if (v188)
    {
      v13 = 35;
      goto LABEL_11;
    }

    v189 = sub_1D917949C();
    v191 = v190;
    if (v189 == sub_1D917949C() && v191 == v192)
    {
      v13 = 36;
      goto LABEL_10;
    }

    v193 = sub_1D9179ACC();

    if (v193)
    {
      v13 = 36;
      goto LABEL_11;
    }

    v194 = sub_1D917949C();
    v196 = v195;
    if (v194 == sub_1D917949C() && v196 == v197)
    {
      v13 = 37;
      goto LABEL_10;
    }

    v198 = sub_1D9179ACC();

    if (v198)
    {
      v13 = 37;
      goto LABEL_11;
    }

    v199 = sub_1D917949C();
    v201 = v200;
    if (v199 == sub_1D917949C() && v201 == v202)
    {
      v13 = 38;
      goto LABEL_10;
    }

    v203 = sub_1D9179ACC();

    if (v203)
    {
      v13 = 38;
      goto LABEL_11;
    }

    v204 = sub_1D917949C();
    v206 = v205;
    if (v204 == sub_1D917949C() && v206 == v207)
    {
      v13 = 39;
      goto LABEL_10;
    }

    v208 = sub_1D9179ACC();

    if (v208)
    {
      v13 = 39;
      goto LABEL_11;
    }

    v209 = sub_1D917949C();
    v211 = v210;
    if (v209 == sub_1D917949C() && v211 == v212)
    {
      v13 = 40;
      goto LABEL_10;
    }

    v213 = sub_1D9179ACC();

    if (v213)
    {
      v13 = 40;
      goto LABEL_11;
    }

    v214 = sub_1D917949C();
    v216 = v215;
    if (v214 == sub_1D917949C() && v216 == v217)
    {
      v13 = 41;
      goto LABEL_10;
    }

    v218 = sub_1D9179ACC();

    if (v218)
    {
      v13 = 41;
      goto LABEL_11;
    }

    v219 = sub_1D917949C();
    v221 = v220;
    if (v219 == sub_1D917949C() && v221 == v222)
    {
      v13 = 42;
      goto LABEL_10;
    }

    v223 = sub_1D9179ACC();

    if (v223)
    {
      v13 = 42;
      goto LABEL_11;
    }

    v224 = sub_1D917949C();
    v226 = v225;
    if (v224 == sub_1D917949C() && v226 == v227)
    {
      v13 = 43;
      goto LABEL_10;
    }

    v228 = sub_1D9179ACC();

    if (v228)
    {
      v13 = 43;
      goto LABEL_11;
    }

    v229 = sub_1D917949C();
    v231 = v230;
    v13 = 44;
    if (v229 == sub_1D917949C() && v231 == v232)
    {
      goto LABEL_10;
    }

    v233 = sub_1D9179ACC();

    if (v233)
    {
      v13 = 44;
    }

    else
    {
      v13 = 45;
    }
  }

LABEL_11:
  *a2 = v13;
  return result;
}

uint64_t _PodcastsFeatureFlag.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t Podcasts.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E42C9C@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return Podcasts.init(rawValue:)(&v4, a2);
}

uint64_t static _PodcastsFeatureFlag.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = sub_1D917949C();
  v10 = v9;
  if (v8 == sub_1D917949C() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D9179ACC();
  }

  return v13 & 1;
}

unint64_t sub_1D8E42D80()
{
  result = qword_1ECAB4880;
  if (!qword_1ECAB4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4880);
  }

  return result;
}

unint64_t sub_1D8E42DD8()
{
  result = qword_1ECAB4888;
  if (!qword_1ECAB4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4888);
  }

  return result;
}

uint64_t sub_1D8E42E38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  v8 = sub_1D917949C();
  v10 = v9;
  if (v8 == sub_1D917949C() && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D9179ACC();
  }

  return v13 & 1;
}

unint64_t sub_1D8E42EE4()
{
  result = qword_1ECAB4890;
  if (!qword_1ECAB4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Podcasts(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Podcasts(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PodcastsFeatureFlag(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _PodcastsFeatureFlag(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

id sub_1D8E430F0()
{
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v0;
}

id sub_1D8E4314C(void *a1)
{
  v1 = a1;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id NSUserDefaults.showListShowsAllShows.getter()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1D8E43218(void *a1)
{
  v3 = a1;
  v1 = sub_1D917873C();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v3 setValue:v1 forKey:v2];
}

void NSUserDefaults.showListShowsAllShows.setter()
{
  v1 = sub_1D917873C();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v0 setValue:v1 forKey:v2];
}

id NSUserDefaults.showListSortType.getter()
{
  result = [v0 stringForKey_];
  if (result)
  {
    v2 = result;
    sub_1D917820C();

    LODWORD(result) = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0();
    if (result == 7)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

id sub_1D8E4339C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 stringForKey_];
  if (result)
  {
    v4 = result;
    sub_1D917820C();

    result = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0();
    if (result == 7)
    {
      v5 = 0;
    }

    else
    {
      v5 = result;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void NSUserDefaults.showListSortType.setter()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v0 setValue:v1 forKey:@"kShowsSortOrderKey"];
}

void (*NSUserDefaults.showListSortType.modify(uint64_t a1))(uint64_t *a1)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 stringForKey_];
  if (v4)
  {
    v5 = v4;
    sub_1D917820C();

    v6 = _s18PodcastsFoundation13ShowsSortTypeO8rawValueACSgSS_tcfC_0();
    if (v6 == 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  return sub_1D8E43630;
}

void sub_1D8E43630(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  NSUserDefaults.showListSortType.setter();
}

id sub_1D8E43658(void *a1)
{
  v1 = a1;
  v2 = [v1 dictionaryForKey_];
  if (v2)
  {
    v3 = v2;
    sub_1D917805C();

    v4 = sub_1D917802C();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t NSUserDefaults.episodeListSortTypeDictionary.getter()
{
  v1 = [v0 dictionaryForKey_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D917805C();

  return v3;
}

uint64_t sub_1D8E437A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1D917805C();
    v4 = a1;
    v5 = sub_1D917802C();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  [a1 setValue:v5 forKey:@"kEpisodeListSortOrderKey"];

  return swift_unknownObjectRelease();
}

uint64_t NSUserDefaults.episodeListSortTypeDictionary.setter(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1D917802C();
  }

  else
  {
    v2 = 0;
  }

  [v1 setValue:v2 forKey:@"kEpisodeListSortOrderKey"];

  return swift_unknownObjectRelease();
}

void sub_1D8E4390C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 episodeListSortTypeDictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917805C();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1D8E43988(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_1D917802C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEpisodeListSortTypeDictionary_];
}

void sub_1D8E43A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (a3)
  {
    sub_1D9176DFC();
    v12 = sub_1D9176E3C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v12 = sub_1D9176E3C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_1D8CF6B1C(v11, v8);
  sub_1D9176E3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v8, 1, v12);
  v15 = a1;
  v16 = 0;
  if (v14 != 1)
  {
    v16 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v13 + 8))(v8, v12);
  }

  [v15 setObject:v16 forKey:@"MTLastAppUseDate"];
  swift_unknownObjectRelease();
  sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
}

uint64_t NSUserDefaults.lastAppUseDate.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1D8CF6B1C(a1, &v12 - v6);
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v9 + 8))(v7, v8);
  }

  [v2 setObject:v10 forKey:@"MTLastAppUseDate"];
  swift_unknownObjectRelease();
  return sub_1D8D08A50(a1, &qword_1ECAB75C0, &unk_1D9188A50);
}

uint64_t sub_1D8E43D70@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastAppUseDate];
  if (v3)
  {
    v4 = v3;
    sub_1D9176DFC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D9176E3C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1D8E43E14(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1D8CF6B1C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setLastAppUseDate_];
}

uint64_t NSUserDefaults.debugOverrideAssetURL.getter()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D917820C();

  return v3;
}

void sub_1D8E43FF0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    v6 = sub_1D917820C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_1D8E44088(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v4 = 0;
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setValue:v4 forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.debugOverrideAssetURL.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v3 = 0;
  }

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 setValue:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.debugOverrideAssetURL.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v1 stringForKey_];

  if (v4)
  {
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1D8E44278;
}

uint64_t sub_1D8E44278(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = a1[1];

      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v6 = 0;
    }

    v9 = a1[2];
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v9 setValue:v6 forKey:v10];
  }

  else
  {
    if (v3)
    {
      v7 = *a1;
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v8 = 0;
    }

    v11 = a1[2];
    v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v11 setValue:v8 forKey:v10];
  }

  return swift_unknownObjectRelease();
}

void *sub_1D8E44478@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D8E444A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

unint64_t sub_1D8E44554()
{
  result = qword_1ECAB4898;
  if (!qword_1ECAB4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4898);
  }

  return result;
}

unint64_t sub_1D8E445AC()
{
  result = qword_1ECAB48A0;
  if (!qword_1ECAB48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48A0);
  }

  return result;
}

unint64_t sub_1D8E44604()
{
  result = qword_1ECAB48A8;
  if (!qword_1ECAB48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48A8);
  }

  return result;
}

unint64_t sub_1D8E4465C()
{
  result = qword_1ECAB48B0;
  if (!qword_1ECAB48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48B0);
  }

  return result;
}

void static DeviceCapabilities.mobileGestaltCapabilities()(void *a1@<X8>)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = MGGetBoolAnswer();

  *a1 = v3;
}

uint64_t NanoPodcastsArtworkToken.key.getter()
{
  v1 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_key);
  v2 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_key + 8);

  return v1;
}

CGColorRef sub_1D8E4480C()
{
  v1 = OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor;
  v2 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  GenericRGB = v2;
  if (v2 == 1)
  {
    GenericRGB = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString + 8);
    if (GenericRGB)
    {
      v4 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString);
      v5 = *(v0 + OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString + 8);

      v6 = sub_1D8D3E514(v4, GenericRGB);
      GenericRGB = CGColorCreateGenericRGB(v6 / 255.0, BYTE1(v6) / 255.0, BYTE2(v6) / 255.0, HIBYTE(v6) / 255.0);
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = GenericRGB;
    v8 = GenericRGB;
    sub_1D8E44900(v7);
  }

  sub_1D8E44910(v2);
  return GenericRGB;
}

void sub_1D8E44900(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D8E44910(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1D8E44980(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(v1 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = a1;
  sub_1D8E44900(v2);
}

void (*sub_1D8E44998(CGColorRef *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D8E4480C();
  return sub_1D8E449E0;
}

void sub_1D8E449E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor);
  *(v3 + OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1D8E44900(v4);
  }

  else
  {

    sub_1D8E44900(v4);
  }
}

id NanoPodcastsArtworkToken.__allocating_init(key:backgroundColorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor] = 1;
  v10 = &v9[OBJC_IVAR___NMTPodcastsArtworkToken_key];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NanoPodcastsArtworkToken.init(key:backgroundColorString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___NMTPodcastsArtworkToken____lazy_storage___backgroundColor] = 1;
  v5 = &v4[OBJC_IVAR___NMTPodcastsArtworkToken_key];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR___NMTPodcastsArtworkToken_backgroundColorString];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NanoPodcastsArtworkToken();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D8E44C2C()
{
  v2 = *v0;
  sub_1D9179DBC();
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E44C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

void *sub_1D8E44CDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D8E44CF4(uint64_t a1)
{
  v2 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1D8E44D30(uint64_t a1)
{
  v2 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1D8E44D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8E45214();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id NanoPodcastsArtworkToken.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NanoPodcastsArtworkToken.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NanoPodcastsArtworkToken();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E44F30()
{
  result = qword_1ECAB48D0;
  if (!qword_1ECAB48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48D0);
  }

  return result;
}

unint64_t sub_1D8E44F88()
{
  result = qword_1ECAB48D8;
  if (!qword_1ECAB48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48D8);
  }

  return result;
}

unint64_t sub_1D8E44FE0()
{
  result = qword_1ECAB48E0;
  if (!qword_1ECAB48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48E0);
  }

  return result;
}

unint64_t sub_1D8E45038()
{
  result = qword_1ECAB48E8;
  if (!qword_1ECAB48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48E8);
  }

  return result;
}

unint64_t sub_1D8E45090()
{
  result = qword_1ECAB48F0;
  if (!qword_1ECAB48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48F0);
  }

  return result;
}

unint64_t sub_1D8E450E8()
{
  result = qword_1ECAB48F8;
  if (!qword_1ECAB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB48F8);
  }

  return result;
}

unint64_t sub_1D8E45214()
{
  result = qword_1ECAB4900;
  if (!qword_1ECAB4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4900);
  }

  return result;
}

uint64_t CachingImageContentProvider.taskImageSource.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CachingImageContentProvider() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t CachingImageContentProvider.resizer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CachingImageContentProvider() + 24);

  return sub_1D8CFD9D8(v3, a1);
}

id CachingImageContentProvider.workQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for CachingImageContentProvider() + 28));

  return v1;
}

uint64_t CachingImageContentProvider.init(domain:taskImageSource:resizer:workQueue:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D8D088B4(a1, a5, &qword_1ECAB4908, &qword_1D918AFB0);
  v10 = type metadata accessor for CachingImageContentProvider();
  *(a5 + v10[5]) = *a2;
  sub_1D8CFD9D8(a3, a5 + v10[6]);
  *(a5 + v10[7]) = a4;
  v11 = a4;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v13;
  *(a5 + v10[8]) = v14;
  v15 = sub_1D8DABF0C(v12);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_1D8D08A50(a1, &qword_1ECAB4908, &qword_1D918AFB0);
  *(v16 + 16) = v15;

  *(a5 + v10[9]) = v16;
  return result;
}

uint64_t sub_1D8E454A4()
{
  v2 = *v1;
  v3 = *(*v1 + 17736);
  v6 = *v1;
  *(*v1 + 17744) = v0;

  (*(v2[2203] + 8))(v2[2204], v2[2202]);
  if (v0)
  {
    v4 = sub_1D8E45898;
  }

  else
  {
    v4 = sub_1D8E455F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E455F0()
{
  v1 = v0[2205];
  v2 = v0[2200];
  v3 = v0[2199];
  sub_1D8D088B4(v0[2206], v1, &qword_1ECAB4920, &unk_1D918AFD0);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[2216];
  v6 = v0[2215];
  v7 = v0[2214];
  v8 = v0[2213];
  v9 = v0[2210];
  v10 = v0[2206];
  v11 = v0[2205];
  if (v4 == 1)
  {
    sub_1D8D08A50(v0[2205], &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8E50398();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    sub_1D8D08A50(v10, &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8D58578((v0 + 2129));
    v7(v8, v9);
    v13 = v0[2213];
    v14 = v0[2212];
    v15 = v0[2209];
    v16 = v0[2206];
    v17 = v0[2205];
    v18 = v0[2204];
    v19 = v0[2201];
  }

  else
  {
    v21 = v0[2201];
    v22 = v0[2196];
    v23 = v0[2216];

    sub_1D8D08A50(v10, &qword_1ECAB4920, &unk_1D918AFD0);
    sub_1D8D58578((v0 + 2129));
    v7(v8, v9);
    sub_1D8E50CDC(v11, v21, type metadata accessor for ArtworkContent);
    sub_1D8E50CDC(v21, v22, type metadata accessor for ArtworkContent);
    v24 = v0[2213];
    v25 = v0[2212];
    v26 = v0[2209];
    v27 = v0[2206];
    v28 = v0[2205];
    v29 = v0[2204];
    v30 = v0[2201];
  }

  sub_1D8D58578((v0 + 2096));

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D8E45898()
{
  v1 = v0[2216];
  v2 = v0[2215];
  v3 = v0[2214];
  v4 = v0[2213];
  v5 = v0[2210];

  sub_1D8D58578((v0 + 2129));
  v3(v4, v5);
  v6 = v0[2218];
  v7 = v0[2213];
  v8 = v0[2212];
  v9 = v0[2209];
  v10 = v0[2206];
  v11 = v0[2205];
  v12 = v0[2204];
  v13 = v0[2201];
  sub_1D8D58578((v0 + 2096));

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D8E459D4@<X0>(uint64_t (*a1)(void, double)@<X1>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = sub_1D9176AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = sub_1D9176C2C();
  v9 = *(v18[0] - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v18[0]);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0, v11);
  v15 = (v2 + *(v14 + 24));
  v16 = v15[1];
  v18[2] = *v15;
  v18[3] = v16;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
  sub_1D8D447DC();

  sub_1D9176C1C();
  (*(v5 + 8))(v8, v4);

  if (*(v2 + *(v14 + 28)) <= 3u)
  {
    *(v2 + *(v14 + 28));
  }

  sub_1D9176B4C();

  return (*(v9 + 8))(v13, v18[0]);
}

uint64_t CachingImageContentProvider.source(for:)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  if (*(*(a1 + 208) + 16))
  {
    v4 = sub_1D8E5172C;
    result = 0;
  }

  else
  {
    v6 = v2 + *(type metadata accessor for CachingImageContentProvider() + 20);
    v4 = *v6;
    v7 = *(v6 + 8);
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_1D8E45D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D8, &unk_1D918B160);
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v37 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E0, &qword_1D918B170);
  v41 = *(v44 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = v37 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E8, &qword_1D918B178);
  v14 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v0 + 1;
  v39 = v37 - v15;
  sub_1D8ED1848(v52);
  v16 = v0[285];
  v47 = v0 + 1;
  v48 = v52;
  os_unfair_lock_lock((v16 + 24));
  sub_1D8E515E0((v16 + 16), v51);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v51[0];
  v37[1] = v51[0];
  sub_1D8D08A50(v52, &qword_1ECAB49F0, &unk_1D918B180);
  v18 = *v0;
  v37[2] = v18;
  v19 = sub_1D9178DBC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v52[0] = v18;
  v51[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A88, &qword_1ECAB49D8, &unk_1D918B160);
  v20 = v45;
  v21 = v42;
  sub_1D9177CEC();

  (*(v43 + 8))(v5, v21);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D41388(v38, v52);
  sub_1D8D088B4(&v53, v51, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v52);
  v43 = sub_1D9178E5C();
  v23 = v22;
  v24 = v41;
  v25 = *(v41 + 16);
  v26 = v46;
  v27 = v44;
  v25(v46, v20, v44);
  sub_1D8D088B4(v51, v52, &qword_1ECAB4928, &qword_1D918B380);
  v28 = v39;
  v25(v39, v26, v27);
  v29 = v40;
  sub_1D8D088B4(v52, v28 + *(v40 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v30 = v28 + v29[10];
  *v30 = "QueueHop";
  *(v30 + 8) = 8;
  *(v30 + 16) = 2;
  *(v28 + v29[12]) = 0;
  v49 = v43;
  v50 = v23;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v31 = v49;
  v32 = v50;
  sub_1D8D08A50(v52, &qword_1ECAB4928, &qword_1D918B380);
  v33 = *(v24 + 8);
  v33(v46, v27);
  sub_1D8D08A50(v51, &qword_1ECAB4928, &qword_1D918B380);
  v33(v45, v27);
  v34 = (v28 + v29[11]);
  *v34 = v31;
  v34[1] = v32;
  *(v28 + v29[13]) = 0;
  sub_1D8CF48EC(&qword_1ECAB27C8, &qword_1ECAB49E8, &qword_1D918B178);
  v35 = sub_1D9177B1C();
  sub_1D8D08A50(v28, &qword_1ECAB49E8, &qword_1D918B178);
  return v35;
}

uint64_t sub_1D8E46340()
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D8, &unk_1D918B160);
  v40 = *(v38 - 8);
  v1 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v3 = v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E0, &qword_1D918B170);
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = v34 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49E8, &qword_1D918B178);
  v12 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v14 = v34 - v13;
  v35 = v0;
  v15 = sub_1D8E4989C();
  v16 = *v0;
  v34[1] = v15;
  v34[2] = v16;
  v17 = sub_1D9178DBC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v45[0] = v16;
  v47[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520);
  sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A88, &qword_1ECAB49D8, &unk_1D918B160);
  v18 = v41;
  v19 = v38;
  sub_1D9177CEC();

  (*(v40 + 8))(v3, v19);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D41388((v35 + 1), v45);
  sub_1D8D088B4(&v46, v47, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v45);
  v40 = sub_1D9178E5C();
  v21 = v20;
  v22 = v37;
  v23 = *(v37 + 16);
  v24 = v42;
  v25 = v39;
  v23(v42, v18, v39);
  sub_1D8D088B4(v47, v45, &qword_1ECAB4928, &qword_1D918B380);
  v23(v14, v24, v25);
  v26 = v36;
  sub_1D8D088B4(v45, &v14[*(v36 + 36)], &qword_1ECAB4928, &qword_1D918B380);
  v27 = &v14[v26[10]];
  *v27 = "QueueHop";
  *(v27 + 1) = 8;
  v27[16] = 2;
  v14[v26[12]] = 0;
  v43 = v40;
  v44 = v21;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v28 = v43;
  v29 = v44;
  sub_1D8D08A50(v45, &qword_1ECAB4928, &qword_1D918B380);
  v30 = *(v22 + 8);
  v30(v42, v25);
  sub_1D8D08A50(v47, &qword_1ECAB4928, &qword_1D918B380);
  v30(v41, v25);
  v31 = &v14[v26[11]];
  *v31 = v28;
  *(v31 + 1) = v29;
  v14[v26[13]] = 0;
  sub_1D8CF48EC(&qword_1ECAB27C8, &qword_1ECAB49E8, &qword_1D918B178);
  v32 = sub_1D9177B1C();
  sub_1D8D08A50(v14, &qword_1ECAB49E8, &qword_1D918B178);
  return v32;
}

uint64_t sub_1D8E46900(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for ArtworkContent();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4918, &qword_1D918AFC8);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49D0, &qword_1D918B158);
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E46AC8, 0, 0);
}

uint64_t sub_1D8E46AC8()
{
  v1 = v0[13];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  sub_1D8CF48EC(&qword_1ECAB02E0, &qword_1ECAB4918, &qword_1D918AFC8);
  sub_1D91789FC();
  v2 = sub_1D8CF48EC(&qword_1ECAB02E8, &qword_1ECAB49D0, &qword_1D918B158);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1D8E46C14;
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[7];

  return MEMORY[0x1EEE6D8C8](v7, v6, v2);
}

uint64_t sub_1D8E46C14()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    v4 = sub_1D8E46EA4;
  }

  else
  {
    v4 = sub_1D8E46D40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8E46D40()
{
  v1 = v0[7];
  v2 = (*(v0[5] + 48))(v1, 1, v0[4]);
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  if (v2 == 1)
  {
    (*(v4 + 8))(v0[13], v0[11]);
    v6 = 1;
  }

  else
  {
    v7 = v0[6];
    v8 = v0[2];
    sub_1D8E50CDC(v1, v7, type metadata accessor for ArtworkContent);
    (*(v4 + 8))(v3, v5);
    sub_1D8E50CDC(v7, v8, type metadata accessor for ArtworkContent);
    v6 = 0;
  }

  v9 = v0[13];
  v10 = v0[10];
  v12 = v0[6];
  v11 = v0[7];
  (*(v0[5] + 56))(v0[2], v6, 1, v0[4]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D8E46EA4()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t CachingImageContentProvider.placeholderURL(for:generatePlaceholder:)@<X0>(uint64_t (*a1)(double, double)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v57 = type metadata accessor for ArtworkContent();
  v10 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = sub_1D9176AAC();
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v56 - v22;
  static ArtworkModel.placeholder.getter(v70);
  v91 = v70[0];
  v92 = v70[1];
  v93 = v71;
  v23 = v72;
  v24 = v73;
  v87 = v78;
  v88 = v79;
  v89 = v80;
  v90 = v81;
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  v69 = 0;
  memset(v68, 0, sizeof(v68));
  v25 = qos_class_self();
  v63 = v16;
  v64 = a3;
  v59 = a2;
  v60 = a1;
  if (v25 > 20)
  {
    if (v25 == QOS_CLASS_DEFAULT)
    {
LABEL_8:
      v26 = 1;
      goto LABEL_9;
    }

    if (v25 != QOS_CLASS_USER_INITIATED)
    {
      if (v25 == QOS_CLASS_USER_INTERACTIVE)
      {
        v26 = 3;
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v26 = 2;
  }

  else
  {
    if (v25 != QOS_CLASS_BACKGROUND)
    {
      goto LABEL_8;
    }

    v26 = 0;
  }

LABEL_9:
  sub_1D8D088B4(v68, v67, &qword_1ECAB4928, &qword_1D918B380);
  v66[201] = 16;
  memset(&v66[224], 0, 40);
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, 3.0);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a4);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a5);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v23);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v24);
  v95.width = 0.0;
  v95.height = 0.0;
  v94.width = a4;
  v94.height = a5;
  if (CGSizeEqualToSize(v94, v95))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD5E28);
    v28 = sub_1D917741C();
    v29 = sub_1D9178CFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v26;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v31, 2u);
      v32 = v31;
      v26 = v30;
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }
  }

  if (v23 == 0.0 || v24 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1EDCD5E28);
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v26;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v37, 2u);
      v38 = v37;
      v26 = v36;
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }
  }

  sub_1D8D08A50(v68, &qword_1ECAB4928, &qword_1D918B380);
  *v66 = v91;
  *&v66[16] = v92;
  *&v66[32] = v93;
  *&v66[40] = v23;
  *&v66[48] = v24;
  *&v66[120] = v87;
  *&v66[136] = v88;
  *&v66[152] = v89;
  *&v66[168] = v90;
  *&v66[56] = v83;
  *&v66[72] = v84;
  *&v66[88] = v85;
  *&v66[104] = v86;
  *&v66[176] = a4;
  *&v66[184] = a5;
  *&v66[192] = 0x4008000000000000;
  *&v66[200] = 4096;
  v66[202] = 0;
  v66[203] = v26;
  *&v66[208] = MEMORY[0x1E69E7CC0];
  v66[216] = 3;
  sub_1D8D412B0(v67, &v66[224]);
  memcpy(v82, v66, sizeof(v82));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v40 = v61 + *(v39 + 60);
  v41 = *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0) + 60));
  *v66 = ArtworkRequest.fileName.getter();
  *&v66[8] = v42;
  v43 = v62;
  (*(v12 + 104))(v15, *MEMORY[0x1E6968F70], v62);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v12 + 8))(v15, v43);

  v44 = v65;
  sub_1D9176B4C();

  v45 = v63;
  (*(v17 + 8))(v20, v63);
  v46 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v47 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  LOBYTE(v40) = [v46 fileExistsAtPath_];

  v48 = v64;
  if ((v40 & 1) == 0)
  {
    v49 = v60(a4, a5);
    if (v50 >> 60 != 15)
    {
      v51 = v58;
      *v58 = v49;
      *(v51 + 8) = v50;
      v52 = v49;
      v53 = v50;
      swift_storeEnumTagMultiPayload();
      sub_1D8D752C4(v52, v53);
      sub_1D8E47770(v51, v82);
      sub_1D8D75668(v52, v53);
      v54 = v51;
      v44 = v65;
      sub_1D8E51434(v54, type metadata accessor for ArtworkContent);
    }
  }

  sub_1D8D58578(v82);
  (*(v17 + 32))(v48, v44, v45);
  return (*(v17 + 56))(v48, 0, 1, v45);
}

uint64_t sub_1D8E47770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = sub_1D9177E0C();
  v48 = *(v46 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D9177E9C();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ArtworkContent();
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176C2C();
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  v37 = v3;
  v42 = &v36 - v16;
  sub_1D8DADA18(&v36 - v16);
  v18 = a2;
  v19 = a2;
  v20 = *(v3 + qword_1EDCD6AC8);
  sub_1D8E4A2C8(a1, v18);
  v41 = *(v3 + qword_1EDCD6AC0);
  sub_1D8DAC03C(a1, v12, type metadata accessor for ArtworkContent);
  sub_1D8D41388(v19, v51);
  v21 = v38;
  v22 = v39;
  v23 = v17;
  v24 = v13;
  (*(v39 + 16))(v38, v23, v13);
  v25 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v22 + 80) + v26 + 264) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v37;
  sub_1D8E50CDC(v12, v28 + v25, type metadata accessor for ArtworkContent);
  memcpy((v28 + v26), v51, 0x108uLL);
  v29 = v28 + v27;
  v30 = v24;
  (*(v22 + 32))(v29, v21, v24);
  v50[4] = sub_1D8E514C4;
  v50[5] = v28;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 1107296256;
  v50[2] = sub_1D8CF5F60;
  v50[3] = &block_descriptor_40;
  v31 = _Block_copy(v50);

  v32 = v43;
  sub_1D9177E4C();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v33 = v44;
  v34 = v46;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v32, v33, v31);
  _Block_release(v31);
  (*(v48 + 8))(v33, v34);
  (*(v45 + 8))(v32, v47);
  (*(v22 + 8))(v42, v30);
}

uint64_t sub_1D8E47CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = sub_1D9177E0C();
  v42 = *(v40 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D9177E9C();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTMLRequest();
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9176C2C();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v36 = &v32 - v17;
  sub_1D8E459D4(type metadata accessor for TTMLRequest, &v32 - v17);
  v19 = *(v2 + qword_1EDCD6AC8);
  sub_1D8E4A4D0(a1, a2);
  v35 = *(v3 + qword_1EDCD6AC0);
  v20 = *(a1 + 16);
  v45 = *a1;
  v46 = v20;
  v47 = *(a1 + 32);
  v48 = *(a1 + 48);
  sub_1D8DAC03C(a2, v12, type metadata accessor for TTMLRequest);
  v21 = v18;
  v22 = v33;
  (*(v13 + 16))(v15, v21, v33);
  v23 = (*(v34 + 80) + 80) & ~*(v34 + 80);
  v24 = (v11 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  v26 = v46;
  *(v25 + 24) = v45;
  *(v25 + 40) = v26;
  *(v25 + 56) = v47;
  *(v25 + 72) = v48;
  sub_1D8E50CDC(v12, v25 + v23, type metadata accessor for TTMLRequest);
  (*(v13 + 32))(v25 + v24, v15, v22);
  aBlock[4] = sub_1D8E51254;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20_0;
  v27 = _Block_copy(aBlock);

  sub_1D8E511D8(a1, v43);
  v28 = v37;
  sub_1D9177E4C();
  v43[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v29 = v38;
  v30 = v40;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v28, v29, v27);
  _Block_release(v27);
  (*(v42 + 8))(v29, v30);
  (*(v39 + 8))(v28, v41);
  (*(v13 + 8))(v36, v22);
}

uint64_t sub_1D8E48268(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = sub_1D9177E0C();
  v41 = *(v39 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D9177E9C();
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShazamSignatureRequest();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D9176C2C();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v35 = &v31 - v17;
  sub_1D8E459D4(type metadata accessor for ShazamSignatureRequest, &v31 - v17);
  v19 = *(v2 + qword_1EDCD6AC8);
  sub_1D8E4A6F0(a1, a2);
  v34 = *(v3 + qword_1EDCD6AC0);
  sub_1D8DAC03C(a2, v12, type metadata accessor for ShazamSignatureRequest);
  v20 = v18;
  v21 = v32;
  (*(v13 + 16))(v15, v20, v32);
  v22 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v23 = (v11 + *(v13 + 80) + v22) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = a1;
  sub_1D8E50CDC(v12, v24 + v22, type metadata accessor for ShazamSignatureRequest);
  (*(v13 + 32))(v24 + v23, v15, v21);
  aBlock[4] = sub_1D8E51344;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26;
  v25 = _Block_copy(aBlock);

  v26 = a1;
  v27 = v36;
  sub_1D9177E4C();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v28 = v37;
  v29 = v39;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v27, v28, v25);
  _Block_release(v25);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v40);
  (*(v13 + 8))(v35, v21);
}

uint64_t sub_1D8E48784(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v49 = a1;
  v54 = sub_1D9177E0C();
  v56 = *(v54 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D9177E9C();
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShazamSignatureRequest();
  v46 = *(v8 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176AAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D9176C2C();
  v15 = *(v43 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v42 - v19;
  aBlock = sub_1D8E4D3C4();
  v61 = v20;
  (*(v11 + 104))(v14, *MEMORY[0x1E6968F70], v10);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v11 + 8))(v14, v10);

  v21 = v58;
  sub_1D9176B4C();
  v22 = *(v15 + 8);
  v48 = v15 + 8;
  v50 = v22;
  v23 = v43;
  v22(v17, v43);
  v24 = *(v2 + qword_1EDCD6AC8);
  v25 = v49;
  v26 = v57;
  sub_1D8E4A850(v49, v57);
  v47 = *(v3 + qword_1EDCD6AC0);
  v27 = v44;
  sub_1D8DAC03C(v25, v44, type metadata accessor for ShazamSignatureRequest);
  v28 = *(v26 + 16);
  v66 = *v26;
  v67 = v28;
  v68 = *(v26 + 32);
  v29 = v23;
  (*(v15 + 16))(v17, v21, v23);
  v30 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v15 + 80) + v31 + 40) & ~*(v15 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  sub_1D8E50CDC(v27, v33 + v30, type metadata accessor for ShazamSignatureRequest);
  v34 = v33 + v31;
  v35 = v67;
  *v34 = v66;
  *(v34 + 16) = v35;
  *(v34 + 32) = v68;
  v36 = v29;
  (*(v15 + 32))(v33 + v32, v17, v29);
  v64 = sub_1D8E5046C;
  v65 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D8CF5F60;
  v63 = &block_descriptor_3;
  v37 = _Block_copy(&aBlock);

  sub_1D8D088B4(v57, v59, &qword_1ECAB4988, &qword_1D918B0D8);
  v38 = v51;
  sub_1D9177E4C();
  v59[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v39 = v52;
  v40 = v54;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v38, v39, v37);
  _Block_release(v37);
  (*(v56 + 8))(v39, v40);
  (*(v53 + 8))(v38, v55);
  v50(v58, v36);
}

uint64_t sub_1D8E48E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v49 = a1;
  v54 = sub_1D9177E0C();
  v56 = *(v54 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D9177E9C();
  v53 = *(v55 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTMLRequest();
  v46 = *(v8 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9176AAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D9176C2C();
  v15 = *(v43 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v42 - v19;
  aBlock = sub_1D8E4D3C4();
  v61 = v20;
  (*(v11 + 104))(v14, *MEMORY[0x1E6968F70], v10);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v11 + 8))(v14, v10);

  v21 = v58;
  sub_1D9176B4C();
  v22 = *(v15 + 8);
  v48 = v15 + 8;
  v50 = v22;
  v23 = v43;
  v22(v17, v43);
  v24 = *(v2 + qword_1EDCD6AC8);
  v25 = v49;
  v26 = v57;
  sub_1D8E4AA64(v49, v57);
  v47 = *(v3 + qword_1EDCD6AC0);
  v27 = v44;
  sub_1D8DAC03C(v25, v44, type metadata accessor for TTMLRequest);
  v28 = *(v26 + 16);
  v66 = *v26;
  v67 = v28;
  v68 = *(v26 + 32);
  v29 = v23;
  (*(v15 + 16))(v17, v21, v23);
  v30 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v15 + 80) + v31 + 40) & ~*(v15 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  sub_1D8E50CDC(v27, v33 + v30, type metadata accessor for TTMLRequest);
  v34 = v33 + v31;
  v35 = v67;
  *v34 = v66;
  *(v34 + 16) = v35;
  *(v34 + 32) = v68;
  v36 = v29;
  (*(v15 + 32))(v33 + v32, v17, v29);
  v64 = sub_1D8E50D44;
  v65 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D8CF5F60;
  v63 = &block_descriptor_14;
  v37 = _Block_copy(&aBlock);

  sub_1D8D088B4(v57, v59, &qword_1ECAB4998, &qword_1D918B100);
  v38 = v51;
  sub_1D9177E4C();
  v59[0] = MEMORY[0x1E69E7CC0];
  sub_1D8E50498(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v39 = v52;
  v40 = v54;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v38, v39, v37);
  _Block_release(v37);
  (*(v56 + 8))(v39, v40);
  (*(v53 + 8))(v38, v55);
  v50(v58, v36);
}

uint64_t sub_1D8E4955C()
{
  v0 = sub_1D9176C2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v26[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v26[-1] - v6);
  v8 = type metadata accessor for CachingImageContentProvider();
  __swift_allocate_value_buffer(v8, qword_1ECAB1898);
  v9 = __swift_project_value_buffer(v8, qword_1ECAB1898);
  v10 = [objc_opt_self() artworkAssetURL];
  sub_1D9176B9C();

  v11 = [objc_opt_self() defaultCenter];
  sub_1D8DAA3BC(v3, 0x500000uLL, v11, v7);
  *(swift_allocObject() + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D9177A5C();
  v26[3] = &type metadata for CGImageResizer;
  v26[4] = &protocol witness table for CGImageResizer;
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDCD5B28;
  sub_1D8D088B4(v7, v9, &qword_1ECAB4908, &qword_1D918AFB0);
  v17 = (v9 + v8[5]);
  *v17 = sub_1D8E51730;
  v17[1] = v15;
  sub_1D8CFD9D8(v26, v9 + v8[6]);
  *(v9 + v8[7]) = v16;
  v18 = v16;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  *(v9 + v8[8]) = v21;
  v22 = sub_1D8DABF0C(v19);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;

  sub_1D8D08A50(v7, &qword_1ECAB4908, &qword_1D918AFB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  *(v23 + 16) = v22;

  *(v9 + v8[9]) = v23;
  return result;
}

uint64_t sub_1D8E4989C()
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A00, &qword_1D918B190);
  v32 = *(v36 - 8);
  v1 = v32;
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A08, &qword_1D918B198);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A10, &qword_1D918B1A0);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - v14;
  v35 = v0;
  sub_1D8D088B4(v0, v42, &qword_1ECAB4A18, &qword_1D918B1A8);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v42, 0x118uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
  v37 = &protocol conformance descriptor for EmitLifecycle<A>;
  sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020);
  v33 = v6;
  sub_1D9177A7C();
  sub_1D8D41388(v0, v42);
  sub_1D8D088B4(&v42[224], v43, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v42);
  v16 = *(v1 + 16);
  v17 = v41;
  v18 = v6;
  v19 = v36;
  v16(v41, v18, v36);
  sub_1D8D088B4(v43, v42, &qword_1ECAB4928, &qword_1D918B380);
  v16(v10, v17, v19);
  sub_1D8D088B4(v42, &v10[v7[9]], &qword_1ECAB4928, &qword_1D918B380);
  v20 = &v10[v7[10]];
  *v20 = "FallbackPreferredSource";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v10[v7[12]] = 0;
  v44 = 0xD00000000000004FLL;
  v45 = 0x80000001D91CA260;
  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  v21 = v44;
  v22 = v45;
  sub_1D8D08A50(v42, &qword_1ECAB4928, &qword_1D918B380);
  v23 = *(v32 + 8);
  v23(v41, v19);
  sub_1D8D08A50(v43, &qword_1ECAB4928, &qword_1D918B380);
  v23(v33, v19);
  v34 = v7;
  v24 = &v10[v7[11]];
  *v24 = v21;
  *(v24 + 1) = v22;
  v10[v7[13]] = 0;
  v25 = v35;
  LOBYTE(v21) = *(v35 + 560);
  sub_1D8D088B4(v35 + 280, v43, &qword_1ECAB4A18, &qword_1D918B1A8);
  sub_1D8D088B4(v25, v42, &qword_1ECAB4A20, &qword_1D918B1B0);
  v26 = swift_allocObject();
  memcpy(v26 + 16, v43, 0x118uLL);
  v26[296] = v21;
  memcpy(v26 + 304, v42, 0x231uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A28, &qword_1D918B1B8);
  sub_1D8CF48EC(&qword_1ECAB2778, &qword_1ECAB4A08, &qword_1D918B198);
  sub_1D8CF48EC(&qword_1ECAB27D0, &qword_1ECAB4A28, &qword_1D918B1B8);
  v27 = v38;
  sub_1D9177BDC();

  sub_1D8D08A50(v10, &qword_1ECAB4A08, &qword_1D918B198);
  sub_1D8CF48EC(&qword_1ECAB0700, &qword_1ECAB4A10, &qword_1D918B1A0);
  v28 = v39;
  v29 = sub_1D9177B1C();
  (*(v40 + 8))(v27, v28);
  return v29;
}

uint64_t sub_1D8E49E3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v36 = a5;
  v37 = a4;
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A00, &qword_1D918B190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34[-v10];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A30, &unk_1D918B1C0);
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v34[-v16];
  sub_1D8D088B4(a2, v44, &qword_1ECAB4A18, &qword_1D918B1A8);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v44, 0x118uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
  sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020);
  sub_1D9177A7C();
  v18 = swift_allocObject();
  *(v18 + 16) = v35;
  *(v18 + 24) = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CF48EC(&qword_1ECAB4A38, &qword_1ECAB4A00, &qword_1D918B190);
  v20 = v39;
  sub_1D9177D0C();

  (*(v8 + 8))(v11, v7);
  sub_1D8D41388(v37, v44);
  sub_1D8D088B4(&v44[224], v43, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v44);
  v21 = v12;
  v22 = *(v12 + 16);
  v23 = v40;
  v24 = v38;
  v22(v40, v20, v38);
  sub_1D8D088B4(v43, v44, &qword_1ECAB4928, &qword_1D918B380);
  v25 = v36;
  v22(v36, v23, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4A28, &qword_1D918B1B8);
  sub_1D8D088B4(v44, &v25[v26[9]], &qword_1ECAB4928, &qword_1D918B380);
  v27 = &v25[v26[10]];
  v28 = v25;
  *v27 = "FallbackBackupSource";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v25[v26[12]] = 0;
  v41 = 0xD00000000000004FLL;
  v42 = 0x80000001D91CA260;
  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  v29 = v41;
  v30 = v42;
  sub_1D8D08A50(v44, &qword_1ECAB4928, &qword_1D918B380);
  v31 = *(v21 + 8);
  v31(v40, v24);
  sub_1D8D08A50(v43, &qword_1ECAB4928, &qword_1D918B380);
  result = (v31)(v39, v24);
  v33 = &v28[v26[11]];
  *v33 = v29;
  v33[1] = v30;
  v28[v26[13]] = 0;
  return result;
}

uint64_t sub_1D8E4A2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ArtworkContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8DAC03C(a1, v14, type metadata accessor for ArtworkContent);
  v15 = ArtworkContent.inMemorySize.getter();
  sub_1D9176E0C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C8, &qword_1D918B148);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_1D8E50CDC(v14, v19 + *(*v19 + 120), type metadata accessor for ArtworkContent);
  *(v19 + *(*v19 + 128)) = v15;
  (*(v7 + 32))(v19 + *(*v19 + 136), v10, v6);
  v20 = *(v3 + 16);
  v23 = a2;
  v24 = v3;
  v25 = v19;
  os_unfair_lock_lock((v20 + 40));
  sub_1D8E515C0((v20 + 16));
  os_unfair_lock_unlock((v20 + 40));
}

void sub_1D8E4A4D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_11;
    }

    v15 = v10 + 16;
    v10 = *(v10 + 16);
    v14 = *(v15 + 8);
    v13 = v14 - v10;
    if (!__OFSUB__(v14, v10))
    {
LABEL_10:
      if (v13 < 0)
      {
        __break(1u);
        goto LABEL_15;
      }

LABEL_11:
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      sub_1D8E511D8(a1, v33);
      v20 = sub_1D9142B08(v19);
      v21 = v13 + v20;
      if (!__CFADD__(v13, v20))
      {
        v22 = sub_1D9142C0C(v18);
        v23 = __CFADD__(v21, v22);
        v24 = v21 + v22;
        if (!v23)
        {
          sub_1D9176E0C();
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B0, &qword_1D918B128);
          v26 = *(v25 + 48);
          v27 = *(v25 + 52);
          v28 = swift_allocObject();
          v29 = *(a1 + 16);
          *(v28 + 16) = *a1;
          *(v28 + 32) = v29;
          *(v28 + 48) = *(a1 + 32);
          *(v28 + 64) = *(a1 + 48);
          *(v28 + 72) = v24;
          v30 = (*(v6 + 32))(v28 + *(*v28 + 136), v9, v5);
          v31 = *(v2 + 16);
          MEMORY[0x1EEE9AC00](v30);
          *(&v32 - 4) = a2;
          *(&v32 - 3) = v2;
          *(&v32 - 2) = v28;
          os_unfair_lock_lock((v31 + 40));
          sub_1D8E51234((v31 + 16));
          os_unfair_lock_unlock((v31 + 40));

          return;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v11);
    goto LABEL_11;
  }

  v16 = __OFSUB__(HIDWORD(v10), v10);
  v17 = HIDWORD(v10) - v10;
  if (!v16)
  {
    v13 = v17;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1D8E4A6F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = SHSignature.inMemorySize.getter();
  sub_1D9176E0C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49A8, &qword_1D918B118);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  *(v15 + 3) = v11;
  (*(v7 + 32))(&v15[*(*v15 + 136)], v10, v6);
  v16 = *(v3 + 16);
  v20 = a2;
  v21 = v3;
  v22 = v15;
  v17 = a1;
  os_unfair_lock_lock((v16 + 40));
  sub_1D8E511B8((v16 + 16));
  os_unfair_lock_unlock((v16 + 40));
}