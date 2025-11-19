uint64_t (*sub_21B1D8F20(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B1D9C64;
}

uint64_t (*sub_21B1D8F48(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_21B1D8F70;
}

void sub_21B1D8F7C(uint64_t a1, char a2, void *a3)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE30, &qword_21B212328);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_21B18BFF8(v56, v13, &qword_27CD6EE30, &qword_21B212328);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_21B1B9778(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B203BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_21B201414(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_21B1B9778(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_21B18BFF8(v56 + *(v60 + 72) * v37, v13, &qword_27CD6EE30, &qword_21B212328);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_21B1B9778(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_21B201414(v46, 1);
            v48 = *a3;
            v42 = sub_21B1B9778(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1D94F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *__return_ptr, _OWORD *))
{
  v38 = a5;
  v7 = a1;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v32 = result;
  v33 = a4;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
    }

    v11 = *(v8 + 8 * v19);
    ++v14;
    if (v11)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v21 = (*(v7 + 48) + ((v19 << 10) | (16 * v20)));
        v23 = *v21;
        v22 = v21[1];
        v24 = *(a4 + 16);

        if (v24 && (v25 = sub_21B1B9778(v23, v22), (v26 & 1) != 0))
        {
          sub_21B17FB4C(*(a4 + 56) + 40 * v25, v35);
          sub_21B17C284(v35, v36);
          v27 = sub_21B1D41A8(v34, v23, v22);
          v29 = v28;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
          if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
          {
            a6(v35, v36);
            sub_21B20CB68();
            sub_21B1D9824(v35);
          }

          (v27)(v34, 0);
          __swift_destroy_boxed_opaque_existential_1(v36);

          v14 = v19;
          v7 = v32;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = sub_21B1D41A8(v35, v23, v22);
          v17 = v16;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F688, &unk_21B215610);
          if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
          {
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            sub_21B20CB78();
            sub_21B186488(v36, &qword_27CD6FB48, &qword_21B2169D8);
          }

          (v15)(v35, 0);

          v14 = v19;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v19 = v14;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B1D97C0()
{
  result = qword_27CD6FB40;
  if (!qword_27CD6FB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FB38, &qword_21B2169D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB40);
  }

  return result;
}

uint64_t sub_21B1D98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *__return_ptr, _OWORD *))
{
  v38 = a5;
  v7 = a1;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  v32 = result;
  v33 = a4;
  if (v11)
  {
    goto LABEL_8;
  }

LABEL_9:
  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v12)
    {
    }

    v11 = *(v8 + 8 * v19);
    ++v14;
    if (v11)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v21 = (*(v7 + 48) + ((v19 << 10) | (16 * v20)));
        v23 = *v21;
        v22 = v21[1];
        v24 = *(a4 + 16);

        if (v24 && (v25 = sub_21B1B9778(v23, v22), (v26 & 1) != 0))
        {
          sub_21B17FB4C(*(a4 + 56) + 40 * v25, v35);
          sub_21B17C284(v35, v36);
          v27 = sub_21B1D4234(v34, v23, v22);
          v29 = v28;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
          if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
          {
            a6(v35, v36);
            sub_21B20CB68();
            __swift_destroy_boxed_opaque_existential_1(v35);
          }

          (v27)(v34, 0);
          __swift_destroy_boxed_opaque_existential_1(v36);

          v14 = v19;
          v7 = v32;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v15 = sub_21B1D4234(v35, v23, v22);
          v17 = v16;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
          if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
          {
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            sub_21B20CB78();
            sub_21B186488(v36, &qword_27CD6FA40, &qword_21B216D60);
          }

          (v15)(v35, 0);

          v14 = v19;
          a4 = v33;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v19 = v14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1D9B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_21B1D9C10()
{
  result = qword_27CD6FB80;
  if (!qword_27CD6FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB80);
  }

  return result;
}

uint64_t sub_21B1D9C88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = result;
    v8 = a3 + 32;
    while (1)
    {
      sub_21B17FB4C(v8, &v26);
      v10 = v27;
      v9 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      if ((*(*(v9 + 8) + 8))(v10) == v7 && v11 == a2)
      {
        break;
      }

      v13 = sub_21B20DB28();

      if (v13)
      {
        goto LABEL_11;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v26);
      v8 += 40;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_21B17C284(&v26, &v29);
    sub_21B17C284(&v29, &v26);
    sub_21B17FB4C(&v26, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE88, &qword_21B212378);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB98, &qword_21B216AE8);
    if (swift_dynamicCast())
    {
      sub_21B17C284(v21, v23);
      v18 = v24;
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v19 + 8))(&v29, v18, v19);
      v20 = v29;
      v14 = v30;
      v15 = v31;
      v16 = v32;
      __swift_destroy_boxed_opaque_existential_1(&v26);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      v17 = v20;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v26);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      result = sub_21B186488(v21, &qword_27CD6FBA0, &qword_21B216AF0);
      v17 = 0uLL;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
  }

  *a4 = v17;
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  return result;
}

uint64_t sub_21B1D9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21B1D9C88(a1, a2, a3, &v12);
  if (!v3)
  {
    if (v14)
    {
      if (v13)
      {
        v10[0] = v12;
        v10[1] = v13;

        sub_21B1DA02C(v10, a3, &v9, &v11);

        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21B1D9FD8();
      swift_allocError();
      *v8 = a1;
      v8[1] = a2;
      swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_21B1D9FD8()
{
  result = qword_27CD6FB88;
  if (!qword_27CD6FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FB88);
  }

  return result;
}

uint64_t sub_21B1DA02C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + 32;
    while (1)
    {
      sub_21B17FB4C(v9, &v24);
      v11 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      if ((*(*(v10 + 8) + 8))(v11) == v7 && v12 == v6)
      {
        break;
      }

      v14 = sub_21B20DB28();

      if (v14)
      {
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);
      v9 += 40;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    sub_21B17C284(&v24, v27);
  }

  else
  {
LABEL_9:
    v28 = 0;
    memset(v27, 0, sizeof(v27));
  }

  sub_21B1DA228(v27, &v21);
  if (v23)
  {
    sub_21B17C284(&v21, &v24);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(&v24, v25);
    (*(v16 + 32))(&v21, v15, v16);
    sub_21B186488(v27, &qword_27CD6FB90, &qword_21B216AE0);
    v17 = v22;

    *a4 = v17;
    return __swift_destroy_boxed_opaque_existential_1(&v24);
  }

  else
  {
    sub_21B186488(&v21, &qword_27CD6FB90, &qword_21B216AE0);
    sub_21B1D9FD8();
    v19 = swift_allocError();
    *v20 = v7;
    v20[1] = v6;
    swift_willThrow();

    result = sub_21B186488(v27, &qword_27CD6FB90, &qword_21B216AE0);
    *a3 = v19;
  }

  return result;
}

uint64_t sub_21B1DA228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB90, &qword_21B216AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DA2A8@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_21B20CF28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *a1;
  result = sub_21B20CE98();
  if (!v2)
  {
    v14 = v24;
    sub_21B20CF18();
    v15 = *(v5 + 8);
    v16 = v4;
    v17 = v15;
    v15(v9, v16);
    v18 = sub_21B20CEE8();
    v23 = v17;
    v19 = MEMORY[0x277D84F90];
    while (v18)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_21B1D26D8(0, v19[2] + 1, 1, v19);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = sub_21B1D26D8((v20 > 1), v21 + 1, 1, v19);
      }

      v19[2] = v21 + 1;
      v19[v21 + 4] = v18;
      v18 = sub_21B20CEE8();
    }

    sub_21B1DCAA4(v19, v14);

    return v23(v11, v16);
  }

  return result;
}

uint64_t sub_21B1DA538()
{
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21B20D5D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  sub_21B206F78();
  if (!v1)
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v9, 1, 1, AssociatedTypeWitness);
    v10 = sub_21B20710C(v9);
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v0 = sub_21B195128(v10, v12, v14, 0, 0);
    sub_21B1DAA04(v14);

    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t PoirotTask.runQuery(_:withParameters:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_21B1DA538();
  if (!v2)
  {
    v6 = result;
    v7 = *(result + 208);
    v9[3] = type metadata accessor for RecipeProcessor();
    v9[4] = &off_282CA09B8;
    v9[0] = v6;

    sub_21B1938A8(v9, 1, v7);

    __swift_destroy_boxed_opaque_existential_1(v9);
    sub_21B198CB4();
    v8 = *(v6 + 152);
    v9[0] = v4;
    sub_21B1DA2A8(v9, a2);
  }

  return result;
}

uint64_t PoirotTask.runQueryBlock(withName:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  result = sub_21B1DA538();
  if (!v4)
  {
    v10 = result;
    v11 = *(result + 208);
    v15[3] = type metadata accessor for RecipeProcessor();
    v15[4] = &off_282CA09B8;
    v15[0] = v10;

    v12 = sub_21B1938A8(v15, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_21B198CB4();
    v13 = *(v10 + 152);

    sub_21B1D9EA8(a1, a2, v12);
    v15[6] = v14;

    v15[0] = v8;
    sub_21B1DA2A8(v15, a4);
  }

  return result;
}

uint64_t sub_21B1DAA04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF10, &qword_21B212468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1DAA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21B20D2C8();
  v15 = sub_21B20D2C8();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_21B20C5E8();

    v17 = sub_21B20C678();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  }

  else
  {
    v17 = sub_21B20C678();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  }

  sub_21B1DAD94(v9, v11);
  sub_21B1DAE04(v11, v6);
  sub_21B20C678();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_21B1B18DC(v6);
    result = sub_21B20D7C8();
    __break(1u);
  }

  else
  {
    sub_21B1B18DC(v11);
    return (*(v18 + 32))(a1, v6, v17);
  }

  return result;
}

uint64_t sub_21B1DAD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DAE04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DatasetRow.init(name:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v6 = result;
  v7 = 0;
  v39 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v20 = (*(v39 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      sub_21B19DB00(*(v39 + 56) + 32 * v19, v38);
      sub_21B19DB00(v38, v36);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
      if (!swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v38);
      sub_21B17C284(v34, v37);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v23 = (v6[6] + 16 * v19);
      *v23 = v21;
      v23[1] = v22;
      result = sub_21B17C284(v37, v6[7] + 40 * v19);
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v6[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_21B186488(v34, &qword_27CD6FA40, &qword_21B216D60);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    swift_getDynamicType();
    v27 = sub_21B20DD38();
    v29 = v28;
    sub_21B186430();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 4;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v6;
        return result;
      }

      v18 = *(v9 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v29 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v30 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      sub_21B1A37FC(*(v30 + 56) + 40 * v18, v31);
      *(v29 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v22 = (v6[6] + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      result = sub_21B17C284(v31, v6[7] + 40 * v18);
      v23 = v6[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v6[2] = v25;

      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        *a4 = a1;
        a4[1] = a2;
        a4[2] = v6;
        return result;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1DB110(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(a1 + 16);

  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = (*(v2 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      sub_21B17FB4C(*(v2 + 56) + 40 * v12, v28);
      *&v27 = v14;
      *(&v27 + 1) = v15;
      v23 = v27;
      v24 = v28[0];
      v25 = v28[1];
      v26 = v29;
      v16 = v27;
      v17 = *(v3 + 16);

      if (!v17)
      {
        break;
      }

      v18 = sub_21B1B9778(v16, *(&v16 + 1));
      if ((v19 & 1) == 0)
      {
        break;
      }

      sub_21B17FB4C(*(v3 + 56) + 40 * v18, v22);
      sub_21B17C284(v22, &v30);
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      v20 = sub_21B20CE18();
      __swift_destroy_boxed_opaque_existential_1(&v30);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_21B186488(&v23, &qword_27CD6EBA8, &qword_21B2115C0);
      v10 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v21 = 0;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
LABEL_15:
    sub_21B186488(&v30, &qword_27CD6FBB8, "P~");
    return v21;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0;
        v21 = 1;
        goto LABEL_15;
      }

      v6 = *(v2 + 64 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DatasetRow.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DatasetRow.cells.getter()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FBA8, &qword_21B216B80);
  result = sub_21B20D7E8();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v23 = result + 64;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_21B17FB4C(*(v1 + 56) + 40 * v12, v26);
      result = sub_21B17C284(v26, v24);
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v16 = (v3[6] + 16 * v12);
      *v16 = v15;
      v16[1] = v14;
      v17 = v3[7] + 40 * v12;
      v18 = v25;
      v19 = v24[1];
      *v17 = v24[0];
      *(v17 + 16) = v19;
      *(v17 + 32) = v18;
      v20 = v3[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v3[2] = v22;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DatasetRow.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v49 = MEMORY[0x277D84F90];
    sub_21B18FCF8(0, v4, 0);
    v5 = v49;
    v6 = v3 + 64;
    v7 = -1 << *(v3 + 32);
    v8 = sub_21B20D648();
    v9 = 0;
    v36 = *(v3 + 36);
    v35 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v3 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v36 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v13 = a1;
      v14 = (*(v3 + 48) + 16 * v8);
      v16 = *v14;
      v15 = v14[1];
      sub_21B17FB4C(*(v3 + 56) + 40 * v8, v44);
      v41[0] = v16;
      v41[1] = v15;
      sub_21B17C284(v44, v42);
      sub_21B18BFF8(v41, &v39, &qword_27CD6EBA8, &qword_21B2115C0);
      v45 = v39;
      v37[0] = v42[0];
      v37[1] = v42[1];
      v38 = v43;

      sub_21B17C284(v37, &v46);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v49 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21B18FCF8((v17 > 1), v18 + 1, 1);
        v5 = v49;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 56 * v18;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      *(v19 + 80) = v48;
      *(v19 + 48) = v21;
      *(v19 + 64) = v22;
      *(v19 + 32) = v20;
      v10 = 1 << *(v3 + 32);
      if (v8 >= v10)
      {
        goto LABEL_27;
      }

      v6 = v3 + 64;
      v23 = *(v3 + 64 + 8 * v12);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_28;
      }

      if (v36 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        a1 = v13;
        v11 = v35;
      }

      else
      {
        v25 = v12 << 6;
        v26 = v12 + 1;
        v27 = (v3 + 72 + 8 * v12);
        a1 = v13;
        v11 = v35;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_21B17C2EC(v8, v36, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_21B17C2EC(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v11)
      {
        goto LABEL_20;
      }
    }

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

    __break(1u);
  }

  else
  {
LABEL_20:
    *&v45 = v5;

    sub_21B1DBB40(&v45);

    v30 = *(v45 + 16);
    if (v30)
    {
      v31 = v45 + 32;
      do
      {
        sub_21B18BFF8(v31, &v45, &qword_27CD6EC40, &qword_21B212500);
        sub_21B20D388();
        v32 = v48;
        __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
        v33 = *(v32 + 16);
        sub_21B20D288();
        sub_21B186488(&v45, &qword_27CD6EC40, &qword_21B212500);
        v31 += 56;
        --v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t DatasetRow.hashValue.getter()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_21B20DC88();
  DatasetRow.hash(into:)(v2);
  return sub_21B20DCA8();
}

uint64_t sub_21B1DBA94()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_21B20DC88();
  DatasetRow.hash(into:)(v2);
  return sub_21B20DCA8();
}

uint64_t sub_21B1DBAEC()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_21B20DC88();
  DatasetRow.hash(into:)(v2);
  return sub_21B20DCA8();
}

uint64_t sub_21B1DBB40(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21B1858A8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21B1DBBAC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21B1DBBAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B20DAA8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC40, &qword_21B212500);
        v5 = sub_21B20D488();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21B1DBE2C(v7, v8, a1, v4);
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
    return sub_21B1DBCB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B1DBCB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_21B18BFF8(v8, v20, &qword_27CD6EC40, &qword_21B212500);
      v9 = v8 - 56;
      sub_21B18BFF8(v8 - 56, v19, &qword_27CD6EC40, &qword_21B212500);
      if (v20[0] == v19[0] && v20[1] == v19[1])
      {
        sub_21B186488(v19, &qword_27CD6EC40, &qword_21B212500);
        result = sub_21B186488(v20, &qword_27CD6EC40, &qword_21B212500);
LABEL_5:
        a3 = v21 + 1;
        v5 += 56;
        --v6;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = sub_21B20DB28();
      sub_21B186488(v19, &qword_27CD6EC40, &qword_21B212500);
      result = sub_21B186488(v20, &qword_27CD6EC40, &qword_21B212500);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *(v8 + 48);
      v14 = *(v8 + 16);
      v13 = *(v8 + 32);
      v15 = *v8;
      v16 = *(v8 - 40);
      *v8 = *v9;
      *(v8 + 16) = v16;
      *(v8 + 32) = *(v8 - 24);
      *(v8 + 48) = *(v8 - 8);
      *v9 = v15;
      *(v8 - 40) = v14;
      *(v8 - 24) = v13;
      v8 -= 56;
      *(v9 + 48) = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1DBE2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_103:
    v10 = v6;
    v6 = *v105;
    if (!*v105)
    {
      goto LABEL_144;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_106:
      v119 = result;
      v97 = *(result + 16);
      if (v97 >= 2)
      {
        v4 = 56;
        while (*a3)
        {
          v98 = *(result + 16 * v97);
          v99 = result;
          v100 = *(result + 16 * (v97 - 1) + 40);
          sub_21B1DC604((*a3 + 56 * v98), (*a3 + 56 * *(result + 16 * (v97 - 1) + 32)), *a3 + 56 * v100, v6);
          if (v10)
          {
          }

          if (v100 < v98)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = sub_21B185388(v99);
          }

          if (v97 - 2 >= *(v99 + 2))
          {
            goto LABEL_132;
          }

          v101 = &v99[16 * v97];
          *v101 = v98;
          *(v101 + 1) = v100;
          v119 = v99;
          sub_21B1852FC(v97 - 1);
          result = v119;
          v97 = *(v119 + 16);
          if (v97 <= 1)
          {
          }
        }

        goto LABEL_142;
      }
    }

LABEL_138:
    result = sub_21B185388(v4);
    goto LABEL_106;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &qword_21B212500;
  while (1)
  {
    v11 = v8++;
    v109 = v9;
    if (v8 < v7)
    {
      v12 = v7;
      v13 = v8;
      v14 = *a3;
      v15 = v13;
      sub_21B18BFF8(*a3 + 56 * v13, &v117, &qword_27CD6EC40, &qword_21B212500);
      sub_21B18BFF8(v14 + 56 * v11, &v115, &qword_27CD6EC40, &qword_21B212500);
      v112 = v6;
      if (v117 == v115 && v118 == v116)
      {
        v107 = 0;
      }

      else
      {
        v107 = sub_21B20DB28();
      }

      sub_21B186488(&v115, &qword_27CD6EC40, &qword_21B212500);
      result = sub_21B186488(&v117, &qword_27CD6EC40, &qword_21B212500);
      v16 = (v11 + 2);
      v103 = v11;
      v4 = 56 * v11;
      v17 = v14 + 56 * v11 + 112;
      v18 = v4 + 56;
      v19 = v15;
      v20 = v12;
      do
      {
        v6 = v16;
        v22 = v19;
        v23 = v18;
        if (v16 >= v20)
        {
          break;
        }

        sub_21B18BFF8(v17, &v117, &qword_27CD6EC40, &qword_21B212500);
        sub_21B18BFF8(v17 - 56, &v115, &qword_27CD6EC40, &qword_21B212500);
        v24 = v117 == v115 && v118 == v116;
        v21 = v24 ? 0 : sub_21B20DB28();
        sub_21B186488(&v115, &qword_27CD6EC40, &qword_21B212500);
        result = sub_21B186488(&v117, &qword_27CD6EC40, &qword_21B212500);
        v16 = v6 + 1;
        v17 += 56;
        v19 = (v22 + 1);
        v18 = v23 + 56;
      }

      while (((v107 ^ v21) & 1) == 0);
      if (v107)
      {
        v11 = v103;
        if (v6 < v103)
        {
          goto LABEL_135;
        }

        if (v103 < v6)
        {
          v25 = v103;
          do
          {
            if (v25 != v22)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v28 = (v27 + v4);
              v29 = *(v27 + v4 + 48);
              v30 = (v27 + v23);
              v32 = v28[1];
              v31 = v28[2];
              v33 = *v28;
              v35 = v30[1];
              v34 = v30[2];
              v36 = *v30;
              *(v28 + 6) = *(v30 + 6);
              v28[1] = v35;
              v28[2] = v34;
              *v28 = v36;
              *v30 = v33;
              v30[1] = v32;
              v30[2] = v31;
              *(v30 + 6) = v29;
            }

            ++v25;
            v23 -= 56;
            v4 += 56;
          }

          while (v25 < v22--);
        }

        v8 = v6;
        v6 = v112;
      }

      else
      {
        v8 = v6;
        v6 = v112;
        v11 = v103;
      }
    }

    v37 = a3[1];
    if (v8 < v37)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_134;
      }

      if (v8 - v11 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v11)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v6;
    if (result)
    {
      v9 = v109;
    }

    else
    {
      result = sub_21B18539C(0, v109[2] + 1, 1, v109);
      v9 = result;
    }

    v4 = v9[2];
    v52 = v9[3];
    v53 = v4 + 1;
    if (v4 >= v52 >> 1)
    {
      result = sub_21B18539C((v52 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v53;
    v54 = &v9[2 * v4];
    v54[4] = v11;
    v54[5] = v8;
    v110 = *v105;
    if (!*v105)
    {
      goto LABEL_143;
    }

    if (v4)
    {
      while (1)
      {
        v55 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = v9[4];
          v57 = v9[5];
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_71:
          if (v59)
          {
            goto LABEL_122;
          }

          v72 = &v9[2 * v53];
          v74 = *v72;
          v73 = v72[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_125;
          }

          v78 = &v9[2 * v55 + 4];
          v80 = *v78;
          v79 = v78[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_129;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v53 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v82 = &v9[2 * v53];
        v84 = *v82;
        v83 = v82[1];
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_85:
        if (v77)
        {
          goto LABEL_124;
        }

        v85 = &v9[2 * v55];
        v87 = v85[4];
        v86 = v85[5];
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_127;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v55 - 1;
        if (v55 - 1 >= v53)
        {
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

        v6 = v8;
        v93 = v9;
        v94 = v9[2 * v4 + 4];
        v95 = v9[2 * v55 + 5];
        sub_21B1DC604((*a3 + 56 * v94), (*a3 + 56 * v9[2 * v55 + 4]), *a3 + 56 * v95, v110);
        if (v114)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_21B185388(v93);
        }

        if (v4 >= *(v93 + 2))
        {
          goto LABEL_119;
        }

        v114 = 0;
        v96 = &v93[16 * v4];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v119 = v93;
        result = sub_21B1852FC(v55);
        v9 = v119;
        v53 = *(v119 + 16);
        v8 = v6;
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[2 * v53 + 4];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_120;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_121;
      }

      v67 = &v9[2 * v53];
      v69 = *v67;
      v68 = v67[1];
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_123;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_126;
      }

      if (v71 >= v63)
      {
        v89 = &v9[2 * v55 + 4];
        v91 = *v89;
        v90 = v89[1];
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v58 < v92)
        {
          v55 = v53 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = v114;
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

  v38 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_136;
  }

  if (v38 >= v37)
  {
    v38 = a3[1];
  }

  if (v38 < v11)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v38)
  {
    goto LABEL_51;
  }

  v113 = v6;
  v39 = *a3;
  v40 = *a3 + 56 * v8;
  v106 = v38;
  v108 = v8;
  v104 = v11;
  v41 = v11 - v8;
LABEL_40:
  v4 = v41;
  v42 = v40;
  while (1)
  {
    sub_21B18BFF8(v42, &v117, &qword_27CD6EC40, &qword_21B212500);
    v43 = v42 - 56;
    sub_21B18BFF8(v42 - 56, &v115, &qword_27CD6EC40, &qword_21B212500);
    if (v117 == v115 && v118 == v116)
    {
      sub_21B186488(&v115, &qword_27CD6EC40, &qword_21B212500);
      sub_21B186488(&v117, &qword_27CD6EC40, &qword_21B212500);
LABEL_39:
      v40 += 56;
      --v41;
      if (++v108 == v106)
      {
        v8 = v106;
        v6 = v113;
        v11 = v104;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v45 = sub_21B20DB28();
    sub_21B186488(&v115, &qword_27CD6EC40, &qword_21B212500);
    result = sub_21B186488(&v117, &qword_27CD6EC40, &qword_21B212500);
    if ((v45 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v39)
    {
      break;
    }

    v46 = *(v42 + 48);
    v48 = *(v42 + 16);
    v47 = *(v42 + 32);
    v49 = *v42;
    v50 = *(v42 - 40);
    *v42 = *v43;
    *(v42 + 16) = v50;
    *(v42 + 32) = *(v42 - 24);
    *(v42 + 48) = *(v42 - 8);
    *v43 = v49;
    *(v42 - 40) = v48;
    *(v42 - 24) = v47;
    v42 -= 56;
    *(v43 + 48) = v46;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_39;
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

uint64_t sub_21B1DC604(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v36 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      v18 = v6;
    }

    else
    {
      do
      {
        v18 = v6 - 56;
        v19 = (v36 - 56);
        v5 -= 56;
        while (1)
        {
          sub_21B18BFF8(v19, &v34, &qword_27CD6EC40, &qword_21B212500);
          sub_21B18BFF8((v6 - 56), &v32, &qword_27CD6EC40, &qword_21B212500);
          v22 = v34 == v32 && v35 == v33;
          v23 = v22 ? 0 : sub_21B20DB28();
          sub_21B186488(&v32, &qword_27CD6EC40, &qword_21B212500);
          sub_21B186488(&v34, &qword_27CD6EC40, &qword_21B212500);
          if (v23)
          {
            break;
          }

          if (v5 + 56 != v19 + 56)
          {
            v24 = *v19;
            v25 = *(v19 + 16);
            v26 = *(v19 + 32);
            *(v5 + 48) = *(v19 + 48);
            *(v5 + 16) = v25;
            *(v5 + 32) = v26;
            *v5 = v24;
          }

          v20 = v19 - 56;
          v5 -= 56;
          v21 = v19 > v4;
          v19 -= 56;
          if (!v21)
          {
            v36 = (v20 + 56);
            v18 = v6;
            goto LABEL_44;
          }
        }

        if ((v5 + 56) != v6)
        {
          v27 = *v18;
          v28 = *(v6 - 40);
          v29 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v28;
          *(v5 + 32) = v29;
          *v5 = v27;
        }

        v36 = (v19 + 56);
        if (v19 + 56 <= v4)
        {
          break;
        }

        v6 -= 56;
      }

      while (v18 > v7);
      v36 = (v19 + 56);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[56 * v9] <= a4)
    {
      memmove(a4, __dst, 56 * v9);
    }

    v36 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_21B18BFF8(v6, &v34, &qword_27CD6EC40, &qword_21B212500);
        sub_21B18BFF8(v4, &v32, &qword_27CD6EC40, &qword_21B212500);
        v12 = v34 == v32 && v35 == v33;
        if (v12)
        {
          break;
        }

        v13 = sub_21B20DB28();
        sub_21B186488(&v32, &qword_27CD6EC40, &qword_21B212500);
        sub_21B186488(&v34, &qword_27CD6EC40, &qword_21B212500);
        if ((v13 & 1) == 0)
        {
          goto LABEL_16;
        }

        v14 = v6;
        v12 = v7 == v6;
        v6 += 56;
        if (!v12)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 56;
        if (v4 >= v36 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      sub_21B186488(&v32, &qword_27CD6EC40, &qword_21B212500);
      sub_21B186488(&v34, &qword_27CD6EC40, &qword_21B212500);
LABEL_16:
      v14 = v4;
      v12 = v7 == v4;
      v4 += 56;
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_17:
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 2);
      *(v7 + 6) = *(v14 + 6);
      *(v7 + 1) = v16;
      *(v7 + 2) = v17;
      *v7 = v15;
      goto LABEL_18;
    }

LABEL_20:
    v18 = v7;
  }

LABEL_44:
  v30 = (v36 - v4) / 56;
  if (v18 != v4 || v18 >= &v4[56 * v30])
  {
    memmove(v18, v4, 56 * v30);
  }

  return 1;
}

uint64_t _s12PoirotBlocks10DatasetRowV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (*(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

  v10[8] = v2;
  v10[9] = v3;
  v7 = *a2;
  v6 = a2[1];
  v8 = a1[1];
  v10[3] = *a1;
  v10[4] = v8;
  v10[5] = v4;
  v10[0] = v7;
  v10[1] = v6;
  v10[2] = v5;
  return sub_21B1DB110(v10) & 1;
}

unint64_t sub_21B1DCA40()
{
  result = qword_27CD6FBB0;
  if (!qword_27CD6FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FBB0);
  }

  return result;
}

uint64_t sub_21B1DCAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB70, &qword_21B216A00);
  v4 = *(*(v67 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v66 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v65 = &v54 - v7;
  v64 = sub_21B20CB98();
  v68 = *(v64 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v64);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84FA0];
  v73[0] = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 32);
    do
    {
      v14 = *v13++;

      sub_21B1D5E30(v15);
      --v12;
    }

    while (v12);
    v11 = v73[0];
  }

  v16 = 0;
  v17 = sub_21B1DED14(v11, a1);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB78, &qword_21B216A08);
    v18 = sub_21B20D808();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v73[0] = v18;

  sub_21B1DE7C0(v19, 1, v73);

  sub_21B1DF230(a1, v11, v73);
  swift_bridgeObjectRelease_n();
  v20 = v73[0];
  v21 = *(v73[0] + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v55 = 0;
    v56 = a2;
    v72 = MEMORY[0x277D84F90];
    sub_21B18FDF4(0, v21, 0);
    v71 = v72;
    v23 = v20 + 64;
    v24 = -1 << *(v20 + 32);
    v16 = sub_21B20D648();
    v25 = 0;
    v26 = *(v20 + 36);
    v62 = v68 + 32;
    v63 = v10;
    v57 = v20 + 72;
    v58 = v21;
    v59 = v26;
    v60 = v20 + 64;
    v61 = v20;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v20 + 32))
    {
      v29 = v16 >> 6;
      if ((*(v23 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_31;
      }

      if (v26 != *(v20 + 36))
      {
        goto LABEL_32;
      }

      v69 = v25;
      v70 = 1 << v16;
      v30 = v67;
      v31 = *(v67 + 48);
      v32 = *(v20 + 56);
      v33 = (*(v20 + 48) + 16 * v16);
      v34 = *v33;
      v35 = v33[1];
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
      v37 = *(v36 - 8);
      v38 = v65;
      (*(v37 + 16))(&v65[v31], v32 + *(v37 + 72) * v16, v36);
      v39 = v66;
      *v66 = v34;
      *(v39 + 8) = v35;
      v40 = *(v30 + 48);
      v41 = v63;
      (*(v37 + 32))(v39 + v40, &v38[v31], v36);

      sub_21B20CB38();
      sub_21B186488(v39, &qword_27CD6FB70, &qword_21B216A00);
      v42 = v71;
      v72 = v71;
      v44 = v71[2];
      v43 = v71[3];
      if (v44 >= v43 >> 1)
      {
        sub_21B18FDF4(v43 > 1, v44 + 1, 1);
        v42 = v72;
      }

      v42[2] = v44 + 1;
      v45 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v71 = v42;
      (*(v68 + 32))(v42 + v45 + *(v68 + 72) * v44, v41, v64);
      v20 = v61;
      v27 = 1 << *(v61 + 32);
      if (v16 >= v27)
      {
        goto LABEL_33;
      }

      v23 = v60;
      v46 = *(v60 + 8 * v29);
      if ((v46 & v70) == 0)
      {
        goto LABEL_34;
      }

      LODWORD(v26) = v59;
      if (v59 != *(v61 + 36))
      {
        goto LABEL_35;
      }

      v47 = v46 & (-2 << (v16 & 0x3F));
      if (v47)
      {
        v27 = __clz(__rbit64(v47)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v28 = v58;
      }

      else
      {
        v48 = v29 << 6;
        v49 = v29 + 1;
        v28 = v58;
        v50 = (v57 + 8 * v29);
        while (v49 < (v27 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            sub_21B17C2EC(v16, v59, 0);
            v27 = __clz(__rbit64(v51)) + v48;
            goto LABEL_11;
          }
        }

        sub_21B17C2EC(v16, v59, 0);
      }

LABEL_11:
      v25 = v69 + 1;
      v16 = v27;
      if (v69 + 1 == v28)
      {
        v16 = v55;
        v22 = v71;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_28:
    v72 = v22;

    sub_21B1DD088(&v72);
    if (!v16)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FB38, &qword_21B2169D0);
      sub_21B1D97C0();
      sub_21B20CAD8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1DD088(void **a1)
{
  v2 = *(sub_21B20CB98() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21B1858D0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21B1DD130(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21B1DD130(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_21B20DAA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21B20CB98();
        v6 = sub_21B20D488();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B20CB98() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21B1DD568(v8, v9, a1, v4);
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
    return sub_21B1DD25C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B1DD25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B20CB98();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_21B20CB88();
      v28 = v27;
      if (v26 == sub_21B20CB88() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_21B20DB28();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1DD568(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_21B20CB98();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_21B1DE124(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_21B185388(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_21B1852FC(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_21B185388(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_21B20CB88();
      v38 = v37;
      v39 = sub_21B20CB88();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_21B20DB28();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_21B20CB88();
        v53 = v52;
        if (v51 == sub_21B20CB88() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_21B20DB28();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21B18539C(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_21B18539C((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_21B1DE124(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_21B185388(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_21B1852FC(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_21B20CB88();
    v70 = v69;
    if (v5 == sub_21B20CB88() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_21B20DB28();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_21B1DE124(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_21B20CB98();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_21B20CB88();
            v53 = v52;
            if (v51 != sub_21B20CB88())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_21B20DB28();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_21B20CB88();
        v33 = v32;
        if (v31 == sub_21B20CB88() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_21B20DB28();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_21B1D7E5C(&v75, &v74, &v73);
  return 1;
}

void sub_21B1DE7C0(uint64_t a1, char a2, void *a3)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_21B1DF2AC(v56, v13);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_21B1B9778(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21B204AF4();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_21B202FA8(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_21B1B9778(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_21B1DF2AC(v56 + *(v60 + 72) * v37, v13);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_21B1B9778(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_21B202FA8(v46, 1);
            v48 = *a3;
            v42 = sub_21B1B9778(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1DED14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v34 - v7);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v34[1] = v2;
  v43 = MEMORY[0x277D84F90];
  sub_21B19008C(0, v9, 0);
  v10 = v43;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  result = sub_21B20D648();
  v14 = result;
  v15 = 0;
  v16 = *(a2 + 16);
  v37 = a1 + 56;
  v38 = v16;
  v35 = a1 + 64;
  v36 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v19 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v41 = v15;
    v42 = v20;
    v21 = (*(a1 + 48) + 16 * v14);
    v22 = v21[1];
    v23 = a1;
    v24 = *(v40 + 48);
    *v8 = *v21;
    v8[1] = v22;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC20, &qword_21B2117E0);
    sub_21B20CB48();
    v43 = v10;
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_21B19008C(v25 > 1, v26 + 1, 1);
      v10 = v43;
    }

    *(v10 + 16) = v26 + 1;
    result = sub_21B1DF31C(v8, v10 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26);
    v17 = 1 << *(v23 + 32);
    if (v14 >= v17)
    {
      goto LABEL_22;
    }

    v11 = v37;
    v27 = *(v37 + 8 * v19);
    if ((v27 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v23;
    if (v42 != *(v23 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v14 & 0x3F));
    if (v28)
    {
      v17 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v18 = v36;
    }

    else
    {
      v29 = v19 << 6;
      v30 = v19 + 1;
      v18 = v36;
      v31 = (v35 + 8 * v19);
      while (v30 < (v17 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_21B17C2EC(v14, v42, 0);
          v17 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_21B17C2EC(v14, v42, 0);
    }

LABEL_4:
    v15 = v41 + 1;
    v14 = v17;
    if (v41 + 1 == v18)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B1DF024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v25 = a1;

  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(v25 + 48) + ((v9 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_21B1D4234(v24, v13, v14);
    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F690, &qword_21B215620);
    if ((*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      (v15)(v24, 0);
    }

    else
    {
      if (*(a3 + 16) && (v19 = sub_21B1B9778(v13, v14), (v20 & 1) != 0))
      {
        sub_21B17FB4C(*(a3 + 56) + 40 * v19, v22);
      }

      else
      {
        v23 = 0;
        memset(v22, 0, sizeof(v22));
      }

      sub_21B20CB78();
      sub_21B186488(v22, &qword_27CD6FA40, &qword_21B216D60);
      (v15)(v24, 0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1DF230(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = (result + 32);
    do
    {
      v7 = *v6++;

      sub_21B1DF024(a2, a3, v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21B1DF2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DF31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE78, &qword_21B212368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1DF38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21B17C284(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_21B1E0D74(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);

    *v3 = v16;
  }

  else
  {
    sub_21B186488(a1, &qword_27CD6FA40, &qword_21B216D60);
    sub_21B1BA4D4(a2, a3, v17);

    return sub_21B186488(v17, &qword_27CD6FA40, &qword_21B216D60);
  }

  return result;
}

uint64_t sub_21B1DF514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F010, &qword_21B212C60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_21B20D198();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_21B186488(a1, &qword_27CD6F010, &qword_21B212C60);
    sub_21B1BA580(a2, a3, v10);

    return sub_21B186488(v10, &qword_27CD6F010, &qword_21B212C60);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21B1BB7EC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_21B1DF6EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_21B17C304(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_21B1BB840(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_21B20D7B8();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_21B186488(a1, qword_27CD6FBF8, &qword_21B216D68);
    sub_21B1BA5C0(a2, v10);
    v8 = sub_21B20D7B8();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_21B186488(v10, qword_27CD6FBF8, &qword_21B216D68);
  }

  return result;
}

uint64_t sub_21B1DF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F898, qword_21B215D38);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_21B20D018();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_21B186488(a1, &qword_27CD6F898, qword_21B215D38);
    sub_21B1BA69C(a2, a3, v10);

    return sub_21B186488(v10, &qword_27CD6F898, qword_21B215D38);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21B1BBA18(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_21B1DF9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_21B20CFB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_21B186488(a1, &qword_27CD6F890, &qword_21B215D30);
    sub_21B1BA870(a2, a3, v10);

    return sub_21B186488(v10, &qword_27CD6F890, &qword_21B215D30);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_21B1BBA6C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

unint64_t AnyQueryParameters.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21B19734C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_21B1DFBE8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v42 = a1;

  v8 = 0;
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(v42 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_21B17FB4C(*(v42 + 56) + 40 * v12, v39);
    *&v38 = v15;
    *(&v38 + 1) = v14;
    v34 = v38;
    v35 = v39[0];
    v36 = v39[1];
    v37 = v40;
    sub_21B17FB4C(&v35, v32);
    v29 = v34;
    v30[0] = v35;
    v30[1] = v36;
    v31 = v37;
    v28 = v33;
    v26 = v32[0];
    v27 = v32[1];
    v16 = *(v1 + 16);
    if (*(v1 + 24) <= v16)
    {

      sub_21B2019FC(v16 + 1, 1);
      v1 = v41;
    }

    else
    {
    }

    v17 = *(v1 + 40);
    sub_21B20DC88();
    sub_21B20D388();
    result = sub_21B20DCA8();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v18 + 8 * v21);
        if (v25 != -1)
        {
          v9 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v18 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v1 + 48) + 16 * v9) = v29;
    v10 = *(v1 + 56) + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    ++*(v1 + 16);
    result = __swift_destroy_boxed_opaque_existential_1(v30);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AnyQueryParameters.names.getter()
{
  v1 = *v0;

  return sub_21B1BC1FC(v2);
}

uint64_t AnyQueryParameters.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    sub_21B18FCF8(0, v4, 0);
    v5 = v26;
    v6 = a1 + 32;
    do
    {
      sub_21B18BFF8(v6, v21, &qword_27CD6FBC0, &unk_21B216C40);
      sub_21B18BFF8(v21, &v19, &qword_27CD6FBC0, &unk_21B216C40);
      v23 = v19;
      v17[0] = v21[1];
      v17[1] = v21[2];
      v18 = v22;

      sub_21B17FB4C(v17, v24);
      sub_21B1A3858(v17);
      sub_21B1A3858(&v20);
      v26 = v5;
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_21B18FCF8((v7 > 1), v8 + 1, 1);
        v5 = v26;
      }

      *(v5 + 16) = v8 + 1;
      v9 = v5 + 56 * v8;
      v10 = v23;
      v11 = v24[0];
      v12 = v24[1];
      *(v9 + 80) = v25;
      *(v9 + 48) = v11;
      *(v9 + 64) = v12;
      *(v9 + 32) = v10;
      v6 += 56;
      --v4;
    }

    while (v4);

    v3 = a2;
    if (*(v5 + 16))
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = MEMORY[0x277D84F98];
    goto LABEL_10;
  }

  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_9;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  v13 = sub_21B20D808();
LABEL_10:
  *&v23 = v13;

  sub_21B1E0990(v14, 1, &v23);

  *v3 = v23;
  return result;
}

uint64_t AnyQueryParameters.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EF48, &qword_21B2124F8);
  result = sub_21B20D7E8();
  v4 = result;
  v5 = 0;
  v26 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v25 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v26 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_21B1A37FC(*(v26 + 56) + 40 * v16, v27);
      *(v25 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v20 = (v4[6] + 16 * v16);
      *v20 = v19;
      v20[1] = v18;
      result = sub_21B17C284(v27, v4[7] + 40 * v16);
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        *a2 = v4;
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnyQueryParameters.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCC8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FBC8, &qword_21B216C50);
    sub_21B1E117C(&qword_27CD6FBD0, sub_21B1E1128);
    sub_21B20DB68();
    AnyQueryParameters.init(_:)(v7, &v9);
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnyQueryParameters.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCF8();
  sub_21B1DFBE8(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FBC8, &qword_21B216C50);
  sub_21B1E117C(&qword_27CD6FBE0, sub_21B1E1200);
  sub_21B20DBB8();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double AnyQueryParameters.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_21B1B9778(a1, a2), (v7 & 1) != 0))
  {
    sub_21B17FB4C(*(v5 + 56) + 40 * v6, &v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  v9[0] = v11;
  v9[1] = v12;
  v10 = v13;
  if (*(&v12 + 1))
  {
    sub_21B17C284(v9, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21B1E0560(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_21B18BFF8(a1, v10, &qword_27CD6FBF0, &qword_21B216C58);
  sub_21B18BFF8(v10, v6, &qword_27CD6FBF0, &qword_21B216C58);
  if (v7)
  {
    sub_21B17FB4C(v6, v8);

    sub_21B1A3858(v6);
  }

  else
  {

    sub_21B186488(v6, &qword_27CD6FBF0, &qword_21B216C58);
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  sub_21B1DF38C(v8, v3, v4);
  return sub_21B186488(v10, &qword_27CD6FBF0, &qword_21B216C58);
}

uint64_t AnyQueryParameters.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21B18BFF8(a1, v7, &qword_27CD6FBF0, &qword_21B216C58);
  if (v8)
  {
    sub_21B17FB4C(v7, v9);
    sub_21B1A3858(v7);
  }

  else
  {
    sub_21B186488(v7, &qword_27CD6FBF0, &qword_21B216C58);
    memset(v9, 0, sizeof(v9));
    v10 = 0;
  }

  sub_21B1DF38C(v9, a2, a3);
  return sub_21B186488(a1, &qword_27CD6FBF0, &qword_21B216C58);
}

void (*AnyQueryParameters.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0xB8uLL);
  }

  *a1 = v7;
  v7[21] = a3;
  v7[22] = v3;
  v7[20] = a2;
  v9 = *v3;
  AnyQueryParameters.subscript.getter(a2, a3, v7);
  return sub_21B1E07B0;
}

void sub_21B1E07B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21B18BFF8(*a1, v2 + 40, &qword_27CD6FBF0, &qword_21B216C58);
    sub_21B18BFF8(v2 + 40, v2 + 120, &qword_27CD6FBF0, &qword_21B216C58);
    if (*(v2 + 144))
    {
      sub_21B17FB4C(v2 + 120, v2 + 80);
      sub_21B1A3858(v2 + 120);
    }

    else
    {
      sub_21B186488(v2 + 120, &qword_27CD6FBF0, &qword_21B216C58);
      *(v2 + 80) = 0u;
      *(v2 + 96) = 0u;
      *(v2 + 112) = 0;
    }

    v4 = *(v2 + 168);
    v3 = *(v2 + 176);
    v5 = *(v2 + 160);

    sub_21B1DF38C(v2 + 80, v5, v4);
    sub_21B186488(v2 + 40, &qword_27CD6FBF0, &qword_21B216C58);
    v6 = v2;
  }

  else
  {
    sub_21B18BFF8(*a1, v2 + 80, &qword_27CD6FBF0, &qword_21B216C58);
    if (*(v2 + 104))
    {
      sub_21B17FB4C(v2 + 80, v2 + 40);
      sub_21B1A3858(v2 + 80);
    }

    else
    {
      sub_21B186488(v2 + 80, &qword_27CD6FBF0, &qword_21B216C58);
      *(v2 + 40) = 0u;
      *(v2 + 56) = 0u;
      *(v2 + 72) = 0;
    }

    v8 = *(v2 + 168);
    v7 = *(v2 + 176);
    v9 = *(v2 + 160);

    sub_21B1DF38C(v2 + 40, v9, v8);
    v6 = v2;
  }

  sub_21B186488(v6, &qword_27CD6FBF0, &qword_21B216C58);

  free(v2);
}

void sub_21B1E0990(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_21B18BFF8(a1 + 32, &v46, &qword_27CD6EC40, &qword_21B212500);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_21B17C284(v48, v43);
  v9 = *a3;
  v10 = sub_21B1B9778(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21B2010B0(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_21B1B9778(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_21B20DBF8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_21B203964();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_21B17C284(v43, v22[7] + 40 * v10);
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 88;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_21B18BFF8(v26, &v46, &qword_27CD6EC40, &qword_21B212500);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_21B17C284(v48, v43);
      v30 = *a3;
      v31 = sub_21B1B9778(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_21B2010B0(v35, 1);
        v37 = *a3;
        v31 = sub_21B1B9778(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_21B17C284(v43, v39[7] + 40 * v31);
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 56;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1E0D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_21B1B9778(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_21B17C284(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_21B203964();
    goto LABEL_7;
  }

  sub_21B2010B0(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_21B1B9778(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_21B1E0FA8(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_21B1E0FA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_21B17C284(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

BOOL _s12PoirotBlocks18AnyQueryParametersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(v2 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v3 = MEMORY[0x28223BE20](v2);
  v4 = sub_21B1BBDC0(v3, sub_21B1E1264);
  v6 = v5 == -1;
  sub_21B1BC124(v4, v7, v5);
  return v6;
}

unint64_t sub_21B1E1128()
{
  result = qword_27CD6FBD8;
  if (!qword_27CD6FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FBD8);
  }

  return result;
}

uint64_t sub_21B1E117C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FBC8, &qword_21B216C50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1E1200()
{
  result = qword_27CD6FBE8;
  if (!qword_27CD6FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FBE8);
  }

  return result;
}

uint64_t PoirotUserTaskParameters.recipeFolderPath.getter()
{
  v0 = sub_21B1E2998();

  return v0;
}

uint64_t PoirotUserTaskParameters.loggingPath.getter()
{
  v0 = sub_21B1E2990();

  return v0;
}

uint64_t PoirotUserTaskParameters.executionId.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_21B20C768();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t PoirotUserTaskParameters.runtimeParameters.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_21B19F6E8(v4, v5, v6, v7);
}

uint64_t PoirotUserTaskParameters.userDefined.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 16);
  v6 = sub_21B20D5D8();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t PoirotUserTaskParameters.init(recipeFolderPath:loggingPath:userDefined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = type metadata accessor for PoirotUserTaskParameters();
  v9 = &a6[v8[14]];
  _s12PoirotBlocks0A18ToolTaskParametersV16recipeFolderPath07loggingH011executionId07runtimeE011userDefinedACSS_SSSg10Foundation4UUIDVAA07RuntimeE0VSgSDySSAA10AnyCodableOGSgtcfcfA1__0();
  v10 = &a6[v8[15]];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 1;
  v11 = v8[16];
  v12 = sub_21B20D5D8();
  return (*(*(v12 - 8) + 32))(&a6[v11], a5, v12);
}

uint64_t PoirotUserTaskParameters.init(recipeFolderPath:loggingPath:executionId:runtimeParameters:userDefined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for PoirotUserTaskParameters();
  v13 = v12[14];
  v14 = sub_21B20C768();
  v19 = a6[1];
  v20 = *a6;
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v15 = &a8[v12[15]];
  *v15 = v20;
  *(v15 + 1) = v19;
  v16 = v12[16];
  v17 = sub_21B20D5D8();
  return (*(*(v17 - 8) + 32))(&a8[v16], a7, v17);
}

uint64_t static PoirotUserTaskParameters.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B20D5D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v66 = &v55 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v55 - v20;
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 1)) && (sub_21B20DB28() & 1) == 0)
  {
    goto LABEL_25;
  }

  v22 = *(a1 + 3);
  v23 = *(a2 + 3);
  if (v22)
  {
    if (!v23 || (*(a1 + 2) != *(a2 + 2) || v22 != v23) && (sub_21B20DB28() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v23)
  {
    goto LABEL_25;
  }

  v60 = v21;
  v61 = v16;
  v62 = v12;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  v58 = a6;
  v24 = type metadata accessor for PoirotUserTaskParameters();
  v25 = *(v24 + 60);
  v26 = *&a1[v25];
  v27 = *&a1[v25 + 8];
  v28 = *&a1[v25 + 16];
  v29 = *&a1[v25 + 24];
  v30 = &a2[v25];
  v32 = *v30;
  v31 = v30[1];
  v33 = v30[3];
  v63 = v30[2];
  if (v29 == 1)
  {
    v59 = v24;
    v57 = v26;
    sub_21B19F6E8(v26, v27, v28, 1);
    if (v33 == 1)
    {
      sub_21B19F6E8(v32, v31, v63, 1);
      sub_21B1A03E8(v57, v27, v28, 1);
LABEL_19:
      v44 = v60;
      v45 = *(v59 + 64);
      v46 = TupleTypeMetadata2;
      v47 = *(TupleTypeMetadata2 + 48);
      v48 = *(v61 + 16);
      v48(v60, &a1[v45], v15);
      v48(&v44[v47], &a2[v45], v15);
      v49 = *(v62 + 48);
      if (v49(v44, 1, a3) == 1)
      {
        if (v49(&v44[v47], 1, a3) == 1)
        {
          (*(v61 + 8))(v44, v15);
          v39 = 1;
          return v39 & 1;
        }
      }

      else
      {
        v50 = v66;
        v48(v66, v44, v15);
        if (v49(&v44[v47], 1, a3) != 1)
        {
          v52 = v62;
          v53 = v64;
          (*(v62 + 32))(v64, &v44[v47], a3);
          v39 = sub_21B20D2A8();
          v54 = *(v52 + 8);
          v54(v53, a3);
          v54(v50, a3);
          (*(v61 + 8))(v44, v15);
          return v39 & 1;
        }

        (*(v62 + 8))(v50, a3);
      }

      (*(v65 + 8))(v44, v46);
LABEL_25:
      v39 = 0;
      return v39 & 1;
    }

    v35 = v32;
    v38 = v32;
    v37 = v63;
    sub_21B19F6E8(v38, v31, v63, v33);
    v34 = v57;
  }

  else
  {
    v71 = v26;
    v72 = v27;
    v73 = v28;
    v74 = v29;
    if (v33 != 1)
    {
      v59 = v24;
      v68[0] = v32;
      v68[1] = v31;
      v69 = v63 & 0xFF01;
      v70 = v33;
      v56 = v28;
      v40 = v28;
      v41 = v26;
      sub_21B19F6E8(v26, v27, v40, v29);
      sub_21B19F6E8(v32, v31, v63, v33);
      v42 = v56;
      sub_21B19F6E8(v41, v27, v56, v29);
      v43 = _s12PoirotBlocks17RuntimeParametersV2eeoiySbAC_ACtFZ_0(&v71, v68);

      sub_21B1A03E8(v41, v27, v42, v29);
      if ((v43 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v34 = v26;
    sub_21B19F6E8(v26, v27, v28, v29);
    v35 = v32;
    v36 = v32;
    v37 = v63;
    sub_21B19F6E8(v36, v31, v63, 1);
    sub_21B19F6E8(v34, v27, v28, v29);
  }

  sub_21B1A03E8(v34, v27, v28, v29);
  sub_21B1A03E8(v35, v31, v37, v33);
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_21B1E1B90(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021B20F520 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50676E6967676F6CLL && a2 == 0xEB00000000687461 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEB0000000064496ELL || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021B20F540 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6966654472657375 && a2 == 0xEB0000000064656ELL)
  {

    return 4;
  }

  else
  {
    v5 = sub_21B20DB28();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_21B1E1D94(unsigned __int8 a1)
{
  sub_21B20DC88();
  MEMORY[0x21CEEC4B0](a1);
  return sub_21B20DCA8();
}

unint64_t sub_21B1E1DDC(unsigned __int8 a1)
{
  v1 = 0x50676E6967676F6CLL;
  v2 = 0x6F69747563657865;
  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0x6966654472657375;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
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

BOOL sub_21B1E1E9C(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_21B1E1D5C(*a1, *a2);
}

uint64_t sub_21B1E1EB4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_21B1E1D94(*v1);
}

uint64_t sub_21B1E1EC4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_21B1E1D6C(a1, *v2);
}

uint64_t sub_21B1E1ED4(uint64_t a1, void *a2)
{
  sub_21B20DC88();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_21B1E1D6C(v9, *v2);
  return sub_21B20DCA8();
}

unint64_t sub_21B1E1F20(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_21B1E1DDC(*v1);
}

uint64_t sub_21B1E1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_21B1E1B90(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_21B1E1F64@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_21B1E31B4();
  *a2 = result;
  return result;
}

uint64_t sub_21B1E1F98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21B1E1FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t PoirotUserTaskParameters.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v26[0] = *(a2 + 32);
  v26[1] = v4;
  v29 = v4;
  v30 = v26[0];
  type metadata accessor for PoirotUserTaskParameters.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_21B20DA98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v5;
  v12 = v27;
  sub_21B20DD08();
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_21B20D9E8();
  if (!v15)
  {
    v16 = v12[2];
    v17 = v12[3];
    LOBYTE(v29) = 1;
    sub_21B20D998();
    v18 = a2;
    v19 = *(a2 + 56);
    LOBYTE(v29) = 2;
    sub_21B20C768();
    sub_21B1E29D0(&qword_27CD6F078);
    sub_21B20DA48();
    v20 = (v12 + *(v18 + 60));
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    *&v29 = *v20;
    *(&v29 + 1) = v21;
    *&v30 = v22;
    *(&v30 + 1) = v23;
    v31 = 3;
    sub_21B19F6E8(v29, v21, v22, v23);
    sub_21B1A0394();
    sub_21B20D9D8();
    sub_21B1A03E8(v29, *(&v29 + 1), v30, *(&v30 + 1));
    v24 = *(v18 + 64);
    LOBYTE(v29) = 4;
    sub_21B20D9D8();
  }

  return (*(v6 + 8))(v9, v11);
}

uint64_t PoirotUserTaskParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a6;
  v11 = sub_21B20D5D8();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = v39 - v13;
  v14 = sub_21B20C768();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v47 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v54 = a2;
  *(&v54 + 1) = a3;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  type metadata accessor for PoirotUserTaskParameters.CodingKeys();
  swift_getWitnessTable();
  v17 = sub_21B20D978();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v39 - v19;
  v44 = a2;
  *&v54 = a2;
  *(&v54 + 1) = a3;
  v46 = a3;
  *&v55 = a4;
  *(&v55 + 1) = a5;
  v21 = type metadata accessor for PoirotUserTaskParameters();
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v39 - v23);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v20;
  v26 = v53;
  sub_21B20DCD8();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v47;
  v27 = v48;
  v29 = v24;
  v30 = v21;
  v31 = v49;
  LOBYTE(v54) = 0;
  *v29 = sub_21B20D8C8();
  v29[1] = v32;
  v53 = v32;
  LOBYTE(v54) = 1;
  v29[2] = sub_21B20D868();
  v29[3] = v33;
  LOBYTE(v54) = 2;
  sub_21B1E29D0(&qword_27CD6F090);
  v39[1] = 0;
  sub_21B20D918();
  (*(v27 + 32))(v29 + *(v21 + 56), v28, v31);
  v56 = 3;
  sub_21B1A03FC();
  sub_21B20D8B8();
  v47 = a1;
  v34 = (v29 + *(v21 + 60));
  v35 = v55;
  *v34 = v54;
  v34[1] = v35;
  LOBYTE(v54) = 4;
  v36 = v45;
  sub_21B20D8B8();
  (*(v50 + 8))(v52, v51);
  (*(v42 + 32))(v29 + *(v30 + 64), v36, v43);
  v37 = v41;
  (*(v41 + 16))(v40, v29, v30);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v37 + 8))(v29, v30);
}

uint64_t sub_21B1E28CC()
{
  v0 = sub_21B1E2998();

  return v0;
}

uint64_t sub_21B1E2904()
{
  v0 = sub_21B1E2990();

  return v0;
}

uint64_t sub_21B1E2990()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_21B1E2998()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_21B1E29D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B20C768();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B1E2A14(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void sub_21B1E2A9C(uint64_t a1)
{
  sub_21B17DF1C(319, &qword_2811F9F58);
  if (v2 <= 0x3F)
  {
    sub_21B20C768();
    if (v3 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_2811F9F60);
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        sub_21B20D5D8();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21B1E2B7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21B20C768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(v6 - 8) + 64) + 7;
  v19 = v13 + 32;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v20 = v17 + ((v19 + ((v18 + ((v12 + 32) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if ((v15 & 0x80000000) != 0)
      {
        if (v8 == v16)
        {
          v29 = *(v7 + 48);

          return v29((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12);
        }

        else
        {
          v30 = (*(*(*(a3 + 16) - 8) + 48))((v19 + ((v18 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v13, v10);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *(a1 + 1);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v16 + (v27 | v25) + 1;
}

void sub_21B1E2E20(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_21B20C768() - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  v16 = v12 - 1;
  if (!v12)
  {
    v16 = 0;
  }

  if (v10 > v16)
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = v14 + 7;
  v19 = (v15 + 32 + ((v14 + 7 + ((v13 + 32) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v12)
  {
    v20 = *(v11 + 64);
  }

  else
  {
    v20 = *(v11 + 64) + 1;
  }

  v21 = v19 + v20;
  if (a3 > v17)
  {
    v8 = 1;
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      v23 = HIWORD(v22);
      if (v22 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v22 >= 2)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v8 = 4;
      }

      else
      {
        v8 = v25;
      }
    }
  }

  if (v17 < a2)
  {
    v26 = ~v17 + a2;
    if (v21 < 4)
    {
      v27 = (v26 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v26 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v28;
            if (v8 > 1)
            {
LABEL_56:
              if (v8 == 2)
              {
                *(a1 + v21) = v27;
              }

              else
              {
                *(a1 + v21) = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v8 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v28;
        *(a1 + 2) = BYTE2(v28);
      }

      if (v8 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v26;
      v27 = 1;
      if (v8 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v8)
    {
      *(a1 + v21) = v27;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v21) = 0;
  }

  else if (v8)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v16 & 0x80000000) != 0)
  {
    if (v10 == v17)
    {
      v29 = *(v9 + 56);

      v29((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2);
    }

    else
    {
      v30 = *(v11 + 56);

      v30((v15 + 32 + ((v18 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15, (a2 + 1), v12);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t PoirotToolTaskParameters.recipeFolderPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PoirotToolTaskParameters.recipeFolderPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PoirotToolTaskParameters.loggingPath.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PoirotToolTaskParameters.loggingPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PoirotToolTaskParameters.executionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PoirotToolTaskParameters() + 24);
  v4 = sub_21B20C768();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PoirotToolTaskParameters()
{
  result = qword_27CD6FCB8;
  if (!qword_27CD6FCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PoirotToolTaskParameters.executionId.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PoirotToolTaskParameters() + 24);
  v4 = sub_21B20C768();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PoirotToolTaskParameters.runtimeParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PoirotToolTaskParameters() + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21B19F6E8(v4, v5, v6, v7);
}

uint64_t PoirotToolTaskParameters.userDefined.getter()
{
  v1 = *(v0 + *(type metadata accessor for PoirotToolTaskParameters() + 32));
}

__n128 PoirotToolTaskParameters.init(recipeFolderPath:loggingPath:executionId:runtimeParameters:userDefined:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for PoirotToolTaskParameters();
  v13 = v12[6];
  v14 = sub_21B20C768();
  v17 = a6[1];
  v18 = *a6;
  (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  v15 = &a8[v12[7]];
  result = v18;
  *v15 = v18;
  v15[1] = v17;
  *&a8[v12[8]] = a7;
  return result;
}

uint64_t PoirotToolTaskParameters.init(recipeFolderPath:executionId:startTime:endTime:ignoreMaximumLookbackTime:userDefined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, char *a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v16 = type metadata accessor for PoirotToolTaskParameters();
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  v17 = v16[6];
  v18 = sub_21B20C768();
  result = (*(*(v18 - 8) + 32))(&a8[v17], a3, v18);
  v20 = &a8[v16[7]];
  *v20 = a9;
  *(v20 + 1) = a4;
  *(v20 + 2) = a5 & 1 | (a6 << 8);
  *(v20 + 3) = 0;
  *&a8[v16[8]] = a7;
  return result;
}

unint64_t sub_21B1E3668()
{
  v1 = *v0;
  v2 = 0x50676E6967676F6CLL;
  v3 = 0x6F69747563657865;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6966654472657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21B1E3728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1E1B90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1E3750(uint64_t a1)
{
  v2 = sub_21B1E4260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1E378C(uint64_t a1)
{
  v2 = sub_21B1E4260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PoirotToolTaskParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FC80, &qword_21B216F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E4260();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 1;
    sub_21B20D998();
    v15 = type metadata accessor for PoirotToolTaskParameters();
    v16 = v15[6];
    LOBYTE(v24) = 2;
    sub_21B20C768();
    sub_21B1E44A4(&qword_27CD6F078, MEMORY[0x277CC95F0]);
    sub_21B20DA48();
    v17 = (v3 + v15[7]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v24 = *v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v23 = 3;
    sub_21B19F6E8(v24, v18, v19, v20);
    sub_21B1A0394();
    sub_21B20D9D8();
    sub_21B1A03E8(v24, v25, v26, v27);
    v24 = *(v3 + v15[8]);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FC90, &qword_21B216F98);
    sub_21B1E42B4(&qword_27CD6FC98, sub_21B1ACF78);
    sub_21B20D9D8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PoirotToolTaskParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_21B20C768();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FCA0, &qword_21B216FA0);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = v22 - v8;
  v10 = type metadata accessor for PoirotToolTaskParameters();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E4260();
  v26 = v9;
  v15 = v28;
  sub_21B20DCD8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v25;
  LOBYTE(v29) = 0;
  *v13 = sub_21B20D8C8();
  v13[1] = v17;
  v28 = v17;
  LOBYTE(v29) = 1;
  v13[2] = sub_21B20D868();
  v13[3] = v18;
  v22[1] = v18;
  LOBYTE(v29) = 2;
  sub_21B1E44A4(&qword_27CD6F090, MEMORY[0x277CC95F0]);
  sub_21B20D918();
  (*(v24 + 32))(v13 + v10[6], v6, v3);
  v31 = 3;
  sub_21B1A03FC();
  sub_21B20D8B8();
  v19 = (v13 + v10[7]);
  v20 = v30;
  *v19 = v29;
  v19[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FC90, &qword_21B216F98);
  v31 = 4;
  sub_21B1E42B4(&qword_27CD6FCA8, sub_21B1ACF24);
  sub_21B20D8B8();
  (*(v16 + 8))(v26, v27);
  *(v13 + v10[8]) = v29;
  sub_21B1E4338(v13, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B1E439C(v13);
}

uint64_t _s12PoirotBlocks0A18ToolTaskParametersV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_21B20DB28() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for PoirotToolTaskParameters();
  v9 = v8[6];
  if ((sub_21B20C748() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[7];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = *(a1 + v10 + 24);
  v15 = (a2 + v10);
  v16 = *v15;
  v28 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  if (v14 != 1)
  {
    v32[0] = v11;
    v32[1] = v12;
    v32[2] = v13;
    v32[3] = v14;
    if (v18 != 1)
    {
      v29[0] = v16;
      v29[1] = v28;
      v30 = v17 & 0xFF01;
      v31 = v18;
      v27 = v11;
      sub_21B19F6E8(v11, v12, v13, v14);
      sub_21B19F6E8(v16, v28, v17, v18);
      sub_21B19F6E8(v27, v12, v13, v14);
      v22 = _s12PoirotBlocks17RuntimeParametersV2eeoiySbAC_ACtFZ_0(v32, v29);

      sub_21B1A03E8(v27, v12, v13, v14);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    v19 = v11;
    sub_21B19F6E8(v11, v12, v13, v14);
    v20 = v28;
    sub_21B19F6E8(v16, v28, v17, 1);
    sub_21B19F6E8(v19, v12, v13, v14);

LABEL_22:
    sub_21B1A03E8(v19, v12, v13, v14);
    sub_21B1A03E8(v16, v20, v17, v18);
    return 0;
  }

  v19 = v11;
  sub_21B19F6E8(v11, v12, v13, 1);
  if (v18 != 1)
  {
    v20 = v28;
    sub_21B19F6E8(v16, v28, v17, v18);
    goto LABEL_22;
  }

  sub_21B19F6E8(v16, v28, v17, 1);
  sub_21B1A03E8(v19, v12, v13, 1);
LABEL_26:
  v23 = v8[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (v25)
    {

      v26 = sub_21B1B76AC(v24, v25);

      if (v26)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_21B1E4260()
{
  result = qword_27CD6FC88;
  if (!qword_27CD6FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FC88);
  }

  return result;
}

uint64_t sub_21B1E42B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FC90, &qword_21B216F98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B1E4338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PoirotToolTaskParameters();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1E439C(uint64_t a1)
{
  v2 = type metadata accessor for PoirotToolTaskParameters();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1E43F8(void *a1)
{
  a1[1] = sub_21B1E44A4(&qword_27CD6EAE0, type metadata accessor for PoirotToolTaskParameters);
  a1[2] = sub_21B1E44A4(&qword_27CD6EAC8, type metadata accessor for PoirotToolTaskParameters);
  result = sub_21B1E44A4(&qword_27CD6FCB0, type metadata accessor for PoirotToolTaskParameters);
  a1[3] = result;
  return result;
}

uint64_t sub_21B1E44A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21B1E4514()
{
  sub_21B17DF1C(319, &qword_2811F9F58);
  if (v0 <= 0x3F)
  {
    sub_21B20C768();
    if (v1 <= 0x3F)
    {
      sub_21B17DF1C(319, &qword_2811F9F60);
      if (v2 <= 0x3F)
      {
        sub_21B1E45F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21B1E45F0()
{
  if (!qword_27CD6FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FC90, &qword_21B216F98);
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6FCC8);
    }
  }
}

unint64_t sub_21B1E4668()
{
  result = qword_27CD6FCD0;
  if (!qword_27CD6FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FCD0);
  }

  return result;
}

unint64_t sub_21B1E46C0()
{
  result = qword_27CD6FCD8;
  if (!qword_27CD6FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FCD8);
  }

  return result;
}

unint64_t sub_21B1E4718()
{
  result = qword_27CD6FCE0;
  if (!qword_27CD6FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FCE0);
  }

  return result;
}

uint64_t RuntimeParameters.endTime.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

unint64_t sub_21B1E47CC()
{
  v1 = 0x6D69547472617473;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0x7261507972657571;
  }

  if (*v0)
  {
    v1 = 0x656D6954646E65;
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

uint64_t sub_21B1E485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B1E524C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B1E4884(uint64_t a1)
{
  v2 = sub_21B1E4EF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1E48C0(uint64_t a1)
{
  v2 = sub_21B1E4EF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RuntimeParameters.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FCE8, &qword_21B217190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v15 = v1[1];
  v10 = *(v1 + 16);
  v14[2] = *(v1 + 17);
  v14[3] = v10;
  v11 = v1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E4EF4();
  sub_21B20DD08();
  v20 = 0;
  sub_21B20DA08();
  if (!v2)
  {
    v19 = 1;
    sub_21B20D9B8();
    v18 = 2;
    sub_21B20D9A8();
    v17 = v11;
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FCF8, &qword_21B217198);
    sub_21B1E4F9C(&qword_27CD6FD00, sub_21B1E4F48);
    sub_21B20D9D8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RuntimeParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD10, &qword_21B2171A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E4EF4();
  sub_21B20DCD8();
  if (!v2)
  {
    v25 = 0;
    sub_21B20D8E8();
    v12 = v11;
    v24 = 1;
    v13 = sub_21B20D888();
    v15 = v14;
    v16 = v13;
    v23 = 2;
    v20 = sub_21B20D878();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FCF8, &qword_21B217198);
    v21 = 3;
    sub_21B1E4F9C(&qword_27CD6FD18, sub_21B1E5020);
    sub_21B20D8B8();
    (*(v6 + 8))(v9, v5);
    v18 = v22;
    *a2 = v12;
    *(a2 + 8) = v16;
    *(a2 + 16) = v15 & 1;
    *(a2 + 17) = v20;
    *(a2 + 24) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12PoirotBlocks17RuntimeParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *(a2 + 24);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

LABEL_14:
    if (v3)
    {
      if (!v6)
      {
        return 0;
      }

      v8 = *(a2 + 24);

      v9 = sub_21B1B94D4(v3, v6);

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v5 != 2 && ((v5 ^ v2) & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_21B1E4EF4()
{
  result = qword_27CD6FCF0;
  if (!qword_27CD6FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FCF0);
  }

  return result;
}

unint64_t sub_21B1E4F48()
{
  result = qword_27CD6FD08;
  if (!qword_27CD6FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD08);
  }

  return result;
}

uint64_t sub_21B1E4F9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6FCF8, &qword_21B217198);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21B1E5020()
{
  result = qword_27CD6FD20;
  if (!qword_27CD6FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD20);
  }

  return result;
}

uint64_t sub_21B1E5074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_21B1E50D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_21B1E5148()
{
  result = qword_27CD6FD28;
  if (!qword_27CD6FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD28);
  }

  return result;
}

unint64_t sub_21B1E51A0()
{
  result = qword_27CD6FD30;
  if (!qword_27CD6FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD30);
  }

  return result;
}

unint64_t sub_21B1E51F8()
{
  result = qword_27CD6FD38;
  if (!qword_27CD6FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD38);
  }

  return result;
}

uint64_t sub_21B1E524C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_21B20DB28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_21B20DB28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000021B20F5C0 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261507972657571 && a2 == 0xEF73726574656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_21B20DB28();

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

uint64_t TaskConfiguring.loggingType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F550, &qword_21B2162F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD40, &qword_21B217378);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  TaskConfiguring.executionLogsFolderURL.getter(a1, a2, v12);
  sub_21B1DAD94(v12, v10);
  v17 = sub_21B20C678();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    v19 = type metadata accessor for LoggingType();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  else
  {
    (*(v18 + 32))(v16, v10, v17);
    v19 = type metadata accessor for LoggingType();
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
  }

  type metadata accessor for LoggingType();
  v20 = *(*(v19 - 8) + 48);
  if (v20(v16, 1, v19) != 1)
  {
    return sub_21B19AB44(v16, a3);
  }

  swift_storeEnumTagMultiPayload();
  result = (v20)(v16, 1, v19);
  if (result != 1)
  {
    return sub_21B1E57A0(v16);
  }

  return result;
}

uint64_t TaskConfiguring.executionLogsFolderURL.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 40))();
  if (v7)
  {
    v12[0] = v6;
    v12[1] = v7;
    sub_21B1E5808(v12, a1, a2, a3);
    v8 = sub_21B20C678();
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
  }

  else
  {
    v10 = sub_21B20C678();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }
}

uint64_t sub_21B1E57A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD40, &qword_21B217378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B1E5808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[0] = a2;
  v19[1] = a4;
  v6 = sub_21B20C768();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20C678();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  sub_21B20C588();
  (*(a3 + 48))(v19[0], a3);
  sub_21B20C738();
  (*(v7 + 8))(v10, v6);
  sub_21B20C5C8();

  return (*(v12 + 8))(v15, v11);
}

unint64_t sub_21B1E5A34()
{
  if (*v0)
  {
    result = 0xD000000000000029;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21B1E5A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x800000021B20FF80 == a2 || (sub_21B20DB28() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000029 && 0x800000021B20FFA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21B20DB28();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21B1E5B54(uint64_t a1)
{
  v2 = sub_21B1E6644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1E5B90(uint64_t a1)
{
  v2 = sub_21B1E6644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1E5BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21B20DB28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21B1E5C58(uint64_t a1)
{
  v2 = sub_21B1E6698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1E5C94(uint64_t a1)
{
  v2 = sub_21B1E6698();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B1E5CDC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_21B1E5D0C(uint64_t a1)
{
  v2 = sub_21B1E66EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1E5D48(uint64_t a1)
{
  v2 = sub_21B1E66EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdHocExecutionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD48, "\nx");
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD50, &qword_21B2173A8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD58, &qword_21B2173B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E6644();
  sub_21B20DD08();
  if (v15)
  {
    v28 = 1;
    sub_21B1E6698();
    sub_21B20D988();
    v17 = v26;
    sub_21B20D9E8();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    sub_21B1E66EC();
    v19 = v21;
    sub_21B20D988();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t AdHocExecutionError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD78, &qword_21B2173B8);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD80, &qword_21B2173C0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FD88, &qword_21B2173C8);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1E6644();
  v16 = v44;
  sub_21B20DCD8();
  if (v16)
  {
    goto LABEL_7;
  }

  v38 = v7;
  v18 = v41;
  v17 = v42;
  v44 = a1;
  v19 = v14;
  v20 = sub_21B20D968();
  if (*(v20 + 16) != 1)
  {
    v24 = sub_21B20D6E8();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FA58, &qword_21B2173D0) + 48);
    *v26 = &type metadata for AdHocExecutionError;
    sub_21B20D848();
    sub_21B20D6D8();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v43 + 8))(v19, v11);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_7:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  if (*(v20 + 32))
  {
    v46 = 1;
    sub_21B1E6698();
    v21 = v6;
    sub_21B20D838();
    v22 = v19;
    v23 = v43;
    v30 = v17;
    v31 = v21;
    v39 = v22;
    v34 = sub_21B20D8C8();
    v36 = v35;
    (*(v40 + 8))(v31, v18);
    (*(v23 + 8))(v39, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0;
    sub_21B1E66EC();
    v28 = v10;
    sub_21B20D838();
    v29 = v43;
    v30 = v17;
    (*(v39 + 1))(v28, v38);
    (*(v29 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v36 = 0;
  }

  *v30 = v34;
  v30[1] = v36;
  v32 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

BOOL sub_21B1E6538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_21B1E6564()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12PoirotBlocks19AdHocExecutionErrorO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_21B20DB28();
}

unint64_t sub_21B1E6644()
{
  result = qword_27CD6FD60;
  if (!qword_27CD6FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD60);
  }

  return result;
}

unint64_t sub_21B1E6698()
{
  result = qword_27CD6FD68;
  if (!qword_27CD6FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD68);
  }

  return result;
}

unint64_t sub_21B1E66EC()
{
  result = qword_27CD6FD70;
  if (!qword_27CD6FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD70);
  }

  return result;
}

uint64_t sub_21B1E6740(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B1E6790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_21B1E67E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_21B1E6840()
{
  result = qword_27CD6FD90;
  if (!qword_27CD6FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD90);
  }

  return result;
}

unint64_t sub_21B1E6898()
{
  result = qword_27CD6FD98;
  if (!qword_27CD6FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FD98);
  }

  return result;
}

unint64_t sub_21B1E68F0()
{
  result = qword_27CD6FDA0;
  if (!qword_27CD6FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDA0);
  }

  return result;
}

unint64_t sub_21B1E6948()
{
  result = qword_27CD6FDA8;
  if (!qword_27CD6FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDA8);
  }

  return result;
}

unint64_t sub_21B1E69A0()
{
  result = qword_27CD6FDB0;
  if (!qword_27CD6FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDB0);
  }

  return result;
}

unint64_t sub_21B1E69F8()
{
  result = qword_27CD6FDB8;
  if (!qword_27CD6FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDB8);
  }

  return result;
}

unint64_t sub_21B1E6A50()
{
  result = qword_27CD6FDC0;
  if (!qword_27CD6FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDC0);
  }

  return result;
}

unint64_t sub_21B1E6AA8()
{
  result = qword_27CD6FDC8;
  if (!qword_27CD6FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDC8);
  }

  return result;
}

uint64_t BlockMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BlockMetadata.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BlockMetadata.telemetryEventName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t BlockMetadata.telemetryEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t BlockMetadata.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 64);
  *(a1 + 32) = v3;
}

__n128 BlockMetadata.recipe.setter(__int128 *a1)
{
  v6 = a1[1];
  v7 = *a1;
  v2 = *(a1 + 4);
  v3 = *(v1 + 56);
  v4 = *(v1 + 80);

  result = v6;
  *(v1 + 48) = v7;
  *(v1 + 64) = v6;
  *(v1 + 80) = v2;
  return result;
}

uint64_t _s12PoirotBlocks12DatasetErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 != 1)
        {
          goto LABEL_37;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_21B1E7308(*a1, v2, 1u);
          sub_21B1E7308(v3, v2, 1u);
          sub_21B1E7320(v3, v2, 1u);
          v8 = v3;
          v9 = v2;
          v10 = 1;
          goto LABEL_46;
        }

        v18 = *a1;
        v13 = sub_21B20DB28();
        sub_21B1E7308(v6, v5, 1u);
        sub_21B1E7308(v3, v2, 1u);
        sub_21B1E7320(v3, v2, 1u);
        v14 = v6;
        v15 = v5;
        v16 = 1;
      }

      else
      {
        if (v7 != 2)
        {
          goto LABEL_37;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_21B1E7308(*a1, v2, 2u);
          sub_21B1E7308(v3, v2, 2u);
          sub_21B1E7320(v3, v2, 2u);
          v8 = v3;
          v9 = v2;
          v10 = 2;
          goto LABEL_46;
        }

        v19 = *a1;
        v13 = sub_21B20DB28();
        sub_21B1E7308(v6, v5, 2u);
        sub_21B1E7308(v3, v2, 2u);
        sub_21B1E7320(v3, v2, 2u);
        v14 = v6;
        v15 = v5;
        v16 = 2;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        goto LABEL_37;
      }

      v11 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_21B1E7308(v11, v2, 0);
        sub_21B1E7308(v3, v2, 0);
        sub_21B1E7320(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_46;
      }

      v13 = sub_21B20DB28();
      sub_21B1E7308(v6, v5, 0);
      sub_21B1E7308(v3, v2, 0);
      sub_21B1E7320(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
    }

LABEL_44:
    sub_21B1E7320(v14, v15, v16);
    return v13 & 1;
  }

  if (*(a1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      if (v7 != 5)
      {
        goto LABEL_37;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_21B1E7308(*a1, v2, 5u);
        sub_21B1E7308(v3, v2, 5u);
        sub_21B1E7320(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_46;
      }

      v21 = *a1;
      v13 = sub_21B20DB28();
      sub_21B1E7308(v6, v5, 5u);
      sub_21B1E7308(v3, v2, 5u);
      sub_21B1E7320(v3, v2, 5u);
      v14 = v6;
      v15 = v5;
      v16 = 5;
    }

    else
    {
      if (v7 != 6)
      {
        goto LABEL_37;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_21B1E7308(*a1, v2, 6u);
        sub_21B1E7308(v3, v2, 6u);
        sub_21B1E7320(v3, v2, 6u);
        v8 = v3;
        v9 = v2;
        v10 = 6;
        goto LABEL_46;
      }

      v23 = *a1;
      v13 = sub_21B20DB28();
      sub_21B1E7308(v6, v5, 6u);
      sub_21B1E7308(v3, v2, 6u);
      sub_21B1E7320(v3, v2, 6u);
      v14 = v6;
      v15 = v5;
      v16 = 6;
    }

    goto LABEL_44;
  }

  if (v4 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_37;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_21B1E7308(*a1, v2, 4u);
      sub_21B1E7308(v3, v2, 4u);
      sub_21B1E7320(v3, v2, 4u);
      v8 = v3;
      v9 = v2;
      v10 = 4;
      goto LABEL_46;
    }

    v22 = *a1;
    v13 = sub_21B20DB28();
    sub_21B1E7308(v6, v5, 4u);
    sub_21B1E7308(v3, v2, 4u);
    sub_21B1E7320(v3, v2, 4u);
    v14 = v6;
    v15 = v5;
    v16 = 4;
    goto LABEL_44;
  }

  if (v7 != 3)
  {
LABEL_37:
    sub_21B1E7308(*a2, *(a2 + 8), v7);
    sub_21B1E7308(v3, v2, v4);
    sub_21B1E7320(v3, v2, v4);
    sub_21B1E7320(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v20 = *a1;
    v13 = sub_21B20DB28();
    sub_21B1E7308(v6, v5, 3u);
    sub_21B1E7308(v3, v2, 3u);
    sub_21B1E7320(v3, v2, 3u);
    v14 = v6;
    v15 = v5;
    v16 = 3;
    goto LABEL_44;
  }

  sub_21B1E7308(*a1, v2, 3u);
  sub_21B1E7308(v3, v2, 3u);
  sub_21B1E7320(v3, v2, 3u);
  v8 = v3;
  v9 = v2;
  v10 = 3;
LABEL_46:
  sub_21B1E7320(v8, v9, v10);
  return 1;
}

uint64_t sub_21B1E7308(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_21B1E7320(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

void sub_21B1E7338(uint64_t a1)
{
  v57 = a1;
  v2 = v1;
  v3 = 0xD000000000000011;
  v4 = sub_21B20CD48();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FDD8, &unk_21B217A90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - v13;
  v59 = sub_21B20CD88();
  v55 = *(v59 - 8);
  v14 = *(v55 + 64);
  v15 = MEMORY[0x28223BE20](v59);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = sub_21B20CF28();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v1[48])
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_21B20D6A8();

    v60 = 0xD000000000000011;
    v61 = 0x800000021B210090;
    v25 = *(v1 + 3);
    v52 = *(v1 + 2);
    v53 = v25;
    MEMORY[0x21CEEBBB0]();
    MEMORY[0x21CEEBBB0](173228320, 0xE400000000000000);
    v26 = *(v1 + 5);
    v46 = *(v1 + 4);
    v51 = v26;
    MEMORY[0x21CEEBBB0](v46);
    v27 = v58;
    sub_21B20CE98();
    if (!v27)
    {

      sub_21B20CF08();
      (*(v21 + 8))(v24, v20);
      v1[48] = 2;
      return;
    }

    v60 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    v29 = v59;
    v30 = swift_dynamicCast();
    v2 = v56;
    if (!v30)
    {

      sub_21B19986C();
      swift_allocError();
      v43 = v52;
      v44 = v53;
      *v45 = v27;
      *(v45 + 8) = v43;
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      swift_willThrow();

      return;
    }

    (*(v55 + 32))(v17, v19, v29);
    v31 = sub_21B20CD68();
    v58 = sub_21B20CCF8();

    v32 = v54;
    sub_21B20CD78();
    v33 = v47;
    sub_21B1E7F50(v32, v47);
    v34 = v48;
    v35 = v49;
    v36 = 1;
    if ((*(v48 + 48))(v33, 1, v49) == 1)
    {
LABEL_9:
      sub_21B1E7FC0(v54);
      (*(v34 + 56))(v50, v36, 1, v35);
      sub_21B1E8028();
      v38 = swift_allocError();
      sub_21B20CD58();
      sub_21B19986C();
      swift_allocError();
      v39 = v52;
      v40 = v53;
      *v41 = v38;
      *(v41 + 8) = v39;
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      swift_willThrow();
      v42 = *(v55 + 8);

      v42(v17, v29);

      return;
    }

    v57 = v31;
    (*(v34 + 32))(v2, v33, v35);
    sub_21B20CD38();
    v3 = v37;
    if (!__OFSUB__(sub_21B20CD08(), 1))
    {
      sub_21B20CD18();
      sub_21B20CD28();
      (*(v34 + 8))(v2, v35);
      v36 = 0;
      v29 = v59;
      goto LABEL_9;
    }

    __break(1u);
  }

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](v3 + 60, 0x800000021B210040);
  v62 = v2[48];
  sub_21B20D768();
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1E79C0()
{
  v2 = v1;
  v3 = sub_21B20CF28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  if (*(v0 + 48) - 1 > 1)
  {
    v15 = v4;
  }

  else
  {
    result = sub_21B1E7C08();
    if (v1)
    {
      return result;
    }

    v15 = v4;
    v2 = 0;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_21B20D6A8();

  v13 = 0xD000000000000012;
  v14 = 0x800000021B210000;
  MEMORY[0x21CEEBBB0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEEBBB0](0x202020200A534120, 0xE800000000000000);
  MEMORY[0x21CEEBBB0](*(v0 + 32), *(v0 + 40));
  sub_21B20CE98();

  if (!v2)
  {
    sub_21B20CF18();
    v12 = *(v15 + 8);
    v12(v8, v3);
    sub_21B20CF08();
    result = (v12)(v10, v3);
    *(v0 + 48) = 1;
  }

  return result;
}

uint64_t sub_21B1E7C08()
{
  v2 = sub_21B20CF28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v11 - v9;
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_21B20D6A8();

      v11 = 0xD00000000000001ALL;
      v12 = 0x800000021B20F360;
      MEMORY[0x21CEEBBB0](*(v0 + 16), *(v0 + 24));
      sub_21B20CE98();

      if (v1)
      {
        return result;
      }

      sub_21B20CF08();
      v7 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_21B20D6A8();

      v11 = 0xD000000000000019;
      v12 = 0x800000021B20F340;
      MEMORY[0x21CEEBBB0](*(v0 + 16), *(v0 + 24));
      sub_21B20CE98();

      if (v1)
      {
        return result;
      }

      sub_21B20CF08();
    }

    result = (*(v3 + 8))(v7, v2);
    *(v0 + 48) = 0;
  }

  return result;
}

uint64_t Query.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t Query.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

unint64_t sub_21B1E7EFC()
{
  result = qword_27CD6FDD0;
  if (!qword_27CD6FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDD0);
  }

  return result;
}

uint64_t sub_21B1E7F50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FDD8, &unk_21B217A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1E7FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FDD8, &unk_21B217A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B1E8028()
{
  result = qword_27CD6FDE0;
  if (!qword_27CD6FDE0)
  {
    sub_21B20CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6FDE0);
  }

  return result;
}

void ProtobufMessageSchemaProviding.makeBiomeSchema(forTable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = BMEventTimestampSQLColumn();
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_21B20C948() + 16);

    v11 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v22 = i;
        v13 = sub_21B1E837C(&v22, v5, v9, a3, a4, &v21);
        if (v21)
        {
          MEMORY[0x21CEEBC40](v13);
          if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21B20D478();
          }

          sub_21B20D498();
          v11 = v23;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD6FDF0, &unk_21B217AB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B217AA0;
    *(inited + 32) = v9;
    v23 = v11;
    v15 = v9;
    sub_21B1D22D8(inited);
    v16 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
    v17 = sub_21B20D2C8();
    sub_21B1BE468();
    v18 = sub_21B20D438();

    v19 = [v16 initWithTableName:v17 columns:v18];

    if (v19)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21B1E8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F860, &unk_21B215C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  result = (*(a4 + 16))(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21B20C968();
    return sub_21B1E8B38(v12);
  }

  return result;
}

uint64_t sub_21B1E837C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v11 = sub_21B20CA68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v38 = a2;
  result = sub_21B20C948();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= *(result + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v39 = a6;
  aBlock[7] = v6;
  (*(v12 + 16))(v15, result + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v11);

  v18 = sub_21B20CA38();
  v20 = v19;
  v21 = [a3 name];
  v22 = sub_21B20D2F8();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {

    v27 = 0;
  }

  else
  {
    v26 = sub_21B20DB28();

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      sub_21B20CA38();
      v35 = sub_21B1980F4();
      HIDWORD(v34) = sub_21B20CA58();
      v28 = swift_allocObject();
      v29 = v37;
      v28[2] = v36;
      v28[3] = v29;
      v28[4] = v38;
      v28[5] = v16;
      v30 = objc_allocWithZone(MEMORY[0x277CF1A80]);

      v31 = sub_21B20D2C8();

      aBlock[4] = sub_21B1E8998;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B1E89A4;
      aBlock[3] = &block_descriptor_1;
      v32 = _Block_copy(aBlock);

      v27 = [v30 initWithName:v31 dataType:v35 requestOnly:BYTE4(v34) & 1 extractBlock:v32];
      _Block_release(v32);
    }
  }

  v33 = v39;
  result = (*(v12 + 8))(v15, v11);
  *v33 = v27;
  return result;
}

uint64_t sub_21B1E86BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v23 = a5;
  v11 = sub_21B20C8E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B19DB00(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6FE00, &qword_21B217AE8);
  if (swift_dynamicCast())
  {
    v16 = v24;
    if ([v24 respondsToSelector_] && (v17 = objc_msgSend(swift_unknownObjectRetain(), sel_performSelector_, sel_eventBodyData), v18 = v16, v17) && (swift_unknownObjectRetain(), v24 = v17, (swift_dynamicCast() & 1) != 0))
    {
      v22 = a2;
      v20 = v25[0];
      v19 = v25[1];
      [v16 timestamp];
      sub_21B17CEA8(v20, v19);
      sub_21B20C8D8();
      sub_21B1E8294(a3, v15, a4, v23);
      (*(v12 + 8))(v15, v11);
      sub_21B17DAF8(v20, v19);
      return swift_unknownObjectRelease();
    }

    else
    {
      result = swift_unknownObjectRelease();
      *a6 = 0u;
      a6[1] = 0u;
    }
  }

  else
  {
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

id sub_21B1E89A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17[3] = swift_getObjectType();
  v17[0] = a2;

  swift_unknownObjectRetain();
  v6(v15, v17, a3);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_21B20DB18();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);

  return v13;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B1E8B38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F860, &unk_21B215C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21B1E8BA0()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = v0;
    v4 = (*(*(v0 + 88) + 16))(*(v0 + 16), *(v0 + 24), **(v0 + 80));
    v5 = *(v0 + 96);
    *(v3 + 96) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_21B1E8CE0()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[13];
  }

  else
  {
    v3 = v0[4];
    v4 = sub_21B1E8BA0();
    type metadata accessor for RawPayload();
    v5 = [objc_allocWithZone(MEMORY[0x277CF1B48]) initWithStreamIdentifier:v3 eventClass:swift_getObjCClassFromMetadata() storeConfig:v0[5]];
    v6 = [objc_allocWithZone(MEMORY[0x277CF1B38]) initWithIdentifier:v3 schema:v4 configuration:v5];

    v7 = v0[13];
    v0[13] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_21B1E8DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = v3;
  if (!v3)
  {
    v5 = *(v1 + 32);
    v6 = sub_21B1E8BA0();
    type metadata accessor for RawPayload();
    v7 = [objc_allocWithZone(MEMORY[0x277CF1B48]) initWithStreamIdentifier:v5 eventClass:swift_getObjCClassFromMetadata() storeConfig:*(v1 + 40)];
    v4 = [objc_allocWithZone(MEMORY[0x277CF1B38]) initWithIdentifier:v5 schema:v6 configuration:v7];

    v8 = *(v1 + 104);
    *(v1 + 104) = v4;
    v9 = v4;
  }

  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  *a1 = v4;
  *(a1 + 8) = v10;
  *(a1 + 16) = 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  v13 = *(v1 + 72);
  *(a1 + 40) = v13;
  v14 = v10;
  v15 = v3;

  return sub_21B1E9044(v11, v12, v13);
}

uint64_t sub_21B1E8EDC()
{
  v1 = *(v0 + 24);

  sub_21B1BDE2C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_21B1E8F38()
{
  sub_21B1E8EDC();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_21B1E8FD8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
}

uint64_t sub_21B1E9004@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_21B1E8CE0();

  return sub_21B1BE4B8(v4, 1, a1);
}

uint64_t sub_21B1E9044(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21B1BDBF0();
  }

  return result;
}

__n128 sub_21B1E905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _s19PrivateTableFactoryCMa();
  v15 = swift_allocObject();
  v16 = a6[1].n128_u8[0];
  *(v15 + 40) = a4;
  *(v15 + 48) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 80) = a5;
  *(v15 + 88) = a9;
  result = *a6;
  *(v15 + 56) = *a6;
  *(v15 + 72) = v16;
  return result;
}

id sub_21B1E90E0()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = v0;
    v4 = (*(*(v0 + 80) + 16))(*(v0 + 24), *(v0 + 32), **(v0 + 72));
    v5 = *(v0 + 88);
    *(v3 + 88) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_21B1E9220@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  sub_21B20D6A8();

  MEMORY[0x21CEEBBB0](v4, v5);
  MEMORY[0x21CEEBBB0](0x20726F662027, 0xE600000000000000);
  v6 = [*(v1 + 40) configuration];
  [v6 eventClass];

  swift_getObjCClassMetadata();
  v7 = sub_21B20DD38();
  MEMORY[0x21CEEBBB0](v7);

  MEMORY[0x21CEEBBB0](0x73746E65766520, 0xE700000000000000);
  v8 = *(v2 + 72);
  v9 = sub_21B20C948();
  v10 = a1 + *(type metadata accessor for DataSourceModel() + 32);
  result = sub_21B20C918();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = 0x800000021B210270;
  *(a1 + 32) = 2;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_21B1E9378()
{
  v1 = *(v0 + 32);

  sub_21B1BDE2C(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21B1E9424@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v5 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  v6 = *(*v1 + 56);
  *a1 = v5;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  v7 = *(v2 + 64);
  *(a1 + 40) = v7;
  v8 = v3;
  v9 = v5;

  return sub_21B1E9044(v4, v6, v7);
}

uint64_t sub_21B1E9494()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);
}

uint64_t sub_21B1E94E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _s23SchematizedTableFactoryCMa();
  v14 = swift_allocObject();
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  sub_21B1BDE44();
  *(v14 + 88) = 0;
  *(v14 + 16) = 0;
  if (!a3)
  {
    v18 = [a1 schema];
    v19 = [v18 tableName];

    a2 = sub_21B20D2F8();
    a3 = v20;
  }

  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 72) = a4;
  *(v14 + 80) = a8;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = -1;
  *(v14 + 40) = a1;
  return v14;
}

uint64_t sub_21B1E95C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 != 255;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v2;

  return sub_21B1E9044(v5, v6, v3);
}

uint64_t sub_21B1E9634(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = a2;
  *(v2 + 40) = -1;
  v4 = a2;
  v11[0] = 0;
  v5 = [BiomeLibrary() streamWithIdentifier:a1 error:v11];
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = v11[0];

    *(v2 + 48) = v5;
  }

  else
  {
    v7 = v11[0];
    sub_21B20C508();

    swift_willThrow();
    sub_21B1BDE2C(*(v2 + 24), *(v2 + 32), *(v2 + 40));
    v8 = *(v2 + 56);

    _s12TableFactoryCMa_0();
    swift_deallocPartialClassInstance();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21B1E9774()
{
  sub_21B1BDE2C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

id sub_21B1E97EC()
{
  v1 = [*(*v0 + 48) schema];

  return v1;
}

uint64_t sub_21B1E984C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
}

uint64_t sub_21B1E9878@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 48);

  return sub_21B1BE4B8(v3, 0, a1);
}

uint64_t BiomeTableConfig.init(identifier:useCase:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s12TableFactoryCMa_0();
  swift_allocObject();
  v7 = a2;
  v8 = a1;
  v9 = sub_21B1E9634(v8, a2);
  v12 = v6;
  v13 = &off_282CA3900;

  *&v11 = v9;
  return sub_21B17C284(&v11, a3);
}

uint64_t BiomeTableConfig.init(biomeStream:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = _s12TableFactoryCMa_0();
  result = swift_allocObject();
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 16) = 0;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *(result + 40) = v7;
  *(result + 48) = a1;
  a3[3] = v8;
  a3[4] = &off_282CA3900;
  *a3 = result;
  return result;
}

uint64_t BiomeTableConfig.init(identifier:useCase:tableName:messageName:manifest:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v40[1] = a5;
  v40[0] = a7;
  v47 = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v40 - v20;
  v42 = a6;
  sub_21B18C904(a6, v40 - v20);
  sub_21B18C904(v21, v19);
  v41 = _s23SchematizedTableFactoryCMa();
  v22 = swift_allocObject();
  *(v22 + 88) = 0;
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  *(v22 + 32) = a4;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = -1;
  sub_21B18C904(v19, v16);
  v23 = sub_21B20CA18();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = a2;
  v27 = a1;
  v28 = v40[2];
  v29 = sub_21B20CA08();
  if (v28)
  {

    v30 = v27;
  }

  else
  {
    v34 = v40[0];
    *(v22 + 72) = v29;
    *(v22 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    v35 = BiomeLibrary();
    v43 = 0;
    v36 = [v35 streamWithIdentifier:v27 error:&v43];
    swift_unknownObjectRelease();
    if (v36)
    {
      v37 = v43;
      sub_21B192958(v19);

      *(v22 + 40) = v36;
      v45 = v41;
      v46 = &off_282CA38D0;

      *&v44 = v22;
      sub_21B192958(v42);
      sub_21B192958(v21);
      result = sub_21B17C284(&v44, v34);
      goto LABEL_8;
    }

    v39 = v43;

    sub_21B20C508();
    swift_willThrow();
    v30 = v26;
  }

  sub_21B192958(v42);
  sub_21B192958(v19);
  sub_21B192958(v21);

  v31 = *(v22 + 32);

  sub_21B1BDE2C(*(v22 + 48), *(v22 + 56), *(v22 + 64));
  if (!v28)
  {
    v32 = *(v22 + 72);
  }

  result = swift_deallocPartialClassInstance();
LABEL_8:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BiomeTableConfig.init(tableName:identifier:useCase:messageName:manifest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v37 = a6;
  v45 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v40 = a5;
  sub_21B18C904(a5, &v36 - v16);
  v39 = _s23SchematizedTableFactoryCMa();
  v18 = swift_allocObject();
  *(v18 + 88) = 0;
  *(v18 + 16) = a4;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = -1;
  sub_21B18C904(v17, v15);
  v19 = sub_21B20CA18();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = a4;
  v23 = a3;
  v24 = v38;
  v25 = sub_21B20CA08();
  if (v24)
  {

    v26 = v23;
  }

  else
  {
    v30 = v37;
    *(v18 + 72) = v25;
    *(v18 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    v31 = BiomeLibrary();
    v41 = 0;
    v32 = [v31 streamWithIdentifier:v23 error:&v41];
    swift_unknownObjectRelease();
    if (v32)
    {
      v33 = v41;
      sub_21B192958(v17);

      *(v18 + 40) = v32;
      v43 = v39;
      v44 = &off_282CA38D0;

      *&v42 = v18;
      sub_21B192958(v40);
      result = sub_21B17C284(&v42, v30);
      goto LABEL_8;
    }

    v35 = v41;

    sub_21B20C508();
    swift_willThrow();
    v26 = v22;
  }

  sub_21B192958(v40);
  sub_21B192958(v17);

  v27 = *(v18 + 32);

  sub_21B1BDE2C(*(v18 + 48), *(v18 + 56), *(v18 + 64));
  if (!v24)
  {
    v28 = *(v18 + 72);
  }

  result = swift_deallocPartialClassInstance();
LABEL_8:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BiomeTableConfig.init(tableName:biomeStream:messageName:manifest:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a4;
  v46 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = *a7;
  v43 = a7[1];
  v44 = v21;
  v42 = *(a7 + 16);
  sub_21B18C904(a6, &v40 - v19);
  v22 = _s23SchematizedTableFactoryCMa();
  v23 = swift_allocObject();
  *(v23 + 88) = 0;
  *(v23 + 16) = 0;
  if (!a2)
  {
    v24 = [a3 schema];
    v25 = [v24 tableName];
    v41 = v22;
    v26 = a3;
    v27 = a8;
    v28 = a6;
    v29 = v25;

    a1 = sub_21B20D2F8();
    a2 = v30;

    a6 = v28;
    a8 = v27;
    a3 = v26;
    v22 = v41;
  }

  *(v23 + 24) = a1;
  *(v23 + 32) = a2;
  v31 = v43;
  *(v23 + 48) = v44;
  *(v23 + 56) = v31;
  *(v23 + 64) = v42;
  sub_21B18C904(v20, v18);
  v32 = sub_21B20CA18();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v50;
  v36 = sub_21B20CA08();
  if (v35)
  {

    sub_21B192958(a6);
    sub_21B192958(v20);

    v37 = *(v23 + 32);

    sub_21B1BDE2C(*(v23 + 48), *(v23 + 56), *(v23 + 64));

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v36;
    sub_21B192958(v20);
    *(v23 + 72) = v39;
    *(v23 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    *(v23 + 40) = a3;
    v48 = v22;
    v49 = &off_282CA38D0;
    *&v47 = v23;
    sub_21B192958(a6);
    return sub_21B17C284(&v47, a8);
  }
}

uint64_t BiomeTableConfig.init(identifier:useCase:tableName:schemaProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = off_282CA2E18;
  v13 = _s23SchematizedTableFactoryCMa();
  v14 = swift_allocObject();
  *(v14 + 80) = v12;
  *(v14 + 88) = 0;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 72) = a5;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = -1;
  v15 = a2;
  swift_retain_n();
  v16 = v15;
  v17 = a1;

  v32[0] = 0;
  v18 = [BiomeLibrary() streamWithIdentifier:v17 error:v32];
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = v32[0];

    *(v14 + 40) = v18;
    v34 = v13;
    v35 = &off_282CA38D0;

    *&v33 = v14;

    result = sub_21B17C284(&v33, a6);
    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v22 = v32[0];
    sub_21B20C508();

    swift_willThrow();

    v23 = *(v14 + 32);

    sub_21B1BDE2C(*(v14 + 48), *(v14 + 56), *(v14 + 64));
    v24 = *(v14 + 72);

    swift_deallocPartialClassInstance();
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001ELL, 0x800000021B210360);
    v32[0] = v17;
    type metadata accessor for BMStreamIdentifier(0);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](8250, 0xE200000000000000);
    ErrorValue = swift_getErrorValue();
    v26 = *(*(v32[3] - 1) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v28 + 16))(&v32[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32[0] = sub_21B20D358();
    v32[1] = v29;
    v30 = sub_21B20D3C8();
    MEMORY[0x21CEEBBB0](v30);

    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t BiomeTableConfig.init(tableName:identifier:useCase:schemaProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v13 = *(a6 + 8);
  v14 = _s23SchematizedTableFactoryCMa();
  v15 = swift_allocObject();
  *(v15 + 80) = v13;
  *(v15 + 88) = 0;
  *(v15 + 16) = a4;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 72) = a5;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = -1;
  v16 = a4;
  swift_retain_n();
  v17 = v16;
  v18 = a3;

  v33[0] = 0;
  v19 = [BiomeLibrary() streamWithIdentifier:v18 error:v33];
  swift_unknownObjectRelease();
  if (v19)
  {
    v20 = v33[0];

    *(v15 + 40) = v19;
    v35 = v14;
    v36 = &off_282CA38D0;

    *&v34 = v15;

    result = sub_21B17C284(&v34, a7);
    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v23 = v33[0];
    sub_21B20C508();

    swift_willThrow();

    v24 = *(v15 + 32);

    sub_21B1BDE2C(*(v15 + 48), *(v15 + 56), *(v15 + 64));
    v25 = *(v15 + 72);

    swift_deallocPartialClassInstance();
    *&v34 = 0;
    *(&v34 + 1) = 0xE000000000000000;
    sub_21B20D6A8();
    MEMORY[0x21CEEBBB0](0xD00000000000001ELL, 0x800000021B210360);
    v33[0] = v18;
    type metadata accessor for BMStreamIdentifier(0);
    sub_21B20D768();
    MEMORY[0x21CEEBBB0](8250, 0xE200000000000000);
    ErrorValue = swift_getErrorValue();
    v27 = *(*(v33[3] - 1) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v29 + 16))(&v33[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33[0] = sub_21B20D358();
    v33[1] = v30;
    v31 = sub_21B20D3C8();
    MEMORY[0x21CEEBBB0](v31);

    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t BiomeTableConfig.init(tableName:biomeStream:schemaProvider:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v13 = *a6;
  v14 = *(a6 + 8);
  v15 = *(a6 + 16);
  v16 = _s23SchematizedTableFactoryCMa();
  v17 = *a4;
  v23[0] = v13;
  v23[1] = v14;
  v24 = v15;
  v18 = *(a5 + 8);
  v19 = v17;
  v20 = a3;

  v21 = sub_21B1E94E4(v20, a1, a2, a4, v23, v16, v19, v18);
  a7[3] = v16;
  a7[4] = &off_282CA38D0;

  *a7 = v21;
}

uint64_t BiomeTableConfig.init(identifier:storeConfig:tableName:schemaProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = _s19PrivateTableFactoryCMa();
  result = swift_allocObject();
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 80) = a5;
  *(result + 88) = &protocol witness table for BaseStreamSchemaProvider;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = -1;
  a6[3] = v12;
  a6[4] = &off_282CA38A0;
  *a6 = result;
  return result;
}

void BiomeTableConfig.init(tableName:identifier:storeConfig:schemaProvider:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = _s19PrivateTableFactoryCMa();
  v15 = *a5;
  v17 = 0uLL;
  v18 = -1;
  sub_21B1E905C(a1, a2, a3, a4, a5, &v17, v14, v15, *(a6 + 8));
  a7[3] = v14;
  a7[4] = &off_282CA38A0;
  *a7 = v16;
}

void BiomeTableConfig.init(__identifier:useCase:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = _s12TableFactoryCMa_0();
  swift_allocObject();
  v8 = a2;
  v9 = a1;
  v10 = sub_21B1E9634(v9, a2);
  if (v3)
  {
  }

  else
  {
    v11 = v10;
    v13 = v7;
    v14 = &off_282CA3900;

    *&v12 = v11;
    sub_21B17C284(&v12, a3);
  }
}

uint64_t DataSource.init(virtualTable:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init<A>(tableName:messageType:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  return sub_21B1EAF0C(a1, a2, a3, a4, a5, sub_21B1BE85C, type metadata accessor for DefaultPublisherSchemaProvider, a6, &off_282CA2880);
}

{
  return sub_21B1EAF0C(a1, a2, a3, a4, a5, sub_21B1BE830, type metadata accessor for DefaultFinalPublisherSchemaProvider, a6, &off_282CA2868);
}

uint64_t sub_21B1EAF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(uint64_t, uint64_t)@<X6>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v27 = a7;
  v28 = a1;
  v30 = a8;
  v31 = a6;
  v34 = a2;
  v29 = type metadata accessor for DataSource.Container(0);
  v13 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a3;
  v17 = *(a3 + 8);
  v18 = *(a3 + 16);
  v25 = a4;
  v26 = a5;
  v19 = v31(a4, a5);
  if (v9)
  {
    sub_21B1BDE44();
  }

  else
  {
    v21 = v19;
    v22 = _s12TableFactoryCMa();
    v32.n128_u64[0] = v16;
    v32.n128_u64[1] = v17;
    v33 = v18;
    v23 = v27(0, v25, v26);
    sub_21B1CF6DC(v28, v34, &v32, v21, v22, v23, a9);
    v15[3] = v22;
    v15[4] = &off_282CA2DE0;
    *v15 = v24;
    swift_storeEnumTagMultiPayload();
    return sub_21B1EB7F8(v15, v30);
  }
}

void DataSource.init<A>(tableName:biomePublisher:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a1;
  v12 = type metadata accessor for DataSource.Container(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_21B1BE85C(a4, a5);
  if (v6)
  {
  }

  else
  {
    v17 = v16;
    v18 = swift_allocObject();
    v23 = a6;
    v19 = v18;
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a3;
    v20 = _s12TableFactoryCMa();
    v24.n128_u64[0] = sub_21B1EB85C;
    v24.n128_u64[1] = v19;
    v25 = 0;
    v21 = type metadata accessor for DefaultPublisherSchemaProvider();
    sub_21B1CF6DC(v26, a2, &v24, v17, v20, v21, &off_282CA2880);
    v15[3] = v20;
    v15[4] = &off_282CA2DE0;
    *v15 = v22;
    swift_storeEnumTagMultiPayload();
    sub_21B1EB7F8(v15, v23);
  }
}

{
  v26 = a1;
  v12 = type metadata accessor for DataSource.Container(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_21B1BE830(a4, a5);
  if (v6)
  {
  }

  else
  {
    v17 = v16;
    v18 = swift_allocObject();
    v23 = a6;
    v19 = v18;
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a3;
    v20 = _s12TableFactoryCMa();
    v24.n128_u64[0] = sub_21B1EB868;
    v24.n128_u64[1] = v19;
    v25 = 0;
    v21 = type metadata accessor for DefaultFinalPublisherSchemaProvider();
    sub_21B1CF6DC(v26, a2, &v24, v17, v20, v21, &off_282CA2868);
    v15[3] = v20;
    v15[4] = &off_282CA2DE0;
    *v15 = v22;
    swift_storeEnumTagMultiPayload();
    sub_21B1EB7F8(v15, v23);
  }
}

id sub_21B1EB210(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10[4] = sub_21B1EB894;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21B1EB8B0;
  v10[3] = &block_descriptor_15;
  v7 = _Block_copy(v10);

  v8 = [a1 mapWithTransform_];
  _Block_release(v7);
  return v8;
}

id sub_21B1EB480(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10[4] = sub_21B1EB8A8;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_21B1EB8B0;
  v10[3] = &block_descriptor_2;
  v7 = _Block_copy(v10);

  v8 = [a1 mapWithTransform_];
  _Block_release(v7);
  return v8;
}

id sub_21B1EB568(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v6, v3);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_21B20DB18();
  __swift_destroy_boxed_opaque_existential_1(v6);

  return v4;
}

uint64_t DataSource.init(tableName:schemaProvider:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = *(a5 + 16);
  v14 = _s12TableFactoryCMa();
  v17.n128_u64[0] = v11;
  v17.n128_u64[1] = v12;
  v18 = v13;
  sub_21B1CF6DC(a1, a2, &v17, a3, v14, *a3, *(a4 + 8));
  a6[3] = v14;
  a6[4] = &off_282CA2DE0;
  *a6 = v15;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(tableName:schemaProvider:biomePublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = _s12TableFactoryCMa();
  v16.n128_u64[0] = sub_21B1EB874;
  v16.n128_u64[1] = v12;
  v17 = 0;
  sub_21B1CF6DC(a1, a2, &v16, a3, v13, *a3, *(a4 + 8));
  a6[3] = v13;
  a6[4] = &off_282CA2DE0;
  *a6 = v14;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B1EB7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSource.Container(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B1EB894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = *(v2 + 16);
  *a2 = a1;
  return swift_unknownObjectRetain();
}

uint64_t DataSource.init(biomeIdentifier:useCase:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  BiomeTableConfig.init(identifier:useCase:)(a1, a2, a3);
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(biomeStream:publisherFactory:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = _s12TableFactoryCMa_0();
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = a1;
  a3[3] = v8;
  a3[4] = &off_282CA3900;
  *a3 = v9;
  type metadata accessor for DataSource.Container(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DataSource.init(biomeIdentifier:useCase:tableName:messageName:manifest:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a6;
  v48 = a8;
  v49 = a5;
  v60 = *MEMORY[0x277D85DE8];
  v47 = type metadata accessor for DataSource.Container(0);
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  v53 = a7;
  sub_21B18C904(a7, &v46 - v26);
  sub_21B18C904(v27, v25);
  sub_21B18C904(v25, v22);
  v52 = _s23SchematizedTableFactoryCMa();
  v28 = swift_allocObject();
  *(v28 + 88) = 0;
  *(v28 + 16) = a2;
  *(v28 + 24) = a3;
  *(v28 + 32) = a4;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 64) = -1;
  sub_21B18C904(v22, v19);
  v29 = sub_21B20CA18();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = a2;
  v33 = a1;
  v34 = v51;
  v35 = sub_21B20CA08();
  if (v34)
  {

    v36 = v33;
  }

  else
  {
    *(v28 + 72) = v35;
    *(v28 + 80) = &protocol witness table for BaseStreamSchemaProvider;
    v40 = BiomeLibrary();
    v54 = 0;
    v41 = [v40 streamWithIdentifier:v33 error:&v54];
    swift_unknownObjectRelease();
    if (v41)
    {
      v42 = v54;
      sub_21B192958(v22);

      *(v28 + 40) = v41;
      v56 = v52;
      v57 = &off_282CA38D0;

      *&v55 = v28;
      sub_21B192958(v53);
      sub_21B192958(v25);
      sub_21B192958(v27);
      sub_21B17C284(&v55, v58);
      v43 = v58[1];
      v44 = v46;
      *v46 = v58[0];
      *(v44 + 16) = v43;
      *(v44 + 32) = v59;
      swift_storeEnumTagMultiPayload();
      result = sub_21B1EB7F8(v44, v48);
      goto LABEL_8;
    }

    v51 = v54;

    sub_21B20C508();
    swift_willThrow();
    v36 = v32;
  }

  sub_21B192958(v53);
  sub_21B192958(v22);
  sub_21B192958(v25);
  sub_21B192958(v27);

  v37 = *(v28 + 32);

  sub_21B1BDE2C(*(v28 + 48), *(v28 + 56), *(v28 + 64));
  if (!v34)
  {
    v38 = *(v28 + 72);
  }

  result = swift_deallocPartialClassInstance();
LABEL_8:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}